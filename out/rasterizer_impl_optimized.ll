; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "S128-e-p0:64:64:64:64-i64:64-i128:128-i1:8-i16:16-i8:8-i32:32-f64:64-f16:16-f128:128"

%struct.BinningState = type { i64, ptr, ptr, ptr, ptr, ptr }
%struct.float3 = type { float, float, float }
%struct.dim3 = type { i32, i32, i32 }
%struct.uint2 = type { i32, i32 }
%struct.float2 = type { float, float }
%struct.GeometryState = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ImageState = type { ptr, ptr, ptr }

@binningState = dso_local global %struct.BinningState zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define signext i32 @cpu_rasterizer_getHigherMsb(i32 noundef signext %0) #0 {
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

24:                                               ; preds = %16, %20
  br label %6, !llvm.loop !1

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
define void @cpu_rasterizer_checkFrustum(i32 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
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
  %22 = call i32 @cpu_rasterizer_in_frustum(i32 %18, ptr %19, ptr %20, ptr %21, i32 0, ptr %12)
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
  br label %13, !llvm.loop !1

30:                                               ; preds = %13
  ret void
}

declare signext i32 @cpu_rasterizer_in_frustum(i32 noundef signext, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @cpu_rasterizer_duplicateWithKeys(i32 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, [2 x i64] %7) #0 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr %9, ptr %10, i64 12, i1 false)
  store i32 %0, ptr %11, align 4
  store ptr %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store ptr %6, ptr %17, align 8
  store i32 0, ptr %18, align 4
  br label %27

27:                                               ; preds = %117, %8
  %28 = load i32, ptr %18, align 4
  %29 = load i32, ptr %11, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %120

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8
  %33 = load i32, ptr %18, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %116

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

49:                                               ; preds = %41, %42
  %50 = phi i32 [ %48, %42 ], [ 0, %41 ]
  store i32 %50, ptr %19, align 4
  %51 = load ptr, ptr %12, align 8
  %52 = load i32, ptr %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.float2, ptr %51, i64 %53
  %55 = load ptr, ptr %17, align 8
  %56 = getelementptr inbounds i32, ptr %55, i64 %53
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds { float, float }, ptr %54, i32 0, i32 0
  %59 = load float, ptr %58, align 4
  %60 = getelementptr inbounds { float, float }, ptr %54, i32 0, i32 1
  %61 = load float, ptr %60, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr %22, ptr %9, i64 12, i1 false)
  %62 = load [2 x i64], ptr %22, align 8
  call void @cpu_rasterizer_getRect(float %59, float %61, i32 %57, ptr %20, ptr %21, [2 x i64] %62)
  %63 = getelementptr inbounds %struct.uint2, ptr %20, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %23, align 4
  br label %65

65:                                               ; preds = %112, %49
  %66 = load i32, ptr %23, align 4
  %67 = getelementptr inbounds %struct.uint2, ptr %21, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %70, label %115

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.uint2, ptr %20, i32 0, i32 0
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr %24, align 4
  br label %73

73:                                               ; preds = %108, %70
  %74 = load i32, ptr %24, align 4
  %75 = getelementptr inbounds %struct.uint2, ptr %21, i32 0, i32 0
  %76 = load i32, ptr %75, align 4
  %77 = icmp ult i32 %74, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %73
  %79 = load i32, ptr %23, align 4
  %80 = getelementptr inbounds %struct.dim3, ptr %9, i32 0, i32 0
  %81 = load i32, ptr %80, align 4
  %82 = mul i32 %79, %81
  %83 = load i32, ptr %24, align 4
  %84 = add i32 %82, %83
  %85 = zext i32 %84 to i64
  store i64 %85, ptr %25, align 8
  %86 = load i64, ptr %25, align 8
  %87 = shl i64 %86, 32
  store i64 %87, ptr %25, align 8
  %88 = load ptr, ptr %13, align 8
  %89 = load i32, ptr %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, ptr %88, i64 %90
  call void @llvm.memcpy.p0.p0.i64(ptr %26, ptr %91, i64 4, i1 false)
  %92 = load i32, ptr %26, align 4
  %93 = zext i32 %92 to i64
  %94 = load i64, ptr %25, align 8
  %95 = or i64 %94, %93
  store i64 %95, ptr %25, align 8
  %96 = load i64, ptr %25, align 8
  %97 = load ptr, ptr %15, align 8
  %98 = load i32, ptr %19, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, ptr %97, i64 %99
  store i64 %96, ptr %100, align 8
  %101 = load i32, ptr %18, align 4
  %102 = load ptr, ptr %16, align 8
  %103 = load i32, ptr %19, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, ptr %102, i64 %104
  store i32 %101, ptr %105, align 4
  %106 = load i32, ptr %19, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %19, align 4
  br label %108

