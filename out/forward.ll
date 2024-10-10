; ModuleID = '/root/project/diff-gaussian-rasterization/cpu_rasterizer/forward.c'
source_filename = "/root/project/diff-gaussian-rasterization/cpu_rasterizer/forward.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-linux-gnu"

%struct.float3 = type { float, float, float }
%struct.dim3 = type { i32, i32, i32 }
%struct.float4 = type { float, float, float, float }
%struct.float2 = type { float, float }
%struct.uint2 = type { i32, i32 }

@SH_C0 = dso_local constant float 0x3FD20DD760000000, align 4
@SH_C1 = dso_local constant float 0x3FDF454380000000, align 4
@SH_C2 = dso_local constant [5 x float] [float 0x3FF17B1420000000, float 0xBFF17B1420000000, float 0x3FD42F6020000000, float 0xBFF17B1420000000, float 0x3FE17B1420000000], align 4
@SH_C3 = dso_local constant [7 x float] [float 0xBFE2E1A320000000, float 0x40071FF8E0000000, float 0xBFDD403D00000000, float 0x3FD7E21F00000000, float 0xBFDD403D00000000, float 0x3FF71FF8E0000000, float 0xBFE2E1A320000000], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local [2 x i64] @computeColorFromSH(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, ptr noundef %3, [2 x i64] %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca %struct.float3, align 4
  %9 = alloca %struct.float3, align 4
  %10 = alloca [2 x i64], align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %struct.float3, align 4
  %18 = alloca %struct.float3, align 4
  %19 = alloca [2 x i64], align 8
  %20 = alloca [2 x i64], align 8
  %21 = alloca [2 x i64], align 8
  %22 = alloca float, align 4
  %23 = alloca [2 x i64], align 8
  %24 = alloca %struct.float3, align 4
  %25 = alloca [2 x i64], align 8
  %26 = alloca [2 x i64], align 8
  %27 = alloca ptr, align 8
  %28 = alloca [2 x i64], align 8
  %29 = alloca [2 x i64], align 8
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca %struct.float3, align 4
  %34 = alloca %struct.float3, align 4
  %35 = alloca [2 x i64], align 8
  %36 = alloca [2 x i64], align 8
  %37 = alloca [2 x i64], align 8
  %38 = alloca [2 x i64], align 8
  %39 = alloca [2 x i64], align 8
  %40 = alloca %struct.float3, align 4
  %41 = alloca %struct.float3, align 4
  %42 = alloca [2 x i64], align 8
  %43 = alloca [2 x i64], align 8
  %44 = alloca [2 x i64], align 8
  %45 = alloca [2 x i64], align 8
  %46 = alloca [2 x i64], align 8
  %47 = alloca %struct.float3, align 4
  %48 = alloca %struct.float3, align 4
  %49 = alloca [2 x i64], align 8
  %50 = alloca [2 x i64], align 8
  %51 = alloca [2 x i64], align 8
  %52 = alloca [2 x i64], align 8
  %53 = alloca [2 x i64], align 8
  %54 = alloca float, align 4
  %55 = alloca float, align 4
  %56 = alloca float, align 4
  %57 = alloca float, align 4
  %58 = alloca float, align 4
  %59 = alloca float, align 4
  %60 = alloca %struct.float3, align 4
  %61 = alloca %struct.float3, align 4
  %62 = alloca [2 x i64], align 8
  %63 = alloca [2 x i64], align 8
  %64 = alloca [2 x i64], align 8
  %65 = alloca [2 x i64], align 8
  %66 = alloca [2 x i64], align 8
  %67 = alloca %struct.float3, align 4
  %68 = alloca %struct.float3, align 4
  %69 = alloca [2 x i64], align 8
  %70 = alloca [2 x i64], align 8
  %71 = alloca [2 x i64], align 8
  %72 = alloca [2 x i64], align 8
  %73 = alloca [2 x i64], align 8
  %74 = alloca %struct.float3, align 4
  %75 = alloca %struct.float3, align 4
  %76 = alloca [2 x i64], align 8
  %77 = alloca [2 x i64], align 8
  %78 = alloca [2 x i64], align 8
  %79 = alloca [2 x i64], align 8
  %80 = alloca [2 x i64], align 8
  %81 = alloca %struct.float3, align 4
  %82 = alloca %struct.float3, align 4
  %83 = alloca [2 x i64], align 8
  %84 = alloca [2 x i64], align 8
  %85 = alloca [2 x i64], align 8
  %86 = alloca [2 x i64], align 8
  %87 = alloca [2 x i64], align 8
  %88 = alloca %struct.float3, align 4
  %89 = alloca %struct.float3, align 4
  %90 = alloca [2 x i64], align 8
  %91 = alloca [2 x i64], align 8
  %92 = alloca [2 x i64], align 8
  %93 = alloca [2 x i64], align 8
  %94 = alloca [2 x i64], align 8
  %95 = alloca %struct.float3, align 4
  %96 = alloca %struct.float3, align 4
  %97 = alloca [2 x i64], align 8
  %98 = alloca [2 x i64], align 8
  %99 = alloca [2 x i64], align 8
  %100 = alloca [2 x i64], align 8
  %101 = alloca [2 x i64], align 8
  %102 = alloca %struct.float3, align 4
  %103 = alloca %struct.float3, align 4
  %104 = alloca [2 x i64], align 8
  %105 = alloca [2 x i64], align 8
  %106 = alloca [2 x i64], align 8
  %107 = alloca [2 x i64], align 8
  %108 = alloca [2 x i64], align 8
  %109 = alloca %struct.float3, align 4
  %110 = alloca %struct.float3, align 4
  %111 = alloca [2 x i64], align 8
  %112 = alloca [2 x i64], align 8
  %113 = alloca [2 x i64], align 8
  %114 = alloca [2 x i64], align 8
  %115 = alloca [2 x i64], align 8
  %116 = alloca %struct.float3, align 4
  %117 = alloca %struct.float3, align 4
  %118 = alloca [2 x i64], align 8
  %119 = alloca [2 x i64], align 8
  %120 = alloca [2 x i64], align 8
  %121 = alloca [2 x i64], align 8
  %122 = alloca [2 x i64], align 8
  %123 = alloca %struct.float3, align 4
  %124 = alloca %struct.float3, align 4
  %125 = alloca [2 x i64], align 8
  %126 = alloca [2 x i64], align 8
  %127 = alloca [2 x i64], align 8
  %128 = alloca [2 x i64], align 8
  %129 = alloca [2 x i64], align 8
  %130 = alloca %struct.float3, align 4
  %131 = alloca %struct.float3, align 4
  %132 = alloca [2 x i64], align 8
  %133 = alloca [2 x i64], align 8
  %134 = alloca [2 x i64], align 8
  %135 = alloca [2 x i64], align 8
  %136 = alloca [2 x i64], align 8
  %137 = alloca %struct.float3, align 4
  %138 = alloca %struct.float3, align 4
  %139 = alloca [2 x i64], align 8
  %140 = alloca [2 x i64], align 8
  %141 = alloca [2 x i64], align 8
  %142 = alloca [2 x i64], align 8
  %143 = alloca [2 x i64], align 8
  %144 = alloca %struct.float3, align 4
  %145 = alloca %struct.float3, align 4
  %146 = alloca [2 x i64], align 8
  %147 = alloca [2 x i64], align 8
  %148 = alloca [2 x i64], align 8
  %149 = alloca %struct.float3, align 4
  %150 = alloca [2 x i64], align 8
  %151 = alloca [2 x i64], align 8
  %152 = alloca [2 x i64], align 8
  store [2 x i64] %4, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 8 %10, i64 12, i1 false)
  store i32 %0, ptr %11, align 4
  store i32 %1, ptr %12, align 4
  store i32 %2, ptr %13, align 4
  store ptr %3, ptr %14, align 8
  store ptr %5, ptr %15, align 8
  store ptr %6, ptr %16, align 8
  %153 = load ptr, ptr %14, align 8
  %154 = load i32, ptr %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.float3, ptr %153, i64 %155
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %156, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 4 %17, i64 12, i1 false)
  %157 = load [2 x i64], ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 4 %9, i64 12, i1 false)
  %158 = load [2 x i64], ptr %20, align 8
  %159 = call [2 x i64] @vec3_sub([2 x i64] %157, [2 x i64] %158)
  store [2 x i64] %159, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %18, ptr align 8 %21, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %23, ptr align 4 %18, i64 12, i1 false)
  %160 = load [2 x i64], ptr %23, align 8
  %161 = call float @vec3_length([2 x i64] %160)
  store float %161, ptr %22, align 4
  %162 = load float, ptr %22, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %25, ptr align 4 %18, i64 12, i1 false)
  %163 = load [2 x i64], ptr %25, align 8
  %164 = call [2 x i64] @vec3_div_scalar([2 x i64] %163, float noundef %162)
  store [2 x i64] %164, ptr %26, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 8 %26, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %18, ptr align 4 %24, i64 12, i1 false)
  %165 = load ptr, ptr %15, align 8
  %166 = load i32, ptr %11, align 4
  %167 = load i32, ptr %13, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.float3, ptr %165, i64 %169
  store ptr %170, ptr %27, align 8
  %171 = load ptr, ptr %27, align 8
  %172 = getelementptr inbounds %struct.float3, ptr %171, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr align 4 %172, i64 12, i1 false)
  %173 = load [2 x i64], ptr %28, align 8
  %174 = call [2 x i64] @vec3_mul_scalar([2 x i64] %173, float noundef 0x3FD20DD760000000)
  store [2 x i64] %174, ptr %29, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 8 %29, i64 12, i1 false)
  %175 = load i32, ptr %12, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %401

177:                                              ; preds = %7
  %178 = getelementptr inbounds %struct.float3, ptr %18, i32 0, i32 0
  %179 = load float, ptr %178, align 4
  store float %179, ptr %30, align 4
  %180 = getelementptr inbounds %struct.float3, ptr %18, i32 0, i32 1
  %181 = load float, ptr %180, align 4
  store float %181, ptr %31, align 4
  %182 = getelementptr inbounds %struct.float3, ptr %18, i32 0, i32 2
  %183 = load float, ptr %182, align 4
  store float %183, ptr %32, align 4
  %184 = load ptr, ptr %27, align 8
  %185 = getelementptr inbounds %struct.float3, ptr %184, i64 1
  %186 = load float, ptr %31, align 4
  %187 = fmul float 0x3FDF454380000000, %186
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %35, ptr align 4 %185, i64 12, i1 false)
  %188 = load [2 x i64], ptr %35, align 8
  %189 = call [2 x i64] @vec3_mul_scalar([2 x i64] %188, float noundef %187)
  store [2 x i64] %189, ptr %36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %34, ptr align 8 %36, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr align 4 %8, i64 12, i1 false)
  %190 = load [2 x i64], ptr %37, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %38, ptr align 4 %34, i64 12, i1 false)
  %191 = load [2 x i64], ptr %38, align 8
  %192 = call [2 x i64] @vec3_sub([2 x i64] %190, [2 x i64] %191)
  store [2 x i64] %192, ptr %39, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %33, ptr align 8 %39, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %33, i64 12, i1 false)
  %193 = load ptr, ptr %27, align 8
  %194 = getelementptr inbounds %struct.float3, ptr %193, i64 2
  %195 = load float, ptr %32, align 4
  %196 = fmul float 0x3FDF454380000000, %195
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %42, ptr align 4 %194, i64 12, i1 false)
  %197 = load [2 x i64], ptr %42, align 8
  %198 = call [2 x i64] @vec3_mul_scalar([2 x i64] %197, float noundef %196)
  store [2 x i64] %198, ptr %43, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %41, ptr align 8 %43, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %44, ptr align 4 %8, i64 12, i1 false)
  %199 = load [2 x i64], ptr %44, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %45, ptr align 4 %41, i64 12, i1 false)
  %200 = load [2 x i64], ptr %45, align 8
  %201 = call [2 x i64] @vec3_add([2 x i64] %199, [2 x i64] %200)
  store [2 x i64] %201, ptr %46, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %40, ptr align 8 %46, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %40, i64 12, i1 false)
  %202 = load ptr, ptr %27, align 8
  %203 = getelementptr inbounds %struct.float3, ptr %202, i64 3
  %204 = load float, ptr %30, align 4
  %205 = fmul float 0x3FDF454380000000, %204
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %49, ptr align 4 %203, i64 12, i1 false)
  %206 = load [2 x i64], ptr %49, align 8
  %207 = call [2 x i64] @vec3_mul_scalar([2 x i64] %206, float noundef %205)
  store [2 x i64] %207, ptr %50, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %48, ptr align 8 %50, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %51, ptr align 4 %8, i64 12, i1 false)
  %208 = load [2 x i64], ptr %51, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %52, ptr align 4 %48, i64 12, i1 false)
  %209 = load [2 x i64], ptr %52, align 8
  %210 = call [2 x i64] @vec3_sub([2 x i64] %208, [2 x i64] %209)
  store [2 x i64] %210, ptr %53, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %47, ptr align 8 %53, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %47, i64 12, i1 false)
  %211 = load i32, ptr %12, align 4
  %212 = icmp sgt i32 %211, 1
  br i1 %212, label %213, label %400

