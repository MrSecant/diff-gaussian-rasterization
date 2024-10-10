; ModuleID = '/root/project/diff-gaussian-rasterization/cpu_rasterizer/rasterizer_impl.c'
source_filename = "/root/project/diff-gaussian-rasterization/cpu_rasterizer/rasterizer_impl.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-linux-gnu"

%struct.BinningState = type { i64, ptr, ptr, ptr, ptr, ptr }
%struct.float3 = type { float, float, float }
%struct.dim3 = type { i32, i32, i32 }
%struct.uint2 = type { i32, i32 }
%struct.float2 = type { float, float }
%struct.GeometryState = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ImageState = type { ptr, ptr, ptr }

@binningState = dso_local global %struct.BinningState zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i32 @cpu_rasterizer_getHigherMsb(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 16, ptr %3, align 4
  %5 = load i32, ptr %3, align 4
  store i32 %5, ptr %4, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, ptr %4, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load i32, ptr %4, align 4
  %11 = udiv i32 %10, 2
  store i32 %11, ptr %4, align 4
  %12 = load i32, ptr %2, align 4
  %13 = load i32, ptr %3, align 4
  %14 = lshr i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32, ptr %4, align 4
  %18 = load i32, ptr %3, align 4
  %19 = add i32 %18, %17
  store i32 %19, ptr %3, align 4
  br label %24

20:                                               ; preds = %9
  %21 = load i32, ptr %4, align 4
  %22 = load i32, ptr %3, align 4
  %23 = sub i32 %22, %21
  store i32 %23, ptr %3, align 4
  br label %24

24:                                               ; preds = %20, %16
  br label %6, !llvm.loop !10

25:                                               ; preds = %6
  %26 = load i32, ptr %2, align 4
  %27 = load i32, ptr %3, align 4
  %28 = lshr i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, ptr %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %3, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, ptr %3, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_rasterizer_checkFrustum(i32 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.float3, align 4
  store i32 %0, ptr %6, align 4
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store i32 0, ptr %11, align 4
  br label %13

13:                                               ; preds = %27, %5
  %14 = load i32, ptr %11, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32, ptr %11, align 4
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %9, align 8
  %22 = call signext i32 @cpu_rasterizer_in_frustum(i32 noundef signext %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, i32 noundef signext 0, ptr noundef %12)
  %23 = load ptr, ptr %10, align 8
  %24 = load i32, ptr %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  store i32 %22, ptr %26, align 4
  br label %27

27:                                               ; preds = %17
  %28 = load i32, ptr %11, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %11, align 4
  br label %13, !llvm.loop !12

30:                                               ; preds = %13
  ret void
}

declare signext i32 @cpu_rasterizer_in_frustum(i32 noundef signext, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_rasterizer_duplicateWithKeys(i32 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, [2 x i64] %7) #0 {
  %9 = alloca %struct.dim3, align 4
  %10 = alloca [2 x i64], align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.uint2, align 4
  %21 = alloca %struct.uint2, align 4
  %22 = alloca [2 x i64], align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store [2 x i64] %7, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 8 %10, i64 12, i1 false)
  store i32 %0, ptr %11, align 4
  store ptr %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store ptr %6, ptr %17, align 8
  store i32 0, ptr %18, align 4
  br label %27

27:                                               ; preds = %119, %8
  %28 = load i32, ptr %18, align 4
  %29 = load i32, ptr %11, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %122

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8
  %33 = load i32, ptr %18, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %118

38:                                               ; preds = %31
  %39 = load i32, ptr %18, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %49

42:                                               ; preds = %38
  %43 = load ptr, ptr %14, align 8
  %44 = load i32, ptr %18, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %43, i64 %46
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %42, %41
  %50 = phi i32 [ 0, %41 ], [ %48, %42 ]
  store i32 %50, ptr %19, align 4
  %51 = load ptr, ptr %12, align 8
  %52 = load i32, ptr %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.float2, ptr %51, i64 %53
  %55 = load ptr, ptr %17, align 8
  %56 = load i32, ptr %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, ptr %55, i64 %57
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds { float, float }, ptr %54, i32 0, i32 0
  %61 = load float, ptr %60, align 4
  %62 = getelementptr inbounds { float, float }, ptr %54, i32 0, i32 1
  %63 = load float, ptr %62, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 4 %9, i64 12, i1 false)
  %64 = load [2 x i64], ptr %22, align 8
  call void @cpu_rasterizer_getRect(float %61, float %63, i32 noundef signext %59, ptr noundef %20, ptr noundef %21, [2 x i64] %64)
  %65 = getelementptr inbounds %struct.uint2, ptr %20, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  store i32 %66, ptr %23, align 4
  br label %67