108:                                              ; preds = %78
  %109 = load i32, ptr %24, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %24, align 4
  br label %73, !llvm.loop !1

111:                                              ; preds = %73
  br label %112

112:                                              ; preds = %111
  %113 = load i32, ptr %23, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %23, align 4
  br label %65, !llvm.loop !1

115:                                              ; preds = %65
  br label %116

116:                                              ; preds = %115, %31
  br label %117

117:                                              ; preds = %116
  %118 = load i32, ptr %18, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr %18, align 4
  br label %27, !llvm.loop !1

120:                                              ; preds = %27
  ret void
}

declare void @cpu_rasterizer_getRect(float, float, i32 noundef signext, ptr noundef, ptr noundef, [2 x i64]) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @cpu_rasterizer_identifyTileRanges(i32 noundef signext %0, ptr noundef %1, ptr noundef %2) #0 {
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

58:                                               ; preds = %26, %57
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
  br label %11, !llvm.loop !1

74:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @cpu_rasterizer_markVisible(i32 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
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
  call void @cpu_rasterizer_checkFrustum(i32 %11, ptr %12, ptr %13, ptr %14, ptr %15)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define signext i32 @cpu_rasterizer_compare_keys(ptr noundef %0, ptr noundef %1) #0 {
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
  br i1 %26, label %27, label %29

27:                                               ; preds = %35, %29, %2
  %28 = phi i32 [ %36, %35 ], [ 1, %29 ], [ -1, %2 ]
  store i32 %28, ptr %3, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load i64, ptr %8, align 8
  %31 = load i64, ptr %9, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %27, label %35

33:                                               ; preds = %27
  %34 = load i32, ptr %3, align 4
  ret i32 %34

35:                                               ; preds = %29
  %36 = phi i32 [ 0, %29 ]
  br label %27
}

; Function Attrs: noinline nounwind optnone uwtable
define signext i32 @cpu_rasterizer_forward(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, ptr noundef %3, i32 noundef signext %4, i32 noundef signext %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, float noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, float noundef %17, float noundef %18, i32 noundef signext %19, ptr noundef %20, ptr noundef %21, i32 noundef signext %22) #0 {
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
  %79 = mul i64 %78, 4
  %80 = call ptr @malloc(i64 %79)
  %81 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 1
  store ptr %80, ptr %81, align 8
  %82 = load i32, ptr %24, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = mul i64 %84, 3
  %86 = call ptr @malloc(i64 %85)
  %87 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 3
  store ptr %86, ptr %87, align 8
  %88 = load i32, ptr %24, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = call ptr @malloc(i64 %90)
  %92 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 4
  store ptr %91, ptr %92, align 8
  %93 = load i32, ptr %24, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = call ptr @malloc(i64 %95)
  %97 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 5
  store ptr %96, ptr %97, align 8
  %98 = load i32, ptr %24, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = mul i64 %100, 6
  %102 = call ptr @malloc(i64 %101)
  %103 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 6
  store ptr %102, ptr %103, align 8
  %104 = load i32, ptr %24, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 16
  %107 = call ptr @malloc(i64 %106)
  %108 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 7
  store ptr %107, ptr %108, align 8
  %109 = load i32, ptr %24, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = mul i64 %111, 3
  %113 = call ptr @malloc(i64 %112)
  %114 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 8
  store ptr %113, ptr %114, align 8
  %115 = load i32, ptr %24, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = call ptr @malloc(i64 %117)
  %119 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 10
  store ptr %118, ptr %119, align 8
  %120 = load i32, ptr %24, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = call ptr @malloc(i64 %122)
  %124 = getelementptr inbounds %struct.GeometryState, ptr %49, i32 0, i32 9
  store ptr %123, ptr %124, align 8
  %125 = load ptr, ptr %45, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %23
  %128 = load ptr, ptr %92, align 8
  store ptr %128, ptr %45, align 8
  br label %129