213:                                              ; preds = %177
  %214 = load float, ptr %30, align 4
  %215 = load float, ptr %30, align 4
  %216 = fmul float %214, %215
  store float %216, ptr %54, align 4
  %217 = load float, ptr %31, align 4
  %218 = load float, ptr %31, align 4
  %219 = fmul float %217, %218
  store float %219, ptr %55, align 4
  %220 = load float, ptr %32, align 4
  %221 = load float, ptr %32, align 4
  %222 = fmul float %220, %221
  store float %222, ptr %56, align 4
  %223 = load float, ptr %30, align 4
  %224 = load float, ptr %31, align 4
  %225 = fmul float %223, %224
  store float %225, ptr %57, align 4
  %226 = load float, ptr %31, align 4
  %227 = load float, ptr %32, align 4
  %228 = fmul float %226, %227
  store float %228, ptr %58, align 4
  %229 = load float, ptr %30, align 4
  %230 = load float, ptr %32, align 4
  %231 = fmul float %229, %230
  store float %231, ptr %59, align 4
  %232 = load ptr, ptr %27, align 8
  %233 = getelementptr inbounds %struct.float3, ptr %232, i64 4
  %234 = load float, ptr @SH_C2, align 4
  %235 = load float, ptr %57, align 4
  %236 = fmul float %234, %235
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %62, ptr align 4 %233, i64 12, i1 false)
  %237 = load [2 x i64], ptr %62, align 8
  %238 = call [2 x i64] @vec3_mul_scalar([2 x i64] %237, float noundef %236)
  store [2 x i64] %238, ptr %63, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %61, ptr align 8 %63, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %64, ptr align 4 %8, i64 12, i1 false)
  %239 = load [2 x i64], ptr %64, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %65, ptr align 4 %61, i64 12, i1 false)
  %240 = load [2 x i64], ptr %65, align 8
  %241 = call [2 x i64] @vec3_add([2 x i64] %239, [2 x i64] %240)
  store [2 x i64] %241, ptr %66, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %60, ptr align 8 %66, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %60, i64 12, i1 false)
  %242 = load ptr, ptr %27, align 8
  %243 = getelementptr inbounds %struct.float3, ptr %242, i64 5
  %244 = load float, ptr getelementptr inbounds ([5 x float], ptr @SH_C2, i64 0, i64 1), align 4
  %245 = load float, ptr %58, align 4
  %246 = fmul float %244, %245
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %69, ptr align 4 %243, i64 12, i1 false)
  %247 = load [2 x i64], ptr %69, align 8
  %248 = call [2 x i64] @vec3_mul_scalar([2 x i64] %247, float noundef %246)
  store [2 x i64] %248, ptr %70, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %68, ptr align 8 %70, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %71, ptr align 4 %8, i64 12, i1 false)
  %249 = load [2 x i64], ptr %71, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %72, ptr align 4 %68, i64 12, i1 false)
  %250 = load [2 x i64], ptr %72, align 8
  %251 = call [2 x i64] @vec3_add([2 x i64] %249, [2 x i64] %250)
  store [2 x i64] %251, ptr %73, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %67, ptr align 8 %73, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %67, i64 12, i1 false)
  %252 = load ptr, ptr %27, align 8
  %253 = getelementptr inbounds %struct.float3, ptr %252, i64 6
  %254 = load float, ptr getelementptr inbounds ([5 x float], ptr @SH_C2, i64 0, i64 2), align 4
  %255 = load float, ptr %56, align 4
  %256 = load float, ptr %54, align 4
  %257 = fneg float %256
  %258 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %255, float %257)
  %259 = load float, ptr %55, align 4
  %260 = fsub float %258, %259
  %261 = fmul float %254, %260
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %76, ptr align 4 %253, i64 12, i1 false)
  %262 = load [2 x i64], ptr %76, align 8
  %263 = call [2 x i64] @vec3_mul_scalar([2 x i64] %262, float noundef %261)
  store [2 x i64] %263, ptr %77, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %75, ptr align 8 %77, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %78, ptr align 4 %8, i64 12, i1 false)
  %264 = load [2 x i64], ptr %78, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %79, ptr align 4 %75, i64 12, i1 false)
  %265 = load [2 x i64], ptr %79, align 8
  %266 = call [2 x i64] @vec3_add([2 x i64] %264, [2 x i64] %265)
  store [2 x i64] %266, ptr %80, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %74, ptr align 8 %80, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %74, i64 12, i1 false)
  %267 = load ptr, ptr %27, align 8
  %268 = getelementptr inbounds %struct.float3, ptr %267, i64 7
  %269 = load float, ptr getelementptr inbounds ([5 x float], ptr @SH_C2, i64 0, i64 3), align 4
  %270 = load float, ptr %59, align 4
  %271 = fmul float %269, %270
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %83, ptr align 4 %268, i64 12, i1 false)
  %272 = load [2 x i64], ptr %83, align 8
  %273 = call [2 x i64] @vec3_mul_scalar([2 x i64] %272, float noundef %271)
  store [2 x i64] %273, ptr %84, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %82, ptr align 8 %84, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %85, ptr align 4 %8, i64 12, i1 false)
  %274 = load [2 x i64], ptr %85, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %86, ptr align 4 %82, i64 12, i1 false)
  %275 = load [2 x i64], ptr %86, align 8
  %276 = call [2 x i64] @vec3_add([2 x i64] %274, [2 x i64] %275)
  store [2 x i64] %276, ptr %87, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %81, ptr align 8 %87, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %81, i64 12, i1 false)
  %277 = load ptr, ptr %27, align 8
  %278 = getelementptr inbounds %struct.float3, ptr %277, i64 8
  %279 = load float, ptr getelementptr inbounds ([5 x float], ptr @SH_C2, i64 0, i64 4), align 4
  %280 = load float, ptr %54, align 4
  %281 = load float, ptr %55, align 4
  %282 = fsub float %280, %281
  %283 = fmul float %279, %282
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %90, ptr align 4 %278, i64 12, i1 false)
  %284 = load [2 x i64], ptr %90, align 8
  %285 = call [2 x i64] @vec3_mul_scalar([2 x i64] %284, float noundef %283)
  store [2 x i64] %285, ptr %91, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %89, ptr align 8 %91, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %92, ptr align 4 %8, i64 12, i1 false)
  %286 = load [2 x i64], ptr %92, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %93, ptr align 4 %89, i64 12, i1 false)
  %287 = load [2 x i64], ptr %93, align 8
  %288 = call [2 x i64] @vec3_add([2 x i64] %286, [2 x i64] %287)
  store [2 x i64] %288, ptr %94, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %88, ptr align 8 %94, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %88, i64 12, i1 false)
  %289 = load i32, ptr %12, align 4
  %290 = icmp sgt i32 %289, 2
  br i1 %290, label %291, label %399

291:                                              ; preds = %213
  %292 = load ptr, ptr %27, align 8
  %293 = getelementptr inbounds %struct.float3, ptr %292, i64 9
  %294 = load float, ptr @SH_C3, align 4
  %295 = load float, ptr %31, align 4
  %296 = fmul float %294, %295
  %297 = load float, ptr %54, align 4
  %298 = load float, ptr %55, align 4
  %299 = fneg float %298
  %300 = call float @llvm.fmuladd.f32(float 3.000000e+00, float %297, float %299)
  %301 = fmul float %296, %300
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %97, ptr align 4 %293, i64 12, i1 false)
  %302 = load [2 x i64], ptr %97, align 8
  %303 = call [2 x i64] @vec3_mul_scalar([2 x i64] %302, float noundef %301)
  store [2 x i64] %303, ptr %98, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %96, ptr align 8 %98, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %99, ptr align 4 %8, i64 12, i1 false)
  %304 = load [2 x i64], ptr %99, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %100, ptr align 4 %96, i64 12, i1 false)
  %305 = load [2 x i64], ptr %100, align 8
  %306 = call [2 x i64] @vec3_add([2 x i64] %304, [2 x i64] %305)
  store [2 x i64] %306, ptr %101, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %95, ptr align 8 %101, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %95, i64 12, i1 false)
  %307 = load ptr, ptr %27, align 8
  %308 = getelementptr inbounds %struct.float3, ptr %307, i64 10
  %309 = load float, ptr getelementptr inbounds ([7 x float], ptr @SH_C3, i64 0, i64 1), align 4
  %310 = load float, ptr %57, align 4
  %311 = fmul float %309, %310
  %312 = load float, ptr %32, align 4
  %313 = fmul float %311, %312
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %104, ptr align 4 %308, i64 12, i1 false)
  %314 = load [2 x i64], ptr %104, align 8
  %315 = call [2 x i64] @vec3_mul_scalar([2 x i64] %314, float noundef %313)
  store [2 x i64] %315, ptr %105, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %103, ptr align 8 %105, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %106, ptr align 4 %8, i64 12, i1 false)
  %316 = load [2 x i64], ptr %106, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %107, ptr align 4 %103, i64 12, i1 false)
  %317 = load [2 x i64], ptr %107, align 8
  %318 = call [2 x i64] @vec3_add([2 x i64] %316, [2 x i64] %317)
  store [2 x i64] %318, ptr %108, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %102, ptr align 8 %108, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %102, i64 12, i1 false)
  %319 = load ptr, ptr %27, align 8
  %320 = getelementptr inbounds %struct.float3, ptr %319, i64 11
  %321 = load float, ptr getelementptr inbounds ([7 x float], ptr @SH_C3, i64 0, i64 2), align 4
  %322 = load float, ptr %31, align 4
  %323 = fmul float %321, %322
  %324 = load float, ptr %56, align 4
  %325 = load float, ptr %54, align 4
  %326 = fneg float %325
  %327 = call float @llvm.fmuladd.f32(float 4.000000e+00, float %324, float %326)
  %328 = load float, ptr %55, align 4
  %329 = fsub float %327, %328
  %330 = fmul float %323, %329
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %111, ptr align 4 %320, i64 12, i1 false)
  %331 = load [2 x i64], ptr %111, align 8
  %332 = call [2 x i64] @vec3_mul_scalar([2 x i64] %331, float noundef %330)
  store [2 x i64] %332, ptr %112, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %110, ptr align 8 %112, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %113, ptr align 4 %8, i64 12, i1 false)
  %333 = load [2 x i64], ptr %113, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %114, ptr align 4 %110, i64 12, i1 false)
  %334 = load [2 x i64], ptr %114, align 8
  %335 = call [2 x i64] @vec3_add([2 x i64] %333, [2 x i64] %334)
  store [2 x i64] %335, ptr %115, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %109, ptr align 8 %115, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %109, i64 12, i1 false)
  %336 = load ptr, ptr %27, align 8
  %337 = getelementptr inbounds %struct.float3, ptr %336, i64 12
  %338 = load float, ptr getelementptr inbounds ([7 x float], ptr @SH_C3, i64 0, i64 3), align 4
  %339 = load float, ptr %32, align 4
  %340 = fmul float %338, %339
  %341 = load float, ptr %56, align 4
  %342 = load float, ptr %54, align 4
  %343 = fmul float 3.000000e+00, %342
  %344 = fneg float %343
  %345 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %341, float %344)
  %346 = load float, ptr %55, align 4
  %347 = call float @llvm.fmuladd.f32(float -3.000000e+00, float %346, float %345)
  %348 = fmul float %340, %347
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %118, ptr align 4 %337, i64 12, i1 false)
  %349 = load [2 x i64], ptr %118, align 8
  %350 = call [2 x i64] @vec3_mul_scalar([2 x i64] %349, float noundef %348)
  store [2 x i64] %350, ptr %119, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %117, ptr align 8 %119, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %120, ptr align 4 %8, i64 12, i1 false)
  %351 = load [2 x i64], ptr %120, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %121, ptr align 4 %117, i64 12, i1 false)
  %352 = load [2 x i64], ptr %121, align 8
  %353 = call [2 x i64] @vec3_add([2 x i64] %351, [2 x i64] %352)
  store [2 x i64] %353, ptr %122, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %116, ptr align 8 %122, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %116, i64 12, i1 false)
  %354 = load ptr, ptr %27, align 8
  %355 = getelementptr inbounds %struct.float3, ptr %354, i64 13
  %356 = load float, ptr getelementptr inbounds ([7 x float], ptr @SH_C3, i64 0, i64 4), align 4
  %357 = load float, ptr %30, align 4
  %358 = fmul float %356, %357
  %359 = load float, ptr %56, align 4
  %360 = load float, ptr %54, align 4
  %361 = fneg float %360
  %362 = call float @llvm.fmuladd.f32(float 4.000000e+00, float %359, float %361)
  %363 = load float, ptr %55, align 4
  %364 = fsub float %362, %363
  %365 = fmul float %358, %364
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %125, ptr align 4 %355, i64 12, i1 false)
  %366 = load [2 x i64], ptr %125, align 8
  %367 = call [2 x i64] @vec3_mul_scalar([2 x i64] %366, float noundef %365)
  store [2 x i64] %367, ptr %126, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %124, ptr align 8 %126, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %127, ptr align 4 %8, i64 12, i1 false)
  %368 = load [2 x i64], ptr %127, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %128, ptr align 4 %124, i64 12, i1 false)
  %369 = load [2 x i64], ptr %128, align 8
  %370 = call [2 x i64] @vec3_add([2 x i64] %368, [2 x i64] %369)
  store [2 x i64] %370, ptr %129, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %123, ptr align 8 %129, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %123, i64 12, i1 false)
  %371 = load ptr, ptr %27, align 8
  %372 = getelementptr inbounds %struct.float3, ptr %371, i64 14
  %373 = load float, ptr getelementptr inbounds ([7 x float], ptr @SH_C3, i64 0, i64 5), align 4
  %374 = load float, ptr %32, align 4
  %375 = fmul float %373, %374
  %376 = load float, ptr %54, align 4
  %377 = load float, ptr %55, align 4
  %378 = fsub float %376, %377
  %379 = fmul float %375, %378
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %132, ptr align 4 %372, i64 12, i1 false)
  %380 = load [2 x i64], ptr %132, align 8
  %381 = call [2 x i64] @vec3_mul_scalar([2 x i64] %380, float noundef %379)
  store [2 x i64] %381, ptr %133, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %131, ptr align 8 %133, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %134, ptr align 4 %8, i64 12, i1 false)
  %382 = load [2 x i64], ptr %134, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %135, ptr align 4 %131, i64 12, i1 false)
  %383 = load [2 x i64], ptr %135, align 8
  %384 = call [2 x i64] @vec3_add([2 x i64] %382, [2 x i64] %383)
  store [2 x i64] %384, ptr %136, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %130, ptr align 8 %136, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %130, i64 12, i1 false)
  %385 = load ptr, ptr %27, align 8
  %386 = getelementptr inbounds %struct.float3, ptr %385, i64 15
  %387 = load float, ptr getelementptr inbounds ([7 x float], ptr @SH_C3, i64 0, i64 6), align 4
  %388 = load float, ptr %30, align 4
  %389 = fmul float %387, %388
  %390 = load float, ptr %54, align 4
  %391 = load float, ptr %55, align 4
  %392 = call float @llvm.fmuladd.f32(float -3.000000e+00, float %391, float %390)
  %393 = fmul float %389, %392
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %139, ptr align 4 %386, i64 12, i1 false)
  %394 = load [2 x i64], ptr %139, align 8
  %395 = call [2 x i64] @vec3_mul_scalar([2 x i64] %394, float noundef %393)
  store [2 x i64] %395, ptr %140, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %138, ptr align 8 %140, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %141, ptr align 4 %8, i64 12, i1 false)
  %396 = load [2 x i64], ptr %141, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %142, ptr align 4 %138, i64 12, i1 false)
  %397 = load [2 x i64], ptr %142, align 8
  %398 = call [2 x i64] @vec3_add([2 x i64] %396, [2 x i64] %397)
  store [2 x i64] %398, ptr %143, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %137, ptr align 8 %143, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %137, i64 12, i1 false)
  br label %399

399:                                              ; preds = %291, %213
  br label %400

400:                                              ; preds = %399, %177
  br label %401