67:                                               ; preds = %114, %49
  %68 = load i32, ptr %23, align 4
  %69 = getelementptr inbounds %struct.uint2, ptr %21, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %72, label %117

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.uint2, ptr %20, i32 0, i32 0
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %24, align 4
  br label %75

75:                                               ; preds = %110, %72
  %76 = load i32, ptr %24, align 4
  %77 = getelementptr inbounds %struct.uint2, ptr %21, i32 0, i32 0
  %78 = load i32, ptr %77, align 4
  %79 = icmp ult i32 %76, %78
  br i1 %79, label %80, label %113

80:                                               ; preds = %75
  %81 = load i32, ptr %23, align 4
  %82 = getelementptr inbounds %struct.dim3, ptr %9, i32 0, i32 0
  %83 = load i32, ptr %82, align 4
  %84 = mul i32 %81, %83
  %85 = load i32, ptr %24, align 4
  %86 = add i32 %84, %85
  %87 = zext i32 %86 to i64
  store i64 %87, ptr %25, align 8
  %88 = load i64, ptr %25, align 8
  %89 = shl i64 %88, 32
  store i64 %89, ptr %25, align 8
  %90 = load ptr, ptr %13, align 8
  %91 = load i32, ptr %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, ptr %90, i64 %92
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %26, ptr align 4 %93, i64 4, i1 false)
  %94 = load i32, ptr %26, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64, ptr %25, align 8
  %97 = or i64 %96, %95
  store i64 %97, ptr %25, align 8
  %98 = load i64, ptr %25, align 8
  %99 = load ptr, ptr %15, align 8
  %100 = load i32, ptr %19, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i64, ptr %99, i64 %101
  store i64 %98, ptr %102, align 8
  %103 = load i32, ptr %18, align 4
  %104 = load ptr, ptr %16, align 8
  %105 = load i32, ptr %19, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %104, i64 %106
  store i32 %103, ptr %107, align 4
  %108 = load i32, ptr %19, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %19, align 4
  br label %110

110:                                              ; preds = %80
  %111 = load i32, ptr %24, align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr %24, align 4
  br label %75, !llvm.loop !13

113:                                              ; preds = %75
  br label %114

114:                                              ; preds = %113
  %115 = load i32, ptr %23, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %23, align 4
  br label %67, !llvm.loop !14

117:                                              ; preds = %67
  br label %118

118:                                              ; preds = %117, %31
  br label %119

119:                                              ; preds = %118
  %120 = load i32, ptr %18, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %18, align 4
  br label %27, !llvm.loop !15

