#pragma once
#ifndef CPU_RASTERIZER_FORWARD_H_INCLUDED
#define CPU_RASTERIZER_FORWARD_H_INCLUDED

#include "auxiliary.h"

void cpu_rasterizer_preprocess(int P, int D, int M,
    const float* means3D,
    const float3* scales,
    const float scale_modifier,
    const float4* rotations,
    const float* opacities,
    const float* shs,
    int* clamped,
    const float* cov3D_precomp,
    const float* colors_precomp,
    const float* viewmatrix,
    const float* projmatrix,
    const float3* cam_pos,
    const int W, int H,
    const float tan_fovx, float tan_fovy,
    const float focal_x, const float focal_y,
    int* radii,
    float2* means2D,
    float* depths,
    float* cov3Ds,
    float* rgb,
    float4* conic_opacity,
    const dim3 grid,
    uint32_t* tiles_touched,
    int prefiltered);

void cpu_rasterizer_render(
    const dim3 grid,
    const uint2* ranges,
    const uint32_t* point_list,
    int W, int H,
    const float2* means2D,
    const float* colors,
    const float4* conic_opacity,
    float* final_T,
    uint32_t* n_contrib,
    const float* bg_color,
    float* out_color);

#endif