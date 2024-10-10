#loop_annotation = #llvm.loop_annotation<mustProgress = true>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi64>>, #dlti.dl_entry<i64, dense<64> : vector<2xi64>>, #dlti.dl_entry<i128, dense<128> : vector<2xi64>>, #dlti.dl_entry<i1, dense<8> : vector<2xi64>>, #dlti.dl_entry<i16, dense<16> : vector<2xi64>>, #dlti.dl_entry<i8, dense<8> : vector<2xi64>>, #dlti.dl_entry<i32, dense<32> : vector<2xi64>>, #dlti.dl_entry<f64, dense<64> : vector<2xi64>>, #dlti.dl_entry<f16, dense<16> : vector<2xi64>>, #dlti.dl_entry<f128, dense<128> : vector<2xi64>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i64>, #dlti.dl_entry<"dlti.endianness", "little">>} {
  llvm.mlir.global external @binningState() {addr_space = 0 : i32, alignment = 8 : i64, dso_local} : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.zero : !llvm.ptr
    %2 = llvm.mlir.undef : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %3 = llvm.insertvalue %0, %2[0] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %4 = llvm.insertvalue %1, %3[1] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %5 = llvm.insertvalue %1, %4[2] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %6 = llvm.insertvalue %1, %5[3] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %7 = llvm.insertvalue %1, %6[4] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %8 = llvm.insertvalue %1, %7[5] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    llvm.return %8 : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
  }
  llvm.func @cpu_rasterizer_getHigherMsb(%arg0: i32 {llvm.noundef, llvm.signext}) -> (i32 {llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(16 : i32) : i32
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %1, %5 {alignment = 4 : i64} : i32, !llvm.ptr
    %7 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %7, %6 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb5
    %8 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %9 = llvm.icmp "ugt" %8, %0 : i32
    llvm.cond_br %9, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %10 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %11 = llvm.udiv %10, %3  : i32
    llvm.store %11, %6 {alignment = 4 : i64} : i32, !llvm.ptr
    %12 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %13 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %14 = llvm.lshr %12, %13  : i32
    %15 = llvm.icmp "ne" %14, %2 : i32
    llvm.cond_br %15, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %16 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %17 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %18 = llvm.add %17, %16  : i32
    llvm.store %18, %5 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb4:  // pred: ^bb2
    %19 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %20 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %21 = llvm.sub %20, %19  : i32
    llvm.store %21, %5 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb3, ^bb4
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb6:  // pred: ^bb1
    %22 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %23 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %24 = llvm.lshr %22, %23  : i32
    %25 = llvm.icmp "ne" %24, %2 : i32
    llvm.cond_br %25, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %26 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %27 = llvm.add %26, %0  : i32
    llvm.store %27, %5 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb8
  ^bb8:  // 2 preds: ^bb6, ^bb7
    %28 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.return %28 : i32
  }
  llvm.func @cpu_rasterizer_checkFrustum(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: !llvm.ptr {llvm.noundef}, %arg2: !llvm.ptr {llvm.noundef}, %arg3: !llvm.ptr {llvm.noundef}, %arg4: !llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.struct<"struct.float3", (f32, f32, f32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %2 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %3 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg2, %4 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg3, %5 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg4, %6 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %1, %7 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %9 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %10 = llvm.load %2 {alignment = 4 : i64} : !llvm.ptr -> i32
    %11 = llvm.icmp "slt" %9, %10 : i32
    llvm.cond_br %11, ^bb2, ^bb4
  ^bb2:  // pred: ^bb1
    %12 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %13 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %14 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %15 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %16 = llvm.call @cpu_rasterizer_in_frustum(%12, %13, %14, %15, %1, %8) : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, !llvm.ptr) -> i32
    %17 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %18 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %19 = llvm.sext %18 : i32 to i64
    %20 = llvm.getelementptr inbounds %17[%19] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %16, %20 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // pred: ^bb2
    %21 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %22 = llvm.add %21, %0 overflow<nsw>  : i32
    llvm.store %22, %7 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb4:  // pred: ^bb1
    llvm.return
  }
  llvm.func @cpu_rasterizer_in_frustum(i32 {llvm.noundef, llvm.signext}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, i32 {llvm.noundef, llvm.signext}, !llvm.ptr {llvm.noundef}) -> (i32 {llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @cpu_rasterizer_duplicateWithKeys(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: !llvm.ptr {llvm.noundef}, %arg2: !llvm.ptr {llvm.noundef}, %arg3: !llvm.ptr {llvm.noundef}, %arg4: !llvm.ptr {llvm.noundef}, %arg5: !llvm.ptr {llvm.noundef}, %arg6: !llvm.ptr {llvm.noundef}, %arg7: !llvm.array<2 x i64>) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(12 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(32 : i64) : i64
    %4 = llvm.mlir.constant(4 : i64) : i64
    %5 = llvm.alloca %0 x !llvm.struct<"struct.dim3", (i32, i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.struct<"struct.uint2", (i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.struct<"struct.uint2", (i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x i64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg7, %6 {alignment = 8 : i64} : !llvm.array<2 x i64>, !llvm.ptr
    "llvm.intr.memcpy"(%5, %6, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %arg0, %7 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %8 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg2, %9 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg3, %10 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg4, %11 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg5, %12 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg6, %13 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %2, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb16
    %23 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %24 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %25 = llvm.icmp "slt" %23, %24 : i32
    llvm.cond_br %25, ^bb2, ^bb17
  ^bb2:  // pred: ^bb1
    %26 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %27 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %28 = llvm.sext %27 : i32 to i64
    %29 = llvm.getelementptr inbounds %26[%28] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %30 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> i32
    %31 = llvm.icmp "sgt" %30, %2 : i32
    llvm.cond_br %31, ^bb3, ^bb15
  ^bb3:  // pred: ^bb2
    %32 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %33 = llvm.icmp "eq" %32, %2 : i32
    llvm.cond_br %33, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.br ^bb6(%2 : i32)
  ^bb5:  // pred: ^bb3
    %34 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %35 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %36 = llvm.sub %35, %0 overflow<nsw>  : i32
    %37 = llvm.sext %36 : i32 to i64
    %38 = llvm.getelementptr inbounds %34[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %39 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.br ^bb6(%39 : i32)
  ^bb6(%40: i32):  // 2 preds: ^bb4, ^bb5
    llvm.store %40, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    %41 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %42 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %43 = llvm.sext %42 : i32 to i64
    %44 = llvm.getelementptr inbounds %41[%43] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.float2", (f32, f32)>
    %45 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %46 = llvm.getelementptr inbounds %45[%43] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %47 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> i32
    %48 = llvm.getelementptr inbounds %44[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(f32, f32)>
    %49 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> f32
    %50 = llvm.getelementptr inbounds %44[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(f32, f32)>
    %51 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    "llvm.intr.memcpy"(%18, %5, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %52 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @cpu_rasterizer_getRect(%49, %51, %47, %16, %17, %52) : (f32, f32, i32, !llvm.ptr, !llvm.ptr, !llvm.array<2 x i64>) -> ()
    %53 = llvm.getelementptr inbounds %16[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %54 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %54, %19 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb6, ^bb13
    %55 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %56 = llvm.getelementptr inbounds %17[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %57 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> i32
    %58 = llvm.icmp "ult" %55, %57 : i32
    llvm.cond_br %58, ^bb8, ^bb14
  ^bb8:  // pred: ^bb7
    %59 = llvm.getelementptr inbounds %16[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %60 = llvm.load %59 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %60, %20 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9
  ^bb9:  // 2 preds: ^bb8, ^bb11
    %61 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %62 = llvm.getelementptr inbounds %17[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %63 = llvm.load %62 {alignment = 4 : i64} : !llvm.ptr -> i32
    %64 = llvm.icmp "ult" %61, %63 : i32
    llvm.cond_br %64, ^bb10, ^bb12
  ^bb10:  // pred: ^bb9
    %65 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %66 = llvm.getelementptr inbounds %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %67 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> i32
    %68 = llvm.mul %65, %67  : i32
    %69 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %70 = llvm.add %68, %69  : i32
    %71 = llvm.zext %70 : i32 to i64
    llvm.store %71, %21 {alignment = 8 : i64} : i64, !llvm.ptr
    %72 = llvm.load %21 {alignment = 8 : i64} : !llvm.ptr -> i64
    %73 = llvm.shl %72, %3  : i64
    llvm.store %73, %21 {alignment = 8 : i64} : i64, !llvm.ptr
    %74 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %75 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %76 = llvm.sext %75 : i32 to i64
    %77 = llvm.getelementptr inbounds %74[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    "llvm.intr.memcpy"(%22, %77, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %78 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %79 = llvm.zext %78 : i32 to i64
    %80 = llvm.load %21 {alignment = 8 : i64} : !llvm.ptr -> i64
    %81 = llvm.or %80, %79  : i64
    llvm.store %81, %21 {alignment = 8 : i64} : i64, !llvm.ptr
    %82 = llvm.load %21 {alignment = 8 : i64} : !llvm.ptr -> i64
    %83 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %84 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %85 = llvm.zext %84 : i32 to i64
    %86 = llvm.getelementptr inbounds %83[%85] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %82, %86 {alignment = 8 : i64} : i64, !llvm.ptr
    %87 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %88 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %89 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %90 = llvm.zext %89 : i32 to i64
    %91 = llvm.getelementptr inbounds %88[%90] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %87, %91 {alignment = 4 : i64} : i32, !llvm.ptr
    %92 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %93 = llvm.add %92, %0  : i32
    llvm.store %93, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb11
  ^bb11:  // pred: ^bb10
    %94 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %95 = llvm.add %94, %0  : i32
    llvm.store %95, %20 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9 {loop_annotation = #loop_annotation}
  ^bb12:  // pred: ^bb9
    llvm.br ^bb13
  ^bb13:  // pred: ^bb12
    %96 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %97 = llvm.add %96, %0  : i32
    llvm.store %97, %19 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7 {loop_annotation = #loop_annotation}
  ^bb14:  // pred: ^bb7
    llvm.br ^bb15
  ^bb15:  // 2 preds: ^bb2, ^bb14
    llvm.br ^bb16
  ^bb16:  // pred: ^bb15
    %98 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %99 = llvm.add %98, %0 overflow<nsw>  : i32
    llvm.store %99, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb17:  // pred: ^bb1
    llvm.return
  }
  llvm.func @cpu_rasterizer_getRect(f32, f32, i32 {llvm.noundef, llvm.signext}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.array<2 x i64>) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @cpu_rasterizer_identifyTileRanges(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: !llvm.ptr {llvm.noundef}, %arg2: !llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(32 : i64) : i64
    %3 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x i64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %3 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %4 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg2, %5 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %1, %6 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb10
    %10 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %11 = llvm.load %3 {alignment = 4 : i64} : !llvm.ptr -> i32
    %12 = llvm.icmp "slt" %10, %11 : i32
    llvm.cond_br %12, ^bb2, ^bb11
  ^bb2:  // pred: ^bb1
    %13 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %14 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %15 = llvm.sext %14 : i32 to i64
    %16 = llvm.getelementptr inbounds %13[%15] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %17 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> i64
    llvm.store %17, %7 {alignment = 8 : i64} : i64, !llvm.ptr
    %18 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> i64
    %19 = llvm.lshr %18, %2  : i64
    %20 = llvm.trunc %19 : i64 to i32
    llvm.store %20, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    %21 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %22 = llvm.icmp "eq" %21, %1 : i32
    llvm.cond_br %22, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %23 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %24 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %25 = llvm.zext %24 : i32 to i64
    %26 = llvm.getelementptr inbounds %23[%25] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %27 = llvm.getelementptr inbounds %26[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %1, %27 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7
  ^bb4:  // pred: ^bb2
    %28 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %29 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %30 = llvm.sub %29, %0 overflow<nsw>  : i32
    %31 = llvm.sext %30 : i32 to i64
    %32 = llvm.getelementptr inbounds %28[%31] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %33 = llvm.load %32 {alignment = 8 : i64} : !llvm.ptr -> i64
    %34 = llvm.lshr %33, %2  : i64
    %35 = llvm.trunc %34 : i64 to i32
    llvm.store %35, %9 {alignment = 4 : i64} : i32, !llvm.ptr
    %36 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %37 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %38 = llvm.icmp "ne" %36, %37 : i32
    llvm.cond_br %38, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %39 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %40 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %41 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %42 = llvm.zext %41 : i32 to i64
    %43 = llvm.getelementptr inbounds %40[%42] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %44 = llvm.getelementptr inbounds %43[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %39, %44 {alignment = 4 : i64} : i32, !llvm.ptr
    %45 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %46 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %47 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %48 = llvm.zext %47 : i32 to i64
    %49 = llvm.getelementptr inbounds %46[%48] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %50 = llvm.getelementptr inbounds %49[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %45, %50 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb3, ^bb6
    %51 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %52 = llvm.load %3 {alignment = 4 : i64} : !llvm.ptr -> i32
    %53 = llvm.sub %52, %0 overflow<nsw>  : i32
    %54 = llvm.icmp "eq" %51, %53 : i32
    llvm.cond_br %54, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %55 = llvm.load %3 {alignment = 4 : i64} : !llvm.ptr -> i32
    %56 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %57 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %58 = llvm.zext %57 : i32 to i64
    %59 = llvm.getelementptr inbounds %56[%58] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %60 = llvm.getelementptr inbounds %59[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %55, %60 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9
  ^bb9:  // 2 preds: ^bb7, ^bb8
    llvm.br ^bb10
  ^bb10:  // pred: ^bb9
    %61 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %62 = llvm.add %61, %0 overflow<nsw>  : i32
    llvm.store %62, %6 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb11:  // pred: ^bb1
    llvm.return
  }
  llvm.func @cpu_rasterizer_markVisible(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: !llvm.ptr {llvm.noundef}, %arg2: !llvm.ptr {llvm.noundef}, %arg3: !llvm.ptr {llvm.noundef}, %arg4: !llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %2 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %1 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %2 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg2, %3 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg3, %4 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg4, %5 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %6 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i32
    %7 = llvm.load %2 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %8 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %9 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %10 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @cpu_rasterizer_checkFrustum(%6, %7, %8, %9, %10) : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @cpu_rasterizer_compare_keys(%arg0: !llvm.ptr {llvm.noundef}, %arg1: !llvm.ptr {llvm.noundef}) -> (i32 {llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(-1 : i32) : i32
    %1 = llvm.mlir.constant(1 : i32) : i32
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.addressof @binningState : !llvm.ptr
    %4 = llvm.getelementptr inbounds %3[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %5 = llvm.alloca %1 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %1 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %1 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %1 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %1 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %1 x i64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %1 x i64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %6 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg1, %7 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %12 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %13 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %13, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    %14 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %15 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %15, %9 {alignment = 4 : i64} : i32, !llvm.ptr
    %16 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %17 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %18 = llvm.sext %17 : i32 to i64
    %19 = llvm.getelementptr inbounds %16[%18] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %20 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> i64
    llvm.store %20, %10 {alignment = 8 : i64} : i64, !llvm.ptr
    %21 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %22 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %23 = llvm.sext %22 : i32 to i64
    %24 = llvm.getelementptr inbounds %21[%23] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %25 = llvm.load %24 {alignment = 8 : i64} : !llvm.ptr -> i64
    llvm.store %25, %11 {alignment = 8 : i64} : i64, !llvm.ptr
    %26 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> i64
    %27 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> i64
    %28 = llvm.icmp "ult" %26, %27 : i64
    llvm.cond_br %28, ^bb1(%0 : i32), ^bb2
  ^bb1(%29: i32):  // 3 preds: ^bb0, ^bb2, ^bb2
    llvm.store %29, %5 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb2:  // pred: ^bb0
    %30 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> i64
    %31 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> i64
    %32 = llvm.icmp "ugt" %30, %31 : i64
    llvm.cond_br %32, ^bb1(%1 : i32), ^bb1(%2 : i32)
  ^bb3:  // pred: ^bb1
    %33 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.return %33 : i32
  }
  llvm.func @cpu_rasterizer_forward(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: i32 {llvm.noundef, llvm.signext}, %arg2: i32 {llvm.noundef, llvm.signext}, %arg3: !llvm.ptr {llvm.noundef}, %arg4: i32 {llvm.noundef, llvm.signext}, %arg5: i32 {llvm.noundef, llvm.signext}, %arg6: !llvm.ptr {llvm.noundef}, %arg7: !llvm.ptr {llvm.noundef}, %arg8: !llvm.ptr {llvm.noundef}, %arg9: !llvm.ptr {llvm.noundef}, %arg10: !llvm.ptr {llvm.noundef}, %arg11: f32 {llvm.noundef}, %arg12: !llvm.ptr {llvm.noundef}, %arg13: !llvm.ptr {llvm.noundef}, %arg14: !llvm.ptr {llvm.noundef}, %arg15: !llvm.ptr {llvm.noundef}, %arg16: !llvm.ptr {llvm.noundef}, %arg17: f32 {llvm.noundef}, %arg18: f32 {llvm.noundef}, %arg19: i32 {llvm.noundef, llvm.signext}, %arg20: !llvm.ptr {llvm.noundef}, %arg21: !llvm.ptr {llvm.noundef}, %arg22: i32 {llvm.noundef, llvm.signext}) -> (i32 {llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(12 : i64) : i64
    %1 = llvm.mlir.constant(16 : i32) : i32
    %2 = llvm.mlir.constant(1 : i32) : i32
    %3 = llvm.mlir.constant(2.000000e+00 : f32) : f32
    %4 = llvm.mlir.constant(4 : i64) : i64
    %5 = llvm.mlir.constant(0 : i32) : i32
    %6 = llvm.mlir.constant(3 : i64) : i64
    %7 = llvm.mlir.constant(8 : i64) : i64
    %8 = llvm.mlir.constant(6 : i64) : i64
    %9 = llvm.mlir.constant(16 : i64) : i64
    %10 = llvm.mlir.zero : !llvm.ptr
    %11 = llvm.mlir.addressof @binningState : !llvm.ptr
    %12 = llvm.getelementptr inbounds %11[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %13 = llvm.getelementptr inbounds %11[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %14 = llvm.getelementptr inbounds %11[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %15 = llvm.getelementptr inbounds %11[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %16 = llvm.mlir.addressof @cpu_rasterizer_compare_keys : !llvm.ptr
    %17 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %24 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %25 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %26 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %27 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %28 = llvm.alloca %2 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %29 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %30 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %31 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %32 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %33 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %34 = llvm.alloca %2 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %35 = llvm.alloca %2 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %36 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %37 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %38 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %39 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %40 = llvm.alloca %2 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %41 = llvm.alloca %2 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %42 = llvm.alloca %2 x !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %43 = llvm.alloca %2 x !llvm.struct<"struct.dim3", (i32, i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %44 = llvm.alloca %2 x !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %45 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %46 = llvm.alloca %2 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %47 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %48 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %49 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %50 = llvm.alloca %2 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %51 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %52 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %53 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %54 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %55 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %56 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %57 = llvm.alloca %2 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %58 = llvm.alloca %2 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %59 = llvm.alloca %2 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %17 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg2, %19 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg3, %20 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg4, %21 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg5, %22 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg6, %23 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg7, %24 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg8, %25 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg9, %26 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg10, %27 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg11, %28 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg12, %29 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg13, %30 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg14, %31 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg15, %32 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg16, %33 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg17, %34 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg18, %35 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg19, %36 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg20, %37 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg21, %38 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg22, %39 {alignment = 4 : i64} : i32, !llvm.ptr
    %60 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %61 = llvm.sitofp %60 : i32 to f32
    %62 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> f32
    %63 = llvm.fmul %3, %62  : f32
    %64 = llvm.fdiv %61, %63  : f32
    llvm.store %64, %40 {alignment = 4 : i64} : f32, !llvm.ptr
    %65 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %66 = llvm.sitofp %65 : i32 to f32
    %67 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> f32
    %68 = llvm.fmul %3, %67  : f32
    %69 = llvm.fdiv %66, %68  : f32
    llvm.store %69, %41 {alignment = 4 : i64} : f32, !llvm.ptr
    %70 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %71 = llvm.sext %70 : i32 to i64
    %72 = llvm.mul %71, %4  : i64
    %73 = llvm.call @malloc(%72) : (i64) -> !llvm.ptr
    %74 = llvm.getelementptr inbounds %42[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %73, %74 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %75 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %76 = llvm.sext %75 : i32 to i64
    %77 = llvm.mul %76, %4  : i64
    %78 = llvm.mul %77, %6  : i64
    %79 = llvm.call @malloc(%78) : (i64) -> !llvm.ptr
    %80 = llvm.getelementptr inbounds %42[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %79, %80 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %81 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %82 = llvm.sext %81 : i32 to i64
    %83 = llvm.mul %82, %4  : i64
    %84 = llvm.call @malloc(%83) : (i64) -> !llvm.ptr
    %85 = llvm.getelementptr inbounds %42[0, 4] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %84, %85 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %86 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %87 = llvm.sext %86 : i32 to i64
    %88 = llvm.mul %87, %7  : i64
    %89 = llvm.call @malloc(%88) : (i64) -> !llvm.ptr
    %90 = llvm.getelementptr inbounds %42[0, 5] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %89, %90 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %91 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %92 = llvm.sext %91 : i32 to i64
    %93 = llvm.mul %92, %4  : i64
    %94 = llvm.mul %93, %8  : i64
    %95 = llvm.call @malloc(%94) : (i64) -> !llvm.ptr
    %96 = llvm.getelementptr inbounds %42[0, 6] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %95, %96 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %97 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %98 = llvm.sext %97 : i32 to i64
    %99 = llvm.mul %98, %9  : i64
    %100 = llvm.call @malloc(%99) : (i64) -> !llvm.ptr
    %101 = llvm.getelementptr inbounds %42[0, 7] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %100, %101 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %102 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %103 = llvm.sext %102 : i32 to i64
    %104 = llvm.mul %103, %4  : i64
    %105 = llvm.mul %104, %6  : i64
    %106 = llvm.call @malloc(%105) : (i64) -> !llvm.ptr
    %107 = llvm.getelementptr inbounds %42[0, 8] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %106, %107 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %108 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %109 = llvm.sext %108 : i32 to i64
    %110 = llvm.mul %109, %4  : i64
    %111 = llvm.call @malloc(%110) : (i64) -> !llvm.ptr
    %112 = llvm.getelementptr inbounds %42[0, 10] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %111, %112 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %113 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %114 = llvm.sext %113 : i32 to i64
    %115 = llvm.mul %114, %4  : i64
    %116 = llvm.call @malloc(%115) : (i64) -> !llvm.ptr
    %117 = llvm.getelementptr inbounds %42[0, 9] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %116, %117 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %118 = llvm.load %38 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %119 = llvm.icmp "eq" %118, %10 : !llvm.ptr
    llvm.cond_br %119, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %120 = llvm.load %85 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %120, %38 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %121 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %122 = llvm.add %121, %1 overflow<nsw>  : i32
    %123 = llvm.sub %122, %2 overflow<nsw>  : i32
    %124 = llvm.sdiv %123, %1  : i32
    %125 = llvm.getelementptr inbounds %43[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    llvm.store %124, %125 {alignment = 4 : i64} : i32, !llvm.ptr
    %126 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %127 = llvm.add %126, %1 overflow<nsw>  : i32
    %128 = llvm.sub %127, %2 overflow<nsw>  : i32
    %129 = llvm.sdiv %128, %1  : i32
    %130 = llvm.getelementptr inbounds %43[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    llvm.store %129, %130 {alignment = 4 : i64} : i32, !llvm.ptr
    %131 = llvm.getelementptr inbounds %43[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    llvm.store %2, %131 {alignment = 4 : i64} : i32, !llvm.ptr
    %132 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %133 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %134 = llvm.mul %132, %133 overflow<nsw>  : i32
    llvm.store %134, %45 {alignment = 4 : i64} : i32, !llvm.ptr
    %135 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %136 = llvm.sext %135 : i32 to i64
    %137 = llvm.mul %136, %4  : i64
    %138 = llvm.call @malloc(%137) : (i64) -> !llvm.ptr
    %139 = llvm.getelementptr inbounds %44[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    llvm.store %138, %139 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %140 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> i32
    %141 = llvm.sext %140 : i32 to i64
    %142 = llvm.mul %141, %4  : i64
    %143 = llvm.call @malloc(%142) : (i64) -> !llvm.ptr
    %144 = llvm.getelementptr inbounds %44[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    llvm.store %143, %144 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %145 = llvm.load %125 {alignment = 4 : i64} : !llvm.ptr -> i32
    %146 = llvm.zext %145 : i32 to i64
    %147 = llvm.mul %146, %7  : i64
    %148 = llvm.load %130 {alignment = 4 : i64} : !llvm.ptr -> i32
    %149 = llvm.zext %148 : i32 to i64
    %150 = llvm.mul %147, %149  : i64
    %151 = llvm.call @malloc(%150) : (i64) -> !llvm.ptr
    %152 = llvm.getelementptr inbounds %44[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    llvm.store %151, %152 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %153 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %154 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %155 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %156 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %157 = llvm.load %27 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %158 = llvm.load %28 {alignment = 4 : i64} : !llvm.ptr -> f32
    %159 = llvm.load %29 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %160 = llvm.load %26 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %161 = llvm.load %24 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %162 = llvm.load %80 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %163 = llvm.load %30 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %164 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %165 = llvm.load %31 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %166 = llvm.load %32 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %167 = llvm.load %33 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %168 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %169 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %170 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> f32
    %171 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> f32
    %172 = llvm.load %41 {alignment = 4 : i64} : !llvm.ptr -> f32
    %173 = llvm.load %40 {alignment = 4 : i64} : !llvm.ptr -> f32
    %174 = llvm.load %38 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %175 = llvm.load %90 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %176 = llvm.load %74 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %177 = llvm.load %96 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %178 = llvm.load %107 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %179 = llvm.load %101 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %180 = llvm.load %112 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %181 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> i32
    "llvm.intr.memcpy"(%46, %43, %0) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %182 = llvm.load %46 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @cpu_rasterizer_preprocess(%153, %154, %155, %156, %157, %158, %159, %160, %161, %162, %163, %164, %165, %166, %167, %168, %169, %170, %171, %172, %173, %174, %175, %176, %177, %178, %179, %182, %180, %181) : (i32, i32, i32, !llvm.ptr, !llvm.ptr, f32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, f32, f32, f32, f32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.array<2 x i64>, !llvm.ptr, i32) -> ()
    llvm.store %5, %47 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %5, %48 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb5
    %183 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> i32
    %184 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %185 = llvm.icmp "slt" %183, %184 : i32
    llvm.cond_br %185, ^bb4, ^bb6
  ^bb4:  // pred: ^bb3
    %186 = llvm.load %112 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %187 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> i32
    %188 = llvm.sext %187 : i32 to i64
    %189 = llvm.getelementptr inbounds %186[%188] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %190 = llvm.load %189 {alignment = 4 : i64} : !llvm.ptr -> i32
    %191 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> i32
    %192 = llvm.add %191, %190  : i32
    llvm.store %192, %47 {alignment = 4 : i64} : i32, !llvm.ptr
    %193 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> i32
    %194 = llvm.load %117 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %195 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> i32
    %196 = llvm.sext %195 : i32 to i64
    %197 = llvm.getelementptr inbounds %194[%196] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %193, %197 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // pred: ^bb4
    %198 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> i32
    %199 = llvm.add %198, %2 overflow<nsw>  : i32
    llvm.store %199, %48 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb6:  // pred: ^bb3
    %200 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %200, %49 {alignment = 4 : i64} : i32, !llvm.ptr
    %201 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %202 = llvm.sext %201 : i32 to i64
    %203 = llvm.mul %202, %4  : i64
    %204 = llvm.call @malloc(%203) : (i64) -> !llvm.ptr
    llvm.store %204, %12 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %205 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %206 = llvm.sext %205 : i32 to i64
    %207 = llvm.mul %206, %4  : i64
    %208 = llvm.call @malloc(%207) : (i64) -> !llvm.ptr
    llvm.store %208, %13 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %209 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %210 = llvm.sext %209 : i32 to i64
    %211 = llvm.mul %210, %7  : i64
    %212 = llvm.call @malloc(%211) : (i64) -> !llvm.ptr
    llvm.store %212, %14 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %213 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %214 = llvm.sext %213 : i32 to i64
    %215 = llvm.mul %214, %7  : i64
    %216 = llvm.call @malloc(%215) : (i64) -> !llvm.ptr
    llvm.store %216, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %217 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %218 = llvm.load %90 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %219 = llvm.load %74 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %220 = llvm.load %117 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %221 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %222 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %223 = llvm.load %38 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%50, %43, %0) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %224 = llvm.load %50 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @cpu_rasterizer_duplicateWithKeys(%217, %218, %219, %220, %221, %222, %223, %224) : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.array<2 x i64>) -> ()
    %225 = llvm.load %125 {alignment = 4 : i64} : !llvm.ptr -> i32
    %226 = llvm.load %130 {alignment = 4 : i64} : !llvm.ptr -> i32
    %227 = llvm.mul %225, %226  : i32
    %228 = llvm.call @cpu_rasterizer_getHigherMsb(%227) : (i32) -> i32
    llvm.store %228, %51 {alignment = 4 : i64} : i32, !llvm.ptr
    %229 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %230 = llvm.sext %229 : i32 to i64
    %231 = llvm.mul %230, %4  : i64
    %232 = llvm.call @malloc(%231) : (i64) -> !llvm.ptr
    llvm.store %232, %52 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %5, %53 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb6, ^bb9
    %233 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    %234 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %235 = llvm.icmp "slt" %233, %234 : i32
    llvm.cond_br %235, ^bb8, ^bb10
  ^bb8:  // pred: ^bb7
    %236 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    %237 = llvm.load %52 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %238 = llvm.sext %236 : i32 to i64
    %239 = llvm.getelementptr inbounds %237[%238] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %236, %239 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9
  ^bb9:  // pred: ^bb8
    %240 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    %241 = llvm.add %240, %2 overflow<nsw>  : i32
    llvm.store %241, %53 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7 {loop_annotation = #loop_annotation}
  ^bb10:  // pred: ^bb7
    %242 = llvm.load %52 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %243 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %244 = llvm.sext %243 : i32 to i64
    llvm.call @qsort(%242, %244, %4, %16) : (!llvm.ptr, i64, i64, !llvm.ptr) -> ()
    llvm.store %5, %54 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb11
  ^bb11:  // 2 preds: ^bb10, ^bb13
    %245 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %246 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %247 = llvm.icmp "slt" %245, %246 : i32
    llvm.cond_br %247, ^bb12, ^bb14
  ^bb12:  // pred: ^bb11
    %248 = llvm.load %52 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %249 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %250 = llvm.sext %249 : i32 to i64
    %251 = llvm.getelementptr inbounds %248[%250] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %252 = llvm.load %251 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %252, %55 {alignment = 4 : i64} : i32, !llvm.ptr
    %253 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %254 = llvm.load %55 {alignment = 4 : i64} : !llvm.ptr -> i32
    %255 = llvm.sext %254 : i32 to i64
    %256 = llvm.getelementptr inbounds %253[%255] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %257 = llvm.load %256 {alignment = 8 : i64} : !llvm.ptr -> i64
    %258 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %259 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %260 = llvm.sext %259 : i32 to i64
    %261 = llvm.getelementptr inbounds %258[%260] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %257, %261 {alignment = 8 : i64} : i64, !llvm.ptr
    %262 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %263 = llvm.load %55 {alignment = 4 : i64} : !llvm.ptr -> i32
    %264 = llvm.sext %263 : i32 to i64
    %265 = llvm.getelementptr inbounds %262[%264] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %266 = llvm.load %265 {alignment = 4 : i64} : !llvm.ptr -> i32
    %267 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %268 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %269 = llvm.sext %268 : i32 to i64
    %270 = llvm.getelementptr inbounds %267[%269] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %266, %270 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb13
  ^bb13:  // pred: ^bb12
    %271 = llvm.load %54 {alignment = 4 : i64} : !llvm.ptr -> i32
    %272 = llvm.add %271, %2 overflow<nsw>  : i32
    llvm.store %272, %54 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb11 {loop_annotation = #loop_annotation}
  ^bb14:  // pred: ^bb11
    %273 = llvm.load %52 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%273) : (!llvm.ptr) -> ()
    %274 = llvm.load %125 {alignment = 4 : i64} : !llvm.ptr -> i32
    %275 = llvm.load %130 {alignment = 4 : i64} : !llvm.ptr -> i32
    %276 = llvm.mul %274, %275  : i32
    llvm.store %276, %56 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %5, %57 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15
  ^bb15:  // 2 preds: ^bb14, ^bb17
    %277 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> i32
    %278 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> i32
    %279 = llvm.icmp "slt" %277, %278 : i32
    llvm.cond_br %279, ^bb16, ^bb18
  ^bb16:  // pred: ^bb15
    %280 = llvm.load %152 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %281 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> i32
    %282 = llvm.sext %281 : i32 to i64
    %283 = llvm.getelementptr inbounds %280[%282] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %284 = llvm.getelementptr inbounds %283[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %5, %284 {alignment = 4 : i64} : i32, !llvm.ptr
    %285 = llvm.load %152 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %286 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> i32
    %287 = llvm.sext %286 : i32 to i64
    %288 = llvm.getelementptr inbounds %285[%287] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %289 = llvm.getelementptr inbounds %288[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %5, %289 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %290 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> i32
    %291 = llvm.add %290, %2 overflow<nsw>  : i32
    llvm.store %291, %57 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15 {loop_annotation = #loop_annotation}
  ^bb18:  // pred: ^bb15
    %292 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %293 = llvm.icmp "sgt" %292, %5 : i32
    llvm.cond_br %293, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %294 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    %295 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %296 = llvm.load %152 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @cpu_rasterizer_identifyTileRanges(%294, %295, %296) : (i32, !llvm.ptr, !llvm.ptr) -> ()
    llvm.br ^bb20
  ^bb20:  // 2 preds: ^bb18, ^bb19
    %297 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %298 = llvm.icmp "ne" %297, %10 : !llvm.ptr
    llvm.cond_br %298, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    %299 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.br ^bb23(%299 : !llvm.ptr)
  ^bb22:  // pred: ^bb20
    %300 = llvm.load %107 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.br ^bb23(%300 : !llvm.ptr)
  ^bb23(%301: !llvm.ptr):  // 2 preds: ^bb21, ^bb22
    llvm.store %301, %58 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %302 = llvm.load %152 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %303 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %304 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %305 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %306 = llvm.load %90 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %307 = llvm.load %58 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %308 = llvm.load %101 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %309 = llvm.load %139 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %310 = llvm.load %144 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %311 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %312 = llvm.load %37 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%59, %43, %0) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %313 = llvm.load %59 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @cpu_rasterizer_render(%313, %302, %303, %304, %305, %306, %307, %308, %309, %310, %311, %312) : (!llvm.array<2 x i64>, !llvm.ptr, !llvm.ptr, i32, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %314 = llvm.load %74 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%314) : (!llvm.ptr) -> ()
    %315 = llvm.load %80 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%315) : (!llvm.ptr) -> ()
    %316 = llvm.load %85 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%316) : (!llvm.ptr) -> ()
    %317 = llvm.load %90 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%317) : (!llvm.ptr) -> ()
    %318 = llvm.load %96 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%318) : (!llvm.ptr) -> ()
    %319 = llvm.load %101 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%319) : (!llvm.ptr) -> ()
    %320 = llvm.load %107 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%320) : (!llvm.ptr) -> ()
    %321 = llvm.load %112 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%321) : (!llvm.ptr) -> ()
    %322 = llvm.load %117 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%322) : (!llvm.ptr) -> ()
    %323 = llvm.load %139 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%323) : (!llvm.ptr) -> ()
    %324 = llvm.load %144 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%324) : (!llvm.ptr) -> ()
    %325 = llvm.load %152 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%325) : (!llvm.ptr) -> ()
    %326 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%326) : (!llvm.ptr) -> ()
    %327 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%327) : (!llvm.ptr) -> ()
    %328 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%328) : (!llvm.ptr) -> ()
    %329 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%329) : (!llvm.ptr) -> ()
    %330 = llvm.load %49 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.return %330 : i32
  }
  llvm.func @malloc(i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["nounwind", ["allocsize", "4294967295"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @cpu_rasterizer_preprocess(i32 {llvm.noundef, llvm.signext}, i32 {llvm.noundef, llvm.signext}, i32 {llvm.noundef, llvm.signext}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, f32 {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, i32 {llvm.noundef, llvm.signext}, i32 {llvm.noundef, llvm.signext}, f32 {llvm.noundef}, f32 {llvm.noundef}, f32 {llvm.noundef}, f32 {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.array<2 x i64>, !llvm.ptr {llvm.noundef}, i32 {llvm.noundef, llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @qsort(!llvm.ptr {llvm.noundef}, i64 {llvm.noundef}, i64 {llvm.noundef}, !llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @free(!llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["nounwind", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @cpu_rasterizer_render(!llvm.array<2 x i64>, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, i32 {llvm.noundef, llvm.signext}, i32 {llvm.noundef, llvm.signext}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
}

