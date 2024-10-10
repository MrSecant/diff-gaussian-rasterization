; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "S128-e-i16:16-i8:8-i1:8-i128:128-i64:64-p0:64:64:64:64-f128:128-f64:64-f16:16-i32:32"

%struct.float2 = type { float, float }
%struct.dim3 = type { i32, i32, i32 }
%struct.uint2 = type { i32, i32 }
%struct.float3 = type { float, float, float }
%struct.float4 = type { float, float, float, float }

@.str = private unnamed_addr constant [71 x i8] c"Point is filtered although prefiltered is set. This shouldn't happen!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @cpu_rasterizer_getRect(float %0, float %1, i32 noundef signext %2, ptr noundef %3, ptr noundef %4, [2 x i64] %5) #0 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %9, i64 12, i1 false)
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
  %24 = call i32 @max_int(i32 0, i32 %23)
  %25 = call i32 @min_int(i32 %16, i32 %24)
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
  %37 = call i32 @max_int(i32 0, i32 %36)
  %38 = call i32 @min_int(i32 %29, i32 %37)
  %39 = load ptr, ptr %11, align 8
  %40 = getelementptr inbounds %struct.uint2, ptr %39, i32 0, i32 1
  store i32 %38, ptr %40, align 4
  %41 = load i32, ptr %15, align 4
  %42 = load float, ptr %17, align 4
  %43 = load i32, ptr %10, align 4
  %44 = sitofp i32 %43 to float
  %45 = fadd float %42, %44
  %46 = fadd float %45, 1.600000e+01
  %47 = fsub float %46, 1.000000e+00
  %48 = fdiv float %47, 1.600000e+01
  %49 = fptosi float %48 to i32
  %50 = call i32 @max_int(i32 0, i32 %49)
  %51 = call i32 @min_int(i32 %41, i32 %50)
  %52 = load ptr, ptr %12, align 8
  %53 = getelementptr inbounds %struct.uint2, ptr %52, i32 0, i32 0
  store i32 %51, ptr %53, align 4
  %54 = load i32, ptr %28, align 4
  %55 = load float, ptr %30, align 4
  %56 = load i32, ptr %10, align 4
  %57 = sitofp i32 %56 to float
  %58 = fadd float %55, %57
  %59 = fadd float %58, 1.600000e+01
  %60 = fsub float %59, 1.000000e+00
  %61 = fdiv float %60, 1.600000e+01
  %62 = fptosi float %61 to i32
  %63 = call i32 @max_int(i32 0, i32 %62)
  %64 = call i32 @min_int(i32 %54, i32 %63)
  %65 = load ptr, ptr %12, align 8
  %66 = getelementptr inbounds %struct.uint2, ptr %65, i32 0, i32 1
  store i32 %64, ptr %66, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i32 @min_int(i32 noundef signext %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %13, %2
  %9 = phi ptr [ %14, %13 ], [ %3, %2 ]
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8
  %12 = phi i32 [ %10, %8 ]
  ret i32 %12

13:                                               ; preds = %2
  %14 = phi ptr [ %4, %2 ]
  br label %8
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
  br i1 %7, label %8, label %13

8:                                                ; preds = %13, %2
  %9 = phi ptr [ %14, %13 ], [ %3, %2 ]
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8
  %12 = phi i32 [ %10, %8 ]
  ret i32 %12

13:                                               ; preds = %2
  %14 = phi ptr [ %4, %2 ]
  br label %8
}