129:                                              ; preds = %127, %23
  %130 = load i32, ptr %28, align 4
  %131 = add nsw i32 %130, 16
  %132 = sub nsw i32 %131, 1
  %133 = sdiv i32 %132, 16
  %134 = getelementptr inbounds %struct.dim3, ptr %50, i32 0, i32 0
  store i32 %133, ptr %134, align 4
  %135 = load i32, ptr %29, align 4
  %136 = add nsw i32 %135, 16
  %137 = sub nsw i32 %136, 1
  %138 = sdiv i32 %137, 16
  %139 = getelementptr inbounds %struct.dim3, ptr %50, i32 0, i32 1
  store i32 %138, ptr %139, align 4
  %140 = getelementptr inbounds %struct.dim3, ptr %50, i32 0, i32 2
  store i32 1, ptr %140, align 4
  %141 = load i32, ptr %28, align 4
  %142 = load i32, ptr %29, align 4
  %143 = mul nsw i32 %141, %142
  store i32 %143, ptr %52, align 4
  %144 = load i32, ptr %52, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = call ptr @malloc(i64 %146)
  %148 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 2
  store ptr %147, ptr %148, align 8
  %149 = load i32, ptr %52, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 4
  %152 = call ptr @malloc(i64 %151)
  %153 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 1
  store ptr %152, ptr %153, align 8
  %154 = load i32, ptr %134, align 4
  %155 = zext i32 %154 to i64
  %156 = mul i64 %155, 8
  %157 = load i32, ptr %139, align 4
  %158 = zext i32 %157 to i64
  %159 = mul i64 %156, %158
  %160 = call ptr @malloc(i64 %159)
  %161 = getelementptr inbounds %struct.ImageState, ptr %51, i32 0, i32 0
  store ptr %160, ptr %161, align 8
  %162 = load i32, ptr %24, align 4
  %163 = load i32, ptr %25, align 4
  %164 = load i32, ptr %26, align 4
  %165 = load ptr, ptr %30, align 8
  %166 = load ptr, ptr %34, align 8
  %167 = load float, ptr %35, align 4
  %168 = load ptr, ptr %36, align 8
  %169 = load ptr, ptr %33, align 8
  %170 = load ptr, ptr %31, align 8
  %171 = load ptr, ptr %87, align 8
  %172 = load ptr, ptr %37, align 8
  %173 = load ptr, ptr %32, align 8
  %174 = load ptr, ptr %38, align 8
  %175 = load ptr, ptr %39, align 8
  %176 = load ptr, ptr %40, align 8
  %177 = load i32, ptr %28, align 4
  %178 = load i32, ptr %29, align 4
  %179 = load float, ptr %41, align 4
  %180 = load float, ptr %42, align 4
  %181 = load float, ptr %48, align 4
  %182 = load float, ptr %47, align 4
  %183 = load ptr, ptr %45, align 8
  %184 = load ptr, ptr %97, align 8
  %185 = load ptr, ptr %81, align 8
  %186 = load ptr, ptr %103, align 8
  %187 = load ptr, ptr %114, align 8
  %188 = load ptr, ptr %108, align 8
  %189 = load ptr, ptr %119, align 8
  %190 = load i32, ptr %43, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr %53, ptr %50, i64 12, i1 false)
  %191 = load [2 x i64], ptr %53, align 8
  call void @cpu_rasterizer_preprocess(i32 %162, i32 %163, i32 %164, ptr %165, ptr %166, float %167, ptr %168, ptr %169, ptr %170, ptr %171, ptr %172, ptr %173, ptr %174, ptr %175, ptr %176, i32 %177, i32 %178, float %179, float %180, float %181, float %182, ptr %183, ptr %184, ptr %185, ptr %186, ptr %187, ptr %188, [2 x i64] %191, ptr %189, i32 %190)
  store i32 0, ptr %54, align 4
  store i32 0, ptr %55, align 4
  br label %192

192:                                              ; preds = %209, %129
  %193 = load i32, ptr %55, align 4
  %194 = load i32, ptr %24, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %212

196:                                              ; preds = %192
  %197 = load ptr, ptr %119, align 8
  %198 = load i32, ptr %55, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, ptr %197, i64 %199
  %201 = load i32, ptr %200, align 4
  %202 = load i32, ptr %54, align 4
  %203 = add i32 %202, %201
  store i32 %203, ptr %54, align 4
  %204 = load i32, ptr %54, align 4
  %205 = load ptr, ptr %124, align 8
  %206 = load i32, ptr %55, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, ptr %205, i64 %207
  store i32 %204, ptr %208, align 4
  br label %209

