#!/bin/bash

# Iterate over all .ll files in the current directory
for ll_file in *.ll; do
    # Get the base name of the file (e.g., "input" from "input.ll")
    base_name="${ll_file%.ll}"

    # Step 1: Translate LLVM IR to MLIR
    echo "Translating ${ll_file} to ${base_name}.mlir..."
    mlir-translate --import-llvm "${ll_file}" -o "${base_name}.mlir"

    # Step 2: Optimize the MLIR
    echo "Optimizing ${base_name}.mlir..."
    mlir-opt --canonicalize --cse "${base_name}.mlir" -o "${base_name}_optimized.mlir"

    # Step 3: Translate MLIR back to LLVM IR
    echo "Translating ${base_name}_optimized.mlir to ${base_name}_optimized.ll..."
    mlir-translate --mlir-to-llvmir "${base_name}_optimized.mlir" -o "${base_name}_optimized.ll"

    # Step 4: Compile LLVM IR to RISC-V assembly
    echo "Compiling ${base_name}_optimized.ll to ${base_name}_output.s..."
    llc -march=riscv64 -mattr=+64bit,+d,+f,+a -o "${base_name}_output.s" "${base_name}_optimized.ll"

    # Step 5: Assemble the RISC-V assembly into an ELF executable
    echo "Assembling ${base_name}_output.s to ${base_name}_output.elf..."
    riscv64-unknown-elf-gcc "${base_name}_output.s" -o "${base_name}_output.elf"

    # Step 6: Run the ELF executable using QEMU
    echo "Running ${base_name}_output.elf with QEMU..."
    qemu-riscv64 "${base_name}_output.elf"

    echo "Processing of ${ll_file} completed."
    echo "----------------------------------------"
done

echo "All files processed."