401:                                              ; preds = %400, %7
  %402 = getelementptr inbounds %struct.float3, ptr %145, i32 0, i32 0
  store float 5.000000e-01, ptr %402, align 4
  %403 = getelementptr inbounds %struct.float3, ptr %145, i32 0, i32 1
  store float 5.000000e-01, ptr %403, align 4
  %404 = getelementptr inbounds %struct.float3, ptr %145, i32 0, i32 2
  store float 5.000000e-01, ptr %404, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %146, ptr align 4 %8, i64 12, i1 false)
  %405 = load [2 x i64], ptr %146, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %147, ptr align 4 %145, i64 12, i1 false)
  %406 = load [2 x i64], ptr %147, align 8
  %407 = call [2 x i64] @vec3_add([2 x i64] %405, [2 x i64] %406)
  store [2 x i64] %407, ptr %148, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %144, ptr align 8 %148, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %144, i64 12, i1 false)
  %408 = getelementptr inbounds %struct.float3, ptr %8, i32 0, i32 0
  %409 = load float, ptr %408, align 4
  %410 = fcmp olt float %409, 0.000000e+00
  %411 = zext i1 %410 to i64
  %412 = select i1 %410, i32 1, i32 0
  %413 = load ptr, ptr %16, align 8
  %414 = load i32, ptr %11, align 4
  %415 = mul nsw i32 3, %414
  %416 = add nsw i32 %415, 0
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, ptr %413, i64 %417
  store i32 %412, ptr %418, align 4
  %419 = getelementptr inbounds %struct.float3, ptr %8, i32 0, i32 1
  %420 = load float, ptr %419, align 4
  %421 = fcmp olt float %420, 0.000000e+00
  %422 = zext i1 %421 to i64
  %423 = select i1 %421, i32 1, i32 0
  %424 = load ptr, ptr %16, align 8
  %425 = load i32, ptr %11, align 4
  %426 = mul nsw i32 3, %425
  %427 = add nsw i32 %426, 1
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, ptr %424, i64 %428
  store i32 %423, ptr %429, align 4
  %430 = getelementptr inbounds %struct.float3, ptr %8, i32 0, i32 2
  %431 = load float, ptr %430, align 4
  %432 = fcmp olt float %431, 0.000000e+00
  %433 = zext i1 %432 to i64
  %434 = select i1 %432, i32 1, i32 0
  %435 = load ptr, ptr %16, align 8
  %436 = load i32, ptr %11, align 4
  %437 = mul nsw i32 3, %436
  %438 = add nsw i32 %437, 2
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, ptr %435, i64 %439
  store i32 %434, ptr %440, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %150, ptr align 4 %8, i64 12, i1 false)
  %441 = load [2 x i64], ptr %150, align 8
  %442 = call [2 x i64] @vec3_max_scalar([2 x i64] %441, float noundef 0.000000e+00)
  store [2 x i64] %442, ptr %151, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %149, ptr align 8 %151, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %149, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %152, ptr align 4 %8, i64 12, i1 false)
  %443 = load [2 x i64], ptr %152, align 8
  ret [2 x i64] %443
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal [2 x i64] @vec3_sub([2 x i64] %0, [2 x i64] %1) #0 {
  %3 = alloca %struct.float3, align 4
  %4 = alloca %struct.float3, align 4
  %5 = alloca [2 x i64], align 8
  %6 = alloca %struct.float3, align 4
  %7 = alloca [2 x i64], align 8
  %8 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 8 %5, i64 12, i1 false)
  store [2 x i64] %1, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 8 %7, i64 12, i1 false)
  %9 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 0
  %10 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds %struct.float3, ptr %6, i32 0, i32 0
  %13 = load float, ptr %12, align 4
  %14 = fsub float %11, %13
  store float %14, ptr %9, align 4
  %15 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 1
  %16 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %17 = load float, ptr %16, align 4
  %18 = getelementptr inbounds %struct.float3, ptr %6, i32 0, i32 1
  %19 = load float, ptr %18, align 4
  %20 = fsub float %17, %19
  store float %20, ptr %15, align 4
  %21 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 2
  %22 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds %struct.float3, ptr %6, i32 0, i32 2
  %25 = load float, ptr %24, align 4
  %26 = fsub float %23, %25
  store float %26, ptr %21, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 4 %3, i64 12, i1 false)
  %27 = load [2 x i64], ptr %8, align 8
  ret [2 x i64] %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal float @vec3_length([2 x i64] %0) #0 {
  %2 = alloca %struct.float3, align 4
  %3 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 8 %3, i64 12, i1 false)
  %4 = getelementptr inbounds %struct.float3, ptr %2, i32 0, i32 0
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds %struct.float3, ptr %2, i32 0, i32 0
  %7 = load float, ptr %6, align 4
  %8 = getelementptr inbounds %struct.float3, ptr %2, i32 0, i32 1
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds %struct.float3, ptr %2, i32 0, i32 1
  %11 = load float, ptr %10, align 4
  %12 = fmul float %9, %11
  %13 = call float @llvm.fmuladd.f32(float %5, float %7, float %12)
  %14 = getelementptr inbounds %struct.float3, ptr %2, i32 0, i32 2
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds %struct.float3, ptr %2, i32 0, i32 2
  %17 = load float, ptr %16, align 4
  %18 = call float @llvm.fmuladd.f32(float %15, float %17, float %13)
  %19 = fpext float %18 to double
  %20 = call double @sqrt(double noundef %19) #6
  %21 = fptrunc double %20 to float
  ret float %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal [2 x i64] @vec3_div_scalar([2 x i64] %0, float noundef %1) #0 {
  %3 = alloca %struct.float3, align 4
  %4 = alloca %struct.float3, align 4
  %5 = alloca [2 x i64], align 8
  %6 = alloca float, align 4
  %7 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 8 %5, i64 12, i1 false)
  store float %1, ptr %6, align 4
  %8 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 0
  %9 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %10 = load float, ptr %9, align 4
  %11 = load float, ptr %6, align 4
  %12 = fdiv float %10, %11
  store float %12, ptr %8, align 4
  %13 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %15 = load float, ptr %14, align 4
  %16 = load float, ptr %6, align 4
  %17 = fdiv float %15, %16
  store float %17, ptr %13, align 4
  %18 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 2
  %19 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %20 = load float, ptr %19, align 4
  %21 = load float, ptr %6, align 4
  %22 = fdiv float %20, %21
  store float %22, ptr %18, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 4 %3, i64 12, i1 false)
  %23 = load [2 x i64], ptr %7, align 8
  ret [2 x i64] %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal [2 x i64] @vec3_mul_scalar([2 x i64] %0, float noundef %1) #0 {
  %3 = alloca %struct.float3, align 4
  %4 = alloca %struct.float3, align 4
  %5 = alloca [2 x i64], align 8
  %6 = alloca float, align 4
  %7 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 8 %5, i64 12, i1 false)
  store float %1, ptr %6, align 4
  %8 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 0
  %9 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %10 = load float, ptr %9, align 4
  %11 = load float, ptr %6, align 4
  %12 = fmul float %10, %11
  store float %12, ptr %8, align 4
  %13 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %15 = load float, ptr %14, align 4
  %16 = load float, ptr %6, align 4
  %17 = fmul float %15, %16
  store float %17, ptr %13, align 4
  %18 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 2
  %19 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %20 = load float, ptr %19, align 4
  %21 = load float, ptr %6, align 4
  %22 = fmul float %20, %21
  store float %22, ptr %18, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 4 %3, i64 12, i1 false)
  %23 = load [2 x i64], ptr %7, align 8
  ret [2 x i64] %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal [2 x i64] @vec3_add([2 x i64] %0, [2 x i64] %1) #0 {
  %3 = alloca %struct.float3, align 4
  %4 = alloca %struct.float3, align 4
  %5 = alloca [2 x i64], align 8
  %6 = alloca %struct.float3, align 4
  %7 = alloca [2 x i64], align 8
  %8 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 8 %5, i64 12, i1 false)
  store [2 x i64] %1, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 8 %7, i64 12, i1 false)
  %9 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 0
  %10 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds %struct.float3, ptr %6, i32 0, i32 0
  %13 = load float, ptr %12, align 4
  %14 = fadd float %11, %13
  store float %14, ptr %9, align 4
  %15 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 1
  %16 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %17 = load float, ptr %16, align 4
  %18 = getelementptr inbounds %struct.float3, ptr %6, i32 0, i32 1
  %19 = load float, ptr %18, align 4
  %20 = fadd float %17, %19
  store float %20, ptr %15, align 4
  %21 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 2
  %22 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds %struct.float3, ptr %6, i32 0, i32 2
  %25 = load float, ptr %24, align 4
  %26 = fadd float %23, %25
  store float %26, ptr %21, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 4 %3, i64 12, i1 false)
  %27 = load [2 x i64], ptr %8, align 8
  ret [2 x i64] %27
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal [2 x i64] @vec3_max_scalar([2 x i64] %0, float noundef %1) #0 {
  %3 = alloca %struct.float3, align 4
  %4 = alloca %struct.float3, align 4
  %5 = alloca [2 x i64], align 8
  %6 = alloca float, align 4
  %7 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 8 %5, i64 12, i1 false)
  store float %1, ptr %6, align 4
  %8 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 0
  %9 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 0
  %10 = load float, ptr %9, align 4
  %11 = fpext float %10 to double
  %12 = load float, ptr %6, align 4
  %13 = fpext float %12 to double
  %14 = call double @llvm.maxnum.f64(double %11, double %13)
  %15 = fptrunc double %14 to float
  store float %15, ptr %8, align 4
  %16 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 1
  %18 = load float, ptr %17, align 4
  %19 = fpext float %18 to double
  %20 = load float, ptr %6, align 4
  %21 = fpext float %20 to double
  %22 = call double @llvm.maxnum.f64(double %19, double %21)
  %23 = fptrunc double %22 to float
  store float %23, ptr %16, align 4
  %24 = getelementptr inbounds %struct.float3, ptr %3, i32 0, i32 2
  %25 = getelementptr inbounds %struct.float3, ptr %4, i32 0, i32 2
  %26 = load float, ptr %25, align 4
  %27 = fpext float %26 to double
  %28 = load float, ptr %6, align 4
  %29 = fpext float %28 to double
  %30 = call double @llvm.maxnum.f64(double %27, double %29)
  %31 = fptrunc double %30 to float
  store float %31, ptr %24, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 4 %3, i64 12, i1 false)
  %32 = load [2 x i64], ptr %7, align 8
  ret [2 x i64] %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preprocessCPU(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, ptr noundef %3, ptr noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef signext %15, i32 noundef signext %16, float noundef %17, float noundef %18, float noundef %19, float noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, [2 x i64] %27, ptr noundef %28, i32 noundef signext %29) #0 {
  %31 = alloca %struct.dim3, align 4
  %32 = alloca [2 x i64], align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca float, align 4
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca ptr, align 8
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca ptr, align 8
  %47 = alloca ptr, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca float, align 4
  %51 = alloca float, align 4
  %52 = alloca float, align 4
  %53 = alloca float, align 4
  %54 = alloca ptr, align 8
  %55 = alloca ptr, align 8
  %56 = alloca ptr, align 8
  %57 = alloca ptr, align 8
  %58 = alloca ptr, align 8
  %59 = alloca ptr, align 8
  %60 = alloca ptr, align 8
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca %struct.float3, align 4
  %64 = alloca %struct.float3, align 4
  %65 = alloca %struct.float4, align 4
  %66 = alloca [2 x i64], align 8
  %67 = alloca float, align 4
  %68 = alloca %struct.float3, align 4
  %69 = alloca ptr, align 8
  %70 = alloca [2 x i64], align 8
  %71 = alloca %struct.float3, align 4
  %72 = alloca [2 x i64], align 8
  %73 = alloca [2 x i64], align 8
  %74 = alloca float, align 4
  %75 = alloca float, align 4
  %76 = alloca %struct.float3, align 4
  %77 = alloca float, align 4
  %78 = alloca float, align 4
  %79 = alloca float, align 4
  %80 = alloca float, align 4
  %81 = alloca float, align 4
  %82 = alloca float, align 4
  %83 = alloca %struct.float2, align 4
  %84 = alloca %struct.uint2, align 4
  %85 = alloca %struct.uint2, align 4
  %86 = alloca [2 x i64], align 8
  %87 = alloca [3 x float], align 4
  %88 = alloca %struct.float3, align 4
  %89 = alloca %struct.float3, align 4
  %90 = alloca [2 x i64], align 8
  %91 = alloca [2 x i64], align 8
  store [2 x i64] %27, ptr %32, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %31, ptr align 8 %32, i64 12, i1 false)
  store i32 %0, ptr %33, align 4
  store i32 %1, ptr %34, align 4
  store i32 %2, ptr %35, align 4
  store ptr %3, ptr %36, align 8
  store ptr %4, ptr %37, align 8
  store float %5, ptr %38, align 4
  store ptr %6, ptr %39, align 8
  store ptr %7, ptr %40, align 8
  store ptr %8, ptr %41, align 8
  store ptr %9, ptr %42, align 8
  store ptr %10, ptr %43, align 8
  store ptr %11, ptr %44, align 8
  store ptr %12, ptr %45, align 8
  store ptr %13, ptr %46, align 8
  store ptr %14, ptr %47, align 8
  store i32 %15, ptr %48, align 4
  store i32 %16, ptr %49, align 4
  store float %17, ptr %50, align 4
  store float %18, ptr %51, align 4
  store float %19, ptr %52, align 4
  store float %20, ptr %53, align 4
  store ptr %21, ptr %54, align 8
  store ptr %22, ptr %55, align 8
  store ptr %23, ptr %56, align 8
  store ptr %24, ptr %57, align 8
  store ptr %25, ptr %58, align 8
  store ptr %26, ptr %59, align 8
  store ptr %28, ptr %60, align 8
  store i32 %29, ptr %61, align 4
  store i32 0, ptr %62, align 4
  br label %92

92:                                               ; preds = %395, %30
  %93 = load i32, ptr %62, align 4
  %94 = load i32, ptr %33, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %398

96:                                               ; preds = %92
  %97 = load ptr, ptr %54, align 8
  %98 = load i32, ptr %62, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %97, i64 %99
  store i32 0, ptr %100, align 4
  %101 = load ptr, ptr %60, align 8
  %102 = load i32, ptr %62, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, ptr %101, i64 %103
  store i32 0, ptr %104, align 4
  %105 = load i32, ptr %62, align 4
  %106 = load ptr, ptr %36, align 8
  %107 = load ptr, ptr %45, align 8
  %108 = load ptr, ptr %46, align 8
  %109 = load i32, ptr %61, align 4
  %110 = call signext i32 @cpu_rasterizer_in_frustum(i32 noundef signext %105, ptr noundef %106, ptr noundef %107, ptr noundef %108, i32 noundef signext %109, ptr noundef %63)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %96
  br label %395