209:                                              ; preds = %196
  %210 = load i32, ptr %55, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr %55, align 4
  br label %192, !llvm.loop !1

212:                                              ; preds = %192
  %213 = load i32, ptr %54, align 4
  store i32 %213, ptr %56, align 4
  %214 = load i32, ptr %56, align 4
  %215 = sext i32 %214 to i64
  %216 = mul i64 %215, 4
  %217 = call ptr @malloc(i64 %216)
  store ptr %217, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 4), align 8
  %218 = load i32, ptr %56, align 4
  %219 = sext i32 %218 to i64
  %220 = mul i64 %219, 4
  %221 = call ptr @malloc(i64 %220)
  store ptr %221, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 3), align 8
  %222 = load i32, ptr %56, align 4
  %223 = sext i32 %222 to i64
  %224 = mul i64 %223, 8
  %225 = call ptr @malloc(i64 %224)
  store ptr %225, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 2), align 8
  %226 = load i32, ptr %56, align 4
  %227 = sext i32 %226 to i64
  %228 = mul i64 %227, 8
  %229 = call ptr @malloc(i64 %228)
  store ptr %229, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 1), align 8
  %230 = load i32, ptr %24, align 4
  %231 = load ptr, ptr %97, align 8
  %232 = load ptr, ptr %81, align 8
  %233 = load ptr, ptr %124, align 8
  %234 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 1), align 8
  %235 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 3), align 8
  %236 = load ptr, ptr %45, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %57, ptr %50, i64 12, i1 false)
  %237 = load [2 x i64], ptr %57, align 8
  call void @cpu_rasterizer_duplicateWithKeys(i32 %230, ptr %231, ptr %232, ptr %233, ptr %234, ptr %235, ptr %236, [2 x i64] %237)
  %238 = load i32, ptr %134, align 4
  %239 = load i32, ptr %139, align 4
  %240 = mul i32 %238, %239
  %241 = call i32 @cpu_rasterizer_getHigherMsb(i32 %240)
  store i32 %241, ptr %58, align 4
  %242 = load i32, ptr %56, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 %243, 4
  %245 = call ptr @malloc(i64 %244)
  store ptr %245, ptr %59, align 8
  store i32 0, ptr %60, align 4
  br label %246

246:                                              ; preds = %255, %212
  %247 = load i32, ptr %60, align 4
  %248 = load i32, ptr %56, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %246
  %251 = load i32, ptr %60, align 4
  %252 = load ptr, ptr %59, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, ptr %252, i64 %253
  store i32 %251, ptr %254, align 4
  br label %255

255:                                              ; preds = %250
  %256 = load i32, ptr %60, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, ptr %60, align 4
  br label %246, !llvm.loop !1

258:                                              ; preds = %246
  %259 = load ptr, ptr %59, align 8
  %260 = load i32, ptr %56, align 4
  %261 = sext i32 %260 to i64
  call void @qsort(ptr %259, i64 %261, i64 4, ptr @cpu_rasterizer_compare_keys)
  store i32 0, ptr %61, align 4
  br label %262

262:                                              ; preds = %290, %258
  %263 = load i32, ptr %61, align 4
  %264 = load i32, ptr %56, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %293

266:                                              ; preds = %262
  %267 = load ptr, ptr %59, align 8
  %268 = load i32, ptr %61, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, ptr %267, i64 %269
  %271 = load i32, ptr %270, align 4
  store i32 %271, ptr %62, align 4
  %272 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 1), align 8
  %273 = load i32, ptr %62, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i64, ptr %272, i64 %274
  %276 = load i64, ptr %275, align 8
  %277 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 2), align 8
  %278 = load i32, ptr %61, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, ptr %277, i64 %279
  store i64 %276, ptr %280, align 8
  %281 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 3), align 8
  %282 = load i32, ptr %62, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, ptr %281, i64 %283
  %285 = load i32, ptr %284, align 4
  %286 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 4), align 8
  %287 = load i32, ptr %61, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, ptr %286, i64 %288
  store i32 %285, ptr %289, align 4
  br label %290

290:                                              ; preds = %266
  %291 = load i32, ptr %61, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, ptr %61, align 4
  br label %262, !llvm.loop !1

293:                                              ; preds = %262
  %294 = load ptr, ptr %59, align 8
  call void @free(ptr %294)
  %295 = load i32, ptr %134, align 4
  %296 = load i32, ptr %139, align 4
  %297 = mul i32 %295, %296
  store i32 %297, ptr %63, align 4
  store i32 0, ptr %64, align 4
  br label %298

