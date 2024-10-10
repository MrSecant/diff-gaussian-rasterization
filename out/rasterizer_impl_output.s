	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_a2p1_f2p2_d2p2_zicsr2p0"
	.file	"LLVMDialectModule"
	.option	push
	.option	arch, +c, +m
	.globl	cpu_rasterizer_getHigherMsb     # -- Begin function cpu_rasterizer_getHigherMsb
	.p2align	1
	.type	cpu_rasterizer_getHigherMsb,@function
cpu_rasterizer_getHigherMsb:            # @cpu_rasterizer_getHigherMsb
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
	sw	a0, -20(s0)
	li	a0, 16
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	li	a1, 2
	bltu	a0, a1, .LBB0_6
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lwu	a0, -28(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -20(s0)
	lwu	a1, -24(s0)
	srlw	a0, a0, a1
	beqz	a0, .LBB0_4
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	addw	a0, a0, a1
	sw	a0, -24(s0)
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	subw	a1, a1, a0
	sw	a1, -24(s0)
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_1
.LBB0_6:
	lw	a0, -20(s0)
	lwu	a1, -24(s0)
	srlw	a0, a0, a1
	beqz	a0, .LBB0_8
	j	.LBB0_7
.LBB0_7:
	lw	a0, -24(s0)
	addiw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_8
.LBB0_8:
	lw	a0, -24(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	cpu_rasterizer_getHigherMsb, .Lfunc_end0-cpu_rasterizer_getHigherMsb
	.cfi_endproc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +c, +m
	.globl	cpu_rasterizer_checkFrustum     # -- Begin function cpu_rasterizer_checkFrustum
	.p2align	1
	.type	cpu_rasterizer_checkFrustum,@function
cpu_rasterizer_checkFrustum:            # @cpu_rasterizer_checkFrustum
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
	sw	a0, -20(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sd	a4, -56(s0)
	sw	zero, -60(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -60(s0)
	lw	a1, -20(s0)
	bge	a0, a1, .LBB1_4
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -60(s0)
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	ld	a3, -48(s0)
	li	a4, 0
	addi	a5, s0, -72
	call	cpu_rasterizer_in_frustum
	ld	a1, -56(s0)
	lw	a2, -60(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB1_3
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -60(s0)
	addiw	a0, a0, 1
	sw	a0, -60(s0)
	j	.LBB1_1
.LBB1_4:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end1:
	.size	cpu_rasterizer_checkFrustum, .Lfunc_end1-cpu_rasterizer_checkFrustum
	.cfi_endproc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +c, +m
	.globl	cpu_rasterizer_duplicateWithKeys # -- Begin function cpu_rasterizer_duplicateWithKeys
	.p2align	1
	.type	cpu_rasterizer_duplicateWithKeys,@function
cpu_rasterizer_duplicateWithKeys:       # @cpu_rasterizer_duplicateWithKeys
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -176
	.cfi_def_cfa_offset 176
	sd	ra, 168(sp)                     # 8-byte Folded Spill
	sd	s0, 160(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 176
	.cfi_def_cfa s0, 0
	ld	t0, 0(s0)
	sd	t0, -40(s0)
	sd	a7, -48(s0)
	lw	a7, -40(s0)
	sw	a7, -24(s0)
	ld	a7, -48(s0)
	sd	a7, -32(s0)
	sw	a0, -52(s0)
	sd	a1, -64(s0)
	sd	a2, -72(s0)
	sd	a3, -80(s0)
	sd	a4, -88(s0)
	sd	a5, -96(s0)
	sd	a6, -104(s0)
	sw	zero, -108(s0)
	j	.LBB2_1
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #       Child Loop BB2_9 Depth 3
	lw	a0, -108(s0)
	lw	a1, -52(s0)
	bge	a0, a1, .LBB2_17
	j	.LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	ld	a0, -104(s0)
	lw	a1, -108(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	blez	a0, .LBB2_15
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -108(s0)
	bnez	a0, .LBB2_5
	j	.LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	li	a0, 0
	j	.LBB2_6
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	ld	a0, -80(s0)
	lw	a1, -108(s0)
	addiw	a1, a1, -1
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	j	.LBB2_6
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	sw	a0, -112(s0)
	ld	a0, -64(s0)
	lw	a1, -108(s0)
	slli	a2, a1, 3
	add	a2, a2, a0
	ld	a0, -104(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	flw	fa0, 0(a2)
	flw	fa1, 4(a2)
	lw	a1, -24(s0)
	sw	a1, -136(s0)
	ld	a1, -32(s0)
	sd	a1, -144(s0)
	ld	a4, -136(s0)
	ld	a3, -144(s0)
	addi	a1, s0, -120
	addi	a2, s0, -128
	call	cpu_rasterizer_getRect
	lw	a0, -116(s0)
	sw	a0, -148(s0)
	j	.LBB2_7
.LBB2_7:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_9 Depth 3
	lw	a0, -148(s0)
	lw	a1, -124(s0)
	bgeu	a0, a1, .LBB2_14
	j	.LBB2_8
.LBB2_8:                                #   in Loop: Header=BB2_7 Depth=2
	lw	a0, -120(s0)
	sw	a0, -152(s0)
	j	.LBB2_9
.LBB2_9:                                #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a0, -152(s0)
	lw	a1, -128(s0)
	bgeu	a0, a1, .LBB2_12
	j	.LBB2_10
.LBB2_10:                               #   in Loop: Header=BB2_9 Depth=3
	lw	a0, -148(s0)
	lw	a1, -32(s0)
	mulw	a0, a0, a1
	lw	a1, -152(s0)
	addw	a0, a0, a1
	slli	a0, a0, 32
	srli	a0, a0, 32
	sd	a0, -160(s0)
	ld	a0, -160(s0)
	slli	a0, a0, 32
	sd	a0, -160(s0)
	ld	a0, -72(s0)
	lw	a1, -108(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lbu	a1, 0(a0)
	lbu	a2, 1(a0)
	slliw	a2, a2, 8
	or	a1, a1, a2
	lbu	a2, 2(a0)
	slliw	a2, a2, 16
	lbu	a0, 3(a0)
	slliw	a0, a0, 24
	or	a0, a0, a2
	or	a0, a0, a1
	sw	a0, -164(s0)
	lwu	a0, -164(s0)
	ld	a1, -160(s0)
	or	a0, a0, a1
	sd	a0, -160(s0)
	ld	a0, -160(s0)
	ld	a1, -88(s0)
	lwu	a2, -112(s0)
	slli	a2, a2, 3
	add	a1, a1, a2
	sd	a0, 0(a1)
	lw	a0, -108(s0)
	ld	a1, -96(s0)
	lwu	a2, -112(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -112(s0)
	addiw	a0, a0, 1
	sw	a0, -112(s0)
	j	.LBB2_11
.LBB2_11:                               #   in Loop: Header=BB2_9 Depth=3
	lw	a0, -152(s0)
	addiw	a0, a0, 1
	sw	a0, -152(s0)
	j	.LBB2_9
.LBB2_12:                               #   in Loop: Header=BB2_7 Depth=2
	j	.LBB2_13
.LBB2_13:                               #   in Loop: Header=BB2_7 Depth=2
	lw	a0, -148(s0)
	addiw	a0, a0, 1
	sw	a0, -148(s0)
	j	.LBB2_7
.LBB2_14:                               #   in Loop: Header=BB2_1 Depth=1
	j	.LBB2_15
.LBB2_15:                               #   in Loop: Header=BB2_1 Depth=1
	j	.LBB2_16
.LBB2_16:                               #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -108(s0)
	addiw	a0, a0, 1
	sw	a0, -108(s0)
	j	.LBB2_1
.LBB2_17:
	ld	ra, 168(sp)                     # 8-byte Folded Reload
	ld	s0, 160(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 176
	ret
.Lfunc_end2:
	.size	cpu_rasterizer_duplicateWithKeys, .Lfunc_end2-cpu_rasterizer_duplicateWithKeys
	.cfi_endproc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +c, +m
	.globl	cpu_rasterizer_identifyTileRanges # -- Begin function cpu_rasterizer_identifyTileRanges
	.p2align	1
	.type	cpu_rasterizer_identifyTileRanges,@function
cpu_rasterizer_identifyTileRanges:      # @cpu_rasterizer_identifyTileRanges
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	sw	a0, -20(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sw	zero, -44(s0)
	j	.LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -44(s0)
	lw	a1, -20(s0)
	bge	a0, a1, .LBB3_11
	j	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	sd	a0, -56(s0)
	lwu	a0, -52(s0)
	sw	a0, -60(s0)
	lw	a0, -44(s0)
	bnez	a0, .LBB3_4
	j	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	ld	a0, -40(s0)
	lwu	a1, -60(s0)
	slli	a1, a1, 3
	add	a0, a0, a1
	sw	zero, 0(a0)
	j	.LBB3_7
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	addiw	a1, a1, -1
	slli	a1, a1, 3
	add	a0, a0, a1
	lwu	a0, 4(a0)
	sw	a0, -64(s0)
	lw	a0, -60(s0)
	lw	a1, -64(s0)
	beq	a0, a1, .LBB3_6
	j	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -44(s0)
	ld	a1, -40(s0)
	lwu	a2, -64(s0)
	slli	a2, a2, 3
	add	a1, a1, a2
	sw	a0, 4(a1)
	lw	a0, -44(s0)
	ld	a1, -40(s0)
	lwu	a2, -60(s0)
	slli	a2, a2, 3
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB3_6
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	j	.LBB3_7
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -44(s0)
	lw	a1, -20(s0)
	addiw	a1, a1, -1
	bne	a0, a1, .LBB3_9
	j	.LBB3_8
.LBB3_8:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -20(s0)
	ld	a1, -40(s0)
	lwu	a2, -60(s0)
	slli	a2, a2, 3
	add	a1, a1, a2
	sw	a0, 4(a1)
	j	.LBB3_9
.LBB3_9:                                #   in Loop: Header=BB3_1 Depth=1
	j	.LBB3_10
.LBB3_10:                               #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -44(s0)
	addiw	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB3_1
.LBB3_11:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end3:
	.size	cpu_rasterizer_identifyTileRanges, .Lfunc_end3-cpu_rasterizer_identifyTileRanges
	.cfi_endproc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +c, +m
	.globl	cpu_rasterizer_markVisible      # -- Begin function cpu_rasterizer_markVisible
	.p2align	1
	.type	cpu_rasterizer_markVisible,@function
cpu_rasterizer_markVisible:             # @cpu_rasterizer_markVisible
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	sw	a0, -20(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sd	a4, -56(s0)
	lw	a0, -20(s0)
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	ld	a3, -48(s0)
	ld	a4, -56(s0)
	call	cpu_rasterizer_checkFrustum
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end4:
	.size	cpu_rasterizer_markVisible, .Lfunc_end4-cpu_rasterizer_markVisible
	.cfi_endproc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +c, +m
	.globl	cpu_rasterizer_compare_keys     # -- Begin function cpu_rasterizer_compare_keys
	.p2align	1
	.type	cpu_rasterizer_compare_keys,@function
cpu_rasterizer_compare_keys:            # @cpu_rasterizer_compare_keys
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	sw	a0, -44(s0)
	ld	a0, -40(s0)
	lw	a0, 0(a0)
	sw	a0, -48(s0)
	lui	a0, %hi(binningState)
	addi	a0, a0, %lo(binningState)
	ld	a1, 8(a0)
	lw	a2, -44(s0)
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	sd	a1, -56(s0)
	ld	a0, 8(a0)
	lw	a1, -48(s0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	sd	a0, -64(s0)
	ld	a1, -56(s0)
	ld	a2, -64(s0)
	li	a0, -1
	bgeu	a1, a2, .LBB5_2
	j	.LBB5_1
.LBB5_1:
	sw	a0, -20(s0)
	j	.LBB5_3
.LBB5_2:
	ld	a1, -56(s0)
	ld	a2, -64(s0)
	li	a0, 1
	bltu	a2, a1, .LBB5_1
	j	.LBB5_4
.LBB5_3:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB5_4:
	li	a0, 0
	j	.LBB5_1
.Lfunc_end5:
	.size	cpu_rasterizer_compare_keys, .Lfunc_end5-cpu_rasterizer_compare_keys
	.cfi_endproc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +c, +m
	.globl	cpu_rasterizer_forward          # -- Begin function cpu_rasterizer_forward
	.p2align	1
	.type	cpu_rasterizer_forward,@function
cpu_rasterizer_forward:                 # @cpu_rasterizer_forward
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -576
	.cfi_def_cfa_offset 576
	sd	ra, 568(sp)                     # 8-byte Folded Spill
	sd	s0, 560(sp)                     # 8-byte Folded Spill
	sd	s1, 552(sp)                     # 8-byte Folded Spill
	sd	s2, 544(sp)                     # 8-byte Folded Spill
	sd	s3, 536(sp)                     # 8-byte Folded Spill
	sd	s4, 528(sp)                     # 8-byte Folded Spill
	sd	s5, 520(sp)                     # 8-byte Folded Spill
	sd	s6, 512(sp)                     # 8-byte Folded Spill
	sd	s7, 504(sp)                     # 8-byte Folded Spill
	sd	s8, 496(sp)                     # 8-byte Folded Spill
	sd	s9, 488(sp)                     # 8-byte Folded Spill
	sd	s10, 480(sp)                    # 8-byte Folded Spill
	sd	s11, 472(sp)                    # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	.cfi_offset s10, -96
	.cfi_offset s11, -104
	addi	s0, sp, 576
	.cfi_def_cfa s0, 0
	ld	t0, 88(s0)
	ld	s1, 80(s0)
	ld	s1, 72(s0)
	ld	t1, 64(s0)
	ld	s1, 56(s0)
	ld	s1, 48(s0)
	ld	s1, 40(s0)
	ld	s1, 32(s0)
	ld	s1, 24(s0)
	ld	s1, 16(s0)
	ld	s1, 8(s0)
	ld	s1, 0(s0)
	sw	a0, -108(s0)
	sw	a1, -112(s0)
	sw	a2, -116(s0)
	sd	a3, -128(s0)
	sw	a4, -132(s0)
	sw	a5, -136(s0)
	sd	a6, -144(s0)
	sd	a7, -152(s0)
	fsw	fa0, -156(s0)
	fsw	fa1, -160(s0)
	fsw	fa2, -164(s0)
	sw	t1, -168(s0)
	sw	t0, -172(s0)
	lw	a0, -136(s0)
	fcvt.s.w	fa5, a0
	flw	fa4, -164(s0)
	fadd.s	fa4, fa4, fa4
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, -176(s0)
	lw	a0, -132(s0)
	fcvt.s.w	fa5, a0
	flw	fa4, -160(s0)
	fadd.s	fa4, fa4, fa4
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, -180(s0)
	lw	a0, -108(s0)
	slli	a0, a0, 2
	call	malloc
	addi	s2, s0, -264
	sd	a0, -264(s0)
	lw	a0, -108(s0)
	slli	a1, a0, 2
	slli	a0, a0, 3
	add	a0, a0, a1
	call	malloc
	addi	s3, s0, -248
	sd	a0, -248(s0)
	lw	a0, -108(s0)
	slli	a0, a0, 2
	call	malloc
	addi	s1, s0, -240
	sd	a0, -240(s0)
	lw	a0, -108(s0)
	slli	a0, a0, 3
	call	malloc
	addi	s4, s0, -232
	sd	a0, -232(s0)
	lw	a0, -108(s0)
	li	a1, 24
	mul	a0, a0, a1
	call	malloc
	addi	s5, s0, -224
	sd	a0, -224(s0)
	lw	a0, -108(s0)
	slli	a0, a0, 4
	call	malloc
	addi	s8, s0, -216
	sd	a0, -216(s0)
	lw	a0, -108(s0)
	slli	a1, a0, 2
	slli	a0, a0, 3
	add	a0, a0, a1
	call	malloc
	addi	s6, s0, -208
	sd	a0, -208(s0)
	lw	a0, -108(s0)
	slli	a0, a0, 2
	call	malloc
	sd	a0, -192(s0)
	lw	a0, -108(s0)
	slli	a0, a0, 2
	call	malloc
	sd	a0, -200(s0)
	ld	a0, 80(s0)
	bnez	a0, .LBB6_2
	j	.LBB6_1
.LBB6_1:
	ld	a0, 0(s1)
	sd	a0, 80(s0)
	j	.LBB6_2
.LBB6_2:
	lw	a0, -132(s0)
	addiw	a0, a0, 15
	sraiw	a1, a0, 31
	srliw	a1, a1, 28
	addw	a0, a0, a1
	sraiw	a0, a0, 4
	sw	a0, -284(s0)
	lw	a0, -136(s0)
	addiw	a0, a0, 15
	sraiw	a1, a0, 31
	srliw	a1, a1, 28
	addw	a0, a0, a1
	sraiw	a0, a0, 4
	sw	a0, -280(s0)
	li	a0, 1
	sw	a0, -276(s0)
	lw	a0, -132(s0)
	lw	a1, -136(s0)
	mulw	a0, a0, a1
	sw	a0, -316(s0)
	lw	a0, -316(s0)
	slli	a0, a0, 2
	call	malloc
	sd	a0, -296(s0)
	lw	a0, -316(s0)
	slli	a0, a0, 2
	call	malloc
	sd	a0, -304(s0)
	lwu	a0, -284(s0)
	lwu	a1, -280(s0)
	mul	a0, a0, a1
	slli	a0, a0, 3
	call	malloc
	sd	a0, -312(s0)
	lw	a0, -108(s0)
	lw	a1, -112(s0)
	lw	a2, -116(s0)
	ld	a3, -144(s0)
	ld	a4, 16(s0)
	flw	fa0, -156(s0)
	ld	a5, 24(s0)
	ld	a6, 8(s0)
	ld	a7, -152(s0)
	ld	t0, 0(s3)
	ld	t1, 32(s0)
	ld	t2, 0(s0)
	ld	t3, 40(s0)
	ld	t4, 48(s0)
	ld	t5, 56(s0)
	lw	t6, -132(s0)
	lw	ra, -136(s0)
	flw	fa1, -160(s0)
	flw	fa2, -164(s0)
	flw	fa3, -180(s0)
	flw	fa4, -176(s0)
	ld	s10, 80(s0)
	ld	s11, 0(s4)
	mv	s3, s2
	ld	s7, 0(s2)
	ld	s4, 0(s5)
	ld	s6, 0(s6)
	ld	s8, 0(s8)
	addi	s1, s0, -192
	ld	s9, 0(s1)
	lw	s2, -168(s0)
	lw	s5, -276(s0)
	sw	s5, -328(s0)
	lwu	s1, -280(s0)
	slli	s5, s1, 32
	lwu	s1, -284(s0)
	or	s1, s5, s1
	sd	s1, -336(s0)
	ld	s5, -336(s0)
	ld	s1, -328(s0)
	sd	s2, 136(sp)
	sd	s9, 128(sp)
	sd	s1, 120(sp)
	sd	s5, 112(sp)
	sd	s8, 104(sp)
	sd	s6, 96(sp)
	sd	s4, 88(sp)
	sd	s7, 80(sp)
	sd	s11, 72(sp)
	sd	s10, 64(sp)
	sd	ra, 56(sp)
	sd	t6, 48(sp)
	sd	t5, 40(sp)
	sd	t4, 32(sp)
	sd	t3, 24(sp)
	sd	t2, 16(sp)
	sd	t1, 8(sp)
	sd	t0, 0(sp)
	call	cpu_rasterizer_preprocess
	sw	zero, -340(s0)
	sw	zero, -344(s0)
	addi	s8, s0, -200
	j	.LBB6_3
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -344(s0)
	lw	a1, -108(s0)
	bge	a0, a1, .LBB6_6
	j	.LBB6_4
.LBB6_4:                                #   in Loop: Header=BB6_3 Depth=1
	addi	a0, s0, -192
	ld	a0, 0(a0)
	lw	a1, -344(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -340(s0)
	addw	a0, a0, a1
	sw	a0, -340(s0)
	lw	a0, -340(s0)
	ld	a1, 0(s8)
	lw	a2, -344(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB6_5
.LBB6_5:                                #   in Loop: Header=BB6_3 Depth=1
	lw	a0, -344(s0)
	addiw	a0, a0, 1
	sw	a0, -344(s0)
	j	.LBB6_3
.LBB6_6:
	lw	a0, -340(s0)
	sw	a0, -348(s0)
	lw	a0, -348(s0)
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(binningState)
	addi	s1, a1, %lo(binningState)
	sd	a0, 32(s1)
	lw	a0, -348(s0)
	slli	a0, a0, 2
	call	malloc
	sd	a0, 24(s1)
	lw	a0, -348(s0)
	slli	a0, a0, 3
	call	malloc
	sd	a0, 16(s1)
	lw	a0, -348(s0)
	slli	a0, a0, 3
	call	malloc
	sd	a0, 8(s1)
	lw	a0, -108(s0)
	addi	s5, s0, -232
	ld	a1, 0(s5)
	mv	s4, s3
	ld	a2, 0(s4)
	ld	a3, 0(s8)
	ld	a4, 8(s1)
	ld	a5, 24(s1)
	ld	a6, 80(s0)
	lw	s1, -276(s0)
	sw	s1, -360(s0)
	lwu	s1, -280(s0)
	slli	a7, s1, 32
	lwu	s1, -284(s0)
	or	s1, a7, s1
	sd	s1, -368(s0)
	ld	a7, -368(s0)
	ld	s1, -360(s0)
	sd	s1, 0(sp)
	call	cpu_rasterizer_duplicateWithKeys
	addi	s2, s0, -284
	lw	a0, 0(s2)
	addi	s1, s0, -280
	lw	a1, 0(s1)
	mulw	a0, a0, a1
	call	cpu_rasterizer_getHigherMsb
	sw	a0, -372(s0)
	lw	a0, -348(s0)
	slli	a0, a0, 2
	call	malloc
	sd	a0, -384(s0)
	sw	zero, -388(s0)
	addi	s3, s0, -240
	addi	s6, s0, -216
	addi	s7, s0, -208
	addi	s11, s0, -312
	j	.LBB6_7
.LBB6_7:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -388(s0)
	lw	a1, -348(s0)
	bge	a0, a1, .LBB6_10
	j	.LBB6_8
.LBB6_8:                                #   in Loop: Header=BB6_7 Depth=1
	lw	a0, -388(s0)
	ld	a1, -384(s0)
	slli	a2, a0, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB6_9
.LBB6_9:                                #   in Loop: Header=BB6_7 Depth=1
	lw	a0, -388(s0)
	addiw	a0, a0, 1
	sw	a0, -388(s0)
	j	.LBB6_7
.LBB6_10:
	ld	a0, -384(s0)
	lw	a1, -348(s0)
	lui	a2, %hi(cpu_rasterizer_compare_keys)
	addi	a3, a2, %lo(cpu_rasterizer_compare_keys)
	li	a2, 4
	call	qsort
	sw	zero, -392(s0)
	j	.LBB6_11
.LBB6_11:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -392(s0)
	lw	a1, -348(s0)
	bge	a0, a1, .LBB6_14
	j	.LBB6_12
.LBB6_12:                               #   in Loop: Header=BB6_11 Depth=1
	ld	a0, -384(s0)
	lw	a1, -392(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -396(s0)
	lui	a0, %hi(binningState)
	addi	a0, a0, %lo(binningState)
	ld	a1, 8(a0)
	lw	a2, -396(s0)
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	ld	a2, 16(a0)
	lw	a3, -392(s0)
	slli	a3, a3, 3
	add	a2, a2, a3
	sd	a1, 0(a2)
	ld	a1, 24(a0)
	lw	a2, -396(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	ld	a0, 32(a0)
	lw	a2, -392(s0)
	slli	a2, a2, 2
	add	a0, a0, a2
	sw	a1, 0(a0)
	j	.LBB6_13
.LBB6_13:                               #   in Loop: Header=BB6_11 Depth=1
	lw	a0, -392(s0)
	addiw	a0, a0, 1
	sw	a0, -392(s0)
	j	.LBB6_11
.LBB6_14:
	ld	a0, -384(s0)
	call	free
	lw	a0, 0(s2)
	lw	a1, 0(s1)
	mulw	a0, a0, a1
	sw	a0, -400(s0)
	sw	zero, -404(s0)
	j	.LBB6_15
.LBB6_15:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -404(s0)
	lw	a1, -400(s0)
	bge	a0, a1, .LBB6_18
	j	.LBB6_16
.LBB6_16:                               #   in Loop: Header=BB6_15 Depth=1
	ld	a0, 0(s11)
	lw	a1, -404(s0)
	slli	a1, a1, 3
	add	a0, a0, a1
	sw	zero, 0(a0)
	ld	a0, 0(s11)
	lw	a1, -404(s0)
	slli	a1, a1, 3
	add	a0, a0, a1
	sw	zero, 4(a0)
	j	.LBB6_17
.LBB6_17:                               #   in Loop: Header=BB6_15 Depth=1
	lw	a0, -404(s0)
	addiw	a0, a0, 1
	sw	a0, -404(s0)
	j	.LBB6_15
.LBB6_18:
	lw	a0, -348(s0)
	blez	a0, .LBB6_20
	j	.LBB6_19
.LBB6_19:
	lw	a0, -348(s0)
	lui	a1, %hi(binningState)
	addi	a1, a1, %lo(binningState)
	ld	a1, 16(a1)
	ld	a2, 0(s11)
	call	cpu_rasterizer_identifyTileRanges
	j	.LBB6_20
.LBB6_20:
	ld	a0, 0(s0)
	beqz	a0, .LBB6_22
	j	.LBB6_21
.LBB6_21:
	ld	a0, 0(s0)
	j	.LBB6_23
.LBB6_22:
	ld	a0, 0(s7)
	j	.LBB6_23
.LBB6_23:
	sd	a0, -416(s0)
	ld	a2, 0(s11)
	lui	a0, %hi(binningState)
	addi	s2, a0, %lo(binningState)
	ld	a3, 32(s2)
	lw	a4, -132(s0)
	lw	a5, -136(s0)
	ld	a6, 0(s5)
	ld	a7, -416(s0)
	ld	t0, 0(s6)
	addi	s9, s0, -296
	ld	t1, 0(s9)
	addi	s10, s0, -304
	ld	t2, 0(s10)
	ld	t3, -128(s0)
	ld	s1, 72(s0)
	lw	a0, -276(s0)
	sw	a0, -424(s0)
	lwu	a0, -280(s0)
	slli	a0, a0, 32
	lwu	a1, -284(s0)
	or	a0, a0, a1
	sd	a0, -432(s0)
	ld	a1, -424(s0)
	ld	a0, -432(s0)
	sd	s1, 32(sp)
	sd	t3, 24(sp)
	sd	t2, 16(sp)
	sd	t1, 8(sp)
	sd	t0, 0(sp)
	call	cpu_rasterizer_render
	ld	a0, 0(s4)
	call	free
	addi	a0, s0, -248
	ld	a0, 0(a0)
	call	free
	ld	a0, 0(s3)
	call	free
	ld	a0, 0(s5)
	call	free
	addi	a0, s0, -224
	ld	a0, 0(a0)
	call	free
	ld	a0, 0(s6)
	call	free
	ld	a0, 0(s7)
	call	free
	addi	a0, s0, -192
	ld	a0, 0(a0)
	call	free
	ld	a0, 0(s8)
	call	free
	ld	a0, 0(s9)
	call	free
	ld	a0, 0(s10)
	call	free
	ld	a0, 0(s11)
	call	free
	ld	a0, 32(s2)
	call	free
	ld	a0, 24(s2)
	call	free
	ld	a0, 16(s2)
	call	free
	ld	a0, 8(s2)
	call	free
	lw	a0, -348(s0)
	ld	ra, 568(sp)                     # 8-byte Folded Reload
	ld	s0, 560(sp)                     # 8-byte Folded Reload
	ld	s1, 552(sp)                     # 8-byte Folded Reload
	ld	s2, 544(sp)                     # 8-byte Folded Reload
	ld	s3, 536(sp)                     # 8-byte Folded Reload
	ld	s4, 528(sp)                     # 8-byte Folded Reload
	ld	s5, 520(sp)                     # 8-byte Folded Reload
	ld	s6, 512(sp)                     # 8-byte Folded Reload
	ld	s7, 504(sp)                     # 8-byte Folded Reload
	ld	s8, 496(sp)                     # 8-byte Folded Reload
	ld	s9, 488(sp)                     # 8-byte Folded Reload
	ld	s10, 480(sp)                    # 8-byte Folded Reload
	ld	s11, 472(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 576
	ret
.Lfunc_end6:
	.size	cpu_rasterizer_forward, .Lfunc_end6-cpu_rasterizer_forward
	.cfi_endproc
                                        # -- End function
	.option	pop
	.type	binningState,@object            # @binningState
	.bss
	.globl	binningState
	.p2align	3, 0x0
binningState:
	.zero	48
	.size	binningState, 48

	.section	".note.GNU-stack","",@progbits
