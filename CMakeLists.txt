cmake_minimum_required(VERSION 3.20)

project(DiffRast LANGUAGES CXX C)

set(CMAKE_C_COMPILER /opt/riscv/bin/clang)
set(CMAKE_CXX_COMPILER /opt/riscv/bin/clang++)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_C_STANDARD 11)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")

# Add library
add_library(CpuRasterizer
    cpu_rasterizer/forward.c
    cpu_rasterizer/rasterizer_impl.c
    cpu_rasterizer/auxiliary.c
    # ...
)

# Set target properties
set_target_properties(CpuRasterizer PROPERTIES LINKER_LANGUAGE C)

# Set include directories
target_include_directories(CpuRasterizer PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/cpu_rasterizer)

# Create the output directory (out)
file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/out)

# Add custom command to generate RISC-V assembly and LLVM IR
add_custom_command(
    TARGET CpuRasterizer
    POST_BUILD
    COMMAND ${CMAKE_C_COMPILER} -S -march=rv64gc -I${CMAKE_CURRENT_SOURCE_DIR}/cpu_rasterizer ${CMAKE_SOURCE_DIR}/cpu_rasterizer/forward.c -o ${CMAKE_SOURCE_DIR}/out/forward_riscv.s
    COMMAND ${CMAKE_C_COMPILER} -S -emit-llvm -I${CMAKE_CURRENT_SOURCE_DIR}/cpu_rasterizer ${CMAKE_SOURCE_DIR}/cpu_rasterizer/forward.c -o ${CMAKE_SOURCE_DIR}/out/forward.ll
    COMMENT "Generating RISC-V assembly and LLVM IR for forward.c"
)

add_custom_command(
    TARGET CpuRasterizer
    POST_BUILD
    COMMAND ${CMAKE_C_COMPILER} -S -march=rv64gc -I${CMAKE_CURRENT_SOURCE_DIR}/cpu_rasterizer ${CMAKE_SOURCE_DIR}/cpu_rasterizer/rasterizer_impl.c -o ${CMAKE_SOURCE_DIR}/out/rasterizer_impl_riscv.s
    COMMAND ${CMAKE_C_COMPILER} -S -emit-llvm -I${CMAKE_CURRENT_SOURCE_DIR}/cpu_rasterizer ${CMAKE_SOURCE_DIR}/cpu_rasterizer/rasterizer_impl.c -o ${CMAKE_SOURCE_DIR}/out/rasterizer_impl.ll
    COMMENT "Generating RISC-V assembly and LLVM IR for rasterizer_impl.c"
)

add_custom_command(
    TARGET CpuRasterizer
    POST_BUILD
    COMMAND ${CMAKE_C_COMPILER} -S -march=rv64gc -I${CMAKE_CURRENT_SOURCE_DIR}/cpu_rasterizer ${CMAKE_SOURCE_DIR}/cpu_rasterizer/auxiliary.c -o ${CMAKE_SOURCE_DIR}/out/auxiliary_riscv.s
    COMMAND ${CMAKE_C_COMPILER} -S -emit-llvm -I${CMAKE_CURRENT_SOURCE_DIR}/cpu_rasterizer ${CMAKE_SOURCE_DIR}/cpu_rasterizer/auxiliary.c -o ${CMAKE_SOURCE_DIR}/out/auxiliary.ll
    COMMENT "Generating RISC-V assembly and LLVM IR for auxiliary.c"
)
