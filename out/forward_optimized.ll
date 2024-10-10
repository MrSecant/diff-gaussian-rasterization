; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "S128-e-i64:64-i128:128-p0:64:64:64:64-i1:8-i8:8-i16:16-i32:32-f16:16-f64:64-f128:128"

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
define [2 x i64] @computeColorFromSH(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, ptr noundef %3, [2 x i64] %4, ptr noundef %5, ptr noundef %6) #0 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr %9, ptr %10, i64 12, i1 false)
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
  call void @llvm.memcpy.p0.p0.i64(ptr %17, ptr %156, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %19, ptr %17, i64 12, i1 false)
  %157 = load [2 x i64], ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %20, ptr %9, i64 12, i1 false)
  %158 = load [2 x i64], ptr %20, align 8
  %159 = call [2 x i64] @vec3_sub([2 x i64] %157, [2 x i64] %158)
  store [2 x i64] %159, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %18, ptr %21, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %23, ptr %18, i64 12, i1 false)
  %160 = load [2 x i64], ptr %23, align 8
  %161 = call float @vec3_length([2 x i64] %160)
  store float %161, ptr %22, align 4
  %162 = load float, ptr %22, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr %25, ptr %18, i64 12, i1 false)
  %163 = load [2 x i64], ptr %25, align 8
  %164 = call [2 x i64] @vec3_div_scalar([2 x i64] %163, float %162)
  store [2 x i64] %164, ptr %26, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %24, ptr %26, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %18, ptr %24, i64 12, i1 false)
  %165 = load ptr, ptr %15, align 8
  %166 = load i32, ptr %11, align 4
  %167 = load i32, ptr %13, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.float3, ptr %165, i64 %169
  store ptr %170, ptr %27, align 8
  %171 = load ptr, ptr %27, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %28, ptr %171, i64 12, i1 false)
  %172 = load [2 x i64], ptr %28, align 8
  %173 = call [2 x i64] @vec3_mul_scalar([2 x i64] %172, float 0x3FD20DD760000000)
  store [2 x i64] %173, ptr %29, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %29, i64 12, i1 false)
  %174 = load i32, ptr %12, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %397

176:                                              ; preds = %7
  %177 = getelementptr inbounds %struct.float3, ptr %18, i32 0, i32 0
  %178 = load float, ptr %177, align 4
  store float %178, ptr %30, align 4
  %179 = getelementptr inbounds %struct.float3, ptr %18, i32 0, i32 1
  %180 = load float, ptr %179, align 4
  store float %180, ptr %31, align 4
  %181 = getelementptr inbounds %struct.float3, ptr %18, i32 0, i32 2
  %182 = load float, ptr %181, align 4
  store float %182, ptr %32, align 4
  %183 = load ptr, ptr %27, align 8
  %184 = getelementptr inbounds %struct.float3, ptr %183, i32 1
  %185 = load float, ptr %31, align 4
  %186 = fmul float 0x3FDF454380000000, %185
  call void @llvm.memcpy.p0.p0.i64(ptr %35, ptr %184, i64 12, i1 false)
  %187 = load [2 x i64], ptr %35, align 8
  %188 = call [2 x i64] @vec3_mul_scalar([2 x i64] %187, float %186)
  store [2 x i64] %188, ptr %36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %34, ptr %36, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %37, ptr %8, i64 12, i1 false)
  %189 = load [2 x i64], ptr %37, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %38, ptr %34, i64 12, i1 false)
  %190 = load [2 x i64], ptr %38, align 8
  %191 = call [2 x i64] @vec3_sub([2 x i64] %189, [2 x i64] %190)
  store [2 x i64] %191, ptr %39, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %33, ptr %39, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %33, i64 12, i1 false)
  %192 = load ptr, ptr %27, align 8
  %193 = getelementptr inbounds %struct.float3, ptr %192, i32 2
  %194 = load float, ptr %32, align 4
  %195 = fmul float 0x3FDF454380000000, %194
  call void @llvm.memcpy.p0.p0.i64(ptr %42, ptr %193, i64 12, i1 false)
  %196 = load [2 x i64], ptr %42, align 8
  %197 = call [2 x i64] @vec3_mul_scalar([2 x i64] %196, float %195)
  store [2 x i64] %197, ptr %43, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %41, ptr %43, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %44, ptr %8, i64 12, i1 false)
  %198 = load [2 x i64], ptr %44, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %45, ptr %41, i64 12, i1 false)
  %199 = load [2 x i64], ptr %45, align 8
  %200 = call [2 x i64] @vec3_add([2 x i64] %198, [2 x i64] %199)
  store [2 x i64] %200, ptr %46, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %40, ptr %46, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %40, i64 12, i1 false)
  %201 = load ptr, ptr %27, align 8
  %202 = getelementptr inbounds %struct.float3, ptr %201, i32 3
  %203 = load float, ptr %30, align 4
  %204 = fmul float 0x3FDF454380000000, %203
  call void @llvm.memcpy.p0.p0.i64(ptr %49, ptr %202, i64 12, i1 false)
  %205 = load [2 x i64], ptr %49, align 8
  %206 = call [2 x i64] @vec3_mul_scalar([2 x i64] %205, float %204)
  store [2 x i64] %206, ptr %50, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %48, ptr %50, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %51, ptr %8, i64 12, i1 false)
  %207 = load [2 x i64], ptr %51, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %52, ptr %48, i64 12, i1 false)
  %208 = load [2 x i64], ptr %52, align 8
  %209 = call [2 x i64] @vec3_sub([2 x i64] %207, [2 x i64] %208)
  store [2 x i64] %209, ptr %53, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %47, ptr %53, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %47, i64 12, i1 false)
  %210 = load i32, ptr %12, align 4
  %211 = icmp sgt i32 %210, 1
  br i1 %211, label %212, label %396

212:                                              ; preds = %176
  %213 = load float, ptr %30, align 4
  %214 = fmul float %213, %213
  store float %214, ptr %54, align 4
  %215 = load float, ptr %31, align 4
  %216 = fmul float %215, %215
  store float %216, ptr %55, align 4
  %217 = load float, ptr %32, align 4
  %218 = fmul float %217, %217
  store float %218, ptr %56, align 4
  %219 = load float, ptr %30, align 4
  %220 = load float, ptr %31, align 4
  %221 = fmul float %219, %220
  store float %221, ptr %57, align 4
  %222 = load float, ptr %31, align 4
  %223 = load float, ptr %32, align 4
  %224 = fmul float %222, %223
  store float %224, ptr %58, align 4
  %225 = load float, ptr %30, align 4
  %226 = load float, ptr %32, align 4
  %227 = fmul float %225, %226
  store float %227, ptr %59, align 4
  %228 = load ptr, ptr %27, align 8
  %229 = getelementptr inbounds %struct.float3, ptr %228, i32 4
  %230 = load float, ptr @SH_C2, align 4
  %231 = load float, ptr %57, align 4
  %232 = fmul float %230, %231
  call void @llvm.memcpy.p0.p0.i64(ptr %62, ptr %229, i64 12, i1 false)
  %233 = load [2 x i64], ptr %62, align 8
  %234 = call [2 x i64] @vec3_mul_scalar([2 x i64] %233, float %232)
  store [2 x i64] %234, ptr %63, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %61, ptr %63, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %64, ptr %8, i64 12, i1 false)
  %235 = load [2 x i64], ptr %64, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %65, ptr %61, i64 12, i1 false)
  %236 = load [2 x i64], ptr %65, align 8
  %237 = call [2 x i64] @vec3_add([2 x i64] %235, [2 x i64] %236)
  store [2 x i64] %237, ptr %66, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %60, ptr %66, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %60, i64 12, i1 false)
  %238 = load ptr, ptr %27, align 8
  %239 = getelementptr inbounds %struct.float3, ptr %238, i32 5
  %240 = load float, ptr getelementptr inbounds ([5 x float], ptr @SH_C2, i32 0, i32 1), align 4
  %241 = load float, ptr %58, align 4
  %242 = fmul float %240, %241
  call void @llvm.memcpy.p0.p0.i64(ptr %69, ptr %239, i64 12, i1 false)
  %243 = load [2 x i64], ptr %69, align 8
  %244 = call [2 x i64] @vec3_mul_scalar([2 x i64] %243, float %242)
  store [2 x i64] %244, ptr %70, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %68, ptr %70, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %71, ptr %8, i64 12, i1 false)
  %245 = load [2 x i64], ptr %71, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %72, ptr %68, i64 12, i1 false)
  %246 = load [2 x i64], ptr %72, align 8
  %247 = call [2 x i64] @vec3_add([2 x i64] %245, [2 x i64] %246)
  store [2 x i64] %247, ptr %73, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %67, ptr %73, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %67, i64 12, i1 false)
  %248 = load ptr, ptr %27, align 8
  %249 = getelementptr inbounds %struct.float3, ptr %248, i32 6
  %250 = load float, ptr getelementptr inbounds ([5 x float], ptr @SH_C2, i32 0, i32 2), align 4
  %251 = load float, ptr %56, align 4
  %252 = load float, ptr %54, align 4
  %253 = fneg float %252
  %254 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %251, float %253)
  %255 = load float, ptr %55, align 4
  %256 = fsub float %254, %255
  %257 = fmul float %250, %256
  call void @llvm.memcpy.p0.p0.i64(ptr %76, ptr %249, i64 12, i1 false)
  %258 = load [2 x i64], ptr %76, align 8
  %259 = call [2 x i64] @vec3_mul_scalar([2 x i64] %258, float %257)
  store [2 x i64] %259, ptr %77, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %75, ptr %77, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %78, ptr %8, i64 12, i1 false)
  %260 = load [2 x i64], ptr %78, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %79, ptr %75, i64 12, i1 false)
  %261 = load [2 x i64], ptr %79, align 8
  %262 = call [2 x i64] @vec3_add([2 x i64] %260, [2 x i64] %261)
  store [2 x i64] %262, ptr %80, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %74, ptr %80, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %74, i64 12, i1 false)
  %263 = load ptr, ptr %27, align 8
  %264 = getelementptr inbounds %struct.float3, ptr %263, i32 7
  %265 = load float, ptr getelementptr inbounds ([5 x float], ptr @SH_C2, i32 0, i32 3), align 4
  %266 = load float, ptr %59, align 4
  %267 = fmul float %265, %266
  call void @llvm.memcpy.p0.p0.i64(ptr %83, ptr %264, i64 12, i1 false)
  %268 = load [2 x i64], ptr %83, align 8
  %269 = call [2 x i64] @vec3_mul_scalar([2 x i64] %268, float %267)
  store [2 x i64] %269, ptr %84, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %82, ptr %84, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %85, ptr %8, i64 12, i1 false)
  %270 = load [2 x i64], ptr %85, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %86, ptr %82, i64 12, i1 false)
  %271 = load [2 x i64], ptr %86, align 8
  %272 = call [2 x i64] @vec3_add([2 x i64] %270, [2 x i64] %271)
  store [2 x i64] %272, ptr %87, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %81, ptr %87, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %81, i64 12, i1 false)
  %273 = load ptr, ptr %27, align 8
  %274 = getelementptr inbounds %struct.float3, ptr %273, i32 8
  %275 = load float, ptr getelementptr inbounds ([5 x float], ptr @SH_C2, i32 0, i32 4), align 4
  %276 = load float, ptr %54, align 4
  %277 = load float, ptr %55, align 4
  %278 = fsub float %276, %277
  %279 = fmul float %275, %278
  call void @llvm.memcpy.p0.p0.i64(ptr %90, ptr %274, i64 12, i1 false)
  %280 = load [2 x i64], ptr %90, align 8
  %281 = call [2 x i64] @vec3_mul_scalar([2 x i64] %280, float %279)
  store [2 x i64] %281, ptr %91, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %89, ptr %91, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %92, ptr %8, i64 12, i1 false)
  %282 = load [2 x i64], ptr %92, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %93, ptr %89, i64 12, i1 false)
  %283 = load [2 x i64], ptr %93, align 8
  %284 = call [2 x i64] @vec3_add([2 x i64] %282, [2 x i64] %283)
  store [2 x i64] %284, ptr %94, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %88, ptr %94, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %88, i64 12, i1 false)
  %285 = load i32, ptr %12, align 4
  %286 = icmp sgt i32 %285, 2
  br i1 %286, label %287, label %395