298:                                              ; preds = %313, %293
  %299 = load i32, ptr %64, align 4
  %300 = load i32, ptr %63, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %316

302:                                              ; preds = %298
  %303 = load ptr, ptr %161, align 8
  %304 = load i32, ptr %64, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.uint2, ptr %303, i64 %305
  %307 = getelementptr inbounds %struct.uint2, ptr %306, i32 0, i32 0
  store i32 0, ptr %307, align 4
  %308 = load ptr, ptr %161, align 8
  %309 = load i32, ptr %64, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.uint2, ptr %308, i64 %310
  %312 = getelementptr inbounds %struct.uint2, ptr %311, i32 0, i32 1
  store i32 0, ptr %312, align 4
  br label %313

313:                                              ; preds = %302
  %314 = load i32, ptr %64, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, ptr %64, align 4
  br label %298, !llvm.loop !1

316:                                              ; preds = %298
  %317 = load i32, ptr %56, align 4
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %316
  %320 = load i32, ptr %56, align 4
  %321 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 2), align 8
  %322 = load ptr, ptr %161, align 8
  call void @cpu_rasterizer_identifyTileRanges(i32 %320, ptr %321, ptr %322)
  br label %323

323:                                              ; preds = %319, %316
  %324 = load ptr, ptr %32, align 8
  %325 = icmp ne ptr %324, null
  br i1 %325, label %326, label %328

326:                                              ; preds = %323
  %327 = load ptr, ptr %32, align 8
  br label %330

328:                                              ; preds = %323
  %329 = load ptr, ptr %114, align 8
  br label %330

330:                                              ; preds = %326, %328
  %331 = phi ptr [ %329, %328 ], [ %327, %326 ]
  store ptr %331, ptr %65, align 8
  %332 = load ptr, ptr %161, align 8
  %333 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 4), align 8
  %334 = load i32, ptr %28, align 4
  %335 = load i32, ptr %29, align 4
  %336 = load ptr, ptr %97, align 8
  %337 = load ptr, ptr %65, align 8
  %338 = load ptr, ptr %108, align 8
  %339 = load ptr, ptr %148, align 8
  %340 = load ptr, ptr %153, align 8
  %341 = load ptr, ptr %27, align 8
  %342 = load ptr, ptr %44, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %66, ptr %50, i64 12, i1 false)
  %343 = load [2 x i64], ptr %66, align 8
  call void @cpu_rasterizer_render([2 x i64] %343, ptr %332, ptr %333, i32 %334, i32 %335, ptr %336, ptr %337, ptr %338, ptr %339, ptr %340, ptr %341, ptr %342)
  %344 = load ptr, ptr %81, align 8
  call void @free(ptr %344)
  %345 = load ptr, ptr %87, align 8
  call void @free(ptr %345)
  %346 = load ptr, ptr %92, align 8
  call void @free(ptr %346)
  %347 = load ptr, ptr %97, align 8
  call void @free(ptr %347)
  %348 = load ptr, ptr %103, align 8
  call void @free(ptr %348)
  %349 = load ptr, ptr %108, align 8
  call void @free(ptr %349)
  %350 = load ptr, ptr %114, align 8
  call void @free(ptr %350)
  %351 = load ptr, ptr %119, align 8
  call void @free(ptr %351)
  %352 = load ptr, ptr %124, align 8
  call void @free(ptr %352)
  %353 = load ptr, ptr %148, align 8
  call void @free(ptr %353)
  %354 = load ptr, ptr %153, align 8
  call void @free(ptr %354)
  %355 = load ptr, ptr %161, align 8
  call void @free(ptr %355)
  %356 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 4), align 8
  call void @free(ptr %356)
  %357 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 3), align 8
  call void @free(ptr %357)
  %358 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 2), align 8
  call void @free(ptr %358)
  %359 = load ptr, ptr getelementptr inbounds (%struct.BinningState, ptr @binningState, i32 0, i32 1), align 8
  call void @free(ptr %359)
  %360 = load i32, ptr %56, align 4
  ret i32 %360
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

declare void @cpu_rasterizer_preprocess(i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, [2 x i64], ptr noundef, i32 noundef signext) #1

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

declare void @cpu_rasterizer_render([2 x i64], ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zicsr,-e,-experimental-zacas,-experimental-zcmop,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-zimop,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-smaia,-smepmp,-ssaia,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.mustprogress"}
