#include "auxiliary.h"

static inline int min_int(int a, int b) {
    return (a < b) ? a : b;
}

static inline int max_int(int a, int b) {
    return (a > b) ? a : b;
}

void cpu_rasterizer_getRect(const float2 p, int max_radius, uint2* rect_min, uint2* rect_max, dim3 grid) {
    rect_min->x = min_int(grid.x, max_int((int)0, (int)((p.x - max_radius) / BLOCK_X)));
    rect_min->y = min_int(grid.y, max_int((int)0, (int)((p.y - max_radius) / BLOCK_Y)));
    rect_max->x = min_int(grid.x, max_int((int)0, (int)((p.x + max_radius + BLOCK_X - 1) / BLOCK_X)));
    rect_max->y = min_int(grid.y, max_int((int)0, (int)((p.y + max_radius + BLOCK_Y - 1) / BLOCK_Y)));
}

float3 cpu_rasterizer_transformPoint4x3(const float3 p, const float* matrix) {
    float3 transformed = {
        matrix[0] * p.x + matrix[4] * p.y + matrix[8]  * p.z + matrix[12],
        matrix[1] * p.x + matrix[5] * p.y + matrix[9]  * p.z + matrix[13],
        matrix[2] * p.x + matrix[6] * p.y + matrix[10] * p.z + matrix[14],
    };
    return transformed;
}

float4 cpu_rasterizer_transformPoint4x4(const float3 p, const float* matrix) {
    float4 transformed = {
        matrix[0] * p.x + matrix[4] * p.y + matrix[8]  * p.z + matrix[12],
        matrix[1] * p.x + matrix[5] * p.y + matrix[9]  * p.z + matrix[13],
        matrix[2] * p.x + matrix[6] * p.y + matrix[10] * p.z + matrix[14],
        matrix[3] * p.x + matrix[7] * p.y + matrix[11] * p.z + matrix[15]
    };
    return transformed;
}

int cpu_rasterizer_in_frustum(int idx,
    const float* orig_points,
    const float* viewmatrix,
    const float* projmatrix,
    int prefiltered,
    float3* p_view)
{
    float3 p_orig = { orig_points[3 * idx], orig_points[3 * idx + 1], orig_points[3 * idx + 2] };

    float4 p_hom = cpu_rasterizer_transformPoint4x4(p_orig, projmatrix);
    float p_w = 1.0f / (p_hom.w + 1e-7f);
    float3 p_proj = { p_hom.x * p_w, p_hom.y * p_w, p_hom.z * p_w };
    *p_view = cpu_rasterizer_transformPoint4x3(p_orig, viewmatrix);

    if (p_view->z <= 0.2f)
    {
        if (prefiltered)
        {
            printf("Point is filtered although prefiltered is set. This shouldn't happen!\n");
            exit(EXIT_FAILURE);
        }
        return 0;
    }
    return 1;
}
