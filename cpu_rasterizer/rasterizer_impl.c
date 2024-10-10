#include "auxiliary.h"
#include "forward.h"
#include<rasterizer.h>
#include<string.h>
typedef struct {
    size_t scan_size;
    float* depths;
    void* scanning_space;
    int* clamped;
    int* internal_radii;
    float2* means2D;
    float* cov3D;
    float4* conic_opacity;
    float* rgb;
    uint32_t* point_offsets;
    uint32_t* tiles_touched;
} GeometryState;

typedef struct {
    uint2* ranges;
    uint32_t* n_contrib;
    float* accum_alpha;
} ImageState;

typedef struct {
    size_t sorting_size;
    uint64_t* point_list_keys_unsorted;
    uint64_t* point_list_keys;
    uint32_t* point_list_unsorted;
    uint32_t* point_list;
    void* list_sorting_space;
} BinningState;

uint32_t cpu_rasterizer_getHigherMsb(uint32_t n) {
    uint32_t msb = sizeof(n) * 4;
    uint32_t step = msb;
    while (step > 1)
    {
        step /= 2;
        if (n >> msb)
            msb += step;
        else
            msb -= step;
    }
    if (n >> msb)
        msb++;
    return msb;
}

void cpu_rasterizer_checkFrustum(int P,
    const float* orig_points,
    const float* viewmatrix,
    const float* projmatrix,
    int* present)
{
    for (int idx = 0; idx < P; idx++)
    {
        float3 p_view;
        present[idx] = cpu_rasterizer_in_frustum(idx, orig_points, viewmatrix, projmatrix, 0, &p_view);
    }
}

void cpu_rasterizer_duplicateWithKeys(
    int P,
    const float2* points_xy,
    const float* depths,
    const uint32_t* offsets,
    uint64_t* gaussian_keys_unsorted,
    uint32_t* gaussian_values_unsorted,
    int* radii,
    dim3 grid)
{
    for (int idx = 0; idx < P; idx++)
    {
        if (radii[idx] > 0)
        {
            uint32_t off = (idx == 0) ? 0 : offsets[idx - 1];
            uint2 rect_min, rect_max;

            cpu_rasterizer_getRect(points_xy[idx], radii[idx], &rect_min, &rect_max, grid);

            for (uint32_t y = rect_min.y; y < rect_max.y; y++)
            {
                for (uint32_t x = rect_min.x; x < rect_max.x; x++)
                {
                    uint64_t key = (uint64_t)(y * grid.x + x);
                    key <<= 32;
                    uint32_t depth_as_uint;
                    memcpy(&depth_as_uint, &depths[idx], sizeof(float));
                    key |= depth_as_uint;
                    gaussian_keys_unsorted[off] = key;
                    gaussian_values_unsorted[off] = idx;
                    off++;
                }
            }
        }
    }
}

void cpu_rasterizer_identifyTileRanges(int L, uint64_t* point_list_keys, uint2* ranges)
{
    for (int idx = 0; idx < L; idx++)
    {
        uint64_t key = point_list_keys[idx];
        uint32_t currtile = (uint32_t)(key >> 32);
        if (idx == 0)
            ranges[currtile].x = 0;
        else
        {
            uint32_t prevtile = (uint32_t)(point_list_keys[idx - 1] >> 32);
            if (currtile != prevtile)
            {
                ranges[prevtile].y = idx;
                ranges[currtile].x = idx;
            }
        }
        if (idx == L - 1)
            ranges[currtile].y = L;
    }
}

void cpu_rasterizer_markVisible(
    int P,
    float* means3D,
    float* viewmatrix,
    float* projmatrix,
    int* present)
{
    cpu_rasterizer_checkFrustum(P, means3D, viewmatrix, projmatrix, present);
}

BinningState binningState;

int cpu_rasterizer_compare_keys(const void* a, const void* b)
{
    int idx_a = *(int*)a;
    int idx_b = *(int*)b;
    uint64_t key_a = binningState.point_list_keys_unsorted[idx_a];
    uint64_t key_b = binningState.point_list_keys_unsorted[idx_b];
    if (key_a < key_b) return -1;
    if (key_a > key_b) return 1;
    return 0;
}

