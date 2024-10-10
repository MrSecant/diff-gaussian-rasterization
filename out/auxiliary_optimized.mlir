module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i16, dense<16> : vector<2xi64>>, #dlti.dl_entry<i8, dense<8> : vector<2xi64>>, #dlti.dl_entry<i1, dense<8> : vector<2xi64>>, #dlti.dl_entry<i128, dense<128> : vector<2xi64>>, #dlti.dl_entry<i64, dense<64> : vector<2xi64>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi64>>, #dlti.dl_entry<f128, dense<128> : vector<2xi64>>, #dlti.dl_entry<f64, dense<64> : vector<2xi64>>, #dlti.dl_entry<f16, dense<16> : vector<2xi64>>, #dlti.dl_entry<i32, dense<32> : vector<2xi64>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i64>, #dlti.dl_entry<"dlti.endianness", "little">>} {
  llvm.mlir.global private unnamed_addr constant @".str"("Point is filtered although prefiltered is set. This shouldn't happen!\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.func @cpu_rasterizer_getRect(%arg0: f32, %arg1: f32, %arg2: i32 {llvm.noundef, llvm.signext}, %arg3: !llvm.ptr {llvm.noundef}, %arg4: !llvm.ptr {llvm.noundef}, %arg5: !llvm.array<2 x i64>) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(12 : i64) : i64
    %3 = llvm.mlir.constant(1.600000e+01 : f32) : f32
    %4 = llvm.mlir.constant(1.000000e+00 : f32) : f32
    %5 = llvm.alloca %0 x !llvm.struct<"struct.float2", (f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.struct<"struct.dim3", (i32, i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.getelementptr inbounds %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(f32, f32)>
    llvm.store %arg0, %11 {alignment = 4 : i64} : f32, !llvm.ptr
    %12 = llvm.getelementptr inbounds %5[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(f32, f32)>
    llvm.store %arg1, %12 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg5, %7 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%6, %7, %2) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg2, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg3, %9 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg4, %10 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %13 = llvm.getelementptr inbounds %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %14 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %15 = llvm.getelementptr inbounds %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %16 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %17 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %18 = llvm.sitofp %17 : i32 to f32
    %19 = llvm.fsub %16, %18  : f32
    %20 = llvm.fdiv %19, %3  : f32
    %21 = llvm.fptosi %20 : f32 to i32
    %22 = llvm.call @max_int(%1, %21) : (i32, i32) -> i32
    %23 = llvm.call @min_int(%14, %22) : (i32, i32) -> i32
    %24 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %25 = llvm.getelementptr inbounds %24[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %23, %25 {alignment = 4 : i64} : i32, !llvm.ptr
    %26 = llvm.getelementptr inbounds %6[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %27 = llvm.load %26 {alignment = 4 : i64} : !llvm.ptr -> i32
    %28 = llvm.getelementptr inbounds %5[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %29 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> f32
    %30 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %31 = llvm.sitofp %30 : i32 to f32
    %32 = llvm.fsub %29, %31  : f32
    %33 = llvm.fdiv %32, %3  : f32
    %34 = llvm.fptosi %33 : f32 to i32
    %35 = llvm.call @max_int(%1, %34) : (i32, i32) -> i32
    %36 = llvm.call @min_int(%27, %35) : (i32, i32) -> i32
    %37 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %38 = llvm.getelementptr inbounds %37[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %36, %38 {alignment = 4 : i64} : i32, !llvm.ptr
    %39 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %40 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %41 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %42 = llvm.sitofp %41 : i32 to f32
    %43 = llvm.fadd %40, %42  : f32
    %44 = llvm.fadd %43, %3  : f32
    %45 = llvm.fsub %44, %4  : f32
    %46 = llvm.fdiv %45, %3  : f32
    %47 = llvm.fptosi %46 : f32 to i32
    %48 = llvm.call @max_int(%1, %47) : (i32, i32) -> i32
    %49 = llvm.call @min_int(%39, %48) : (i32, i32) -> i32
    %50 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %51 = llvm.getelementptr inbounds %50[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %49, %51 {alignment = 4 : i64} : i32, !llvm.ptr
    %52 = llvm.load %26 {alignment = 4 : i64} : !llvm.ptr -> i32
    %53 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> f32
    %54 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %55 = llvm.sitofp %54 : i32 to f32
    %56 = llvm.fadd %53, %55  : f32
    %57 = llvm.fadd %56, %3  : f32
    %58 = llvm.fsub %57, %4  : f32
    %59 = llvm.fdiv %58, %3  : f32
    %60 = llvm.fptosi %59 : f32 to i32
    %61 = llvm.call @max_int(%1, %60) : (i32, i32) -> i32
    %62 = llvm.call @min_int(%52, %61) : (i32, i32) -> i32
    %63 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %64 = llvm.getelementptr inbounds %63[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %62, %64 {alignment = 4 : i64} : i32, !llvm.ptr
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
  llvm.func internal @max_int(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: i32 {llvm.noundef, llvm.signext}) -> (i32 {llvm.signext}) attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %2 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %1 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %2 {alignment = 4 : i64} : i32, !llvm.ptr
    %3 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i32
    %4 = llvm.load %2 {alignment = 4 : i64} : !llvm.ptr -> i32
    %5 = llvm.icmp "sgt" %3, %4 : i32
    llvm.cond_br %5, ^bb1(%1 : !llvm.ptr), ^bb1(%2 : !llvm.ptr)
  ^bb1(%6: !llvm.ptr):  // 2 preds: ^bb0, ^bb0
    %7 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.br ^bb2(%7 : i32)
  ^bb2(%8: i32):  // pred: ^bb1
    llvm.return %8 : i32
  }
  llvm.func @cpu_rasterizer_transformPoint4x3(%arg0: !llvm.array<2 x i64>, %arg1: !llvm.ptr {llvm.noundef}) -> !llvm.array<2 x i64> attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%3, %4, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %5 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %7 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %8 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %9 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> f32
    %10 = llvm.getelementptr inbounds %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %11 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> f32
    %12 = llvm.getelementptr inbounds %8[4] : (!llvm.ptr) -> !llvm.ptr, f32
    %13 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> f32
    %14 = llvm.getelementptr inbounds %3[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %15 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %16 = llvm.fmul %13, %15  : f32
    %17 = llvm.intr.fmuladd(%9, %11, %16)  : (f32, f32, f32) -> f32
    %18 = llvm.getelementptr inbounds %8[8] : (!llvm.ptr) -> !llvm.ptr, f32
    %19 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> f32
    %20 = llvm.getelementptr inbounds %3[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %21 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> f32
    %22 = llvm.intr.fmuladd(%19, %21, %17)  : (f32, f32, f32) -> f32
    %23 = llvm.getelementptr inbounds %8[12] : (!llvm.ptr) -> !llvm.ptr, f32
    %24 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> f32
    %25 = llvm.fadd %22, %24  : f32
    llvm.store %25, %7 {alignment = 4 : i64} : f32, !llvm.ptr
    %26 = llvm.getelementptr inbounds %2[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %27 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %28 = llvm.getelementptr inbounds %27[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %29 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> f32
    %30 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> f32
    %31 = llvm.getelementptr inbounds %27[5] : (!llvm.ptr) -> !llvm.ptr, f32
    %32 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> f32
    %33 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %34 = llvm.fmul %32, %33  : f32
    %35 = llvm.intr.fmuladd(%29, %30, %34)  : (f32, f32, f32) -> f32
    %36 = llvm.getelementptr inbounds %27[9] : (!llvm.ptr) -> !llvm.ptr, f32
    %37 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> f32
    %38 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> f32
    %39 = llvm.intr.fmuladd(%37, %38, %35)  : (f32, f32, f32) -> f32
    %40 = llvm.getelementptr inbounds %27[13] : (!llvm.ptr) -> !llvm.ptr, f32
    %41 = llvm.load %40 {alignment = 4 : i64} : !llvm.ptr -> f32
    %42 = llvm.fadd %39, %41  : f32
    llvm.store %42, %26 {alignment = 4 : i64} : f32, !llvm.ptr
    %43 = llvm.getelementptr inbounds %2[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %44 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %45 = llvm.getelementptr inbounds %44[2] : (!llvm.ptr) -> !llvm.ptr, f32
    %46 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> f32
    %47 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> f32
    %48 = llvm.getelementptr inbounds %44[6] : (!llvm.ptr) -> !llvm.ptr, f32
    %49 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> f32
    %50 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> f32
    %51 = llvm.fmul %49, %50  : f32
    %52 = llvm.intr.fmuladd(%46, %47, %51)  : (f32, f32, f32) -> f32
    %53 = llvm.getelementptr inbounds %44[10] : (!llvm.ptr) -> !llvm.ptr, f32
    %54 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> f32
    %55 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> f32
    %56 = llvm.intr.fmuladd(%54, %55, %52)  : (f32, f32, f32) -> f32
    %57 = llvm.getelementptr inbounds %44[14] : (!llvm.ptr) -> !llvm.ptr, f32
    %58 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> f32
    %59 = llvm.fadd %56, %58  : f32
    llvm.store %59, %43 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%6, %2, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %60 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %60 : !llvm.array<2 x i64>
  }
  llvm.func @cpu_rasterizer_transformPoint4x4(%arg0: !llvm.array<2 x i64>, %arg1: !llvm.ptr {llvm.noundef}) -> !llvm.array<2 x i64> attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.alloca %0 x !llvm.struct<"struct.float4", (f32, f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%3, %4, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %5 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %6 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %7 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %8 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> f32
    %9 = llvm.getelementptr inbounds %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %10 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> f32
    %11 = llvm.getelementptr inbounds %7[4] : (!llvm.ptr) -> !llvm.ptr, f32
    %12 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %13 = llvm.getelementptr inbounds %3[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %14 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %15 = llvm.fmul %12, %14  : f32
    %16 = llvm.intr.fmuladd(%8, %10, %15)  : (f32, f32, f32) -> f32
    %17 = llvm.getelementptr inbounds %7[8] : (!llvm.ptr) -> !llvm.ptr, f32
    %18 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> f32
    %19 = llvm.getelementptr inbounds %3[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %20 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %21 = llvm.intr.fmuladd(%18, %20, %16)  : (f32, f32, f32) -> f32
    %22 = llvm.getelementptr inbounds %7[12] : (!llvm.ptr) -> !llvm.ptr, f32
    %23 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %24 = llvm.fadd %21, %23  : f32
    llvm.store %24, %6 {alignment = 4 : i64} : f32, !llvm.ptr
    %25 = llvm.getelementptr inbounds %2[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %26 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %27 = llvm.getelementptr inbounds %26[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %28 = llvm.load %27 {alignment = 4 : i64} : !llvm.ptr -> f32
    %29 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> f32
    %30 = llvm.getelementptr inbounds %26[5] : (!llvm.ptr) -> !llvm.ptr, f32
    %31 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> f32
    %32 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %33 = llvm.fmul %31, %32  : f32
    %34 = llvm.intr.fmuladd(%28, %29, %33)  : (f32, f32, f32) -> f32
    %35 = llvm.getelementptr inbounds %26[9] : (!llvm.ptr) -> !llvm.ptr, f32
    %36 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> f32
    %37 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %38 = llvm.intr.fmuladd(%36, %37, %34)  : (f32, f32, f32) -> f32
    %39 = llvm.getelementptr inbounds %26[13] : (!llvm.ptr) -> !llvm.ptr, f32
    %40 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> f32
    %41 = llvm.fadd %38, %40  : f32
    llvm.store %41, %25 {alignment = 4 : i64} : f32, !llvm.ptr
    %42 = llvm.getelementptr inbounds %2[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %43 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %44 = llvm.getelementptr inbounds %43[2] : (!llvm.ptr) -> !llvm.ptr, f32
    %45 = llvm.load %44 {alignment = 4 : i64} : !llvm.ptr -> f32
    %46 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> f32
    %47 = llvm.getelementptr inbounds %43[6] : (!llvm.ptr) -> !llvm.ptr, f32
    %48 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> f32
    %49 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %50 = llvm.fmul %48, %49  : f32
    %51 = llvm.intr.fmuladd(%45, %46, %50)  : (f32, f32, f32) -> f32
    %52 = llvm.getelementptr inbounds %43[10] : (!llvm.ptr) -> !llvm.ptr, f32
    %53 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> f32
    %54 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %55 = llvm.intr.fmuladd(%53, %54, %51)  : (f32, f32, f32) -> f32
    %56 = llvm.getelementptr inbounds %43[14] : (!llvm.ptr) -> !llvm.ptr, f32
    %57 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> f32
    %58 = llvm.fadd %55, %57  : f32
    llvm.store %58, %42 {alignment = 4 : i64} : f32, !llvm.ptr
    %59 = llvm.getelementptr inbounds %2[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %60 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %61 = llvm.getelementptr inbounds %60[3] : (!llvm.ptr) -> !llvm.ptr, f32
    %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> f32
    %63 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> f32
    %64 = llvm.getelementptr inbounds %60[7] : (!llvm.ptr) -> !llvm.ptr, f32
    %65 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> f32
    %66 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %67 = llvm.fmul %65, %66  : f32
    %68 = llvm.intr.fmuladd(%62, %63, %67)  : (f32, f32, f32) -> f32
    %69 = llvm.getelementptr inbounds %60[11] : (!llvm.ptr) -> !llvm.ptr, f32
    %70 = llvm.load %69 {alignment = 4 : i64} : !llvm.ptr -> f32
    %71 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %72 = llvm.intr.fmuladd(%70, %71, %68)  : (f32, f32, f32) -> f32
    %73 = llvm.getelementptr inbounds %60[15] : (!llvm.ptr) -> !llvm.ptr, f32
    %74 = llvm.load %73 {alignment = 4 : i64} : !llvm.ptr -> f32
    %75 = llvm.fadd %72, %74  : f32
    llvm.store %75, %59 {alignment = 4 : i64} : f32, !llvm.ptr
    %76 = llvm.load %2 {alignment = 4 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %76 : !llvm.array<2 x i64>
  }
  llvm.func @cpu_rasterizer_in_frustum(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: !llvm.ptr {llvm.noundef}, %arg2: !llvm.ptr {llvm.noundef}, %arg3: !llvm.ptr {llvm.noundef}, %arg4: i32 {llvm.noundef, llvm.signext}, %arg5: !llvm.ptr {llvm.noundef}) -> (i32 {llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(3 : i32) : i32
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.mlir.constant(12 : i64) : i64
    %5 = llvm.mlir.constant(1.000000e-07 : f32) : f32
    %6 = llvm.mlir.constant(1.000000e+00 : f32) : f32
    %7 = llvm.mlir.constant(2.000000e-01 : f32) : f32
    %8 = llvm.mlir.addressof @".str" : !llvm.ptr
    %9 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.struct<"struct.float4", (f32, f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %10 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %11 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg2, %12 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg3, %13 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg4, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg5, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %24 = llvm.getelementptr inbounds %16[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %25 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %26 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %27 = llvm.mul %26, %2 overflow<nsw>  : i32
    %28 = llvm.sext %27 : i32 to i64
    %29 = llvm.getelementptr inbounds %25[%28] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %30 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %30, %24 {alignment = 4 : i64} : f32, !llvm.ptr
    %31 = llvm.getelementptr inbounds %16[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %32 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %33 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %34 = llvm.mul %33, %2 overflow<nsw>  : i32
    %35 = llvm.add %34, %0 overflow<nsw>  : i32
    %36 = llvm.sext %35 : i32 to i64
    %37 = llvm.getelementptr inbounds %32[%36] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %38 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %38, %31 {alignment = 4 : i64} : f32, !llvm.ptr
    %39 = llvm.getelementptr inbounds %16[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %40 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %41 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    %42 = llvm.mul %41, %2 overflow<nsw>  : i32
    %43 = llvm.add %42, %3 overflow<nsw>  : i32
    %44 = llvm.sext %43 : i32 to i64
    %45 = llvm.getelementptr inbounds %40[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %46 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %46, %39 {alignment = 4 : i64} : f32, !llvm.ptr
    %47 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%18, %16, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %48 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %49 = llvm.call @cpu_rasterizer_transformPoint4x4(%48, %47) : (!llvm.array<2 x i64>, !llvm.ptr) -> !llvm.array<2 x i64>
    llvm.store %49, %17 {alignment = 4 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    %50 = llvm.getelementptr inbounds %17[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %51 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    %52 = llvm.fadd %51, %5  : f32
    %53 = llvm.fdiv %6, %52  : f32
    llvm.store %53, %19 {alignment = 4 : i64} : f32, !llvm.ptr
    %54 = llvm.getelementptr inbounds %20[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %55 = llvm.getelementptr inbounds %17[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %56 = llvm.load %55 {alignment = 4 : i64} : !llvm.ptr -> f32
    %57 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %58 = llvm.fmul %56, %57  : f32
    llvm.store %58, %54 {alignment = 4 : i64} : f32, !llvm.ptr
    %59 = llvm.getelementptr inbounds %20[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %60 = llvm.getelementptr inbounds %17[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %61 = llvm.load %60 {alignment = 4 : i64} : !llvm.ptr -> f32
    %62 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %63 = llvm.fmul %61, %62  : f32
    llvm.store %63, %59 {alignment = 4 : i64} : f32, !llvm.ptr
    %64 = llvm.getelementptr inbounds %20[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %65 = llvm.getelementptr inbounds %17[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %66 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> f32
    %67 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> f32
    %68 = llvm.fmul %66, %67  : f32
    llvm.store %68, %64 {alignment = 4 : i64} : f32, !llvm.ptr
    %69 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %70 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%22, %16, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %71 = llvm.load %22 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %72 = llvm.call @cpu_rasterizer_transformPoint4x3(%71, %70) : (!llvm.array<2 x i64>, !llvm.ptr) -> !llvm.array<2 x i64>
    llvm.store %72, %23 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%21, %23, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%69, %21, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %73 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %74 = llvm.getelementptr inbounds %73[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %75 = llvm.load %74 {alignment = 4 : i64} : !llvm.ptr -> f32
    %76 = llvm.fcmp "ole" %75, %7 : f32
    llvm.cond_br %76, ^bb1, ^bb3(%0 : i32)
  ^bb1:  // pred: ^bb0
    %77 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %78 = llvm.icmp "ne" %77, %1 : i32
    llvm.cond_br %78, ^bb2, ^bb3(%1 : i32)
  ^bb2:  // pred: ^bb1
    %79 = llvm.call @printf(%8) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    llvm.call @exit(%0) : (i32) -> ()
    llvm.unreachable
  ^bb3(%80: i32):  // 2 preds: ^bb0, ^bb1
    llvm.store %80, %9 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %81 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.return %81 : i32
  }
  llvm.func @printf(!llvm.ptr {llvm.noundef}, ...) -> (i32 {llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @exit(i32 {llvm.noundef, llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noreturn", "nounwind", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
}