287:                                              ; preds = %212
  %288 = load ptr, ptr %27, align 8
  %289 = getelementptr inbounds %struct.float3, ptr %288, i32 9
  %290 = load float, ptr @SH_C3, align 4
  %291 = load float, ptr %31, align 4
  %292 = fmul float %290, %291
  %293 = load float, ptr %54, align 4
  %294 = load float, ptr %55, align 4
  %295 = fneg float %294
  %296 = call float @llvm.fmuladd.f32(float 3.000000e+00, float %293, float %295)
  %297 = fmul float %292, %296
  call void @llvm.memcpy.p0.p0.i64(ptr %97, ptr %289, i64 12, i1 false)
  %298 = load [2 x i64], ptr %97, align 8
  %299 = call [2 x i64] @vec3_mul_scalar([2 x i64] %298, float %297)
  store [2 x i64] %299, ptr %98, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %96, ptr %98, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %99, ptr %8, i64 12, i1 false)
  %300 = load [2 x i64], ptr %99, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %100, ptr %96, i64 12, i1 false)
  %301 = load [2 x i64], ptr %100, align 8
  %302 = call [2 x i64] @vec3_add([2 x i64] %300, [2 x i64] %301)
  store [2 x i64] %302, ptr %101, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %95, ptr %101, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %95, i64 12, i1 false)
  %303 = load ptr, ptr %27, align 8
  %304 = getelementptr inbounds %struct.float3, ptr %303, i32 10
  %305 = load float, ptr getelementptr inbounds ([7 x float], ptr @SH_C3, i32 0, i32 1), align 4
  %306 = load float, ptr %57, align 4
  %307 = fmul float %305, %306
  %308 = load float, ptr %32, align 4
  %309 = fmul float %307, %308
  call void @llvm.memcpy.p0.p0.i64(ptr %104, ptr %304, i64 12, i1 false)
  %310 = load [2 x i64], ptr %104, align 8
  %311 = call [2 x i64] @vec3_mul_scalar([2 x i64] %310, float %309)
  store [2 x i64] %311, ptr %105, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %103, ptr %105, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %106, ptr %8, i64 12, i1 false)
  %312 = load [2 x i64], ptr %106, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %107, ptr %103, i64 12, i1 false)
  %313 = load [2 x i64], ptr %107, align 8
  %314 = call [2 x i64] @vec3_add([2 x i64] %312, [2 x i64] %313)
  store [2 x i64] %314, ptr %108, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %102, ptr %108, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %102, i64 12, i1 false)
  %315 = load ptr, ptr %27, align 8
  %316 = getelementptr inbounds %struct.float3, ptr %315, i32 11
  %317 = load float, ptr getelementptr inbounds ([7 x float], ptr @SH_C3, i32 0, i32 2), align 4
  %318 = load float, ptr %31, align 4
  %319 = fmul float %317, %318
  %320 = load float, ptr %56, align 4
  %321 = load float, ptr %54, align 4
  %322 = fneg float %321
  %323 = call float @llvm.fmuladd.f32(float 4.000000e+00, float %320, float %322)
  %324 = load float, ptr %55, align 4
  %325 = fsub float %323, %324
  %326 = fmul float %319, %325
  call void @llvm.memcpy.p0.p0.i64(ptr %111, ptr %316, i64 12, i1 false)
  %327 = load [2 x i64], ptr %111, align 8
  %328 = call [2 x i64] @vec3_mul_scalar([2 x i64] %327, float %326)
  store [2 x i64] %328, ptr %112, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %110, ptr %112, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %113, ptr %8, i64 12, i1 false)
  %329 = load [2 x i64], ptr %113, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %114, ptr %110, i64 12, i1 false)
  %330 = load [2 x i64], ptr %114, align 8
  %331 = call [2 x i64] @vec3_add([2 x i64] %329, [2 x i64] %330)
  store [2 x i64] %331, ptr %115, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %109, ptr %115, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %109, i64 12, i1 false)
  %332 = load ptr, ptr %27, align 8
  %333 = getelementptr inbounds %struct.float3, ptr %332, i32 12
  %334 = load float, ptr getelementptr inbounds ([7 x float], ptr @SH_C3, i32 0, i32 3), align 4
  %335 = load float, ptr %32, align 4
  %336 = fmul float %334, %335
  %337 = load float, ptr %56, align 4
  %338 = load float, ptr %54, align 4
  %339 = fmul float 3.000000e+00, %338
  %340 = fneg float %339
  %341 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %337, float %340)
  %342 = load float, ptr %55, align 4
  %343 = call float @llvm.fmuladd.f32(float -3.000000e+00, float %342, float %341)
  %344 = fmul float %336, %343
  call void @llvm.memcpy.p0.p0.i64(ptr %118, ptr %333, i64 12, i1 false)
  %345 = load [2 x i64], ptr %118, align 8
  %346 = call [2 x i64] @vec3_mul_scalar([2 x i64] %345, float %344)
  store [2 x i64] %346, ptr %119, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %117, ptr %119, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %120, ptr %8, i64 12, i1 false)
  %347 = load [2 x i64], ptr %120, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %121, ptr %117, i64 12, i1 false)
  %348 = load [2 x i64], ptr %121, align 8
  %349 = call [2 x i64] @vec3_add([2 x i64] %347, [2 x i64] %348)
  store [2 x i64] %349, ptr %122, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %116, ptr %122, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %116, i64 12, i1 false)
  %350 = load ptr, ptr %27, align 8
  %351 = getelementptr inbounds %struct.float3, ptr %350, i32 13
  %352 = load float, ptr getelementptr inbounds ([7 x float], ptr @SH_C3, i32 0, i32 4), align 4
  %353 = load float, ptr %30, align 4
  %354 = fmul float %352, %353
  %355 = load float, ptr %56, align 4
  %356 = load float, ptr %54, align 4
  %357 = fneg float %356
  %358 = call float @llvm.fmuladd.f32(float 4.000000e+00, float %355, float %357)
  %359 = load float, ptr %55, align 4
  %360 = fsub float %358, %359
  %361 = fmul float %354, %360
  call void @llvm.memcpy.p0.p0.i64(ptr %125, ptr %351, i64 12, i1 false)
  %362 = load [2 x i64], ptr %125, align 8
  %363 = call [2 x i64] @vec3_mul_scalar([2 x i64] %362, float %361)
  store [2 x i64] %363, ptr %126, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %124, ptr %126, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %127, ptr %8, i64 12, i1 false)
  %364 = load [2 x i64], ptr %127, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %128, ptr %124, i64 12, i1 false)
  %365 = load [2 x i64], ptr %128, align 8
  %366 = call [2 x i64] @vec3_add([2 x i64] %364, [2 x i64] %365)
  store [2 x i64] %366, ptr %129, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %123, ptr %129, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %123, i64 12, i1 false)
  %367 = load ptr, ptr %27, align 8
  %368 = getelementptr inbounds %struct.float3, ptr %367, i32 14
  %369 = load float, ptr getelementptr inbounds ([7 x float], ptr @SH_C3, i32 0, i32 5), align 4
  %370 = load float, ptr %32, align 4
  %371 = fmul float %369, %370
  %372 = load float, ptr %54, align 4
  %373 = load float, ptr %55, align 4
  %374 = fsub float %372, %373
  %375 = fmul float %371, %374
  call void @llvm.memcpy.p0.p0.i64(ptr %132, ptr %368, i64 12, i1 false)
  %376 = load [2 x i64], ptr %132, align 8
  %377 = call [2 x i64] @vec3_mul_scalar([2 x i64] %376, float %375)
  store [2 x i64] %377, ptr %133, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %131, ptr %133, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %134, ptr %8, i64 12, i1 false)
  %378 = load [2 x i64], ptr %134, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %135, ptr %131, i64 12, i1 false)
  %379 = load [2 x i64], ptr %135, align 8
  %380 = call [2 x i64] @vec3_add([2 x i64] %378, [2 x i64] %379)
  store [2 x i64] %380, ptr %136, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %130, ptr %136, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %130, i64 12, i1 false)
  %381 = load ptr, ptr %27, align 8
  %382 = getelementptr inbounds %struct.float3, ptr %381, i32 15
  %383 = load float, ptr getelementptr inbounds ([7 x float], ptr @SH_C3, i32 0, i32 6), align 4
  %384 = load float, ptr %30, align 4
  %385 = fmul float %383, %384
  %386 = load float, ptr %54, align 4
  %387 = load float, ptr %55, align 4
  %388 = call float @llvm.fmuladd.f32(float -3.000000e+00, float %387, float %386)
  %389 = fmul float %385, %388
  call void @llvm.memcpy.p0.p0.i64(ptr %139, ptr %382, i64 12, i1 false)
  %390 = load [2 x i64], ptr %139, align 8
  %391 = call [2 x i64] @vec3_mul_scalar([2 x i64] %390, float %389)
  store [2 x i64] %391, ptr %140, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %138, ptr %140, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %141, ptr %8, i64 12, i1 false)
  %392 = load [2 x i64], ptr %141, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %142, ptr %138, i64 12, i1 false)
  %393 = load [2 x i64], ptr %142, align 8
  %394 = call [2 x i64] @vec3_add([2 x i64] %392, [2 x i64] %393)
  store [2 x i64] %394, ptr %143, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %137, ptr %143, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %137, i64 12, i1 false)
  br label %395

395:                                              ; preds = %287, %212
  br label %396

396:                                              ; preds = %395, %176
  br label %397

