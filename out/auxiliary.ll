; ModuleID = '/root/project/diff-gaussian-rasterization/cpu_rasterizer/auxiliary.c'
source_filename = "/root/project/diff-gaussian-rasterization/cpu_rasterizer/auxiliary.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-linux-gnu"

%struct.float2 = type { float, float }
%struct.dim3 = type { i32, i32, i32 }
%struct.uint2 = type { i32, i32 }
%struct.float3 = type { float, float, float }
%struct.float4 = type { float, float, float, float }

@.str = private unnamed_addr constant [71 x i8] c"Point is filtered although prefiltered is set. This shouldn't happen!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_rasterizer_getRect(float %0, float %1, i32 noundef signext %2, ptr noundef %3, ptr noundef %4, [2 x i64] %5) #0 {
  %7 = alloca %struct.float2, align 4
  %8 = alloca %struct.dim3, align 4
  %9 = alloca [2 x i64], align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = getelementptr inbounds { float, float }, ptr %7, i32 0, i32 0
  store float %0, ptr %13, align 4
  %14 = getelementptr inbounds { float, float }, ptr %7, i32 0, i32 1
  store float %1, ptr %14, align 4
  store [2 x i64] %5, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 8 %9, i64 12, i1 false)
  store i32 %2, ptr %10, align 4
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  %15 = getelementptr inbounds %struct.dim3, ptr %8, i32 0, i32 0
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.float2, ptr %7, i32 0, i32 0
  %18 = load float, ptr %17, align 4
  %19 = load i32, ptr %10, align 4
  %20 = sitofp i32 %19 to float
  %21 = fsub float %18, %20
  %22 = fdiv float %21, 1.600000e+01
  %23 = fptosi float %22 to i32
  %24 = call signext i32 @max_int(i32 noundef signext 0, i32 noundef signext %23)
  %25 = call signext i32 @min_int(i32 noundef signext %16, i32 noundef signext %24)
  %26 = load ptr, ptr %11, align 8
  %27 = getelementptr inbounds %struct.uint2, ptr %26, i32 0, i32 0
  store i32 %25, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dim3, ptr %8, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.float2, ptr %7, i32 0, i32 1
  %31 = load float, ptr %30, align 4
  %32 = load i32, ptr %10, align 4
  %33 = sitofp i32 %32 to float
  %34 = fsub float %31, %33
  %35 = fdiv float %34, 1.600000e+01
  %36 = fptosi float %35 to i32
  %37 = call signext i32 @max_int(i32 noundef signext 0, i32 noundef signext %36)
  %38 = call signext i32 @min_int(i32 noundef signext %29, i32 noundef signext %37)
  %39 = load ptr, ptr %11, align 8
  %40 = getelementptr inbounds %struct.uint2, ptr %39, i32 0, i32 1
  store i32 %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dim3, ptr %8, i32 0, i32 0
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.float2, ptr %7, i32 0, i32 0
  %44 = load float, ptr %43, align 4
  %45 = load i32, ptr %10, align 4
  %46 = sitofp i32 %45 to float
  %47 = fadd float %44, %46
  %48 = fadd float %47, 1.600000e+01
  %49 = fsub float %48, 1.000000e+00
  %50 = fdiv float %49, 1.600000e+01
  %51 = fptosi float %50 to i32
  %52 = call signext i32 @max_int(i32 noundef signext 0, i32 noundef signext %51)
  %53 = call signext i32 @min_int(i32 noundef signext %42, i32 noundef signext %52)
  %54 = load ptr, ptr %12, align 8
  %55 = getelementptr inbounds %struct.uint2, ptr %54, i32 0, i32 0
  store i32 %53, ptr %55, align 4
  %56 = getelementptr inbounds %struct.dim3, ptr %8, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.float2, ptr %7, i32 0, i32 1
  %59 = load float, ptr %58, align 4
  %60 = load i32, ptr %10, align 4
  %61 = sitofp i32 %60 to float
  %62 = fadd float %59, %61
  %63 = fadd float %62, 1.600000e+01
  %64 = fsub float %63, 1.000000e+00
  %65 = fdiv float %64, 1.600000e+01
  %66 = fptosi float %65 to i32
  %67 = call signext i32 @max_int(i32 noundef signext 0, i32 noundef signext %66)
  %68 = call signext i32 @min_int(i32 noundef signext %57, i32 noundef signext %67)
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds %struct.uint2, ptr %69, i32 0, i32 1
  store i32 %68, ptr %70, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i32 @min_int(i32 noundef signext %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i32 @max_int(i32 noundef signext %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local [2 x i64] @cpu_rasterizer_transformPoint4x3([2 x i64] %0, ptr noundef %1) #0 {
  %3 = alloca %struct.float3, align 4
  %4 = alloca %struct.float3, align 4
  %5 = alloca [2 x i64], align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 8 %5, i64 12, i1 false)
  store ptr %1, ptr %6, align 8
  %8 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 0
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds float, ptr %9, i64 0
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %13 = load float, ptr %12, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds float, ptr %14, i64 4
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %18 = load float, ptr %17, align 4
  %19 = fmul float %16, %18
  %20 = call float @llvm.fmuladd.f32(float %11, float %13, float %19)
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds float, ptr %21, i64 8
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %25 = load float, ptr %24, align 4
  %26 = call float @llvm.fmuladd.f32(float %23, float %25, float %20)
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds float, ptr %27, i64 12
  %29 = load float, ptr %28, align 4
  %30 = fadd float %26, %29
  store float %30, ptr %8, align 4
  %31 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 1
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds float, ptr %32, i64 1
  %34 = load float, ptr %33, align 4
  %35 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %36 = load float, ptr %35, align 4
  %37 = load ptr, ptr %6, align 8
  %38 = getelementptr inbounds float, ptr %37, i64 5
  %39 = load float, ptr %38, align 4
  %40 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %41 = load float, ptr %40, align 4
  %42 = fmul float %39, %41
  %43 = call float @llvm.fmuladd.f32(float %34, float %36, float %42)
  %44 = load ptr, ptr %6, align 8
  %45 = getelementptr inbounds float, ptr %44, i64 9
  %46 = load float, ptr %45, align 4
  %47 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %48 = load float, ptr %47, align 4
  %49 = call float @llvm.fmuladd.f32(float %46, float %48, float %43)
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds float, ptr %50, i64 13
  %52 = load float, ptr %51, align 4
  %53 = fadd float %49, %52
  store float %53, ptr %31, align 4
  %54 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 2
  %55 = load ptr, ptr %6, align 8
  %56 = getelementptr inbounds float, ptr %55, i64 2
  %57 = load float, ptr %56, align 4
  %58 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %59 = load float, ptr %58, align 4
  %60 = load ptr, ptr %6, align 8
  %61 = getelementptr inbounds float, ptr %60, i64 6
  %62 = load float, ptr %61, align 4
  %63 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %64 = load float, ptr %63, align 4
  %65 = fmul float %62, %64
  %66 = call float @llvm.fmuladd.f32(float %57, float %59, float %65)
  %67 = load ptr, ptr %6, align 8
  %68 = getelementptr inbounds float, ptr %67, i64 10
  %69 = load float, ptr %68, align 4
  %70 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %71 = load float, ptr %70, align 4
  %72 = call float @llvm.fmuladd.f32(float %69, float %71, float %66)
  %73 = load ptr, ptr %6, align 8
  %74 = getelementptr inbounds float, ptr %73, i64 14
  %75 = load float, ptr %74, align 4
  %76 = fadd float %72, %75
  store float %76, ptr %54, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 4 %3, i64 12, i1 false)
  %77 = load [2 x i64], ptr %7, align 8
  ret [2 x i64] %77
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local [2 x i64] @cpu_rasterizer_transformPoint4x4([2 x i64] %0, ptr noundef %1) #0 {
  %3 = alloca %struct.float4, align 4
  %4 = alloca %struct.float3, align 4
  %5 = alloca [2 x i64], align 8
  %6 = alloca ptr, align 8
  store [2 x i64] %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 8 %5, i64 12, i1 false)
  store ptr %1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.float4, ptr %3, i32 0, i32 0
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr inbounds float, ptr %8, i64 0
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %12 = load float, ptr %11, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds float, ptr %13, i64 4
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %17 = load float, ptr %16, align 4
  %18 = fmul float %15, %17
  %19 = call float @llvm.fmuladd.f32(float %10, float %12, float %18)
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds float, ptr %20, i64 8
  %22 = load float, ptr %21, align 4
  %23 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %24 = load float, ptr %23, align 4
  %25 = call float @llvm.fmuladd.f32(float %22, float %24, float %19)
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds float, ptr %26, i64 12
  %28 = load float, ptr %27, align 4
  %29 = fadd float %25, %28
  store float %29, ptr %7, align 4
  %30 = getelementptr inbounds %struct.float4, ptr %3, i32 0, i32 1
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds float, ptr %31, i64 1
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %35 = load float, ptr %34, align 4
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds float, ptr %36, i64 5
  %38 = load float, ptr %37, align 4
  %39 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %40 = load float, ptr %39, align 4
  %41 = fmul float %38, %40
  %42 = call float @llvm.fmuladd.f32(float %33, float %35, float %41)
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds float, ptr %43, i64 9
  %45 = load float, ptr %44, align 4
  %46 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %47 = load float, ptr %46, align 4
  %48 = call float @llvm.fmuladd.f32(float %45, float %47, float %42)
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds float, ptr %49, i64 13
  %51 = load float, ptr %50, align 4
  %52 = fadd float %48, %51
  store float %52, ptr %30, align 4
  %53 = getelementptr inbounds %struct.float4, ptr %3, i32 0, i32 2
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr inbounds float, ptr %54, i64 2
  %56 = load float, ptr %55, align 4
  %57 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %58 = load float, ptr %57, align 4
  %59 = load ptr, ptr %6, align 8
  %60 = getelementptr inbounds float, ptr %59, i64 6
  %61 = load float, ptr %60, align 4
  %62 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %63 = load float, ptr %62, align 4
  %64 = fmul float %61, %63
  %65 = call float @llvm.fmuladd.f32(float %56, float %58, float %64)
  %66 = load ptr, ptr %6, align 8
  %67 = getelementptr inbounds float, ptr %66, i64 10
  %68 = load float, ptr %67, align 4
  %69 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %70 = load float, ptr %69, align 4
  %71 = call float @llvm.fmuladd.f32(float %68, float %70, float %65)
  %72 = load ptr, ptr %6, align 8
  %73 = getelementptr inbounds float, ptr %72, i64 14
  %74 = load float, ptr %73, align 4
  %75 = fadd float %71, %74
  store float %75, ptr %53, align 4
  %76 = getelementptr inbounds %struct.float4, ptr %3, i32 0, i32 3
  %77 = load ptr, ptr %6, align 8
  %78 = getelementptr inbounds float, ptr %77, i64 3
  %79 = load float, ptr %78, align 4
  %80 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %81 = load float, ptr %80, align 4
  %82 = load ptr, ptr %6, align 8
  %83 = getelementptr inbounds float, ptr %82, i64 7
  %84 = load float, ptr %83, align 4
  %85 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %86 = load float, ptr %85, align 4
  %87 = fmul float %84, %86
  %88 = call float @llvm.fmuladd.f32(float %79, float %81, float %87)
  %89 = load ptr, ptr %6, align 8
  %90 = getelementptr inbounds float, ptr %89, i64 11
  %91 = load float, ptr %90, align 4
  %92 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %93 = load float, ptr %92, align 4
  %94 = call float @llvm.fmuladd.f32(float %91, float %93, float %88)
  %95 = load ptr, ptr %6, align 8
  %96 = getelementptr inbounds float, ptr %95, i64 15
  %97 = load float, ptr %96, align 4
  %98 = fadd float %94, %97
  store float %98, ptr %76, align 4
  %99 = load [2 x i64], ptr %3, align 4
  ret [2 x i64] %99
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i32 @cpu_rasterizer_in_frustum(i32 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef signext %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca %struct.float3, align 4
  %15 = alloca %struct.float4, align 4
  %16 = alloca [2 x i64], align 8
  %17 = alloca float, align 4
  %18 = alloca %struct.float3, align 4
  %19 = alloca %struct.float3, align 4
  %20 = alloca [2 x i64], align 8
  %21 = alloca [2 x i64], align 8
  store i32 %0, ptr %8, align 4
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store i32 %4, ptr %12, align 4
  store ptr %5, ptr %13, align 8
  %22 = getelementptr inbounds %struct.float3, ptr %14, i32 0, i32 0
  %23 = load ptr, ptr %9, align 8
  %24 = load i32, ptr %8, align 4
  %25 = mul nsw i32 3, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, ptr %23, i64 %26
  %28 = load float, ptr %27, align 4
  store float %28, ptr %22, align 4
  %29 = getelementptr inbounds %struct.float3, ptr %14, i32 0, i32 1
  %30 = load ptr, ptr %9, align 8
  %31 = load i32, ptr %8, align 4
  %32 = mul nsw i32 3, %31
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, ptr %30, i64 %34
  %36 = load float, ptr %35, align 4
  store float %36, ptr %29, align 4
  %37 = getelementptr inbounds %struct.float3, ptr %14, i32 0, i32 2
  %38 = load ptr, ptr %9, align 8
  %39 = load i32, ptr %8, align 4
  %40 = mul nsw i32 3, %39
  %41 = add nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, ptr %38, i64 %42
  %44 = load float, ptr %43, align 4
  store float %44, ptr %37, align 4
  %45 = load ptr, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 4 %14, i64 12, i1 false)
  %46 = load [2 x i64], ptr %16, align 8
  %47 = call [2 x i64] @cpu_rasterizer_transformPoint4x4([2 x i64] %46, ptr noundef %45)
  store [2 x i64] %47, ptr %15, align 4
  %48 = getelementptr inbounds %struct.float4, ptr %15, i32 0, i32 3
  %49 = load float, ptr %48, align 4
  %50 = fadd float %49, 0x3E7AD7F2A0000000
  %51 = fdiv float 1.000000e+00, %50
  store float %51, ptr %17, align 4
  %52 = getelementptr inbounds %struct.float3, ptr %18, i32 0, i32 0
  %53 = getelementptr inbounds %struct.float4, ptr %15, i32 0, i32 0
  %54 = load float, ptr %53, align 4
  %55 = load float, ptr %17, align 4
  %56 = fmul float %54, %55
  store float %56, ptr %52, align 4
  %57 = getelementptr inbounds %struct.float3, ptr %18, i32 0, i32 1
  %58 = getelementptr inbounds %struct.float4, ptr %15, i32 0, i32 1
  %59 = load float, ptr %58, align 4
  %60 = load float, ptr %17, align 4
  %61 = fmul float %59, %60
  store float %61, ptr %57, align 4
  %62 = getelementptr inbounds %struct.float3, ptr %18, i32 0, i32 2
  %63 = getelementptr inbounds %struct.float4, ptr %15, i32 0, i32 2
  %64 = load float, ptr %63, align 4
  %65 = load float, ptr %17, align 4
  %66 = fmul float %64, %65
  store float %66, ptr %62, align 4
  %67 = load ptr, ptr %13, align 8
  %68 = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 4 %14, i64 12, i1 false)
  %69 = load [2 x i64], ptr %20, align 8
  %70 = call [2 x i64] @cpu_rasterizer_transformPoint4x3([2 x i64] %69, ptr noundef %68)
  store [2 x i64] %70, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 8 %21, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %67, ptr align 4 %19, i64 12, i1 false)
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 2
  %73 = load float, ptr %72, align 4
  %74 = fcmp ole float %73, 0x3FC99999A0000000
  br i1 %74, label %75, label %81

75:                                               ; preds = %6
  %76 = load i32, ptr %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call signext i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @exit(i32 noundef signext 1) #5
  unreachable

80:                                               ; preds = %75
  store i32 0, ptr %7, align 4
  br label %82

81:                                               ; preds = %6
  store i32 1, ptr %7, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, ptr %7, align 4
  ret i32 %83
}

declare signext i32 @printf(ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef signext) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zicsr,-e,-experimental-zacas,-experimental-zcmop,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-zimop,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-smaia,-smepmp,-ssaia,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zicsr,-e,-experimental-zacas,-experimental-zcmop,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-zimop,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-smaia,-smepmp,-ssaia,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zicsr,-e,-experimental-zacas,-experimental-zcmop,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-zimop,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-smaia,-smepmp,-ssaia,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{i32 8, !"SmallDataLimit", i32 8}
!9 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