122:                                              ; preds = %27
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @cpu_rasterizer_getRect(float, float, i32 noundef signext, ptr noundef, ptr noundef, [2 x i64]) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_rasterizer_identifyTileRanges(i32 noundef signext %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %71, %3
  %12 = load i32, ptr %7, align 4
  %13 = load i32, ptr %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %74

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 8
  %17 = load i32, ptr %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, ptr %16, i64 %18
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %8, align 8
  %21 = load i64, ptr %8, align 8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  store i32 %23, ptr %9, align 4
  %24 = load i32, ptr %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load ptr, ptr %6, align 8
  %28 = load i32, ptr %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.uint2, ptr %27, i64 %29
  %31 = getelementptr inbounds %struct.uint2, ptr %30, i32 0, i32 0
  store i32 0, ptr %31, align 4
  br label %58

32:                                               ; preds = %15
  %33 = load ptr, ptr %5, align 8
  %34 = load i32, ptr %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, ptr %33, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = lshr i64 %38, 32
  %40 = trunc i64 %39 to i32
  store i32 %40, ptr %10, align 4
  %41 = load i32, ptr %9, align 4
  %42 = load i32, ptr %10, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %32
  %45 = load i32, ptr %7, align 4
  %46 = load ptr, ptr %6, align 8
  %47 = load i32, ptr %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.uint2, ptr %46, i64 %48
  %50 = getelementptr inbounds %struct.uint2, ptr %49, i32 0, i32 1
  store i32 %45, ptr %50, align 4
  %51 = load i32, ptr %7, align 4
  %52 = load ptr, ptr %6, align 8
  %53 = load i32, ptr %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.uint2, ptr %52, i64 %54
  %56 = getelementptr inbounds %struct.uint2, ptr %55, i32 0, i32 0
  store i32 %51, ptr %56, align 4
  br label %57

57:                                               ; preds = %44, %32
  br label %58

58:                                               ; preds = %57, %26
  %59 = load i32, ptr %7, align 4
  %60 = load i32, ptr %4, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i32, ptr %4, align 4
  %65 = load ptr, ptr %6, align 8
  %66 = load i32, ptr %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.uint2, ptr %65, i64 %67
  %69 = getelementptr inbounds %struct.uint2, ptr %68, i32 0, i32 1
  store i32 %64, ptr %69, align 4
  br label %70

70:                                               ; preds = %63, %58
  br label %71

71:                                               ; preds = %70
  %72 = load i32, ptr %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %7, align 4
  br label %11, !llvm.loop !16

74:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_rasterizer_markVisible(i32 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i32 %0, ptr %6, align 4
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %11 = load i32, ptr %6, align 4
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = load ptr, ptr %9, align 8
  %15 = load ptr, ptr %10, align 8
  call void @cpu_rasterizer_checkFrustum(i32 noundef signext %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i32 @cpu_rasterizer_compare_keys(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %6, align 4
  %12 = load ptr, ptr %5, align 8
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %7, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 1), align 8
  %15 = load i32, ptr %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, ptr %14, i64 %16
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %8, align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 1), align 8
  %20 = load i32, ptr %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, ptr %19, i64 %21
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %9, align 8
  %24 = load i64, ptr %8, align 8
  %25 = load i64, ptr %9, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 -1, ptr %3, align 4
  br label %34

28:                                               ; preds = %2
  %29 = load i64, ptr %8, align 8
  %30 = load i64, ptr %9, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, ptr %3, align 4
  br label %34

33:                                               ; preds = %28
  store i32 0, ptr %3, align 4
  br label %34

34:                                               ; preds = %33, %32, %27
  %35 = load i32, ptr %3, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i32 @cpu_rasterizer_forward(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, ptr noundef %3, i32 noundef signext %4, i32 noundef signext %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, float noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, float noundef %17, float noundef %18, i32 noundef signext %19, ptr noundef %20, ptr noundef %21, i32 noundef signext %22) #0 {
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca ptr, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca float, align 4
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca float, align 4
  %42 = alloca float, align 4
  %43 = alloca i32, align 4
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca i32, align 4
  %47 = alloca float, align 4
  %48 = alloca float, align 4
  %49 = alloca %struct.GeometryState, align 8
  %50 = alloca %struct.dim3, align 4
  %51 = alloca %struct.ImageState, align 8
  %52 = alloca i32, align 4
  %53 = alloca [2 x i64], align 8
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca [2 x i64], align 8
  %58 = alloca i32, align 4
  %59 = alloca ptr, align 8
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca ptr, align 8
  %66 = alloca [2 x i64], align 8
  store i32 %0, ptr %24, align 4
  store i32 %1, ptr %25, align 4
  store i32 %2, ptr %26, align 4
  store ptr %3, ptr %27, align 8
  store i32 %4, ptr %28, align 4
  store i32 %5, ptr %29, align 4
  store ptr %6, ptr %30, align 8
  store ptr %7, ptr %31, align 8
  store ptr %8, ptr %32, align 8
  store ptr %9, ptr %33, align 8
  store ptr %10, ptr %34, align 8
  store float %11, ptr %35, align 4
  store ptr %12, ptr %36, align 8
  store ptr %13, ptr %37, align 8
  store ptr %14, ptr %38, align 8
  store ptr %15, ptr %39, align 8
  store ptr %16, ptr %40, align 8
  store float %17, ptr %41, align 4
  store float %18, ptr %42, align 4
  store i32 %19, ptr %43, align 4
  store ptr %20, ptr %44, align 8
  store ptr %21, ptr %45, align 8
  store i32 %22, ptr %46, align 4
  %67 = load i32, ptr %29, align 4
  %68 = sitofp i32 %67 to float
  %69 = load float, ptr %42, align 4
  %70 = fmul float 2.000000e+00, %69
  %71 = fdiv float %68, %70
  store float %71, ptr %47, align 4
  %72 = load i32, ptr %28, align 4
  %73 = sitofp i32 %72 to float
  %74 = load float, ptr %41, align 4
  %75 = fmul float 2.000000e+00, %74
  %76 = fdiv float %73, %75
  store float %76, ptr %48, align 4
  %77 = load i32, ptr %24, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = call noalias ptr @malloc(i64 noundef %79) #5
  %81 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 1
  store ptr %80, ptr %81, align 8
  %82 = load i32, ptr %24, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 4, %83
  %85 = mul i64 %84, 3
  %86 = call noalias ptr @malloc(i64 noundef %85) #5
  %87 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 3
  store ptr %86, ptr %87, align 8
  %88 = load i32, ptr %24, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = call noalias ptr @malloc(i64 noundef %90) #5
  %92 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 4
  store ptr %91, ptr %92, align 8
  %93 = load i32, ptr %24, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 8, %94
  %96 = call noalias ptr @malloc(i64 noundef %95) #5
  %97 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 5
  store ptr %96, ptr %97, align 8
  %98 = load i32, ptr %24, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  %101 = mul i64 %100, 6
  %102 = call noalias ptr @malloc(i64 noundef %101) #5
  %103 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 6
  store ptr %102, ptr %103, align 8
  %104 = load i32, ptr %24, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 16, %105
  %107 = call noalias ptr @malloc(i64 noundef %106) #5
  %108 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 7
  store ptr %107, ptr %108, align 8
  %109 = load i32, ptr %24, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 4, %110
  %112 = mul i64 %111, 3
  %113 = call noalias ptr @malloc(i64 noundef %112) #5
  %114 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 8
  store ptr %113, ptr %114, align 8
  %115 = load i32, ptr %24, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 4, %116
  %118 = call noalias ptr @malloc(i64 noundef %117) #5
  %119 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 10
  store ptr %118, ptr %119, align 8
  %120 = load i32, ptr %24, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 4, %121
  %123 = call noalias ptr @malloc(i64 noundef %122) #5
  %124 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 9
  store ptr %123, ptr %124, align 8
  %125 = load ptr, ptr %45, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %23
  %128 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 4
  %129 = load ptr, ptr %128, align 8
  store ptr %129, ptr %45, align 8
  br label %130

130:                                              ; preds = %127, %23
  %131 = load i32, ptr %28, align 4
  %132 = add nsw i32 %131, 16
  %133 = sub nsw i32 %132, 1
  %134 = sdiv i32 %133, 16
  %135 = getelementptr inbounds %struct.dim3, ptr %50, i32 0, i32 0
  store i32 %134, ptr %135, align 4
  %136 = load i32, ptr %29, align 4
  %137 = add nsw i32 %136, 16
  %138 = sub nsw i32 %137, 1
  %139 = sdiv i32 %138, 16
  %140 = getelementptr inbounds %struct.dim3, ptr %50, i32 0, i32 1
  store i32 %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.dim3, ptr %50, i32 0, i32 2
  store i32 1, ptr %141, align 4
  %142 = load i32, ptr %28, align 4
  %143 = load i32, ptr %29, align 4
  %144 = mul nsw i32 %142, %143
  store i32 %144, ptr %52, align 4
  %145 = load i32, ptr %52, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 4, %146
  %148 = call noalias ptr @malloc(i64 noundef %147) #5
  %149 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 2
  store ptr %148, ptr %149, align 8
  %150 = load i32, ptr %52, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 4, %151
  %153 = call noalias ptr @malloc(i64 noundef %152) #5
  %154 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 1
  store ptr %153, ptr %154, align 8
  %155 = getelementptr inbounds %struct.dim3, ptr %50, i32 0, i32 0
  %156 = load i32, ptr %155, align 4
  %157 = zext i32 %156 to i64
  %158 = mul i64 8, %157
  %159 = getelementptr inbounds %struct.dim3, ptr %50, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = zext i32 %160 to i64
  %162 = mul i64 %158, %161
  %163 = call noalias ptr @malloc(i64 noundef %162) #5
  %164 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 0
  store ptr %163, ptr %164, align 8
  %165 = load i32, ptr %24, align 4
  %166 = load i32, ptr %25, align 4
  %167 = load i32, ptr %26, align 4
  %168 = load ptr, ptr %30, align 8
  %169 = load ptr, ptr %34, align 8
  %170 = load float, ptr %35, align 4
  %171 = load ptr, ptr %36, align 8
  %172 = load ptr, ptr %33, align 8
  %173 = load ptr, ptr %31, align 8
  %174 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 3
  %175 = load ptr, ptr %174, align 8
  %176 = load ptr, ptr %37, align 8
  %177 = load ptr, ptr %32, align 8
  %178 = load ptr, ptr %38, align 8
  %179 = load ptr, ptr %39, align 8
  %180 = load ptr, ptr %40, align 8
  %181 = load i32, ptr %28, align 4
  %182 = load i32, ptr %29, align 4
  %183 = load float, ptr %41, align 4
  %184 = load float, ptr %42, align 4
  %185 = load float, ptr %48, align 4
  %186 = load float, ptr %47, align 4
  %187 = load ptr, ptr %45, align 8
  %188 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 5
  %189 = load ptr, ptr %188, align 8
  %190 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 1
  %191 = load ptr, ptr %190, align 8
  %192 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 6
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 8
  %195 = load ptr, ptr %194, align 8
  %196 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 7
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 10
  %199 = load ptr, ptr %198, align 8
  %200 = load i32, ptr %43, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %53, ptr align 4 %50, i64 12, i1 false)
  %201 = load [2 x i64], ptr %53, align 8
  call void @cpu_rasterizer_preprocess(i32 noundef signext %165, i32 noundef signext %166, i32 noundef signext %167, ptr noundef %168, ptr noundef %169, float noundef %170, ptr noundef %171, ptr noundef %172, ptr noundef %173, ptr noundef %175, ptr noundef %176, ptr noundef %177, ptr noundef %178, ptr noundef %179, ptr noundef %180, i32 noundef signext %181, i32 noundef signext %182, float noundef %183, float noundef %184, float noundef %185, float noundef %186, ptr noundef %187, ptr noundef %189, ptr noundef %191, ptr noundef %193, ptr noundef %195, ptr noundef %197, [2 x i64] %201, ptr noundef %199, i32 noundef signext %200)
  store i32 0, ptr %54, align 4
  store i32 0, ptr %55, align 4
  br label %202

202:                                              ; preds = %221, %130
  %203 = load i32, ptr %55, align 4
  %204 = load i32, ptr %24, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %224

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 10
  %208 = load ptr, ptr %207, align 8
  %209 = load i32, ptr %55, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, ptr %208, i64 %210
  %212 = load i32, ptr %211, align 4
  %213 = load i32, ptr %54, align 4
  %214 = add i32 %213, %212
  store i32 %214, ptr %54, align 4
  %215 = load i32, ptr %54, align 4
  %216 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 9
  %217 = load ptr, ptr %216, align 8
  %218 = load i32, ptr %55, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, ptr %217, i64 %219
  store i32 %215, ptr %220, align 4
  br label %221

221:                                              ; preds = %206
  %222 = load i32, ptr %55, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, ptr %55, align 4
  br label %202, !llvm.loop !17

224:                                              ; preds = %202
  %225 = load i32, ptr %54, align 4
  store i32 %225, ptr %56, align 4
  %226 = load i32, ptr %56, align 4
  %227 = sext i32 %226 to i64
  %228 = mul i64 4, %227
  %229 = call noalias ptr @malloc(i64 noundef %228) #5
  store ptr %229, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 4), align 8
  %230 = load i32, ptr %56, align 4
  %231 = sext i32 %230 to i64
  %232 = mul i64 4, %231
  %233 = call noalias ptr @malloc(i64 noundef %232) #5
  store ptr %233, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 3), align 8
  %234 = load i32, ptr %56, align 4
  %235 = sext i32 %234 to i64
  %236 = mul i64 8, %235
  %237 = call noalias ptr @malloc(i64 noundef %236) #5
  store ptr %237, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 2), align 8
  %238 = load i32, ptr %56, align 4
  %239 = sext i32 %238 to i64
  %240 = mul i64 8, %239
  %241 = call noalias ptr @malloc(i64 noundef %240) #5
  store ptr %241, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 1), align 8
  %242 = load i32, ptr %24, align 4
  %243 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 5
  %244 = load ptr, ptr %243, align 8
  %245 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 1
  %246 = load ptr, ptr %245, align 8
  %247 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 9
  %248 = load ptr, ptr %247, align 8
  %249 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 1), align 8
  %250 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 3), align 8
  %251 = load ptr, ptr %45, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %57, ptr align 4 %50, i64 12, i1 false)
  %252 = load [2 x i64], ptr %57, align 8
  call void @cpu_rasterizer_duplicateWithKeys(i32 noundef signext %242, ptr noundef %244, ptr noundef %246, ptr noundef %248, ptr noundef %249, ptr noundef %250, ptr noundef %251, [2 x i64] %252)
  %253 = getelementptr inbounds %struct.dim3, ptr %50, i32 0, i32 0
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr inbounds %struct.dim3, ptr %50, i32 0, i32 1
  %256 = load i32, ptr %255, align 4
  %257 = mul i32 %254, %256
  %258 = call signext i32 @cpu_rasterizer_getHigherMsb(i32 noundef signext %257)
  store i32 %258, ptr %58, align 4
  %259 = load i32, ptr %56, align 4
  %260 = sext i32 %259 to i64
  %261 = mul i64 4, %260
  %262 = call noalias ptr @malloc(i64 noundef %261) #5
  store ptr %262, ptr %59, align 8
  store i32 0, ptr %60, align 4
  br label %263