397:                                              ; preds = %396, %7
  %398 = getelementptr inbounds %struct.float3, ptr %145, i32 0, i32 0
  store float 5.000000e-01, ptr %398, align 4
  %399 = getelementptr inbounds %struct.float3, ptr %145, i32 0, i32 1
  store float 5.000000e-01, ptr %399, align 4
  %400 = getelementptr inbounds %struct.float3, ptr %145, i32 0, i32 2
  store float 5.000000e-01, ptr %400, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr %146, ptr %8, i64 12, i1 false)
  %401 = load [2 x i64], ptr %146, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %147, ptr %145, i64 12, i1 false)
  %402 = load [2 x i64], ptr %147, align 8
  %403 = call [2 x i64] @vec3_add([2 x i64] %401, [2 x i64] %402)
  store [2 x i64] %403, ptr %148, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %144, ptr %148, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %144, i64 12, i1 false)
  %404 = getelementptr inbounds %struct.float3, ptr %8, i32 0, i32 0
  %405 = load float, ptr %404, align 4
  %406 = fcmp olt float %405, 0.000000e+00
  %407 = select i1 %406, i32 1, i32 0
  %408 = load ptr, ptr %16, align 8
  %409 = load i32, ptr %11, align 4
  %410 = mul nsw i32 %409, 3
  %411 = add nsw i32 %410, 0
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, ptr %408, i64 %412
  store i32 %407, ptr %413, align 4
  %414 = getelementptr inbounds %struct.float3, ptr %8, i32 0, i32 1
  %415 = load float, ptr %414, align 4
  %416 = fcmp olt float %415, 0.000000e+00
  %417 = select i1 %416, i32 1, i32 0
  %418 = load ptr, ptr %16, align 8
  %419 = load i32, ptr %11, align 4
  %420 = mul nsw i32 %419, 3
  %421 = add nsw i32 %420, 1
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, ptr %418, i64 %422
  store i32 %417, ptr %423, align 4
  %424 = getelementptr inbounds %struct.float3, ptr %8, i32 0, i32 2
  %425 = load float, ptr %424, align 4
  %426 = fcmp olt float %425, 0.000000e+00
  %427 = select i1 %426, i32 1, i32 0
  %428 = load ptr, ptr %16, align 8
  %429 = load i32, ptr %11, align 4
  %430 = mul nsw i32 %429, 3
  %431 = add nsw i32 %430, 2
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, ptr %428, i64 %432
  store i32 %427, ptr %433, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr %150, ptr %8, i64 12, i1 false)
  %434 = load [2 x i64], ptr %150, align 8
  %435 = call [2 x i64] @vec3_max_scalar([2 x i64] %434, float 0.000000e+00)
  store [2 x i64] %435, ptr %151, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %149, ptr %151, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %149, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %152, ptr %8, i64 12, i1 false)
  %436 = load [2 x i64], ptr %152, align 8
  ret [2 x i64] %436
}

; Function Attrs: noinline nounwind optnone uwtable
define internal [2 x i64] @vec3_sub([2 x i64] %0, [2 x i64] %1) #0 {
  %3 = alloca %struct.float3, align 4
  %4 = alloca %struct.float3, align 4
  %5 = alloca [2 x i64], align 8
  %6 = alloca %struct.float3, align 4
  %7 = alloca [2 x i64], align 8
  %8 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %4, ptr %5, i64 12, i1 false)
  store [2 x i64] %1, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %6, ptr %7, i64 12, i1 false)
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
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %3, i64 12, i1 false)
  %27 = load [2 x i64], ptr %8, align 8
  ret [2 x i64] %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal float @vec3_length([2 x i64] %0) #0 {
  %2 = alloca %struct.float3, align 4
  %3 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %2, ptr %3, i64 12, i1 false)
  %4 = getelementptr inbounds %struct.float3, ptr %2, i32 0, i32 0
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds %struct.float3, ptr %2, i32 0, i32 1
  %7 = load float, ptr %6, align 4
  %8 = fmul float %7, %7
  %9 = call float @llvm.fmuladd.f32(float %5, float %5, float %8)
  %10 = getelementptr inbounds %struct.float3, ptr %2, i32 0, i32 2
  %11 = load float, ptr %10, align 4
  %12 = call float @llvm.fmuladd.f32(float %11, float %11, float %9)
  %13 = fpext float %12 to double
  %14 = call double @sqrt(double %13)
  %15 = fptrunc double %14 to float
  ret float %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal [2 x i64] @vec3_div_scalar([2 x i64] %0, float noundef %1) #0 {
  %3 = alloca %struct.float3, align 4
  %4 = alloca %struct.float3, align 4
  %5 = alloca [2 x i64], align 8
  %6 = alloca float, align 4
  %7 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %4, ptr %5, i64 12, i1 false)
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
  call void @llvm.memcpy.p0.p0.i64(ptr %7, ptr %3, i64 12, i1 false)
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
  call void @llvm.memcpy.p0.p0.i64(ptr %4, ptr %5, i64 12, i1 false)
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
  call void @llvm.memcpy.p0.p0.i64(ptr %7, ptr %3, i64 12, i1 false)
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
  call void @llvm.memcpy.p0.p0.i64(ptr %4, ptr %5, i64 12, i1 false)
  store [2 x i64] %1, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %6, ptr %7, i64 12, i1 false)
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
  call void @llvm.memcpy.p0.p0.i64(ptr %8, ptr %3, i64 12, i1 false)
  %27 = load [2 x i64], ptr %8, align 8
  ret [2 x i64] %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal [2 x i64] @vec3_max_scalar([2 x i64] %0, float noundef %1) #0 {
  %3 = alloca %struct.float3, align 4
  %4 = alloca %struct.float3, align 4
  %5 = alloca [2 x i64], align 8
  %6 = alloca float, align 4
  %7 = alloca [2 x i64], align 8
  store [2 x i64] %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %4, ptr %5, i64 12, i1 false)
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
  call void @llvm.memcpy.p0.p0.i64(ptr %7, ptr %3, i64 12, i1 false)
  %32 = load [2 x i64], ptr %7, align 8
  ret [2 x i64] %32
}

; Function Attrs: noinline nounwind optnone uwtable
define void @preprocessCPU(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, ptr noundef %3, ptr noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef signext %15, i32 noundef signext %16, float noundef %17, float noundef %18, float noundef %19, float noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, [2 x i64] %27, ptr noundef %28, i32 noundef signext %29) #0 {
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
  %87 = alloca %struct.float3, align 4
  %88 = alloca %struct.float3, align 4
  %89 = alloca [2 x i64], align 8
  %90 = alloca [2 x i64], align 8
  store [2 x i64] %27, ptr %32, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %31, ptr %32, i64 12, i1 false)
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
  br label %91

91:                                               ; preds = %370, %30
  %92 = load i32, ptr %62, align 4
  %93 = load i32, ptr %33, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %373

95:                                               ; preds = %91
  %96 = load ptr, ptr %54, align 8
  %97 = load i32, ptr %62, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %96, i64 %98
  store i32 0, ptr %99, align 4
  %100 = load ptr, ptr %60, align 8
  %101 = load i32, ptr %62, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, ptr %100, i64 %102
  store i32 0, ptr %103, align 4
  %104 = load i32, ptr %62, align 4
  %105 = load ptr, ptr %36, align 8
  %106 = load ptr, ptr %45, align 8
  %107 = load ptr, ptr %46, align 8
  %108 = load i32, ptr %61, align 4
  %109 = call i32 @cpu_rasterizer_in_frustum(i32 %104, ptr %105, ptr %106, ptr %107, i32 %108, ptr %63)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %205, %185, %95
  br label %370

112:                                              ; preds = %95
  %113 = getelementptr inbounds %struct.float3, ptr %64, i32 0, i32 0
  %114 = load ptr, ptr %36, align 8
  %115 = load i32, ptr %62, align 4
  %116 = mul nsw i32 %115, 3
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, ptr %114, i64 %117
  %119 = load float, ptr %118, align 4
  store float %119, ptr %113, align 4
  %120 = getelementptr inbounds %struct.float3, ptr %64, i32 0, i32 1
  %121 = load ptr, ptr %36, align 8
  %122 = load i32, ptr %62, align 4
  %123 = mul nsw i32 %122, 3
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, ptr %121, i64 %125
  %127 = load float, ptr %126, align 4
  store float %127, ptr %120, align 4
  %128 = getelementptr inbounds %struct.float3, ptr %64, i32 0, i32 2
  %129 = load ptr, ptr %36, align 8
  %130 = load i32, ptr %62, align 4
  %131 = mul nsw i32 %130, 3
  %132 = add nsw i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, ptr %129, i64 %133
  %135 = load float, ptr %134, align 4
  store float %135, ptr %128, align 4
  %136 = load ptr, ptr %46, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %66, ptr %64, i64 12, i1 false)
  %137 = load [2 x i64], ptr %66, align 8
  %138 = call [2 x i64] @cpu_rasterizer_transformPoint4x4([2 x i64] %137, ptr %136)
  store [2 x i64] %138, ptr %65, align 4
  %139 = getelementptr inbounds %struct.float4, ptr %65, i32 0, i32 3
  %140 = load float, ptr %139, align 4
  %141 = fadd float %140, 0x3E7AD7F2A0000000
  %142 = fdiv float 1.000000e+00, %141
  store float %142, ptr %67, align 4
  %143 = getelementptr inbounds %struct.float3, ptr %68, i32 0, i32 0
  %144 = getelementptr inbounds %struct.float4, ptr %65, i32 0, i32 0
  %145 = load float, ptr %144, align 4
  %146 = load float, ptr %67, align 4
  %147 = fmul float %145, %146
  store float %147, ptr %143, align 4
  %148 = getelementptr inbounds %struct.float3, ptr %68, i32 0, i32 1
  %149 = getelementptr inbounds %struct.float4, ptr %65, i32 0, i32 1
  %150 = load float, ptr %149, align 4
  %151 = load float, ptr %67, align 4
  %152 = fmul float %150, %151
  store float %152, ptr %148, align 4
  %153 = getelementptr inbounds %struct.float3, ptr %68, i32 0, i32 2
  %154 = getelementptr inbounds %struct.float4, ptr %65, i32 0, i32 2
  %155 = load float, ptr %154, align 4
  %156 = load float, ptr %67, align 4
  %157 = fmul float %155, %156
  store float %157, ptr %153, align 4
  %158 = load ptr, ptr %43, align 8
  %159 = icmp ne ptr %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %112
  %161 = load ptr, ptr %43, align 8
  %162 = load i32, ptr %62, align 4
  %163 = mul nsw i32 %162, 6
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, ptr %161, i64 %164
  store ptr %165, ptr %69, align 8
  br label %185

166:                                              ; preds = %112
  %167 = load ptr, ptr %37, align 8
  %168 = load i32, ptr %62, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.float3, ptr %167, i64 %169
  %171 = load float, ptr %38, align 4
  %172 = load ptr, ptr %39, align 8
  %173 = getelementptr inbounds %struct.float4, ptr %172, i64 %169
  %174 = load ptr, ptr %57, align 8
  %175 = mul nsw i32 %168, 6
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, ptr %174, i64 %176
  call void @llvm.memcpy.p0.p0.i64(ptr %70, ptr %170, i64 12, i1 false)
  %178 = load [2 x i64], ptr %70, align 8
  %179 = load [2 x i64], ptr %173, align 4
  call void @computeCov3D([2 x i64] %178, float %171, [2 x i64] %179, ptr %177)
  %180 = load ptr, ptr %57, align 8
  %181 = load i32, ptr %62, align 4
  %182 = mul nsw i32 %181, 6
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, ptr %180, i64 %183
  store ptr %184, ptr %69, align 8
  br label %185

