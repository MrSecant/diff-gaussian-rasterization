#loop_annotation = #llvm.loop_annotation<mustProgress = true>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i64, dense<64> : vector<2xi64>>, #dlti.dl_entry<i128, dense<128> : vector<2xi64>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi64>>, #dlti.dl_entry<i1, dense<8> : vector<2xi64>>, #dlti.dl_entry<i8, dense<8> : vector<2xi64>>, #dlti.dl_entry<i16, dense<16> : vector<2xi64>>, #dlti.dl_entry<i32, dense<32> : vector<2xi64>>, #dlti.dl_entry<f16, dense<16> : vector<2xi64>>, #dlti.dl_entry<f64, dense<64> : vector<2xi64>>, #dlti.dl_entry<f128, dense<128> : vector<2xi64>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i64>, #dlti.dl_entry<"dlti.endianness", "little">>} {
  llvm.mlir.global external constant @SH_C0(0.282094806 : f32) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : f32
  llvm.mlir.global external constant @SH_C1(0.488602519 : f32) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : f32
  llvm.mlir.global external constant @SH_C2(dense<[1.09254849, -1.09254849, 0.31539157, -1.09254849, 0.546274245]> : tensor<5xf32>) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : !llvm.array<5 x f32>
  llvm.mlir.global external constant @SH_C3(dense<[-0.590043604, 2.89061141, -0.457045794, 0.373176336, -0.457045794, 1.44530571, -0.590043604]> : tensor<7xf32>) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : !llvm.array<7 x f32>
  llvm.func @computeColorFromSH(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: i32 {llvm.noundef, llvm.signext}, %arg2: i32 {llvm.noundef, llvm.signext}, %arg3: !llvm.ptr {llvm.noundef}, %arg4: !llvm.array<2 x i64>, %arg5: !llvm.ptr {llvm.noundef}, %arg6: !llvm.ptr {llvm.noundef}) -> !llvm.array<2 x i64> attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(0.282094806 : f32) : f32
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant(2 : i32) : i32
    %6 = llvm.mlir.constant(1 : i64) : i64
    %7 = llvm.mlir.constant(0.488602519 : f32) : f32
    %8 = llvm.mlir.constant(2 : i64) : i64
    %9 = llvm.mlir.constant(3 : i64) : i64
    %10 = llvm.mlir.constant(4 : i64) : i64
    %11 = llvm.mlir.constant(dense<[1.09254849, -1.09254849, 0.31539157, -1.09254849, 0.546274245]> : tensor<5xf32>) : !llvm.array<5 x f32>
    %12 = llvm.mlir.addressof @SH_C2 : !llvm.ptr
    %13 = llvm.mlir.constant(5 : i64) : i64
    %14 = llvm.getelementptr inbounds %12[%2, %6] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<5 x f32>
    %15 = llvm.mlir.constant(6 : i64) : i64
    %16 = llvm.getelementptr inbounds %12[%2, %8] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<5 x f32>
    %17 = llvm.mlir.constant(2.000000e+00 : f32) : f32
    %18 = llvm.mlir.constant(7 : i64) : i64
    %19 = llvm.getelementptr inbounds %12[%2, %9] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<5 x f32>
    %20 = llvm.mlir.constant(8 : i64) : i64
    %21 = llvm.getelementptr inbounds %12[%2, %10] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<5 x f32>
    %22 = llvm.mlir.constant(9 : i64) : i64
    %23 = llvm.mlir.constant(dense<[-0.590043604, 2.89061141, -0.457045794, 0.373176336, -0.457045794, 1.44530571, -0.590043604]> : tensor<7xf32>) : !llvm.array<7 x f32>
    %24 = llvm.mlir.addressof @SH_C3 : !llvm.ptr
    %25 = llvm.mlir.constant(3.000000e+00 : f32) : f32
    %26 = llvm.mlir.constant(10 : i64) : i64
    %27 = llvm.getelementptr inbounds %24[%2, %6] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<7 x f32>
    %28 = llvm.mlir.constant(11 : i64) : i64
    %29 = llvm.getelementptr inbounds %24[%2, %8] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<7 x f32>
    %30 = llvm.mlir.constant(4.000000e+00 : f32) : f32
    %31 = llvm.getelementptr inbounds %24[%2, %9] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<7 x f32>
    %32 = llvm.mlir.constant(-3.000000e+00 : f32) : f32
    %33 = llvm.mlir.constant(13 : i64) : i64
    %34 = llvm.getelementptr inbounds %24[%2, %10] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<7 x f32>
    %35 = llvm.mlir.constant(14 : i64) : i64
    %36 = llvm.getelementptr inbounds %24[%2, %13] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<7 x f32>
    %37 = llvm.mlir.constant(15 : i64) : i64
    %38 = llvm.getelementptr inbounds %24[%2, %15] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<7 x f32>
    %39 = llvm.mlir.constant(5.000000e-01 : f32) : f32
    %40 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %41 = llvm.mlir.constant(3 : i32) : i32
    %42 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %43 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %44 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %45 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %46 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %47 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %48 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %49 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %50 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %51 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %52 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %53 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %54 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %55 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %56 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %57 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %58 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %59 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %60 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %61 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %62 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %63 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %64 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %65 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %66 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %67 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %68 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %69 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %70 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %71 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %72 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %73 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %74 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %75 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %76 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %77 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %78 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %79 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %80 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %81 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %82 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %83 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %84 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %85 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %86 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %87 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %88 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %89 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %90 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %91 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %92 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %93 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %94 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %95 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %96 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %97 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %98 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %99 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %100 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %101 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %102 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %103 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %104 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %105 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %106 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %107 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %108 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %109 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %110 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %111 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %112 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %113 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %114 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %115 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %116 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %117 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %118 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %119 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %120 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %121 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %122 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %123 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %124 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %125 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %126 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %127 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %128 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %129 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %130 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %131 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %132 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %133 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %134 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %135 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %136 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %137 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %138 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %139 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %140 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %141 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %142 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %143 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %144 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %145 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %146 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %147 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %148 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %149 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %150 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %151 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %152 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %153 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %154 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %155 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %156 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %157 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %158 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %159 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %160 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %161 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %162 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %163 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %164 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %165 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %166 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %167 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %168 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %169 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %170 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %171 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %172 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %173 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %174 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %175 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %176 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %177 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %178 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %179 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %180 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %181 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %182 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %183 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %184 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %185 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %186 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg4, %44 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%43, %44, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg0, %45 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %46 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg2, %47 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg3, %48 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg5, %49 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg6, %50 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %187 = llvm.load %48 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %188 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %189 = llvm.sext %188 : i32 to i64
    %190 = llvm.getelementptr inbounds %187[%189] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    "llvm.intr.memcpy"(%51, %190, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%53, %51, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %191 = llvm.load %53 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%54, %43, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %192 = llvm.load %54 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %193 = llvm.call @vec3_sub(%191, %192) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %193, %55 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%52, %55, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%57, %52, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %194 = llvm.load %57 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %195 = llvm.call @vec3_length(%194) : (!llvm.array<2 x i64>) -> f32
    llvm.store %195, %56 {alignment = 4 : i64} : f32, !llvm.ptr
    %196 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> f32
    "llvm.intr.memcpy"(%59, %52, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %197 = llvm.load %59 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %198 = llvm.call @vec3_div_scalar(%197, %196) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %198, %60 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%58, %60, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%52, %58, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %199 = llvm.load %49 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %200 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %201 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> i32
    %202 = llvm.mul %200, %201 overflow<nsw>  : i32
    %203 = llvm.sext %202 : i32 to i64
    %204 = llvm.getelementptr inbounds %199[%203] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    llvm.store %204, %61 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %205 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %206 = llvm.getelementptr inbounds %205[%2] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    "llvm.intr.memcpy"(%62, %206, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %207 = llvm.load %62 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %208 = llvm.call @vec3_mul_scalar(%207, %3) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %208, %63 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%42, %63, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %209 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> i32
    %210 = llvm.icmp "sgt" %209, %4 : i32
    llvm.cond_br %210, ^bb1, ^bb6
  ^bb1:  // pred: ^bb0
    %211 = llvm.getelementptr inbounds %52[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %212 = llvm.load %211 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %212, %64 {alignment = 4 : i64} : f32, !llvm.ptr
    %213 = llvm.getelementptr inbounds %52[%4, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %214 = llvm.load %213 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %214, %65 {alignment = 4 : i64} : f32, !llvm.ptr
    %215 = llvm.getelementptr inbounds %52[%4, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %216 = llvm.load %215 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %216, %66 {alignment = 4 : i64} : f32, !llvm.ptr
    %217 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %218 = llvm.getelementptr inbounds %217[%6] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %219 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    %220 = llvm.fmul %7, %219  : f32
    "llvm.intr.memcpy"(%69, %218, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %221 = llvm.load %69 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %222 = llvm.call @vec3_mul_scalar(%221, %220) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %222, %70 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%68, %70, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%71, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %223 = llvm.load %71 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%72, %68, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %224 = llvm.load %72 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %225 = llvm.call @vec3_sub(%223, %224) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %225, %73 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%67, %73, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %67, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %226 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %227 = llvm.getelementptr inbounds %226[%8] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %228 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> f32
    %229 = llvm.fmul %7, %228  : f32
    "llvm.intr.memcpy"(%76, %227, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %230 = llvm.load %76 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %231 = llvm.call @vec3_mul_scalar(%230, %229) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %231, %77 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%75, %77, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%78, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %232 = llvm.load %78 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%79, %75, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %233 = llvm.load %79 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %234 = llvm.call @vec3_add(%232, %233) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %234, %80 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%74, %80, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %74, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %235 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %236 = llvm.getelementptr inbounds %235[%9] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %237 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> f32
    %238 = llvm.fmul %7, %237  : f32
    "llvm.intr.memcpy"(%83, %236, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %239 = llvm.load %83 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %240 = llvm.call @vec3_mul_scalar(%239, %238) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %240, %84 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%82, %84, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%85, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %241 = llvm.load %85 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%86, %82, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %242 = llvm.load %86 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %243 = llvm.call @vec3_sub(%241, %242) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %243, %87 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%81, %87, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %81, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %244 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> i32
    %245 = llvm.icmp "sgt" %244, %0 : i32
    llvm.cond_br %245, ^bb2, ^bb5
  ^bb2:  // pred: ^bb1
    %246 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> f32
    %247 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> f32
    %248 = llvm.fmul %246, %247  : f32
    llvm.store %248, %88 {alignment = 4 : i64} : f32, !llvm.ptr
    %249 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    %250 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    %251 = llvm.fmul %249, %250  : f32
    llvm.store %251, %89 {alignment = 4 : i64} : f32, !llvm.ptr
    %252 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> f32
    %253 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> f32
    %254 = llvm.fmul %252, %253  : f32
    llvm.store %254, %90 {alignment = 4 : i64} : f32, !llvm.ptr
    %255 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> f32
    %256 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    %257 = llvm.fmul %255, %256  : f32
    llvm.store %257, %91 {alignment = 4 : i64} : f32, !llvm.ptr
    %258 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    %259 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> f32
    %260 = llvm.fmul %258, %259  : f32
    llvm.store %260, %92 {alignment = 4 : i64} : f32, !llvm.ptr
    %261 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> f32
    %262 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> f32
    %263 = llvm.fmul %261, %262  : f32
    llvm.store %263, %93 {alignment = 4 : i64} : f32, !llvm.ptr
    %264 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %265 = llvm.getelementptr inbounds %264[%10] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %266 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> f32
    %267 = llvm.load %91 {alignment = 4 : i64} : !llvm.ptr -> f32
    %268 = llvm.fmul %266, %267  : f32
    "llvm.intr.memcpy"(%96, %265, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %269 = llvm.load %96 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %270 = llvm.call @vec3_mul_scalar(%269, %268) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %270, %97 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%95, %97, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%98, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %271 = llvm.load %98 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%99, %95, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %272 = llvm.load %99 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %273 = llvm.call @vec3_add(%271, %272) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %273, %100 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%94, %100, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %94, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %274 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %275 = llvm.getelementptr inbounds %274[%13] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %276 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %277 = llvm.load %92 {alignment = 4 : i64} : !llvm.ptr -> f32
    %278 = llvm.fmul %276, %277  : f32
    "llvm.intr.memcpy"(%103, %275, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %279 = llvm.load %103 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %280 = llvm.call @vec3_mul_scalar(%279, %278) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %280, %104 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%102, %104, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%105, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %281 = llvm.load %105 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%106, %102, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %282 = llvm.load %106 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %283 = llvm.call @vec3_add(%281, %282) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %283, %107 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%101, %107, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %101, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %284 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %285 = llvm.getelementptr inbounds %284[%15] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %286 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %287 = llvm.load %90 {alignment = 4 : i64} : !llvm.ptr -> f32
    %288 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> f32
    %289 = llvm.fneg %288  : f32
    %290 = llvm.intr.fmuladd(%17, %287, %289)  : (f32, f32, f32) -> f32
    %291 = llvm.load %89 {alignment = 4 : i64} : !llvm.ptr -> f32
    %292 = llvm.fsub %290, %291  : f32
    %293 = llvm.fmul %286, %292  : f32
    "llvm.intr.memcpy"(%110, %285, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %294 = llvm.load %110 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %295 = llvm.call @vec3_mul_scalar(%294, %293) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %295, %111 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%109, %111, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%112, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %296 = llvm.load %112 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%113, %109, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %297 = llvm.load %113 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %298 = llvm.call @vec3_add(%296, %297) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %298, %114 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%108, %114, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %108, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %299 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %300 = llvm.getelementptr inbounds %299[%18] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %301 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %302 = llvm.load %93 {alignment = 4 : i64} : !llvm.ptr -> f32
    %303 = llvm.fmul %301, %302  : f32
    "llvm.intr.memcpy"(%117, %300, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %304 = llvm.load %117 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %305 = llvm.call @vec3_mul_scalar(%304, %303) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %305, %118 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%116, %118, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%119, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %306 = llvm.load %119 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%120, %116, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %307 = llvm.load %120 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %308 = llvm.call @vec3_add(%306, %307) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %308, %121 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%115, %121, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %115, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %309 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %310 = llvm.getelementptr inbounds %309[%20] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %311 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> f32
    %312 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> f32
    %313 = llvm.load %89 {alignment = 4 : i64} : !llvm.ptr -> f32
    %314 = llvm.fsub %312, %313  : f32
    %315 = llvm.fmul %311, %314  : f32
    "llvm.intr.memcpy"(%124, %310, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %316 = llvm.load %124 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %317 = llvm.call @vec3_mul_scalar(%316, %315) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %317, %125 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%123, %125, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%126, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %318 = llvm.load %126 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%127, %123, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %319 = llvm.load %127 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %320 = llvm.call @vec3_add(%318, %319) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %320, %128 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%122, %128, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %122, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %321 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> i32
    %322 = llvm.icmp "sgt" %321, %5 : i32
    llvm.cond_br %322, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %323 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %324 = llvm.getelementptr inbounds %323[%22] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %325 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %326 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    %327 = llvm.fmul %325, %326  : f32
    %328 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> f32
    %329 = llvm.load %89 {alignment = 4 : i64} : !llvm.ptr -> f32
    %330 = llvm.fneg %329  : f32
    %331 = llvm.intr.fmuladd(%25, %328, %330)  : (f32, f32, f32) -> f32
    %332 = llvm.fmul %327, %331  : f32
    "llvm.intr.memcpy"(%131, %324, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %333 = llvm.load %131 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %334 = llvm.call @vec3_mul_scalar(%333, %332) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %334, %132 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%130, %132, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%133, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %335 = llvm.load %133 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%134, %130, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %336 = llvm.load %134 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %337 = llvm.call @vec3_add(%335, %336) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %337, %135 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%129, %135, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %129, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %338 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %339 = llvm.getelementptr inbounds %338[%26] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %340 = llvm.load %27 {alignment = 4 : i64} : !llvm.ptr -> f32
    %341 = llvm.load %91 {alignment = 4 : i64} : !llvm.ptr -> f32
    %342 = llvm.fmul %340, %341  : f32
    %343 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> f32
    %344 = llvm.fmul %342, %343  : f32
    "llvm.intr.memcpy"(%138, %339, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %345 = llvm.load %138 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %346 = llvm.call @vec3_mul_scalar(%345, %344) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %346, %139 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%137, %139, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%140, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %347 = llvm.load %140 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%141, %137, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %348 = llvm.load %141 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %349 = llvm.call @vec3_add(%347, %348) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %349, %142 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%136, %142, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %136, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %350 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %351 = llvm.getelementptr inbounds %350[%28] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %352 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> f32
    %353 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    %354 = llvm.fmul %352, %353  : f32
    %355 = llvm.load %90 {alignment = 4 : i64} : !llvm.ptr -> f32
    %356 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> f32
    %357 = llvm.fneg %356  : f32
    %358 = llvm.intr.fmuladd(%30, %355, %357)  : (f32, f32, f32) -> f32
    %359 = llvm.load %89 {alignment = 4 : i64} : !llvm.ptr -> f32
    %360 = llvm.fsub %358, %359  : f32
    %361 = llvm.fmul %354, %360  : f32
    "llvm.intr.memcpy"(%145, %351, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %362 = llvm.load %145 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %363 = llvm.call @vec3_mul_scalar(%362, %361) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %363, %146 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%144, %146, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%147, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %364 = llvm.load %147 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%148, %144, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %365 = llvm.load %148 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %366 = llvm.call @vec3_add(%364, %365) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %366, %149 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%143, %149, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %143, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %367 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %368 = llvm.getelementptr inbounds %367[%1] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %369 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> f32
    %370 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> f32
    %371 = llvm.fmul %369, %370  : f32
    %372 = llvm.load %90 {alignment = 4 : i64} : !llvm.ptr -> f32
    %373 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> f32
    %374 = llvm.fmul %25, %373  : f32
    %375 = llvm.fneg %374  : f32
    %376 = llvm.intr.fmuladd(%17, %372, %375)  : (f32, f32, f32) -> f32
    %377 = llvm.load %89 {alignment = 4 : i64} : !llvm.ptr -> f32
    %378 = llvm.intr.fmuladd(%32, %377, %376)  : (f32, f32, f32) -> f32
    %379 = llvm.fmul %371, %378  : f32
    "llvm.intr.memcpy"(%152, %368, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %380 = llvm.load %152 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %381 = llvm.call @vec3_mul_scalar(%380, %379) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %381, %153 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%151, %153, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%154, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %382 = llvm.load %154 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%155, %151, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %383 = llvm.load %155 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %384 = llvm.call @vec3_add(%382, %383) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %384, %156 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%150, %156, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %150, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %385 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %386 = llvm.getelementptr inbounds %385[%33] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %387 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> f32
    %388 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> f32
    %389 = llvm.fmul %387, %388  : f32
    %390 = llvm.load %90 {alignment = 4 : i64} : !llvm.ptr -> f32
    %391 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> f32
    %392 = llvm.fneg %391  : f32
    %393 = llvm.intr.fmuladd(%30, %390, %392)  : (f32, f32, f32) -> f32
    %394 = llvm.load %89 {alignment = 4 : i64} : !llvm.ptr -> f32
    %395 = llvm.fsub %393, %394  : f32
    %396 = llvm.fmul %389, %395  : f32
    "llvm.intr.memcpy"(%159, %386, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %397 = llvm.load %159 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %398 = llvm.call @vec3_mul_scalar(%397, %396) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %398, %160 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%158, %160, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%161, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %399 = llvm.load %161 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%162, %158, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %400 = llvm.load %162 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %401 = llvm.call @vec3_add(%399, %400) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %401, %163 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%157, %163, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %157, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %402 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %403 = llvm.getelementptr inbounds %402[%35] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %404 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> f32
    %405 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> f32
    %406 = llvm.fmul %404, %405  : f32
    %407 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> f32
    %408 = llvm.load %89 {alignment = 4 : i64} : !llvm.ptr -> f32
    %409 = llvm.fsub %407, %408  : f32
    %410 = llvm.fmul %406, %409  : f32
    "llvm.intr.memcpy"(%166, %403, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %411 = llvm.load %166 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %412 = llvm.call @vec3_mul_scalar(%411, %410) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %412, %167 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%165, %167, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%168, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %413 = llvm.load %168 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%169, %165, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %414 = llvm.load %169 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %415 = llvm.call @vec3_add(%413, %414) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %415, %170 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%164, %170, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %164, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %416 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %417 = llvm.getelementptr inbounds %416[%37] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %418 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> f32
    %419 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> f32
    %420 = llvm.fmul %418, %419  : f32
    %421 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> f32
    %422 = llvm.load %89 {alignment = 4 : i64} : !llvm.ptr -> f32
    %423 = llvm.intr.fmuladd(%32, %422, %421)  : (f32, f32, f32) -> f32
    %424 = llvm.fmul %420, %423  : f32
    "llvm.intr.memcpy"(%173, %417, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %425 = llvm.load %173 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %426 = llvm.call @vec3_mul_scalar(%425, %424) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %426, %174 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%172, %174, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%175, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %427 = llvm.load %175 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%176, %172, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %428 = llvm.load %176 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %429 = llvm.call @vec3_add(%427, %428) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %429, %177 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%171, %177, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %171, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb2, ^bb3
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb1, ^bb4
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb0, ^bb5
    %430 = llvm.getelementptr inbounds %179[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    llvm.store %39, %430 {alignment = 4 : i64} : f32, !llvm.ptr
    %431 = llvm.getelementptr inbounds %179[%4, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    llvm.store %39, %431 {alignment = 4 : i64} : f32, !llvm.ptr
    %432 = llvm.getelementptr inbounds %179[%4, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    llvm.store %39, %432 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%180, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %433 = llvm.load %180 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%181, %179, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %434 = llvm.load %181 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %435 = llvm.call @vec3_add(%433, %434) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %435, %182 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%178, %182, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %178, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %436 = llvm.getelementptr inbounds %42[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %437 = llvm.load %436 {alignment = 4 : i64} : !llvm.ptr -> f32
    %438 = llvm.fcmp "olt" %437, %40 : f32
    %439 = llvm.zext %438 : i1 to i64
    %440 = llvm.select %438, %0, %4 : i1, i32
    %441 = llvm.load %50 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %442 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %443 = llvm.mul %41, %442 overflow<nsw>  : i32
    %444 = llvm.add %443, %4 overflow<nsw>  : i32
    %445 = llvm.sext %444 : i32 to i64
    %446 = llvm.getelementptr inbounds %441[%445] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %440, %446 {alignment = 4 : i64} : i32, !llvm.ptr
    %447 = llvm.getelementptr inbounds %42[%4, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %448 = llvm.load %447 {alignment = 4 : i64} : !llvm.ptr -> f32
    %449 = llvm.fcmp "olt" %448, %40 : f32
    %450 = llvm.zext %449 : i1 to i64
    %451 = llvm.select %449, %0, %4 : i1, i32
    %452 = llvm.load %50 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %453 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %454 = llvm.mul %41, %453 overflow<nsw>  : i32
    %455 = llvm.add %454, %0 overflow<nsw>  : i32
    %456 = llvm.sext %455 : i32 to i64
    %457 = llvm.getelementptr inbounds %452[%456] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %451, %457 {alignment = 4 : i64} : i32, !llvm.ptr
    %458 = llvm.getelementptr inbounds %42[%4, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %459 = llvm.load %458 {alignment = 4 : i64} : !llvm.ptr -> f32
    %460 = llvm.fcmp "olt" %459, %40 : f32
    %461 = llvm.zext %460 : i1 to i64
    %462 = llvm.select %460, %0, %4 : i1, i32
    %463 = llvm.load %50 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %464 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %465 = llvm.mul %41, %464 overflow<nsw>  : i32
    %466 = llvm.add %465, %5 overflow<nsw>  : i32
    %467 = llvm.sext %466 : i32 to i64
    %468 = llvm.getelementptr inbounds %463[%467] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %462, %468 {alignment = 4 : i64} : i32, !llvm.ptr
    "llvm.intr.memcpy"(%184, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %469 = llvm.load %184 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %470 = llvm.call @vec3_max_scalar(%469, %40) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %470, %185 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%183, %185, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%42, %183, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%186, %42, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %471 = llvm.load %186 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %471 : !llvm.array<2 x i64>
  }
  llvm.func internal @vec3_sub(%arg0: !llvm.array<2 x i64>, %arg1: !llvm.array<2 x i64>) -> !llvm.array<2 x i64> attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %6 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%5, %6, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %8 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%7, %8, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %10 = llvm.getelementptr inbounds %4[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %11 = llvm.getelementptr inbounds %5[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %12 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %13 = llvm.getelementptr inbounds %7[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %14 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %15 = llvm.fsub %12, %14  : f32
    llvm.store %15, %10 {alignment = 4 : i64} : f32, !llvm.ptr
    %16 = llvm.getelementptr inbounds %4[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %17 = llvm.getelementptr inbounds %5[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %18 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> f32
    %19 = llvm.getelementptr inbounds %7[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %20 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %21 = llvm.fsub %18, %20  : f32
    llvm.store %21, %16 {alignment = 4 : i64} : f32, !llvm.ptr
    %22 = llvm.getelementptr inbounds %4[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %23 = llvm.getelementptr inbounds %5[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %24 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %25 = llvm.getelementptr inbounds %7[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %26 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> f32
    %27 = llvm.fsub %24, %26  : f32
    llvm.store %27, %22 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%9, %4, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %28 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %28 : !llvm.array<2 x i64>
  }
  llvm.func internal @vec3_length(%arg0: !llvm.array<2 x i64>) -> f32 attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %5 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%4, %5, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %6 = llvm.getelementptr inbounds %4[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %7 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> f32
    %8 = llvm.getelementptr inbounds %4[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %9 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> f32
    %10 = llvm.getelementptr inbounds %4[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %11 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> f32
    %12 = llvm.getelementptr inbounds %4[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %13 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> f32
    %14 = llvm.fmul %11, %13  : f32
    %15 = llvm.intr.fmuladd(%7, %9, %14)  : (f32, f32, f32) -> f32
    %16 = llvm.getelementptr inbounds %4[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %17 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %18 = llvm.getelementptr inbounds %4[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %19 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> f32
    %20 = llvm.intr.fmuladd(%17, %19, %15)  : (f32, f32, f32) -> f32
    %21 = llvm.fpext %20 : f32 to f64
    %22 = llvm.call @sqrt(%21) : (f64) -> f64
    %23 = llvm.fptrunc %22 : f64 to f32
    llvm.return %23 : f32
  }
  llvm.func internal @vec3_div_scalar(%arg0: !llvm.array<2 x i64>, %arg1: f32 {llvm.noundef}) -> !llvm.array<2 x i64> attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %6 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%5, %6, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %7 {alignment = 4 : i64} : f32, !llvm.ptr
    %9 = llvm.getelementptr inbounds %4[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %10 = llvm.getelementptr inbounds %5[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %11 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> f32
    %12 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> f32
    %13 = llvm.fdiv %11, %12  : f32
    llvm.store %13, %9 {alignment = 4 : i64} : f32, !llvm.ptr
    %14 = llvm.getelementptr inbounds %4[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %15 = llvm.getelementptr inbounds %5[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %16 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %17 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> f32
    %18 = llvm.fdiv %16, %17  : f32
    llvm.store %18, %14 {alignment = 4 : i64} : f32, !llvm.ptr
    %19 = llvm.getelementptr inbounds %4[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %20 = llvm.getelementptr inbounds %5[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %21 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> f32
    %22 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> f32
    %23 = llvm.fdiv %21, %22  : f32
    llvm.store %23, %19 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%8, %4, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %24 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %24 : !llvm.array<2 x i64>
  }
  llvm.func internal @vec3_mul_scalar(%arg0: !llvm.array<2 x i64>, %arg1: f32 {llvm.noundef}) -> !llvm.array<2 x i64> attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %6 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%5, %6, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %7 {alignment = 4 : i64} : f32, !llvm.ptr
    %9 = llvm.getelementptr inbounds %4[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %10 = llvm.getelementptr inbounds %5[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %11 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> f32
    %12 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> f32
    %13 = llvm.fmul %11, %12  : f32
    llvm.store %13, %9 {alignment = 4 : i64} : f32, !llvm.ptr
    %14 = llvm.getelementptr inbounds %4[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %15 = llvm.getelementptr inbounds %5[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %16 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %17 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> f32
    %18 = llvm.fmul %16, %17  : f32
    llvm.store %18, %14 {alignment = 4 : i64} : f32, !llvm.ptr
    %19 = llvm.getelementptr inbounds %4[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %20 = llvm.getelementptr inbounds %5[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %21 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> f32
    %22 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> f32
    %23 = llvm.fmul %21, %22  : f32
    llvm.store %23, %19 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%8, %4, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %24 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %24 : !llvm.array<2 x i64>
  }
  llvm.func internal @vec3_add(%arg0: !llvm.array<2 x i64>, %arg1: !llvm.array<2 x i64>) -> !llvm.array<2 x i64> attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %6 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%5, %6, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %8 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%7, %8, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %10 = llvm.getelementptr inbounds %4[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %11 = llvm.getelementptr inbounds %5[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %12 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %13 = llvm.getelementptr inbounds %7[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %14 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %15 = llvm.fadd %12, %14  : f32
    llvm.store %15, %10 {alignment = 4 : i64} : f32, !llvm.ptr
    %16 = llvm.getelementptr inbounds %4[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %17 = llvm.getelementptr inbounds %5[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %18 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> f32
    %19 = llvm.getelementptr inbounds %7[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %20 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %21 = llvm.fadd %18, %20  : f32
    llvm.store %21, %16 {alignment = 4 : i64} : f32, !llvm.ptr
    %22 = llvm.getelementptr inbounds %4[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %23 = llvm.getelementptr inbounds %5[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %24 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %25 = llvm.getelementptr inbounds %7[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %26 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> f32
    %27 = llvm.fadd %24, %26  : f32
    llvm.store %27, %22 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%9, %4, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %28 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %28 : !llvm.array<2 x i64>
  }
  llvm.func internal @vec3_max_scalar(%arg0: !llvm.array<2 x i64>, %arg1: f32 {llvm.noundef}) -> !llvm.array<2 x i64> attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %6 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%5, %6, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %7 {alignment = 4 : i64} : f32, !llvm.ptr
    %9 = llvm.getelementptr inbounds %4[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %10 = llvm.getelementptr inbounds %5[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %11 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> f32
    %12 = llvm.fpext %11 : f32 to f64
    %13 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> f32
    %14 = llvm.fpext %13 : f32 to f64
    %15 = llvm.intr.maxnum(%12, %14)  : (f64, f64) -> f64
    %16 = llvm.fptrunc %15 : f64 to f32
    llvm.store %16, %9 {alignment = 4 : i64} : f32, !llvm.ptr
    %17 = llvm.getelementptr inbounds %4[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %18 = llvm.getelementptr inbounds %5[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %19 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> f32
    %20 = llvm.fpext %19 : f32 to f64
    %21 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> f32
    %22 = llvm.fpext %21 : f32 to f64
    %23 = llvm.intr.maxnum(%20, %22)  : (f64, f64) -> f64
    %24 = llvm.fptrunc %23 : f64 to f32
    llvm.store %24, %17 {alignment = 4 : i64} : f32, !llvm.ptr
    %25 = llvm.getelementptr inbounds %4[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %26 = llvm.getelementptr inbounds %5[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %27 = llvm.load %26 {alignment = 4 : i64} : !llvm.ptr -> f32
    %28 = llvm.fpext %27 : f32 to f64
    %29 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> f32
    %30 = llvm.fpext %29 : f32 to f64
    %31 = llvm.intr.maxnum(%28, %30)  : (f64, f64) -> f64
    %32 = llvm.fptrunc %31 : f64 to f32
    llvm.store %32, %25 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%8, %4, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %33 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %33 : !llvm.array<2 x i64>
  }
  llvm.func @preprocessCPU(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: i32 {llvm.noundef, llvm.signext}, %arg2: i32 {llvm.noundef, llvm.signext}, %arg3: !llvm.ptr {llvm.noundef}, %arg4: !llvm.ptr {llvm.noundef}, %arg5: f32 {llvm.noundef}, %arg6: !llvm.ptr {llvm.noundef}, %arg7: !llvm.ptr {llvm.noundef}, %arg8: !llvm.ptr {llvm.noundef}, %arg9: !llvm.ptr {llvm.noundef}, %arg10: !llvm.ptr {llvm.noundef}, %arg11: !llvm.ptr {llvm.noundef}, %arg12: !llvm.ptr {llvm.noundef}, %arg13: !llvm.ptr {llvm.noundef}, %arg14: !llvm.ptr {llvm.noundef}, %arg15: i32 {llvm.noundef, llvm.signext}, %arg16: i32 {llvm.noundef, llvm.signext}, %arg17: f32 {llvm.noundef}, %arg18: f32 {llvm.noundef}, %arg19: f32 {llvm.noundef}, %arg20: f32 {llvm.noundef}, %arg21: !llvm.ptr {llvm.noundef}, %arg22: !llvm.ptr {llvm.noundef}, %arg23: !llvm.ptr {llvm.noundef}, %arg24: !llvm.ptr {llvm.noundef}, %arg25: !llvm.ptr {llvm.noundef}, %arg26: !llvm.ptr {llvm.noundef}, %arg27: !llvm.array<2 x i64>, %arg28: !llvm.ptr {llvm.noundef}, %arg29: i32 {llvm.noundef, llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(3 : i32) : i32
    %4 = llvm.mlir.constant(2 : i32) : i32
    %5 = llvm.mlir.constant(1.000000e-07 : f32) : f32
    %6 = llvm.mlir.constant(1.000000e+00 : f32) : f32
    %7 = llvm.mlir.zero : !llvm.ptr
    %8 = llvm.mlir.constant(6 : i32) : i32
    %9 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %10 = llvm.mlir.constant(5.000000e-01 : f32) : f32
    %11 = llvm.mlir.constant(0.10000000149011612 : f64) : f64
    %12 = llvm.mlir.constant(3.000000e+00 : f64) : f64
    %13 = llvm.mlir.constant(8 : i64) : i64
    %14 = llvm.alloca %0 x !llvm.struct<"struct.dim3", (i32, i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %24 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %25 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %26 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %27 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %28 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %29 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %30 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %31 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %32 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %33 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %34 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %35 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %36 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %37 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %38 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %39 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %40 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %41 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %42 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %43 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %44 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %45 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %46 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %47 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %48 = llvm.alloca %0 x !llvm.struct<"struct.float4", (f32, f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %49 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %50 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %51 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %52 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %53 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %54 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %55 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %56 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %57 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %58 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %59 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %60 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %61 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %62 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %63 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %64 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %65 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %66 = llvm.alloca %0 x !llvm.struct<"struct.float2", (f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %67 = llvm.alloca %0 x !llvm.struct<"struct.uint2", (i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %68 = llvm.alloca %0 x !llvm.struct<"struct.uint2", (i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %69 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %70 = llvm.alloca %0 x !llvm.array<3 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %71 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %72 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %73 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %74 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg27, %15 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%14, %15, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg0, %16 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %17 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg2, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg3, %19 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg4, %20 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg5, %21 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg6, %22 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg7, %23 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg8, %24 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg9, %25 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg10, %26 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg11, %27 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg12, %28 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg13, %29 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg14, %30 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg15, %31 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg16, %32 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg17, %33 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg18, %34 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg19, %35 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg20, %36 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg21, %37 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg22, %38 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg23, %39 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg24, %40 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg25, %41 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg26, %42 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg28, %43 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg29, %44 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %2, %45 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb14
    %75 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %76 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %77 = llvm.icmp "slt" %75, %76 : i32
    llvm.cond_br %77, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %78 = llvm.load %37 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %79 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %80 = llvm.sext %79 : i32 to i64
    %81 = llvm.getelementptr inbounds %78[%80] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %2, %81 {alignment = 4 : i64} : i32, !llvm.ptr
    %82 = llvm.load %43 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %83 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %84 = llvm.sext %83 : i32 to i64
    %85 = llvm.getelementptr inbounds %82[%84] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %2, %85 {alignment = 4 : i64} : i32, !llvm.ptr
    %86 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %87 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %88 = llvm.load %28 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %89 = llvm.load %29 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %90 = llvm.load %44 {alignment = 4 : i64} : !llvm.ptr -> i32
    %91 = llvm.call @cpu_rasterizer_in_frustum(%86, %87, %88, %89, %90, %46) : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, !llvm.ptr) -> i32
    %92 = llvm.icmp "ne" %91, %2 : i32
    llvm.cond_br %92, ^bb4, ^bb3
  ^bb3:  // pred: ^bb2
    llvm.br ^bb14
  ^bb4:  // pred: ^bb2
    %93 = llvm.getelementptr inbounds %47[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %94 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %95 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %96 = llvm.mul %3, %95 overflow<nsw>  : i32
    %97 = llvm.sext %96 : i32 to i64
    %98 = llvm.getelementptr inbounds %94[%97] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %99 = llvm.load %98 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %99, %93 {alignment = 4 : i64} : f32, !llvm.ptr
    %100 = llvm.getelementptr inbounds %47[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %101 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %102 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %103 = llvm.mul %3, %102 overflow<nsw>  : i32
    %104 = llvm.add %103, %0 overflow<nsw>  : i32
    %105 = llvm.sext %104 : i32 to i64
    %106 = llvm.getelementptr inbounds %101[%105] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %107 = llvm.load %106 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %107, %100 {alignment = 4 : i64} : f32, !llvm.ptr
    %108 = llvm.getelementptr inbounds %47[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %109 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %110 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %111 = llvm.mul %3, %110 overflow<nsw>  : i32
    %112 = llvm.add %111, %4 overflow<nsw>  : i32
    %113 = llvm.sext %112 : i32 to i64
    %114 = llvm.getelementptr inbounds %109[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %115 = llvm.load %114 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %115, %108 {alignment = 4 : i64} : f32, !llvm.ptr
    %116 = llvm.load %29 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%49, %47, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %117 = llvm.load %49 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %118 = llvm.call @cpu_rasterizer_transformPoint4x4(%117, %116) : (!llvm.array<2 x i64>, !llvm.ptr) -> !llvm.array<2 x i64>
    llvm.store %118, %48 {alignment = 4 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    %119 = llvm.getelementptr inbounds %48[%2, 3] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %120 = llvm.load %119 {alignment = 4 : i64} : !llvm.ptr -> f32
    %121 = llvm.fadd %120, %5  : f32
    %122 = llvm.fdiv %6, %121  : f32
    llvm.store %122, %50 {alignment = 4 : i64} : f32, !llvm.ptr
    %123 = llvm.getelementptr inbounds %51[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %124 = llvm.getelementptr inbounds %48[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %125 = llvm.load %124 {alignment = 4 : i64} : !llvm.ptr -> f32
    %126 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    %127 = llvm.fmul %125, %126  : f32
    llvm.store %127, %123 {alignment = 4 : i64} : f32, !llvm.ptr
    %128 = llvm.getelementptr inbounds %51[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %129 = llvm.getelementptr inbounds %48[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %130 = llvm.load %129 {alignment = 4 : i64} : !llvm.ptr -> f32
    %131 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    %132 = llvm.fmul %130, %131  : f32
    llvm.store %132, %128 {alignment = 4 : i64} : f32, !llvm.ptr
    %133 = llvm.getelementptr inbounds %51[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %134 = llvm.getelementptr inbounds %48[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %135 = llvm.load %134 {alignment = 4 : i64} : !llvm.ptr -> f32
    %136 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    %137 = llvm.fmul %135, %136  : f32
    llvm.store %137, %133 {alignment = 4 : i64} : f32, !llvm.ptr
    %138 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %139 = llvm.icmp "ne" %138, %7 : !llvm.ptr
    llvm.cond_br %139, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %140 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %141 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %142 = llvm.mul %141, %8 overflow<nsw>  : i32
    %143 = llvm.sext %142 : i32 to i64
    %144 = llvm.getelementptr inbounds %140[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %144, %52 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb7
  ^bb6:  // pred: ^bb4
    %145 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %146 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %147 = llvm.sext %146 : i32 to i64
    %148 = llvm.getelementptr inbounds %145[%147] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %149 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> f32
    %150 = llvm.load %22 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %151 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %152 = llvm.sext %151 : i32 to i64
    %153 = llvm.getelementptr inbounds %150[%152] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %154 = llvm.load %40 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %155 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %156 = llvm.mul %155, %8 overflow<nsw>  : i32
    %157 = llvm.sext %156 : i32 to i64
    %158 = llvm.getelementptr inbounds %154[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    "llvm.intr.memcpy"(%53, %148, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %159 = llvm.load %53 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %160 = llvm.load %153 {alignment = 4 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @computeCov3D(%159, %149, %160, %158) : (!llvm.array<2 x i64>, f32, !llvm.array<2 x i64>, !llvm.ptr) -> ()
    %161 = llvm.load %40 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %162 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %163 = llvm.mul %162, %8 overflow<nsw>  : i32
    %164 = llvm.sext %163 : i32 to i64
    %165 = llvm.getelementptr inbounds %161[%164] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %165, %52 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb5, ^bb6
    %166 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> f32
    %167 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> f32
    %168 = llvm.load %33 {alignment = 4 : i64} : !llvm.ptr -> f32
    %169 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> f32
    %170 = llvm.load %52 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %171 = llvm.load %28 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%55, %47, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %172 = llvm.load %55 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %173 = llvm.call @computeCov2D(%172, %166, %167, %168, %169, %170, %171) : (!llvm.array<2 x i64>, f32, f32, f32, f32, !llvm.ptr, !llvm.ptr) -> !llvm.array<2 x i64>
    llvm.store %173, %56 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%54, %56, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %174 = llvm.getelementptr inbounds %54[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %175 = llvm.load %174 {alignment = 4 : i64} : !llvm.ptr -> f32
    %176 = llvm.getelementptr inbounds %54[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %177 = llvm.load %176 {alignment = 4 : i64} : !llvm.ptr -> f32
    %178 = llvm.getelementptr inbounds %54[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %179 = llvm.load %178 {alignment = 4 : i64} : !llvm.ptr -> f32
    %180 = llvm.getelementptr inbounds %54[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %181 = llvm.load %180 {alignment = 4 : i64} : !llvm.ptr -> f32
    %182 = llvm.fmul %179, %181  : f32
    %183 = llvm.fneg %182  : f32
    %184 = llvm.intr.fmuladd(%175, %177, %183)  : (f32, f32, f32) -> f32
    llvm.store %184, %57 {alignment = 4 : i64} : f32, !llvm.ptr
    %185 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> f32
    %186 = llvm.fcmp "oeq" %185, %9 : f32
    llvm.cond_br %186, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    llvm.br ^bb14
  ^bb9:  // pred: ^bb7
    %187 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> f32
    %188 = llvm.fdiv %6, %187  : f32
    llvm.store %188, %58 {alignment = 4 : i64} : f32, !llvm.ptr
    %189 = llvm.getelementptr inbounds %59[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %190 = llvm.getelementptr inbounds %54[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %191 = llvm.load %190 {alignment = 4 : i64} : !llvm.ptr -> f32
    %192 = llvm.load %58 {alignment = 4 : i64} : !llvm.ptr -> f32
    %193 = llvm.fmul %191, %192  : f32
    llvm.store %193, %189 {alignment = 4 : i64} : f32, !llvm.ptr
    %194 = llvm.getelementptr inbounds %59[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %195 = llvm.getelementptr inbounds %54[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %196 = llvm.load %195 {alignment = 4 : i64} : !llvm.ptr -> f32
    %197 = llvm.fneg %196  : f32
    %198 = llvm.load %58 {alignment = 4 : i64} : !llvm.ptr -> f32
    %199 = llvm.fmul %197, %198  : f32
    llvm.store %199, %194 {alignment = 4 : i64} : f32, !llvm.ptr
    %200 = llvm.getelementptr inbounds %59[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %201 = llvm.getelementptr inbounds %54[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %202 = llvm.load %201 {alignment = 4 : i64} : !llvm.ptr -> f32
    %203 = llvm.load %58 {alignment = 4 : i64} : !llvm.ptr -> f32
    %204 = llvm.fmul %202, %203  : f32
    llvm.store %204, %200 {alignment = 4 : i64} : f32, !llvm.ptr
    %205 = llvm.getelementptr inbounds %54[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %206 = llvm.load %205 {alignment = 4 : i64} : !llvm.ptr -> f32
    %207 = llvm.getelementptr inbounds %54[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %208 = llvm.load %207 {alignment = 4 : i64} : !llvm.ptr -> f32
    %209 = llvm.fadd %206, %208  : f32
    %210 = llvm.fmul %10, %209  : f32
    llvm.store %210, %60 {alignment = 4 : i64} : f32, !llvm.ptr
    %211 = llvm.load %60 {alignment = 4 : i64} : !llvm.ptr -> f32
    %212 = llvm.load %60 {alignment = 4 : i64} : !llvm.ptr -> f32
    %213 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> f32
    %214 = llvm.fneg %213  : f32
    %215 = llvm.intr.fmuladd(%211, %212, %214)  : (f32, f32, f32) -> f32
    llvm.store %215, %61 {alignment = 4 : i64} : f32, !llvm.ptr
    %216 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> f32
    %217 = llvm.fpext %216 : f32 to f64
    %218 = llvm.intr.maxnum(%217, %11)  : (f64, f64) -> f64
    %219 = llvm.fptrunc %218 : f64 to f32
    llvm.store %219, %61 {alignment = 4 : i64} : f32, !llvm.ptr
    %220 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> f32
    %221 = llvm.fpext %220 : f32 to f64
    %222 = llvm.call @sqrt(%221) : (f64) -> f64
    %223 = llvm.fptrunc %222 : f64 to f32
    llvm.store %223, %62 {alignment = 4 : i64} : f32, !llvm.ptr
    %224 = llvm.load %60 {alignment = 4 : i64} : !llvm.ptr -> f32
    %225 = llvm.load %62 {alignment = 4 : i64} : !llvm.ptr -> f32
    %226 = llvm.fadd %224, %225  : f32
    llvm.store %226, %63 {alignment = 4 : i64} : f32, !llvm.ptr
    %227 = llvm.load %60 {alignment = 4 : i64} : !llvm.ptr -> f32
    %228 = llvm.load %62 {alignment = 4 : i64} : !llvm.ptr -> f32
    %229 = llvm.fsub %227, %228  : f32
    llvm.store %229, %64 {alignment = 4 : i64} : f32, !llvm.ptr
    %230 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr -> f32
    %231 = llvm.fpext %230 : f32 to f64
    %232 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> f32
    %233 = llvm.fpext %232 : f32 to f64
    %234 = llvm.intr.maxnum(%231, %233)  : (f64, f64) -> f64
    %235 = llvm.call @sqrt(%234) : (f64) -> f64
    %236 = llvm.fmul %12, %235  : f64
    %237 = llvm.intr.ceil(%236)  : (f64) -> f64
    %238 = llvm.fptrunc %237 : f64 to f32
    llvm.store %238, %65 {alignment = 4 : i64} : f32, !llvm.ptr
    %239 = llvm.getelementptr inbounds %66[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %240 = llvm.getelementptr inbounds %51[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %241 = llvm.load %240 {alignment = 4 : i64} : !llvm.ptr -> f32
    %242 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> i32
    %243 = llvm.call @cpu_rasterizer_ndc2Pix(%241, %242) : (f32, i32) -> f32
    llvm.store %243, %239 {alignment = 4 : i64} : f32, !llvm.ptr
    %244 = llvm.getelementptr inbounds %66[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %245 = llvm.getelementptr inbounds %51[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %246 = llvm.load %245 {alignment = 4 : i64} : !llvm.ptr -> f32
    %247 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    %248 = llvm.call @cpu_rasterizer_ndc2Pix(%246, %247) : (f32, i32) -> f32
    llvm.store %248, %244 {alignment = 4 : i64} : f32, !llvm.ptr
    %249 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    %250 = llvm.fptosi %249 : f32 to i32
    %251 = llvm.getelementptr inbounds %66[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f32, f32)>
    %252 = llvm.load %251 {alignment = 4 : i64} : !llvm.ptr -> f32
    %253 = llvm.getelementptr inbounds %66[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f32, f32)>
    %254 = llvm.load %253 {alignment = 4 : i64} : !llvm.ptr -> f32
    "llvm.intr.memcpy"(%69, %14, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %255 = llvm.load %69 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @cpu_rasterizer_getRect(%252, %254, %250, %67, %68, %255) : (f32, f32, i32, !llvm.ptr, !llvm.ptr, !llvm.array<2 x i64>) -> ()
    %256 = llvm.getelementptr inbounds %68[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %257 = llvm.load %256 {alignment = 4 : i64} : !llvm.ptr -> i32
    %258 = llvm.getelementptr inbounds %67[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %259 = llvm.load %258 {alignment = 4 : i64} : !llvm.ptr -> i32
    %260 = llvm.sub %257, %259  : i32
    %261 = llvm.getelementptr inbounds %68[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %262 = llvm.load %261 {alignment = 4 : i64} : !llvm.ptr -> i32
    %263 = llvm.getelementptr inbounds %67[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %264 = llvm.load %263 {alignment = 4 : i64} : !llvm.ptr -> i32
    %265 = llvm.sub %262, %264  : i32
    %266 = llvm.mul %260, %265  : i32
    %267 = llvm.icmp "eq" %266, %2 : i32
    llvm.cond_br %267, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    llvm.br ^bb14
  ^bb11:  // pred: ^bb9
    %268 = llvm.load %27 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %269 = llvm.icmp "eq" %268, %7 : !llvm.ptr
    llvm.cond_br %269, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %270 = llvm.load %30 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%71, %270, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %271 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %272 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %273 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %274 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %275 = llvm.load %24 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %276 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%73, %71, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %277 = llvm.load %73 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %278 = llvm.call @computeColorFromSH(%271, %272, %273, %274, %277, %275, %276) : (i32, i32, i32, !llvm.ptr, !llvm.array<2 x i64>, !llvm.ptr, !llvm.ptr) -> !llvm.array<2 x i64>
    llvm.store %278, %74 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%72, %74, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %279 = llvm.getelementptr inbounds %72[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %280 = llvm.load %279 {alignment = 4 : i64} : !llvm.ptr -> f32
    %281 = llvm.load %41 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %282 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %283 = llvm.mul %282, %3 overflow<nsw>  : i32
    %284 = llvm.add %283, %2 overflow<nsw>  : i32
    %285 = llvm.sext %284 : i32 to i64
    %286 = llvm.getelementptr inbounds %281[%285] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %280, %286 {alignment = 4 : i64} : f32, !llvm.ptr
    %287 = llvm.getelementptr inbounds %72[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %288 = llvm.load %287 {alignment = 4 : i64} : !llvm.ptr -> f32
    %289 = llvm.load %41 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %290 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %291 = llvm.mul %290, %3 overflow<nsw>  : i32
    %292 = llvm.add %291, %0 overflow<nsw>  : i32
    %293 = llvm.sext %292 : i32 to i64
    %294 = llvm.getelementptr inbounds %289[%293] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %288, %294 {alignment = 4 : i64} : f32, !llvm.ptr
    %295 = llvm.getelementptr inbounds %72[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %296 = llvm.load %295 {alignment = 4 : i64} : !llvm.ptr -> f32
    %297 = llvm.load %41 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %298 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %299 = llvm.mul %298, %3 overflow<nsw>  : i32
    %300 = llvm.add %299, %4 overflow<nsw>  : i32
    %301 = llvm.sext %300 : i32 to i64
    %302 = llvm.getelementptr inbounds %297[%301] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %296, %302 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb11, ^bb12
    %303 = llvm.getelementptr inbounds %46[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %304 = llvm.load %303 {alignment = 4 : i64} : !llvm.ptr -> f32
    %305 = llvm.load %39 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %306 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %307 = llvm.sext %306 : i32 to i64
    %308 = llvm.getelementptr inbounds %305[%307] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %304, %308 {alignment = 4 : i64} : f32, !llvm.ptr
    %309 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    %310 = llvm.fptosi %309 : f32 to i32
    %311 = llvm.load %37 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %312 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %313 = llvm.sext %312 : i32 to i64
    %314 = llvm.getelementptr inbounds %311[%313] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %310, %314 {alignment = 4 : i64} : i32, !llvm.ptr
    %315 = llvm.load %38 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %316 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %317 = llvm.sext %316 : i32 to i64
    %318 = llvm.getelementptr inbounds %315[%317] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    "llvm.intr.memcpy"(%318, %66, %13) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %319 = llvm.getelementptr inbounds %59[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %320 = llvm.load %319 {alignment = 4 : i64} : !llvm.ptr -> f32
    %321 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %322 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %323 = llvm.sext %322 : i32 to i64
    %324 = llvm.getelementptr inbounds %321[%323] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %325 = llvm.getelementptr inbounds %324[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    llvm.store %320, %325 {alignment = 4 : i64} : f32, !llvm.ptr
    %326 = llvm.getelementptr inbounds %59[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %327 = llvm.load %326 {alignment = 4 : i64} : !llvm.ptr -> f32
    %328 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %329 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %330 = llvm.sext %329 : i32 to i64
    %331 = llvm.getelementptr inbounds %328[%330] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %332 = llvm.getelementptr inbounds %331[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    llvm.store %327, %332 {alignment = 4 : i64} : f32, !llvm.ptr
    %333 = llvm.getelementptr inbounds %59[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %334 = llvm.load %333 {alignment = 4 : i64} : !llvm.ptr -> f32
    %335 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %336 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %337 = llvm.sext %336 : i32 to i64
    %338 = llvm.getelementptr inbounds %335[%337] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %339 = llvm.getelementptr inbounds %338[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    llvm.store %334, %339 {alignment = 4 : i64} : f32, !llvm.ptr
    %340 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %341 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %342 = llvm.sext %341 : i32 to i64
    %343 = llvm.getelementptr inbounds %340[%342] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %344 = llvm.load %343 {alignment = 4 : i64} : !llvm.ptr -> f32
    %345 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %346 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %347 = llvm.sext %346 : i32 to i64
    %348 = llvm.getelementptr inbounds %345[%347] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %349 = llvm.getelementptr inbounds %348[%2, 3] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    llvm.store %344, %349 {alignment = 4 : i64} : f32, !llvm.ptr
    %350 = llvm.getelementptr inbounds %68[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %351 = llvm.load %350 {alignment = 4 : i64} : !llvm.ptr -> i32
    %352 = llvm.getelementptr inbounds %67[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %353 = llvm.load %352 {alignment = 4 : i64} : !llvm.ptr -> i32
    %354 = llvm.sub %351, %353  : i32
    %355 = llvm.getelementptr inbounds %68[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %356 = llvm.load %355 {alignment = 4 : i64} : !llvm.ptr -> i32
    %357 = llvm.getelementptr inbounds %67[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %358 = llvm.load %357 {alignment = 4 : i64} : !llvm.ptr -> i32
    %359 = llvm.sub %356, %358  : i32
    %360 = llvm.mul %354, %359  : i32
    %361 = llvm.load %43 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %362 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %363 = llvm.sext %362 : i32 to i64
    %364 = llvm.getelementptr inbounds %361[%363] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %360, %364 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb14
  ^bb14:  // 4 preds: ^bb3, ^bb8, ^bb10, ^bb13
    %365 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %366 = llvm.add %365, %0 overflow<nsw>  : i32
    llvm.store %366, %45 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb15:  // pred: ^bb1
    llvm.return
  }
  llvm.func @cpu_rasterizer_in_frustum(i32 {llvm.noundef, llvm.signext}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, i32 {llvm.noundef, llvm.signext}, !llvm.ptr {llvm.noundef}) -> (i32 {llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @cpu_rasterizer_transformPoint4x4(!llvm.array<2 x i64>, !llvm.ptr {llvm.noundef}) -> !llvm.array<2 x i64> attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func internal @computeCov3D(%arg0: !llvm.array<2 x i64>, %arg1: f32 {llvm.noundef}, %arg2: !llvm.array<2 x i64>, %arg3: !llvm.ptr {llvm.noundef}) attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(1 : i64) : i64
    %5 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %6 = llvm.mlir.constant(2 : i32) : i32
    %7 = llvm.mlir.constant(3 : i32) : i32
    %8 = llvm.mlir.constant(-2.000000e+00 : f32) : f32
    %9 = llvm.mlir.constant(1.000000e+00 : f32) : f32
    %10 = llvm.mlir.constant(2.000000e+00 : f32) : f32
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.mlir.constant(4 : i64) : i64
    %13 = llvm.mlir.constant(3 : i64) : i64
    %14 = llvm.mlir.constant(5 : i64) : i64
    %15 = llvm.mlir.constant(8 : i64) : i64
    %16 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x !llvm.struct<"struct.float4", (f32, f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %24 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %25 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %26 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %27 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %28 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %29 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %30 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %31 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %32 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %33 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %34 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %35 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %36 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %37 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %17 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%16, %17, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg2, %18 {alignment = 4 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    llvm.store %arg1, %19 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg3, %20 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %38 = llvm.getelementptr inbounds %21[%2, %2] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %39 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %40 = llvm.getelementptr inbounds %16[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %41 = llvm.load %40 {alignment = 4 : i64} : !llvm.ptr -> f32
    %42 = llvm.fmul %39, %41  : f32
    llvm.store %42, %38 {alignment = 4 : i64} : f32, !llvm.ptr
    %43 = llvm.getelementptr inbounds %38[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %5, %43 {alignment = 4 : i64} : f32, !llvm.ptr
    %44 = llvm.getelementptr inbounds %43[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %5, %44 {alignment = 4 : i64} : f32, !llvm.ptr
    %45 = llvm.getelementptr inbounds %44[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %5, %45 {alignment = 4 : i64} : f32, !llvm.ptr
    %46 = llvm.getelementptr inbounds %45[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %47 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %48 = llvm.getelementptr inbounds %16[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %49 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> f32
    %50 = llvm.fmul %47, %49  : f32
    llvm.store %50, %46 {alignment = 4 : i64} : f32, !llvm.ptr
    %51 = llvm.getelementptr inbounds %46[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %5, %51 {alignment = 4 : i64} : f32, !llvm.ptr
    %52 = llvm.getelementptr inbounds %51[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %5, %52 {alignment = 4 : i64} : f32, !llvm.ptr
    %53 = llvm.getelementptr inbounds %52[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %5, %53 {alignment = 4 : i64} : f32, !llvm.ptr
    %54 = llvm.getelementptr inbounds %53[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %55 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %56 = llvm.getelementptr inbounds %16[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %57 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> f32
    %58 = llvm.fmul %55, %57  : f32
    llvm.store %58, %54 {alignment = 4 : i64} : f32, !llvm.ptr
    %59 = llvm.getelementptr inbounds %18[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %60 = llvm.load %59 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %60, %22 {alignment = 4 : i64} : f32, !llvm.ptr
    %61 = llvm.getelementptr inbounds %18[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %62, %23 {alignment = 4 : i64} : f32, !llvm.ptr
    %63 = llvm.getelementptr inbounds %18[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %64 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %64, %24 {alignment = 4 : i64} : f32, !llvm.ptr
    %65 = llvm.getelementptr inbounds %18[%3, 3] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %66 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %66, %25 {alignment = 4 : i64} : f32, !llvm.ptr
    %67 = llvm.getelementptr inbounds %26[%2, %2] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %68 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %69 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %70 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %71 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %72 = llvm.fmul %70, %71  : f32
    %73 = llvm.intr.fmuladd(%68, %69, %72)  : (f32, f32, f32) -> f32
    %74 = llvm.intr.fmuladd(%8, %73, %9)  : (f32, f32, f32) -> f32
    llvm.store %74, %67 {alignment = 4 : i64} : f32, !llvm.ptr
    %75 = llvm.getelementptr inbounds %67[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %76 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %77 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %78 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> f32
    %79 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %80 = llvm.fmul %78, %79  : f32
    %81 = llvm.fneg %80  : f32
    %82 = llvm.intr.fmuladd(%76, %77, %81)  : (f32, f32, f32) -> f32
    %83 = llvm.fmul %10, %82  : f32
    llvm.store %83, %75 {alignment = 4 : i64} : f32, !llvm.ptr
    %84 = llvm.getelementptr inbounds %75[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %85 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %86 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %87 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> f32
    %88 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %89 = llvm.fmul %87, %88  : f32
    %90 = llvm.intr.fmuladd(%85, %86, %89)  : (f32, f32, f32) -> f32
    %91 = llvm.fmul %10, %90  : f32
    llvm.store %91, %84 {alignment = 4 : i64} : f32, !llvm.ptr
    %92 = llvm.getelementptr inbounds %84[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %93 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %94 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %95 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> f32
    %96 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %97 = llvm.fmul %95, %96  : f32
    %98 = llvm.intr.fmuladd(%93, %94, %97)  : (f32, f32, f32) -> f32
    %99 = llvm.fmul %10, %98  : f32
    llvm.store %99, %92 {alignment = 4 : i64} : f32, !llvm.ptr
    %100 = llvm.getelementptr inbounds %92[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %101 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %102 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %103 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %104 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %105 = llvm.fmul %103, %104  : f32
    %106 = llvm.intr.fmuladd(%101, %102, %105)  : (f32, f32, f32) -> f32
    %107 = llvm.intr.fmuladd(%8, %106, %9)  : (f32, f32, f32) -> f32
    llvm.store %107, %100 {alignment = 4 : i64} : f32, !llvm.ptr
    %108 = llvm.getelementptr inbounds %100[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %109 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %110 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %111 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> f32
    %112 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %113 = llvm.fmul %111, %112  : f32
    %114 = llvm.fneg %113  : f32
    %115 = llvm.intr.fmuladd(%109, %110, %114)  : (f32, f32, f32) -> f32
    %116 = llvm.fmul %10, %115  : f32
    llvm.store %116, %108 {alignment = 4 : i64} : f32, !llvm.ptr
    %117 = llvm.getelementptr inbounds %108[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %118 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %119 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %120 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> f32
    %121 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %122 = llvm.fmul %120, %121  : f32
    %123 = llvm.fneg %122  : f32
    %124 = llvm.intr.fmuladd(%118, %119, %123)  : (f32, f32, f32) -> f32
    %125 = llvm.fmul %10, %124  : f32
    llvm.store %125, %117 {alignment = 4 : i64} : f32, !llvm.ptr
    %126 = llvm.getelementptr inbounds %117[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %127 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %128 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %129 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> f32
    %130 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %131 = llvm.fmul %129, %130  : f32
    %132 = llvm.intr.fmuladd(%127, %128, %131)  : (f32, f32, f32) -> f32
    %133 = llvm.fmul %10, %132  : f32
    llvm.store %133, %126 {alignment = 4 : i64} : f32, !llvm.ptr
    %134 = llvm.getelementptr inbounds %126[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %135 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %136 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %137 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %138 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %139 = llvm.fmul %137, %138  : f32
    %140 = llvm.intr.fmuladd(%135, %136, %139)  : (f32, f32, f32) -> f32
    %141 = llvm.intr.fmuladd(%8, %140, %9)  : (f32, f32, f32) -> f32
    llvm.store %141, %134 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %28 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb11
    %142 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %143 = llvm.icmp "slt" %142, %7 : i32
    llvm.cond_br %143, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    llvm.store %3, %29 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb9
    %144 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %145 = llvm.icmp "slt" %144, %7 : i32
    llvm.cond_br %145, ^bb4, ^bb10
  ^bb4:  // pred: ^bb3
    %146 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %147 = llvm.mul %146, %7 overflow<nsw>  : i32
    %148 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %149 = llvm.add %147, %148 overflow<nsw>  : i32
    %150 = llvm.sext %149 : i32 to i64
    %151 = llvm.getelementptr inbounds %27[%2, %150] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %5, %151 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %30 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb4, ^bb7
    %152 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> i32
    %153 = llvm.icmp "slt" %152, %7 : i32
    llvm.cond_br %153, ^bb6, ^bb8
  ^bb6:  // pred: ^bb5
    %154 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %155 = llvm.mul %154, %7 overflow<nsw>  : i32
    %156 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> i32
    %157 = llvm.add %155, %156 overflow<nsw>  : i32
    %158 = llvm.sext %157 : i32 to i64
    %159 = llvm.getelementptr inbounds %21[%2, %158] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %160 = llvm.load %159 {alignment = 4 : i64} : !llvm.ptr -> f32
    %161 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> i32
    %162 = llvm.mul %161, %7 overflow<nsw>  : i32
    %163 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %164 = llvm.add %162, %163 overflow<nsw>  : i32
    %165 = llvm.sext %164 : i32 to i64
    %166 = llvm.getelementptr inbounds %26[%2, %165] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %167 = llvm.load %166 {alignment = 4 : i64} : !llvm.ptr -> f32
    %168 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %169 = llvm.mul %168, %7 overflow<nsw>  : i32
    %170 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %171 = llvm.add %169, %170 overflow<nsw>  : i32
    %172 = llvm.sext %171 : i32 to i64
    %173 = llvm.getelementptr inbounds %27[%2, %172] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %174 = llvm.load %173 {alignment = 4 : i64} : !llvm.ptr -> f32
    %175 = llvm.intr.fmuladd(%160, %167, %174)  : (f32, f32, f32) -> f32
    llvm.store %175, %173 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %176 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> i32
    %177 = llvm.add %176, %0 overflow<nsw>  : i32
    llvm.store %177, %30 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5 {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb5
    llvm.br ^bb9
  ^bb9:  // pred: ^bb8
    %178 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %179 = llvm.add %178, %0 overflow<nsw>  : i32
    llvm.store %179, %29 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb10:  // pred: ^bb3
    llvm.br ^bb11
  ^bb11:  // pred: ^bb10
    %180 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %181 = llvm.add %180, %0 overflow<nsw>  : i32
    llvm.store %181, %28 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb12:  // pred: ^bb1
    llvm.store %3, %32 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb12, ^bb19
    %182 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    %183 = llvm.icmp "slt" %182, %7 : i32
    llvm.cond_br %183, ^bb14, ^bb20
  ^bb14:  // pred: ^bb13
    llvm.store %3, %33 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15
  ^bb15:  // 2 preds: ^bb14, ^bb17
    %184 = llvm.load %33 {alignment = 4 : i64} : !llvm.ptr -> i32
    %185 = llvm.icmp "slt" %184, %7 : i32
    llvm.cond_br %185, ^bb16, ^bb18
  ^bb16:  // pred: ^bb15
    %186 = llvm.load %33 {alignment = 4 : i64} : !llvm.ptr -> i32
    %187 = llvm.mul %186, %7 overflow<nsw>  : i32
    %188 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    %189 = llvm.add %187, %188 overflow<nsw>  : i32
    %190 = llvm.sext %189 : i32 to i64
    %191 = llvm.getelementptr inbounds %27[%2, %190] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %192 = llvm.load %191 {alignment = 4 : i64} : !llvm.ptr -> f32
    %193 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    %194 = llvm.mul %193, %7 overflow<nsw>  : i32
    %195 = llvm.load %33 {alignment = 4 : i64} : !llvm.ptr -> i32
    %196 = llvm.add %194, %195 overflow<nsw>  : i32
    %197 = llvm.sext %196 : i32 to i64
    %198 = llvm.getelementptr inbounds %31[%2, %197] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %192, %198 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %199 = llvm.load %33 {alignment = 4 : i64} : !llvm.ptr -> i32
    %200 = llvm.add %199, %0 overflow<nsw>  : i32
    llvm.store %200, %33 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15 {loop_annotation = #loop_annotation}
  ^bb18:  // pred: ^bb15
    llvm.br ^bb19
  ^bb19:  // pred: ^bb18
    %201 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    %202 = llvm.add %201, %0 overflow<nsw>  : i32
    llvm.store %202, %32 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb13 {loop_annotation = #loop_annotation}
  ^bb20:  // pred: ^bb13
    llvm.store %3, %35 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb21
  ^bb21:  // 2 preds: ^bb20, ^bb31
    %203 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %204 = llvm.icmp "slt" %203, %7 : i32
    llvm.cond_br %204, ^bb22, ^bb32
  ^bb22:  // pred: ^bb21
    llvm.store %3, %36 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb23
  ^bb23:  // 2 preds: ^bb22, ^bb29
    %205 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> i32
    %206 = llvm.icmp "slt" %205, %7 : i32
    llvm.cond_br %206, ^bb24, ^bb30
  ^bb24:  // pred: ^bb23
    %207 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %208 = llvm.mul %207, %7 overflow<nsw>  : i32
    %209 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> i32
    %210 = llvm.add %208, %209 overflow<nsw>  : i32
    %211 = llvm.sext %210 : i32 to i64
    %212 = llvm.getelementptr inbounds %34[%2, %211] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %5, %212 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %37 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb25
  ^bb25:  // 2 preds: ^bb24, ^bb27
    %213 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %214 = llvm.icmp "slt" %213, %7 : i32
    llvm.cond_br %214, ^bb26, ^bb28
  ^bb26:  // pred: ^bb25
    %215 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %216 = llvm.mul %215, %7 overflow<nsw>  : i32
    %217 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %218 = llvm.add %216, %217 overflow<nsw>  : i32
    %219 = llvm.sext %218 : i32 to i64
    %220 = llvm.getelementptr inbounds %31[%2, %219] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %221 = llvm.load %220 {alignment = 4 : i64} : !llvm.ptr -> f32
    %222 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %223 = llvm.mul %222, %7 overflow<nsw>  : i32
    %224 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> i32
    %225 = llvm.add %223, %224 overflow<nsw>  : i32
    %226 = llvm.sext %225 : i32 to i64
    %227 = llvm.getelementptr inbounds %27[%2, %226] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %228 = llvm.load %227 {alignment = 4 : i64} : !llvm.ptr -> f32
    %229 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %230 = llvm.mul %229, %7 overflow<nsw>  : i32
    %231 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> i32
    %232 = llvm.add %230, %231 overflow<nsw>  : i32
    %233 = llvm.sext %232 : i32 to i64
    %234 = llvm.getelementptr inbounds %34[%2, %233] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %235 = llvm.load %234 {alignment = 4 : i64} : !llvm.ptr -> f32
    %236 = llvm.intr.fmuladd(%221, %228, %235)  : (f32, f32, f32) -> f32
    llvm.store %236, %234 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb27
  ^bb27:  // pred: ^bb26
    %237 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %238 = llvm.add %237, %0 overflow<nsw>  : i32
    llvm.store %238, %37 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb25 {loop_annotation = #loop_annotation}
  ^bb28:  // pred: ^bb25
    llvm.br ^bb29
  ^bb29:  // pred: ^bb28
    %239 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> i32
    %240 = llvm.add %239, %0 overflow<nsw>  : i32
    llvm.store %240, %36 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb23 {loop_annotation = #loop_annotation}
  ^bb30:  // pred: ^bb23
    llvm.br ^bb31
  ^bb31:  // pred: ^bb30
    %241 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %242 = llvm.add %241, %0 overflow<nsw>  : i32
    llvm.store %242, %35 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb21 {loop_annotation = #loop_annotation}
  ^bb32:  // pred: ^bb21
    %243 = llvm.getelementptr inbounds %34[%2, %2] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %244 = llvm.load %243 {alignment = 4 : i64} : !llvm.ptr -> f32
    %245 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %246 = llvm.getelementptr inbounds %245[%2] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %244, %246 {alignment = 4 : i64} : f32, !llvm.ptr
    %247 = llvm.getelementptr inbounds %34[%2, %4] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %248 = llvm.load %247 {alignment = 4 : i64} : !llvm.ptr -> f32
    %249 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %250 = llvm.getelementptr inbounds %249[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %248, %250 {alignment = 4 : i64} : f32, !llvm.ptr
    %251 = llvm.getelementptr inbounds %34[%2, %11] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %252 = llvm.load %251 {alignment = 4 : i64} : !llvm.ptr -> f32
    %253 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %254 = llvm.getelementptr inbounds %253[%11] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %252, %254 {alignment = 4 : i64} : f32, !llvm.ptr
    %255 = llvm.getelementptr inbounds %34[%2, %12] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %256 = llvm.load %255 {alignment = 4 : i64} : !llvm.ptr -> f32
    %257 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %258 = llvm.getelementptr inbounds %257[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %256, %258 {alignment = 4 : i64} : f32, !llvm.ptr
    %259 = llvm.getelementptr inbounds %34[%2, %14] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %260 = llvm.load %259 {alignment = 4 : i64} : !llvm.ptr -> f32
    %261 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %262 = llvm.getelementptr inbounds %261[%12] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %260, %262 {alignment = 4 : i64} : f32, !llvm.ptr
    %263 = llvm.getelementptr inbounds %34[%2, %15] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %264 = llvm.load %263 {alignment = 4 : i64} : !llvm.ptr -> f32
    %265 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %266 = llvm.getelementptr inbounds %265[%14] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %264, %266 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.return
  }
  llvm.func internal @computeCov2D(%arg0: !llvm.array<2 x i64>, %arg1: f32 {llvm.noundef}, %arg2: f32 {llvm.noundef}, %arg3: f32 {llvm.noundef}, %arg4: f32 {llvm.noundef}, %arg5: !llvm.ptr {llvm.noundef}, %arg6: !llvm.ptr {llvm.noundef}) -> !llvm.array<2 x i64> attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(1.300000e+00 : f32) : f32
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(2 : i32) : i32
    %5 = llvm.mlir.constant(0 : i64) : i64
    %6 = llvm.mlir.constant(1 : i64) : i64
    %7 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %8 = llvm.mlir.constant(4 : i64) : i64
    %9 = llvm.mlir.constant(8 : i64) : i64
    %10 = llvm.mlir.constant(5 : i64) : i64
    %11 = llvm.mlir.constant(9 : i64) : i64
    %12 = llvm.mlir.constant(2 : i64) : i64
    %13 = llvm.mlir.constant(6 : i64) : i64
    %14 = llvm.mlir.constant(10 : i64) : i64
    %15 = llvm.mlir.constant(3 : i32) : i32
    %16 = llvm.mlir.constant(3 : i64) : i64
    %17 = llvm.mlir.constant(3.000000e-01 : f32) : f32
    %18 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %24 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %25 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %26 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %27 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %28 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %29 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %30 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %31 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %32 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %33 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %34 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %35 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %36 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %37 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %38 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %39 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %40 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %41 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %42 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %43 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %44 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %45 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %46 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %47 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %48 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %49 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %50 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %51 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %52 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %53 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %54 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %55 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %20 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%19, %20, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %21 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg2, %22 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg3, %23 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg4, %24 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg5, %25 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg6, %26 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %56 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%28, %19, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %57 = llvm.load %28 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %58 = llvm.call @cpu_rasterizer_transformPoint4x3(%57, %56) : (!llvm.array<2 x i64>, !llvm.ptr) -> !llvm.array<2 x i64>
    llvm.store %58, %29 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%27, %29, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %59 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %60 = llvm.fmul %2, %59  : f32
    llvm.store %60, %30 {alignment = 4 : i64} : f32, !llvm.ptr
    %61 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %62 = llvm.fmul %2, %61  : f32
    llvm.store %62, %31 {alignment = 4 : i64} : f32, !llvm.ptr
    %63 = llvm.getelementptr inbounds %27[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %64 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr -> f32
    %65 = llvm.getelementptr inbounds %27[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %66 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    %67 = llvm.fdiv %64, %66  : f32
    llvm.store %67, %32 {alignment = 4 : i64} : f32, !llvm.ptr
    %68 = llvm.getelementptr inbounds %27[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %69 = llvm.load %68 {alignment = 4 : i64} : !llvm.ptr -> f32
    %70 = llvm.getelementptr inbounds %27[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %71 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> f32
    %72 = llvm.fdiv %69, %71  : f32
    llvm.store %72, %33 {alignment = 4 : i64} : f32, !llvm.ptr
    %73 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> f32
    %74 = llvm.fpext %73 : f32 to f64
    %75 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> f32
    %76 = llvm.fneg %75  : f32
    %77 = llvm.fpext %76 : f32 to f64
    %78 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> f32
    %79 = llvm.fpext %78 : f32 to f64
    %80 = llvm.intr.maxnum(%77, %79)  : (f64, f64) -> f64
    %81 = llvm.intr.minnum(%74, %80)  : (f64, f64) -> f64
    %82 = llvm.getelementptr inbounds %27[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %83 = llvm.load %82 {alignment = 4 : i64} : !llvm.ptr -> f32
    %84 = llvm.fpext %83 : f32 to f64
    %85 = llvm.fmul %81, %84  : f64
    %86 = llvm.fptrunc %85 : f64 to f32
    %87 = llvm.getelementptr inbounds %27[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    llvm.store %86, %87 {alignment = 4 : i64} : f32, !llvm.ptr
    %88 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> f32
    %89 = llvm.fpext %88 : f32 to f64
    %90 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> f32
    %91 = llvm.fneg %90  : f32
    %92 = llvm.fpext %91 : f32 to f64
    %93 = llvm.load %33 {alignment = 4 : i64} : !llvm.ptr -> f32
    %94 = llvm.fpext %93 : f32 to f64
    %95 = llvm.intr.maxnum(%92, %94)  : (f64, f64) -> f64
    %96 = llvm.intr.minnum(%89, %95)  : (f64, f64) -> f64
    %97 = llvm.getelementptr inbounds %27[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %98 = llvm.load %97 {alignment = 4 : i64} : !llvm.ptr -> f32
    %99 = llvm.fpext %98 : f32 to f64
    %100 = llvm.fmul %96, %99  : f64
    %101 = llvm.fptrunc %100 : f64 to f32
    %102 = llvm.getelementptr inbounds %27[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    llvm.store %101, %102 {alignment = 4 : i64} : f32, !llvm.ptr
    %103 = llvm.getelementptr inbounds %34[%5, %5] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %104 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> f32
    %105 = llvm.getelementptr inbounds %27[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %106 = llvm.load %105 {alignment = 4 : i64} : !llvm.ptr -> f32
    %107 = llvm.fdiv %104, %106  : f32
    llvm.store %107, %103 {alignment = 4 : i64} : f32, !llvm.ptr
    %108 = llvm.getelementptr inbounds %103[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %7, %108 {alignment = 4 : i64} : f32, !llvm.ptr
    %109 = llvm.getelementptr inbounds %108[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %110 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> f32
    %111 = llvm.getelementptr inbounds %27[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %112 = llvm.load %111 {alignment = 4 : i64} : !llvm.ptr -> f32
    %113 = llvm.fmul %110, %112  : f32
    %114 = llvm.fneg %113  : f32
    %115 = llvm.getelementptr inbounds %27[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %116 = llvm.load %115 {alignment = 4 : i64} : !llvm.ptr -> f32
    %117 = llvm.getelementptr inbounds %27[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %118 = llvm.load %117 {alignment = 4 : i64} : !llvm.ptr -> f32
    %119 = llvm.fmul %116, %118  : f32
    %120 = llvm.fdiv %114, %119  : f32
    llvm.store %120, %109 {alignment = 4 : i64} : f32, !llvm.ptr
    %121 = llvm.getelementptr inbounds %109[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %7, %121 {alignment = 4 : i64} : f32, !llvm.ptr
    %122 = llvm.getelementptr inbounds %121[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %123 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %124 = llvm.getelementptr inbounds %27[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %125 = llvm.load %124 {alignment = 4 : i64} : !llvm.ptr -> f32
    %126 = llvm.fdiv %123, %125  : f32
    llvm.store %126, %122 {alignment = 4 : i64} : f32, !llvm.ptr
    %127 = llvm.getelementptr inbounds %122[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %128 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %129 = llvm.getelementptr inbounds %27[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %130 = llvm.load %129 {alignment = 4 : i64} : !llvm.ptr -> f32
    %131 = llvm.fmul %128, %130  : f32
    %132 = llvm.fneg %131  : f32
    %133 = llvm.getelementptr inbounds %27[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %134 = llvm.load %133 {alignment = 4 : i64} : !llvm.ptr -> f32
    %135 = llvm.getelementptr inbounds %27[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %136 = llvm.load %135 {alignment = 4 : i64} : !llvm.ptr -> f32
    %137 = llvm.fmul %134, %136  : f32
    %138 = llvm.fdiv %132, %137  : f32
    llvm.store %138, %127 {alignment = 4 : i64} : f32, !llvm.ptr
    %139 = llvm.getelementptr inbounds %127[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %7, %139 {alignment = 4 : i64} : f32, !llvm.ptr
    %140 = llvm.getelementptr inbounds %139[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %7, %140 {alignment = 4 : i64} : f32, !llvm.ptr
    %141 = llvm.getelementptr inbounds %140[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %7, %141 {alignment = 4 : i64} : f32, !llvm.ptr
    %142 = llvm.getelementptr inbounds %35[%5, %5] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %143 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %144 = llvm.getelementptr inbounds %143[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %145 = llvm.load %144 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %145, %142 {alignment = 4 : i64} : f32, !llvm.ptr
    %146 = llvm.getelementptr inbounds %142[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %147 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %148 = llvm.getelementptr inbounds %147[%8] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %149 = llvm.load %148 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %149, %146 {alignment = 4 : i64} : f32, !llvm.ptr
    %150 = llvm.getelementptr inbounds %146[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %151 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %152 = llvm.getelementptr inbounds %151[%9] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %153 = llvm.load %152 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %153, %150 {alignment = 4 : i64} : f32, !llvm.ptr
    %154 = llvm.getelementptr inbounds %150[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %155 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %156 = llvm.getelementptr inbounds %155[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %157 = llvm.load %156 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %157, %154 {alignment = 4 : i64} : f32, !llvm.ptr
    %158 = llvm.getelementptr inbounds %154[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %159 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %160 = llvm.getelementptr inbounds %159[%10] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %161 = llvm.load %160 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %161, %158 {alignment = 4 : i64} : f32, !llvm.ptr
    %162 = llvm.getelementptr inbounds %158[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %163 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %164 = llvm.getelementptr inbounds %163[%11] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %165 = llvm.load %164 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %165, %162 {alignment = 4 : i64} : f32, !llvm.ptr
    %166 = llvm.getelementptr inbounds %162[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %167 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %168 = llvm.getelementptr inbounds %167[%12] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %169 = llvm.load %168 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %169, %166 {alignment = 4 : i64} : f32, !llvm.ptr
    %170 = llvm.getelementptr inbounds %166[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %171 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %172 = llvm.getelementptr inbounds %171[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %173 = llvm.load %172 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %173, %170 {alignment = 4 : i64} : f32, !llvm.ptr
    %174 = llvm.getelementptr inbounds %170[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %175 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %176 = llvm.getelementptr inbounds %175[%14] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %177 = llvm.load %176 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %177, %174 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %37 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb11
    %178 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %179 = llvm.icmp "slt" %178, %15 : i32
    llvm.cond_br %179, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    llvm.store %3, %38 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb9
    %180 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %181 = llvm.icmp "slt" %180, %15 : i32
    llvm.cond_br %181, ^bb4, ^bb10
  ^bb4:  // pred: ^bb3
    %182 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %183 = llvm.mul %182, %15 overflow<nsw>  : i32
    %184 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %185 = llvm.add %183, %184 overflow<nsw>  : i32
    %186 = llvm.sext %185 : i32 to i64
    %187 = llvm.getelementptr inbounds %36[%5, %186] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %7, %187 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %39 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb4, ^bb7
    %188 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %189 = llvm.icmp "slt" %188, %15 : i32
    llvm.cond_br %189, ^bb6, ^bb8
  ^bb6:  // pred: ^bb5
    %190 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %191 = llvm.mul %190, %15 overflow<nsw>  : i32
    %192 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %193 = llvm.add %191, %192 overflow<nsw>  : i32
    %194 = llvm.sext %193 : i32 to i64
    %195 = llvm.getelementptr inbounds %35[%5, %194] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %196 = llvm.load %195 {alignment = 4 : i64} : !llvm.ptr -> f32
    %197 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %198 = llvm.mul %197, %15 overflow<nsw>  : i32
    %199 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %200 = llvm.add %198, %199 overflow<nsw>  : i32
    %201 = llvm.sext %200 : i32 to i64
    %202 = llvm.getelementptr inbounds %34[%5, %201] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %203 = llvm.load %202 {alignment = 4 : i64} : !llvm.ptr -> f32
    %204 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %205 = llvm.mul %204, %15 overflow<nsw>  : i32
    %206 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %207 = llvm.add %205, %206 overflow<nsw>  : i32
    %208 = llvm.sext %207 : i32 to i64
    %209 = llvm.getelementptr inbounds %36[%5, %208] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %210 = llvm.load %209 {alignment = 4 : i64} : !llvm.ptr -> f32
    %211 = llvm.intr.fmuladd(%196, %203, %210)  : (f32, f32, f32) -> f32
    llvm.store %211, %209 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %212 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %213 = llvm.add %212, %0 overflow<nsw>  : i32
    llvm.store %213, %39 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5 {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb5
    llvm.br ^bb9
  ^bb9:  // pred: ^bb8
    %214 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %215 = llvm.add %214, %0 overflow<nsw>  : i32
    llvm.store %215, %38 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb10:  // pred: ^bb3
    llvm.br ^bb11
  ^bb11:  // pred: ^bb10
    %216 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %217 = llvm.add %216, %0 overflow<nsw>  : i32
    llvm.store %217, %37 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb12:  // pred: ^bb1
    %218 = llvm.getelementptr inbounds %40[%5, %5] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %219 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %220 = llvm.getelementptr inbounds %219[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %221 = llvm.load %220 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %221, %218 {alignment = 4 : i64} : f32, !llvm.ptr
    %222 = llvm.getelementptr inbounds %218[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %223 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %224 = llvm.getelementptr inbounds %223[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %225 = llvm.load %224 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %225, %222 {alignment = 4 : i64} : f32, !llvm.ptr
    %226 = llvm.getelementptr inbounds %222[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %227 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %228 = llvm.getelementptr inbounds %227[%12] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %229 = llvm.load %228 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %229, %226 {alignment = 4 : i64} : f32, !llvm.ptr
    %230 = llvm.getelementptr inbounds %226[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %231 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %232 = llvm.getelementptr inbounds %231[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %233 = llvm.load %232 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %233, %230 {alignment = 4 : i64} : f32, !llvm.ptr
    %234 = llvm.getelementptr inbounds %230[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %235 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %236 = llvm.getelementptr inbounds %235[%16] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %237 = llvm.load %236 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %237, %234 {alignment = 4 : i64} : f32, !llvm.ptr
    %238 = llvm.getelementptr inbounds %234[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %239 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %240 = llvm.getelementptr inbounds %239[%8] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %241 = llvm.load %240 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %241, %238 {alignment = 4 : i64} : f32, !llvm.ptr
    %242 = llvm.getelementptr inbounds %238[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %243 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %244 = llvm.getelementptr inbounds %243[%12] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %245 = llvm.load %244 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %245, %242 {alignment = 4 : i64} : f32, !llvm.ptr
    %246 = llvm.getelementptr inbounds %242[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %247 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %248 = llvm.getelementptr inbounds %247[%8] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %249 = llvm.load %248 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %249, %246 {alignment = 4 : i64} : f32, !llvm.ptr
    %250 = llvm.getelementptr inbounds %246[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %251 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %252 = llvm.getelementptr inbounds %251[%10] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %253 = llvm.load %252 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %253, %250 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %42 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb12, ^bb19
    %254 = llvm.load %42 {alignment = 4 : i64} : !llvm.ptr -> i32
    %255 = llvm.icmp "slt" %254, %15 : i32
    llvm.cond_br %255, ^bb14, ^bb20
  ^bb14:  // pred: ^bb13
    llvm.store %3, %43 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15
  ^bb15:  // 2 preds: ^bb14, ^bb17
    %256 = llvm.load %43 {alignment = 4 : i64} : !llvm.ptr -> i32
    %257 = llvm.icmp "slt" %256, %15 : i32
    llvm.cond_br %257, ^bb16, ^bb18
  ^bb16:  // pred: ^bb15
    %258 = llvm.load %43 {alignment = 4 : i64} : !llvm.ptr -> i32
    %259 = llvm.mul %258, %15 overflow<nsw>  : i32
    %260 = llvm.load %42 {alignment = 4 : i64} : !llvm.ptr -> i32
    %261 = llvm.add %259, %260 overflow<nsw>  : i32
    %262 = llvm.sext %261 : i32 to i64
    %263 = llvm.getelementptr inbounds %36[%5, %262] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %264 = llvm.load %263 {alignment = 4 : i64} : !llvm.ptr -> f32
    %265 = llvm.load %42 {alignment = 4 : i64} : !llvm.ptr -> i32
    %266 = llvm.mul %265, %15 overflow<nsw>  : i32
    %267 = llvm.load %43 {alignment = 4 : i64} : !llvm.ptr -> i32
    %268 = llvm.add %266, %267 overflow<nsw>  : i32
    %269 = llvm.sext %268 : i32 to i64
    %270 = llvm.getelementptr inbounds %41[%5, %269] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %264, %270 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %271 = llvm.load %43 {alignment = 4 : i64} : !llvm.ptr -> i32
    %272 = llvm.add %271, %0 overflow<nsw>  : i32
    llvm.store %272, %43 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15 {loop_annotation = #loop_annotation}
  ^bb18:  // pred: ^bb15
    llvm.br ^bb19
  ^bb19:  // pred: ^bb18
    %273 = llvm.load %42 {alignment = 4 : i64} : !llvm.ptr -> i32
    %274 = llvm.add %273, %0 overflow<nsw>  : i32
    llvm.store %274, %42 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb13 {loop_annotation = #loop_annotation}
  ^bb20:  // pred: ^bb13
    llvm.store %3, %45 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb21
  ^bb21:  // 2 preds: ^bb20, ^bb27
    %275 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %276 = llvm.icmp "slt" %275, %15 : i32
    llvm.cond_br %276, ^bb22, ^bb28
  ^bb22:  // pred: ^bb21
    llvm.store %3, %46 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb23
  ^bb23:  // 2 preds: ^bb22, ^bb25
    %277 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> i32
    %278 = llvm.icmp "slt" %277, %15 : i32
    llvm.cond_br %278, ^bb24, ^bb26
  ^bb24:  // pred: ^bb23
    %279 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> i32
    %280 = llvm.mul %279, %15 overflow<nsw>  : i32
    %281 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %282 = llvm.add %280, %281 overflow<nsw>  : i32
    %283 = llvm.sext %282 : i32 to i64
    %284 = llvm.getelementptr inbounds %40[%5, %283] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %285 = llvm.load %284 {alignment = 4 : i64} : !llvm.ptr -> f32
    %286 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %287 = llvm.mul %286, %15 overflow<nsw>  : i32
    %288 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> i32
    %289 = llvm.add %287, %288 overflow<nsw>  : i32
    %290 = llvm.sext %289 : i32 to i64
    %291 = llvm.getelementptr inbounds %44[%5, %290] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %285, %291 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb25
  ^bb25:  // pred: ^bb24
    %292 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> i32
    %293 = llvm.add %292, %0 overflow<nsw>  : i32
    llvm.store %293, %46 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb23 {loop_annotation = #loop_annotation}
  ^bb26:  // pred: ^bb23
    llvm.br ^bb27
  ^bb27:  // pred: ^bb26
    %294 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %295 = llvm.add %294, %0 overflow<nsw>  : i32
    llvm.store %295, %45 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb21 {loop_annotation = #loop_annotation}
  ^bb28:  // pred: ^bb21
    llvm.store %3, %48 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb29
  ^bb29:  // 2 preds: ^bb28, ^bb39
    %296 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> i32
    %297 = llvm.icmp "slt" %296, %15 : i32
    llvm.cond_br %297, ^bb30, ^bb40
  ^bb30:  // pred: ^bb29
    llvm.store %3, %49 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb31
  ^bb31:  // 2 preds: ^bb30, ^bb37
    %298 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %299 = llvm.icmp "slt" %298, %15 : i32
    llvm.cond_br %299, ^bb32, ^bb38
  ^bb32:  // pred: ^bb31
    %300 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> i32
    %301 = llvm.mul %300, %15 overflow<nsw>  : i32
    %302 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %303 = llvm.add %301, %302 overflow<nsw>  : i32
    %304 = llvm.sext %303 : i32 to i64
    %305 = llvm.getelementptr inbounds %47[%5, %304] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %7, %305 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %50 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb33
  ^bb33:  // 2 preds: ^bb32, ^bb35
    %306 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> i32
    %307 = llvm.icmp "slt" %306, %15 : i32
    llvm.cond_br %307, ^bb34, ^bb36
  ^bb34:  // pred: ^bb33
    %308 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> i32
    %309 = llvm.mul %308, %15 overflow<nsw>  : i32
    %310 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> i32
    %311 = llvm.add %309, %310 overflow<nsw>  : i32
    %312 = llvm.sext %311 : i32 to i64
    %313 = llvm.getelementptr inbounds %41[%5, %312] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %314 = llvm.load %313 {alignment = 4 : i64} : !llvm.ptr -> f32
    %315 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> i32
    %316 = llvm.mul %315, %15 overflow<nsw>  : i32
    %317 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %318 = llvm.add %316, %317 overflow<nsw>  : i32
    %319 = llvm.sext %318 : i32 to i64
    %320 = llvm.getelementptr inbounds %44[%5, %319] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %321 = llvm.load %320 {alignment = 4 : i64} : !llvm.ptr -> f32
    %322 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> i32
    %323 = llvm.mul %322, %15 overflow<nsw>  : i32
    %324 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %325 = llvm.add %323, %324 overflow<nsw>  : i32
    %326 = llvm.sext %325 : i32 to i64
    %327 = llvm.getelementptr inbounds %47[%5, %326] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %328 = llvm.load %327 {alignment = 4 : i64} : !llvm.ptr -> f32
    %329 = llvm.intr.fmuladd(%314, %321, %328)  : (f32, f32, f32) -> f32
    llvm.store %329, %327 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb35
  ^bb35:  // pred: ^bb34
    %330 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> i32
    %331 = llvm.add %330, %0 overflow<nsw>  : i32
    llvm.store %331, %50 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb33 {loop_annotation = #loop_annotation}
  ^bb36:  // pred: ^bb33
    llvm.br ^bb37
  ^bb37:  // pred: ^bb36
    %332 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %333 = llvm.add %332, %0 overflow<nsw>  : i32
    llvm.store %333, %49 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb31 {loop_annotation = #loop_annotation}
  ^bb38:  // pred: ^bb31
    llvm.br ^bb39
  ^bb39:  // pred: ^bb38
    %334 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> i32
    %335 = llvm.add %334, %0 overflow<nsw>  : i32
    llvm.store %335, %48 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb29 {loop_annotation = #loop_annotation}
  ^bb40:  // pred: ^bb29
    llvm.store %3, %52 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb41
  ^bb41:  // 2 preds: ^bb40, ^bb51
    %336 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> i32
    %337 = llvm.icmp "slt" %336, %15 : i32
    llvm.cond_br %337, ^bb42, ^bb52
  ^bb42:  // pred: ^bb41
    llvm.store %3, %53 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb43
  ^bb43:  // 2 preds: ^bb42, ^bb49
    %338 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    %339 = llvm.icmp "slt" %338, %15 : i32
    llvm.cond_br %339, ^bb44, ^bb50
  ^bb44:  // pred: ^bb43
    %340 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> i32
    %341 = llvm.mul %340, %15 overflow<nsw>  : i32
    %342 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    %343 = llvm.add %341, %342 overflow<nsw>  : i32
    %344 = llvm.sext %343 : i32 to i64
    %345 = llvm.getelementptr inbounds %51[%5, %344] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %7, %345 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %54 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb45
  ^bb45:  // 2 preds: ^bb44, ^bb47
    %346 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %347 = llvm.icmp "slt" %346, %15 : i32
    llvm.cond_br %347, ^bb46, ^bb48
  ^bb46:  // pred: ^bb45
    %348 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> i32
    %349 = llvm.mul %348, %15 overflow<nsw>  : i32
    %350 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %351 = llvm.add %349, %350 overflow<nsw>  : i32
    %352 = llvm.sext %351 : i32 to i64
    %353 = llvm.getelementptr inbounds %47[%5, %352] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %354 = llvm.load %353 {alignment = 4 : i64} : !llvm.ptr -> f32
    %355 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %356 = llvm.mul %355, %15 overflow<nsw>  : i32
    %357 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    %358 = llvm.add %356, %357 overflow<nsw>  : i32
    %359 = llvm.sext %358 : i32 to i64
    %360 = llvm.getelementptr inbounds %36[%5, %359] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %361 = llvm.load %360 {alignment = 4 : i64} : !llvm.ptr -> f32
    %362 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> i32
    %363 = llvm.mul %362, %15 overflow<nsw>  : i32
    %364 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    %365 = llvm.add %363, %364 overflow<nsw>  : i32
    %366 = llvm.sext %365 : i32 to i64
    %367 = llvm.getelementptr inbounds %51[%5, %366] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %368 = llvm.load %367 {alignment = 4 : i64} : !llvm.ptr -> f32
    %369 = llvm.intr.fmuladd(%354, %361, %368)  : (f32, f32, f32) -> f32
    llvm.store %369, %367 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb47
  ^bb47:  // pred: ^bb46
    %370 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %371 = llvm.add %370, %0 overflow<nsw>  : i32
    llvm.store %371, %54 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb45 {loop_annotation = #loop_annotation}
  ^bb48:  // pred: ^bb45
    llvm.br ^bb49
  ^bb49:  // pred: ^bb48
    %372 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    %373 = llvm.add %372, %0 overflow<nsw>  : i32
    llvm.store %373, %53 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb43 {loop_annotation = #loop_annotation}
  ^bb50:  // pred: ^bb43
    llvm.br ^bb51
  ^bb51:  // pred: ^bb50
    %374 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> i32
    %375 = llvm.add %374, %0 overflow<nsw>  : i32
    llvm.store %375, %52 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb41 {loop_annotation = #loop_annotation}
  ^bb52:  // pred: ^bb41
    %376 = llvm.getelementptr inbounds %51[%5, %5] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %377 = llvm.load %376 {alignment = 4 : i64} : !llvm.ptr -> f32
    %378 = llvm.fadd %377, %17  : f32
    llvm.store %378, %376 {alignment = 4 : i64} : f32, !llvm.ptr
    %379 = llvm.getelementptr inbounds %51[%5, %8] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %380 = llvm.load %379 {alignment = 4 : i64} : !llvm.ptr -> f32
    %381 = llvm.fadd %380, %17  : f32
    llvm.store %381, %379 {alignment = 4 : i64} : f32, !llvm.ptr
    %382 = llvm.getelementptr inbounds %18[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %383 = llvm.getelementptr inbounds %51[%5, %5] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %384 = llvm.load %383 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %384, %382 {alignment = 4 : i64} : f32, !llvm.ptr
    %385 = llvm.getelementptr inbounds %18[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %386 = llvm.getelementptr inbounds %51[%5, %6] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %387 = llvm.load %386 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %387, %385 {alignment = 4 : i64} : f32, !llvm.ptr
    %388 = llvm.getelementptr inbounds %18[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %389 = llvm.getelementptr inbounds %51[%5, %8] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %390 = llvm.load %389 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %390, %388 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%55, %18, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %391 = llvm.load %55 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %391 : !llvm.array<2 x i64>
  }
  llvm.func @sqrt(f64 {llvm.noundef}) -> f64 attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["nounwind", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func internal @cpu_rasterizer_ndc2Pix(%arg0: f32 {llvm.noundef}, %arg1: i32 {llvm.noundef, llvm.signext}) -> f32 attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(-1.000000e+00 : f64) : f64
    %3 = llvm.mlir.constant(5.000000e-01 : f64) : f64
    %4 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg1, %5 {alignment = 4 : i64} : i32, !llvm.ptr
    %6 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> f32
    %7 = llvm.fpext %6 : f32 to f64
    %8 = llvm.fadd %7, %1  : f64
    %9 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %10 = llvm.sitofp %9 : i32 to f64
    %11 = llvm.intr.fmuladd(%8, %10, %2)  : (f64, f64, f64) -> f64
    %12 = llvm.fmul %11, %3  : f64
    %13 = llvm.fptrunc %12 : f64 to f32
    llvm.return %13 : f32
  }
  llvm.func @cpu_rasterizer_getRect(f32, f32, i32 {llvm.noundef, llvm.signext}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.array<2 x i64>) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @renderCPU(%arg0: !llvm.array<2 x i64>, %arg1: !llvm.ptr {llvm.noundef}, %arg2: !llvm.ptr {llvm.noundef}, %arg3: i32 {llvm.noundef, llvm.signext}, %arg4: i32 {llvm.noundef, llvm.signext}, %arg5: !llvm.ptr {llvm.noundef}, %arg6: !llvm.ptr {llvm.noundef}, %arg7: !llvm.ptr {llvm.noundef}, %arg8: !llvm.ptr {llvm.noundef}, %arg9: !llvm.ptr {llvm.noundef}, %arg10: !llvm.ptr {llvm.noundef}, %arg11: !llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(16 : i32) : i32
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(8 : i64) : i64
    %5 = llvm.mlir.constant(1.000000e+00 : f32) : f32
    %6 = llvm.mlir.constant(0 : i8) : i8
    %7 = llvm.mlir.constant(16 : i64) : i64
    %8 = llvm.mlir.constant(2 : i32) : i32
    %9 = llvm.mlir.constant(-5.000000e-01 : f32) : f32
    %10 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %11 = llvm.mlir.constant(3 : i32) : i32
    %12 = llvm.mlir.constant(0.99000000953674316 : f64) : f64
    %13 = llvm.mlir.constant(0.00392156886 : f32) : f32
    %14 = llvm.mlir.constant(9.99999974E-5 : f32) : f32
    %15 = llvm.mlir.constant(0 : i64) : i64
    %16 = llvm.alloca %0 x !llvm.struct<"struct.dim3", (i32, i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %24 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %25 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %26 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %27 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %28 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %29 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %30 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %31 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %32 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %33 = llvm.alloca %0 x !llvm.struct<"struct.uint2", (i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %34 = llvm.alloca %0 x !llvm.struct<"struct.uint2", (i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %35 = llvm.alloca %0 x !llvm.struct<"struct.uint2", (i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %36 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %37 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %38 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %39 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %40 = llvm.alloca %0 x !llvm.struct<"struct.float2", (f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %41 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %42 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %43 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %44 = llvm.alloca %0 x !llvm.array<3 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %45 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %46 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %47 = llvm.alloca %0 x !llvm.struct<"struct.float2", (f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %48 = llvm.alloca %0 x !llvm.struct<"struct.float2", (f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %49 = llvm.alloca %0 x !llvm.struct<"struct.float4", (f32, f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %50 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %51 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %52 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %53 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %54 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %17 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%16, %17, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %18 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg2, %19 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg3, %20 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg4, %21 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg5, %22 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg6, %23 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg7, %24 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg8, %25 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg9, %26 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg10, %27 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg11, %28 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %55 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %56 = llvm.add %55, %2 overflow<nsw>  : i32
    %57 = llvm.sub %56, %0 overflow<nsw>  : i32
    %58 = llvm.sdiv %57, %2  : i32
    llvm.store %58, %29 {alignment = 4 : i64} : i32, !llvm.ptr
    %59 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %60 = llvm.add %59, %2 overflow<nsw>  : i32
    %61 = llvm.sub %60, %0 overflow<nsw>  : i32
    %62 = llvm.sdiv %61, %2  : i32
    llvm.store %62, %30 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %31 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb33
    %63 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> i32
    %64 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %65 = llvm.icmp "ult" %63, %64 : i32
    llvm.cond_br %65, ^bb2, ^bb34
  ^bb2:  // pred: ^bb1
    llvm.store %3, %32 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb31
    %66 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    %67 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> i32
    %68 = llvm.icmp "ult" %66, %67 : i32
    llvm.cond_br %68, ^bb4, ^bb32
  ^bb4:  // pred: ^bb3
    %69 = llvm.getelementptr inbounds %33[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %70 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    %71 = llvm.mul %70, %2  : i32
    llvm.store %71, %69 {alignment = 4 : i64} : i32, !llvm.ptr
    %72 = llvm.getelementptr inbounds %33[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %73 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> i32
    %74 = llvm.mul %73, %2  : i32
    llvm.store %74, %72 {alignment = 4 : i64} : i32, !llvm.ptr
    %75 = llvm.getelementptr inbounds %34[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %76 = llvm.getelementptr inbounds %33[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %77 = llvm.load %76 {alignment = 4 : i64} : !llvm.ptr -> i32
    %78 = llvm.add %77, %2  : i32
    %79 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %80 = llvm.call @min_int(%78, %79) : (i32, i32) -> i32
    llvm.store %80, %75 {alignment = 4 : i64} : i32, !llvm.ptr
    %81 = llvm.getelementptr inbounds %34[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %82 = llvm.getelementptr inbounds %33[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %83 = llvm.load %82 {alignment = 4 : i64} : !llvm.ptr -> i32
    %84 = llvm.add %83, %2  : i32
    %85 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %86 = llvm.call @min_int(%84, %85) : (i32, i32) -> i32
    llvm.store %86, %81 {alignment = 4 : i64} : i32, !llvm.ptr
    %87 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %88 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> i32
    %89 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> i32
    %90 = llvm.mul %88, %89  : i32
    %91 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    %92 = llvm.add %90, %91  : i32
    %93 = llvm.zext %92 : i32 to i64
    %94 = llvm.getelementptr inbounds %87[%93] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    "llvm.intr.memcpy"(%35, %94, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %95 = llvm.getelementptr inbounds %35[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %96 = llvm.load %95 {alignment = 4 : i64} : !llvm.ptr -> i32
    %97 = llvm.getelementptr inbounds %35[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %98 = llvm.load %97 {alignment = 4 : i64} : !llvm.ptr -> i32
    %99 = llvm.sub %96, %98  : i32
    llvm.store %99, %36 {alignment = 4 : i64} : i32, !llvm.ptr
    %100 = llvm.getelementptr inbounds %33[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %101 = llvm.load %100 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %101, %37 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb4, ^bb29
    %102 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %103 = llvm.getelementptr inbounds %34[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %104 = llvm.load %103 {alignment = 4 : i64} : !llvm.ptr -> i32
    %105 = llvm.icmp "ult" %102, %104 : i32
    llvm.cond_br %105, ^bb6, ^bb30
  ^bb6:  // pred: ^bb5
    %106 = llvm.getelementptr inbounds %33[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %107 = llvm.load %106 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %107, %38 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb6, ^bb27
    %108 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %109 = llvm.getelementptr inbounds %34[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %110 = llvm.load %109 {alignment = 4 : i64} : !llvm.ptr -> i32
    %111 = llvm.icmp "ult" %108, %110 : i32
    llvm.cond_br %111, ^bb8, ^bb28
  ^bb8:  // pred: ^bb7
    %112 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %113 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %114 = llvm.mul %112, %113  : i32
    %115 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %116 = llvm.add %114, %115  : i32
    llvm.store %116, %39 {alignment = 4 : i64} : i32, !llvm.ptr
    %117 = llvm.getelementptr inbounds %40[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %118 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %119 = llvm.uitofp %118 : i32 to f32
    llvm.store %119, %117 {alignment = 4 : i64} : f32, !llvm.ptr
    %120 = llvm.getelementptr inbounds %40[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %121 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %122 = llvm.uitofp %121 : i32 to f32
    llvm.store %122, %120 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %5, %41 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %42 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %43 {alignment = 4 : i64} : i32, !llvm.ptr
    "llvm.intr.memset"(%44, %6, %1) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    %123 = llvm.getelementptr inbounds %35[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %124 = llvm.load %123 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %124, %45 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9
  ^bb9:  // 2 preds: ^bb8, ^bb21
    %125 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %126 = llvm.getelementptr inbounds %35[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %127 = llvm.load %126 {alignment = 4 : i64} : !llvm.ptr -> i32
    %128 = llvm.icmp "ult" %125, %127 : i32
    llvm.cond_br %128, ^bb10, ^bb22
  ^bb10:  // pred: ^bb9
    %129 = llvm.load %42 {alignment = 4 : i64} : !llvm.ptr -> i32
    %130 = llvm.add %129, %0  : i32
    llvm.store %130, %42 {alignment = 4 : i64} : i32, !llvm.ptr
    %131 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %132 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %133 = llvm.sext %132 : i32 to i64
    %134 = llvm.getelementptr inbounds %131[%133] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %135 = llvm.load %134 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %135, %46 {alignment = 4 : i64} : i32, !llvm.ptr
    %136 = llvm.load %22 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %137 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> i32
    %138 = llvm.sext %137 : i32 to i64
    %139 = llvm.getelementptr inbounds %136[%138] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    "llvm.intr.memcpy"(%47, %139, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %140 = llvm.getelementptr inbounds %48[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %141 = llvm.getelementptr inbounds %47[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %142 = llvm.load %141 {alignment = 4 : i64} : !llvm.ptr -> f32
    %143 = llvm.getelementptr inbounds %40[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %144 = llvm.load %143 {alignment = 4 : i64} : !llvm.ptr -> f32
    %145 = llvm.fsub %142, %144  : f32
    llvm.store %145, %140 {alignment = 4 : i64} : f32, !llvm.ptr
    %146 = llvm.getelementptr inbounds %48[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %147 = llvm.getelementptr inbounds %47[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %148 = llvm.load %147 {alignment = 4 : i64} : !llvm.ptr -> f32
    %149 = llvm.getelementptr inbounds %40[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %150 = llvm.load %149 {alignment = 4 : i64} : !llvm.ptr -> f32
    %151 = llvm.fsub %148, %150  : f32
    llvm.store %151, %146 {alignment = 4 : i64} : f32, !llvm.ptr
    %152 = llvm.load %24 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %153 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> i32
    %154 = llvm.sext %153 : i32 to i64
    %155 = llvm.getelementptr inbounds %152[%154] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    "llvm.intr.memcpy"(%49, %155, %7) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %156 = llvm.getelementptr inbounds %49[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %157 = llvm.load %156 {alignment = 4 : i64} : !llvm.ptr -> f32
    %158 = llvm.getelementptr inbounds %48[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %159 = llvm.load %158 {alignment = 4 : i64} : !llvm.ptr -> f32
    %160 = llvm.fmul %157, %159  : f32
    %161 = llvm.getelementptr inbounds %48[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %162 = llvm.load %161 {alignment = 4 : i64} : !llvm.ptr -> f32
    %163 = llvm.getelementptr inbounds %49[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %164 = llvm.load %163 {alignment = 4 : i64} : !llvm.ptr -> f32
    %165 = llvm.getelementptr inbounds %48[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %166 = llvm.load %165 {alignment = 4 : i64} : !llvm.ptr -> f32
    %167 = llvm.fmul %164, %166  : f32
    %168 = llvm.getelementptr inbounds %48[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %169 = llvm.load %168 {alignment = 4 : i64} : !llvm.ptr -> f32
    %170 = llvm.fmul %167, %169  : f32
    %171 = llvm.intr.fmuladd(%160, %162, %170)  : (f32, f32, f32) -> f32
    %172 = llvm.getelementptr inbounds %49[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %173 = llvm.load %172 {alignment = 4 : i64} : !llvm.ptr -> f32
    %174 = llvm.getelementptr inbounds %48[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %175 = llvm.load %174 {alignment = 4 : i64} : !llvm.ptr -> f32
    %176 = llvm.fmul %173, %175  : f32
    %177 = llvm.getelementptr inbounds %48[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %178 = llvm.load %177 {alignment = 4 : i64} : !llvm.ptr -> f32
    %179 = llvm.fmul %176, %178  : f32
    %180 = llvm.fneg %179  : f32
    %181 = llvm.intr.fmuladd(%9, %171, %180)  : (f32, f32, f32) -> f32
    llvm.store %181, %50 {alignment = 4 : i64} : f32, !llvm.ptr
    %182 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    %183 = llvm.fcmp "ogt" %182, %10 : f32
    llvm.cond_br %183, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.br ^bb21
  ^bb12:  // pred: ^bb10
    %184 = llvm.getelementptr inbounds %49[%3, 3] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %185 = llvm.load %184 {alignment = 4 : i64} : !llvm.ptr -> f32
    %186 = llvm.fpext %185 : f32 to f64
    %187 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    %188 = llvm.fpext %187 : f32 to f64
    %189 = llvm.call @exp(%188) : (f64) -> f64
    %190 = llvm.fmul %186, %189  : f64
    %191 = llvm.intr.minnum(%12, %190)  : (f64, f64) -> f64
    %192 = llvm.fptrunc %191 : f64 to f32
    llvm.store %192, %51 {alignment = 4 : i64} : f32, !llvm.ptr
    %193 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> f32
    %194 = llvm.fcmp "olt" %193, %13 : f32
    llvm.cond_br %194, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    llvm.br ^bb21
  ^bb14:  // pred: ^bb12
    %195 = llvm.load %41 {alignment = 4 : i64} : !llvm.ptr -> f32
    %196 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> f32
    %197 = llvm.fsub %5, %196  : f32
    %198 = llvm.fmul %195, %197  : f32
    llvm.store %198, %52 {alignment = 4 : i64} : f32, !llvm.ptr
    %199 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> f32
    %200 = llvm.fcmp "olt" %199, %14 : f32
    llvm.cond_br %200, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    llvm.br ^bb22
  ^bb16:  // pred: ^bb14
    llvm.store %3, %53 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb17
  ^bb17:  // 2 preds: ^bb16, ^bb19
    %201 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    %202 = llvm.icmp "slt" %201, %11 : i32
    llvm.cond_br %202, ^bb18, ^bb20
  ^bb18:  // pred: ^bb17
    %203 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %204 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> i32
    %205 = llvm.mul %204, %11 overflow<nsw>  : i32
    %206 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    %207 = llvm.add %205, %206 overflow<nsw>  : i32
    %208 = llvm.sext %207 : i32 to i64
    %209 = llvm.getelementptr inbounds %203[%208] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %210 = llvm.load %209 {alignment = 4 : i64} : !llvm.ptr -> f32
    %211 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> f32
    %212 = llvm.fmul %210, %211  : f32
    %213 = llvm.load %41 {alignment = 4 : i64} : !llvm.ptr -> f32
    %214 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    %215 = llvm.sext %214 : i32 to i64
    %216 = llvm.getelementptr inbounds %44[%15, %215] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<3 x f32>
    %217 = llvm.load %216 {alignment = 4 : i64} : !llvm.ptr -> f32
    %218 = llvm.intr.fmuladd(%212, %213, %217)  : (f32, f32, f32) -> f32
    llvm.store %218, %216 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb19
  ^bb19:  // pred: ^bb18
    %219 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    %220 = llvm.add %219, %0 overflow<nsw>  : i32
    llvm.store %220, %53 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb17 {loop_annotation = #loop_annotation}
  ^bb20:  // pred: ^bb17
    %221 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %221, %41 {alignment = 4 : i64} : f32, !llvm.ptr
    %222 = llvm.load %42 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %222, %43 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb21
  ^bb21:  // 3 preds: ^bb11, ^bb13, ^bb20
    %223 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %224 = llvm.add %223, %0 overflow<nsw>  : i32
    llvm.store %224, %45 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9 {loop_annotation = #loop_annotation}
  ^bb22:  // 2 preds: ^bb9, ^bb15
    %225 = llvm.load %41 {alignment = 4 : i64} : !llvm.ptr -> f32
    %226 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %227 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %228 = llvm.zext %227 : i32 to i64
    %229 = llvm.getelementptr inbounds %226[%228] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %225, %229 {alignment = 4 : i64} : f32, !llvm.ptr
    %230 = llvm.load %43 {alignment = 4 : i64} : !llvm.ptr -> i32
    %231 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %232 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %233 = llvm.zext %232 : i32 to i64
    %234 = llvm.getelementptr inbounds %231[%233] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %230, %234 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %54 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb23
  ^bb23:  // 2 preds: ^bb22, ^bb25
    %235 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %236 = llvm.icmp "slt" %235, %11 : i32
    llvm.cond_br %236, ^bb24, ^bb26
  ^bb24:  // pred: ^bb23
    %237 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %238 = llvm.sext %237 : i32 to i64
    %239 = llvm.getelementptr inbounds %44[%15, %238] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<3 x f32>
    %240 = llvm.load %239 {alignment = 4 : i64} : !llvm.ptr -> f32
    %241 = llvm.load %41 {alignment = 4 : i64} : !llvm.ptr -> f32
    %242 = llvm.load %27 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %243 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %244 = llvm.sext %243 : i32 to i64
    %245 = llvm.getelementptr inbounds %242[%244] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %246 = llvm.load %245 {alignment = 4 : i64} : !llvm.ptr -> f32
    %247 = llvm.intr.fmuladd(%241, %246, %240)  : (f32, f32, f32) -> f32
    %248 = llvm.load %28 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %249 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %250 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %251 = llvm.mul %249, %250 overflow<nsw>  : i32
    %252 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %253 = llvm.mul %251, %252 overflow<nsw>  : i32
    %254 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %255 = llvm.add %253, %254  : i32
    %256 = llvm.zext %255 : i32 to i64
    %257 = llvm.getelementptr inbounds %248[%256] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %247, %257 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb25
  ^bb25:  // pred: ^bb24
    %258 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %259 = llvm.add %258, %0 overflow<nsw>  : i32
    llvm.store %259, %54 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb23 {loop_annotation = #loop_annotation}
  ^bb26:  // pred: ^bb23
    llvm.br ^bb27
  ^bb27:  // pred: ^bb26
    %260 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %261 = llvm.add %260, %0  : i32
    llvm.store %261, %38 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7 {loop_annotation = #loop_annotation}
  ^bb28:  // pred: ^bb7
    llvm.br ^bb29
  ^bb29:  // pred: ^bb28
    %262 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %263 = llvm.add %262, %0  : i32
    llvm.store %263, %37 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5 {loop_annotation = #loop_annotation}
  ^bb30:  // pred: ^bb5
    llvm.br ^bb31
  ^bb31:  // pred: ^bb30
    %264 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    %265 = llvm.add %264, %0  : i32
    llvm.store %265, %32 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb32:  // pred: ^bb3
    llvm.br ^bb33
  ^bb33:  // pred: ^bb32
    %266 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> i32
    %267 = llvm.add %266, %0  : i32
    llvm.store %267, %31 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb34:  // pred: ^bb1
    llvm.return
  }
  llvm.func internal @min_int(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: i32 {llvm.noundef, llvm.signext}) -> (i32 {llvm.signext}) attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %2 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %1 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %2 {alignment = 4 : i64} : i32, !llvm.ptr
    %3 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i32
    %4 = llvm.load %2 {alignment = 4 : i64} : !llvm.ptr -> i32
    %5 = llvm.icmp "slt" %3, %4 : i32
    llvm.cond_br %5, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %6 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.br ^bb3(%6 : i32)
  ^bb2:  // pred: ^bb0
    %7 = llvm.load %2 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.br ^bb3(%7 : i32)
  ^bb3(%8: i32):  // 2 preds: ^bb1, ^bb2
    llvm.return %8 : i32
  }
  llvm.func @exp(f64 {llvm.noundef}) -> f64 attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["nounwind", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @cpu_rasterizer_render(%arg0: !llvm.array<2 x i64>, %arg1: !llvm.ptr {llvm.noundef}, %arg2: !llvm.ptr {llvm.noundef}, %arg3: i32 {llvm.noundef, llvm.signext}, %arg4: i32 {llvm.noundef, llvm.signext}, %arg5: !llvm.ptr {llvm.noundef}, %arg6: !llvm.ptr {llvm.noundef}, %arg7: !llvm.ptr {llvm.noundef}, %arg8: !llvm.ptr {llvm.noundef}, %arg9: !llvm.ptr {llvm.noundef}, %arg10: !llvm.ptr {llvm.noundef}, %arg11: !llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.alloca %0 x !llvm.struct<"struct.dim3", (i32, i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %3 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%2, %3, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %4 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg2, %5 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg3, %6 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg4, %7 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg5, %8 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg6, %9 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg7, %10 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg8, %11 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg9, %12 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg10, %13 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg11, %14 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %16 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %17 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %18 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %19 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %20 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %21 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %22 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %23 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %24 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %25 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %26 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%15, %2, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %27 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @renderCPU(%27, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26) : (!llvm.array<2 x i64>, !llvm.ptr, !llvm.ptr, i32, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @cpu_rasterizer_preprocess(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: i32 {llvm.noundef, llvm.signext}, %arg2: i32 {llvm.noundef, llvm.signext}, %arg3: !llvm.ptr {llvm.noundef}, %arg4: !llvm.ptr {llvm.noundef}, %arg5: f32 {llvm.noundef}, %arg6: !llvm.ptr {llvm.noundef}, %arg7: !llvm.ptr {llvm.noundef}, %arg8: !llvm.ptr {llvm.noundef}, %arg9: !llvm.ptr {llvm.noundef}, %arg10: !llvm.ptr {llvm.noundef}, %arg11: !llvm.ptr {llvm.noundef}, %arg12: !llvm.ptr {llvm.noundef}, %arg13: !llvm.ptr {llvm.noundef}, %arg14: !llvm.ptr {llvm.noundef}, %arg15: i32 {llvm.noundef, llvm.signext}, %arg16: i32 {llvm.noundef, llvm.signext}, %arg17: f32 {llvm.noundef}, %arg18: f32 {llvm.noundef}, %arg19: f32 {llvm.noundef}, %arg20: f32 {llvm.noundef}, %arg21: !llvm.ptr {llvm.noundef}, %arg22: !llvm.ptr {llvm.noundef}, %arg23: !llvm.ptr {llvm.noundef}, %arg24: !llvm.ptr {llvm.noundef}, %arg25: !llvm.ptr {llvm.noundef}, %arg26: !llvm.ptr {llvm.noundef}, %arg27: !llvm.array<2 x i64>, %arg28: !llvm.ptr {llvm.noundef}, %arg29: i32 {llvm.noundef, llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.alloca %0 x !llvm.struct<"struct.dim3", (i32, i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %24 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %25 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %26 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %27 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %28 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %29 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %30 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %31 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %32 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %33 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg27, %3 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%2, %3, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg0, %4 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %5 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg2, %6 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg3, %7 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg4, %8 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg5, %9 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg6, %10 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg7, %11 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg8, %12 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg9, %13 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg10, %14 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg11, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg12, %16 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg13, %17 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg14, %18 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg15, %19 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg16, %20 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg17, %21 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg18, %22 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg19, %23 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg20, %24 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg21, %25 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg22, %26 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg23, %27 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg24, %28 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg25, %29 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg26, %30 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg28, %31 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg29, %32 {alignment = 4 : i64} : i32, !llvm.ptr
    %34 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %35 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %36 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %37 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %38 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %39 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> f32
    %40 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %41 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %42 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %43 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %44 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %45 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %46 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %47 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %48 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %49 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %50 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %51 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> f32
    %52 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %53 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %54 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %55 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %56 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %57 = llvm.load %27 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %58 = llvm.load %28 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %59 = llvm.load %29 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %60 = llvm.load %30 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %61 = llvm.load %31 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %62 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    "llvm.intr.memcpy"(%33, %2, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %63 = llvm.load %33 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @preprocessCPU(%34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %63, %61, %62) : (i32, i32, i32, !llvm.ptr, !llvm.ptr, f32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, f32, f32, f32, f32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.array<2 x i64>, !llvm.ptr, i32) -> ()
    llvm.return
  }
  llvm.func @cpu_rasterizer_transformPoint4x3(!llvm.array<2 x i64>, !llvm.ptr {llvm.noundef}) -> !llvm.array<2 x i64> attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
}
