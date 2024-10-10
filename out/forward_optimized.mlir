#loop_annotation = #llvm.loop_annotation<mustProgress = true>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i64, dense<64> : vector<2xi64>>, #dlti.dl_entry<i128, dense<128> : vector<2xi64>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi64>>, #dlti.dl_entry<i1, dense<8> : vector<2xi64>>, #dlti.dl_entry<i8, dense<8> : vector<2xi64>>, #dlti.dl_entry<i16, dense<16> : vector<2xi64>>, #dlti.dl_entry<i32, dense<32> : vector<2xi64>>, #dlti.dl_entry<f16, dense<16> : vector<2xi64>>, #dlti.dl_entry<f64, dense<64> : vector<2xi64>>, #dlti.dl_entry<f128, dense<128> : vector<2xi64>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i64>, #dlti.dl_entry<"dlti.endianness", "little">>} {
  llvm.mlir.global external constant @SH_C0(0.282094806 : f32) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : f32
  llvm.mlir.global external constant @SH_C1(0.488602519 : f32) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : f32
  llvm.mlir.global external constant @SH_C2(dense<[1.09254849, -1.09254849, 0.31539157, -1.09254849, 0.546274245]> : tensor<5xf32>) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : !llvm.array<5 x f32>
  llvm.mlir.global external constant @SH_C3(dense<[-0.590043604, 2.89061141, -0.457045794, 0.373176336, -0.457045794, 1.44530571, -0.590043604]> : tensor<7xf32>) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : !llvm.array<7 x f32>
  llvm.func @computeColorFromSH(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: i32 {llvm.noundef, llvm.signext}, %arg2: i32 {llvm.noundef, llvm.signext}, %arg3: !llvm.ptr {llvm.noundef}, %arg4: !llvm.array<2 x i64>, %arg5: !llvm.ptr {llvm.noundef}, %arg6: !llvm.ptr {llvm.noundef}) -> !llvm.array<2 x i64> attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(3 : i32) : i32
    %1 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %2 = llvm.mlir.constant(5.000000e-01 : f32) : f32
    %3 = llvm.mlir.constant(-3.000000e+00 : f32) : f32
    %4 = llvm.mlir.constant(4.000000e+00 : f32) : f32
    %5 = llvm.mlir.constant(3.000000e+00 : f32) : f32
    %6 = llvm.mlir.constant(2.000000e+00 : f32) : f32
    %7 = llvm.mlir.constant(1 : i32) : i32
    %8 = llvm.mlir.constant(12 : i64) : i64
    %9 = llvm.mlir.constant(0.282094806 : f32) : f32
    %10 = llvm.mlir.constant(0 : i32) : i32
    %11 = llvm.mlir.constant(2 : i32) : i32
    %12 = llvm.mlir.constant(0.488602519 : f32) : f32
    %13 = llvm.mlir.addressof @SH_C2 : !llvm.ptr
    %14 = llvm.getelementptr inbounds %13[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<5 x f32>
    %15 = llvm.getelementptr inbounds %13[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<5 x f32>
    %16 = llvm.getelementptr inbounds %13[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<5 x f32>
    %17 = llvm.getelementptr inbounds %13[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<5 x f32>
    %18 = llvm.mlir.addressof @SH_C3 : !llvm.ptr
    %19 = llvm.getelementptr inbounds %18[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<7 x f32>
    %20 = llvm.getelementptr inbounds %18[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<7 x f32>
    %21 = llvm.getelementptr inbounds %18[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<7 x f32>
    %22 = llvm.getelementptr inbounds %18[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<7 x f32>
    %23 = llvm.getelementptr inbounds %18[0, 5] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<7 x f32>
    %24 = llvm.getelementptr inbounds %18[0, 6] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<7 x f32>
    %25 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %26 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %27 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %28 = llvm.alloca %7 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %29 = llvm.alloca %7 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %30 = llvm.alloca %7 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %31 = llvm.alloca %7 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %32 = llvm.alloca %7 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %33 = llvm.alloca %7 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %34 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %35 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %36 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %37 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %38 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %39 = llvm.alloca %7 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %40 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %41 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %42 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %43 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %44 = llvm.alloca %7 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %45 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %46 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %47 = llvm.alloca %7 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %48 = llvm.alloca %7 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %49 = llvm.alloca %7 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %50 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %51 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %52 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %53 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %54 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %55 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %56 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %57 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %58 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %59 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %60 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %61 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %62 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %63 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %64 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %65 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %66 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %67 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %68 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %69 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %70 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %71 = llvm.alloca %7 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %72 = llvm.alloca %7 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %73 = llvm.alloca %7 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %74 = llvm.alloca %7 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %75 = llvm.alloca %7 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %76 = llvm.alloca %7 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %77 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %78 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %79 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %80 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %81 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %82 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %83 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %84 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %85 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %86 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %87 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %88 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %89 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %90 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %91 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %92 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %93 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %94 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %95 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %96 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %97 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %98 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %99 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %100 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %101 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %102 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %103 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %104 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %105 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %106 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %107 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %108 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %109 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %110 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %111 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %112 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %113 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %114 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %115 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %116 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %117 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %118 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %119 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %120 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %121 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %122 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %123 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %124 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %125 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %126 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %127 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %128 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %129 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %130 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %131 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %132 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %133 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %134 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %135 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %136 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %137 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %138 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %139 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %140 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %141 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %142 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %143 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %144 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %145 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %146 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %147 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %148 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %149 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %150 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %151 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %152 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %153 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %154 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %155 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %156 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %157 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %158 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %159 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %160 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %161 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %162 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %163 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %164 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %165 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %166 = llvm.alloca %7 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %167 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %168 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %169 = llvm.alloca %7 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg4, %27 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%26, %27, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg0, %28 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %29 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg2, %30 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg3, %31 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg5, %32 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg6, %33 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %170 = llvm.load %31 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %171 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %172 = llvm.sext %171 : i32 to i64
    %173 = llvm.getelementptr inbounds %170[%172] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    "llvm.intr.memcpy"(%34, %173, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%36, %34, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %174 = llvm.load %36 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%37, %26, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %175 = llvm.load %37 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %176 = llvm.call @vec3_sub(%174, %175) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %176, %38 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%35, %38, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%40, %35, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %177 = llvm.load %40 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %178 = llvm.call @vec3_length(%177) : (!llvm.array<2 x i64>) -> f32
    llvm.store %178, %39 {alignment = 4 : i64} : f32, !llvm.ptr
    %179 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> f32
    "llvm.intr.memcpy"(%42, %35, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %180 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %181 = llvm.call @vec3_div_scalar(%180, %179) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %181, %43 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%41, %43, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%35, %41, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %182 = llvm.load %32 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %183 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %184 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> i32
    %185 = llvm.mul %183, %184 overflow<nsw>  : i32
    %186 = llvm.sext %185 : i32 to i64
    %187 = llvm.getelementptr inbounds %182[%186] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    llvm.store %187, %44 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %188 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%45, %188, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %189 = llvm.load %45 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %190 = llvm.call @vec3_mul_scalar(%189, %9) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %190, %46 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%25, %46, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %191 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %192 = llvm.icmp "sgt" %191, %10 : i32
    llvm.cond_br %192, ^bb1, ^bb6
  ^bb1:  // pred: ^bb0
    %193 = llvm.getelementptr inbounds %35[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %194 = llvm.load %193 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %194, %47 {alignment = 4 : i64} : f32, !llvm.ptr
    %195 = llvm.getelementptr inbounds %35[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %196 = llvm.load %195 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %196, %48 {alignment = 4 : i64} : f32, !llvm.ptr
    %197 = llvm.getelementptr inbounds %35[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %198 = llvm.load %197 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %198, %49 {alignment = 4 : i64} : f32, !llvm.ptr
    %199 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %200 = llvm.getelementptr inbounds %199[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %201 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> f32
    %202 = llvm.fmul %12, %201  : f32
    "llvm.intr.memcpy"(%52, %200, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %203 = llvm.load %52 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %204 = llvm.call @vec3_mul_scalar(%203, %202) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %204, %53 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%51, %53, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%54, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %205 = llvm.load %54 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%55, %51, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %206 = llvm.load %55 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %207 = llvm.call @vec3_sub(%205, %206) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %207, %56 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%50, %56, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %50, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %208 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %209 = llvm.getelementptr inbounds %208[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %210 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> f32
    %211 = llvm.fmul %12, %210  : f32
    "llvm.intr.memcpy"(%59, %209, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %212 = llvm.load %59 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %213 = llvm.call @vec3_mul_scalar(%212, %211) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %213, %60 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%58, %60, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%61, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %214 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%62, %58, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %215 = llvm.load %62 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %216 = llvm.call @vec3_add(%214, %215) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %216, %63 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%57, %63, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %57, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %217 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %218 = llvm.getelementptr inbounds %217[3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %219 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> f32
    %220 = llvm.fmul %12, %219  : f32
    "llvm.intr.memcpy"(%66, %218, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %221 = llvm.load %66 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %222 = llvm.call @vec3_mul_scalar(%221, %220) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %222, %67 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%65, %67, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%68, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %223 = llvm.load %68 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%69, %65, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %224 = llvm.load %69 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %225 = llvm.call @vec3_sub(%223, %224) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %225, %70 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%64, %70, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %64, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %226 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %227 = llvm.icmp "sgt" %226, %7 : i32
    llvm.cond_br %227, ^bb2, ^bb5
  ^bb2:  // pred: ^bb1
    %228 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> f32
    %229 = llvm.fmul %228, %228  : f32
    llvm.store %229, %71 {alignment = 4 : i64} : f32, !llvm.ptr
    %230 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> f32
    %231 = llvm.fmul %230, %230  : f32
    llvm.store %231, %72 {alignment = 4 : i64} : f32, !llvm.ptr
    %232 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> f32
    %233 = llvm.fmul %232, %232  : f32
    llvm.store %233, %73 {alignment = 4 : i64} : f32, !llvm.ptr
    %234 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> f32
    %235 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> f32
    %236 = llvm.fmul %234, %235  : f32
    llvm.store %236, %74 {alignment = 4 : i64} : f32, !llvm.ptr
    %237 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> f32
    %238 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> f32
    %239 = llvm.fmul %237, %238  : f32
    llvm.store %239, %75 {alignment = 4 : i64} : f32, !llvm.ptr
    %240 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> f32
    %241 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> f32
    %242 = llvm.fmul %240, %241  : f32
    llvm.store %242, %76 {alignment = 4 : i64} : f32, !llvm.ptr
    %243 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %244 = llvm.getelementptr inbounds %243[4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %245 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %246 = llvm.load %74 {alignment = 4 : i64} : !llvm.ptr -> f32
    %247 = llvm.fmul %245, %246  : f32
    "llvm.intr.memcpy"(%79, %244, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %248 = llvm.load %79 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %249 = llvm.call @vec3_mul_scalar(%248, %247) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %249, %80 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%78, %80, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%81, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %250 = llvm.load %81 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%82, %78, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %251 = llvm.load %82 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %252 = llvm.call @vec3_add(%250, %251) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %252, %83 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%77, %83, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %77, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %253 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %254 = llvm.getelementptr inbounds %253[5] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %255 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %256 = llvm.load %75 {alignment = 4 : i64} : !llvm.ptr -> f32
    %257 = llvm.fmul %255, %256  : f32
    "llvm.intr.memcpy"(%86, %254, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %258 = llvm.load %86 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %259 = llvm.call @vec3_mul_scalar(%258, %257) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %259, %87 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%85, %87, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%88, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %260 = llvm.load %88 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%89, %85, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %261 = llvm.load %89 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %262 = llvm.call @vec3_add(%260, %261) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %262, %90 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%84, %90, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %84, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %263 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %264 = llvm.getelementptr inbounds %263[6] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %265 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %266 = llvm.load %73 {alignment = 4 : i64} : !llvm.ptr -> f32
    %267 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> f32
    %268 = llvm.fneg %267  : f32
    %269 = llvm.intr.fmuladd(%6, %266, %268)  : (f32, f32, f32) -> f32
    %270 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> f32
    %271 = llvm.fsub %269, %270  : f32
    %272 = llvm.fmul %265, %271  : f32
    "llvm.intr.memcpy"(%93, %264, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %273 = llvm.load %93 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %274 = llvm.call @vec3_mul_scalar(%273, %272) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %274, %94 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%92, %94, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%95, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %275 = llvm.load %95 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%96, %92, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %276 = llvm.load %96 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %277 = llvm.call @vec3_add(%275, %276) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %277, %97 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%91, %97, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %91, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %278 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %279 = llvm.getelementptr inbounds %278[7] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %280 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %281 = llvm.load %76 {alignment = 4 : i64} : !llvm.ptr -> f32
    %282 = llvm.fmul %280, %281  : f32
    "llvm.intr.memcpy"(%100, %279, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %283 = llvm.load %100 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %284 = llvm.call @vec3_mul_scalar(%283, %282) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %284, %101 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%99, %101, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%102, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %285 = llvm.load %102 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%103, %99, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %286 = llvm.load %103 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %287 = llvm.call @vec3_add(%285, %286) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %287, %104 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%98, %104, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %98, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %288 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %289 = llvm.getelementptr inbounds %288[8] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %290 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> f32
    %291 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> f32
    %292 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> f32
    %293 = llvm.fsub %291, %292  : f32
    %294 = llvm.fmul %290, %293  : f32
    "llvm.intr.memcpy"(%107, %289, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %295 = llvm.load %107 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %296 = llvm.call @vec3_mul_scalar(%295, %294) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %296, %108 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%106, %108, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%109, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %297 = llvm.load %109 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%110, %106, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %298 = llvm.load %110 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %299 = llvm.call @vec3_add(%297, %298) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %299, %111 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%105, %111, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %105, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %300 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %301 = llvm.icmp "sgt" %300, %11 : i32
    llvm.cond_br %301, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %302 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %303 = llvm.getelementptr inbounds %302[9] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %304 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> f32
    %305 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> f32
    %306 = llvm.fmul %304, %305  : f32
    %307 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> f32
    %308 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> f32
    %309 = llvm.fneg %308  : f32
    %310 = llvm.intr.fmuladd(%5, %307, %309)  : (f32, f32, f32) -> f32
    %311 = llvm.fmul %306, %310  : f32
    "llvm.intr.memcpy"(%114, %303, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %312 = llvm.load %114 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %313 = llvm.call @vec3_mul_scalar(%312, %311) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %313, %115 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%113, %115, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%116, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %314 = llvm.load %116 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%117, %113, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %315 = llvm.load %117 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %316 = llvm.call @vec3_add(%314, %315) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %316, %118 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%112, %118, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %112, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %317 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %318 = llvm.getelementptr inbounds %317[10] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %319 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %320 = llvm.load %74 {alignment = 4 : i64} : !llvm.ptr -> f32
    %321 = llvm.fmul %319, %320  : f32
    %322 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> f32
    %323 = llvm.fmul %321, %322  : f32
    "llvm.intr.memcpy"(%121, %318, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %324 = llvm.load %121 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %325 = llvm.call @vec3_mul_scalar(%324, %323) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %325, %122 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%120, %122, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%123, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %326 = llvm.load %123 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%124, %120, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %327 = llvm.load %124 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %328 = llvm.call @vec3_add(%326, %327) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %328, %125 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%119, %125, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %119, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %329 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %330 = llvm.getelementptr inbounds %329[11] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %331 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> f32
    %332 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> f32
    %333 = llvm.fmul %331, %332  : f32
    %334 = llvm.load %73 {alignment = 4 : i64} : !llvm.ptr -> f32
    %335 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> f32
    %336 = llvm.fneg %335  : f32
    %337 = llvm.intr.fmuladd(%4, %334, %336)  : (f32, f32, f32) -> f32
    %338 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> f32
    %339 = llvm.fsub %337, %338  : f32
    %340 = llvm.fmul %333, %339  : f32
    "llvm.intr.memcpy"(%128, %330, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %341 = llvm.load %128 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %342 = llvm.call @vec3_mul_scalar(%341, %340) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %342, %129 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%127, %129, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%130, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %343 = llvm.load %130 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%131, %127, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %344 = llvm.load %131 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %345 = llvm.call @vec3_add(%343, %344) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %345, %132 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%126, %132, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %126, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %346 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %347 = llvm.getelementptr inbounds %346[12] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %348 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> f32
    %349 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> f32
    %350 = llvm.fmul %348, %349  : f32
    %351 = llvm.load %73 {alignment = 4 : i64} : !llvm.ptr -> f32
    %352 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> f32
    %353 = llvm.fmul %5, %352  : f32
    %354 = llvm.fneg %353  : f32
    %355 = llvm.intr.fmuladd(%6, %351, %354)  : (f32, f32, f32) -> f32
    %356 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> f32
    %357 = llvm.intr.fmuladd(%3, %356, %355)  : (f32, f32, f32) -> f32
    %358 = llvm.fmul %350, %357  : f32
    "llvm.intr.memcpy"(%135, %347, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %359 = llvm.load %135 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %360 = llvm.call @vec3_mul_scalar(%359, %358) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %360, %136 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%134, %136, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%137, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %361 = llvm.load %137 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%138, %134, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %362 = llvm.load %138 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %363 = llvm.call @vec3_add(%361, %362) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %363, %139 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%133, %139, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %133, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %364 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %365 = llvm.getelementptr inbounds %364[13] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %366 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %367 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> f32
    %368 = llvm.fmul %366, %367  : f32
    %369 = llvm.load %73 {alignment = 4 : i64} : !llvm.ptr -> f32
    %370 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> f32
    %371 = llvm.fneg %370  : f32
    %372 = llvm.intr.fmuladd(%4, %369, %371)  : (f32, f32, f32) -> f32
    %373 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> f32
    %374 = llvm.fsub %372, %373  : f32
    %375 = llvm.fmul %368, %374  : f32
    "llvm.intr.memcpy"(%142, %365, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %376 = llvm.load %142 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %377 = llvm.call @vec3_mul_scalar(%376, %375) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %377, %143 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%141, %143, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%144, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %378 = llvm.load %144 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%145, %141, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %379 = llvm.load %145 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %380 = llvm.call @vec3_add(%378, %379) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %380, %146 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%140, %146, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %140, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %381 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %382 = llvm.getelementptr inbounds %381[14] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %383 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %384 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> f32
    %385 = llvm.fmul %383, %384  : f32
    %386 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> f32
    %387 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> f32
    %388 = llvm.fsub %386, %387  : f32
    %389 = llvm.fmul %385, %388  : f32
    "llvm.intr.memcpy"(%149, %382, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %390 = llvm.load %149 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %391 = llvm.call @vec3_mul_scalar(%390, %389) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %391, %150 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%148, %150, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%151, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %392 = llvm.load %151 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%152, %148, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %393 = llvm.load %152 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %394 = llvm.call @vec3_add(%392, %393) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %394, %153 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%147, %153, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %147, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %395 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %396 = llvm.getelementptr inbounds %395[15] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %397 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %398 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> f32
    %399 = llvm.fmul %397, %398  : f32
    %400 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> f32
    %401 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> f32
    %402 = llvm.intr.fmuladd(%3, %401, %400)  : (f32, f32, f32) -> f32
    %403 = llvm.fmul %399, %402  : f32
    "llvm.intr.memcpy"(%156, %396, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %404 = llvm.load %156 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %405 = llvm.call @vec3_mul_scalar(%404, %403) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %405, %157 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%155, %157, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%158, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %406 = llvm.load %158 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%159, %155, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %407 = llvm.load %159 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %408 = llvm.call @vec3_add(%406, %407) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %408, %160 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%154, %160, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %154, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb2, ^bb3
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb1, ^bb4
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb0, ^bb5
    %409 = llvm.getelementptr inbounds %162[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    llvm.store %2, %409 {alignment = 4 : i64} : f32, !llvm.ptr
    %410 = llvm.getelementptr inbounds %162[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    llvm.store %2, %410 {alignment = 4 : i64} : f32, !llvm.ptr
    %411 = llvm.getelementptr inbounds %162[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    llvm.store %2, %411 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%163, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %412 = llvm.load %163 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    "llvm.intr.memcpy"(%164, %162, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %413 = llvm.load %164 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %414 = llvm.call @vec3_add(%412, %413) : (!llvm.array<2 x i64>, !llvm.array<2 x i64>) -> !llvm.array<2 x i64>
    llvm.store %414, %165 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%161, %165, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %161, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %415 = llvm.getelementptr inbounds %25[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %416 = llvm.load %415 {alignment = 4 : i64} : !llvm.ptr -> f32
    %417 = llvm.fcmp "olt" %416, %1 : f32
    %418 = llvm.select %417, %7, %10 : i1, i32
    %419 = llvm.load %33 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %420 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %421 = llvm.mul %420, %0 overflow<nsw>  : i32
    %422 = llvm.add %421, %10 overflow<nsw>  : i32
    %423 = llvm.sext %422 : i32 to i64
    %424 = llvm.getelementptr inbounds %419[%423] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %418, %424 {alignment = 4 : i64} : i32, !llvm.ptr
    %425 = llvm.getelementptr inbounds %25[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %426 = llvm.load %425 {alignment = 4 : i64} : !llvm.ptr -> f32
    %427 = llvm.fcmp "olt" %426, %1 : f32
    %428 = llvm.select %427, %7, %10 : i1, i32
    %429 = llvm.load %33 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %430 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %431 = llvm.mul %430, %0 overflow<nsw>  : i32
    %432 = llvm.add %431, %7 overflow<nsw>  : i32
    %433 = llvm.sext %432 : i32 to i64
    %434 = llvm.getelementptr inbounds %429[%433] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %428, %434 {alignment = 4 : i64} : i32, !llvm.ptr
    %435 = llvm.getelementptr inbounds %25[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %436 = llvm.load %435 {alignment = 4 : i64} : !llvm.ptr -> f32
    %437 = llvm.fcmp "olt" %436, %1 : f32
    %438 = llvm.select %437, %7, %10 : i1, i32
    %439 = llvm.load %33 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %440 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %441 = llvm.mul %440, %0 overflow<nsw>  : i32
    %442 = llvm.add %441, %11 overflow<nsw>  : i32
    %443 = llvm.sext %442 : i32 to i64
    %444 = llvm.getelementptr inbounds %439[%443] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %438, %444 {alignment = 4 : i64} : i32, !llvm.ptr
    "llvm.intr.memcpy"(%167, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %445 = llvm.load %167 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %446 = llvm.call @vec3_max_scalar(%445, %1) : (!llvm.array<2 x i64>, f32) -> !llvm.array<2 x i64>
    llvm.store %446, %168 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%166, %168, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%25, %166, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%169, %25, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %447 = llvm.load %169 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %447 : !llvm.array<2 x i64>
  }
  llvm.func internal @vec3_sub(%arg0: !llvm.array<2 x i64>, %arg1: !llvm.array<2 x i64>) -> !llvm.array<2 x i64> attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%3, %4, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %6 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%5, %6, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %8 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %9 = llvm.getelementptr inbounds %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %10 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> f32
    %11 = llvm.getelementptr inbounds %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %12 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %13 = llvm.fsub %10, %12  : f32
    llvm.store %13, %8 {alignment = 4 : i64} : f32, !llvm.ptr
    %14 = llvm.getelementptr inbounds %2[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %15 = llvm.getelementptr inbounds %3[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %16 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %17 = llvm.getelementptr inbounds %5[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %18 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> f32
    %19 = llvm.fsub %16, %18  : f32
    llvm.store %19, %14 {alignment = 4 : i64} : f32, !llvm.ptr
    %20 = llvm.getelementptr inbounds %2[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %21 = llvm.getelementptr inbounds %3[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %22 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> f32
    %23 = llvm.getelementptr inbounds %5[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %24 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %25 = llvm.fsub %22, %24  : f32
    llvm.store %25, %20 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%7, %2, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %26 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %26 : !llvm.array<2 x i64>
  }
  llvm.func internal @vec3_length(%arg0: !llvm.array<2 x i64>) -> f32 attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %3 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%2, %3, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %4 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %5 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> f32
    %6 = llvm.getelementptr inbounds %2[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %7 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> f32
    %8 = llvm.fmul %7, %7  : f32
    %9 = llvm.intr.fmuladd(%5, %5, %8)  : (f32, f32, f32) -> f32
    %10 = llvm.getelementptr inbounds %2[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %11 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> f32
    %12 = llvm.intr.fmuladd(%11, %11, %9)  : (f32, f32, f32) -> f32
    %13 = llvm.fpext %12 : f32 to f64
    %14 = llvm.call @sqrt(%13) : (f64) -> f64
    %15 = llvm.fptrunc %14 : f64 to f32
    llvm.return %15 : f32
  }
  llvm.func internal @vec3_div_scalar(%arg0: !llvm.array<2 x i64>, %arg1: f32 {llvm.noundef}) -> !llvm.array<2 x i64> attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%3, %4, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %5 {alignment = 4 : i64} : f32, !llvm.ptr
    %7 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %8 = llvm.getelementptr inbounds %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %9 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> f32
    %10 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> f32
    %11 = llvm.fdiv %9, %10  : f32
    llvm.store %11, %7 {alignment = 4 : i64} : f32, !llvm.ptr
    %12 = llvm.getelementptr inbounds %2[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %13 = llvm.getelementptr inbounds %3[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %14 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %15 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> f32
    %16 = llvm.fdiv %14, %15  : f32
    llvm.store %16, %12 {alignment = 4 : i64} : f32, !llvm.ptr
    %17 = llvm.getelementptr inbounds %2[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %18 = llvm.getelementptr inbounds %3[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %19 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> f32
    %20 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> f32
    %21 = llvm.fdiv %19, %20  : f32
    llvm.store %21, %17 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%6, %2, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %22 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %22 : !llvm.array<2 x i64>
  }
  llvm.func internal @vec3_mul_scalar(%arg0: !llvm.array<2 x i64>, %arg1: f32 {llvm.noundef}) -> !llvm.array<2 x i64> attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%3, %4, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %5 {alignment = 4 : i64} : f32, !llvm.ptr
    %7 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %8 = llvm.getelementptr inbounds %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %9 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> f32
    %10 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> f32
    %11 = llvm.fmul %9, %10  : f32
    llvm.store %11, %7 {alignment = 4 : i64} : f32, !llvm.ptr
    %12 = llvm.getelementptr inbounds %2[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %13 = llvm.getelementptr inbounds %3[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %14 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %15 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> f32
    %16 = llvm.fmul %14, %15  : f32
    llvm.store %16, %12 {alignment = 4 : i64} : f32, !llvm.ptr
    %17 = llvm.getelementptr inbounds %2[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %18 = llvm.getelementptr inbounds %3[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %19 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> f32
    %20 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> f32
    %21 = llvm.fmul %19, %20  : f32
    llvm.store %21, %17 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%6, %2, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %22 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %22 : !llvm.array<2 x i64>
  }
  llvm.func internal @vec3_add(%arg0: !llvm.array<2 x i64>, %arg1: !llvm.array<2 x i64>) -> !llvm.array<2 x i64> attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%3, %4, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %6 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%5, %6, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %8 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %9 = llvm.getelementptr inbounds %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %10 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> f32
    %11 = llvm.getelementptr inbounds %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %12 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %13 = llvm.fadd %10, %12  : f32
    llvm.store %13, %8 {alignment = 4 : i64} : f32, !llvm.ptr
    %14 = llvm.getelementptr inbounds %2[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %15 = llvm.getelementptr inbounds %3[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %16 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %17 = llvm.getelementptr inbounds %5[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %18 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> f32
    %19 = llvm.fadd %16, %18  : f32
    llvm.store %19, %14 {alignment = 4 : i64} : f32, !llvm.ptr
    %20 = llvm.getelementptr inbounds %2[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %21 = llvm.getelementptr inbounds %3[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %22 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> f32
    %23 = llvm.getelementptr inbounds %5[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %24 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %25 = llvm.fadd %22, %24  : f32
    llvm.store %25, %20 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%7, %2, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %26 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %26 : !llvm.array<2 x i64>
  }
  llvm.func internal @vec3_max_scalar(%arg0: !llvm.array<2 x i64>, %arg1: f32 {llvm.noundef}) -> !llvm.array<2 x i64> attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%3, %4, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %5 {alignment = 4 : i64} : f32, !llvm.ptr
    %7 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %8 = llvm.getelementptr inbounds %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %9 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> f32
    %10 = llvm.fpext %9 : f32 to f64
    %11 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> f32
    %12 = llvm.fpext %11 : f32 to f64
    %13 = llvm.intr.maxnum(%10, %12)  : (f64, f64) -> f64
    %14 = llvm.fptrunc %13 : f64 to f32
    llvm.store %14, %7 {alignment = 4 : i64} : f32, !llvm.ptr
    %15 = llvm.getelementptr inbounds %2[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %16 = llvm.getelementptr inbounds %3[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %17 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %18 = llvm.fpext %17 : f32 to f64
    %19 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> f32
    %20 = llvm.fpext %19 : f32 to f64
    %21 = llvm.intr.maxnum(%18, %20)  : (f64, f64) -> f64
    %22 = llvm.fptrunc %21 : f64 to f32
    llvm.store %22, %15 {alignment = 4 : i64} : f32, !llvm.ptr
    %23 = llvm.getelementptr inbounds %2[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %24 = llvm.getelementptr inbounds %3[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %25 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %26 = llvm.fpext %25 : f32 to f64
    %27 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> f32
    %28 = llvm.fpext %27 : f32 to f64
    %29 = llvm.intr.maxnum(%26, %28)  : (f64, f64) -> f64
    %30 = llvm.fptrunc %29 : f64 to f32
    llvm.store %30, %23 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%6, %2, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %31 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %31 : !llvm.array<2 x i64>
  }
  llvm.func @preprocessCPU(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: i32 {llvm.noundef, llvm.signext}, %arg2: i32 {llvm.noundef, llvm.signext}, %arg3: !llvm.ptr {llvm.noundef}, %arg4: !llvm.ptr {llvm.noundef}, %arg5: f32 {llvm.noundef}, %arg6: !llvm.ptr {llvm.noundef}, %arg7: !llvm.ptr {llvm.noundef}, %arg8: !llvm.ptr {llvm.noundef}, %arg9: !llvm.ptr {llvm.noundef}, %arg10: !llvm.ptr {llvm.noundef}, %arg11: !llvm.ptr {llvm.noundef}, %arg12: !llvm.ptr {llvm.noundef}, %arg13: !llvm.ptr {llvm.noundef}, %arg14: !llvm.ptr {llvm.noundef}, %arg15: i32 {llvm.noundef, llvm.signext}, %arg16: i32 {llvm.noundef, llvm.signext}, %arg17: f32 {llvm.noundef}, %arg18: f32 {llvm.noundef}, %arg19: f32 {llvm.noundef}, %arg20: f32 {llvm.noundef}, %arg21: !llvm.ptr {llvm.noundef}, %arg22: !llvm.ptr {llvm.noundef}, %arg23: !llvm.ptr {llvm.noundef}, %arg24: !llvm.ptr {llvm.noundef}, %arg25: !llvm.ptr {llvm.noundef}, %arg26: !llvm.ptr {llvm.noundef}, %arg27: !llvm.array<2 x i64>, %arg28: !llvm.ptr {llvm.noundef}, %arg29: i32 {llvm.noundef, llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.mlir.constant(3.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(0.10000000149011612 : f64) : f64
    %3 = llvm.mlir.constant(5.000000e-01 : f32) : f32
    %4 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %5 = llvm.mlir.constant(6 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(12 : i64) : i64
    %8 = llvm.mlir.constant(0 : i32) : i32
    %9 = llvm.mlir.constant(3 : i32) : i32
    %10 = llvm.mlir.constant(2 : i32) : i32
    %11 = llvm.mlir.constant(1.000000e-07 : f32) : f32
    %12 = llvm.mlir.constant(1.000000e+00 : f32) : f32
    %13 = llvm.mlir.zero : !llvm.ptr
    %14 = llvm.alloca %6 x !llvm.struct<"struct.dim3", (i32, i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %6 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %6 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %6 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %6 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %24 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %25 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %26 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %27 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %28 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %29 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %30 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %31 = llvm.alloca %6 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %32 = llvm.alloca %6 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %33 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %34 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %35 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %36 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %37 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %38 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %39 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %40 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %41 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %42 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %43 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %44 = llvm.alloca %6 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %45 = llvm.alloca %6 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %46 = llvm.alloca %6 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %47 = llvm.alloca %6 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %48 = llvm.alloca %6 x !llvm.struct<"struct.float4", (f32, f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %49 = llvm.alloca %6 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %50 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %51 = llvm.alloca %6 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %52 = llvm.alloca %6 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %53 = llvm.alloca %6 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %54 = llvm.alloca %6 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %55 = llvm.alloca %6 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %56 = llvm.alloca %6 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %57 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %58 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %59 = llvm.alloca %6 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %60 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %61 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %62 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %63 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %64 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %65 = llvm.alloca %6 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %66 = llvm.alloca %6 x !llvm.struct<"struct.float2", (f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %67 = llvm.alloca %6 x !llvm.struct<"struct.uint2", (i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %68 = llvm.alloca %6 x !llvm.struct<"struct.uint2", (i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %69 = llvm.alloca %6 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %70 = llvm.alloca %6 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %71 = llvm.alloca %6 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %72 = llvm.alloca %6 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %73 = llvm.alloca %6 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg27, %15 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%14, %15, %7) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
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
    llvm.store %8, %45 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb12
    %74 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %75 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %76 = llvm.icmp "slt" %74, %75 : i32
    llvm.cond_br %76, ^bb2, ^bb13
  ^bb2:  // pred: ^bb1
    %77 = llvm.load %37 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %78 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %79 = llvm.sext %78 : i32 to i64
    %80 = llvm.getelementptr inbounds %77[%79] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %8, %80 {alignment = 4 : i64} : i32, !llvm.ptr
    %81 = llvm.load %43 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %82 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %83 = llvm.sext %82 : i32 to i64
    %84 = llvm.getelementptr inbounds %81[%83] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %8, %84 {alignment = 4 : i64} : i32, !llvm.ptr
    %85 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %86 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %87 = llvm.load %28 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %88 = llvm.load %29 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %89 = llvm.load %44 {alignment = 4 : i64} : !llvm.ptr -> i32
    %90 = llvm.call @cpu_rasterizer_in_frustum(%85, %86, %87, %88, %89, %46) : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, !llvm.ptr) -> i32
    %91 = llvm.icmp "ne" %90, %8 : i32
    llvm.cond_br %91, ^bb4, ^bb3
  ^bb3:  // 3 preds: ^bb2, ^bb7, ^bb8
    llvm.br ^bb12
  ^bb4:  // pred: ^bb2
    %92 = llvm.getelementptr inbounds %47[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %93 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %94 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %95 = llvm.mul %94, %9 overflow<nsw>  : i32
    %96 = llvm.sext %95 : i32 to i64
    %97 = llvm.getelementptr inbounds %93[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %98 = llvm.load %97 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %98, %92 {alignment = 4 : i64} : f32, !llvm.ptr
    %99 = llvm.getelementptr inbounds %47[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %100 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %101 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %102 = llvm.mul %101, %9 overflow<nsw>  : i32
    %103 = llvm.add %102, %6 overflow<nsw>  : i32
    %104 = llvm.sext %103 : i32 to i64
    %105 = llvm.getelementptr inbounds %100[%104] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %106 = llvm.load %105 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %106, %99 {alignment = 4 : i64} : f32, !llvm.ptr
    %107 = llvm.getelementptr inbounds %47[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %108 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %109 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %110 = llvm.mul %109, %9 overflow<nsw>  : i32
    %111 = llvm.add %110, %10 overflow<nsw>  : i32
    %112 = llvm.sext %111 : i32 to i64
    %113 = llvm.getelementptr inbounds %108[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %114 = llvm.load %113 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %114, %107 {alignment = 4 : i64} : f32, !llvm.ptr
    %115 = llvm.load %29 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%49, %47, %7) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %116 = llvm.load %49 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %117 = llvm.call @cpu_rasterizer_transformPoint4x4(%116, %115) : (!llvm.array<2 x i64>, !llvm.ptr) -> !llvm.array<2 x i64>
    llvm.store %117, %48 {alignment = 4 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    %118 = llvm.getelementptr inbounds %48[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %119 = llvm.load %118 {alignment = 4 : i64} : !llvm.ptr -> f32
    %120 = llvm.fadd %119, %11  : f32
    %121 = llvm.fdiv %12, %120  : f32
    llvm.store %121, %50 {alignment = 4 : i64} : f32, !llvm.ptr
    %122 = llvm.getelementptr inbounds %51[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %123 = llvm.getelementptr inbounds %48[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %124 = llvm.load %123 {alignment = 4 : i64} : !llvm.ptr -> f32
    %125 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    %126 = llvm.fmul %124, %125  : f32
    llvm.store %126, %122 {alignment = 4 : i64} : f32, !llvm.ptr
    %127 = llvm.getelementptr inbounds %51[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %128 = llvm.getelementptr inbounds %48[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %129 = llvm.load %128 {alignment = 4 : i64} : !llvm.ptr -> f32
    %130 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    %131 = llvm.fmul %129, %130  : f32
    llvm.store %131, %127 {alignment = 4 : i64} : f32, !llvm.ptr
    %132 = llvm.getelementptr inbounds %51[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %133 = llvm.getelementptr inbounds %48[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %134 = llvm.load %133 {alignment = 4 : i64} : !llvm.ptr -> f32
    %135 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    %136 = llvm.fmul %134, %135  : f32
    llvm.store %136, %132 {alignment = 4 : i64} : f32, !llvm.ptr
    %137 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %138 = llvm.icmp "ne" %137, %13 : !llvm.ptr
    llvm.cond_br %138, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %139 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %140 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %141 = llvm.mul %140, %5 overflow<nsw>  : i32
    %142 = llvm.sext %141 : i32 to i64
    %143 = llvm.getelementptr inbounds %139[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %143, %52 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb7
  ^bb6:  // pred: ^bb4
    %144 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %145 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %146 = llvm.sext %145 : i32 to i64
    %147 = llvm.getelementptr inbounds %144[%146] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %148 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> f32
    %149 = llvm.load %22 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %150 = llvm.getelementptr inbounds %149[%146] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %151 = llvm.load %40 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %152 = llvm.mul %145, %5 overflow<nsw>  : i32
    %153 = llvm.sext %152 : i32 to i64
    %154 = llvm.getelementptr inbounds %151[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    "llvm.intr.memcpy"(%53, %147, %7) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %155 = llvm.load %53 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %156 = llvm.load %150 {alignment = 4 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @computeCov3D(%155, %148, %156, %154) : (!llvm.array<2 x i64>, f32, !llvm.array<2 x i64>, !llvm.ptr) -> ()
    %157 = llvm.load %40 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %158 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %159 = llvm.mul %158, %5 overflow<nsw>  : i32
    %160 = llvm.sext %159 : i32 to i64
    %161 = llvm.getelementptr inbounds %157[%160] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %161, %52 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb5, ^bb6
    %162 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> f32
    %163 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> f32
    %164 = llvm.load %33 {alignment = 4 : i64} : !llvm.ptr -> f32
    %165 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> f32
    %166 = llvm.load %52 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %167 = llvm.load %28 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%55, %47, %7) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %168 = llvm.load %55 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %169 = llvm.call @computeCov2D(%168, %162, %163, %164, %165, %166, %167) : (!llvm.array<2 x i64>, f32, f32, f32, f32, !llvm.ptr, !llvm.ptr) -> !llvm.array<2 x i64>
    llvm.store %169, %56 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%54, %56, %7) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %170 = llvm.getelementptr inbounds %54[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %171 = llvm.load %170 {alignment = 4 : i64} : !llvm.ptr -> f32
    %172 = llvm.getelementptr inbounds %54[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %173 = llvm.load %172 {alignment = 4 : i64} : !llvm.ptr -> f32
    %174 = llvm.getelementptr inbounds %54[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %175 = llvm.load %174 {alignment = 4 : i64} : !llvm.ptr -> f32
    %176 = llvm.fmul %175, %175  : f32
    %177 = llvm.fneg %176  : f32
    %178 = llvm.intr.fmuladd(%171, %173, %177)  : (f32, f32, f32) -> f32
    llvm.store %178, %57 {alignment = 4 : i64} : f32, !llvm.ptr
    %179 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> f32
    %180 = llvm.fcmp "oeq" %179, %4 : f32
    llvm.cond_br %180, ^bb3, ^bb8
  ^bb8:  // pred: ^bb7
    %181 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> f32
    %182 = llvm.fdiv %12, %181  : f32
    llvm.store %182, %58 {alignment = 4 : i64} : f32, !llvm.ptr
    %183 = llvm.getelementptr inbounds %59[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %184 = llvm.load %172 {alignment = 4 : i64} : !llvm.ptr -> f32
    %185 = llvm.load %58 {alignment = 4 : i64} : !llvm.ptr -> f32
    %186 = llvm.fmul %184, %185  : f32
    llvm.store %186, %183 {alignment = 4 : i64} : f32, !llvm.ptr
    %187 = llvm.getelementptr inbounds %59[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %188 = llvm.load %174 {alignment = 4 : i64} : !llvm.ptr -> f32
    %189 = llvm.fneg %188  : f32
    %190 = llvm.load %58 {alignment = 4 : i64} : !llvm.ptr -> f32
    %191 = llvm.fmul %189, %190  : f32
    llvm.store %191, %187 {alignment = 4 : i64} : f32, !llvm.ptr
    %192 = llvm.getelementptr inbounds %59[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %193 = llvm.load %170 {alignment = 4 : i64} : !llvm.ptr -> f32
    %194 = llvm.load %58 {alignment = 4 : i64} : !llvm.ptr -> f32
    %195 = llvm.fmul %193, %194  : f32
    llvm.store %195, %192 {alignment = 4 : i64} : f32, !llvm.ptr
    %196 = llvm.load %170 {alignment = 4 : i64} : !llvm.ptr -> f32
    %197 = llvm.load %172 {alignment = 4 : i64} : !llvm.ptr -> f32
    %198 = llvm.fadd %196, %197  : f32
    %199 = llvm.fmul %3, %198  : f32
    llvm.store %199, %60 {alignment = 4 : i64} : f32, !llvm.ptr
    %200 = llvm.load %60 {alignment = 4 : i64} : !llvm.ptr -> f32
    %201 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> f32
    %202 = llvm.fneg %201  : f32
    %203 = llvm.intr.fmuladd(%200, %200, %202)  : (f32, f32, f32) -> f32
    llvm.store %203, %61 {alignment = 4 : i64} : f32, !llvm.ptr
    %204 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> f32
    %205 = llvm.fpext %204 : f32 to f64
    %206 = llvm.intr.maxnum(%205, %2)  : (f64, f64) -> f64
    %207 = llvm.fptrunc %206 : f64 to f32
    llvm.store %207, %61 {alignment = 4 : i64} : f32, !llvm.ptr
    %208 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> f32
    %209 = llvm.fpext %208 : f32 to f64
    %210 = llvm.call @sqrt(%209) : (f64) -> f64
    %211 = llvm.fptrunc %210 : f64 to f32
    llvm.store %211, %62 {alignment = 4 : i64} : f32, !llvm.ptr
    %212 = llvm.load %60 {alignment = 4 : i64} : !llvm.ptr -> f32
    %213 = llvm.load %62 {alignment = 4 : i64} : !llvm.ptr -> f32
    %214 = llvm.fadd %212, %213  : f32
    llvm.store %214, %63 {alignment = 4 : i64} : f32, !llvm.ptr
    %215 = llvm.load %60 {alignment = 4 : i64} : !llvm.ptr -> f32
    %216 = llvm.load %62 {alignment = 4 : i64} : !llvm.ptr -> f32
    %217 = llvm.fsub %215, %216  : f32
    llvm.store %217, %64 {alignment = 4 : i64} : f32, !llvm.ptr
    %218 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr -> f32
    %219 = llvm.fpext %218 : f32 to f64
    %220 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> f32
    %221 = llvm.fpext %220 : f32 to f64
    %222 = llvm.intr.maxnum(%219, %221)  : (f64, f64) -> f64
    %223 = llvm.call @sqrt(%222) : (f64) -> f64
    %224 = llvm.fmul %1, %223  : f64
    %225 = llvm.intr.ceil(%224)  : (f64) -> f64
    %226 = llvm.fptrunc %225 : f64 to f32
    llvm.store %226, %65 {alignment = 4 : i64} : f32, !llvm.ptr
    %227 = llvm.getelementptr inbounds %66[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %228 = llvm.load %122 {alignment = 4 : i64} : !llvm.ptr -> f32
    %229 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> i32
    %230 = llvm.call @cpu_rasterizer_ndc2Pix(%228, %229) : (f32, i32) -> f32
    llvm.store %230, %227 {alignment = 4 : i64} : f32, !llvm.ptr
    %231 = llvm.getelementptr inbounds %66[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %232 = llvm.load %127 {alignment = 4 : i64} : !llvm.ptr -> f32
    %233 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    %234 = llvm.call @cpu_rasterizer_ndc2Pix(%232, %233) : (f32, i32) -> f32
    llvm.store %234, %231 {alignment = 4 : i64} : f32, !llvm.ptr
    %235 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    %236 = llvm.fptosi %235 : f32 to i32
    %237 = llvm.getelementptr inbounds %66[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(f32, f32)>
    %238 = llvm.load %237 {alignment = 4 : i64} : !llvm.ptr -> f32
    %239 = llvm.getelementptr inbounds %66[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(f32, f32)>
    %240 = llvm.load %239 {alignment = 4 : i64} : !llvm.ptr -> f32
    "llvm.intr.memcpy"(%69, %14, %7) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %241 = llvm.load %69 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @cpu_rasterizer_getRect(%238, %240, %236, %67, %68, %241) : (f32, f32, i32, !llvm.ptr, !llvm.ptr, !llvm.array<2 x i64>) -> ()
    %242 = llvm.getelementptr inbounds %68[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %243 = llvm.load %242 {alignment = 4 : i64} : !llvm.ptr -> i32
    %244 = llvm.getelementptr inbounds %67[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %245 = llvm.load %244 {alignment = 4 : i64} : !llvm.ptr -> i32
    %246 = llvm.sub %243, %245  : i32
    %247 = llvm.getelementptr inbounds %68[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %248 = llvm.load %247 {alignment = 4 : i64} : !llvm.ptr -> i32
    %249 = llvm.getelementptr inbounds %67[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %250 = llvm.load %249 {alignment = 4 : i64} : !llvm.ptr -> i32
    %251 = llvm.sub %248, %250  : i32
    %252 = llvm.mul %246, %251  : i32
    %253 = llvm.icmp "eq" %252, %8 : i32
    llvm.cond_br %253, ^bb3, ^bb9
  ^bb9:  // pred: ^bb8
    %254 = llvm.load %27 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %255 = llvm.icmp "eq" %254, %13 : !llvm.ptr
    llvm.cond_br %255, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %256 = llvm.load %30 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%70, %256, %7) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %257 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %258 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %259 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %260 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %261 = llvm.load %24 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %262 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%72, %70, %7) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %263 = llvm.load %72 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %264 = llvm.call @computeColorFromSH(%257, %258, %259, %260, %263, %261, %262) : (i32, i32, i32, !llvm.ptr, !llvm.array<2 x i64>, !llvm.ptr, !llvm.ptr) -> !llvm.array<2 x i64>
    llvm.store %264, %73 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%71, %73, %7) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %265 = llvm.getelementptr inbounds %71[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %266 = llvm.load %265 {alignment = 4 : i64} : !llvm.ptr -> f32
    %267 = llvm.load %41 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %268 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %269 = llvm.mul %268, %9 overflow<nsw>  : i32
    %270 = llvm.add %269, %8 overflow<nsw>  : i32
    %271 = llvm.sext %270 : i32 to i64
    %272 = llvm.getelementptr inbounds %267[%271] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %266, %272 {alignment = 4 : i64} : f32, !llvm.ptr
    %273 = llvm.getelementptr inbounds %71[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %274 = llvm.load %273 {alignment = 4 : i64} : !llvm.ptr -> f32
    %275 = llvm.load %41 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %276 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %277 = llvm.mul %276, %9 overflow<nsw>  : i32
    %278 = llvm.add %277, %6 overflow<nsw>  : i32
    %279 = llvm.sext %278 : i32 to i64
    %280 = llvm.getelementptr inbounds %275[%279] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %274, %280 {alignment = 4 : i64} : f32, !llvm.ptr
    %281 = llvm.getelementptr inbounds %71[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %282 = llvm.load %281 {alignment = 4 : i64} : !llvm.ptr -> f32
    %283 = llvm.load %41 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %284 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %285 = llvm.mul %284, %9 overflow<nsw>  : i32
    %286 = llvm.add %285, %10 overflow<nsw>  : i32
    %287 = llvm.sext %286 : i32 to i64
    %288 = llvm.getelementptr inbounds %283[%287] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %282, %288 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb11
  ^bb11:  // 2 preds: ^bb9, ^bb10
    %289 = llvm.getelementptr inbounds %46[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %290 = llvm.load %289 {alignment = 4 : i64} : !llvm.ptr -> f32
    %291 = llvm.load %39 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %292 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %293 = llvm.sext %292 : i32 to i64
    %294 = llvm.getelementptr inbounds %291[%293] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %290, %294 {alignment = 4 : i64} : f32, !llvm.ptr
    %295 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    %296 = llvm.fptosi %295 : f32 to i32
    %297 = llvm.load %37 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %298 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %299 = llvm.sext %298 : i32 to i64
    %300 = llvm.getelementptr inbounds %297[%299] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %296, %300 {alignment = 4 : i64} : i32, !llvm.ptr
    %301 = llvm.load %38 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %302 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %303 = llvm.sext %302 : i32 to i64
    %304 = llvm.getelementptr inbounds %301[%303] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    "llvm.intr.memcpy"(%304, %66, %0) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %305 = llvm.load %183 {alignment = 4 : i64} : !llvm.ptr -> f32
    %306 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %307 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %308 = llvm.sext %307 : i32 to i64
    %309 = llvm.getelementptr inbounds %306[%308] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %310 = llvm.getelementptr inbounds %309[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    llvm.store %305, %310 {alignment = 4 : i64} : f32, !llvm.ptr
    %311 = llvm.load %187 {alignment = 4 : i64} : !llvm.ptr -> f32
    %312 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %313 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %314 = llvm.sext %313 : i32 to i64
    %315 = llvm.getelementptr inbounds %312[%314] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %316 = llvm.getelementptr inbounds %315[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    llvm.store %311, %316 {alignment = 4 : i64} : f32, !llvm.ptr
    %317 = llvm.load %192 {alignment = 4 : i64} : !llvm.ptr -> f32
    %318 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %319 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %320 = llvm.sext %319 : i32 to i64
    %321 = llvm.getelementptr inbounds %318[%320] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %322 = llvm.getelementptr inbounds %321[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    llvm.store %317, %322 {alignment = 4 : i64} : f32, !llvm.ptr
    %323 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %324 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %325 = llvm.sext %324 : i32 to i64
    %326 = llvm.getelementptr inbounds %323[%325] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %327 = llvm.load %326 {alignment = 4 : i64} : !llvm.ptr -> f32
    %328 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %329 = llvm.getelementptr inbounds %328[%325] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %330 = llvm.getelementptr inbounds %329[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    llvm.store %327, %330 {alignment = 4 : i64} : f32, !llvm.ptr
    %331 = llvm.load %247 {alignment = 4 : i64} : !llvm.ptr -> i32
    %332 = llvm.load %249 {alignment = 4 : i64} : !llvm.ptr -> i32
    %333 = llvm.sub %331, %332  : i32
    %334 = llvm.load %242 {alignment = 4 : i64} : !llvm.ptr -> i32
    %335 = llvm.load %244 {alignment = 4 : i64} : !llvm.ptr -> i32
    %336 = llvm.sub %334, %335  : i32
    %337 = llvm.mul %333, %336  : i32
    %338 = llvm.load %43 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %339 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %340 = llvm.sext %339 : i32 to i64
    %341 = llvm.getelementptr inbounds %338[%340] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %337, %341 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb12
  ^bb12:  // 2 preds: ^bb3, ^bb11
    %342 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %343 = llvm.add %342, %6 overflow<nsw>  : i32
    llvm.store %343, %45 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb13:  // pred: ^bb1
    llvm.return
  }
  llvm.func @cpu_rasterizer_in_frustum(i32 {llvm.noundef, llvm.signext}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, i32 {llvm.noundef, llvm.signext}, !llvm.ptr {llvm.noundef}) -> (i32 {llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @cpu_rasterizer_transformPoint4x4(!llvm.array<2 x i64>, !llvm.ptr {llvm.noundef}) -> !llvm.array<2 x i64> attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func internal @computeCov3D(%arg0: !llvm.array<2 x i64>, %arg1: f32 {llvm.noundef}, %arg2: !llvm.array<2 x i64>, %arg3: !llvm.ptr {llvm.noundef}) attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %4 = llvm.mlir.constant(3 : i32) : i32
    %5 = llvm.mlir.constant(-2.000000e+00 : f32) : f32
    %6 = llvm.mlir.constant(1.000000e+00 : f32) : f32
    %7 = llvm.mlir.constant(2.000000e+00 : f32) : f32
    %8 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x !llvm.struct<"struct.float4", (f32, f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %24 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %25 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %26 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %27 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %28 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %29 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %9 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%8, %9, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg2, %10 {alignment = 4 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    llvm.store %arg1, %11 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg3, %12 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %30 = llvm.getelementptr inbounds %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %31 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %32 = llvm.getelementptr inbounds %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %33 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> f32
    %34 = llvm.fmul %31, %33  : f32
    llvm.store %34, %30 {alignment = 4 : i64} : f32, !llvm.ptr
    %35 = llvm.getelementptr inbounds %30[1] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %3, %35 {alignment = 4 : i64} : f32, !llvm.ptr
    %36 = llvm.getelementptr inbounds %35[1] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %3, %36 {alignment = 4 : i64} : f32, !llvm.ptr
    %37 = llvm.getelementptr inbounds %36[1] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %3, %37 {alignment = 4 : i64} : f32, !llvm.ptr
    %38 = llvm.getelementptr inbounds %37[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %39 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %40 = llvm.getelementptr inbounds %8[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %41 = llvm.load %40 {alignment = 4 : i64} : !llvm.ptr -> f32
    %42 = llvm.fmul %39, %41  : f32
    llvm.store %42, %38 {alignment = 4 : i64} : f32, !llvm.ptr
    %43 = llvm.getelementptr inbounds %38[1] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %3, %43 {alignment = 4 : i64} : f32, !llvm.ptr
    %44 = llvm.getelementptr inbounds %43[1] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %3, %44 {alignment = 4 : i64} : f32, !llvm.ptr
    %45 = llvm.getelementptr inbounds %44[1] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %3, %45 {alignment = 4 : i64} : f32, !llvm.ptr
    %46 = llvm.getelementptr inbounds %45[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %47 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %48 = llvm.getelementptr inbounds %8[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %49 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> f32
    %50 = llvm.fmul %47, %49  : f32
    llvm.store %50, %46 {alignment = 4 : i64} : f32, !llvm.ptr
    %51 = llvm.getelementptr inbounds %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %52 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %52, %14 {alignment = 4 : i64} : f32, !llvm.ptr
    %53 = llvm.getelementptr inbounds %10[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %54 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %54, %15 {alignment = 4 : i64} : f32, !llvm.ptr
    %55 = llvm.getelementptr inbounds %10[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %56 = llvm.load %55 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %56, %16 {alignment = 4 : i64} : f32, !llvm.ptr
    %57 = llvm.getelementptr inbounds %10[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %58 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %58, %17 {alignment = 4 : i64} : f32, !llvm.ptr
    %59 = llvm.getelementptr inbounds %18[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %60 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %61 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %62 = llvm.fmul %61, %61  : f32
    %63 = llvm.intr.fmuladd(%60, %60, %62)  : (f32, f32, f32) -> f32
    %64 = llvm.intr.fmuladd(%5, %63, %6)  : (f32, f32, f32) -> f32
    llvm.store %64, %59 {alignment = 4 : i64} : f32, !llvm.ptr
    %65 = llvm.getelementptr inbounds %59[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %66 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %67 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %68 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> f32
    %69 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %70 = llvm.fmul %68, %69  : f32
    %71 = llvm.fneg %70  : f32
    %72 = llvm.intr.fmuladd(%66, %67, %71)  : (f32, f32, f32) -> f32
    %73 = llvm.fmul %7, %72  : f32
    llvm.store %73, %65 {alignment = 4 : i64} : f32, !llvm.ptr
    %74 = llvm.getelementptr inbounds %65[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %75 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %76 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %77 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> f32
    %78 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %79 = llvm.fmul %77, %78  : f32
    %80 = llvm.intr.fmuladd(%75, %76, %79)  : (f32, f32, f32) -> f32
    %81 = llvm.fmul %7, %80  : f32
    llvm.store %81, %74 {alignment = 4 : i64} : f32, !llvm.ptr
    %82 = llvm.getelementptr inbounds %74[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %83 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %84 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %85 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> f32
    %86 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %87 = llvm.fmul %85, %86  : f32
    %88 = llvm.intr.fmuladd(%83, %84, %87)  : (f32, f32, f32) -> f32
    %89 = llvm.fmul %7, %88  : f32
    llvm.store %89, %82 {alignment = 4 : i64} : f32, !llvm.ptr
    %90 = llvm.getelementptr inbounds %82[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %91 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %92 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %93 = llvm.fmul %92, %92  : f32
    %94 = llvm.intr.fmuladd(%91, %91, %93)  : (f32, f32, f32) -> f32
    %95 = llvm.intr.fmuladd(%5, %94, %6)  : (f32, f32, f32) -> f32
    llvm.store %95, %90 {alignment = 4 : i64} : f32, !llvm.ptr
    %96 = llvm.getelementptr inbounds %90[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %97 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %98 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %99 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> f32
    %100 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %101 = llvm.fmul %99, %100  : f32
    %102 = llvm.fneg %101  : f32
    %103 = llvm.intr.fmuladd(%97, %98, %102)  : (f32, f32, f32) -> f32
    %104 = llvm.fmul %7, %103  : f32
    llvm.store %104, %96 {alignment = 4 : i64} : f32, !llvm.ptr
    %105 = llvm.getelementptr inbounds %96[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %106 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %107 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %108 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> f32
    %109 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %110 = llvm.fmul %108, %109  : f32
    %111 = llvm.fneg %110  : f32
    %112 = llvm.intr.fmuladd(%106, %107, %111)  : (f32, f32, f32) -> f32
    %113 = llvm.fmul %7, %112  : f32
    llvm.store %113, %105 {alignment = 4 : i64} : f32, !llvm.ptr
    %114 = llvm.getelementptr inbounds %105[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %115 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %116 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> f32
    %117 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> f32
    %118 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %119 = llvm.fmul %117, %118  : f32
    %120 = llvm.intr.fmuladd(%115, %116, %119)  : (f32, f32, f32) -> f32
    %121 = llvm.fmul %7, %120  : f32
    llvm.store %121, %114 {alignment = 4 : i64} : f32, !llvm.ptr
    %122 = llvm.getelementptr inbounds %114[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %123 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %124 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %125 = llvm.fmul %124, %124  : f32
    %126 = llvm.intr.fmuladd(%123, %123, %125)  : (f32, f32, f32) -> f32
    %127 = llvm.intr.fmuladd(%5, %126, %6)  : (f32, f32, f32) -> f32
    llvm.store %127, %122 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %2, %20 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb11
    %128 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %129 = llvm.icmp "slt" %128, %4 : i32
    llvm.cond_br %129, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    llvm.store %2, %21 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb9
    %130 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %131 = llvm.icmp "slt" %130, %4 : i32
    llvm.cond_br %131, ^bb4, ^bb10
  ^bb4:  // pred: ^bb3
    %132 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %133 = llvm.mul %132, %4 overflow<nsw>  : i32
    %134 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %135 = llvm.add %133, %134 overflow<nsw>  : i32
    %136 = llvm.sext %135 : i32 to i64
    %137 = llvm.getelementptr inbounds %19[0, %136] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %3, %137 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %2, %22 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb4, ^bb7
    %138 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %139 = llvm.icmp "slt" %138, %4 : i32
    llvm.cond_br %139, ^bb6, ^bb8
  ^bb6:  // pred: ^bb5
    %140 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %141 = llvm.mul %140, %4 overflow<nsw>  : i32
    %142 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %143 = llvm.add %141, %142 overflow<nsw>  : i32
    %144 = llvm.sext %143 : i32 to i64
    %145 = llvm.getelementptr inbounds %13[0, %144] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %146 = llvm.load %145 {alignment = 4 : i64} : !llvm.ptr -> f32
    %147 = llvm.mul %142, %4 overflow<nsw>  : i32
    %148 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %149 = llvm.add %147, %148 overflow<nsw>  : i32
    %150 = llvm.sext %149 : i32 to i64
    %151 = llvm.getelementptr inbounds %18[0, %150] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %152 = llvm.load %151 {alignment = 4 : i64} : !llvm.ptr -> f32
    %153 = llvm.add %141, %148 overflow<nsw>  : i32
    %154 = llvm.sext %153 : i32 to i64
    %155 = llvm.getelementptr inbounds %19[0, %154] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %156 = llvm.load %155 {alignment = 4 : i64} : !llvm.ptr -> f32
    %157 = llvm.intr.fmuladd(%146, %152, %156)  : (f32, f32, f32) -> f32
    llvm.store %157, %155 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %158 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %159 = llvm.add %158, %0 overflow<nsw>  : i32
    llvm.store %159, %22 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5 {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb5
    llvm.br ^bb9
  ^bb9:  // pred: ^bb8
    %160 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %161 = llvm.add %160, %0 overflow<nsw>  : i32
    llvm.store %161, %21 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb10:  // pred: ^bb3
    llvm.br ^bb11
  ^bb11:  // pred: ^bb10
    %162 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %163 = llvm.add %162, %0 overflow<nsw>  : i32
    llvm.store %163, %20 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb12:  // pred: ^bb1
    llvm.store %2, %24 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb12, ^bb19
    %164 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> i32
    %165 = llvm.icmp "slt" %164, %4 : i32
    llvm.cond_br %165, ^bb14, ^bb20
  ^bb14:  // pred: ^bb13
    llvm.store %2, %25 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15
  ^bb15:  // 2 preds: ^bb14, ^bb17
    %166 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> i32
    %167 = llvm.icmp "slt" %166, %4 : i32
    llvm.cond_br %167, ^bb16, ^bb18
  ^bb16:  // pred: ^bb15
    %168 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> i32
    %169 = llvm.mul %168, %4 overflow<nsw>  : i32
    %170 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> i32
    %171 = llvm.add %169, %170 overflow<nsw>  : i32
    %172 = llvm.sext %171 : i32 to i64
    %173 = llvm.getelementptr inbounds %19[0, %172] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %174 = llvm.load %173 {alignment = 4 : i64} : !llvm.ptr -> f32
    %175 = llvm.mul %170, %4 overflow<nsw>  : i32
    %176 = llvm.add %175, %168 overflow<nsw>  : i32
    %177 = llvm.sext %176 : i32 to i64
    %178 = llvm.getelementptr inbounds %23[0, %177] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %174, %178 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %179 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> i32
    %180 = llvm.add %179, %0 overflow<nsw>  : i32
    llvm.store %180, %25 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15 {loop_annotation = #loop_annotation}
  ^bb18:  // pred: ^bb15
    llvm.br ^bb19
  ^bb19:  // pred: ^bb18
    %181 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> i32
    %182 = llvm.add %181, %0 overflow<nsw>  : i32
    llvm.store %182, %24 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb13 {loop_annotation = #loop_annotation}
  ^bb20:  // pred: ^bb13
    llvm.store %2, %27 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb21
  ^bb21:  // 2 preds: ^bb20, ^bb31
    %183 = llvm.load %27 {alignment = 4 : i64} : !llvm.ptr -> i32
    %184 = llvm.icmp "slt" %183, %4 : i32
    llvm.cond_br %184, ^bb22, ^bb32
  ^bb22:  // pred: ^bb21
    llvm.store %2, %28 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb23
  ^bb23:  // 2 preds: ^bb22, ^bb29
    %185 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %186 = llvm.icmp "slt" %185, %4 : i32
    llvm.cond_br %186, ^bb24, ^bb30
  ^bb24:  // pred: ^bb23
    %187 = llvm.load %27 {alignment = 4 : i64} : !llvm.ptr -> i32
    %188 = llvm.mul %187, %4 overflow<nsw>  : i32
    %189 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %190 = llvm.add %188, %189 overflow<nsw>  : i32
    %191 = llvm.sext %190 : i32 to i64
    %192 = llvm.getelementptr inbounds %26[0, %191] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %3, %192 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %2, %29 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb25
  ^bb25:  // 2 preds: ^bb24, ^bb27
    %193 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %194 = llvm.icmp "slt" %193, %4 : i32
    llvm.cond_br %194, ^bb26, ^bb28
  ^bb26:  // pred: ^bb25
    %195 = llvm.load %27 {alignment = 4 : i64} : !llvm.ptr -> i32
    %196 = llvm.mul %195, %4 overflow<nsw>  : i32
    %197 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %198 = llvm.add %196, %197 overflow<nsw>  : i32
    %199 = llvm.sext %198 : i32 to i64
    %200 = llvm.getelementptr inbounds %23[0, %199] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %201 = llvm.load %200 {alignment = 4 : i64} : !llvm.ptr -> f32
    %202 = llvm.mul %197, %4 overflow<nsw>  : i32
    %203 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %204 = llvm.add %202, %203 overflow<nsw>  : i32
    %205 = llvm.sext %204 : i32 to i64
    %206 = llvm.getelementptr inbounds %19[0, %205] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %207 = llvm.load %206 {alignment = 4 : i64} : !llvm.ptr -> f32
    %208 = llvm.add %196, %203 overflow<nsw>  : i32
    %209 = llvm.sext %208 : i32 to i64
    %210 = llvm.getelementptr inbounds %26[0, %209] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %211 = llvm.load %210 {alignment = 4 : i64} : !llvm.ptr -> f32
    %212 = llvm.intr.fmuladd(%201, %207, %211)  : (f32, f32, f32) -> f32
    llvm.store %212, %210 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb27
  ^bb27:  // pred: ^bb26
    %213 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %214 = llvm.add %213, %0 overflow<nsw>  : i32
    llvm.store %214, %29 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb25 {loop_annotation = #loop_annotation}
  ^bb28:  // pred: ^bb25
    llvm.br ^bb29
  ^bb29:  // pred: ^bb28
    %215 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %216 = llvm.add %215, %0 overflow<nsw>  : i32
    llvm.store %216, %28 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb23 {loop_annotation = #loop_annotation}
  ^bb30:  // pred: ^bb23
    llvm.br ^bb31
  ^bb31:  // pred: ^bb30
    %217 = llvm.load %27 {alignment = 4 : i64} : !llvm.ptr -> i32
    %218 = llvm.add %217, %0 overflow<nsw>  : i32
    llvm.store %218, %27 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb21 {loop_annotation = #loop_annotation}
  ^bb32:  // pred: ^bb21
    %219 = llvm.getelementptr inbounds %26[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %220 = llvm.load %219 {alignment = 4 : i64} : !llvm.ptr -> f32
    %221 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %220, %221 {alignment = 4 : i64} : f32, !llvm.ptr
    %222 = llvm.getelementptr inbounds %26[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %223 = llvm.load %222 {alignment = 4 : i64} : !llvm.ptr -> f32
    %224 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %225 = llvm.getelementptr inbounds %224[1] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %223, %225 {alignment = 4 : i64} : f32, !llvm.ptr
    %226 = llvm.getelementptr inbounds %26[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %227 = llvm.load %226 {alignment = 4 : i64} : !llvm.ptr -> f32
    %228 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %229 = llvm.getelementptr inbounds %228[2] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %227, %229 {alignment = 4 : i64} : f32, !llvm.ptr
    %230 = llvm.getelementptr inbounds %26[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %231 = llvm.load %230 {alignment = 4 : i64} : !llvm.ptr -> f32
    %232 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %233 = llvm.getelementptr inbounds %232[3] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %231, %233 {alignment = 4 : i64} : f32, !llvm.ptr
    %234 = llvm.getelementptr inbounds %26[0, 5] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %235 = llvm.load %234 {alignment = 4 : i64} : !llvm.ptr -> f32
    %236 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %237 = llvm.getelementptr inbounds %236[4] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %235, %237 {alignment = 4 : i64} : f32, !llvm.ptr
    %238 = llvm.getelementptr inbounds %26[0, 8] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %239 = llvm.load %238 {alignment = 4 : i64} : !llvm.ptr -> f32
    %240 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %241 = llvm.getelementptr inbounds %240[5] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %239, %241 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.return
  }
  llvm.func internal @computeCov2D(%arg0: !llvm.array<2 x i64>, %arg1: f32 {llvm.noundef}, %arg2: f32 {llvm.noundef}, %arg3: f32 {llvm.noundef}, %arg4: f32 {llvm.noundef}, %arg5: !llvm.ptr {llvm.noundef}, %arg6: !llvm.ptr {llvm.noundef}) -> !llvm.array<2 x i64> attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(1.300000e+00 : f32) : f32
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %5 = llvm.mlir.constant(3 : i32) : i32
    %6 = llvm.mlir.constant(3.000000e-01 : f32) : f32
    %7 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %24 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %25 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %26 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %27 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %28 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %29 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %30 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %31 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %32 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %33 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %34 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %35 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %36 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %37 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %38 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %39 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %40 = llvm.alloca %0 x !llvm.array<9 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %41 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %42 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %43 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %44 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %9 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%8, %9, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %10 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg2, %11 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg3, %12 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg4, %13 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg5, %14 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg6, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %45 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%17, %8, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %46 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %47 = llvm.call @cpu_rasterizer_transformPoint4x3(%46, %45) : (!llvm.array<2 x i64>, !llvm.ptr) -> !llvm.array<2 x i64>
    llvm.store %47, %18 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%16, %18, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %48 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> f32
    %49 = llvm.fmul %2, %48  : f32
    llvm.store %49, %19 {alignment = 4 : i64} : f32, !llvm.ptr
    %50 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %51 = llvm.fmul %2, %50  : f32
    llvm.store %51, %20 {alignment = 4 : i64} : f32, !llvm.ptr
    %52 = llvm.getelementptr inbounds %16[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %53 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> f32
    %54 = llvm.getelementptr inbounds %16[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %55 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> f32
    %56 = llvm.fdiv %53, %55  : f32
    llvm.store %56, %21 {alignment = 4 : i64} : f32, !llvm.ptr
    %57 = llvm.getelementptr inbounds %16[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %58 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> f32
    %59 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> f32
    %60 = llvm.fdiv %58, %59  : f32
    llvm.store %60, %22 {alignment = 4 : i64} : f32, !llvm.ptr
    %61 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %62 = llvm.fpext %61 : f32 to f64
    %63 = llvm.fneg %61  : f32
    %64 = llvm.fpext %63 : f32 to f64
    %65 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> f32
    %66 = llvm.fpext %65 : f32 to f64
    %67 = llvm.intr.maxnum(%64, %66)  : (f64, f64) -> f64
    %68 = llvm.intr.minnum(%62, %67)  : (f64, f64) -> f64
    %69 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> f32
    %70 = llvm.fpext %69 : f32 to f64
    %71 = llvm.fmul %68, %70  : f64
    %72 = llvm.fptrunc %71 : f64 to f32
    llvm.store %72, %52 {alignment = 4 : i64} : f32, !llvm.ptr
    %73 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> f32
    %74 = llvm.fpext %73 : f32 to f64
    %75 = llvm.fneg %73  : f32
    %76 = llvm.fpext %75 : f32 to f64
    %77 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %78 = llvm.fpext %77 : f32 to f64
    %79 = llvm.intr.maxnum(%76, %78)  : (f64, f64) -> f64
    %80 = llvm.intr.minnum(%74, %79)  : (f64, f64) -> f64
    %81 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> f32
    %82 = llvm.fpext %81 : f32 to f64
    %83 = llvm.fmul %80, %82  : f64
    %84 = llvm.fptrunc %83 : f64 to f32
    llvm.store %84, %57 {alignment = 4 : i64} : f32, !llvm.ptr
    %85 = llvm.getelementptr inbounds %23[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %86 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> f32
    %87 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> f32
    %88 = llvm.fdiv %86, %87  : f32
    llvm.store %88, %85 {alignment = 4 : i64} : f32, !llvm.ptr
    %89 = llvm.getelementptr inbounds %85[1] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %4, %89 {alignment = 4 : i64} : f32, !llvm.ptr
    %90 = llvm.getelementptr inbounds %89[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %91 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> f32
    %92 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> f32
    %93 = llvm.fmul %91, %92  : f32
    %94 = llvm.fneg %93  : f32
    %95 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> f32
    %96 = llvm.fmul %95, %95  : f32
    %97 = llvm.fdiv %94, %96  : f32
    llvm.store %97, %90 {alignment = 4 : i64} : f32, !llvm.ptr
    %98 = llvm.getelementptr inbounds %90[1] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %4, %98 {alignment = 4 : i64} : f32, !llvm.ptr
    %99 = llvm.getelementptr inbounds %98[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %100 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %101 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> f32
    %102 = llvm.fdiv %100, %101  : f32
    llvm.store %102, %99 {alignment = 4 : i64} : f32, !llvm.ptr
    %103 = llvm.getelementptr inbounds %99[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %104 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %105 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> f32
    %106 = llvm.fmul %104, %105  : f32
    %107 = llvm.fneg %106  : f32
    %108 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> f32
    %109 = llvm.fmul %108, %108  : f32
    %110 = llvm.fdiv %107, %109  : f32
    llvm.store %110, %103 {alignment = 4 : i64} : f32, !llvm.ptr
    %111 = llvm.getelementptr inbounds %103[1] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %4, %111 {alignment = 4 : i64} : f32, !llvm.ptr
    %112 = llvm.getelementptr inbounds %111[1] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %4, %112 {alignment = 4 : i64} : f32, !llvm.ptr
    %113 = llvm.getelementptr inbounds %112[1] : (!llvm.ptr) -> !llvm.ptr, f32
    llvm.store %4, %113 {alignment = 4 : i64} : f32, !llvm.ptr
    %114 = llvm.getelementptr inbounds %24[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %115 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %116 = llvm.load %115 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %116, %114 {alignment = 4 : i64} : f32, !llvm.ptr
    %117 = llvm.getelementptr inbounds %114[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %118 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %119 = llvm.getelementptr inbounds %118[4] : (!llvm.ptr) -> !llvm.ptr, f32
    %120 = llvm.load %119 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %120, %117 {alignment = 4 : i64} : f32, !llvm.ptr
    %121 = llvm.getelementptr inbounds %117[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %122 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %123 = llvm.getelementptr inbounds %122[8] : (!llvm.ptr) -> !llvm.ptr, f32
    %124 = llvm.load %123 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %124, %121 {alignment = 4 : i64} : f32, !llvm.ptr
    %125 = llvm.getelementptr inbounds %121[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %126 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %127 = llvm.getelementptr inbounds %126[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %128 = llvm.load %127 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %128, %125 {alignment = 4 : i64} : f32, !llvm.ptr
    %129 = llvm.getelementptr inbounds %125[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %130 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %131 = llvm.getelementptr inbounds %130[5] : (!llvm.ptr) -> !llvm.ptr, f32
    %132 = llvm.load %131 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %132, %129 {alignment = 4 : i64} : f32, !llvm.ptr
    %133 = llvm.getelementptr inbounds %129[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %134 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %135 = llvm.getelementptr inbounds %134[9] : (!llvm.ptr) -> !llvm.ptr, f32
    %136 = llvm.load %135 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %136, %133 {alignment = 4 : i64} : f32, !llvm.ptr
    %137 = llvm.getelementptr inbounds %133[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %138 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %139 = llvm.getelementptr inbounds %138[2] : (!llvm.ptr) -> !llvm.ptr, f32
    %140 = llvm.load %139 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %140, %137 {alignment = 4 : i64} : f32, !llvm.ptr
    %141 = llvm.getelementptr inbounds %137[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %142 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %143 = llvm.getelementptr inbounds %142[6] : (!llvm.ptr) -> !llvm.ptr, f32
    %144 = llvm.load %143 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %144, %141 {alignment = 4 : i64} : f32, !llvm.ptr
    %145 = llvm.getelementptr inbounds %141[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %146 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %147 = llvm.getelementptr inbounds %146[10] : (!llvm.ptr) -> !llvm.ptr, f32
    %148 = llvm.load %147 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %148, %145 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %26 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb11
    %149 = llvm.load %26 {alignment = 4 : i64} : !llvm.ptr -> i32
    %150 = llvm.icmp "slt" %149, %5 : i32
    llvm.cond_br %150, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    llvm.store %3, %27 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb9
    %151 = llvm.load %27 {alignment = 4 : i64} : !llvm.ptr -> i32
    %152 = llvm.icmp "slt" %151, %5 : i32
    llvm.cond_br %152, ^bb4, ^bb10
  ^bb4:  // pred: ^bb3
    %153 = llvm.load %26 {alignment = 4 : i64} : !llvm.ptr -> i32
    %154 = llvm.mul %153, %5 overflow<nsw>  : i32
    %155 = llvm.load %27 {alignment = 4 : i64} : !llvm.ptr -> i32
    %156 = llvm.add %154, %155 overflow<nsw>  : i32
    %157 = llvm.sext %156 : i32 to i64
    %158 = llvm.getelementptr inbounds %25[0, %157] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %4, %158 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %28 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb4, ^bb7
    %159 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %160 = llvm.icmp "slt" %159, %5 : i32
    llvm.cond_br %160, ^bb6, ^bb8
  ^bb6:  // pred: ^bb5
    %161 = llvm.load %26 {alignment = 4 : i64} : !llvm.ptr -> i32
    %162 = llvm.mul %161, %5 overflow<nsw>  : i32
    %163 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %164 = llvm.add %162, %163 overflow<nsw>  : i32
    %165 = llvm.sext %164 : i32 to i64
    %166 = llvm.getelementptr inbounds %24[0, %165] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %167 = llvm.load %166 {alignment = 4 : i64} : !llvm.ptr -> f32
    %168 = llvm.mul %163, %5 overflow<nsw>  : i32
    %169 = llvm.load %27 {alignment = 4 : i64} : !llvm.ptr -> i32
    %170 = llvm.add %168, %169 overflow<nsw>  : i32
    %171 = llvm.sext %170 : i32 to i64
    %172 = llvm.getelementptr inbounds %23[0, %171] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %173 = llvm.load %172 {alignment = 4 : i64} : !llvm.ptr -> f32
    %174 = llvm.add %162, %169 overflow<nsw>  : i32
    %175 = llvm.sext %174 : i32 to i64
    %176 = llvm.getelementptr inbounds %25[0, %175] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %177 = llvm.load %176 {alignment = 4 : i64} : !llvm.ptr -> f32
    %178 = llvm.intr.fmuladd(%167, %173, %177)  : (f32, f32, f32) -> f32
    llvm.store %178, %176 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %179 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %180 = llvm.add %179, %0 overflow<nsw>  : i32
    llvm.store %180, %28 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5 {loop_annotation = #loop_annotation}
  ^bb8:  // pred: ^bb5
    llvm.br ^bb9
  ^bb9:  // pred: ^bb8
    %181 = llvm.load %27 {alignment = 4 : i64} : !llvm.ptr -> i32
    %182 = llvm.add %181, %0 overflow<nsw>  : i32
    llvm.store %182, %27 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb10:  // pred: ^bb3
    llvm.br ^bb11
  ^bb11:  // pred: ^bb10
    %183 = llvm.load %26 {alignment = 4 : i64} : !llvm.ptr -> i32
    %184 = llvm.add %183, %0 overflow<nsw>  : i32
    llvm.store %184, %26 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb12:  // pred: ^bb1
    %185 = llvm.getelementptr inbounds %29[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %186 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %187 = llvm.load %186 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %187, %185 {alignment = 4 : i64} : f32, !llvm.ptr
    %188 = llvm.getelementptr inbounds %185[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %189 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %190 = llvm.getelementptr inbounds %189[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %191 = llvm.load %190 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %191, %188 {alignment = 4 : i64} : f32, !llvm.ptr
    %192 = llvm.getelementptr inbounds %188[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %193 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %194 = llvm.getelementptr inbounds %193[2] : (!llvm.ptr) -> !llvm.ptr, f32
    %195 = llvm.load %194 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %195, %192 {alignment = 4 : i64} : f32, !llvm.ptr
    %196 = llvm.getelementptr inbounds %192[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %197 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %198 = llvm.getelementptr inbounds %197[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %199 = llvm.load %198 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %199, %196 {alignment = 4 : i64} : f32, !llvm.ptr
    %200 = llvm.getelementptr inbounds %196[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %201 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %202 = llvm.getelementptr inbounds %201[3] : (!llvm.ptr) -> !llvm.ptr, f32
    %203 = llvm.load %202 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %203, %200 {alignment = 4 : i64} : f32, !llvm.ptr
    %204 = llvm.getelementptr inbounds %200[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %205 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %206 = llvm.getelementptr inbounds %205[4] : (!llvm.ptr) -> !llvm.ptr, f32
    %207 = llvm.load %206 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %207, %204 {alignment = 4 : i64} : f32, !llvm.ptr
    %208 = llvm.getelementptr inbounds %204[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %209 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %210 = llvm.getelementptr inbounds %209[2] : (!llvm.ptr) -> !llvm.ptr, f32
    %211 = llvm.load %210 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %211, %208 {alignment = 4 : i64} : f32, !llvm.ptr
    %212 = llvm.getelementptr inbounds %208[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %213 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %214 = llvm.getelementptr inbounds %213[4] : (!llvm.ptr) -> !llvm.ptr, f32
    %215 = llvm.load %214 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %215, %212 {alignment = 4 : i64} : f32, !llvm.ptr
    %216 = llvm.getelementptr inbounds %212[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %217 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %218 = llvm.getelementptr inbounds %217[5] : (!llvm.ptr) -> !llvm.ptr, f32
    %219 = llvm.load %218 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %219, %216 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %31 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb12, ^bb19
    %220 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> i32
    %221 = llvm.icmp "slt" %220, %5 : i32
    llvm.cond_br %221, ^bb14, ^bb20
  ^bb14:  // pred: ^bb13
    llvm.store %3, %32 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15
  ^bb15:  // 2 preds: ^bb14, ^bb17
    %222 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    %223 = llvm.icmp "slt" %222, %5 : i32
    llvm.cond_br %223, ^bb16, ^bb18
  ^bb16:  // pred: ^bb15
    %224 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    %225 = llvm.mul %224, %5 overflow<nsw>  : i32
    %226 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> i32
    %227 = llvm.add %225, %226 overflow<nsw>  : i32
    %228 = llvm.sext %227 : i32 to i64
    %229 = llvm.getelementptr inbounds %25[0, %228] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %230 = llvm.load %229 {alignment = 4 : i64} : !llvm.ptr -> f32
    %231 = llvm.mul %226, %5 overflow<nsw>  : i32
    %232 = llvm.add %231, %224 overflow<nsw>  : i32
    %233 = llvm.sext %232 : i32 to i64
    %234 = llvm.getelementptr inbounds %30[0, %233] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %230, %234 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %235 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> i32
    %236 = llvm.add %235, %0 overflow<nsw>  : i32
    llvm.store %236, %32 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15 {loop_annotation = #loop_annotation}
  ^bb18:  // pred: ^bb15
    llvm.br ^bb19
  ^bb19:  // pred: ^bb18
    %237 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> i32
    %238 = llvm.add %237, %0 overflow<nsw>  : i32
    llvm.store %238, %31 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb13 {loop_annotation = #loop_annotation}
  ^bb20:  // pred: ^bb13
    llvm.store %3, %34 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb21
  ^bb21:  // 2 preds: ^bb20, ^bb27
    %239 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %240 = llvm.icmp "slt" %239, %5 : i32
    llvm.cond_br %240, ^bb22, ^bb28
  ^bb22:  // pred: ^bb21
    llvm.store %3, %35 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb23
  ^bb23:  // 2 preds: ^bb22, ^bb25
    %241 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %242 = llvm.icmp "slt" %241, %5 : i32
    llvm.cond_br %242, ^bb24, ^bb26
  ^bb24:  // pred: ^bb23
    %243 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %244 = llvm.mul %243, %5 overflow<nsw>  : i32
    %245 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %246 = llvm.add %244, %245 overflow<nsw>  : i32
    %247 = llvm.sext %246 : i32 to i64
    %248 = llvm.getelementptr inbounds %29[0, %247] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %249 = llvm.load %248 {alignment = 4 : i64} : !llvm.ptr -> f32
    %250 = llvm.mul %245, %5 overflow<nsw>  : i32
    %251 = llvm.add %250, %243 overflow<nsw>  : i32
    %252 = llvm.sext %251 : i32 to i64
    %253 = llvm.getelementptr inbounds %33[0, %252] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %249, %253 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb25
  ^bb25:  // pred: ^bb24
    %254 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %255 = llvm.add %254, %0 overflow<nsw>  : i32
    llvm.store %255, %35 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb23 {loop_annotation = #loop_annotation}
  ^bb26:  // pred: ^bb23
    llvm.br ^bb27
  ^bb27:  // pred: ^bb26
    %256 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %257 = llvm.add %256, %0 overflow<nsw>  : i32
    llvm.store %257, %34 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb21 {loop_annotation = #loop_annotation}
  ^bb28:  // pred: ^bb21
    llvm.store %3, %37 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb29
  ^bb29:  // 2 preds: ^bb28, ^bb39
    %258 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %259 = llvm.icmp "slt" %258, %5 : i32
    llvm.cond_br %259, ^bb30, ^bb40
  ^bb30:  // pred: ^bb29
    llvm.store %3, %38 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb31
  ^bb31:  // 2 preds: ^bb30, ^bb37
    %260 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %261 = llvm.icmp "slt" %260, %5 : i32
    llvm.cond_br %261, ^bb32, ^bb38
  ^bb32:  // pred: ^bb31
    %262 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %263 = llvm.mul %262, %5 overflow<nsw>  : i32
    %264 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %265 = llvm.add %263, %264 overflow<nsw>  : i32
    %266 = llvm.sext %265 : i32 to i64
    %267 = llvm.getelementptr inbounds %36[0, %266] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %4, %267 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %39 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb33
  ^bb33:  // 2 preds: ^bb32, ^bb35
    %268 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %269 = llvm.icmp "slt" %268, %5 : i32
    llvm.cond_br %269, ^bb34, ^bb36
  ^bb34:  // pred: ^bb33
    %270 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %271 = llvm.mul %270, %5 overflow<nsw>  : i32
    %272 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %273 = llvm.add %271, %272 overflow<nsw>  : i32
    %274 = llvm.sext %273 : i32 to i64
    %275 = llvm.getelementptr inbounds %30[0, %274] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %276 = llvm.load %275 {alignment = 4 : i64} : !llvm.ptr -> f32
    %277 = llvm.mul %272, %5 overflow<nsw>  : i32
    %278 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %279 = llvm.add %277, %278 overflow<nsw>  : i32
    %280 = llvm.sext %279 : i32 to i64
    %281 = llvm.getelementptr inbounds %33[0, %280] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %282 = llvm.load %281 {alignment = 4 : i64} : !llvm.ptr -> f32
    %283 = llvm.add %271, %278 overflow<nsw>  : i32
    %284 = llvm.sext %283 : i32 to i64
    %285 = llvm.getelementptr inbounds %36[0, %284] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %286 = llvm.load %285 {alignment = 4 : i64} : !llvm.ptr -> f32
    %287 = llvm.intr.fmuladd(%276, %282, %286)  : (f32, f32, f32) -> f32
    llvm.store %287, %285 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb35
  ^bb35:  // pred: ^bb34
    %288 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %289 = llvm.add %288, %0 overflow<nsw>  : i32
    llvm.store %289, %39 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb33 {loop_annotation = #loop_annotation}
  ^bb36:  // pred: ^bb33
    llvm.br ^bb37
  ^bb37:  // pred: ^bb36
    %290 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %291 = llvm.add %290, %0 overflow<nsw>  : i32
    llvm.store %291, %38 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb31 {loop_annotation = #loop_annotation}
  ^bb38:  // pred: ^bb31
    llvm.br ^bb39
  ^bb39:  // pred: ^bb38
    %292 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %293 = llvm.add %292, %0 overflow<nsw>  : i32
    llvm.store %293, %37 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb29 {loop_annotation = #loop_annotation}
  ^bb40:  // pred: ^bb29
    llvm.store %3, %41 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb41
  ^bb41:  // 2 preds: ^bb40, ^bb51
    %294 = llvm.load %41 {alignment = 4 : i64} : !llvm.ptr -> i32
    %295 = llvm.icmp "slt" %294, %5 : i32
    llvm.cond_br %295, ^bb42, ^bb52
  ^bb42:  // pred: ^bb41
    llvm.store %3, %42 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb43
  ^bb43:  // 2 preds: ^bb42, ^bb49
    %296 = llvm.load %42 {alignment = 4 : i64} : !llvm.ptr -> i32
    %297 = llvm.icmp "slt" %296, %5 : i32
    llvm.cond_br %297, ^bb44, ^bb50
  ^bb44:  // pred: ^bb43
    %298 = llvm.load %41 {alignment = 4 : i64} : !llvm.ptr -> i32
    %299 = llvm.mul %298, %5 overflow<nsw>  : i32
    %300 = llvm.load %42 {alignment = 4 : i64} : !llvm.ptr -> i32
    %301 = llvm.add %299, %300 overflow<nsw>  : i32
    %302 = llvm.sext %301 : i32 to i64
    %303 = llvm.getelementptr inbounds %40[0, %302] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    llvm.store %4, %303 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %43 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb45
  ^bb45:  // 2 preds: ^bb44, ^bb47
    %304 = llvm.load %43 {alignment = 4 : i64} : !llvm.ptr -> i32
    %305 = llvm.icmp "slt" %304, %5 : i32
    llvm.cond_br %305, ^bb46, ^bb48
  ^bb46:  // pred: ^bb45
    %306 = llvm.load %41 {alignment = 4 : i64} : !llvm.ptr -> i32
    %307 = llvm.mul %306, %5 overflow<nsw>  : i32
    %308 = llvm.load %43 {alignment = 4 : i64} : !llvm.ptr -> i32
    %309 = llvm.add %307, %308 overflow<nsw>  : i32
    %310 = llvm.sext %309 : i32 to i64
    %311 = llvm.getelementptr inbounds %36[0, %310] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %312 = llvm.load %311 {alignment = 4 : i64} : !llvm.ptr -> f32
    %313 = llvm.mul %308, %5 overflow<nsw>  : i32
    %314 = llvm.load %42 {alignment = 4 : i64} : !llvm.ptr -> i32
    %315 = llvm.add %313, %314 overflow<nsw>  : i32
    %316 = llvm.sext %315 : i32 to i64
    %317 = llvm.getelementptr inbounds %25[0, %316] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %318 = llvm.load %317 {alignment = 4 : i64} : !llvm.ptr -> f32
    %319 = llvm.add %307, %314 overflow<nsw>  : i32
    %320 = llvm.sext %319 : i32 to i64
    %321 = llvm.getelementptr inbounds %40[0, %320] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<9 x f32>
    %322 = llvm.load %321 {alignment = 4 : i64} : !llvm.ptr -> f32
    %323 = llvm.intr.fmuladd(%312, %318, %322)  : (f32, f32, f32) -> f32
    llvm.store %323, %321 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb47
  ^bb47:  // pred: ^bb46
    %324 = llvm.load %43 {alignment = 4 : i64} : !llvm.ptr -> i32
    %325 = llvm.add %324, %0 overflow<nsw>  : i32
    llvm.store %325, %43 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb45 {loop_annotation = #loop_annotation}
  ^bb48:  // pred: ^bb45
    llvm.br ^bb49
  ^bb49:  // pred: ^bb48
    %326 = llvm.load %42 {alignment = 4 : i64} : !llvm.ptr -> i32
    %327 = llvm.add %326, %0 overflow<nsw>  : i32
    llvm.store %327, %42 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb43 {loop_annotation = #loop_annotation}
  ^bb50:  // pred: ^bb43
    llvm.br ^bb51
  ^bb51:  // pred: ^bb50
    %328 = llvm.load %41 {alignment = 4 : i64} : !llvm.ptr -> i32
    %329 = llvm.add %328, %0 overflow<nsw>  : i32
    llvm.store %329, %41 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb41 {loop_annotation = #loop_annotation}
  ^bb52:  // pred: ^bb41
    %330 = llvm.getelementptr inbounds %40[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %331 = llvm.load %330 {alignment = 4 : i64} : !llvm.ptr -> f32
    %332 = llvm.fadd %331, %6  : f32
    llvm.store %332, %330 {alignment = 4 : i64} : f32, !llvm.ptr
    %333 = llvm.getelementptr inbounds %40[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %334 = llvm.load %333 {alignment = 4 : i64} : !llvm.ptr -> f32
    %335 = llvm.fadd %334, %6  : f32
    llvm.store %335, %333 {alignment = 4 : i64} : f32, !llvm.ptr
    %336 = llvm.getelementptr inbounds %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %337 = llvm.load %330 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %337, %336 {alignment = 4 : i64} : f32, !llvm.ptr
    %338 = llvm.getelementptr inbounds %7[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %339 = llvm.getelementptr inbounds %40[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<9 x f32>
    %340 = llvm.load %339 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %340, %338 {alignment = 4 : i64} : f32, !llvm.ptr
    %341 = llvm.getelementptr inbounds %7[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %342 = llvm.load %333 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %342, %341 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%44, %7, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %343 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %343 : !llvm.array<2 x i64>
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
    %8 = llvm.mlir.constant(-5.000000e-01 : f32) : f32
    %9 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %10 = llvm.mlir.constant(3 : i32) : i32
    %11 = llvm.mlir.constant(0.99000000953674316 : f64) : f64
    %12 = llvm.mlir.constant(0.00392156886 : f32) : f32
    %13 = llvm.mlir.constant(9.99999974E-5 : f32) : f32
    %14 = llvm.alloca %0 x !llvm.struct<"struct.dim3", (i32, i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %24 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %25 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %26 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %27 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %28 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %29 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %30 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %31 = llvm.alloca %0 x !llvm.struct<"struct.uint2", (i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %32 = llvm.alloca %0 x !llvm.struct<"struct.uint2", (i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %33 = llvm.alloca %0 x !llvm.struct<"struct.uint2", (i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %34 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %35 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %36 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %37 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %38 = llvm.alloca %0 x !llvm.struct<"struct.float2", (f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %39 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %40 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %41 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %42 = llvm.alloca %0 x !llvm.array<3 x f32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %43 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %44 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %45 = llvm.alloca %0 x !llvm.struct<"struct.float2", (f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %46 = llvm.alloca %0 x !llvm.struct<"struct.float2", (f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %47 = llvm.alloca %0 x !llvm.struct<"struct.float4", (f32, f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %48 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %49 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %50 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %51 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %52 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %15 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%14, %15, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %16 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg2, %17 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg3, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg4, %19 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg5, %20 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg6, %21 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg7, %22 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg8, %23 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg9, %24 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg10, %25 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg11, %26 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %53 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %54 = llvm.add %53, %2 overflow<nsw>  : i32
    %55 = llvm.sub %54, %0 overflow<nsw>  : i32
    %56 = llvm.sdiv %55, %2  : i32
    llvm.store %56, %27 {alignment = 4 : i64} : i32, !llvm.ptr
    %57 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %58 = llvm.add %57, %2 overflow<nsw>  : i32
    %59 = llvm.sub %58, %0 overflow<nsw>  : i32
    %60 = llvm.sdiv %59, %2  : i32
    llvm.store %60, %28 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %29 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb32
    %61 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %62 = llvm.load %27 {alignment = 4 : i64} : !llvm.ptr -> i32
    %63 = llvm.icmp "ult" %61, %62 : i32
    llvm.cond_br %63, ^bb2, ^bb33
  ^bb2:  // pred: ^bb1
    llvm.store %3, %30 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb30
    %64 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> i32
    %65 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %66 = llvm.icmp "ult" %64, %65 : i32
    llvm.cond_br %66, ^bb4, ^bb31
  ^bb4:  // pred: ^bb3
    %67 = llvm.getelementptr inbounds %31[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %68 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> i32
    %69 = llvm.mul %68, %2  : i32
    llvm.store %69, %67 {alignment = 4 : i64} : i32, !llvm.ptr
    %70 = llvm.getelementptr inbounds %31[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %71 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %72 = llvm.mul %71, %2  : i32
    llvm.store %72, %70 {alignment = 4 : i64} : i32, !llvm.ptr
    %73 = llvm.getelementptr inbounds %32[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %74 = llvm.load %67 {alignment = 4 : i64} : !llvm.ptr -> i32
    %75 = llvm.add %74, %2  : i32
    %76 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %77 = llvm.call @min_int(%75, %76) : (i32, i32) -> i32
    llvm.store %77, %73 {alignment = 4 : i64} : i32, !llvm.ptr
    %78 = llvm.getelementptr inbounds %32[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %79 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> i32
    %80 = llvm.add %79, %2  : i32
    %81 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %82 = llvm.call @min_int(%80, %81) : (i32, i32) -> i32
    llvm.store %82, %78 {alignment = 4 : i64} : i32, !llvm.ptr
    %83 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %84 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %85 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> i32
    %86 = llvm.mul %84, %85  : i32
    %87 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> i32
    %88 = llvm.add %86, %87  : i32
    %89 = llvm.zext %88 : i32 to i64
    %90 = llvm.getelementptr inbounds %83[%89] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    "llvm.intr.memcpy"(%33, %90, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %91 = llvm.getelementptr inbounds %33[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %92 = llvm.load %91 {alignment = 4 : i64} : !llvm.ptr -> i32
    %93 = llvm.getelementptr inbounds %33[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %94 = llvm.load %93 {alignment = 4 : i64} : !llvm.ptr -> i32
    %95 = llvm.sub %92, %94  : i32
    llvm.store %95, %34 {alignment = 4 : i64} : i32, !llvm.ptr
    %96 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %96, %35 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb4, ^bb28
    %97 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %98 = llvm.load %78 {alignment = 4 : i64} : !llvm.ptr -> i32
    %99 = llvm.icmp "ult" %97, %98 : i32
    llvm.cond_br %99, ^bb6, ^bb29
  ^bb6:  // pred: ^bb5
    %100 = llvm.load %67 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %100, %36 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb6, ^bb26
    %101 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> i32
    %102 = llvm.load %73 {alignment = 4 : i64} : !llvm.ptr -> i32
    %103 = llvm.icmp "ult" %101, %102 : i32
    llvm.cond_br %103, ^bb8, ^bb27
  ^bb8:  // pred: ^bb7
    %104 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %105 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %106 = llvm.mul %104, %105  : i32
    %107 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> i32
    %108 = llvm.add %106, %107  : i32
    llvm.store %108, %37 {alignment = 4 : i64} : i32, !llvm.ptr
    %109 = llvm.getelementptr inbounds %38[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %110 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> i32
    %111 = llvm.uitofp %110 : i32 to f32
    llvm.store %111, %109 {alignment = 4 : i64} : f32, !llvm.ptr
    %112 = llvm.getelementptr inbounds %38[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %113 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %114 = llvm.uitofp %113 : i32 to f32
    llvm.store %114, %112 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %5, %39 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %3, %40 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %41 {alignment = 4 : i64} : i32, !llvm.ptr
    "llvm.intr.memset"(%42, %6, %1) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    %115 = llvm.load %93 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %115, %43 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9
  ^bb9:  // 2 preds: ^bb8, ^bb20
    %116 = llvm.load %43 {alignment = 4 : i64} : !llvm.ptr -> i32
    %117 = llvm.load %91 {alignment = 4 : i64} : !llvm.ptr -> i32
    %118 = llvm.icmp "ult" %116, %117 : i32
    llvm.cond_br %118, ^bb10, ^bb21
  ^bb10:  // pred: ^bb9
    %119 = llvm.load %40 {alignment = 4 : i64} : !llvm.ptr -> i32
    %120 = llvm.add %119, %0  : i32
    llvm.store %120, %40 {alignment = 4 : i64} : i32, !llvm.ptr
    %121 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %122 = llvm.load %43 {alignment = 4 : i64} : !llvm.ptr -> i32
    %123 = llvm.sext %122 : i32 to i64
    %124 = llvm.getelementptr inbounds %121[%123] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %125 = llvm.load %124 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %125, %44 {alignment = 4 : i64} : i32, !llvm.ptr
    %126 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %127 = llvm.load %44 {alignment = 4 : i64} : !llvm.ptr -> i32
    %128 = llvm.sext %127 : i32 to i64
    %129 = llvm.getelementptr inbounds %126[%128] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    "llvm.intr.memcpy"(%45, %129, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %130 = llvm.getelementptr inbounds %46[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %131 = llvm.getelementptr inbounds %45[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %132 = llvm.load %131 {alignment = 4 : i64} : !llvm.ptr -> f32
    %133 = llvm.load %109 {alignment = 4 : i64} : !llvm.ptr -> f32
    %134 = llvm.fsub %132, %133  : f32
    llvm.store %134, %130 {alignment = 4 : i64} : f32, !llvm.ptr
    %135 = llvm.getelementptr inbounds %46[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %136 = llvm.getelementptr inbounds %45[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %137 = llvm.load %136 {alignment = 4 : i64} : !llvm.ptr -> f32
    %138 = llvm.load %112 {alignment = 4 : i64} : !llvm.ptr -> f32
    %139 = llvm.fsub %137, %138  : f32
    llvm.store %139, %135 {alignment = 4 : i64} : f32, !llvm.ptr
    %140 = llvm.load %22 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %141 = llvm.load %44 {alignment = 4 : i64} : !llvm.ptr -> i32
    %142 = llvm.sext %141 : i32 to i64
    %143 = llvm.getelementptr inbounds %140[%142] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    "llvm.intr.memcpy"(%47, %143, %7) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %144 = llvm.getelementptr inbounds %47[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %145 = llvm.load %144 {alignment = 4 : i64} : !llvm.ptr -> f32
    %146 = llvm.load %130 {alignment = 4 : i64} : !llvm.ptr -> f32
    %147 = llvm.fmul %145, %146  : f32
    %148 = llvm.getelementptr inbounds %47[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %149 = llvm.load %148 {alignment = 4 : i64} : !llvm.ptr -> f32
    %150 = llvm.load %135 {alignment = 4 : i64} : !llvm.ptr -> f32
    %151 = llvm.fmul %149, %150  : f32
    %152 = llvm.fmul %151, %150  : f32
    %153 = llvm.intr.fmuladd(%147, %146, %152)  : (f32, f32, f32) -> f32
    %154 = llvm.getelementptr inbounds %47[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %155 = llvm.load %154 {alignment = 4 : i64} : !llvm.ptr -> f32
    %156 = llvm.fmul %155, %146  : f32
    %157 = llvm.fmul %156, %150  : f32
    %158 = llvm.fneg %157  : f32
    %159 = llvm.intr.fmuladd(%8, %153, %158)  : (f32, f32, f32) -> f32
    llvm.store %159, %48 {alignment = 4 : i64} : f32, !llvm.ptr
    %160 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> f32
    %161 = llvm.fcmp "ogt" %160, %9 : f32
    llvm.cond_br %161, ^bb11, ^bb12
  ^bb11:  // 2 preds: ^bb10, ^bb12
    llvm.br ^bb20
  ^bb12:  // pred: ^bb10
    %162 = llvm.getelementptr inbounds %47[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %163 = llvm.load %162 {alignment = 4 : i64} : !llvm.ptr -> f32
    %164 = llvm.fpext %163 : f32 to f64
    %165 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> f32
    %166 = llvm.fpext %165 : f32 to f64
    %167 = llvm.call @exp(%166) : (f64) -> f64
    %168 = llvm.fmul %164, %167  : f64
    %169 = llvm.intr.minnum(%11, %168)  : (f64, f64) -> f64
    %170 = llvm.fptrunc %169 : f64 to f32
    llvm.store %170, %49 {alignment = 4 : i64} : f32, !llvm.ptr
    %171 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> f32
    %172 = llvm.fcmp "olt" %171, %12 : f32
    llvm.cond_br %172, ^bb11, ^bb13
  ^bb13:  // pred: ^bb12
    %173 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> f32
    %174 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> f32
    %175 = llvm.fsub %5, %174  : f32
    %176 = llvm.fmul %173, %175  : f32
    llvm.store %176, %50 {alignment = 4 : i64} : f32, !llvm.ptr
    %177 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    %178 = llvm.fcmp "olt" %177, %13 : f32
    llvm.cond_br %178, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    llvm.br ^bb21
  ^bb15:  // pred: ^bb13
    llvm.store %3, %51 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb16
  ^bb16:  // 2 preds: ^bb15, ^bb18
    %179 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> i32
    %180 = llvm.icmp "slt" %179, %10 : i32
    llvm.cond_br %180, ^bb17, ^bb19
  ^bb17:  // pred: ^bb16
    %181 = llvm.load %21 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %182 = llvm.load %44 {alignment = 4 : i64} : !llvm.ptr -> i32
    %183 = llvm.mul %182, %10 overflow<nsw>  : i32
    %184 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> i32
    %185 = llvm.add %183, %184 overflow<nsw>  : i32
    %186 = llvm.sext %185 : i32 to i64
    %187 = llvm.getelementptr inbounds %181[%186] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %188 = llvm.load %187 {alignment = 4 : i64} : !llvm.ptr -> f32
    %189 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> f32
    %190 = llvm.fmul %188, %189  : f32
    %191 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> f32
    %192 = llvm.sext %184 : i32 to i64
    %193 = llvm.getelementptr inbounds %42[0, %192] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<3 x f32>
    %194 = llvm.load %193 {alignment = 4 : i64} : !llvm.ptr -> f32
    %195 = llvm.intr.fmuladd(%190, %191, %194)  : (f32, f32, f32) -> f32
    llvm.store %195, %193 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb18
  ^bb18:  // pred: ^bb17
    %196 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> i32
    %197 = llvm.add %196, %0 overflow<nsw>  : i32
    llvm.store %197, %51 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb16 {loop_annotation = #loop_annotation}
  ^bb19:  // pred: ^bb16
    %198 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %198, %39 {alignment = 4 : i64} : f32, !llvm.ptr
    %199 = llvm.load %40 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %199, %41 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb20
  ^bb20:  // 2 preds: ^bb11, ^bb19
    %200 = llvm.load %43 {alignment = 4 : i64} : !llvm.ptr -> i32
    %201 = llvm.add %200, %0 overflow<nsw>  : i32
    llvm.store %201, %43 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9 {loop_annotation = #loop_annotation}
  ^bb21:  // 2 preds: ^bb9, ^bb14
    %202 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> f32
    %203 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %204 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %205 = llvm.zext %204 : i32 to i64
    %206 = llvm.getelementptr inbounds %203[%205] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %202, %206 {alignment = 4 : i64} : f32, !llvm.ptr
    %207 = llvm.load %41 {alignment = 4 : i64} : !llvm.ptr -> i32
    %208 = llvm.load %24 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %209 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %210 = llvm.zext %209 : i32 to i64
    %211 = llvm.getelementptr inbounds %208[%210] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %207, %211 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %52 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb22
  ^bb22:  // 2 preds: ^bb21, ^bb24
    %212 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> i32
    %213 = llvm.icmp "slt" %212, %10 : i32
    llvm.cond_br %213, ^bb23, ^bb25
  ^bb23:  // pred: ^bb22
    %214 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> i32
    %215 = llvm.sext %214 : i32 to i64
    %216 = llvm.getelementptr inbounds %42[0, %215] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<3 x f32>
    %217 = llvm.load %216 {alignment = 4 : i64} : !llvm.ptr -> f32
    %218 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> f32
    %219 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %220 = llvm.getelementptr inbounds %219[%215] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %221 = llvm.load %220 {alignment = 4 : i64} : !llvm.ptr -> f32
    %222 = llvm.intr.fmuladd(%218, %221, %217)  : (f32, f32, f32) -> f32
    %223 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %224 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %225 = llvm.mul %214, %224 overflow<nsw>  : i32
    %226 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %227 = llvm.mul %225, %226 overflow<nsw>  : i32
    %228 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> i32
    %229 = llvm.add %227, %228  : i32
    %230 = llvm.zext %229 : i32 to i64
    %231 = llvm.getelementptr inbounds %223[%230] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %222, %231 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.br ^bb24
  ^bb24:  // pred: ^bb23
    %232 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> i32
    %233 = llvm.add %232, %0 overflow<nsw>  : i32
    llvm.store %233, %52 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb22 {loop_annotation = #loop_annotation}
  ^bb25:  // pred: ^bb22
    llvm.br ^bb26
  ^bb26:  // pred: ^bb25
    %234 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> i32
    %235 = llvm.add %234, %0  : i32
    llvm.store %235, %36 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7 {loop_annotation = #loop_annotation}
  ^bb27:  // pred: ^bb7
    llvm.br ^bb28
  ^bb28:  // pred: ^bb27
    %236 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %237 = llvm.add %236, %0  : i32
    llvm.store %237, %35 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5 {loop_annotation = #loop_annotation}
  ^bb29:  // pred: ^bb5
    llvm.br ^bb30
  ^bb30:  // pred: ^bb29
    %238 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> i32
    %239 = llvm.add %238, %0  : i32
    llvm.store %239, %30 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb31:  // pred: ^bb3
    llvm.br ^bb32
  ^bb32:  // pred: ^bb31
    %240 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %241 = llvm.add %240, %0  : i32
    llvm.store %241, %29 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb33:  // pred: ^bb1
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
    llvm.cond_br %5, ^bb1(%1 : !llvm.ptr), ^bb1(%2 : !llvm.ptr)
  ^bb1(%6: !llvm.ptr):  // 2 preds: ^bb0, ^bb0
    %7 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.br ^bb2(%7 : i32)
  ^bb2(%8: i32):  // pred: ^bb1
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

