	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.file	"auxiliary.c"
	.globl	cpu_rasterizer_getRect          # -- Begin function cpu_rasterizer_getRect
	.p2align	1
	.type	cpu_rasterizer_getRect,@function
cpu_rasterizer_getRect:                 # @cpu_rasterizer_getRect
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 128
	.cfi_def_cfa s0, 0
                                        # kill: def $x15 killed $x14
                                        # kill: def $x15 killed $x13
                                        # kill: def $x15 killed $x10
	fsw	fa0, -24(s0)
	fsw	fa1, -20(s0)
	sd	a4, -48(s0)
	sd	a3, -56(s0)
	lw	a3, -48(s0)
	sw	a3, -32(s0)
	ld	a3, -56(s0)
	sd	a3, -40(s0)
	sw	a0, -60(s0)
	sd	a1, -72(s0)
	sd	a2, -80(s0)
	lw	a0, -40(s0)
	sd	a0, -128(s0)                    # 8-byte Folded Spill
	flw	fa5, -24(s0)
	lw	a0, -60(s0)
	fcvt.s.w	fa4, a0
	fsub.s	fa5, fa5, fa4
	lui	a0, 268288
	fmv.w.x	fa4, a0
	fsw	fa4, -100(s0)                   # 4-byte Folded Spill
	fdiv.s	fa5, fa5, fa4
	fcvt.w.s	a1, fa5, rtz
	li	a0, 0
	sd	a0, -96(s0)                     # 8-byte Folded Spill
	call	max_int
	mv	a1, a0
	ld	a0, -128(s0)                    # 8-byte Folded Reload
	call	min_int
	flw	fa4, -100(s0)                   # 4-byte Folded Reload
	mv	a1, a0
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	ld	a2, -72(s0)
	sw	a1, 0(a2)
	lw	a1, -36(s0)
	sd	a1, -120(s0)                    # 8-byte Folded Spill
	flw	fa5, -20(s0)
	lw	a1, -60(s0)
	fcvt.s.w	fa3, a1
	fsub.s	fa5, fa5, fa3
	fdiv.s	fa5, fa5, fa4
	fcvt.w.s	a1, fa5, rtz
	call	max_int
	mv	a1, a0
	ld	a0, -120(s0)                    # 8-byte Folded Reload
	call	min_int
	flw	fa4, -100(s0)                   # 4-byte Folded Reload
	mv	a1, a0
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	ld	a2, -72(s0)
	sw	a1, 4(a2)
	lw	a1, -40(s0)
	sd	a1, -112(s0)                    # 8-byte Folded Spill
	flw	fa5, -24(s0)
	lw	a1, -60(s0)
	fcvt.s.w	fa3, a1
	fadd.s	fa5, fa5, fa3
	fadd.s	fa5, fa5, fa4
	lui	a1, 260096
	fmv.w.x	fa3, a1
	fsw	fa3, -104(s0)                   # 4-byte Folded Spill
	fsub.s	fa5, fa5, fa3
	fdiv.s	fa5, fa5, fa4
	fcvt.w.s	a1, fa5, rtz
	call	max_int
	mv	a1, a0
	ld	a0, -112(s0)                    # 8-byte Folded Reload
	call	min_int
	flw	fa3, -104(s0)                   # 4-byte Folded Reload
	flw	fa4, -100(s0)                   # 4-byte Folded Reload
	mv	a1, a0
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	ld	a2, -80(s0)
	sw	a1, 0(a2)
	lw	a1, -36(s0)
	sd	a1, -88(s0)                     # 8-byte Folded Spill
	flw	fa5, -20(s0)
	lw	a1, -60(s0)
	fcvt.s.w	fa2, a1
	fadd.s	fa5, fa5, fa2
	fadd.s	fa5, fa5, fa4
	fsub.s	fa5, fa5, fa3
	fdiv.s	fa5, fa5, fa4
	fcvt.w.s	a1, fa5, rtz
	call	max_int
	mv	a1, a0
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	call	min_int
	ld	a1, -80(s0)
	sw	a0, 4(a1)
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end0:
	.size	cpu_rasterizer_getRect, .Lfunc_end0-cpu_rasterizer_getRect
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function min_int
	.type	min_int,@function