; Function Attrs: noinline nounwind optnone uwtable
define [2 x i64] @cpu_rasterizer_transformPoint4x3([2 x i64] %0, ptr noundef %1) #0 {
  %3 = alloca %struct.float3, align 4
  %4 = alloca %struct.float3, align 4
  %5 = alloca [2 x i64], align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %4, ptr %5, i64 12, i1 false)
  store ptr %1, ptr %6, align 8
  %8 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 0
  %9 = load ptr, ptr %6, align 8
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds float, ptr %9, i32 4
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %16 = load float, ptr %15, align 4
  %17 = fmul float %14, %16
  %18 = call float @llvm.fmuladd.f32(float %10, float %12, float %17)
  %19 = getelementptr inbounds float, ptr %9, i32 8
  %20 = load float, ptr %19, align 4
  %21 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %22 = load float, ptr %21, align 4
  %23 = call float @llvm.fmuladd.f32(float %20, float %22, float %18)
  %24 = getelementptr inbounds float, ptr %9, i32 12
  %25 = load float, ptr %24, align 4
  %26 = fadd float %23, %25
  store float %26, ptr %8, align 4
  %27 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 1
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds float, ptr %28, i32 1
  %30 = load float, ptr %29, align 4
  %31 = load float, ptr %11, align 4
  %32 = getelementptr inbounds float, ptr %28, i32 5
  %33 = load float, ptr %32, align 4
  %34 = load float, ptr %15, align 4
  %35 = fmul float %33, %34
  %36 = call float @llvm.fmuladd.f32(float %30, float %31, float %35)
  %37 = getelementptr inbounds float, ptr %28, i32 9
  %38 = load float, ptr %37, align 4
  %39 = load float, ptr %21, align 4
  %40 = call float @llvm.fmuladd.f32(float %38, float %39, float %36)
  %41 = getelementptr inbounds float, ptr %28, i32 13
  %42 = load float, ptr %41, align 4
  %43 = fadd float %40, %42
  store float %43, ptr %27, align 4
  %44 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 2
  %45 = load ptr, ptr %6, align 8
  %46 = getelementptr inbounds float, ptr %45, i32 2
  %47 = load float, ptr %46, align 4
  %48 = load float, ptr %11, align 4
  %49 = getelementptr inbounds float, ptr %45, i32 6
  %50 = load float, ptr %49, align 4
  %51 = load float, ptr %15, align 4
  %52 = fmul float %50, %51
  %53 = call float @llvm.fmuladd.f32(float %47, float %48, float %52)
  %54 = getelementptr inbounds float, ptr %45, i32 10
  %55 = load float, ptr %54, align 4
  %56 = load float, ptr %21, align 4
  %57 = call float @llvm.fmuladd.f32(float %55, float %56, float %53)
  %58 = getelementptr inbounds float, ptr %45, i32 14
  %59 = load float, ptr %58, align 4
  %60 = fadd float %57, %59
  store float %60, ptr %44, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr %7, ptr %3, i64 12, i1 false)
  %61 = load [2 x i64], ptr %7, align 8
  ret [2 x i64] %61
}

; Function Attrs: noinline nounwind optnone uwtable
define [2 x i64] @cpu_rasterizer_transformPoint4x4([2 x i64] %0, ptr noundef %1) #0 {
  %3 = alloca %struct.float4, align 4
  %4 = alloca %struct.float3, align 4
  %5 = alloca [2 x i64], align 8
  %6 = alloca ptr, align 8
  store [2 x i64] %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %4, ptr %5, i64 12, i1 false)
  store ptr %1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.float4, ptr %3, i32 0, i32 0
  %8 = load ptr, ptr %6, align 8
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds float, ptr %8, i32 4
  %13 = load float, ptr %12, align 4
  %14 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %15 = load float, ptr %14, align 4
  %16 = fmul float %13, %15
  %17 = call float @llvm.fmuladd.f32(float %9, float %11, float %16)
  %18 = getelementptr inbounds float, ptr %8, i32 8
  %19 = load float, ptr %18, align 4
  %20 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %21 = load float, ptr %20, align 4
  %22 = call float @llvm.fmuladd.f32(float %19, float %21, float %17)
  %23 = getelementptr inbounds float, ptr %8, i32 12
  %24 = load float, ptr %23, align 4
  %25 = fadd float %22, %24
  store float %25, ptr %7, align 4
  %26 = getelementptr inbounds %struct.float4, ptr %3, i32 0, i32 1
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds float, ptr %27, i32 1
  %29 = load float, ptr %28, align 4
  %30 = load float, ptr %10, align 4
  %31 = getelementptr inbounds float, ptr %27, i32 5
  %32 = load float, ptr %31, align 4
  %33 = load float, ptr %14, align 4
  %34 = fmul float %32, %33
  %35 = call float @llvm.fmuladd.f32(float %29, float %30, float %34)
  %36 = getelementptr inbounds float, ptr %27, i32 9
  %37 = load float, ptr %36, align 4
  %38 = load float, ptr %20, align 4
  %39 = call float @llvm.fmuladd.f32(float %37, float %38, float %35)
  %40 = getelementptr inbounds float, ptr %27, i32 13
  %41 = load float, ptr %40, align 4
  %42 = fadd float %39, %41
  store float %42, ptr %26, align 4
  %43 = getelementptr inbounds %struct.float4, ptr %3, i32 0, i32 2
  %44 = load ptr, ptr %6, align 8
  %45 = getelementptr inbounds float, ptr %44, i32 2
  %46 = load float, ptr %45, align 4
  %47 = load float, ptr %10, align 4
  %48 = getelementptr inbounds float, ptr %44, i32 6
  %49 = load float, ptr %48, align 4
  %50 = load float, ptr %14, align 4
  %51 = fmul float %49, %50
  %52 = call float @llvm.fmuladd.f32(float %46, float %47, float %51)
  %53 = getelementptr inbounds float, ptr %44, i32 10
  %54 = load float, ptr %53, align 4
  %55 = load float, ptr %20, align 4
  %56 = call float @llvm.fmuladd.f32(float %54, float %55, float %52)
  %57 = getelementptr inbounds float, ptr %44, i32 14
  %58 = load float, ptr %57, align 4
  %59 = fadd float %56, %58
  store float %59, ptr %43, align 4
  %60 = getelementptr inbounds %struct.float4, ptr %3, i32 0, i32 3
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds float, ptr %61, i32 3
  %63 = load float, ptr %62, align 4
  %64 = load float, ptr %10, align 4
  %65 = getelementptr inbounds float, ptr %61, i32 7
  %66 = load float, ptr %65, align 4
  %67 = load float, ptr %14, align 4
  %68 = fmul float %66, %67
  %69 = call float @llvm.fmuladd.f32(float %63, float %64, float %68)
  %70 = getelementptr inbounds float, ptr %61, i32 11
  %71 = load float, ptr %70, align 4
  %72 = load float, ptr %20, align 4
  %73 = call float @llvm.fmuladd.f32(float %71, float %72, float %69)
  %74 = getelementptr inbounds float, ptr %61, i32 15
  %75 = load float, ptr %74, align 4
  %76 = fadd float %73, %75
  store float %76, ptr %60, align 4
  %77 = load [2 x i64], ptr %3, align 4
  ret [2 x i64] %77
}