113:                                              ; preds = %96
  %114 = getelementptr inbounds %struct.float3, ptr %64, i32 0, i32 0
  %115 = load ptr, ptr %36, align 8
  %116 = load i32, ptr %62, align 4
  %117 = mul nsw i32 3, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, ptr %115, i64 %118
  %120 = load float, ptr %119, align 4
  store float %120, ptr %114, align 4
  %121 = getelementptr inbounds %struct.float3, ptr %64, i32 0, i32 1
  %122 = load ptr, ptr %36, align 8
  %123 = load i32, ptr %62, align 4
  %124 = mul nsw i32 3, %123
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, ptr %122, i64 %126
  %128 = load float, ptr %127, align 4
  store float %128, ptr %121, align 4
  %129 = getelementptr inbounds %struct.float3, ptr %64, i32 0, i32 2
  %130 = load ptr, ptr %36, align 8
  %131 = load i32, ptr %62, align 4
  %132 = mul nsw i32 3, %131
  %133 = add nsw i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, ptr %130, i64 %134
  %136 = load float, ptr %135, align 4
  store float %136, ptr %129, align 4
  %137 = load ptr, ptr %46, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %66, ptr align 4 %64, i64 12, i1 false)
  %138 = load [2 x i64], ptr %66, align 8
  %139 = call [2 x i64] @cpu_rasterizer_transformPoint4x4([2 x i64] %138, ptr noundef %137)
  store [2 x i64] %139, ptr %65, align 4
  %140 = getelementptr inbounds %struct.float4, ptr %65, i32 0, i32 3
  %141 = load float, ptr %140, align 4
  %142 = fadd float %141, 0x3E7AD7F2A0000000
  %143 = fdiv float 1.000000e+00, %142
  store float %143, ptr %67, align 4
  %144 = getelementptr inbounds %struct.float3, ptr %68, i32 0, i32 0
  %145 = getelementptr inbounds %struct.float4, ptr %65, i32 0, i32 0
  %146 = load float, ptr %145, align 4
  %147 = load float, ptr %67, align 4
  %148 = fmul float %146, %147
  store float %148, ptr %144, align 4
  %149 = getelementptr inbounds %struct.float3, ptr %68, i32 0, i32 1
  %150 = getelementptr inbounds %struct.float4, ptr %65, i32 0, i32 1
  %151 = load float, ptr %150, align 4
  %152 = load float, ptr %67, align 4
  %153 = fmul float %151, %152
  store float %153, ptr %149, align 4
  %154 = getelementptr inbounds %struct.float3, ptr %68, i32 0, i32 2
  %155 = getelementptr inbounds %struct.float4, ptr %65, i32 0, i32 2
  %156 = load float, ptr %155, align 4
  %157 = load float, ptr %67, align 4
  %158 = fmul float %156, %157
  store float %158, ptr %154, align 4
  %159 = load ptr, ptr %43, align 8
  %160 = icmp ne ptr %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %113
  %162 = load ptr, ptr %43, align 8
  %163 = load i32, ptr %62, align 4
  %164 = mul nsw i32 %163, 6
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, ptr %162, i64 %165
  store ptr %166, ptr %69, align 8
  br label %189

167:                                              ; preds = %113
  %168 = load ptr, ptr %37, align 8
  %169 = load i32, ptr %62, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.float3, ptr %168, i64 %170
  %172 = load float, ptr %38, align 4
  %173 = load ptr, ptr %39, align 8
  %174 = load i32, ptr %62, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.float4, ptr %173, i64 %175
  %177 = load ptr, ptr %57, align 8
  %178 = load i32, ptr %62, align 4
  %179 = mul nsw i32 %178, 6
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, ptr %177, i64 %180
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %70, ptr align 4 %171, i64 12, i1 false)
  %182 = load [2 x i64], ptr %70, align 8
  %183 = load [2 x i64], ptr %176, align 4
  call void @computeCov3D([2 x i64] %182, float noundef %172, [2 x i64] %183, ptr noundef %181)
  %184 = load ptr, ptr %57, align 8
  %185 = load i32, ptr %62, align 4
  %186 = mul nsw i32 %185, 6
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, ptr %184, i64 %187
  store ptr %188, ptr %69, align 8
  br label %189

189:                                              ; preds = %167, %161
  %190 = load float, ptr %52, align 4
  %191 = load float, ptr %53, align 4
  %192 = load float, ptr %50, align 4
  %193 = load float, ptr %51, align 4
  %194 = load ptr, ptr %69, align 8
  %195 = load ptr, ptr %45, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %72, ptr align 4 %64, i64 12, i1 false)
  %196 = load [2 x i64], ptr %72, align 8
  %197 = call [2 x i64] @computeCov2D([2 x i64] %196, float noundef %190, float noundef %191, float noundef %192, float noundef %193, ptr noundef %194, ptr noundef %195)
  store [2 x i64] %197, ptr %73, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %71, ptr align 8 %73, i64 12, i1 false)
  %198 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 0
  %199 = load float, ptr %198, align 4
  %200 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 2
  %201 = load float, ptr %200, align 4
  %202 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 1
  %203 = load float, ptr %202, align 4
  %204 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 1
  %205 = load float, ptr %204, align 4
  %206 = fmul float %203, %205
  %207 = fneg float %206
  %208 = call float @llvm.fmuladd.f32(float %199, float %201, float %207)
  store float %208, ptr %74, align 4
  %209 = load float, ptr %74, align 4
  %210 = fcmp oeq float %209, 0.000000e+00
  br i1 %210, label %211, label %212

211:                                              ; preds = %189
  br label %395

212:                                              ; preds = %189
  %213 = load float, ptr %74, align 4
  %214 = fdiv float 1.000000e+00, %213
  store float %214, ptr %75, align 4
  %215 = getelementptr inbounds %struct.float3, ptr %76, i32 0, i32 0
  %216 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 2
  %217 = load float, ptr %216, align 4
  %218 = load float, ptr %75, align 4
  %219 = fmul float %217, %218
  store float %219, ptr %215, align 4
  %220 = getelementptr inbounds %struct.float3, ptr %76, i32 0, i32 1
  %221 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 1
  %222 = load float, ptr %221, align 4
  %223 = fneg float %222
  %224 = load float, ptr %75, align 4
  %225 = fmul float %223, %224
  store float %225, ptr %220, align 4
  %226 = getelementptr inbounds %struct.float3, ptr %76, i32 0, i32 2
  %227 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 0
  %228 = load float, ptr %227, align 4
  %229 = load float, ptr %75, align 4
  %230 = fmul float %228, %229
  store float %230, ptr %226, align 4
  %231 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 0
  %232 = load float, ptr %231, align 4
  %233 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 2
  %234 = load float, ptr %233, align 4
  %235 = fadd float %232, %234
  %236 = fmul float 5.000000e-01, %235
  store float %236, ptr %77, align 4
  %237 = load float, ptr %77, align 4
  %238 = load float, ptr %77, align 4
  %239 = load float, ptr %74, align 4
  %240 = fneg float %239
  %241 = call float @llvm.fmuladd.f32(float %237, float %238, float %240)
  store float %241, ptr %78, align 4
  %242 = load float, ptr %78, align 4
  %243 = fpext float %242 to double
  %244 = call double @llvm.maxnum.f64(double %243, double 0x3FB99999A0000000)
  %245 = fptrunc double %244 to float
  store float %245, ptr %78, align 4
  %246 = load float, ptr %78, align 4
  %247 = fpext float %246 to double
  %248 = call double @sqrt(double noundef %247) #6
  %249 = fptrunc double %248 to float
  store float %249, ptr %79, align 4
  %250 = load float, ptr %77, align 4
  %251 = load float, ptr %79, align 4
  %252 = fadd float %250, %251
  store float %252, ptr %80, align 4
  %253 = load float, ptr %77, align 4
  %254 = load float, ptr %79, align 4
  %255 = fsub float %253, %254
  store float %255, ptr %81, align 4
  %256 = load float, ptr %80, align 4
  %257 = fpext float %256 to double
  %258 = load float, ptr %81, align 4
  %259 = fpext float %258 to double
  %260 = call double @llvm.maxnum.f64(double %257, double %259)
  %261 = call double @sqrt(double noundef %260) #6
  %262 = fmul double 3.000000e+00, %261
  %263 = call double @llvm.ceil.f64(double %262)
  %264 = fptrunc double %263 to float
  store float %264, ptr %82, align 4
  %265 = getelementptr inbounds %struct.float2, ptr %83, i32 0, i32 0
  %266 = getelementptr inbounds %struct.float3, ptr %68, i32 0, i32 0
  %267 = load float, ptr %266, align 4
  %268 = load i32, ptr %48, align 4
  %269 = call float @cpu_rasterizer_ndc2Pix(float noundef %267, i32 noundef signext %268)
  store float %269, ptr %265, align 4
  %270 = getelementptr inbounds %struct.float2, ptr %83, i32 0, i32 1
  %271 = getelementptr inbounds %struct.float3, ptr %68, i32 0, i32 1
  %272 = load float, ptr %271, align 4
  %273 = load i32, ptr %49, align 4
  %274 = call float @cpu_rasterizer_ndc2Pix(float noundef %272, i32 noundef signext %273)
  store float %274, ptr %270, align 4
  %275 = load float, ptr %82, align 4
  %276 = fptosi float %275 to i32
  %277 = getelementptr inbounds { float, float }, ptr %83, i32 0, i32 0
  %278 = load float, ptr %277, align 4
  %279 = getelementptr inbounds { float, float }, ptr %83, i32 0, i32 1
  %280 = load float, ptr %279, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %86, ptr align 4 %31, i64 12, i1 false)
  %281 = load [2 x i64], ptr %86, align 8
  call void @cpu_rasterizer_getRect(float %278, float %280, i32 noundef signext %276, ptr noundef %84, ptr noundef %85, [2 x i64] %281)
  %282 = getelementptr inbounds %struct.uint2, ptr %85, i32 0, i32 0
  %283 = load i32, ptr %282, align 4
  %284 = getelementptr inbounds %struct.uint2, ptr %84, i32 0, i32 0
  %285 = load i32, ptr %284, align 4
  %286 = sub i32 %283, %285
  %287 = getelementptr inbounds %struct.uint2, ptr %85, i32 0, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = getelementptr inbounds %struct.uint2, ptr %84, i32 0, i32 1
  %290 = load i32, ptr %289, align 4
  %291 = sub i32 %288, %290
  %292 = mul i32 %286, %291
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %212
  br label %395

295:                                              ; preds = %212
  %296 = load ptr, ptr %44, align 8
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %332

298:                                              ; preds = %295
  %299 = load ptr, ptr %47, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %88, ptr align 4 %299, i64 12, i1 false)
  %300 = load i32, ptr %62, align 4
  %301 = load i32, ptr %34, align 4
  %302 = load i32, ptr %35, align 4
  %303 = load ptr, ptr %36, align 8
  %304 = load ptr, ptr %41, align 8
  %305 = load ptr, ptr %42, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %90, ptr align 4 %88, i64 12, i1 false)
  %306 = load [2 x i64], ptr %90, align 8
  %307 = call [2 x i64] @computeColorFromSH(i32 noundef signext %300, i32 noundef signext %301, i32 noundef signext %302, ptr noundef %303, [2 x i64] %306, ptr noundef %304, ptr noundef %305)
  store [2 x i64] %307, ptr %91, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %89, ptr align 8 %91, i64 12, i1 false)
  %308 = getelementptr inbounds %struct.float3, ptr %89, i32 0, i32 0
  %309 = load float, ptr %308, align 4
  %310 = load ptr, ptr %58, align 8
  %311 = load i32, ptr %62, align 4
  %312 = mul nsw i32 %311, 3
  %313 = add nsw i32 %312, 0
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, ptr %310, i64 %314
  store float %309, ptr %315, align 4
  %316 = getelementptr inbounds %struct.float3, ptr %89, i32 0, i32 1
  %317 = load float, ptr %316, align 4
  %318 = load ptr, ptr %58, align 8
  %319 = load i32, ptr %62, align 4
  %320 = mul nsw i32 %319, 3
  %321 = add nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, ptr %318, i64 %322
  store float %317, ptr %323, align 4
  %324 = getelementptr inbounds %struct.float3, ptr %89, i32 0, i32 2
  %325 = load float, ptr %324, align 4
  %326 = load ptr, ptr %58, align 8
  %327 = load i32, ptr %62, align 4
  %328 = mul nsw i32 %327, 3
  %329 = add nsw i32 %328, 2
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float, ptr %326, i64 %330
  store float %325, ptr %331, align 4
  br label %332

332:                                              ; preds = %298, %295
  %333 = getelementptr inbounds %struct.float3, ptr %63, i32 0, i32 2
  %334 = load float, ptr %333, align 4
  %335 = load ptr, ptr %56, align 8
  %336 = load i32, ptr %62, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds float, ptr %335, i64 %337
  store float %334, ptr %338, align 4
  %339 = load float, ptr %82, align 4
  %340 = fptosi float %339 to i32
  %341 = load ptr, ptr %54, align 8
  %342 = load i32, ptr %62, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, ptr %341, i64 %343
  store i32 %340, ptr %344, align 4
  %345 = load ptr, ptr %55, align 8
  %346 = load i32, ptr %62, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.float2, ptr %345, i64 %347
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %348, ptr align 4 %83, i64 8, i1 false)
  %349 = getelementptr inbounds %struct.float3, ptr %76, i32 0, i32 0
  %350 = load float, ptr %349, align 4
  %351 = load ptr, ptr %59, align 8
  %352 = load i32, ptr %62, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.float4, ptr %351, i64 %353
  %355 = getelementptr inbounds %struct.float4, ptr %354, i32 0, i32 0
  store float %350, ptr %355, align 4
  %356 = getelementptr inbounds %struct.float3, ptr %76, i32 0, i32 1
  %357 = load float, ptr %356, align 4
  %358 = load ptr, ptr %59, align 8
  %359 = load i32, ptr %62, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.float4, ptr %358, i64 %360
  %362 = getelementptr inbounds %struct.float4, ptr %361, i32 0, i32 1
  store float %357, ptr %362, align 4
  %363 = getelementptr inbounds %struct.float3, ptr %76, i32 0, i32 2
  %364 = load float, ptr %363, align 4
  %365 = load ptr, ptr %59, align 8
  %366 = load i32, ptr %62, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.float4, ptr %365, i64 %367
  %369 = getelementptr inbounds %struct.float4, ptr %368, i32 0, i32 2
  store float %364, ptr %369, align 4
  %370 = load ptr, ptr %40, align 8
  %371 = load i32, ptr %62, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds float, ptr %370, i64 %372
  %374 = load float, ptr %373, align 4
  %375 = load ptr, ptr %59, align 8
  %376 = load i32, ptr %62, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.float4, ptr %375, i64 %377
  %379 = getelementptr inbounds %struct.float4, ptr %378, i32 0, i32 3
  store float %374, ptr %379, align 4
  %380 = getelementptr inbounds %struct.uint2, ptr %85, i32 0, i32 1
  %381 = load i32, ptr %380, align 4
  %382 = getelementptr inbounds %struct.uint2, ptr %84, i32 0, i32 1
  %383 = load i32, ptr %382, align 4
  %384 = sub i32 %381, %383
  %385 = getelementptr inbounds %struct.uint2, ptr %85, i32 0, i32 0
  %386 = load i32, ptr %385, align 4
  %387 = getelementptr inbounds %struct.uint2, ptr %84, i32 0, i32 0
  %388 = load i32, ptr %387, align 4
  %389 = sub i32 %386, %388
  %390 = mul i32 %384, %389
  %391 = load ptr, ptr %60, align 8
  %392 = load i32, ptr %62, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, ptr %391, i64 %393
  store i32 %390, ptr %394, align 4
  br label %395