263:                                              ; preds = %273, %224
  %264 = load i32, ptr %60, align 4
  %265 = load i32, ptr %56, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %276

267:                                              ; preds = %263
  %268 = load i32, ptr %60, align 4
  %269 = load ptr, ptr %59, align 8
  %270 = load i32, ptr %60, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, ptr %269, i64 %271
  store i32 %268, ptr %272, align 4
  br label %273

273:                                              ; preds = %267
  %274 = load i32, ptr %60, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, ptr %60, align 4
  br label %263, !llvm.loop !18

276:                                              ; preds = %263
  %277 = load ptr, ptr %59, align 8
  %278 = load i32, ptr %56, align 4
  %279 = sext i32 %278 to i64
  call void @qsort(ptr noundef %277, i64 noundef %279, i64 noundef 4, ptr noundef @cpu_rasterizer_compare_keys)
  store i32 0, ptr %61, align 4
  br label %280

280:                                              ; preds = %308, %276
  %281 = load i32, ptr %61, align 4
  %282 = load i32, ptr %56, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %311

284:                                              ; preds = %280
  %285 = load ptr, ptr %59, align 8
  %286 = load i32, ptr %61, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, ptr %285, i64 %287
  %289 = load i32, ptr %288, align 4
  store i32 %289, ptr %62, align 4
  %290 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 1), align 8
  %291 = load i32, ptr %62, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, ptr %290, i64 %292
  %294 = load i64, ptr %293, align 8
  %295 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 2), align 8
  %296 = load i32, ptr %61, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, ptr %295, i64 %297
  store i64 %294, ptr %298, align 8
  %299 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 3), align 8
  %300 = load i32, ptr %62, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, ptr %299, i64 %301
  %303 = load i32, ptr %302, align 4
  %304 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 4), align 8
  %305 = load i32, ptr %61, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, ptr %304, i64 %306
  store i32 %303, ptr %307, align 4
  br label %308