185:                                              ; preds = %160, %166
  %186 = load float, ptr %52, align 4
  %187 = load float, ptr %53, align 4
  %188 = load float, ptr %50, align 4
  %189 = load float, ptr %51, align 4
  %190 = load ptr, ptr %69, align 8
  %191 = load ptr, ptr %45, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %72, ptr %64, i64 12, i1 false)
  %192 = load [2 x i64], ptr %72, align 8
  %193 = call [2 x i64] @computeCov2D([2 x i64] %192, float %186, float %187, float %188, float %189, ptr %190, ptr %191)
  store [2 x i64] %193, ptr %73, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %71, ptr %73, i64 12, i1 false)
  %194 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 0
  %195 = load float, ptr %194, align 4
  %196 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 2
  %197 = load float, ptr %196, align 4
  %198 = getelementptr inbounds %struct.float3, ptr %71, i32 0, i32 1
  %199 = load float, ptr %198, align 4
  %200 = fmul float %199, %199
  %201 = fneg float %200
  %202 = call float @llvm.fmuladd.f32(float %195, float %197, float %201)
  store float %202, ptr %74, align 4
  %203 = load float, ptr %74, align 4
  %204 = fcmp oeq float %203, 0.000000e+00
  br i1 %204, label %111, label %205

205:                                              ; preds = %185
  %206 = load float, ptr %74, align 4
  %207 = fdiv float 1.000000e+00, %206
  store float %207, ptr %75, align 4
  %208 = getelementptr inbounds %struct.float3, ptr %76, i32 0, i32 0
  %209 = load float, ptr %196, align 4
  %210 = load float, ptr %75, align 4
  %211 = fmul float %209, %210
  store float %211, ptr %208, align 4
  %212 = getelementptr inbounds %struct.float3, ptr %76, i32 0, i32 1
  %213 = load float, ptr %198, align 4
  %214 = fneg float %213
  %215 = load float, ptr %75, align 4
  %216 = fmul float %214, %215
  store float %216, ptr %212, align 4
  %217 = getelementptr inbounds %struct.float3, ptr %76, i32 0, i32 2
  %218 = load float, ptr %194, align 4
  %219 = load float, ptr %75, align 4
  %220 = fmul float %218, %219
  store float %220, ptr %217, align 4
  %221 = load float, ptr %194, align 4
  %222 = load float, ptr %196, align 4
  %223 = fadd float %221, %222
  %224 = fmul float 5.000000e-01, %223
  store float %224, ptr %77, align 4
  %225 = load float, ptr %77, align 4
  %226 = load float, ptr %74, align 4
  %227 = fneg float %226
  %228 = call float @llvm.fmuladd.f32(float %225, float %225, float %227)
  store float %228, ptr %78, align 4
  %229 = load float, ptr %78, align 4
  %230 = fpext float %229 to double
  %231 = call double @llvm.maxnum.f64(double %230, double 0x3FB99999A0000000)
  %232 = fptrunc double %231 to float
  store float %232, ptr %78, align 4
  %233 = load float, ptr %78, align 4
  %234 = fpext float %233 to double
  %235 = call double @sqrt(double %234)
  %236 = fptrunc double %235 to float
  store float %236, ptr %79, align 4
  %237 = load float, ptr %77, align 4
  %238 = load float, ptr %79, align 4
  %239 = fadd float %237, %238
  store float %239, ptr %80, align 4
  %240 = load float, ptr %77, align 4
  %241 = load float, ptr %79, align 4
  %242 = fsub float %240, %241
  store float %242, ptr %81, align 4
  %243 = load float, ptr %80, align 4
  %244 = fpext float %243 to double
  %245 = load float, ptr %81, align 4
  %246 = fpext float %245 to double
  %247 = call double @llvm.maxnum.f64(double %244, double %246)
  %248 = call double @sqrt(double %247)
  %249 = fmul double 3.000000e+00, %248
  %250 = call double @llvm.ceil.f64(double %249)
  %251 = fptrunc double %250 to float
  store float %251, ptr %82, align 4
  %252 = getelementptr inbounds %struct.float2, ptr %83, i32 0, i32 0
  %253 = load float, ptr %143, align 4
  %254 = load i32, ptr %48, align 4
  %255 = call float @cpu_rasterizer_ndc2Pix(float %253, i32 %254)
  store float %255, ptr %252, align 4
  %256 = getelementptr inbounds %struct.float2, ptr %83, i32 0, i32 1
  %257 = load float, ptr %148, align 4
  %258 = load i32, ptr %49, align 4
  %259 = call float @cpu_rasterizer_ndc2Pix(float %257, i32 %258)
  store float %259, ptr %256, align 4
  %260 = load float, ptr %82, align 4
  %261 = fptosi float %260 to i32
  %262 = getelementptr inbounds { float, float }, ptr %83, i32 0, i32 0
  %263 = load float, ptr %262, align 4
  %264 = getelementptr inbounds { float, float }, ptr %83, i32 0, i32 1
  %265 = load float, ptr %264, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr %86, ptr %31, i64 12, i1 false)
  %266 = load [2 x i64], ptr %86, align 8
  call void @cpu_rasterizer_getRect(float %263, float %265, i32 %261, ptr %84, ptr %85, [2 x i64] %266)
  %267 = getelementptr inbounds %struct.uint2, ptr %85, i32 0, i32 0
  %268 = load i32, ptr %267, align 4
  %269 = getelementptr inbounds %struct.uint2, ptr %84, i32 0, i32 0
  %270 = load i32, ptr %269, align 4
  %271 = sub i32 %268, %270
  %272 = getelementptr inbounds %struct.uint2, ptr %85, i32 0, i32 1
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds %struct.uint2, ptr %84, i32 0, i32 1
  %275 = load i32, ptr %274, align 4
  %276 = sub i32 %273, %275
  %277 = mul i32 %271, %276
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %111, label %279

279:                                              ; preds = %205
  %280 = load ptr, ptr %44, align 8
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %316

282:                                              ; preds = %279
  %283 = load ptr, ptr %47, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %87, ptr %283, i64 12, i1 false)
  %284 = load i32, ptr %62, align 4
  %285 = load i32, ptr %34, align 4
  %286 = load i32, ptr %35, align 4
  %287 = load ptr, ptr %36, align 8
  %288 = load ptr, ptr %41, align 8
  %289 = load ptr, ptr %42, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %89, ptr %87, i64 12, i1 false)
  %290 = load [2 x i64], ptr %89, align 8
  %291 = call [2 x i64] @computeColorFromSH(i32 %284, i32 %285, i32 %286, ptr %287, [2 x i64] %290, ptr %288, ptr %289)
  store [2 x i64] %291, ptr %90, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %88, ptr %90, i64 12, i1 false)
  %292 = getelementptr inbounds %struct.float3, ptr %88, i32 0, i32 0
  %293 = load float, ptr %292, align 4
  %294 = load ptr, ptr %58, align 8
  %295 = load i32, ptr %62, align 4
  %296 = mul nsw i32 %295, 3
  %297 = add nsw i32 %296, 0
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, ptr %294, i64 %298
  store float %293, ptr %299, align 4
  %300 = getelementptr inbounds %struct.float3, ptr %88, i32 0, i32 1
  %301 = load float, ptr %300, align 4
  %302 = load ptr, ptr %58, align 8
  %303 = load i32, ptr %62, align 4
  %304 = mul nsw i32 %303, 3
  %305 = add nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, ptr %302, i64 %306
  store float %301, ptr %307, align 4
  %308 = getelementptr inbounds %struct.float3, ptr %88, i32 0, i32 2
  %309 = load float, ptr %308, align 4
  %310 = load ptr, ptr %58, align 8
  %311 = load i32, ptr %62, align 4
  %312 = mul nsw i32 %311, 3
  %313 = add nsw i32 %312, 2
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, ptr %310, i64 %314
  store float %309, ptr %315, align 4
  br label %316

316:                                              ; preds = %282, %279
  %317 = getelementptr inbounds %struct.float3, ptr %63, i32 0, i32 2
  %318 = load float, ptr %317, align 4
  %319 = load ptr, ptr %56, align 8
  %320 = load i32, ptr %62, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds float, ptr %319, i64 %321
  store float %318, ptr %322, align 4
  %323 = load float, ptr %82, align 4
  %324 = fptosi float %323 to i32
  %325 = load ptr, ptr %54, align 8
  %326 = load i32, ptr %62, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, ptr %325, i64 %327
  store i32 %324, ptr %328, align 4
  %329 = load ptr, ptr %55, align 8
  %330 = load i32, ptr %62, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.float2, ptr %329, i64 %331
  call void @llvm.memcpy.p0.p0.i64(ptr %332, ptr %83, i64 8, i1 false)
  %333 = load float, ptr %208, align 4
  %334 = load ptr, ptr %59, align 8
  %335 = load i32, ptr %62, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.float4, ptr %334, i64 %336
  %338 = getelementptr inbounds %struct.float4, ptr %337, i32 0, i32 0
  store float %333, ptr %338, align 4
  %339 = load float, ptr %212, align 4
  %340 = load ptr, ptr %59, align 8
  %341 = load i32, ptr %62, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.float4, ptr %340, i64 %342
  %344 = getelementptr inbounds %struct.float4, ptr %343, i32 0, i32 1
  store float %339, ptr %344, align 4
  %345 = load float, ptr %217, align 4
  %346 = load ptr, ptr %59, align 8
  %347 = load i32, ptr %62, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.float4, ptr %346, i64 %348
  %350 = getelementptr inbounds %struct.float4, ptr %349, i32 0, i32 2
  store float %345, ptr %350, align 4
  %351 = load ptr, ptr %40, align 8
  %352 = load i32, ptr %62, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds float, ptr %351, i64 %353
  %355 = load float, ptr %354, align 4
  %356 = load ptr, ptr %59, align 8
  %357 = getelementptr inbounds %struct.float4, ptr %356, i64 %353
  %358 = getelementptr inbounds %struct.float4, ptr %357, i32 0, i32 3
  store float %355, ptr %358, align 4
  %359 = load i32, ptr %272, align 4
  %360 = load i32, ptr %274, align 4
  %361 = sub i32 %359, %360
  %362 = load i32, ptr %267, align 4
  %363 = load i32, ptr %269, align 4
  %364 = sub i32 %362, %363
  %365 = mul i32 %361, %364
  %366 = load ptr, ptr %60, align 8
  %367 = load i32, ptr %62, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, ptr %366, i64 %368
  store i32 %365, ptr %369, align 4
  br label %370

370:                                              ; preds = %111, %316
  %371 = load i32, ptr %62, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, ptr %62, align 4
  br label %91, !llvm.loop !1

373:                                              ; preds = %91
  ret void
}

declare signext i32 @cpu_rasterizer_in_frustum(i32 noundef signext, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) #1