395:                                              ; preds = %332, %294, %211, %112
  %396 = load i32, ptr %62, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, ptr %62, align 4
  br label %92, !llvm.loop !10

398:                                              ; preds = %92
  ret void
}

declare signext i32 @cpu_rasterizer_in_frustum(i32 noundef signext, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) #3

declare [2 x i64] @cpu_rasterizer_transformPoint4x4([2 x i64], ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @computeCov3D([2 x i64] %0, float noundef %1, [2 x i64] %2, ptr noundef %3) #0 {
  %5 = alloca %struct.float3, align 4
  %6 = alloca [2 x i64], align 8
  %7 = alloca %struct.float4, align 4
  %8 = alloca float, align 4
  %9 = alloca ptr, align 8
  %10 = alloca [9 x float], align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [9 x float], align 4
  %16 = alloca [9 x float], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [9 x float], align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [9 x float], align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store [2 x i64] %0, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 8 %6, i64 12, i1 false)
  store [2 x i64] %2, ptr %7, align 4
  store float %1, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  %27 = getelementptr inbounds [9 x float], ptr %10, i64 0, i64 0
  %28 = load float, ptr %8, align 4
  %29 = getelementptr inbounds %struct.float3, ptr %5, i32 0, i32 0
  %30 = load float, ptr %29, align 4
  %31 = fmul float %28, %30
  store float %31, ptr %27, align 4
  %32 = getelementptr inbounds float, ptr %27, i64 1
  store float 0.000000e+00, ptr %32, align 4
  %33 = getelementptr inbounds float, ptr %32, i64 1
  store float 0.000000e+00, ptr %33, align 4
  %34 = getelementptr inbounds float, ptr %33, i64 1
  store float 0.000000e+00, ptr %34, align 4
  %35 = getelementptr inbounds float, ptr %34, i64 1
  %36 = load float, ptr %8, align 4
  %37 = getelementptr inbounds %struct.float3, ptr %5, i32 0, i32 1
  %38 = load float, ptr %37, align 4
  %39 = fmul float %36, %38
  store float %39, ptr %35, align 4
  %40 = getelementptr inbounds float, ptr %35, i64 1
  store float 0.000000e+00, ptr %40, align 4
  %41 = getelementptr inbounds float, ptr %40, i64 1
  store float 0.000000e+00, ptr %41, align 4
  %42 = getelementptr inbounds float, ptr %41, i64 1
  store float 0.000000e+00, ptr %42, align 4
  %43 = getelementptr inbounds float, ptr %42, i64 1
  %44 = load float, ptr %8, align 4
  %45 = getelementptr inbounds %struct.float3, ptr %5, i32 0, i32 2
  %46 = load float, ptr %45, align 4
  %47 = fmul float %44, %46
  store float %47, ptr %43, align 4
  %48 = getelementptr inbounds %struct.float4, ptr %7, i32 0, i32 0
  %49 = load float, ptr %48, align 4
  store float %49, ptr %11, align 4
  %50 = getelementptr inbounds %struct.float4, ptr %7, i32 0, i32 1
  %51 = load float, ptr %50, align 4
  store float %51, ptr %12, align 4
  %52 = getelementptr inbounds %struct.float4, ptr %7, i32 0, i32 2
  %53 = load float, ptr %52, align 4
  store float %53, ptr %13, align 4
  %54 = getelementptr inbounds %struct.float4, ptr %7, i32 0, i32 3
  %55 = load float, ptr %54, align 4
  store float %55, ptr %14, align 4
  %56 = getelementptr inbounds [9 x float], ptr %15, i64 0, i64 0
  %57 = load float, ptr %12, align 4
  %58 = load float, ptr %12, align 4
  %59 = load float, ptr %13, align 4
  %60 = load float, ptr %13, align 4
  %61 = fmul float %59, %60
  %62 = call float @llvm.fmuladd.f32(float %57, float %58, float %61)
  %63 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %62, float 1.000000e+00)
  store float %63, ptr %56, align 4
  %64 = getelementptr inbounds float, ptr %56, i64 1
  %65 = load float, ptr %11, align 4
  %66 = load float, ptr %12, align 4
  %67 = load float, ptr %14, align 4
  %68 = load float, ptr %13, align 4
  %69 = fmul float %67, %68
  %70 = fneg float %69
  %71 = call float @llvm.fmuladd.f32(float %65, float %66, float %70)
  %72 = fmul float 2.000000e+00, %71
  store float %72, ptr %64, align 4
  %73 = getelementptr inbounds float, ptr %64, i64 1
  %74 = load float, ptr %11, align 4
  %75 = load float, ptr %13, align 4
  %76 = load float, ptr %14, align 4
  %77 = load float, ptr %12, align 4
  %78 = fmul float %76, %77
  %79 = call float @llvm.fmuladd.f32(float %74, float %75, float %78)
  %80 = fmul float 2.000000e+00, %79
  store float %80, ptr %73, align 4
  %81 = getelementptr inbounds float, ptr %73, i64 1
  %82 = load float, ptr %11, align 4
  %83 = load float, ptr %12, align 4
  %84 = load float, ptr %14, align 4
  %85 = load float, ptr %13, align 4
  %86 = fmul float %84, %85
  %87 = call float @llvm.fmuladd.f32(float %82, float %83, float %86)
  %88 = fmul float 2.000000e+00, %87
  store float %88, ptr %81, align 4
  %89 = getelementptr inbounds float, ptr %81, i64 1
  %90 = load float, ptr %11, align 4
  %91 = load float, ptr %11, align 4
  %92 = load float, ptr %13, align 4
  %93 = load float, ptr %13, align 4
  %94 = fmul float %92, %93
  %95 = call float @llvm.fmuladd.f32(float %90, float %91, float %94)
  %96 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %95, float 1.000000e+00)
  store float %96, ptr %89, align 4
  %97 = getelementptr inbounds float, ptr %89, i64 1
  %98 = load float, ptr %12, align 4
  %99 = load float, ptr %13, align 4
  %100 = load float, ptr %14, align 4
  %101 = load float, ptr %11, align 4
  %102 = fmul float %100, %101
  %103 = fneg float %102
  %104 = call float @llvm.fmuladd.f32(float %98, float %99, float %103)
  %105 = fmul float 2.000000e+00, %104
  store float %105, ptr %97, align 4
  %106 = getelementptr inbounds float, ptr %97, i64 1
  %107 = load float, ptr %11, align 4
  %108 = load float, ptr %13, align 4
  %109 = load float, ptr %14, align 4
  %110 = load float, ptr %12, align 4
  %111 = fmul float %109, %110
  %112 = fneg float %111
  %113 = call float @llvm.fmuladd.f32(float %107, float %108, float %112)
  %114 = fmul float 2.000000e+00, %113
  store float %114, ptr %106, align 4
  %115 = getelementptr inbounds float, ptr %106, i64 1
  %116 = load float, ptr %12, align 4
  %117 = load float, ptr %13, align 4
  %118 = load float, ptr %14, align 4
  %119 = load float, ptr %11, align 4
  %120 = fmul float %118, %119
  %121 = call float @llvm.fmuladd.f32(float %116, float %117, float %120)
  %122 = fmul float 2.000000e+00, %121
  store float %122, ptr %115, align 4
  %123 = getelementptr inbounds float, ptr %115, i64 1
  %124 = load float, ptr %11, align 4
  %125 = load float, ptr %11, align 4
  %126 = load float, ptr %12, align 4
  %127 = load float, ptr %12, align 4
  %128 = fmul float %126, %127
  %129 = call float @llvm.fmuladd.f32(float %124, float %125, float %128)
  %130 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %129, float 1.000000e+00)
  store float %130, ptr %123, align 4
  store i32 0, ptr %17, align 4
  br label %131

131:                                              ; preds = %179, %4
  %132 = load i32, ptr %17, align 4
  %133 = icmp slt i32 %132, 3
  br i1 %133, label %134, label %182

134:                                              ; preds = %131
  store i32 0, ptr %18, align 4
  br label %135

135:                                              ; preds = %175, %134
  %136 = load i32, ptr %18, align 4
  %137 = icmp slt i32 %136, 3
  br i1 %137, label %138, label %178

138:                                              ; preds = %135
  %139 = load i32, ptr %17, align 4
  %140 = mul nsw i32 %139, 3
  %141 = load i32, ptr %18, align 4
  %142 = add nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [9 x float], ptr %16, i64 0, i64 %143
  store float 0.000000e+00, ptr %144, align 4
  store i32 0, ptr %19, align 4
  br label %145

145:                                              ; preds = %171, %138
  %146 = load i32, ptr %19, align 4
  %147 = icmp slt i32 %146, 3
  br i1 %147, label %148, label %174

148:                                              ; preds = %145
  %149 = load i32, ptr %17, align 4
  %150 = mul nsw i32 %149, 3
  %151 = load i32, ptr %19, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [9 x float], ptr %10, i64 0, i64 %153
  %155 = load float, ptr %154, align 4
  %156 = load i32, ptr %19, align 4
  %157 = mul nsw i32 %156, 3
  %158 = load i32, ptr %18, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [9 x float], ptr %15, i64 0, i64 %160
  %162 = load float, ptr %161, align 4
  %163 = load i32, ptr %17, align 4
  %164 = mul nsw i32 %163, 3
  %165 = load i32, ptr %18, align 4
  %166 = add nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [9 x float], ptr %16, i64 0, i64 %167
  %169 = load float, ptr %168, align 4
  %170 = call float @llvm.fmuladd.f32(float %155, float %162, float %169)
  store float %170, ptr %168, align 4
  br label %171

171:                                              ; preds = %148
  %172 = load i32, ptr %19, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %19, align 4
  br label %145, !llvm.loop !12

174:                                              ; preds = %145
  br label %175

175:                                              ; preds = %174
  %176 = load i32, ptr %18, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %18, align 4
  br label %135, !llvm.loop !13

178:                                              ; preds = %135
  br label %179

179:                                              ; preds = %178
  %180 = load i32, ptr %17, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, ptr %17, align 4
  br label %131, !llvm.loop !14

182:                                              ; preds = %131
  store i32 0, ptr %21, align 4
  br label %183

183:                                              ; preds = %208, %182
  %184 = load i32, ptr %21, align 4
  %185 = icmp slt i32 %184, 3
  br i1 %185, label %186, label %211

186:                                              ; preds = %183
  store i32 0, ptr %22, align 4
  br label %187

187:                                              ; preds = %204, %186
  %188 = load i32, ptr %22, align 4
  %189 = icmp slt i32 %188, 3
  br i1 %189, label %190, label %207

190:                                              ; preds = %187
  %191 = load i32, ptr %22, align 4
  %192 = mul nsw i32 %191, 3
  %193 = load i32, ptr %21, align 4
  %194 = add nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [9 x float], ptr %16, i64 0, i64 %195
  %197 = load float, ptr %196, align 4
  %198 = load i32, ptr %21, align 4
  %199 = mul nsw i32 %198, 3
  %200 = load i32, ptr %22, align 4
  %201 = add nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [9 x float], ptr %20, i64 0, i64 %202
  store float %197, ptr %203, align 4
  br label %204

204:                                              ; preds = %190
  %205 = load i32, ptr %22, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr %22, align 4
  br label %187, !llvm.loop !15

207:                                              ; preds = %187
  br label %208

208:                                              ; preds = %207
  %209 = load i32, ptr %21, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr %21, align 4
  br label %183, !llvm.loop !16

211:                                              ; preds = %183
  store i32 0, ptr %24, align 4
  br label %212

212:                                              ; preds = %260, %211
  %213 = load i32, ptr %24, align 4
  %214 = icmp slt i32 %213, 3
  br i1 %214, label %215, label %263

215:                                              ; preds = %212
  store i32 0, ptr %25, align 4
  br label %216

216:                                              ; preds = %256, %215
  %217 = load i32, ptr %25, align 4
  %218 = icmp slt i32 %217, 3
  br i1 %218, label %219, label %259

219:                                              ; preds = %216
  %220 = load i32, ptr %24, align 4
  %221 = mul nsw i32 %220, 3
  %222 = load i32, ptr %25, align 4
  %223 = add nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [9 x float], ptr %23, i64 0, i64 %224
  store float 0.000000e+00, ptr %225, align 4
  store i32 0, ptr %26, align 4
  br label %226

226:                                              ; preds = %252, %219
  %227 = load i32, ptr %26, align 4
  %228 = icmp slt i32 %227, 3
  br i1 %228, label %229, label %255

229:                                              ; preds = %226
  %230 = load i32, ptr %24, align 4
  %231 = mul nsw i32 %230, 3
  %232 = load i32, ptr %26, align 4
  %233 = add nsw i32 %231, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [9 x float], ptr %20, i64 0, i64 %234
  %236 = load float, ptr %235, align 4
  %237 = load i32, ptr %26, align 4
  %238 = mul nsw i32 %237, 3
  %239 = load i32, ptr %25, align 4
  %240 = add nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [9 x float], ptr %16, i64 0, i64 %241
  %243 = load float, ptr %242, align 4
  %244 = load i32, ptr %24, align 4
  %245 = mul nsw i32 %244, 3
  %246 = load i32, ptr %25, align 4
  %247 = add nsw i32 %245, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [9 x float], ptr %23, i64 0, i64 %248
  %250 = load float, ptr %249, align 4
  %251 = call float @llvm.fmuladd.f32(float %236, float %243, float %250)
  store float %251, ptr %249, align 4
  br label %252

252:                                              ; preds = %229
  %253 = load i32, ptr %26, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, ptr %26, align 4
  br label %226, !llvm.loop !17

255:                                              ; preds = %226
  br label %256

256:                                              ; preds = %255
  %257 = load i32, ptr %25, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, ptr %25, align 4
  br label %216, !llvm.loop !18

259:                                              ; preds = %216
  br label %260

260:                                              ; preds = %259
  %261 = load i32, ptr %24, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, ptr %24, align 4
  br label %212, !llvm.loop !19