; Function Attrs: noinline nounwind optnone uwtable
define signext i32 @cpu_rasterizer_in_frustum(i32 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef signext %4, ptr noundef %5) #0 {
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
  %25 = mul nsw i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, ptr %23, i64 %26
  %28 = load float, ptr %27, align 4
  store float %28, ptr %22, align 4
  %29 = getelementptr inbounds %struct.float3, ptr %14, i32 0, i32 1
  %30 = load ptr, ptr %9, align 8
  %31 = load i32, ptr %8, align 4
  %32 = mul nsw i32 %31, 3
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, ptr %30, i64 %34
  %36 = load float, ptr %35, align 4
  store float %36, ptr %29, align 4
  %37 = getelementptr inbounds %struct.float3, ptr %14, i32 0, i32 2
  %38 = load ptr, ptr %9, align 8
  %39 = load i32, ptr %8, align 4
  %40 = mul nsw i32 %39, 3
  %41 = add nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, ptr %38, i64 %42
  %44 = load float, ptr %43, align 4
  store float %44, ptr %37, align 4
  %45 = load ptr, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %16, ptr %14, i64 12, i1 false)
  %46 = load [2 x i64], ptr %16, align 8
  %47 = call [2 x i64] @cpu_rasterizer_transformPoint4x4([2 x i64] %46, ptr %45)
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
  call void @llvm.memcpy.p0.p0.i64(ptr %20, ptr %14, i64 12, i1 false)
  %69 = load [2 x i64], ptr %20, align 8
  %70 = call [2 x i64] @cpu_rasterizer_transformPoint4x3([2 x i64] %69, ptr %68)
  store [2 x i64] %70, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %19, ptr %21, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %67, ptr %19, i64 12, i1 false)
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 2
  %73 = load float, ptr %72, align 4
  %74 = fcmp ole float %73, 0x3FC99999A0000000
  br i1 %74, label %75, label %80

75:                                               ; preds = %6
  %76 = load i32, ptr %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (ptr, ...) @printf(ptr @.str)
  call void @exit(i32 1)
  unreachable

80:                                               ; preds = %75, %6
  %81 = phi i32 [ 0, %75 ], [ 1, %6 ]
  store i32 %81, ptr %7, align 4
  br label %82

82:                                               ; preds = %80
  %83 = load i32, ptr %7, align 4
  ret i32 %83
}

declare signext i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef signext) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zicsr,-e,-experimental-zacas,-experimental-zcmop,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-zimop,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-smaia,-smepmp,-ssaia,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