declare [2 x i64] @cpu_rasterizer_transformPoint4x4([2 x i64], ptr noundef) #1

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
  call void @llvm.memcpy.p0.p0.i64(ptr %5, ptr %6, i64 12, i1 false)
  store [2 x i64] %2, ptr %7, align 4
  store float %1, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  %27 = getelementptr inbounds [9 x float], ptr %10, i32 0, i32 0
  %28 = load float, ptr %8, align 4
  %29 = getelementptr inbounds %struct.float3, ptr %5, i32 0, i32 0
  %30 = load float, ptr %29, align 4
  %31 = fmul float %28, %30
  store float %31, ptr %27, align 4
  %32 = getelementptr inbounds float, ptr %27, i32 1
  store float 0.000000e+00, ptr %32, align 4
  %33 = getelementptr inbounds float, ptr %32, i32 1
  store float 0.000000e+00, ptr %33, align 4
  %34 = getelementptr inbounds float, ptr %33, i32 1
  store float 0.000000e+00, ptr %34, align 4
  %35 = getelementptr inbounds float, ptr %34, i32 1
  %36 = load float, ptr %8, align 4
  %37 = getelementptr inbounds %struct.float3, ptr %5, i32 0, i32 1
  %38 = load float, ptr %37, align 4
  %39 = fmul float %36, %38
  store float %39, ptr %35, align 4
  %40 = getelementptr inbounds float, ptr %35, i32 1
  store float 0.000000e+00, ptr %40, align 4
  %41 = getelementptr inbounds float, ptr %40, i32 1
  store float 0.000000e+00, ptr %41, align 4
  %42 = getelementptr inbounds float, ptr %41, i32 1
  store float 0.000000e+00, ptr %42, align 4
  %43 = getelementptr inbounds float, ptr %42, i32 1
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
  %56 = getelementptr inbounds [9 x float], ptr %15, i32 0, i32 0
  %57 = load float, ptr %12, align 4
  %58 = load float, ptr %13, align 4
  %59 = fmul float %58, %58
  %60 = call float @llvm.fmuladd.f32(float %57, float %57, float %59)
  %61 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %60, float 1.000000e+00)
  store float %61, ptr %56, align 4
  %62 = getelementptr inbounds float, ptr %56, i32 1
  %63 = load float, ptr %11, align 4
  %64 = load float, ptr %12, align 4
  %65 = load float, ptr %14, align 4
  %66 = load float, ptr %13, align 4
  %67 = fmul float %65, %66
  %68 = fneg float %67
  %69 = call float @llvm.fmuladd.f32(float %63, float %64, float %68)
  %70 = fmul float 2.000000e+00, %69
  store float %70, ptr %62, align 4
  %71 = getelementptr inbounds float, ptr %62, i32 1
  %72 = load float, ptr %11, align 4
  %73 = load float, ptr %13, align 4
  %74 = load float, ptr %14, align 4
  %75 = load float, ptr %12, align 4
  %76 = fmul float %74, %75
  %77 = call float @llvm.fmuladd.f32(float %72, float %73, float %76)
  %78 = fmul float 2.000000e+00, %77
  store float %78, ptr %71, align 4
  %79 = getelementptr inbounds float, ptr %71, i32 1
  %80 = load float, ptr %11, align 4
  %81 = load float, ptr %12, align 4
  %82 = load float, ptr %14, align 4
  %83 = load float, ptr %13, align 4
  %84 = fmul float %82, %83
  %85 = call float @llvm.fmuladd.f32(float %80, float %81, float %84)
  %86 = fmul float 2.000000e+00, %85
  store float %86, ptr %79, align 4
  %87 = getelementptr inbounds float, ptr %79, i32 1
  %88 = load float, ptr %11, align 4
  %89 = load float, ptr %13, align 4
  %90 = fmul float %89, %89
  %91 = call float @llvm.fmuladd.f32(float %88, float %88, float %90)
  %92 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %91, float 1.000000e+00)
  store float %92, ptr %87, align 4
  %93 = getelementptr inbounds float, ptr %87, i32 1
  %94 = load float, ptr %12, align 4
  %95 = load float, ptr %13, align 4
  %96 = load float, ptr %14, align 4
  %97 = load float, ptr %11, align 4
  %98 = fmul float %96, %97
  %99 = fneg float %98
  %100 = call float @llvm.fmuladd.f32(float %94, float %95, float %99)
  %101 = fmul float 2.000000e+00, %100
  store float %101, ptr %93, align 4
  %102 = getelementptr inbounds float, ptr %93, i32 1
  %103 = load float, ptr %11, align 4
  %104 = load float, ptr %13, align 4
  %105 = load float, ptr %14, align 4
  %106 = load float, ptr %12, align 4
  %107 = fmul float %105, %106
  %108 = fneg float %107
  %109 = call float @llvm.fmuladd.f32(float %103, float %104, float %108)
  %110 = fmul float 2.000000e+00, %109
  store float %110, ptr %102, align 4
  %111 = getelementptr inbounds float, ptr %102, i32 1
  %112 = load float, ptr %12, align 4
  %113 = load float, ptr %13, align 4
  %114 = load float, ptr %14, align 4
  %115 = load float, ptr %11, align 4
  %116 = fmul float %114, %115
  %117 = call float @llvm.fmuladd.f32(float %112, float %113, float %116)
  %118 = fmul float 2.000000e+00, %117
  store float %118, ptr %111, align 4
  %119 = getelementptr inbounds float, ptr %111, i32 1
  %120 = load float, ptr %11, align 4
  %121 = load float, ptr %12, align 4
  %122 = fmul float %121, %121
  %123 = call float @llvm.fmuladd.f32(float %120, float %120, float %122)
  %124 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %123, float 1.000000e+00)
  store float %124, ptr %119, align 4
  store i32 0, ptr %17, align 4
  br label %125

125:                                              ; preds = %169, %4
  %126 = load i32, ptr %17, align 4
  %127 = icmp slt i32 %126, 3
  br i1 %127, label %128, label %172

128:                                              ; preds = %125
  store i32 0, ptr %18, align 4
  br label %129

129:                                              ; preds = %165, %128
  %130 = load i32, ptr %18, align 4
  %131 = icmp slt i32 %130, 3
  br i1 %131, label %132, label %168

132:                                              ; preds = %129
  %133 = load i32, ptr %17, align 4
  %134 = mul nsw i32 %133, 3
  %135 = load i32, ptr %18, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [9 x float], ptr %16, i32 0, i64 %137
  store float 0.000000e+00, ptr %138, align 4
  store i32 0, ptr %19, align 4
  br label %139

139:                                              ; preds = %161, %132
  %140 = load i32, ptr %19, align 4
  %141 = icmp slt i32 %140, 3
  br i1 %141, label %142, label %164

142:                                              ; preds = %139
  %143 = load i32, ptr %17, align 4
  %144 = mul nsw i32 %143, 3
  %145 = load i32, ptr %19, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [9 x float], ptr %10, i32 0, i64 %147
  %149 = load float, ptr %148, align 4
  %150 = mul nsw i32 %145, 3
  %151 = load i32, ptr %18, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [9 x float], ptr %15, i32 0, i64 %153
  %155 = load float, ptr %154, align 4
  %156 = add nsw i32 %144, %151
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [9 x float], ptr %16, i32 0, i64 %157
  %159 = load float, ptr %158, align 4
  %160 = call float @llvm.fmuladd.f32(float %149, float %155, float %159)
  store float %160, ptr %158, align 4
  br label %161

161:                                              ; preds = %142
  %162 = load i32, ptr %19, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, ptr %19, align 4
  br label %139, !llvm.loop !1

164:                                              ; preds = %139
  br label %165

165:                                              ; preds = %164
  %166 = load i32, ptr %18, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %18, align 4
  br label %129, !llvm.loop !1

168:                                              ; preds = %129
  br label %169

169:                                              ; preds = %168
  %170 = load i32, ptr %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, ptr %17, align 4
  br label %125, !llvm.loop !1

172:                                              ; preds = %125
  store i32 0, ptr %21, align 4
  br label %173

173:                                              ; preds = %196, %172
  %174 = load i32, ptr %21, align 4
  %175 = icmp slt i32 %174, 3
  br i1 %175, label %176, label %199

176:                                              ; preds = %173
  store i32 0, ptr %22, align 4
  br label %177

177:                                              ; preds = %192, %176
  %178 = load i32, ptr %22, align 4
  %179 = icmp slt i32 %178, 3
  br i1 %179, label %180, label %195

180:                                              ; preds = %177
  %181 = load i32, ptr %22, align 4
  %182 = mul nsw i32 %181, 3
  %183 = load i32, ptr %21, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [9 x float], ptr %16, i32 0, i64 %185
  %187 = load float, ptr %186, align 4
  %188 = mul nsw i32 %183, 3
  %189 = add nsw i32 %188, %181
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [9 x float], ptr %20, i32 0, i64 %190
  store float %187, ptr %191, align 4
  br label %192

192:                                              ; preds = %180
  %193 = load i32, ptr %22, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, ptr %22, align 4
  br label %177, !llvm.loop !1

195:                                              ; preds = %177
  br label %196

196:                                              ; preds = %195
  %197 = load i32, ptr %21, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, ptr %21, align 4
  br label %173, !llvm.loop !1

199:                                              ; preds = %173
  store i32 0, ptr %24, align 4
  br label %200

200:                                              ; preds = %244, %199
  %201 = load i32, ptr %24, align 4
  %202 = icmp slt i32 %201, 3
  br i1 %202, label %203, label %247

203:                                              ; preds = %200
  store i32 0, ptr %25, align 4
  br label %204

204:                                              ; preds = %240, %203
  %205 = load i32, ptr %25, align 4
  %206 = icmp slt i32 %205, 3
  br i1 %206, label %207, label %243

207:                                              ; preds = %204
  %208 = load i32, ptr %24, align 4
  %209 = mul nsw i32 %208, 3
  %210 = load i32, ptr %25, align 4
  %211 = add nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [9 x float], ptr %23, i32 0, i64 %212
  store float 0.000000e+00, ptr %213, align 4
  store i32 0, ptr %26, align 4
  br label %214

214:                                              ; preds = %236, %207
  %215 = load i32, ptr %26, align 4
  %216 = icmp slt i32 %215, 3
  br i1 %216, label %217, label %239

217:                                              ; preds = %214
  %218 = load i32, ptr %24, align 4
  %219 = mul nsw i32 %218, 3
  %220 = load i32, ptr %26, align 4
  %221 = add nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [9 x float], ptr %20, i32 0, i64 %222
  %224 = load float, ptr %223, align 4
  %225 = mul nsw i32 %220, 3
  %226 = load i32, ptr %25, align 4
  %227 = add nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [9 x float], ptr %16, i32 0, i64 %228
  %230 = load float, ptr %229, align 4
  %231 = add nsw i32 %219, %226
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [9 x float], ptr %23, i32 0, i64 %232
  %234 = load float, ptr %233, align 4
  %235 = call float @llvm.fmuladd.f32(float %224, float %230, float %234)
  store float %235, ptr %233, align 4
  br label %236

236:                                              ; preds = %217
  %237 = load i32, ptr %26, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, ptr %26, align 4
  br label %214, !llvm.loop !1

239:                                              ; preds = %214
  br label %240

240:                                              ; preds = %239
  %241 = load i32, ptr %25, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, ptr %25, align 4
  br label %204, !llvm.loop !1

243:                                              ; preds = %204
  br label %244

244:                                              ; preds = %243
  %245 = load i32, ptr %24, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, ptr %24, align 4
  br label %200, !llvm.loop !1