263:                                              ; preds = %212
  %264 = getelementptr inbounds [9 x float], ptr %23, i64 0, i64 0
  %265 = load float, ptr %264, align 4
  %266 = load ptr, ptr %9, align 8
  %267 = getelementptr inbounds float, ptr %266, i64 0
  store float %265, ptr %267, align 4
  %268 = getelementptr inbounds [9 x float], ptr %23, i64 0, i64 1
  %269 = load float, ptr %268, align 4
  %270 = load ptr, ptr %9, align 8
  %271 = getelementptr inbounds float, ptr %270, i64 1
  store float %269, ptr %271, align 4
  %272 = getelementptr inbounds [9 x float], ptr %23, i64 0, i64 2
  %273 = load float, ptr %272, align 4
  %274 = load ptr, ptr %9, align 8
  %275 = getelementptr inbounds float, ptr %274, i64 2
  store float %273, ptr %275, align 4
  %276 = getelementptr inbounds [9 x float], ptr %23, i64 0, i64 4
  %277 = load float, ptr %276, align 4
  %278 = load ptr, ptr %9, align 8
  %279 = getelementptr inbounds float, ptr %278, i64 3
  store float %277, ptr %279, align 4
  %280 = getelementptr inbounds [9 x float], ptr %23, i64 0, i64 5
  %281 = load float, ptr %280, align 4
  %282 = load ptr, ptr %9, align 8
  %283 = getelementptr inbounds float, ptr %282, i64 4
  store float %281, ptr %283, align 4
  %284 = getelementptr inbounds [9 x float], ptr %23, i64 0, i64 8
  %285 = load float, ptr %284, align 4
  %286 = load ptr, ptr %9, align 8
  %287 = getelementptr inbounds float, ptr %286, i64 5
  store float %285, ptr %287, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal [2 x i64] @computeCov2D([2 x i64] %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca %struct.float3, align 4
  %9 = alloca %struct.float3, align 4
  %10 = alloca [2 x i64], align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %struct.float3, align 4
  %18 = alloca [2 x i64], align 8
  %19 = alloca [2 x i64], align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca [9 x float], align 4
  %25 = alloca [9 x float], align 4
  %26 = alloca [9 x float], align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [9 x float], align 4
  %31 = alloca [9 x float], align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca [9 x float], align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca [9 x float], align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca [9 x float], align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 8 %10, i64 12, i1 false)
  store float %1, ptr %11, align 4
  store float %2, ptr %12, align 4
  store float %3, ptr %13, align 4
  store float %4, ptr %14, align 4
  store ptr %5, ptr %15, align 8
  store ptr %6, ptr %16, align 8
  %46 = load ptr, ptr %16, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 4 %9, i64 12, i1 false)
  %47 = load [2 x i64], ptr %18, align 8
  %48 = call [2 x i64] @cpu_rasterizer_transformPoint4x3([2 x i64] %47, ptr noundef %46)
  store [2 x i64] %48, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 8 %19, i64 12, i1 false)
  %49 = load float, ptr %13, align 4
  %50 = fmul float 0x3FF4CCCCC0000000, %49
  store float %50, ptr %20, align 4
  %51 = load float, ptr %14, align 4
  %52 = fmul float 0x3FF4CCCCC0000000, %51
  store float %52, ptr %21, align 4
  %53 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 0
  %54 = load float, ptr %53, align 4
  %55 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 2
  %56 = load float, ptr %55, align 4
  %57 = fdiv float %54, %56
  store float %57, ptr %22, align 4
  %58 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 1
  %59 = load float, ptr %58, align 4
  %60 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 2
  %61 = load float, ptr %60, align 4
  %62 = fdiv float %59, %61
  store float %62, ptr %23, align 4
  %63 = load float, ptr %20, align 4
  %64 = fpext float %63 to double
  %65 = load float, ptr %20, align 4
  %66 = fneg float %65
  %67 = fpext float %66 to double
  %68 = load float, ptr %22, align 4
  %69 = fpext float %68 to double
  %70 = call double @llvm.maxnum.f64(double %67, double %69)
  %71 = call double @llvm.minnum.f64(double %64, double %70)
  %72 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 2
  %73 = load float, ptr %72, align 4
  %74 = fpext float %73 to double
  %75 = fmul double %71, %74
  %76 = fptrunc double %75 to float
  %77 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 0
  store float %76, ptr %77, align 4
  %78 = load float, ptr %21, align 4
  %79 = fpext float %78 to double
  %80 = load float, ptr %21, align 4
  %81 = fneg float %80
  %82 = fpext float %81 to double
  %83 = load float, ptr %23, align 4
  %84 = fpext float %83 to double
  %85 = call double @llvm.maxnum.f64(double %82, double %84)
  %86 = call double @llvm.minnum.f64(double %79, double %85)
  %87 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 2
  %88 = load float, ptr %87, align 4
  %89 = fpext float %88 to double
  %90 = fmul double %86, %89
  %91 = fptrunc double %90 to float
  %92 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 1
  store float %91, ptr %92, align 4
  %93 = getelementptr inbounds [9 x float], ptr %24, i64 0, i64 0
  %94 = load float, ptr %11, align 4
  %95 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 2
  %96 = load float, ptr %95, align 4
  %97 = fdiv float %94, %96
  store float %97, ptr %93, align 4
  %98 = getelementptr inbounds float, ptr %93, i64 1
  store float 0.000000e+00, ptr %98, align 4
  %99 = getelementptr inbounds float, ptr %98, i64 1
  %100 = load float, ptr %11, align 4
  %101 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 0
  %102 = load float, ptr %101, align 4
  %103 = fmul float %100, %102
  %104 = fneg float %103
  %105 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 2
  %106 = load float, ptr %105, align 4
  %107 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 2
  %108 = load float, ptr %107, align 4
  %109 = fmul float %106, %108
  %110 = fdiv float %104, %109
  store float %110, ptr %99, align 4
  %111 = getelementptr inbounds float, ptr %99, i64 1
  store float 0.000000e+00, ptr %111, align 4
  %112 = getelementptr inbounds float, ptr %111, i64 1
  %113 = load float, ptr %12, align 4
  %114 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 2
  %115 = load float, ptr %114, align 4
  %116 = fdiv float %113, %115
  store float %116, ptr %112, align 4
  %117 = getelementptr inbounds float, ptr %112, i64 1
  %118 = load float, ptr %12, align 4
  %119 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 1
  %120 = load float, ptr %119, align 4
  %121 = fmul float %118, %120
  %122 = fneg float %121
  %123 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 2
  %124 = load float, ptr %123, align 4
  %125 = getelementptr inbounds %struct.float3, ptr %17, i32 0, i32 2
  %126 = load float, ptr %125, align 4
  %127 = fmul float %124, %126
  %128 = fdiv float %122, %127
  store float %128, ptr %117, align 4
  %129 = getelementptr inbounds float, ptr %117, i64 1
  store float 0.000000e+00, ptr %129, align 4
  %130 = getelementptr inbounds float, ptr %129, i64 1
  store float 0.000000e+00, ptr %130, align 4
  %131 = getelementptr inbounds float, ptr %130, i64 1
  store float 0.000000e+00, ptr %131, align 4
  %132 = getelementptr inbounds [9 x float], ptr %25, i64 0, i64 0
  %133 = load ptr, ptr %16, align 8
  %134 = getelementptr inbounds float, ptr %133, i64 0
  %135 = load float, ptr %134, align 4
  store float %135, ptr %132, align 4
  %136 = getelementptr inbounds float, ptr %132, i64 1
  %137 = load ptr, ptr %16, align 8
  %138 = getelementptr inbounds float, ptr %137, i64 4
  %139 = load float, ptr %138, align 4
  store float %139, ptr %136, align 4
  %140 = getelementptr inbounds float, ptr %136, i64 1
  %141 = load ptr, ptr %16, align 8
  %142 = getelementptr inbounds float, ptr %141, i64 8
  %143 = load float, ptr %142, align 4
  store float %143, ptr %140, align 4
  %144 = getelementptr inbounds float, ptr %140, i64 1
  %145 = load ptr, ptr %16, align 8
  %146 = getelementptr inbounds float, ptr %145, i64 1
  %147 = load float, ptr %146, align 4
  store float %147, ptr %144, align 4
  %148 = getelementptr inbounds float, ptr %144, i64 1
  %149 = load ptr, ptr %16, align 8
  %150 = getelementptr inbounds float, ptr %149, i64 5
  %151 = load float, ptr %150, align 4
  store float %151, ptr %148, align 4
  %152 = getelementptr inbounds float, ptr %148, i64 1
  %153 = load ptr, ptr %16, align 8
  %154 = getelementptr inbounds float, ptr %153, i64 9
  %155 = load float, ptr %154, align 4
  store float %155, ptr %152, align 4
  %156 = getelementptr inbounds float, ptr %152, i64 1
  %157 = load ptr, ptr %16, align 8
  %158 = getelementptr inbounds float, ptr %157, i64 2
  %159 = load float, ptr %158, align 4
  store float %159, ptr %156, align 4
  %160 = getelementptr inbounds float, ptr %156, i64 1
  %161 = load ptr, ptr %16, align 8
  %162 = getelementptr inbounds float, ptr %161, i64 6
  %163 = load float, ptr %162, align 4
  store float %163, ptr %160, align 4
  %164 = getelementptr inbounds float, ptr %160, i64 1
  %165 = load ptr, ptr %16, align 8
  %166 = getelementptr inbounds float, ptr %165, i64 10
  %167 = load float, ptr %166, align 4
  store float %167, ptr %164, align 4
  store i32 0, ptr %27, align 4
  br label %168

168:                                              ; preds = %216, %7
  %169 = load i32, ptr %27, align 4
  %170 = icmp slt i32 %169, 3
  br i1 %170, label %171, label %219

171:                                              ; preds = %168
  store i32 0, ptr %28, align 4
  br label %172

172:                                              ; preds = %212, %171
  %173 = load i32, ptr %28, align 4
  %174 = icmp slt i32 %173, 3
  br i1 %174, label %175, label %215

175:                                              ; preds = %172
  %176 = load i32, ptr %27, align 4
  %177 = mul nsw i32 %176, 3
  %178 = load i32, ptr %28, align 4
  %179 = add nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [9 x float], ptr %26, i64 0, i64 %180
  store float 0.000000e+00, ptr %181, align 4
  store i32 0, ptr %29, align 4
  br label %182

182:                                              ; preds = %208, %175
  %183 = load i32, ptr %29, align 4
  %184 = icmp slt i32 %183, 3
  br i1 %184, label %185, label %211

185:                                              ; preds = %182
  %186 = load i32, ptr %27, align 4
  %187 = mul nsw i32 %186, 3
  %188 = load i32, ptr %29, align 4
  %189 = add nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [9 x float], ptr %25, i64 0, i64 %190
  %192 = load float, ptr %191, align 4
  %193 = load i32, ptr %29, align 4
  %194 = mul nsw i32 %193, 3
  %195 = load i32, ptr %28, align 4
  %196 = add nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [9 x float], ptr %24, i64 0, i64 %197
  %199 = load float, ptr %198, align 4
  %200 = load i32, ptr %27, align 4
  %201 = mul nsw i32 %200, 3
  %202 = load i32, ptr %28, align 4
  %203 = add nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [9 x float], ptr %26, i64 0, i64 %204
  %206 = load float, ptr %205, align 4
  %207 = call float @llvm.fmuladd.f32(float %192, float %199, float %206)
  store float %207, ptr %205, align 4
  br label %208

208:                                              ; preds = %185
  %209 = load i32, ptr %29, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr %29, align 4
  br label %182, !llvm.loop !20

211:                                              ; preds = %182
  br label %212

212:                                              ; preds = %211
  %213 = load i32, ptr %28, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, ptr %28, align 4
  br label %172, !llvm.loop !21

215:                                              ; preds = %172
  br label %216

216:                                              ; preds = %215
  %217 = load i32, ptr %27, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, ptr %27, align 4
  br label %168, !llvm.loop !22

219:                                              ; preds = %168
  %220 = getelementptr inbounds [9 x float], ptr %30, i64 0, i64 0
  %221 = load ptr, ptr %15, align 8
  %222 = getelementptr inbounds float, ptr %221, i64 0
  %223 = load float, ptr %222, align 4
  store float %223, ptr %220, align 4
  %224 = getelementptr inbounds float, ptr %220, i64 1
  %225 = load ptr, ptr %15, align 8
  %226 = getelementptr inbounds float, ptr %225, i64 1
  %227 = load float, ptr %226, align 4
  store float %227, ptr %224, align 4
  %228 = getelementptr inbounds float, ptr %224, i64 1
  %229 = load ptr, ptr %15, align 8
  %230 = getelementptr inbounds float, ptr %229, i64 2
  %231 = load float, ptr %230, align 4
  store float %231, ptr %228, align 4
  %232 = getelementptr inbounds float, ptr %228, i64 1
  %233 = load ptr, ptr %15, align 8
  %234 = getelementptr inbounds float, ptr %233, i64 1
  %235 = load float, ptr %234, align 4
  store float %235, ptr %232, align 4
  %236 = getelementptr inbounds float, ptr %232, i64 1
  %237 = load ptr, ptr %15, align 8
  %238 = getelementptr inbounds float, ptr %237, i64 3
  %239 = load float, ptr %238, align 4
  store float %239, ptr %236, align 4
  %240 = getelementptr inbounds float, ptr %236, i64 1
  %241 = load ptr, ptr %15, align 8
  %242 = getelementptr inbounds float, ptr %241, i64 4
  %243 = load float, ptr %242, align 4
  store float %243, ptr %240, align 4
  %244 = getelementptr inbounds float, ptr %240, i64 1
  %245 = load ptr, ptr %15, align 8
  %246 = getelementptr inbounds float, ptr %245, i64 2
  %247 = load float, ptr %246, align 4
  store float %247, ptr %244, align 4
  %248 = getelementptr inbounds float, ptr %244, i64 1
  %249 = load ptr, ptr %15, align 8
  %250 = getelementptr inbounds float, ptr %249, i64 4
  %251 = load float, ptr %250, align 4
  store float %251, ptr %248, align 4
  %252 = getelementptr inbounds float, ptr %248, i64 1
  %253 = load ptr, ptr %15, align 8
  %254 = getelementptr inbounds float, ptr %253, i64 5
  %255 = load float, ptr %254, align 4
  store float %255, ptr %252, align 4
  store i32 0, ptr %32, align 4
  br label %256

256:                                              ; preds = %281, %219
  %257 = load i32, ptr %32, align 4
  %258 = icmp slt i32 %257, 3
  br i1 %258, label %259, label %284

259:                                              ; preds = %256
  store i32 0, ptr %33, align 4
  br label %260

260:                                              ; preds = %277, %259
  %261 = load i32, ptr %33, align 4
  %262 = icmp slt i32 %261, 3
  br i1 %262, label %263, label %280

263:                                              ; preds = %260
  %264 = load i32, ptr %33, align 4
  %265 = mul nsw i32 %264, 3
  %266 = load i32, ptr %32, align 4
  %267 = add nsw i32 %265, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [9 x float], ptr %26, i64 0, i64 %268
  %270 = load float, ptr %269, align 4
  %271 = load i32, ptr %32, align 4
  %272 = mul nsw i32 %271, 3
  %273 = load i32, ptr %33, align 4
  %274 = add nsw i32 %272, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [9 x float], ptr %31, i64 0, i64 %275
  store float %270, ptr %276, align 4
  br label %277

277:                                              ; preds = %263
  %278 = load i32, ptr %33, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, ptr %33, align 4
  br label %260, !llvm.loop !23

