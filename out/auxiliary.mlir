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
    %11 = llvm.getelementptr inbounds %5[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f32, f32)>
    llvm.store %arg0, %11 {alignment = 4 : i64} : f32, !llvm.ptr
    %12 = llvm.getelementptr inbounds %5[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f32, f32)>
    llvm.store %arg1, %12 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg5, %7 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%6, %7, %2) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg2, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg3, %9 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg4, %10 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %13 = llvm.getelementptr inbounds %6[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %14 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    %15 = llvm.getelementptr inbounds %5[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %16 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> f32
    %17 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %18 = llvm.sitofp %17 : i32 to f32
    %19 = llvm.fsub %16, %18  : f32
    %20 = llvm.fdiv %19, %3  : f32
    %21 = llvm.fptosi %20 : f32 to i32
    %22 = llvm.call @max_int(%1, %21) : (i32, i32) -> i32
    %23 = llvm.call @min_int(%14, %22) : (i32, i32) -> i32
    %24 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %25 = llvm.getelementptr inbounds %24[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %23, %25 {alignment = 4 : i64} : i32, !llvm.ptr
    %26 = llvm.getelementptr inbounds %6[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %27 = llvm.load %26 {alignment = 4 : i64} : !llvm.ptr -> i32
    %28 = llvm.getelementptr inbounds %5[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %29 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> f32
    %30 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %31 = llvm.sitofp %30 : i32 to f32
    %32 = llvm.fsub %29, %31  : f32
    %33 = llvm.fdiv %32, %3  : f32
    %34 = llvm.fptosi %33 : f32 to i32
    %35 = llvm.call @max_int(%1, %34) : (i32, i32) -> i32
    %36 = llvm.call @min_int(%27, %35) : (i32, i32) -> i32
    %37 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %38 = llvm.getelementptr inbounds %37[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %36, %38 {alignment = 4 : i64} : i32, !llvm.ptr
    %39 = llvm.getelementptr inbounds %6[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %40 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %41 = llvm.getelementptr inbounds %5[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %42 = llvm.load %41 {alignment = 4 : i64} : !llvm.ptr -> f32
    %43 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %44 = llvm.sitofp %43 : i32 to f32
    %45 = llvm.fadd %42, %44  : f32
    %46 = llvm.fadd %45, %3  : f32
    %47 = llvm.fsub %46, %4  : f32
    %48 = llvm.fdiv %47, %3  : f32
    %49 = llvm.fptosi %48 : f32 to i32
    %50 = llvm.call @max_int(%1, %49) : (i32, i32) -> i32
    %51 = llvm.call @min_int(%40, %50) : (i32, i32) -> i32
    %52 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %53 = llvm.getelementptr inbounds %52[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %51, %53 {alignment = 4 : i64} : i32, !llvm.ptr
    %54 = llvm.getelementptr inbounds %6[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %55 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %56 = llvm.getelementptr inbounds %5[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %57 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> f32
    %58 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %59 = llvm.sitofp %58 : i32 to f32
    %60 = llvm.fadd %57, %59  : f32
    %61 = llvm.fadd %60, %3  : f32
    %62 = llvm.fsub %61, %4  : f32
    %63 = llvm.fdiv %62, %3  : f32
    %64 = llvm.fptosi %63 : f32 to i32
    %65 = llvm.call @max_int(%1, %64) : (i32, i32) -> i32
    %66 = llvm.call @min_int(%55, %65) : (i32, i32) -> i32
    %67 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %68 = llvm.getelementptr inbounds %67[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %66, %68 {alignment = 4 : i64} : i32, !llvm.ptr
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
  llvm.func internal @max_int(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: i32 {llvm.noundef, llvm.signext}) -> (i32 {llvm.signext}) attributes {dso_local, frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %2 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %1 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %2 {alignment = 4 : i64} : i32, !llvm.ptr
    %3 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i32
    %4 = llvm.load %2 {alignment = 4 : i64} : !llvm.ptr -> i32
    %5 = llvm.icmp "sgt" %3, %4 : i32
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
  llvm.func @cpu_rasterizer_transformPoint4x3(%arg0: !llvm.array<2 x i64>, %arg1: !llvm.ptr {llvm.noundef}) -> !llvm.array<2 x i64> attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.mlir.constant(4 : i64) : i64
    %5 = llvm.mlir.constant(8 : i64) : i64
    %6 = llvm.mlir.constant(2 : i32) : i32
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.mlir.constant(5 : i64) : i64
    %9 = llvm.mlir.constant(9 : i64) : i64
    %10 = llvm.mlir.constant(13 : i64) : i64
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.mlir.constant(6 : i64) : i64
    %13 = llvm.mlir.constant(10 : i64) : i64
    %14 = llvm.mlir.constant(14 : i64) : i64
    %15 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %17 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%16, %17, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %18 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %20 = llvm.getelementptr inbounds %15[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %21 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %22 = llvm.getelementptr inbounds %21[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %23 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> f32
    %24 = llvm.getelementptr inbounds %16[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %25 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> f32
    %26 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %27 = llvm.getelementptr inbounds %26[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %28 = llvm.load %27 {alignment = 4 : i64} : !llvm.ptr -> f32
    %29 = llvm.getelementptr inbounds %16[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %30 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> f32
    %31 = llvm.fmul %28, %30  : f32
    %32 = llvm.intr.fmuladd(%23, %25, %31)  : (f32, f32, f32) -> f32
    %33 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %34 = llvm.getelementptr inbounds %33[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %35 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> f32
    %36 = llvm.getelementptr inbounds %16[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %37 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> f32
    %38 = llvm.intr.fmuladd(%35, %37, %32)  : (f32, f32, f32) -> f32
    %39 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %40 = llvm.getelementptr inbounds %39[%1] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %41 = llvm.load %40 {alignment = 4 : i64} : !llvm.ptr -> f32
    %42 = llvm.fadd %38, %41  : f32
    llvm.store %42, %20 {alignment = 4 : i64} : f32, !llvm.ptr
    %43 = llvm.getelementptr inbounds %15[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %44 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %45 = llvm.getelementptr inbounds %44[%7] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %46 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> f32
    %47 = llvm.getelementptr inbounds %16[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %48 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> f32
    %49 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %50 = llvm.getelementptr inbounds %49[%8] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %51 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    %52 = llvm.getelementptr inbounds %16[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %53 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> f32
    %54 = llvm.fmul %51, %53  : f32
    %55 = llvm.intr.fmuladd(%46, %48, %54)  : (f32, f32, f32) -> f32
    %56 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %57 = llvm.getelementptr inbounds %56[%9] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %58 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> f32
    %59 = llvm.getelementptr inbounds %16[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %60 = llvm.load %59 {alignment = 4 : i64} : !llvm.ptr -> f32
    %61 = llvm.intr.fmuladd(%58, %60, %55)  : (f32, f32, f32) -> f32
    %62 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %63 = llvm.getelementptr inbounds %62[%10] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %64 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr -> f32
    %65 = llvm.fadd %61, %64  : f32
    llvm.store %65, %43 {alignment = 4 : i64} : f32, !llvm.ptr
    %66 = llvm.getelementptr inbounds %15[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %67 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %68 = llvm.getelementptr inbounds %67[%11] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %69 = llvm.load %68 {alignment = 4 : i64} : !llvm.ptr -> f32
    %70 = llvm.getelementptr inbounds %16[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %71 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> f32
    %72 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %73 = llvm.getelementptr inbounds %72[%12] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %74 = llvm.load %73 {alignment = 4 : i64} : !llvm.ptr -> f32
    %75 = llvm.getelementptr inbounds %16[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %76 = llvm.load %75 {alignment = 4 : i64} : !llvm.ptr -> f32
    %77 = llvm.fmul %74, %76  : f32
    %78 = llvm.intr.fmuladd(%69, %71, %77)  : (f32, f32, f32) -> f32
    %79 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %80 = llvm.getelementptr inbounds %79[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %81 = llvm.load %80 {alignment = 4 : i64} : !llvm.ptr -> f32
    %82 = llvm.getelementptr inbounds %16[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %83 = llvm.load %82 {alignment = 4 : i64} : !llvm.ptr -> f32
    %84 = llvm.intr.fmuladd(%81, %83, %78)  : (f32, f32, f32) -> f32
    %85 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %86 = llvm.getelementptr inbounds %85[%14] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %87 = llvm.load %86 {alignment = 4 : i64} : !llvm.ptr -> f32
    %88 = llvm.fadd %84, %87  : f32
    llvm.store %88, %66 {alignment = 4 : i64} : f32, !llvm.ptr
    "llvm.intr.memcpy"(%19, %15, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %89 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %89 : !llvm.array<2 x i64>
  }
  llvm.func @cpu_rasterizer_transformPoint4x4(%arg0: !llvm.array<2 x i64>, %arg1: !llvm.ptr {llvm.noundef}) -> !llvm.array<2 x i64> attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.mlir.constant(4 : i64) : i64
    %5 = llvm.mlir.constant(8 : i64) : i64
    %6 = llvm.mlir.constant(2 : i32) : i32
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.mlir.constant(5 : i64) : i64
    %9 = llvm.mlir.constant(9 : i64) : i64
    %10 = llvm.mlir.constant(13 : i64) : i64
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.mlir.constant(6 : i64) : i64
    %13 = llvm.mlir.constant(10 : i64) : i64
    %14 = llvm.mlir.constant(14 : i64) : i64
    %15 = llvm.mlir.constant(3 : i32) : i32
    %16 = llvm.mlir.constant(3 : i64) : i64
    %17 = llvm.mlir.constant(7 : i64) : i64
    %18 = llvm.mlir.constant(11 : i64) : i64
    %19 = llvm.mlir.constant(15 : i64) : i64
    %20 = llvm.alloca %0 x !llvm.struct<"struct.float4", (f32, f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %22 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%21, %22, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg1, %23 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %24 = llvm.getelementptr inbounds %20[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %25 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %26 = llvm.getelementptr inbounds %25[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %27 = llvm.load %26 {alignment = 4 : i64} : !llvm.ptr -> f32
    %28 = llvm.getelementptr inbounds %21[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %29 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> f32
    %30 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %31 = llvm.getelementptr inbounds %30[%4] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %32 = llvm.load %31 {alignment = 4 : i64} : !llvm.ptr -> f32
    %33 = llvm.getelementptr inbounds %21[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %34 = llvm.load %33 {alignment = 4 : i64} : !llvm.ptr -> f32
    %35 = llvm.fmul %32, %34  : f32
    %36 = llvm.intr.fmuladd(%27, %29, %35)  : (f32, f32, f32) -> f32
    %37 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %38 = llvm.getelementptr inbounds %37[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %39 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> f32
    %40 = llvm.getelementptr inbounds %21[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %41 = llvm.load %40 {alignment = 4 : i64} : !llvm.ptr -> f32
    %42 = llvm.intr.fmuladd(%39, %41, %36)  : (f32, f32, f32) -> f32
    %43 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %44 = llvm.getelementptr inbounds %43[%1] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %45 = llvm.load %44 {alignment = 4 : i64} : !llvm.ptr -> f32
    %46 = llvm.fadd %42, %45  : f32
    llvm.store %46, %24 {alignment = 4 : i64} : f32, !llvm.ptr
    %47 = llvm.getelementptr inbounds %20[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %48 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %49 = llvm.getelementptr inbounds %48[%7] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %50 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> f32
    %51 = llvm.getelementptr inbounds %21[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %52 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> f32
    %53 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %54 = llvm.getelementptr inbounds %53[%8] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %55 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> f32
    %56 = llvm.getelementptr inbounds %21[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %57 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> f32
    %58 = llvm.fmul %55, %57  : f32
    %59 = llvm.intr.fmuladd(%50, %52, %58)  : (f32, f32, f32) -> f32
    %60 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %61 = llvm.getelementptr inbounds %60[%9] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> f32
    %63 = llvm.getelementptr inbounds %21[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %64 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr -> f32
    %65 = llvm.intr.fmuladd(%62, %64, %59)  : (f32, f32, f32) -> f32
    %66 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %67 = llvm.getelementptr inbounds %66[%10] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %68 = llvm.load %67 {alignment = 4 : i64} : !llvm.ptr -> f32
    %69 = llvm.fadd %65, %68  : f32
    llvm.store %69, %47 {alignment = 4 : i64} : f32, !llvm.ptr
    %70 = llvm.getelementptr inbounds %20[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %71 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %72 = llvm.getelementptr inbounds %71[%11] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %73 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> f32
    %74 = llvm.getelementptr inbounds %21[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %75 = llvm.load %74 {alignment = 4 : i64} : !llvm.ptr -> f32
    %76 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %77 = llvm.getelementptr inbounds %76[%12] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %78 = llvm.load %77 {alignment = 4 : i64} : !llvm.ptr -> f32
    %79 = llvm.getelementptr inbounds %21[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %80 = llvm.load %79 {alignment = 4 : i64} : !llvm.ptr -> f32
    %81 = llvm.fmul %78, %80  : f32
    %82 = llvm.intr.fmuladd(%73, %75, %81)  : (f32, f32, f32) -> f32
    %83 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %84 = llvm.getelementptr inbounds %83[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %85 = llvm.load %84 {alignment = 4 : i64} : !llvm.ptr -> f32
    %86 = llvm.getelementptr inbounds %21[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %87 = llvm.load %86 {alignment = 4 : i64} : !llvm.ptr -> f32
    %88 = llvm.intr.fmuladd(%85, %87, %82)  : (f32, f32, f32) -> f32
    %89 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %90 = llvm.getelementptr inbounds %89[%14] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %91 = llvm.load %90 {alignment = 4 : i64} : !llvm.ptr -> f32
    %92 = llvm.fadd %88, %91  : f32
    llvm.store %92, %70 {alignment = 4 : i64} : f32, !llvm.ptr
    %93 = llvm.getelementptr inbounds %20[%2, 3] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %94 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %95 = llvm.getelementptr inbounds %94[%16] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %96 = llvm.load %95 {alignment = 4 : i64} : !llvm.ptr -> f32
    %97 = llvm.getelementptr inbounds %21[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %98 = llvm.load %97 {alignment = 4 : i64} : !llvm.ptr -> f32
    %99 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %100 = llvm.getelementptr inbounds %99[%17] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %101 = llvm.load %100 {alignment = 4 : i64} : !llvm.ptr -> f32
    %102 = llvm.getelementptr inbounds %21[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %103 = llvm.load %102 {alignment = 4 : i64} : !llvm.ptr -> f32
    %104 = llvm.fmul %101, %103  : f32
    %105 = llvm.intr.fmuladd(%96, %98, %104)  : (f32, f32, f32) -> f32
    %106 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %107 = llvm.getelementptr inbounds %106[%18] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %108 = llvm.load %107 {alignment = 4 : i64} : !llvm.ptr -> f32
    %109 = llvm.getelementptr inbounds %21[%2, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %110 = llvm.load %109 {alignment = 4 : i64} : !llvm.ptr -> f32
    %111 = llvm.intr.fmuladd(%108, %110, %105)  : (f32, f32, f32) -> f32
    %112 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %113 = llvm.getelementptr inbounds %112[%19] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %114 = llvm.load %113 {alignment = 4 : i64} : !llvm.ptr -> f32
    %115 = llvm.fadd %111, %114  : f32
    llvm.store %115, %93 {alignment = 4 : i64} : f32, !llvm.ptr
    %116 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.return %116 : !llvm.array<2 x i64>
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
    %8 = llvm.mlir.constant("Point is filtered although prefiltered is set. This shouldn't happen!\0A\00") : !llvm.array<71 x i8>
    %9 = llvm.mlir.addressof @".str" : !llvm.ptr
    %10 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x !llvm.struct<"struct.float4", (f32, f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %24 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %11 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %12 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg2, %13 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg3, %14 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg4, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg5, %16 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %25 = llvm.getelementptr inbounds %17[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %26 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %27 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %28 = llvm.mul %2, %27 overflow<nsw>  : i32
    %29 = llvm.sext %28 : i32 to i64
    %30 = llvm.getelementptr inbounds %26[%29] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %31 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %31, %25 {alignment = 4 : i64} : f32, !llvm.ptr
    %32 = llvm.getelementptr inbounds %17[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %33 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %34 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %35 = llvm.mul %2, %34 overflow<nsw>  : i32
    %36 = llvm.add %35, %0 overflow<nsw>  : i32
    %37 = llvm.sext %36 : i32 to i64
    %38 = llvm.getelementptr inbounds %33[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %39 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %39, %32 {alignment = 4 : i64} : f32, !llvm.ptr
    %40 = llvm.getelementptr inbounds %17[%1, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %41 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %42 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %43 = llvm.mul %2, %42 overflow<nsw>  : i32
    %44 = llvm.add %43, %3 overflow<nsw>  : i32
    %45 = llvm.sext %44 : i32 to i64
    %46 = llvm.getelementptr inbounds %41[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %47 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.store %47, %40 {alignment = 4 : i64} : f32, !llvm.ptr
    %48 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%19, %17, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %49 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %50 = llvm.call @cpu_rasterizer_transformPoint4x4(%49, %48) : (!llvm.array<2 x i64>, !llvm.ptr) -> !llvm.array<2 x i64>
    llvm.store %50, %18 {alignment = 4 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    %51 = llvm.getelementptr inbounds %18[%1, 3] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %52 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> f32
    %53 = llvm.fadd %52, %5  : f32
    %54 = llvm.fdiv %6, %53  : f32
    llvm.store %54, %20 {alignment = 4 : i64} : f32, !llvm.ptr
    %55 = llvm.getelementptr inbounds %21[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %56 = llvm.getelementptr inbounds %18[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %57 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> f32
    %58 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> f32
    %59 = llvm.fmul %57, %58  : f32
    llvm.store %59, %55 {alignment = 4 : i64} : f32, !llvm.ptr
    %60 = llvm.getelementptr inbounds %21[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %61 = llvm.getelementptr inbounds %18[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> f32
    %63 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> f32
    %64 = llvm.fmul %62, %63  : f32
    llvm.store %64, %60 {alignment = 4 : i64} : f32, !llvm.ptr
    %65 = llvm.getelementptr inbounds %21[%1, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %66 = llvm.getelementptr inbounds %18[%1, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float4", (f32, f32, f32, f32)>
    %67 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> f32
    %68 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> f32
    %69 = llvm.fmul %67, %68  : f32
    llvm.store %69, %65 {alignment = 4 : i64} : f32, !llvm.ptr
    %70 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %71 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%23, %17, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %72 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    %73 = llvm.call @cpu_rasterizer_transformPoint4x3(%72, %71) : (!llvm.array<2 x i64>, !llvm.ptr) -> !llvm.array<2 x i64>
    llvm.store %73, %24 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%22, %24, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%70, %22, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %74 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %75 = llvm.getelementptr inbounds %74[%1, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.float3", (f32, f32, f32)>
    %76 = llvm.load %75 {alignment = 4 : i64} : !llvm.ptr -> f32
    %77 = llvm.fcmp "ole" %76, %7 : f32
    llvm.cond_br %77, ^bb1, ^bb4
  ^bb1:  // pred: ^bb0
    %78 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %79 = llvm.icmp "ne" %78, %1 : i32
    llvm.cond_br %79, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %80 = llvm.call @printf(%9) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    llvm.call @exit(%0) : (i32) -> ()
    llvm.unreachable
  ^bb3:  // pred: ^bb1
    llvm.store %1, %10 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb4:  // pred: ^bb0
    llvm.store %0, %10 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb3, ^bb4
    %81 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.return %81 : i32
  }
  llvm.func @printf(!llvm.ptr {llvm.noundef}, ...) -> (i32 {llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @exit(i32 {llvm.noundef, llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noreturn", "nounwind", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
}
