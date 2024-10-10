#loop_annotation = #llvm.loop_annotation<mustProgress = true>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi64>>, #dlti.dl_entry<i64, dense<64> : vector<2xi64>>, #dlti.dl_entry<i128, dense<128> : vector<2xi64>>, #dlti.dl_entry<i1, dense<8> : vector<2xi64>>, #dlti.dl_entry<i16, dense<16> : vector<2xi64>>, #dlti.dl_entry<i8, dense<8> : vector<2xi64>>, #dlti.dl_entry<i32, dense<32> : vector<2xi64>>, #dlti.dl_entry<f64, dense<64> : vector<2xi64>>, #dlti.dl_entry<f16, dense<16> : vector<2xi64>>, #dlti.dl_entry<f128, dense<128> : vector<2xi64>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i64>, #dlti.dl_entry<"dlti.endianness", "little">>} {
  llvm.mlir.global external @binningState() {addr_space = 0 : i32, alignment = 8 : i64, dso_local} : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> {
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = llvm.mlir.constant(0 : i64) : i64
    %2 = llvm.mlir.undef : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %3 = llvm.insertvalue %1, %2[0] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %4 = llvm.insertvalue %0, %3[1] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %5 = llvm.insertvalue %0, %4[2] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %6 = llvm.insertvalue %0, %5[3] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %7 = llvm.insertvalue %0, %6[4] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %8 = llvm.insertvalue %0, %7[5] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
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
    %46 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %47 = llvm.sext %46 : i32 to i64
    %48 = llvm.getelementptr inbounds %45[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %49 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> i32
    %50 = llvm.getelementptr inbounds %44[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f32, f32)>
    %51 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> f32
    %52 = llvm.getelementptr inbounds %44[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<(f32, f32)>
    %53 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> f32
    "llvm.intr.memcpy"(%18, %5, %1) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %54 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @cpu_rasterizer_getRect(%51, %53, %49, %16, %17, %54) : (f32, f32, i32, !llvm.ptr, !llvm.ptr, !llvm.array<2 x i64>) -> ()
    %55 = llvm.getelementptr inbounds %16[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %56 = llvm.load %55 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %56, %19 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb6, ^bb13
    %57 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %58 = llvm.getelementptr inbounds %17[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %59 = llvm.load %58 {alignment = 4 : i64} : !llvm.ptr -> i32
    %60 = llvm.icmp "ult" %57, %59 : i32
    llvm.cond_br %60, ^bb8, ^bb14
  ^bb8:  // pred: ^bb7
    %61 = llvm.getelementptr inbounds %16[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %62, %20 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9
  ^bb9:  // 2 preds: ^bb8, ^bb11
    %63 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %64 = llvm.getelementptr inbounds %17[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %65 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> i32
    %66 = llvm.icmp "ult" %63, %65 : i32
    llvm.cond_br %66, ^bb10, ^bb12
  ^bb10:  // pred: ^bb9
    %67 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %68 = llvm.getelementptr inbounds %5[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %69 = llvm.load %68 {alignment = 4 : i64} : !llvm.ptr -> i32
    %70 = llvm.mul %67, %69  : i32
    %71 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %72 = llvm.add %70, %71  : i32
    %73 = llvm.zext %72 : i32 to i64
    llvm.store %73, %21 {alignment = 8 : i64} : i64, !llvm.ptr
    %74 = llvm.load %21 {alignment = 8 : i64} : !llvm.ptr -> i64
    %75 = llvm.shl %74, %3  : i64
    llvm.store %75, %21 {alignment = 8 : i64} : i64, !llvm.ptr
    %76 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %77 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %78 = llvm.sext %77 : i32 to i64
    %79 = llvm.getelementptr inbounds %76[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    "llvm.intr.memcpy"(%22, %79, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %80 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %81 = llvm.zext %80 : i32 to i64
    %82 = llvm.load %21 {alignment = 8 : i64} : !llvm.ptr -> i64
    %83 = llvm.or %82, %81  : i64
    llvm.store %83, %21 {alignment = 8 : i64} : i64, !llvm.ptr
    %84 = llvm.load %21 {alignment = 8 : i64} : !llvm.ptr -> i64
    %85 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %86 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %87 = llvm.zext %86 : i32 to i64
    %88 = llvm.getelementptr inbounds %85[%87] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %84, %88 {alignment = 8 : i64} : i64, !llvm.ptr
    %89 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %90 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %91 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %92 = llvm.zext %91 : i32 to i64
    %93 = llvm.getelementptr inbounds %90[%92] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %89, %93 {alignment = 4 : i64} : i32, !llvm.ptr
    %94 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %95 = llvm.add %94, %0  : i32
    llvm.store %95, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb11
  ^bb11:  // pred: ^bb10
    %96 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %97 = llvm.add %96, %0  : i32
    llvm.store %97, %20 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9 {loop_annotation = #loop_annotation}
  ^bb12:  // pred: ^bb9
    llvm.br ^bb13
  ^bb13:  // pred: ^bb12
    %98 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %99 = llvm.add %98, %0  : i32
    llvm.store %99, %19 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7 {loop_annotation = #loop_annotation}
  ^bb14:  // pred: ^bb7
    llvm.br ^bb15
  ^bb15:  // 2 preds: ^bb2, ^bb14
    llvm.br ^bb16
  ^bb16:  // pred: ^bb15
    %100 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %101 = llvm.add %100, %0 overflow<nsw>  : i32
    llvm.store %101, %14 {alignment = 4 : i64} : i32, !llvm.ptr
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
    %27 = llvm.getelementptr inbounds %26[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
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
    %44 = llvm.getelementptr inbounds %43[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %39, %44 {alignment = 4 : i64} : i32, !llvm.ptr
    %45 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %46 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %47 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %48 = llvm.zext %47 : i32 to i64
    %49 = llvm.getelementptr inbounds %46[%48] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %50 = llvm.getelementptr inbounds %49[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
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
    %60 = llvm.getelementptr inbounds %59[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
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
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.zero : !llvm.ptr
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.mlir.undef : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %5 = llvm.insertvalue %3, %4[0] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %6 = llvm.insertvalue %2, %5[1] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %7 = llvm.insertvalue %2, %6[2] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %8 = llvm.insertvalue %2, %7[3] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %9 = llvm.insertvalue %2, %8[4] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %10 = llvm.insertvalue %2, %9[5] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %11 = llvm.mlir.addressof @binningState : !llvm.ptr
    %12 = llvm.getelementptr inbounds %11[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %13 = llvm.mlir.constant(-1 : i32) : i32
    %14 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x i64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x i64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg1, %16 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %21 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %22 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %22, %17 {alignment = 4 : i64} : i32, !llvm.ptr
    %23 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %24 = llvm.load %23 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %24, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    %25 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %26 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %27 = llvm.sext %26 : i32 to i64
    %28 = llvm.getelementptr inbounds %25[%27] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %29 = llvm.load %28 {alignment = 8 : i64} : !llvm.ptr -> i64
    llvm.store %29, %19 {alignment = 8 : i64} : i64, !llvm.ptr
    %30 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %31 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %32 = llvm.sext %31 : i32 to i64
    %33 = llvm.getelementptr inbounds %30[%32] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %34 = llvm.load %33 {alignment = 8 : i64} : !llvm.ptr -> i64
    llvm.store %34, %20 {alignment = 8 : i64} : i64, !llvm.ptr
    %35 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> i64
    %36 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> i64
    %37 = llvm.icmp "ult" %35, %36 : i64
    llvm.cond_br %37, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.store %13, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb2:  // pred: ^bb0
    %38 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> i64
    %39 = llvm.load %20 {alignment = 8 : i64} : !llvm.ptr -> i64
    %40 = llvm.icmp "ugt" %38, %39 : i64
    llvm.cond_br %40, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.store %0, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb4:  // pred: ^bb2
    llvm.store %1, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // 3 preds: ^bb1, ^bb3, ^bb4
    %41 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.return %41 : i32
  }
  llvm.func @cpu_rasterizer_forward(%arg0: i32 {llvm.noundef, llvm.signext}, %arg1: i32 {llvm.noundef, llvm.signext}, %arg2: i32 {llvm.noundef, llvm.signext}, %arg3: !llvm.ptr {llvm.noundef}, %arg4: i32 {llvm.noundef, llvm.signext}, %arg5: i32 {llvm.noundef, llvm.signext}, %arg6: !llvm.ptr {llvm.noundef}, %arg7: !llvm.ptr {llvm.noundef}, %arg8: !llvm.ptr {llvm.noundef}, %arg9: !llvm.ptr {llvm.noundef}, %arg10: !llvm.ptr {llvm.noundef}, %arg11: f32 {llvm.noundef}, %arg12: !llvm.ptr {llvm.noundef}, %arg13: !llvm.ptr {llvm.noundef}, %arg14: !llvm.ptr {llvm.noundef}, %arg15: !llvm.ptr {llvm.noundef}, %arg16: !llvm.ptr {llvm.noundef}, %arg17: f32 {llvm.noundef}, %arg18: f32 {llvm.noundef}, %arg19: i32 {llvm.noundef, llvm.signext}, %arg20: !llvm.ptr {llvm.noundef}, %arg21: !llvm.ptr {llvm.noundef}, %arg22: i32 {llvm.noundef, llvm.signext}) -> (i32 {llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["noinline", "nounwind", "optnone", ["uwtable", "2"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(2.000000e+00 : f32) : f32
    %2 = llvm.mlir.constant(4 : i64) : i64
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(3 : i64) : i64
    %5 = llvm.mlir.constant(3 : i32) : i32
    %6 = llvm.mlir.constant(4 : i32) : i32
    %7 = llvm.mlir.constant(8 : i64) : i64
    %8 = llvm.mlir.constant(5 : i32) : i32
    %9 = llvm.mlir.constant(6 : i64) : i64
    %10 = llvm.mlir.constant(6 : i32) : i32
    %11 = llvm.mlir.constant(16 : i64) : i64
    %12 = llvm.mlir.constant(7 : i32) : i32
    %13 = llvm.mlir.constant(8 : i32) : i32
    %14 = llvm.mlir.constant(10 : i32) : i32
    %15 = llvm.mlir.constant(9 : i32) : i32
    %16 = llvm.mlir.zero : !llvm.ptr
    %17 = llvm.mlir.constant(16 : i32) : i32
    %18 = llvm.mlir.constant(2 : i32) : i32
    %19 = llvm.mlir.constant(12 : i64) : i64
    %20 = llvm.mlir.constant(0 : i64) : i64
    %21 = llvm.mlir.undef : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %22 = llvm.insertvalue %20, %21[0] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %23 = llvm.insertvalue %16, %22[1] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %24 = llvm.insertvalue %16, %23[2] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %25 = llvm.insertvalue %16, %24[3] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %26 = llvm.insertvalue %16, %25[4] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %27 = llvm.insertvalue %16, %26[5] : !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)> 
    %28 = llvm.mlir.addressof @binningState : !llvm.ptr
    %29 = llvm.getelementptr inbounds %28[%3, 4] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %30 = llvm.getelementptr inbounds %28[%3, 3] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %31 = llvm.getelementptr inbounds %28[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %32 = llvm.getelementptr inbounds %28[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.BinningState", (i64, ptr, ptr, ptr, ptr, ptr)>
    %33 = llvm.mlir.addressof @cpu_rasterizer_compare_keys : !llvm.ptr
    %34 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %35 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %36 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %37 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %38 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %39 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %40 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %41 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %42 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %43 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %44 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %45 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %46 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %47 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %48 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %49 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %50 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %51 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %52 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %53 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %54 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %55 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %56 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %57 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %58 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %59 = llvm.alloca %0 x !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %60 = llvm.alloca %0 x !llvm.struct<"struct.dim3", (i32, i32, i32)> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %61 = llvm.alloca %0 x !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %62 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %63 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %64 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %65 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %66 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %67 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %68 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %69 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %70 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %71 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %72 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %73 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %74 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %75 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %76 = llvm.alloca %0 x !llvm.array<2 x i64> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %34 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg1, %35 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg2, %36 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg3, %37 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg4, %38 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg5, %39 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg6, %40 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg7, %41 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg8, %42 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg9, %43 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg10, %44 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg11, %45 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg12, %46 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg13, %47 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg14, %48 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg15, %49 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg16, %50 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg17, %51 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg18, %52 {alignment = 4 : i64} : f32, !llvm.ptr
    llvm.store %arg19, %53 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg20, %54 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg21, %55 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg22, %56 {alignment = 4 : i64} : i32, !llvm.ptr
    %77 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %78 = llvm.sitofp %77 : i32 to f32
    %79 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> f32
    %80 = llvm.fmul %1, %79  : f32
    %81 = llvm.fdiv %78, %80  : f32
    llvm.store %81, %57 {alignment = 4 : i64} : f32, !llvm.ptr
    %82 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %83 = llvm.sitofp %82 : i32 to f32
    %84 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> f32
    %85 = llvm.fmul %1, %84  : f32
    %86 = llvm.fdiv %83, %85  : f32
    llvm.store %86, %58 {alignment = 4 : i64} : f32, !llvm.ptr
    %87 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %88 = llvm.sext %87 : i32 to i64
    %89 = llvm.mul %2, %88  : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr
    %91 = llvm.getelementptr inbounds %59[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %90, %91 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %92 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %93 = llvm.sext %92 : i32 to i64
    %94 = llvm.mul %2, %93  : i64
    %95 = llvm.mul %94, %4  : i64
    %96 = llvm.call @malloc(%95) : (i64) -> !llvm.ptr
    %97 = llvm.getelementptr inbounds %59[%3, 3] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %96, %97 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %98 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %99 = llvm.sext %98 : i32 to i64
    %100 = llvm.mul %2, %99  : i64
    %101 = llvm.call @malloc(%100) : (i64) -> !llvm.ptr
    %102 = llvm.getelementptr inbounds %59[%3, 4] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %101, %102 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %103 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %104 = llvm.sext %103 : i32 to i64
    %105 = llvm.mul %7, %104  : i64
    %106 = llvm.call @malloc(%105) : (i64) -> !llvm.ptr
    %107 = llvm.getelementptr inbounds %59[%3, 5] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %106, %107 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %108 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %109 = llvm.sext %108 : i32 to i64
    %110 = llvm.mul %2, %109  : i64
    %111 = llvm.mul %110, %9  : i64
    %112 = llvm.call @malloc(%111) : (i64) -> !llvm.ptr
    %113 = llvm.getelementptr inbounds %59[%3, 6] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %112, %113 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %114 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %115 = llvm.sext %114 : i32 to i64
    %116 = llvm.mul %11, %115  : i64
    %117 = llvm.call @malloc(%116) : (i64) -> !llvm.ptr
    %118 = llvm.getelementptr inbounds %59[%3, 7] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %117, %118 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %119 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %120 = llvm.sext %119 : i32 to i64
    %121 = llvm.mul %2, %120  : i64
    %122 = llvm.mul %121, %4  : i64
    %123 = llvm.call @malloc(%122) : (i64) -> !llvm.ptr
    %124 = llvm.getelementptr inbounds %59[%3, 8] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %123, %124 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %125 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %126 = llvm.sext %125 : i32 to i64
    %127 = llvm.mul %2, %126  : i64
    %128 = llvm.call @malloc(%127) : (i64) -> !llvm.ptr
    %129 = llvm.getelementptr inbounds %59[%3, 10] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %128, %129 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %130 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %131 = llvm.sext %130 : i32 to i64
    %132 = llvm.mul %2, %131  : i64
    %133 = llvm.call @malloc(%132) : (i64) -> !llvm.ptr
    %134 = llvm.getelementptr inbounds %59[%3, 9] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    llvm.store %133, %134 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %135 = llvm.load %55 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %136 = llvm.icmp "eq" %135, %16 : !llvm.ptr
    llvm.cond_br %136, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %137 = llvm.getelementptr inbounds %59[%3, 4] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %138 = llvm.load %137 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %138, %55 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %139 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %140 = llvm.add %139, %17 overflow<nsw>  : i32
    %141 = llvm.sub %140, %0 overflow<nsw>  : i32
    %142 = llvm.sdiv %141, %17  : i32
    %143 = llvm.getelementptr inbounds %60[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    llvm.store %142, %143 {alignment = 4 : i64} : i32, !llvm.ptr
    %144 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %145 = llvm.add %144, %17 overflow<nsw>  : i32
    %146 = llvm.sub %145, %0 overflow<nsw>  : i32
    %147 = llvm.sdiv %146, %17  : i32
    %148 = llvm.getelementptr inbounds %60[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    llvm.store %147, %148 {alignment = 4 : i64} : i32, !llvm.ptr
    %149 = llvm.getelementptr inbounds %60[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    llvm.store %0, %149 {alignment = 4 : i64} : i32, !llvm.ptr
    %150 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %151 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %152 = llvm.mul %150, %151 overflow<nsw>  : i32
    llvm.store %152, %62 {alignment = 4 : i64} : i32, !llvm.ptr
    %153 = llvm.load %62 {alignment = 4 : i64} : !llvm.ptr -> i32
    %154 = llvm.sext %153 : i32 to i64
    %155 = llvm.mul %2, %154  : i64
    %156 = llvm.call @malloc(%155) : (i64) -> !llvm.ptr
    %157 = llvm.getelementptr inbounds %61[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    llvm.store %156, %157 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %158 = llvm.load %62 {alignment = 4 : i64} : !llvm.ptr -> i32
    %159 = llvm.sext %158 : i32 to i64
    %160 = llvm.mul %2, %159  : i64
    %161 = llvm.call @malloc(%160) : (i64) -> !llvm.ptr
    %162 = llvm.getelementptr inbounds %61[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    llvm.store %161, %162 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %163 = llvm.getelementptr inbounds %60[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %164 = llvm.load %163 {alignment = 4 : i64} : !llvm.ptr -> i32
    %165 = llvm.zext %164 : i32 to i64
    %166 = llvm.mul %7, %165  : i64
    %167 = llvm.getelementptr inbounds %60[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %168 = llvm.load %167 {alignment = 4 : i64} : !llvm.ptr -> i32
    %169 = llvm.zext %168 : i32 to i64
    %170 = llvm.mul %166, %169  : i64
    %171 = llvm.call @malloc(%170) : (i64) -> !llvm.ptr
    %172 = llvm.getelementptr inbounds %61[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    llvm.store %171, %172 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %173 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %174 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %175 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> i32
    %176 = llvm.load %40 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %177 = llvm.load %44 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %178 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> f32
    %179 = llvm.load %46 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %180 = llvm.load %43 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %181 = llvm.load %41 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %182 = llvm.getelementptr inbounds %59[%3, 3] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %183 = llvm.load %182 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %184 = llvm.load %47 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %185 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %186 = llvm.load %48 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %187 = llvm.load %49 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %188 = llvm.load %50 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %189 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %190 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %191 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> f32
    %192 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> f32
    %193 = llvm.load %58 {alignment = 4 : i64} : !llvm.ptr -> f32
    %194 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> f32
    %195 = llvm.load %55 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %196 = llvm.getelementptr inbounds %59[%3, 5] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %197 = llvm.load %196 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %198 = llvm.getelementptr inbounds %59[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %199 = llvm.load %198 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %200 = llvm.getelementptr inbounds %59[%3, 6] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %201 = llvm.load %200 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %202 = llvm.getelementptr inbounds %59[%3, 8] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %203 = llvm.load %202 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %204 = llvm.getelementptr inbounds %59[%3, 7] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %205 = llvm.load %204 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %206 = llvm.getelementptr inbounds %59[%3, 10] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %207 = llvm.load %206 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %208 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> i32
    "llvm.intr.memcpy"(%63, %60, %19) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %209 = llvm.load %63 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @cpu_rasterizer_preprocess(%173, %174, %175, %176, %177, %178, %179, %180, %181, %183, %184, %185, %186, %187, %188, %189, %190, %191, %192, %193, %194, %195, %197, %199, %201, %203, %205, %209, %207, %208) : (i32, i32, i32, !llvm.ptr, !llvm.ptr, f32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, f32, f32, f32, f32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.array<2 x i64>, !llvm.ptr, i32) -> ()
    llvm.store %3, %64 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %65 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb5
    %210 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> i32
    %211 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %212 = llvm.icmp "slt" %210, %211 : i32
    llvm.cond_br %212, ^bb4, ^bb6
  ^bb4:  // pred: ^bb3
    %213 = llvm.getelementptr inbounds %59[%3, 10] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %214 = llvm.load %213 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %215 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> i32
    %216 = llvm.sext %215 : i32 to i64
    %217 = llvm.getelementptr inbounds %214[%216] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %218 = llvm.load %217 {alignment = 4 : i64} : !llvm.ptr -> i32
    %219 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> i32
    %220 = llvm.add %219, %218  : i32
    llvm.store %220, %64 {alignment = 4 : i64} : i32, !llvm.ptr
    %221 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> i32
    %222 = llvm.getelementptr inbounds %59[%3, 9] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %223 = llvm.load %222 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %224 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> i32
    %225 = llvm.sext %224 : i32 to i64
    %226 = llvm.getelementptr inbounds %223[%225] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %221, %226 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb5
  ^bb5:  // pred: ^bb4
    %227 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> i32
    %228 = llvm.add %227, %0 overflow<nsw>  : i32
    llvm.store %228, %65 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb6:  // pred: ^bb3
    %229 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %229, %66 {alignment = 4 : i64} : i32, !llvm.ptr
    %230 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> i32
    %231 = llvm.sext %230 : i32 to i64
    %232 = llvm.mul %2, %231  : i64
    %233 = llvm.call @malloc(%232) : (i64) -> !llvm.ptr
    llvm.store %233, %29 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %234 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> i32
    %235 = llvm.sext %234 : i32 to i64
    %236 = llvm.mul %2, %235  : i64
    %237 = llvm.call @malloc(%236) : (i64) -> !llvm.ptr
    llvm.store %237, %30 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %238 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> i32
    %239 = llvm.sext %238 : i32 to i64
    %240 = llvm.mul %7, %239  : i64
    %241 = llvm.call @malloc(%240) : (i64) -> !llvm.ptr
    llvm.store %241, %31 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %242 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> i32
    %243 = llvm.sext %242 : i32 to i64
    %244 = llvm.mul %7, %243  : i64
    %245 = llvm.call @malloc(%244) : (i64) -> !llvm.ptr
    llvm.store %245, %32 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %246 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> i32
    %247 = llvm.getelementptr inbounds %59[%3, 5] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %248 = llvm.load %247 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %249 = llvm.getelementptr inbounds %59[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %250 = llvm.load %249 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %251 = llvm.getelementptr inbounds %59[%3, 9] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %252 = llvm.load %251 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %253 = llvm.load %32 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %254 = llvm.load %30 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %255 = llvm.load %55 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%67, %60, %19) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %256 = llvm.load %67 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @cpu_rasterizer_duplicateWithKeys(%246, %248, %250, %252, %253, %254, %255, %256) : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.array<2 x i64>) -> ()
    %257 = llvm.getelementptr inbounds %60[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %258 = llvm.load %257 {alignment = 4 : i64} : !llvm.ptr -> i32
    %259 = llvm.getelementptr inbounds %60[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %260 = llvm.load %259 {alignment = 4 : i64} : !llvm.ptr -> i32
    %261 = llvm.mul %258, %260  : i32
    %262 = llvm.call @cpu_rasterizer_getHigherMsb(%261) : (i32) -> i32
    llvm.store %262, %68 {alignment = 4 : i64} : i32, !llvm.ptr
    %263 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> i32
    %264 = llvm.sext %263 : i32 to i64
    %265 = llvm.mul %2, %264  : i64
    %266 = llvm.call @malloc(%265) : (i64) -> !llvm.ptr
    llvm.store %266, %69 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %3, %70 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb6, ^bb9
    %267 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> i32
    %268 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> i32
    %269 = llvm.icmp "slt" %267, %268 : i32
    llvm.cond_br %269, ^bb8, ^bb10
  ^bb8:  // pred: ^bb7
    %270 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> i32
    %271 = llvm.load %69 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %272 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> i32
    %273 = llvm.sext %272 : i32 to i64
    %274 = llvm.getelementptr inbounds %271[%273] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %270, %274 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb9
  ^bb9:  // pred: ^bb8
    %275 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> i32
    %276 = llvm.add %275, %0 overflow<nsw>  : i32
    llvm.store %276, %70 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb7 {loop_annotation = #loop_annotation}
  ^bb10:  // pred: ^bb7
    %277 = llvm.load %69 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %278 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> i32
    %279 = llvm.sext %278 : i32 to i64
    llvm.call @qsort(%277, %279, %2, %33) : (!llvm.ptr, i64, i64, !llvm.ptr) -> ()
    llvm.store %3, %71 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb11
  ^bb11:  // 2 preds: ^bb10, ^bb13
    %280 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> i32
    %281 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> i32
    %282 = llvm.icmp "slt" %280, %281 : i32
    llvm.cond_br %282, ^bb12, ^bb14
  ^bb12:  // pred: ^bb11
    %283 = llvm.load %69 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %284 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> i32
    %285 = llvm.sext %284 : i32 to i64
    %286 = llvm.getelementptr inbounds %283[%285] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %287 = llvm.load %286 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %287, %72 {alignment = 4 : i64} : i32, !llvm.ptr
    %288 = llvm.load %32 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %289 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> i32
    %290 = llvm.sext %289 : i32 to i64
    %291 = llvm.getelementptr inbounds %288[%290] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %292 = llvm.load %291 {alignment = 8 : i64} : !llvm.ptr -> i64
    %293 = llvm.load %31 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %294 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> i32
    %295 = llvm.sext %294 : i32 to i64
    %296 = llvm.getelementptr inbounds %293[%295] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %292, %296 {alignment = 8 : i64} : i64, !llvm.ptr
    %297 = llvm.load %30 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %298 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> i32
    %299 = llvm.sext %298 : i32 to i64
    %300 = llvm.getelementptr inbounds %297[%299] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %301 = llvm.load %300 {alignment = 4 : i64} : !llvm.ptr -> i32
    %302 = llvm.load %29 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %303 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> i32
    %304 = llvm.sext %303 : i32 to i64
    %305 = llvm.getelementptr inbounds %302[%304] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %301, %305 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb13
  ^bb13:  // pred: ^bb12
    %306 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> i32
    %307 = llvm.add %306, %0 overflow<nsw>  : i32
    llvm.store %307, %71 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb11 {loop_annotation = #loop_annotation}
  ^bb14:  // pred: ^bb11
    %308 = llvm.load %69 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%308) : (!llvm.ptr) -> ()
    %309 = llvm.getelementptr inbounds %60[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %310 = llvm.load %309 {alignment = 4 : i64} : !llvm.ptr -> i32
    %311 = llvm.getelementptr inbounds %60[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.dim3", (i32, i32, i32)>
    %312 = llvm.load %311 {alignment = 4 : i64} : !llvm.ptr -> i32
    %313 = llvm.mul %310, %312  : i32
    llvm.store %313, %73 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %3, %74 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15
  ^bb15:  // 2 preds: ^bb14, ^bb17
    %314 = llvm.load %74 {alignment = 4 : i64} : !llvm.ptr -> i32
    %315 = llvm.load %73 {alignment = 4 : i64} : !llvm.ptr -> i32
    %316 = llvm.icmp "slt" %314, %315 : i32
    llvm.cond_br %316, ^bb16, ^bb18
  ^bb16:  // pred: ^bb15
    %317 = llvm.getelementptr inbounds %61[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    %318 = llvm.load %317 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %319 = llvm.load %74 {alignment = 4 : i64} : !llvm.ptr -> i32
    %320 = llvm.sext %319 : i32 to i64
    %321 = llvm.getelementptr inbounds %318[%320] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %322 = llvm.getelementptr inbounds %321[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %3, %322 {alignment = 4 : i64} : i32, !llvm.ptr
    %323 = llvm.getelementptr inbounds %61[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    %324 = llvm.load %323 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %325 = llvm.load %74 {alignment = 4 : i64} : !llvm.ptr -> i32
    %326 = llvm.sext %325 : i32 to i64
    %327 = llvm.getelementptr inbounds %324[%326] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    %328 = llvm.getelementptr inbounds %327[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.uint2", (i32, i32)>
    llvm.store %3, %328 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %329 = llvm.load %74 {alignment = 4 : i64} : !llvm.ptr -> i32
    %330 = llvm.add %329, %0 overflow<nsw>  : i32
    llvm.store %330, %74 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb15 {loop_annotation = #loop_annotation}
  ^bb18:  // pred: ^bb15
    %331 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> i32
    %332 = llvm.icmp "sgt" %331, %3 : i32
    llvm.cond_br %332, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %333 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> i32
    %334 = llvm.load %31 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %335 = llvm.getelementptr inbounds %61[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    %336 = llvm.load %335 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @cpu_rasterizer_identifyTileRanges(%333, %334, %336) : (i32, !llvm.ptr, !llvm.ptr) -> ()
    llvm.br ^bb20
  ^bb20:  // 2 preds: ^bb18, ^bb19
    %337 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %338 = llvm.icmp "ne" %337, %16 : !llvm.ptr
    llvm.cond_br %338, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    %339 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.br ^bb23(%339 : !llvm.ptr)
  ^bb22:  // pred: ^bb20
    %340 = llvm.getelementptr inbounds %59[%3, 8] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %341 = llvm.load %340 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.br ^bb23(%341 : !llvm.ptr)
  ^bb23(%342: !llvm.ptr):  // 2 preds: ^bb21, ^bb22
    llvm.store %342, %75 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %343 = llvm.getelementptr inbounds %61[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    %344 = llvm.load %343 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %345 = llvm.load %29 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %346 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> i32
    %347 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %348 = llvm.getelementptr inbounds %59[%3, 5] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %349 = llvm.load %348 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %350 = llvm.load %75 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %351 = llvm.getelementptr inbounds %59[%3, 7] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %352 = llvm.load %351 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %353 = llvm.getelementptr inbounds %61[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    %354 = llvm.load %353 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %355 = llvm.getelementptr inbounds %61[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    %356 = llvm.load %355 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %357 = llvm.load %37 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %358 = llvm.load %54 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    "llvm.intr.memcpy"(%76, %60, %19) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %359 = llvm.load %76 {alignment = 8 : i64} : !llvm.ptr -> !llvm.array<2 x i64>
    llvm.call @cpu_rasterizer_render(%359, %344, %345, %346, %347, %349, %350, %352, %354, %356, %357, %358) : (!llvm.array<2 x i64>, !llvm.ptr, !llvm.ptr, i32, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %360 = llvm.getelementptr inbounds %59[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %361 = llvm.load %360 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%361) : (!llvm.ptr) -> ()
    %362 = llvm.getelementptr inbounds %59[%3, 3] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %363 = llvm.load %362 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%363) : (!llvm.ptr) -> ()
    %364 = llvm.getelementptr inbounds %59[%3, 4] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %365 = llvm.load %364 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%365) : (!llvm.ptr) -> ()
    %366 = llvm.getelementptr inbounds %59[%3, 5] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %367 = llvm.load %366 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%367) : (!llvm.ptr) -> ()
    %368 = llvm.getelementptr inbounds %59[%3, 6] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %369 = llvm.load %368 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%369) : (!llvm.ptr) -> ()
    %370 = llvm.getelementptr inbounds %59[%3, 7] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %371 = llvm.load %370 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%371) : (!llvm.ptr) -> ()
    %372 = llvm.getelementptr inbounds %59[%3, 8] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %373 = llvm.load %372 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%373) : (!llvm.ptr) -> ()
    %374 = llvm.getelementptr inbounds %59[%3, 10] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %375 = llvm.load %374 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%375) : (!llvm.ptr) -> ()
    %376 = llvm.getelementptr inbounds %59[%3, 9] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.GeometryState", (i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>
    %377 = llvm.load %376 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%377) : (!llvm.ptr) -> ()
    %378 = llvm.getelementptr inbounds %61[%3, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    %379 = llvm.load %378 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%379) : (!llvm.ptr) -> ()
    %380 = llvm.getelementptr inbounds %61[%3, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    %381 = llvm.load %380 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%381) : (!llvm.ptr) -> ()
    %382 = llvm.getelementptr inbounds %61[%3, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ImageState", (ptr, ptr, ptr)>
    %383 = llvm.load %382 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%383) : (!llvm.ptr) -> ()
    %384 = llvm.load %29 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%384) : (!llvm.ptr) -> ()
    %385 = llvm.load %30 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%385) : (!llvm.ptr) -> ()
    %386 = llvm.load %31 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%386) : (!llvm.ptr) -> ()
    %387 = llvm.load %32 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%387) : (!llvm.ptr) -> ()
    %388 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.return %388 : i32
  }
  llvm.func @malloc(i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["nounwind", ["allocsize", "4294967295"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @cpu_rasterizer_preprocess(i32 {llvm.noundef, llvm.signext}, i32 {llvm.noundef, llvm.signext}, i32 {llvm.noundef, llvm.signext}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, f32 {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, i32 {llvm.noundef, llvm.signext}, i32 {llvm.noundef, llvm.signext}, f32 {llvm.noundef}, f32 {llvm.noundef}, f32 {llvm.noundef}, f32 {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.array<2 x i64>, !llvm.ptr {llvm.noundef}, i32 {llvm.noundef, llvm.signext}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @qsort(!llvm.ptr {llvm.noundef}, i64 {llvm.noundef}, i64 {llvm.noundef}, !llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @free(!llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = ["nounwind", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
  llvm.func @cpu_rasterizer_render(!llvm.array<2 x i64>, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, i32 {llvm.noundef, llvm.signext}, i32 {llvm.noundef, llvm.signext}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}, !llvm.ptr {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv64"]], target_cpu = "generic-rv64", target_features = #llvm.target_features<["+64bit", "+a", "+c", "+d", "+f", "+m", "+relax", "+zicsr", "-e", "-experimental-zacas", "-experimental-zcmop", "-experimental-zfbfmin", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zimop", "-experimental-ztso", "-experimental-zvfbfmin", "-experimental-zvfbfwma", "-h", "-smaia", "-smepmp", "-ssaia", "-svinval", "-svnapot", "-svpbmt", "-v", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xsfvcp", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-za128rs", "-za64rs", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-zmmul", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>}
}