280:                                              ; preds = %260
  br label %281

281:                                              ; preds = %280
  %282 = load i32, ptr %32, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, ptr %32, align 4
  br label %256, !llvm.loop !24

284:                                              ; preds = %256
  store i32 0, ptr %35, align 4
  br label %285

285:                                              ; preds = %310, %284
  %286 = load i32, ptr %35, align 4
  %287 = icmp slt i32 %286, 3
  br i1 %287, label %288, label %313

288:                                              ; preds = %285
  store i32 0, ptr %36, align 4
  br label %289

289:                                              ; preds = %306, %288
  %290 = load i32, ptr %36, align 4
  %291 = icmp slt i32 %290, 3
  br i1 %291, label %292, label %309

292:                                              ; preds = %289
  %293 = load i32, ptr %36, align 4
  %294 = mul nsw i32 %293, 3
  %295 = load i32, ptr %35, align 4
  %296 = add nsw i32 %294, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [9 x float], ptr %30, i64 0, i64 %297
  %299 = load float, ptr %298, align 4
  %300 = load i32, ptr %35, align 4
  %301 = mul nsw i32 %300, 3
  %302 = load i32, ptr %36, align 4
  %303 = add nsw i32 %301, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [9 x float], ptr %34, i64 0, i64 %304
  store float %299, ptr %305, align 4
  br label %306

306:                                              ; preds = %292
  %307 = load i32, ptr %36, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, ptr %36, align 4
  br label %289, !llvm.loop !25

309:                                              ; preds = %289
  br label %310

310:                                              ; preds = %309
  %311 = load i32, ptr %35, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, ptr %35, align 4
  br label %285, !llvm.loop !26

313:                                              ; preds = %285
  store i32 0, ptr %38, align 4
  br label %314

314:                                              ; preds = %362, %313
  %315 = load i32, ptr %38, align 4
  %316 = icmp slt i32 %315, 3
  br i1 %316, label %317, label %365

317:                                              ; preds = %314
  store i32 0, ptr %39, align 4
  br label %318

318:                                              ; preds = %358, %317
  %319 = load i32, ptr %39, align 4
  %320 = icmp slt i32 %319, 3
  br i1 %320, label %321, label %361

321:                                              ; preds = %318
  %322 = load i32, ptr %38, align 4
  %323 = mul nsw i32 %322, 3
  %324 = load i32, ptr %39, align 4
  %325 = add nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [9 x float], ptr %37, i64 0, i64 %326
  store float 0.000000e+00, ptr %327, align 4
  store i32 0, ptr %40, align 4
  br label %328

328:                                              ; preds = %354, %321
  %329 = load i32, ptr %40, align 4
  %330 = icmp slt i32 %329, 3
  br i1 %330, label %331, label %357

331:                                              ; preds = %328
  %332 = load i32, ptr %38, align 4
  %333 = mul nsw i32 %332, 3
  %334 = load i32, ptr %40, align 4
  %335 = add nsw i32 %333, %334
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [9 x float], ptr %31, i64 0, i64 %336
  %338 = load float, ptr %337, align 4
  %339 = load i32, ptr %40, align 4
  %340 = mul nsw i32 %339, 3
  %341 = load i32, ptr %39, align 4
  %342 = add nsw i32 %340, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [9 x float], ptr %34, i64 0, i64 %343
  %345 = load float, ptr %344, align 4
  %346 = load i32, ptr %38, align 4
  %347 = mul nsw i32 %346, 3
  %348 = load i32, ptr %39, align 4
  %349 = add nsw i32 %347, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [9 x float], ptr %37, i64 0, i64 %350
  %352 = load float, ptr %351, align 4
  %353 = call float @llvm.fmuladd.f32(float %338, float %345, float %352)
  store float %353, ptr %351, align 4
  br label %354

354:                                              ; preds = %331
  %355 = load i32, ptr %40, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, ptr %40, align 4
  br label %328, !llvm.loop !27

357:                                              ; preds = %328
  br label %358

358:                                              ; preds = %357
  %359 = load i32, ptr %39, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, ptr %39, align 4
  br label %318, !llvm.loop !28

361:                                              ; preds = %318
  br label %362

362:                                              ; preds = %361
  %363 = load i32, ptr %38, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, ptr %38, align 4
  br label %314, !llvm.loop !29

365:                                              ; preds = %314
  store i32 0, ptr %42, align 4
  br label %366

366:                                              ; preds = %414, %365
  %367 = load i32, ptr %42, align 4
  %368 = icmp slt i32 %367, 3
  br i1 %368, label %369, label %417

369:                                              ; preds = %366
  store i32 0, ptr %43, align 4
  br label %370

370:                                              ; preds = %410, %369
  %371 = load i32, ptr %43, align 4
  %372 = icmp slt i32 %371, 3
  br i1 %372, label %373, label %413

373:                                              ; preds = %370
  %374 = load i32, ptr %42, align 4
  %375 = mul nsw i32 %374, 3
  %376 = load i32, ptr %43, align 4
  %377 = add nsw i32 %375, %376
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [9 x float], ptr %41, i64 0, i64 %378
  store float 0.000000e+00, ptr %379, align 4
  store i32 0, ptr %44, align 4
  br label %380

380:                                              ; preds = %406, %373
  %381 = load i32, ptr %44, align 4
  %382 = icmp slt i32 %381, 3
  br i1 %382, label %383, label %409

383:                                              ; preds = %380
  %384 = load i32, ptr %42, align 4
  %385 = mul nsw i32 %384, 3
  %386 = load i32, ptr %44, align 4
  %387 = add nsw i32 %385, %386
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [9 x float], ptr %37, i64 0, i64 %388
  %390 = load float, ptr %389, align 4
  %391 = load i32, ptr %44, align 4
  %392 = mul nsw i32 %391, 3
  %393 = load i32, ptr %43, align 4
  %394 = add nsw i32 %392, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [9 x float], ptr %26, i64 0, i64 %395
  %397 = load float, ptr %396, align 4
  %398 = load i32, ptr %42, align 4
  %399 = mul nsw i32 %398, 3
  %400 = load i32, ptr %43, align 4
  %401 = add nsw i32 %399, %400
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [9 x float], ptr %41, i64 0, i64 %402
  %404 = load float, ptr %403, align 4
  %405 = call float @llvm.fmuladd.f32(float %390, float %397, float %404)
  store float %405, ptr %403, align 4
  br label %406

406:                                              ; preds = %383
  %407 = load i32, ptr %44, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, ptr %44, align 4
  br label %380, !llvm.loop !30

409:                                              ; preds = %380
  br label %410

410:                                              ; preds = %409
  %411 = load i32, ptr %43, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, ptr %43, align 4
  br label %370, !llvm.loop !31

413:                                              ; preds = %370
  br label %414

414:                                              ; preds = %413
  %415 = load i32, ptr %42, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, ptr %42, align 4
  br label %366, !llvm.loop !32

417:                                              ; preds = %366
  %418 = getelementptr inbounds [9 x float], ptr %41, i64 0, i64 0
  %419 = load float, ptr %418, align 4
  %420 = fadd float %419, 0x3FD3333340000000
  store float %420, ptr %418, align 4
  %421 = getelementptr inbounds [9 x float], ptr %41, i64 0, i64 4
  %422 = load float, ptr %421, align 4
  %423 = fadd float %422, 0x3FD3333340000000
  store float %423, ptr %421, align 4
  %424 = getelementptr inbounds %struct.float3, ptr %8, i32 0, i32 0
  %425 = getelementptr inbounds [9 x float], ptr %41, i64 0, i64 0
  %426 = load float, ptr %425, align 4
  store float %426, ptr %424, align 4
  %427 = getelementptr inbounds %struct.float3, ptr %8, i32 0, i32 1
  %428 = getelementptr inbounds [9 x float], ptr %41, i64 0, i64 1
  %429 = load float, ptr %428, align 4
  store float %429, ptr %427, align 4
  %430 = getelementptr inbounds %struct.float3, ptr %8, i32 0, i32 2
  %431 = getelementptr inbounds [9 x float], ptr %41, i64 0, i64 4
  %432 = load float, ptr %431, align 4
  store float %432, ptr %430, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %45, ptr align 4 %8, i64 12, i1 false)
  %433 = load [2 x i64], ptr %45, align 8
  ret [2 x i64] %433
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal float @cpu_rasterizer_ndc2Pix(float noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store float %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load float, ptr %3, align 4
  %6 = fpext float %5 to double
  %7 = fadd double %6, 1.000000e+00
  %8 = load i32, ptr %4, align 4
  %9 = sitofp i32 %8 to double
  %10 = call double @llvm.fmuladd.f64(double %7, double %9, double -1.000000e+00)
  %11 = fmul double %10, 5.000000e-01
  %12 = fptrunc double %11 to float
  ret float %12
}

declare void @cpu_rasterizer_getRect(float, float, i32 noundef signext, ptr noundef, ptr noundef, [2 x i64]) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @renderCPU([2 x i64] %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
  %13 = alloca %struct.dim3, align 4
  %14 = alloca [2 x i64], align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.uint2, align 4
  %31 = alloca %struct.uint2, align 4
  %32 = alloca %struct.uint2, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.float2, align 4
  %38 = alloca float, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca [3 x float], align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca %struct.float2, align 4
  %45 = alloca %struct.float2, align 4
  %46 = alloca %struct.float4, align 4
  %47 = alloca float, align 4
  %48 = alloca float, align 4
  %49 = alloca float, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  store [2 x i64] %0, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 8 %14, i64 12, i1 false)
  store ptr %1, ptr %15, align 8
  store ptr %2, ptr %16, align 8
  store i32 %3, ptr %17, align 4
  store i32 %4, ptr %18, align 4
  store ptr %5, ptr %19, align 8
  store ptr %6, ptr %20, align 8
  store ptr %7, ptr %21, align 8
  store ptr %8, ptr %22, align 8
  store ptr %9, ptr %23, align 8
  store ptr %10, ptr %24, align 8
  store ptr %11, ptr %25, align 8
  %52 = load i32, ptr %18, align 4
  %53 = add nsw i32 %52, 16
  %54 = sub nsw i32 %53, 1
  %55 = sdiv i32 %54, 16
  store i32 %55, ptr %26, align 4
  %56 = load i32, ptr %17, align 4
  %57 = add nsw i32 %56, 16
  %58 = sub nsw i32 %57, 1
  %59 = sdiv i32 %58, 16
  store i32 %59, ptr %27, align 4
  store i32 0, ptr %28, align 4
  br label %60

60:                                               ; preds = %295, %12
  %61 = load i32, ptr %28, align 4
  %62 = load i32, ptr %26, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %298

64:                                               ; preds = %60
  store i32 0, ptr %29, align 4
  br label %65

65:                                               ; preds = %291, %64
  %66 = load i32, ptr %29, align 4
  %67 = load i32, ptr %27, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %294

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.uint2, ptr %30, i32 0, i32 0
  %71 = load i32, ptr %29, align 4
  %72 = mul i32 %71, 16
  store i32 %72, ptr %70, align 4
  %73 = getelementptr inbounds %struct.uint2, ptr %30, i32 0, i32 1
  %74 = load i32, ptr %28, align 4
  %75 = mul i32 %74, 16
  store i32 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.uint2, ptr %31, i32 0, i32 0
  %77 = getelementptr inbounds %struct.uint2, ptr %30, i32 0, i32 0
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 16
  %80 = load i32, ptr %17, align 4
  %81 = call signext i32 @min_int(i32 noundef signext %79, i32 noundef signext %80)
  store i32 %81, ptr %76, align 4
  %82 = getelementptr inbounds %struct.uint2, ptr %31, i32 0, i32 1
  %83 = getelementptr inbounds %struct.uint2, ptr %30, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, 16
  %86 = load i32, ptr %18, align 4
  %87 = call signext i32 @min_int(i32 noundef signext %85, i32 noundef signext %86)
  store i32 %87, ptr %82, align 4
  %88 = load ptr, ptr %15, align 8
  %89 = load i32, ptr %28, align 4
  %90 = load i32, ptr %27, align 4
  %91 = mul i32 %89, %90
  %92 = load i32, ptr %29, align 4
  %93 = add i32 %91, %92
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.uint2, ptr %88, i64 %94
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %32, ptr align 4 %95, i64 8, i1 false)
  %96 = getelementptr inbounds %struct.uint2, ptr %32, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.uint2, ptr %32, i32 0, i32 0
  %99 = load i32, ptr %98, align 4
  %100 = sub i32 %97, %99
  store i32 %100, ptr %33, align 4
  %101 = getelementptr inbounds %struct.uint2, ptr %30, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  store i32 %102, ptr %34, align 4
  br label %103

103:                                              ; preds = %287, %69
  %104 = load i32, ptr %34, align 4
  %105 = getelementptr inbounds %struct.uint2, ptr %31, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp ult i32 %104, %106
  br i1 %107, label %108, label %290

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.uint2, ptr %30, i32 0, i32 0
  %110 = load i32, ptr %109, align 4
  store i32 %110, ptr %35, align 4
  br label %111

111:                                              ; preds = %283, %108
  %112 = load i32, ptr %35, align 4
  %113 = getelementptr inbounds %struct.uint2, ptr %31, i32 0, i32 0
  %114 = load i32, ptr %113, align 4
  %115 = icmp ult i32 %112, %114
  br i1 %115, label %116, label %286

116:                                              ; preds = %111
  %117 = load i32, ptr %17, align 4
  %118 = load i32, ptr %34, align 4
  %119 = mul i32 %117, %118
  %120 = load i32, ptr %35, align 4
  %121 = add i32 %119, %120
  store i32 %121, ptr %36, align 4
  %122 = getelementptr inbounds %struct.float2, ptr %37, i32 0, i32 0
  %123 = load i32, ptr %35, align 4
  %124 = uitofp i32 %123 to float
  store float %124, ptr %122, align 4
  %125 = getelementptr inbounds %struct.float2, ptr %37, i32 0, i32 1
  %126 = load i32, ptr %34, align 4
  %127 = uitofp i32 %126 to float
  store float %127, ptr %125, align 4
  store float 1.000000e+00, ptr %38, align 4
  store i32 0, ptr %39, align 4
  store i32 0, ptr %40, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %41, i8 0, i64 12, i1 false)
  %128 = getelementptr inbounds %struct.uint2, ptr %32, i32 0, i32 0
  %129 = load i32, ptr %128, align 4
  store i32 %129, ptr %42, align 4
  br label %130

130:                                              ; preds = %240, %116
  %131 = load i32, ptr %42, align 4
  %132 = getelementptr inbounds %struct.uint2, ptr %32, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = icmp ult i32 %131, %133
  br i1 %134, label %135, label %243