247:                                              ; preds = %200
  %248 = getelementptr inbounds [9 x float], ptr %23, i32 0, i32 0
  %249 = load float, ptr %248, align 4
  %250 = load ptr, ptr %9, align 8
  store float %249, ptr %250, align 4
  %251 = getelementptr inbounds [9 x float], ptr %23, i32 0, i32 1
  %252 = load float, ptr %251, align 4
  %253 = load ptr, ptr %9, align 8
  %254 = getelementptr inbounds float, ptr %253, i32 1
  store float %252, ptr %254, align 4
  %255 = getelementptr inbounds [9 x float], ptr %23, i32 0, i32 2
  %256 = load float, ptr %255, align 4
  %257 = load ptr, ptr %9, align 8
  %258 = getelementptr inbounds float, ptr %257, i32 2
  store float %256, ptr %258, align 4
  %259 = getelementptr inbounds [9 x float], ptr %23, i32 0, i32 4
  %260 = load float, ptr %259, align 4
  %261 = load ptr, ptr %9, align 8
  %262 = getelementptr inbounds float, ptr %261, i32 3
  store float %260, ptr %262, align 4
  %263 = getelementptr inbounds [9 x float], ptr %23, i32 0, i32 5
  %264 = load float, ptr %263, align 4
  %265 = load ptr, ptr %9, align 8
  %266 = getelementptr inbounds float, ptr %265, i32 4
  store float %264, ptr %266, align 4
  %267 = getelementptr inbounds [9 x float], ptr %23, i32 0, i32 8
  %268 = load float, ptr %267, align 4
  %269 = load ptr, ptr %9, align 8
  %270 = getelementptr inbounds float, ptr %269, i32 5
  store float %268, ptr %270, align 4
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
  call void @llvm.memcpy.p0.p0.i64(ptr %9, ptr %10, i64 12, i1 false)
  store float %1, ptr %11, align 4
  store float %2, ptr %12, align 4
  store float %3, ptr %13, align 4
  store float %4, ptr %14, align 4
  store ptr %5, ptr %15, align 8
  store ptr %6, ptr %16, align 8
  %46 = load ptr, ptr %16, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %18, ptr %9, i64 12, i1 false)
  %47 = load [2 x i64], ptr %18, align 8
  %48 = call [2 x i64] @cpu_rasterizer_transformPoint4x3([2 x i64] %47, ptr %46)
  store [2 x i64] %48, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %17, ptr %19, i64 12, i1 false)
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
  %60 = load float, ptr %55, align 4
  %61 = fdiv float %59, %60
  store float %61, ptr %23, align 4
  %62 = load float, ptr %20, align 4
  %63 = fpext float %62 to double
  %64 = fneg float %62
  %65 = fpext float %64 to double
  %66 = load float, ptr %22, align 4
  %67 = fpext float %66 to double
  %68 = call double @llvm.maxnum.f64(double %65, double %67)
  %69 = call double @llvm.minnum.f64(double %63, double %68)
  %70 = load float, ptr %55, align 4
  %71 = fpext float %70 to double
  %72 = fmul double %69, %71
  %73 = fptrunc double %72 to float
  store float %73, ptr %53, align 4
  %74 = load float, ptr %21, align 4
  %75 = fpext float %74 to double
  %76 = fneg float %74
  %77 = fpext float %76 to double
  %78 = load float, ptr %23, align 4
  %79 = fpext float %78 to double
  %80 = call double @llvm.maxnum.f64(double %77, double %79)
  %81 = call double @llvm.minnum.f64(double %75, double %80)
  %82 = load float, ptr %55, align 4
  %83 = fpext float %82 to double
  %84 = fmul double %81, %83
  %85 = fptrunc double %84 to float
  store float %85, ptr %58, align 4
  %86 = getelementptr inbounds [9 x float], ptr %24, i32 0, i32 0
  %87 = load float, ptr %11, align 4
  %88 = load float, ptr %55, align 4
  %89 = fdiv float %87, %88
  store float %89, ptr %86, align 4
  %90 = getelementptr inbounds float, ptr %86, i32 1
  store float 0.000000e+00, ptr %90, align 4
  %91 = getelementptr inbounds float, ptr %90, i32 1
  %92 = load float, ptr %11, align 4
  %93 = load float, ptr %53, align 4
  %94 = fmul float %92, %93
  %95 = fneg float %94
  %96 = load float, ptr %55, align 4
  %97 = fmul float %96, %96
  %98 = fdiv float %95, %97
  store float %98, ptr %91, align 4
  %99 = getelementptr inbounds float, ptr %91, i32 1
  store float 0.000000e+00, ptr %99, align 4
  %100 = getelementptr inbounds float, ptr %99, i32 1
  %101 = load float, ptr %12, align 4
  %102 = load float, ptr %55, align 4
  %103 = fdiv float %101, %102
  store float %103, ptr %100, align 4
  %104 = getelementptr inbounds float, ptr %100, i32 1
  %105 = load float, ptr %12, align 4
  %106 = load float, ptr %58, align 4
  %107 = fmul float %105, %106
  %108 = fneg float %107
  %109 = load float, ptr %55, align 4
  %110 = fmul float %109, %109
  %111 = fdiv float %108, %110
  store float %111, ptr %104, align 4
  %112 = getelementptr inbounds float, ptr %104, i32 1
  store float 0.000000e+00, ptr %112, align 4
  %113 = getelementptr inbounds float, ptr %112, i32 1
  store float 0.000000e+00, ptr %113, align 4
  %114 = getelementptr inbounds float, ptr %113, i32 1
  store float 0.000000e+00, ptr %114, align 4
  %115 = getelementptr inbounds [9 x float], ptr %25, i32 0, i32 0
  %116 = load ptr, ptr %16, align 8
  %117 = load float, ptr %116, align 4
  store float %117, ptr %115, align 4
  %118 = getelementptr inbounds float, ptr %115, i32 1
  %119 = load ptr, ptr %16, align 8
  %120 = getelementptr inbounds float, ptr %119, i32 4
  %121 = load float, ptr %120, align 4
  store float %121, ptr %118, align 4
  %122 = getelementptr inbounds float, ptr %118, i32 1
  %123 = load ptr, ptr %16, align 8
  %124 = getelementptr inbounds float, ptr %123, i32 8
  %125 = load float, ptr %124, align 4
  store float %125, ptr %122, align 4
  %126 = getelementptr inbounds float, ptr %122, i32 1
  %127 = load ptr, ptr %16, align 8
  %128 = getelementptr inbounds float, ptr %127, i32 1
  %129 = load float, ptr %128, align 4
  store float %129, ptr %126, align 4
  %130 = getelementptr inbounds float, ptr %126, i32 1
  %131 = load ptr, ptr %16, align 8
  %132 = getelementptr inbounds float, ptr %131, i32 5
  %133 = load float, ptr %132, align 4
  store float %133, ptr %130, align 4
  %134 = getelementptr inbounds float, ptr %130, i32 1
  %135 = load ptr, ptr %16, align 8
  %136 = getelementptr inbounds float, ptr %135, i32 9
  %137 = load float, ptr %136, align 4
  store float %137, ptr %134, align 4
  %138 = getelementptr inbounds float, ptr %134, i32 1
  %139 = load ptr, ptr %16, align 8
  %140 = getelementptr inbounds float, ptr %139, i32 2
  %141 = load float, ptr %140, align 4
  store float %141, ptr %138, align 4
  %142 = getelementptr inbounds float, ptr %138, i32 1
  %143 = load ptr, ptr %16, align 8
  %144 = getelementptr inbounds float, ptr %143, i32 6
  %145 = load float, ptr %144, align 4
  store float %145, ptr %142, align 4
  %146 = getelementptr inbounds float, ptr %142, i32 1
  %147 = load ptr, ptr %16, align 8
  %148 = getelementptr inbounds float, ptr %147, i32 10
  %149 = load float, ptr %148, align 4
  store float %149, ptr %146, align 4
  store i32 0, ptr %27, align 4
  br label %150

150:                                              ; preds = %194, %7
  %151 = load i32, ptr %27, align 4
  %152 = icmp slt i32 %151, 3
  br i1 %152, label %153, label %197

153:                                              ; preds = %150
  store i32 0, ptr %28, align 4
  br label %154

154:                                              ; preds = %190, %153
  %155 = load i32, ptr %28, align 4
  %156 = icmp slt i32 %155, 3
  br i1 %156, label %157, label %193

157:                                              ; preds = %154
  %158 = load i32, ptr %27, align 4
  %159 = mul nsw i32 %158, 3
  %160 = load i32, ptr %28, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [9 x float], ptr %26, i32 0, i64 %162
  store float 0.000000e+00, ptr %163, align 4
  store i32 0, ptr %29, align 4
  br label %164

164:                                              ; preds = %186, %157
  %165 = load i32, ptr %29, align 4
  %166 = icmp slt i32 %165, 3
  br i1 %166, label %167, label %189

167:                                              ; preds = %164
  %168 = load i32, ptr %27, align 4
  %169 = mul nsw i32 %168, 3
  %170 = load i32, ptr %29, align 4
  %171 = add nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [9 x float], ptr %25, i32 0, i64 %172
  %174 = load float, ptr %173, align 4
  %175 = mul nsw i32 %170, 3
  %176 = load i32, ptr %28, align 4
  %177 = add nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [9 x float], ptr %24, i32 0, i64 %178
  %180 = load float, ptr %179, align 4
  %181 = add nsw i32 %169, %176
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [9 x float], ptr %26, i32 0, i64 %182
  %184 = load float, ptr %183, align 4
  %185 = call float @llvm.fmuladd.f32(float %174, float %180, float %184)
  store float %185, ptr %183, align 4
  br label %186

186:                                              ; preds = %167
  %187 = load i32, ptr %29, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, ptr %29, align 4
  br label %164, !llvm.loop !1

189:                                              ; preds = %164
  br label %190

190:                                              ; preds = %189
  %191 = load i32, ptr %28, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, ptr %28, align 4
  br label %154, !llvm.loop !1

193:                                              ; preds = %154
  br label %194

194:                                              ; preds = %193
  %195 = load i32, ptr %27, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, ptr %27, align 4
  br label %150, !llvm.loop !1

197:                                              ; preds = %150
  %198 = getelementptr inbounds [9 x float], ptr %30, i32 0, i32 0
  %199 = load ptr, ptr %15, align 8
  %200 = load float, ptr %199, align 4
  store float %200, ptr %198, align 4
  %201 = getelementptr inbounds float, ptr %198, i32 1
  %202 = load ptr, ptr %15, align 8
  %203 = getelementptr inbounds float, ptr %202, i32 1
  %204 = load float, ptr %203, align 4
  store float %204, ptr %201, align 4
  %205 = getelementptr inbounds float, ptr %201, i32 1
  %206 = load ptr, ptr %15, align 8
  %207 = getelementptr inbounds float, ptr %206, i32 2
  %208 = load float, ptr %207, align 4
  store float %208, ptr %205, align 4
  %209 = getelementptr inbounds float, ptr %205, i32 1
  %210 = load ptr, ptr %15, align 8
  %211 = getelementptr inbounds float, ptr %210, i32 1
  %212 = load float, ptr %211, align 4
  store float %212, ptr %209, align 4
  %213 = getelementptr inbounds float, ptr %209, i32 1
  %214 = load ptr, ptr %15, align 8
  %215 = getelementptr inbounds float, ptr %214, i32 3
  %216 = load float, ptr %215, align 4
  store float %216, ptr %213, align 4
  %217 = getelementptr inbounds float, ptr %213, i32 1
  %218 = load ptr, ptr %15, align 8
  %219 = getelementptr inbounds float, ptr %218, i32 4
  %220 = load float, ptr %219, align 4
  store float %220, ptr %217, align 4
  %221 = getelementptr inbounds float, ptr %217, i32 1
  %222 = load ptr, ptr %15, align 8
  %223 = getelementptr inbounds float, ptr %222, i32 2
  %224 = load float, ptr %223, align 4
  store float %224, ptr %221, align 4
  %225 = getelementptr inbounds float, ptr %221, i32 1
  %226 = load ptr, ptr %15, align 8
  %227 = getelementptr inbounds float, ptr %226, i32 4
  %228 = load float, ptr %227, align 4
  store float %228, ptr %225, align 4
  %229 = getelementptr inbounds float, ptr %225, i32 1
  %230 = load ptr, ptr %15, align 8
  %231 = getelementptr inbounds float, ptr %230, i32 5
  %232 = load float, ptr %231, align 4
  store float %232, ptr %229, align 4
  store i32 0, ptr %32, align 4
  br label %233

