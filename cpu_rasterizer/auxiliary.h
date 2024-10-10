#pragma once
#ifndef CPU_RASTERIZER_AUXILIARY_H_INCLUDED
#define CPU_RASTERIZER_AUXILIARY_H_INCLUDED

#include "config.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdint.h>

#define BLOCK_SIZE (BLOCK_X * BLOCK_Y)
#define NUM_WARPS (BLOCK_SIZE/32)

typedef struct {
    float x, y;
} float2;

typedef struct {
    float x, y, z;
} float3;

typedef struct {
    float x, y, z, w;
} float4;

typedef struct {
    uint32_t x, y;
} uint2;

typedef struct {
    uint32_t x, y, z;
} dim3;

void cpu_rasterizer_getRect(const float2 p, int max_radius, uint2* rect_min, uint2* rect_max, dim3 grid);

float3 cpu_rasterizer_transformPoint4x3(const float3 p, const float* matrix);

float4 cpu_rasterizer_transformPoint4x4(const float3 p, const float* matrix);

int cpu_rasterizer_in_frustum(int idx,
    const float* orig_points,
    const float* viewmatrix,
    const float* projmatrix,
    int prefiltered,
    float3* p_view);

#endif