308:                                              ; preds = %284
  %309 = load i32, ptr %61, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, ptr %61, align 4
  br label %280, !llvm.loop !19

311:                                              ; preds = %280
  %312 = load ptr, ptr %59, align 8
  call void @free(ptr noundef %312) #6
  %313 = getelementptr inbounds %struct.dim3, ptr %50, i32 0, i32 0
  %314 = load i32, ptr %313, align 4
  %315 = getelementptr inbounds %struct.dim3, ptr %50, i32 0, i32 1
  %316 = load i32, ptr %315, align 4
  %317 = mul i32 %314, %316
  store i32 %317, ptr %63, align 4
  store i32 0, ptr %64, align 4
  br label %318

318:                                              ; preds = %335, %311
  %319 = load i32, ptr %64, align 4
  %320 = load i32, ptr %63, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %338

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 0
  %324 = load ptr, ptr %323, align 8
  %325 = load i32, ptr %64, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.uint2, ptr %324, i64 %326
  %328 = getelementptr inbounds %struct.uint2, ptr %327, i32 0, i32 0
  store i32 0, ptr %328, align 4
  %329 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 0
  %330 = load ptr, ptr %329, align 8
  %331 = load i32, ptr %64, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.uint2, ptr %330, i64 %332
  %334 = getelementptr inbounds %struct.uint2, ptr %333, i32 0, i32 1
  store i32 0, ptr %334, align 4
  br label %335