233:                                              ; preds = %256, %197
  %234 = load i32, ptr %32, align 4
  %235 = icmp slt i32 %234, 3
  br i1 %235, label %236, label %259

236:                                              ; preds = %233
  store i32 0, ptr %33, align 4
  br label %237

237:                                              ; preds = %252, %236
  %238 = load i32, ptr %33, align 4
  %239 = icmp slt i32 %238, 3
  br i1 %239, label %240, label %255

240:                                              ; preds = %237
  %241 = load i32, ptr %33, align 4
  %242 = mul nsw i32 %241, 3
  %243 = load i32, ptr %32, align 4
  %244 = add nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [9 x float], ptr %26, i32 0, i64 %245
  %247 = load float, ptr %246, align 4
  %248 = mul nsw i32 %243, 3
  %249 = add nsw i32 %248, %241
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [9 x float], ptr %31, i32 0, i64 %250
  store float %247, ptr %251, align 4
  br label %252

252:                                              ; preds = %240
  %253 = load i32, ptr %33, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, ptr %33, align 4
  br label %237, !llvm.loop !1

255:                                              ; preds = %237
  br label %256

256:                                              ; preds = %255
  %257 = load i32, ptr %32, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, ptr %32, align 4
  br label %233, !llvm.loop !1

259:                                              ; preds = %233
  store i32 0, ptr %35, align 4
  br label %260

260:                                              ; preds = %283, %259
  %261 = load i32, ptr %35, align 4
  %262 = icmp slt i32 %261, 3
  br i1 %262, label %263, label %286

263:                                              ; preds = %260
  store i32 0, ptr %36, align 4
  br label %264

264:                                              ; preds = %279, %263
  %265 = load i32, ptr %36, align 4
  %266 = icmp slt i32 %265, 3
  br i1 %266, label %267, label %282

267:                                              ; preds = %264
  %268 = load i32, ptr %36, align 4
  %269 = mul nsw i32 %268, 3
  %270 = load i32, ptr %35, align 4
  %271 = add nsw i32 %269, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [9 x float], ptr %30, i32 0, i64 %272
  %274 = load float, ptr %273, align 4
  %275 = mul nsw i32 %270, 3
  %276 = add nsw i32 %275, %268
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [9 x float], ptr %34, i32 0, i64 %277
  store float %274, ptr %278, align 4
  br label %279

279:                                              ; preds = %267
  %280 = load i32, ptr %36, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, ptr %36, align 4
  br label %264, !llvm.loop !1

282:                                              ; preds = %264
  br label %283

283:                                              ; preds = %282
  %284 = load i32, ptr %35, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, ptr %35, align 4
  br label %260, !llvm.loop !1

286:                                              ; preds = %260
  store i32 0, ptr %38, align 4
  br label %287

287:                                              ; preds = %331, %286
  %288 = load i32, ptr %38, align 4
  %289 = icmp slt i32 %288, 3
  br i1 %289, label %290, label %334

290:                                              ; preds = %287
  store i32 0, ptr %39, align 4
  br label %291

291:                                              ; preds = %327, %290
  %292 = load i32, ptr %39, align 4
  %293 = icmp slt i32 %292, 3
  br i1 %293, label %294, label %330

294:                                              ; preds = %291
  %295 = load i32, ptr %38, align 4
  %296 = mul nsw i32 %295, 3
  %297 = load i32, ptr %39, align 4
  %298 = add nsw i32 %296, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [9 x float], ptr %37, i32 0, i64 %299
  store float 0.000000e+00, ptr %300, align 4
  store i32 0, ptr %40, align 4
  br label %301

301:                                              ; preds = %323, %294
  %302 = load i32, ptr %40, align 4
  %303 = icmp slt i32 %302, 3
  br i1 %303, label %304, label %326

304:                                              ; preds = %301
  %305 = load i32, ptr %38, align 4
  %306 = mul nsw i32 %305, 3
  %307 = load i32, ptr %40, align 4
  %308 = add nsw i32 %306, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [9 x float], ptr %31, i32 0, i64 %309
  %311 = load float, ptr %310, align 4
  %312 = mul nsw i32 %307, 3
  %313 = load i32, ptr %39, align 4
  %314 = add nsw i32 %312, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [9 x float], ptr %34, i32 0, i64 %315
  %317 = load float, ptr %316, align 4
  %318 = add nsw i32 %306, %313
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [9 x float], ptr %37, i32 0, i64 %319
  %321 = load float, ptr %320, align 4
  %322 = call float @llvm.fmuladd.f32(float %311, float %317, float %321)
  store float %322, ptr %320, align 4
  br label %323

323:                                              ; preds = %304
  %324 = load i32, ptr %40, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, ptr %40, align 4
  br label %301, !llvm.loop !1

326:                                              ; preds = %301
  br label %327

327:                                              ; preds = %326
  %328 = load i32, ptr %39, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, ptr %39, align 4
  br label %291, !llvm.loop !1

330:                                              ; preds = %291
  br label %331

331:                                              ; preds = %330
  %332 = load i32, ptr %38, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, ptr %38, align 4
  br label %287, !llvm.loop !1

334:                                              ; preds = %287
  store i32 0, ptr %42, align 4
  br label %335

335:                                              ; preds = %379, %334
  %336 = load i32, ptr %42, align 4
  %337 = icmp slt i32 %336, 3
  br i1 %337, label %338, label %382

338:                                              ; preds = %335
  store i32 0, ptr %43, align 4
  br label %339

339:                                              ; preds = %375, %338
  %340 = load i32, ptr %43, align 4
  %341 = icmp slt i32 %340, 3
  br i1 %341, label %342, label %378

342:                                              ; preds = %339
  %343 = load i32, ptr %42, align 4
  %344 = mul nsw i32 %343, 3
  %345 = load i32, ptr %43, align 4
  %346 = add nsw i32 %344, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [9 x float], ptr %41, i32 0, i64 %347
  store float 0.000000e+00, ptr %348, align 4
  store i32 0, ptr %44, align 4
  br label %349

349:                                              ; preds = %371, %342
  %350 = load i32, ptr %44, align 4
  %351 = icmp slt i32 %350, 3
  br i1 %351, label %352, label %374

352:                                              ; preds = %349
  %353 = load i32, ptr %42, align 4
  %354 = mul nsw i32 %353, 3
  %355 = load i32, ptr %44, align 4
  %356 = add nsw i32 %354, %355
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [9 x float], ptr %37, i32 0, i64 %357
  %359 = load float, ptr %358, align 4
  %360 = mul nsw i32 %355, 3
  %361 = load i32, ptr %43, align 4
  %362 = add nsw i32 %360, %361
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [9 x float], ptr %26, i32 0, i64 %363
  %365 = load float, ptr %364, align 4
  %366 = add nsw i32 %354, %361
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [9 x float], ptr %41, i32 0, i64 %367
  %369 = load float, ptr %368, align 4
  %370 = call float @llvm.fmuladd.f32(float %359, float %365, float %369)
  store float %370, ptr %368, align 4
  br label %371

371:                                              ; preds = %352
  %372 = load i32, ptr %44, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, ptr %44, align 4
  br label %349, !llvm.loop !1

374:                                              ; preds = %349
  br label %375

375:                                              ; preds = %374
  %376 = load i32, ptr %43, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, ptr %43, align 4
  br label %339, !llvm.loop !1

378:                                              ; preds = %339
  br label %379

379:                                              ; preds = %378
  %380 = load i32, ptr %42, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, ptr %42, align 4
  br label %335, !llvm.loop !1

382:                                              ; preds = %335
  %383 = getelementptr inbounds [9 x float], ptr %41, i32 0, i32 0
  %384 = load float, ptr %383, align 4
  %385 = fadd float %384, 0x3FD3333340000000
  store float %385, ptr %383, align 4
  %386 = getelementptr inbounds [9 x float], ptr %41, i32 0, i32 4
  %387 = load float, ptr %386, align 4
  %388 = fadd float %387, 0x3FD3333340000000
  store float %388, ptr %386, align 4
  %389 = getelementptr inbounds %struct.float3, ptr %8, i32 0, i32 0
  %390 = load float, ptr %383, align 4
  store float %390, ptr %389, align 4
  %391 = getelementptr inbounds %struct.float3, ptr %8, i32 0, i32 1
  %392 = getelementptr inbounds [9 x float], ptr %41, i32 0, i32 1
  %393 = load float, ptr %392, align 4
  store float %393, ptr %391, align 4
  %394 = getelementptr inbounds %struct.float3, ptr %8, i32 0, i32 2
  %395 = load float, ptr %386, align 4
  store float %395, ptr %394, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr %45, ptr %8, i64 12, i1 false)
  %396 = load [2 x i64], ptr %45, align 8
  ret [2 x i64] %396
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

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

declare void @cpu_rasterizer_getRect(float, float, i32 noundef signext, ptr noundef, ptr noundef, [2 x i64]) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @renderCPU([2 x i64] %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr %13, ptr %14, i64 12, i1 false)
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

60:                                               ; preds = %270, %12
  %61 = load i32, ptr %28, align 4
  %62 = load i32, ptr %26, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %273

64:                                               ; preds = %60
  store i32 0, ptr %29, align 4
  br label %65

65:                                               ; preds = %266, %64
  %66 = load i32, ptr %29, align 4
  %67 = load i32, ptr %27, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %269

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
  %77 = load i32, ptr %70, align 4
  %78 = add i32 %77, 16
  %79 = load i32, ptr %17, align 4
  %80 = call i32 @min_int(i32 %78, i32 %79)
  store i32 %80, ptr %76, align 4
  %81 = getelementptr inbounds %struct.uint2, ptr %31, i32 0, i32 1
  %82 = load i32, ptr %73, align 4
  %83 = add i32 %82, 16
  %84 = load i32, ptr %18, align 4
  %85 = call i32 @min_int(i32 %83, i32 %84)
  store i32 %85, ptr %81, align 4
  %86 = load ptr, ptr %15, align 8
  %87 = load i32, ptr %28, align 4
  %88 = load i32, ptr %27, align 4
  %89 = mul i32 %87, %88
  %90 = load i32, ptr %29, align 4
  %91 = add i32 %89, %90
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.uint2, ptr %86, i64 %92
  call void @llvm.memcpy.p0.p0.i64(ptr %32, ptr %93, i64 8, i1 false)
  %94 = getelementptr inbounds %struct.uint2, ptr %32, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.uint2, ptr %32, i32 0, i32 0
  %97 = load i32, ptr %96, align 4
  %98 = sub i32 %95, %97
  store i32 %98, ptr %33, align 4
  %99 = load i32, ptr %73, align 4
  store i32 %99, ptr %34, align 4
  br label %100