min_int:                                # @min_int
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	bge	a0, a1, .LBB1_2
	j	.LBB1_1
.LBB1_1:
	lw	a0, -20(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB1_3
.LBB1_2:
	lw	a0, -24(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB1_3
.LBB1_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	min_int, .Lfunc_end1-min_int
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function max_int
	.type	max_int,@function
max_int:                                # @max_int
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lw	a1, -20(s0)
	lw	a0, -24(s0)
	bge	a0, a1, .LBB2_2
	j	.LBB2_1
.LBB2_1:
	lw	a0, -20(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB2_3
.LBB2_2:
	lw	a0, -24(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB2_3
.LBB2_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	max_int, .Lfunc_end2-max_int
	.cfi_endproc
                                        # -- End function
	.globl	cpu_rasterizer_transformPoint4x3 # -- Begin function cpu_rasterizer_transformPoint4x3
	.p2align	1
	.type	cpu_rasterizer_transformPoint4x3,@function
cpu_rasterizer_transformPoint4x3:       # @cpu_rasterizer_transformPoint4x3
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sd	a1, -48(s0)
	sd	a0, -56(s0)
	lw	a0, -48(s0)
	sw	a0, -32(s0)
	ld	a0, -56(s0)
	sd	a0, -40(s0)
	sd	a2, -64(s0)
	ld	a0, -64(s0)
	flw	fa5, 0(a0)
	flw	fa4, -40(s0)
	flw	fa3, 16(a0)
	flw	fa2, -36(s0)
	fmul.s	fa3, fa3, fa2
	fmadd.s	fa3, fa5, fa4, fa3
	flw	fa5, 32(a0)
	flw	fa4, -32(s0)
	fmadd.s	fa5, fa5, fa4, fa3
	flw	fa4, 48(a0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -28(s0)
	ld	a0, -64(s0)
	flw	fa5, 4(a0)
	flw	fa4, -40(s0)
	flw	fa3, 20(a0)
	flw	fa2, -36(s0)
	fmul.s	fa3, fa3, fa2
	fmadd.s	fa3, fa5, fa4, fa3
	flw	fa5, 36(a0)
	flw	fa4, -32(s0)
	fmadd.s	fa5, fa5, fa4, fa3
	flw	fa4, 52(a0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -24(s0)
	ld	a0, -64(s0)
	flw	fa5, 8(a0)
	flw	fa4, -40(s0)
	flw	fa3, 24(a0)
	flw	fa2, -36(s0)
	fmul.s	fa3, fa3, fa2
	fmadd.s	fa3, fa5, fa4, fa3
	flw	fa5, 40(a0)
	flw	fa4, -32(s0)
	fmadd.s	fa5, fa5, fa4, fa3
	flw	fa4, 56(a0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -20(s0)
	lw	a0, -20(s0)
	sw	a0, -72(s0)
	lwu	a0, -24(s0)
	slli	a0, a0, 32
	lwu	a1, -28(s0)
	or	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -80(s0)
	ld	a1, -72(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end3:
	.size	cpu_rasterizer_transformPoint4x3, .Lfunc_end3-cpu_rasterizer_transformPoint4x3
	.cfi_endproc
                                        # -- End function
	.globl	cpu_rasterizer_transformPoint4x4 # -- Begin function cpu_rasterizer_transformPoint4x4
	.p2align	1
	.type	cpu_rasterizer_transformPoint4x4,@function
cpu_rasterizer_transformPoint4x4:       # @cpu_rasterizer_transformPoint4x4
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sd	a1, -56(s0)
	sd	a0, -64(s0)
	lw	a0, -56(s0)
	sw	a0, -40(s0)
	ld	a0, -64(s0)
	sd	a0, -48(s0)
	sd	a2, -72(s0)
	ld	a0, -72(s0)
	flw	fa5, 0(a0)
	flw	fa4, -48(s0)
	flw	fa3, 16(a0)
	flw	fa2, -44(s0)
	fmul.s	fa3, fa3, fa2
	fmadd.s	fa3, fa5, fa4, fa3
	flw	fa5, 32(a0)
	flw	fa4, -40(s0)
	fmadd.s	fa5, fa5, fa4, fa3
	flw	fa4, 48(a0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -32(s0)
	ld	a0, -72(s0)
	flw	fa5, 4(a0)
	flw	fa4, -48(s0)
	flw	fa3, 20(a0)
	flw	fa2, -44(s0)
	fmul.s	fa3, fa3, fa2
	fmadd.s	fa3, fa5, fa4, fa3
	flw	fa5, 36(a0)
	flw	fa4, -40(s0)
	fmadd.s	fa5, fa5, fa4, fa3
	flw	fa4, 52(a0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -28(s0)
	ld	a0, -72(s0)
	flw	fa5, 8(a0)
	flw	fa4, -48(s0)
	flw	fa3, 24(a0)
	flw	fa2, -44(s0)
	fmul.s	fa3, fa3, fa2
	fmadd.s	fa3, fa5, fa4, fa3
	flw	fa5, 40(a0)
	flw	fa4, -40(s0)
	fmadd.s	fa5, fa5, fa4, fa3
	flw	fa4, 56(a0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -24(s0)
	ld	a0, -72(s0)
	flw	fa5, 12(a0)
	flw	fa4, -48(s0)
	flw	fa3, 28(a0)
	flw	fa2, -44(s0)
	fmul.s	fa3, fa3, fa2
	fmadd.s	fa3, fa5, fa4, fa3
	flw	fa5, 44(a0)
	flw	fa4, -40(s0)
	fmadd.s	fa5, fa5, fa4, fa3
	flw	fa4, 60(a0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -20(s0)
	lwu	a0, -28(s0)
	slli	a0, a0, 32
	lwu	a1, -32(s0)
	or	a0, a0, a1
	lwu	a1, -20(s0)
	slli	a1, a1, 32
	lwu	a2, -24(s0)
	or	a1, a1, a2
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end4:
	.size	cpu_rasterizer_transformPoint4x4, .Lfunc_end4-cpu_rasterizer_transformPoint4x4
	.cfi_endproc
                                        # -- End function
	.section	.sdata,"aw",@progbits
	.p2align	2, 0x0                          # -- Begin function cpu_rasterizer_in_frustum
.LCPI5_0:
	.word	0x33d6bf95                      # float 1.00000001E-7
.LCPI5_1:
	.word	0x3e4ccccd                      # float 0.200000003
	.text
	.globl	cpu_rasterizer_in_frustum
	.p2align	1
	.type	cpu_rasterizer_in_frustum,@function
cpu_rasterizer_in_frustum:              # @cpu_rasterizer_in_frustum
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -192
	.cfi_def_cfa_offset 192
	sd	ra, 184(sp)                     # 8-byte Folded Spill
	sd	s0, 176(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 192
	.cfi_def_cfa s0, 0
                                        # kill: def $x16 killed $x14
                                        # kill: def $x16 killed $x10
	sw	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sw	a4, -52(s0)
	sd	a5, -64(s0)
	ld	a0, -32(s0)
	lw	a2, -24(s0)
	slliw	a1, a2, 1
	addw	a1, a1, a2
	slli	a1, a1, 2
	add	a0, a0, a1
	flw	fa5, 0(a0)
	fsw	fa5, -76(s0)
	ld	a1, -32(s0)
	lw	a2, -24(s0)
	slliw	a0, a2, 1
	addw	a0, a0, a2
	slli	a0, a0, 2
	add	a0, a0, a1
	flw	fa5, 4(a0)
	fsw	fa5, -72(s0)
	ld	a1, -32(s0)
	lw	a2, -24(s0)
	slliw	a0, a2, 1
	addw	a0, a0, a2
	slli	a0, a0, 2
	add	a0, a0, a1
	flw	fa5, 8(a0)
	fsw	fa5, -68(s0)
	ld	a2, -48(s0)
	lw	a0, -68(s0)
	sw	a0, -104(s0)
	lwu	a0, -72(s0)
	slli	a0, a0, 32
	lwu	a1, -76(s0)
	or	a0, a0, a1
	sd	a0, -112(s0)
	ld	a1, -104(s0)
	ld	a0, -112(s0)
	call	cpu_rasterizer_transformPoint4x4
	sw	a1, -84(s0)
	srli	a1, a1, 32
	sw	a1, -80(s0)
	sw	a0, -92(s0)
	srli	a0, a0, 32
	sw	a0, -88(s0)
	flw	fa5, -80(s0)
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(.LCPI5_0)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	flw	fa4, 0(a0)
	fadd.s	fa4, fa5, fa4
	lui	a0, 260096
	fmv.w.x	fa5, a0
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, -116(s0)
	flw	fa5, -92(s0)
	flw	fa4, -116(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -128(s0)
	flw	fa5, -88(s0)
	flw	fa4, -116(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -124(s0)
	flw	fa5, -84(s0)
	flw	fa4, -116(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -120(s0)
	ld	a0, -64(s0)
	sd	a0, -184(s0)                    # 8-byte Folded Spill
	ld	a2, -40(s0)
	lw	a0, -68(s0)
	sw	a0, -152(s0)
	lwu	a0, -72(s0)
	slli	a0, a0, 32
	lwu	a1, -76(s0)
	or	a0, a0, a1
	sd	a0, -160(s0)
	ld	a1, -152(s0)
	ld	a0, -160(s0)
	call	cpu_rasterizer_transformPoint4x3
	mv	a2, a1
	ld	a1, -184(s0)                    # 8-byte Folded Reload
	sd	a2, -168(s0)
	sd	a0, -176(s0)
	lw	a0, -168(s0)
	sw	a0, -136(s0)
	ld	a0, -176(s0)
	sd	a0, -144(s0)
	lw	a0, -136(s0)
	sw	a0, 8(a1)
	lw	a0, -140(s0)
	sw	a0, 4(a1)
	lw	a0, -144(s0)
	sw	a0, 0(a1)
	ld	a0, -64(s0)
	flw	fa5, 8(a0)
.Lpcrel_hi1:
	auipc	a0, %pcrel_hi(.LCPI5_1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1)
	flw	fa4, 0(a0)
	fle.s	a0, fa5, fa4
	beqz	a0, .LBB5_4
	j	.LBB5_1
.LBB5_1:
	lw	a0, -52(s0)
	beqz	a0, .LBB5_3
	j	.LBB5_2
.LBB5_2:
.Lpcrel_hi2:
	auipc	a0, %pcrel_hi(.L.str)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi2)
	call	printf
	li	a0, 1
	call	exit
.LBB5_3:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB5_5
.LBB5_4:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB5_5
.LBB5_5:
	lw	a0, -20(s0)
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
	ret
.Lfunc_end5:
	.size	cpu_rasterizer_in_frustum, .Lfunc_end5-cpu_rasterizer_in_frustum
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Point is filtered although prefiltered is set. This shouldn't happen!\n"
	.size	.L.str, 71

	.ident	"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym min_int
	.addrsig_sym max_int
	.addrsig_sym cpu_rasterizer_transformPoint4x3
	.addrsig_sym cpu_rasterizer_transformPoint4x4
	.addrsig_sym printf
	.addrsig_sym exit