135:                                              ; preds = %130
  %136 = load i32, ptr %39, align 4
  %137 = add i32 %136, 1
  store i32 %137, ptr %39, align 4
  %138 = load ptr, ptr %16, align 8
  %139 = load i32, ptr %42, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, ptr %138, i64 %140
  %142 = load i32, ptr %141, align 4
  store i32 %142, ptr %43, align 4
  %143 = load ptr, ptr %19, align 8
  %144 = load i32, ptr %43, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.float2, ptr %143, i64 %145
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %44, ptr align 4 %146, i64 8, i1 false)
  %147 = getelementptr inbounds %struct.float2, ptr %45, i32 0, i32 0
  %148 = getelementptr inbounds %struct.float2, ptr %44, i32 0, i32 0
  %149 = load float, ptr %148, align 4
  %150 = getelementptr inbounds %struct.float2, ptr %37, i32 0, i32 0
  %151 = load float, ptr %150, align 4
  %152 = fsub float %149, %151
  store float %152, ptr %147, align 4
  %153 = getelementptr inbounds %struct.float2, ptr %45, i32 0, i32 1
  %154 = getelementptr inbounds %struct.float2, ptr %44, i32 0, i32 1
  %155 = load float, ptr %154, align 4
  %156 = getelementptr inbounds %struct.float2, ptr %37, i32 0, i32 1
  %157 = load float, ptr %156, align 4
  %158 = fsub float %155, %157
  store float %158, ptr %153, align 4
  %159 = load ptr, ptr %21, align 8
  %160 = load i32, ptr %43, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.float4, ptr %159, i64 %161
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %46, ptr align 4 %162, i64 16, i1 false)
  %163 = getelementptr inbounds %struct.float4, ptr %46, i32 0, i32 0
  %164 = load float, ptr %163, align 4
  %165 = getelementptr inbounds %struct.float2, ptr %45, i32 0, i32 0
  %166 = load float, ptr %165, align 4
  %167 = fmul float %164, %166
  %168 = getelementptr inbounds %struct.float2, ptr %45, i32 0, i32 0
  %169 = load float, ptr %168, align 4
  %170 = getelementptr inbounds %struct.float4, ptr %46, i32 0, i32 2
  %171 = load float, ptr %170, align 4
  %172 = getelementptr inbounds %struct.float2, ptr %45, i32 0, i32 1
  %173 = load float, ptr %172, align 4
  %174 = fmul float %171, %173
  %175 = getelementptr inbounds %struct.float2, ptr %45, i32 0, i32 1
  %176 = load float, ptr %175, align 4
  %177 = fmul float %174, %176
  %178 = call float @llvm.fmuladd.f32(float %167, float %169, float %177)
  %179 = getelementptr inbounds %struct.float4, ptr %46, i32 0, i32 1
  %180 = load float, ptr %179, align 4
  %181 = getelementptr inbounds %struct.float2, ptr %45, i32 0, i32 0
  %182 = load float, ptr %181, align 4
  %183 = fmul float %180, %182
  %184 = getelementptr inbounds %struct.float2, ptr %45, i32 0, i32 1
  %185 = load float, ptr %184, align 4
  %186 = fmul float %183, %185
  %187 = fneg float %186
  %188 = call float @llvm.fmuladd.f32(float -5.000000e-01, float %178, float %187)
  store float %188, ptr %47, align 4
  %189 = load float, ptr %47, align 4
  %190 = fcmp ogt float %189, 0.000000e+00
  br i1 %190, label %191, label %192

191:                                              ; preds = %135
  br label %240

192:                                              ; preds = %135
  %193 = getelementptr inbounds %struct.float4, ptr %46, i32 0, i32 3
  %194 = load float, ptr %193, align 4
  %195 = fpext float %194 to double
  %196 = load float, ptr %47, align 4
  %197 = fpext float %196 to double
  %198 = call double @exp(double noundef %197) #6
  %199 = fmul double %195, %198
  %200 = call double @llvm.minnum.f64(double 0x3FEFAE1480000000, double %199)
  %201 = fptrunc double %200 to float
  store float %201, ptr %48, align 4
  %202 = load float, ptr %48, align 4
  %203 = fcmp olt float %202, 0x3F70101020000000
  br i1 %203, label %204, label %205

204:                                              ; preds = %192
  br label %240

205:                                              ; preds = %192
  %206 = load float, ptr %38, align 4
  %207 = load float, ptr %48, align 4
  %208 = fsub float 1.000000e+00, %207
  %209 = fmul float %206, %208
  store float %209, ptr %49, align 4
  %210 = load float, ptr %49, align 4
  %211 = fcmp olt float %210, 0x3F1A36E2E0000000
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  br label %243

213:                                              ; preds = %205
  store i32 0, ptr %50, align 4
  br label %214

214:                                              ; preds = %234, %213
  %215 = load i32, ptr %50, align 4
  %216 = icmp slt i32 %215, 3
  br i1 %216, label %217, label %237

217:                                              ; preds = %214
  %218 = load ptr, ptr %20, align 8
  %219 = load i32, ptr %43, align 4
  %220 = mul nsw i32 %219, 3
  %221 = load i32, ptr %50, align 4
  %222 = add nsw i32 %220, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, ptr %218, i64 %223
  %225 = load float, ptr %224, align 4
  %226 = load float, ptr %48, align 4
  %227 = fmul float %225, %226
  %228 = load float, ptr %38, align 4
  %229 = load i32, ptr %50, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [3 x float], ptr %41, i64 0, i64 %230
  %232 = load float, ptr %231, align 4
  %233 = call float @llvm.fmuladd.f32(float %227, float %228, float %232)
  store float %233, ptr %231, align 4
  br label %234

234:                                              ; preds = %217
  %235 = load i32, ptr %50, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, ptr %50, align 4
  br label %214, !llvm.loop !33

237:                                              ; preds = %214
  %238 = load float, ptr %49, align 4
  store float %238, ptr %38, align 4
  %239 = load i32, ptr %39, align 4
  store i32 %239, ptr %40, align 4
  br label %240

240:                                              ; preds = %237, %204, %191
  %241 = load i32, ptr %42, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, ptr %42, align 4
  br label %130, !llvm.loop !34

243:                                              ; preds = %212, %130
  %244 = load float, ptr %38, align 4
  %245 = load ptr, ptr %22, align 8
  %246 = load i32, ptr %36, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds float, ptr %245, i64 %247
  store float %244, ptr %248, align 4
  %249 = load i32, ptr %40, align 4
  %250 = load ptr, ptr %23, align 8
  %251 = load i32, ptr %36, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, ptr %250, i64 %252
  store i32 %249, ptr %253, align 4
  store i32 0, ptr %51, align 4
  br label %254

254:                                              ; preds = %279, %243
  %255 = load i32, ptr %51, align 4
  %256 = icmp slt i32 %255, 3
  br i1 %256, label %257, label %282

257:                                              ; preds = %254
  %258 = load i32, ptr %51, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [3 x float], ptr %41, i64 0, i64 %259
  %261 = load float, ptr %260, align 4
  %262 = load float, ptr %38, align 4
  %263 = load ptr, ptr %24, align 8
  %264 = load i32, ptr %51, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds float, ptr %263, i64 %265
  %267 = load float, ptr %266, align 4
  %268 = call float @llvm.fmuladd.f32(float %262, float %267, float %261)
  %269 = load ptr, ptr %25, align 8
  %270 = load i32, ptr %51, align 4
  %271 = load i32, ptr %18, align 4
  %272 = mul nsw i32 %270, %271
  %273 = load i32, ptr %17, align 4
  %274 = mul nsw i32 %272, %273
  %275 = load i32, ptr %36, align 4
  %276 = add i32 %274, %275
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds float, ptr %269, i64 %277
  store float %268, ptr %278, align 4
  br label %279

279:                                              ; preds = %257
  %280 = load i32, ptr %51, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, ptr %51, align 4
  br label %254, !llvm.loop !35

282:                                              ; preds = %254
  br label %283

283:                                              ; preds = %282
  %284 = load i32, ptr %35, align 4
  %285 = add i32 %284, 1
  store i32 %285, ptr %35, align 4
  br label %111, !llvm.loop !36

286:                                              ; preds = %111
  br label %287

287:                                              ; preds = %286
  %288 = load i32, ptr %34, align 4
  %289 = add i32 %288, 1
  store i32 %289, ptr %34, align 4
  br label %103, !llvm.loop !37

290:                                              ; preds = %103
  br label %291

291:                                              ; preds = %290
  %292 = load i32, ptr %29, align 4
  %293 = add i32 %292, 1
  store i32 %293, ptr %29, align 4
  br label %65, !llvm.loop !38

294:                                              ; preds = %65
  br label %295

295:                                              ; preds = %294
  %296 = load i32, ptr %28, align 4
  %297 = add i32 %296, 1
  store i32 %297, ptr %28, align 4
  br label %60, !llvm.loop !39

298:                                              ; preds = %60
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare double @exp(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_rasterizer_render([2 x i64] %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
  %13 = alloca %struct.dim3, align 4
  %14 = alloca [2 x i64], align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 8 %14, i64 12, i1 false)
  store ptr %1, ptr %15, align 8
  store ptr %2, ptr %16, align 8
  store i32 %3, ptr %17, align 4
  store i32 %4, ptr %18, align 4
  store ptr %5, ptr %19, align 8
  store ptr %6, ptr %20, align 8
  store ptr %7, ptr %21, align 8
  store ptr %8, ptr %22, align 8
  store ptr %9, ptr %23, align 8
  store ptr %10, ptr %24, align 8
  store ptr %11, ptr %25, align 8
  %27 = load ptr, ptr %15, align 8
  %28 = load ptr, ptr %16, align 8
  %29 = load i32, ptr %17, align 4
  %30 = load i32, ptr %18, align 4
  %31 = load ptr, ptr %19, align 8
  %32 = load ptr, ptr %20, align 8
  %33 = load ptr, ptr %21, align 8
  %34 = load ptr, ptr %22, align 8
  %35 = load ptr, ptr %23, align 8
  %36 = load ptr, ptr %24, align 8
  %37 = load ptr, ptr %25, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 4 %13, i64 12, i1 false)
  %38 = load [2 x i64], ptr %26, align 8
  call void @renderCPU([2 x i64] %38, ptr noundef %27, ptr noundef %28, i32 noundef signext %29, i32 noundef signext %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_rasterizer_preprocess(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, ptr noundef %3, ptr noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef signext %15, i32 noundef signext %16, float noundef %17, float noundef %18, float noundef %19, float noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, [2 x i64] %27, ptr noundef %28, i32 noundef signext %29) #0 {
  %31 = alloca %struct.dim3, align 4
  %32 = alloca [2 x i64], align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca float, align 4
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca ptr, align 8
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca ptr, align 8
  %47 = alloca ptr, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca float, align 4
  %51 = alloca float, align 4
  %52 = alloca float, align 4
  %53 = alloca float, align 4
  %54 = alloca ptr, align 8
  %55 = alloca ptr, align 8
  %56 = alloca ptr, align 8
  %57 = alloca ptr, align 8
  %58 = alloca ptr, align 8
  %59 = alloca ptr, align 8
  %60 = alloca ptr, align 8
  %61 = alloca i32, align 4
  %62 = alloca [2 x i64], align 8
  store [2 x i64] %27, ptr %32, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %31, ptr align 8 %32, i64 12, i1 false)
  store i32 %0, ptr %33, align 4
  store i32 %1, ptr %34, align 4
  store i32 %2, ptr %35, align 4
  store ptr %3, ptr %36, align 8
  store ptr %4, ptr %37, align 8
  store float %5, ptr %38, align 4
  store ptr %6, ptr %39, align 8
  store ptr %7, ptr %40, align 8
  store ptr %8, ptr %41, align 8
  store ptr %9, ptr %42, align 8
  store ptr %10, ptr %43, align 8
  store ptr %11, ptr %44, align 8
  store ptr %12, ptr %45, align 8
  store ptr %13, ptr %46, align 8
  store ptr %14, ptr %47, align 8
  store i32 %15, ptr %48, align 4
  store i32 %16, ptr %49, align 4
  store float %17, ptr %50, align 4
  store float %18, ptr %51, align 4
  store float %19, ptr %52, align 4
  store float %20, ptr %53, align 4
  store ptr %21, ptr %54, align 8
  store ptr %22, ptr %55, align 8
  store ptr %23, ptr %56, align 8
  store ptr %24, ptr %57, align 8
  store ptr %25, ptr %58, align 8
  store ptr %26, ptr %59, align 8
  store ptr %28, ptr %60, align 8
  store i32 %29, ptr %61, align 4
  %63 = load i32, ptr %33, align 4
  %64 = load i32, ptr %34, align 4
  %65 = load i32, ptr %35, align 4
  %66 = load ptr, ptr %36, align 8
  %67 = load ptr, ptr %37, align 8
  %68 = load float, ptr %38, align 4
  %69 = load ptr, ptr %39, align 8
  %70 = load ptr, ptr %40, align 8
  %71 = load ptr, ptr %41, align 8
  %72 = load ptr, ptr %42, align 8
  %73 = load ptr, ptr %43, align 8
  %74 = load ptr, ptr %44, align 8
  %75 = load ptr, ptr %45, align 8
  %76 = load ptr, ptr %46, align 8
  %77 = load ptr, ptr %47, align 8
  %78 = load i32, ptr %48, align 4
  %79 = load i32, ptr %49, align 4
  %80 = load float, ptr %50, align 4
  %81 = load float, ptr %51, align 4
  %82 = load float, ptr %52, align 4
  %83 = load float, ptr %53, align 4
  %84 = load ptr, ptr %54, align 8
  %85 = load ptr, ptr %55, align 8
  %86 = load ptr, ptr %56, align 8
  %87 = load ptr, ptr %57, align 8
  %88 = load ptr, ptr %58, align 8
  %89 = load ptr, ptr %59, align 8
  %90 = load ptr, ptr %60, align 8
  %91 = load i32, ptr %61, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %62, ptr align 4 %31, i64 12, i1 false)
  %92 = load [2 x i64], ptr %62, align 8
  call void @preprocessCPU(i32 noundef signext %63, i32 noundef signext %64, i32 noundef signext %65, ptr noundef %66, ptr noundef %67, float noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75, ptr noundef %76, ptr noundef %77, i32 noundef signext %78, i32 noundef signext %79, float noundef %80, float noundef %81, float noundef %82, float noundef %83, ptr noundef %84, ptr noundef %85, ptr noundef %86, ptr noundef %87, ptr noundef %88, ptr noundef %89, [2 x i64] %92, ptr noundef %90, i32 noundef signext %91)
  ret void
}

declare [2 x i64] @cpu_rasterizer_transformPoint4x3([2 x i64], ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zicsr,-e,-experimental-zacas,-experimental-zcmop,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-zimop,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-smaia,-smepmp,-ssaia,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zicsr,-e,-experimental-zacas,-experimental-zcmop,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-zimop,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-smaia,-smepmp,-ssaia,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zicsr,-e,-experimental-zacas,-experimental-zcmop,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-zimop,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-smaia,-smepmp,-ssaia,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