100:                                              ; preds = %262, %69
  %101 = load i32, ptr %34, align 4
  %102 = load i32, ptr %81, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %265

104:                                              ; preds = %100
  %105 = load i32, ptr %70, align 4
  store i32 %105, ptr %35, align 4
  br label %106

106:                                              ; preds = %258, %104
  %107 = load i32, ptr %35, align 4
  %108 = load i32, ptr %76, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %261

110:                                              ; preds = %106
  %111 = load i32, ptr %17, align 4
  %112 = load i32, ptr %34, align 4
  %113 = mul i32 %111, %112
  %114 = load i32, ptr %35, align 4
  %115 = add i32 %113, %114
  store i32 %115, ptr %36, align 4
  %116 = getelementptr inbounds %struct.float2, ptr %37, i32 0, i32 0
  %117 = load i32, ptr %35, align 4
  %118 = uitofp i32 %117 to float
  store float %118, ptr %116, align 4
  %119 = getelementptr inbounds %struct.float2, ptr %37, i32 0, i32 1
  %120 = load i32, ptr %34, align 4
  %121 = uitofp i32 %120 to float
  store float %121, ptr %119, align 4
  store float 1.000000e+00, ptr %38, align 4
  store i32 0, ptr %39, align 4
  store i32 0, ptr %40, align 4
  call void @llvm.memset.p0.i64(ptr %41, i8 0, i64 12, i1 false)
  %122 = load i32, ptr %96, align 4
  store i32 %122, ptr %42, align 4
  br label %123

123:                                              ; preds = %218, %110
  %124 = load i32, ptr %42, align 4
  %125 = load i32, ptr %94, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %221

127:                                              ; preds = %123
  %128 = load i32, ptr %39, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %39, align 4
  %130 = load ptr, ptr %16, align 8
  %131 = load i32, ptr %42, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %130, i64 %132
  %134 = load i32, ptr %133, align 4
  store i32 %134, ptr %43, align 4
  %135 = load ptr, ptr %19, align 8
  %136 = load i32, ptr %43, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.float2, ptr %135, i64 %137
  call void @llvm.memcpy.p0.p0.i64(ptr %44, ptr %138, i64 8, i1 false)
  %139 = getelementptr inbounds %struct.float2, ptr %45, i32 0, i32 0
  %140 = getelementptr inbounds %struct.float2, ptr %44, i32 0, i32 0
  %141 = load float, ptr %140, align 4
  %142 = load float, ptr %116, align 4
  %143 = fsub float %141, %142
  store float %143, ptr %139, align 4
  %144 = getelementptr inbounds %struct.float2, ptr %45, i32 0, i32 1
  %145 = getelementptr inbounds %struct.float2, ptr %44, i32 0, i32 1
  %146 = load float, ptr %145, align 4
  %147 = load float, ptr %119, align 4
  %148 = fsub float %146, %147
  store float %148, ptr %144, align 4
  %149 = load ptr, ptr %21, align 8
  %150 = load i32, ptr %43, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.float4, ptr %149, i64 %151
  call void @llvm.memcpy.p0.p0.i64(ptr %46, ptr %152, i64 16, i1 false)
  %153 = getelementptr inbounds %struct.float4, ptr %46, i32 0, i32 0
  %154 = load float, ptr %153, align 4
  %155 = load float, ptr %139, align 4
  %156 = fmul float %154, %155
  %157 = getelementptr inbounds %struct.float4, ptr %46, i32 0, i32 2
  %158 = load float, ptr %157, align 4
  %159 = load float, ptr %144, align 4
  %160 = fmul float %158, %159
  %161 = fmul float %160, %159
  %162 = call float @llvm.fmuladd.f32(float %156, float %155, float %161)
  %163 = getelementptr inbounds %struct.float4, ptr %46, i32 0, i32 1
  %164 = load float, ptr %163, align 4
  %165 = fmul float %164, %155
  %166 = fmul float %165, %159
  %167 = fneg float %166
  %168 = call float @llvm.fmuladd.f32(float -5.000000e-01, float %162, float %167)
  store float %168, ptr %47, align 4
  %169 = load float, ptr %47, align 4
  %170 = fcmp ogt float %169, 0.000000e+00
  br i1 %170, label %171, label %172

171:                                              ; preds = %172, %127
  br label %218

172:                                              ; preds = %127
  %173 = getelementptr inbounds %struct.float4, ptr %46, i32 0, i32 3
  %174 = load float, ptr %173, align 4
  %175 = fpext float %174 to double
  %176 = load float, ptr %47, align 4
  %177 = fpext float %176 to double
  %178 = call double @exp(double %177)
  %179 = fmul double %175, %178
  %180 = call double @llvm.minnum.f64(double 0x3FEFAE1480000000, double %179)
  %181 = fptrunc double %180 to float
  store float %181, ptr %48, align 4
  %182 = load float, ptr %48, align 4
  %183 = fcmp olt float %182, 0x3F70101020000000
  br i1 %183, label %171, label %184

184:                                              ; preds = %172
  %185 = load float, ptr %38, align 4
  %186 = load float, ptr %48, align 4
  %187 = fsub float 1.000000e+00, %186
  %188 = fmul float %185, %187
  store float %188, ptr %49, align 4
  %189 = load float, ptr %49, align 4
  %190 = fcmp olt float %189, 0x3F1A36E2E0000000
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %221

192:                                              ; preds = %184
  store i32 0, ptr %50, align 4
  br label %193

193:                                              ; preds = %212, %192
  %194 = load i32, ptr %50, align 4
  %195 = icmp slt i32 %194, 3
  br i1 %195, label %196, label %215

196:                                              ; preds = %193
  %197 = load ptr, ptr %20, align 8
  %198 = load i32, ptr %43, align 4
  %199 = mul nsw i32 %198, 3
  %200 = load i32, ptr %50, align 4
  %201 = add nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, ptr %197, i64 %202
  %204 = load float, ptr %203, align 4
  %205 = load float, ptr %48, align 4
  %206 = fmul float %204, %205
  %207 = load float, ptr %38, align 4
  %208 = sext i32 %200 to i64
  %209 = getelementptr inbounds [3 x float], ptr %41, i32 0, i64 %208
  %210 = load float, ptr %209, align 4
  %211 = call float @llvm.fmuladd.f32(float %206, float %207, float %210)
  store float %211, ptr %209, align 4
  br label %212

212:                                              ; preds = %196
  %213 = load i32, ptr %50, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, ptr %50, align 4
  br label %193, !llvm.loop !1

215:                                              ; preds = %193
  %216 = load float, ptr %49, align 4
  store float %216, ptr %38, align 4
  %217 = load i32, ptr %39, align 4
  store i32 %217, ptr %40, align 4
  br label %218

218:                                              ; preds = %171, %215
  %219 = load i32, ptr %42, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, ptr %42, align 4
  br label %123, !llvm.loop !1

221:                                              ; preds = %191, %123
  %222 = load float, ptr %38, align 4
  %223 = load ptr, ptr %22, align 8
  %224 = load i32, ptr %36, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds float, ptr %223, i64 %225
  store float %222, ptr %226, align 4
  %227 = load i32, ptr %40, align 4
  %228 = load ptr, ptr %23, align 8
  %229 = load i32, ptr %36, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i32, ptr %228, i64 %230
  store i32 %227, ptr %231, align 4
  store i32 0, ptr %51, align 4
  br label %232

232:                                              ; preds = %254, %221
  %233 = load i32, ptr %51, align 4
  %234 = icmp slt i32 %233, 3
  br i1 %234, label %235, label %257

235:                                              ; preds = %232
  %236 = load i32, ptr %51, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [3 x float], ptr %41, i32 0, i64 %237
  %239 = load float, ptr %238, align 4
  %240 = load float, ptr %38, align 4
  %241 = load ptr, ptr %24, align 8
  %242 = getelementptr inbounds float, ptr %241, i64 %237
  %243 = load float, ptr %242, align 4
  %244 = call float @llvm.fmuladd.f32(float %240, float %243, float %239)
  %245 = load ptr, ptr %25, align 8
  %246 = load i32, ptr %18, align 4
  %247 = mul nsw i32 %236, %246
  %248 = load i32, ptr %17, align 4
  %249 = mul nsw i32 %247, %248
  %250 = load i32, ptr %36, align 4
  %251 = add i32 %249, %250
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds float, ptr %245, i64 %252
  store float %244, ptr %253, align 4
  br label %254

254:                                              ; preds = %235
  %255 = load i32, ptr %51, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, ptr %51, align 4
  br label %232, !llvm.loop !1

257:                                              ; preds = %232
  br label %258

258:                                              ; preds = %257
  %259 = load i32, ptr %35, align 4
  %260 = add i32 %259, 1
  store i32 %260, ptr %35, align 4
  br label %106, !llvm.loop !1

261:                                              ; preds = %106
  br label %262

262:                                              ; preds = %261
  %263 = load i32, ptr %34, align 4
  %264 = add i32 %263, 1
  store i32 %264, ptr %34, align 4
  br label %100, !llvm.loop !1

265:                                              ; preds = %100
  br label %266

266:                                              ; preds = %265
  %267 = load i32, ptr %29, align 4
  %268 = add i32 %267, 1
  store i32 %268, ptr %29, align 4
  br label %65, !llvm.loop !1

269:                                              ; preds = %65
  br label %270

270:                                              ; preds = %269
  %271 = load i32, ptr %28, align 4
  %272 = add i32 %271, 1
  store i32 %272, ptr %28, align 4
  br label %60, !llvm.loop !1

273:                                              ; preds = %60
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

; Function Attrs: nounwind
declare double @exp(double noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @cpu_rasterizer_render([2 x i64] %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr %13, ptr %14, i64 12, i1 false)
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
  call void @llvm.memcpy.p0.p0.i64(ptr %26, ptr %13, i64 12, i1 false)
  %38 = load [2 x i64], ptr %26, align 8
  call void @renderCPU([2 x i64] %38, ptr %27, ptr %28, i32 %29, i32 %30, ptr %31, ptr %32, ptr %33, ptr %34, ptr %35, ptr %36, ptr %37)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @cpu_rasterizer_preprocess(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, ptr noundef %3, ptr noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef signext %15, i32 noundef signext %16, float noundef %17, float noundef %18, float noundef %19, float noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, [2 x i64] %27, ptr noundef %28, i32 noundef signext %29) #0 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr %31, ptr %32, i64 12, i1 false)
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
  call void @llvm.memcpy.p0.p0.i64(ptr %62, ptr %31, i64 12, i1 false)
  %92 = load [2 x i64], ptr %62, align 8
  call void @preprocessCPU(i32 %63, i32 %64, i32 %65, ptr %66, ptr %67, float %68, ptr %69, ptr %70, ptr %71, ptr %72, ptr %73, ptr %74, ptr %75, ptr %76, ptr %77, i32 %78, i32 %79, float %80, float %81, float %82, float %83, ptr %84, ptr %85, ptr %86, ptr %87, ptr %88, ptr %89, [2 x i64] %92, ptr %90, i32 %91)
  ret void
}

declare [2 x i64] @cpu_rasterizer_transformPoint4x3([2 x i64], ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+zicsr,-e,-experimental-zacas,-experimental-zcmop,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-zimop,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-smaia,-smepmp,-ssaia,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.mustprogress"}