int cpu_rasterizer_forward(
    int P, int D, int M,
    const float* background,
    const int width, int height,
    const float* means3D,
    const float* shs,
    const float* colors_precomp,
    const float* opacities,
    const float* scales,
    const float scale_modifier,
    const float* rotations,
    const float* cov3D_precomp,
    const float* viewmatrix,
    const float* projmatrix,
    const float* cam_pos,
    const float tan_fovx, float tan_fovy,
    const int prefiltered,
    float* out_color,
    int* radii,
    int debug)
{
    const float focal_y = height / (2.0f * tan_fovy);
    const float focal_x = width / (2.0f * tan_fovx);

    GeometryState geomState;
    geomState.depths = (float*)malloc(sizeof(float) * P);
    geomState.clamped = (int*)malloc(sizeof(int) * P * 3);
    geomState.internal_radii = (int*)malloc(sizeof(int) * P);
    geomState.means2D = (float2*)malloc(sizeof(float2) * P);
    geomState.cov3D = (float*)malloc(sizeof(float) * P * 6);
    geomState.conic_opacity = (float4*)malloc(sizeof(float4) * P);
    geomState.rgb = (float*)malloc(sizeof(float) * P * NUM_CHANNELS);
    geomState.tiles_touched = (uint32_t*)malloc(sizeof(uint32_t) * P);
    geomState.point_offsets = (uint32_t*)malloc(sizeof(uint32_t) * P);

    if (radii == NULL)
    {
        radii = geomState.internal_radii;
    }

    dim3 tile_grid;
    tile_grid.x = (width + BLOCK_X - 1) / BLOCK_X;
    tile_grid.y = (height + BLOCK_Y - 1) / BLOCK_Y;
    tile_grid.z = 1;

    ImageState imgState;
    int N = width * height;
    imgState.accum_alpha = (float*)malloc(sizeof(float) * N);
    imgState.n_contrib = (uint32_t*)malloc(sizeof(uint32_t) * N);
    imgState.ranges = (uint2*)malloc(sizeof(uint2) * tile_grid.x * tile_grid.y);

    if (NUM_CHANNELS != 3 && colors_precomp == NULL)
    {
        printf("For non-RGB, provide precomputed Gaussian colors!\n");
        exit(1);
    }

    cpu_rasterizer_preprocess(
        P, D, M,
        means3D,
        (float3 *)scales,
        scale_modifier,
        (float4 *)rotations,
        opacities,
        shs,
        geomState.clamped,
        cov3D_precomp,
        colors_precomp,
        viewmatrix, projmatrix,
        (float3 *)cam_pos,
        width, height,
        tan_fovx, tan_fovy,
        focal_x, focal_y,
        radii,
        geomState.means2D,
        geomState.depths,
        geomState.cov3D,
        geomState.rgb,
        geomState.conic_opacity,
        tile_grid,
        geomState.tiles_touched,
        prefiltered
    );

    uint32_t total_rendered = 0;
    for (int i = 0; i < P; i++)
    {
        total_rendered += geomState.tiles_touched[i];
        geomState.point_offsets[i] = total_rendered;
    }

    int num_rendered = total_rendered;

    binningState.point_list = (uint32_t*)malloc(sizeof(uint32_t) * num_rendered);
    binningState.point_list_unsorted = (uint32_t*)malloc(sizeof(uint32_t) * num_rendered);
    binningState.point_list_keys = (uint64_t*)malloc(sizeof(uint64_t) * num_rendered);
    binningState.point_list_keys_unsorted = (uint64_t*)malloc(sizeof(uint64_t) * num_rendered);

    cpu_rasterizer_duplicateWithKeys(
        P,
        geomState.means2D,
        geomState.depths,
        geomState.point_offsets,
        binningState.point_list_keys_unsorted,
        binningState.point_list_unsorted,
        radii,
        tile_grid
    );

    
    int bit = cpu_rasterizer_getHigherMsb(tile_grid.x * tile_grid.y);

    int* indices = (int*)malloc(sizeof(int) * num_rendered);
    for (int i = 0; i < num_rendered; i++)
    {
        indices[i] = i;
    }

    qsort(indices, num_rendered, sizeof(int), cpu_rasterizer_compare_keys);

    for (int i = 0; i < num_rendered; i++)
    {
        int idx = indices[i];
        binningState.point_list_keys[i] = binningState.point_list_keys_unsorted[idx];
        binningState.point_list[i] = binningState.point_list_unsorted[idx];
    }

    free(indices);

    
    int num_tiles = tile_grid.x * tile_grid.y;
    for (int i = 0; i < num_tiles; i++)
    {
        imgState.ranges[i].x = 0;
        imgState.ranges[i].y = 0;
    }

    if (num_rendered > 0)
    {
        cpu_rasterizer_identifyTileRanges(
            num_rendered,
            binningState.point_list_keys,
            imgState.ranges
        );
    }

    const float* feature_ptr = (colors_precomp != NULL) ? colors_precomp : geomState.rgb;

    cpu_rasterizer_render(
        tile_grid,
        imgState.ranges,
        binningState.point_list,
        width, height,
        geomState.means2D,
        feature_ptr,
        geomState.conic_opacity,
        imgState.accum_alpha,
        imgState.n_contrib,
        background,
        out_color
    );

    free(geomState.depths);
    free(geomState.clamped);
    free(geomState.internal_radii);
    free(geomState.means2D);
    free(geomState.cov3D);
    free(geomState.conic_opacity);
    free(geomState.rgb);
    free(geomState.tiles_touched);
    free(geomState.point_offsets);

    free(imgState.accum_alpha);
    free(imgState.n_contrib);
    free(imgState.ranges);

    free(binningState.point_list);
    free(binningState.point_list_unsorted);
    free(binningState.point_list_keys);
    free(binningState.point_list_keys_unsorted);

    return num_rendered;
}