335:                                              ; preds = %322
  %336 = load i32, ptr %64, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, ptr %64, align 4
  br label %318, !llvm.loop !20

338:                                              ; preds = %318
  %339 = load i32, ptr %56, align 4
  %340 = icmp sgt i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %338
  %342 = load i32, ptr %56, align 4
  %343 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 2), align 8
  %344 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 0
  %345 = load ptr, ptr %344, align 8
  call void @cpu_rasterizer_identifyTileRanges(i32 noundef signext %342, ptr noundef %343, ptr noundef %345)
  br label %346

346:                                              ; preds = %341, %338
  %347 = load ptr, ptr %32, align 8
  %348 = icmp ne ptr %347, null
  br i1 %348, label %349, label %351

349:                                              ; preds = %346
  %350 = load ptr, ptr %32, align 8
  br label %354

351:                                              ; preds = %346
  %352 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 8
  %353 = load ptr, ptr %352, align 8
  br label %354

354:                                              ; preds = %351, %349
  %355 = phi ptr [ %350, %349 ], [ %353, %351 ]
  store ptr %355, ptr %65, align 8
  %356 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 0
  %357 = load ptr, ptr %356, align 8
  %358 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 4), align 8
  %359 = load i32, ptr %28, align 4
  %360 = load i32, ptr %29, align 4
  %361 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 5
  %362 = load ptr, ptr %361, align 8
  %363 = load ptr, ptr %65, align 8
  %364 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 7
  %365 = load ptr, ptr %364, align 8
  %366 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 2
  %367 = load ptr, ptr %366, align 8
  %368 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 1
  %369 = load ptr, ptr %368, align 8
  %370 = load ptr, ptr %27, align 8
  %371 = load ptr, ptr %44, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %66, ptr align 4 %50, i64 12, i1 false)
  %372 = load [2 x i64], ptr %66, align 8
  call void @cpu_rasterizer_render([2 x i64] %372, ptr noundef %357, ptr noundef %358, i32 noundef signext %359, i32 noundef signext %360, ptr noundef %362, ptr noundef %363, ptr noundef %365, ptr noundef %367, ptr noundef %369, ptr noundef %370, ptr noundef %371)
  %373 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 1
  %374 = load ptr, ptr %373, align 8
  call void @free(ptr noundef %374) #6
  %375 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 3
  %376 = load ptr, ptr %375, align 8
  call void @free(ptr noundef %376) #6
  %377 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 4
  %378 = load ptr, ptr %377, align 8
  call void @free(ptr noundef %378) #6
  %379 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 5
  %380 = load ptr, ptr %379, align 8
  call void @free(ptr noundef %380) #6
  %381 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 6
  %382 = load ptr, ptr %381, align 8
  call void @free(ptr noundef %382) #6
  %383 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 7
  %384 = load ptr, ptr %383, align 8
  call void @free(ptr noundef %384) #6
  %385 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 8
  %386 = load ptr, ptr %385, align 8
  call void @free(ptr noundef %386) #6
  %387 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 10
  %388 = load ptr, ptr %387, align 8
  call void @free(ptr noundef %388) #6
  %389 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 9
  %390 = load ptr, ptr %389, align 8
  call void @free(ptr noundef %390) #6
  %391 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 2
  %392 = load ptr, ptr %391, align 8
  call void @free(ptr noundef %392) #6
  %393 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 1
  %394 = load ptr, ptr %393, align 8
  call void @free(ptr noundef %394) #6
  %395 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 0
  %396 = load ptr, ptr %395, align 8
  call void @free(ptr noundef %396) #6
  %397 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 4), align 8
  call void @free(ptr noundef %397) #6
  %398 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 3), align 8
  call void @free(ptr noundef %398) #6
  %399 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 2), align 8
  call void @free(ptr noundef %399) #6
  %400 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 1), align 8
  call void @free(ptr noundef %400) #6
  %401 = load i32, ptr %56, align 4
  ret i32 %401
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare void @cpu_rasterizer_preprocess(i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, [2 x i64], ptr noundef, i32 noundef signext) #1

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare void @cpu_rasterizer_render([2 x i64], ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zicsr,-e,-experimental-zacas,-experimental-zcmop,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-zimop,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-smaia,-smepmp,-ssaia,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zicsr,-e,-experimental-zacas,-experimental-zcmop,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-zimop,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-smaia,-smepmp,-ssaia,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zicsr,-e,-experimental-zacas,-experimental-zcmop,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-zimop,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-smaia,-smepmp,-ssaia,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zicsr,-e,-experimental-zacas,-experimental-zcmop,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-zimop,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-smaia,-smepmp,-ssaia,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
