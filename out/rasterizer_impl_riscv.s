	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.file	"rasterizer_impl.c"
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
                                        # kill: def $x11 killed $x10
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
	lw	a1, -28(s0)
	lw	a0, -24(s0)
	addw	a0, a0, a1
	sw	a0, -24(s0)
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a1, -28(s0)
	lw	a0, -24(s0)
	subw	a0, a0, a1
	sw	a0, -24(s0)
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
                                        # kill: def $x15 killed $x10
	sw	a0, -20(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sd	a4, -56(s0)
	li	a0, 0
	sw	a0, -60(s0)
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
                                        # kill: def $x6 killed $x17
                                        # kill: def $x6 killed $x10
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
	li	a0, 0
	sw	a0, -108(s0)
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
	lw	a1, 0(a0)
	li	a0, 0
	bge	a0, a1, .LBB2_15
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -108(s0)
	bnez	a0, .LBB2_5
	j	.LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	li	a0, 0
	sd	a0, -176(s0)                    # 8-byte Folded Spill
	j	.LBB2_6
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	ld	a0, -80(s0)
	lw	a1, -108(s0)
	addiw	a1, a1, -1
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sd	a0, -176(s0)                    # 8-byte Folded Spill
	j	.LBB2_6
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	ld	a0, -176(s0)                    # 8-byte Folded Reload
	sw	a0, -112(s0)
	ld	a0, -64(s0)
	lw	a2, -108(s0)
	slli	a1, a2, 3
	add	a1, a1, a0
	ld	a0, -104(s0)
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	flw	fa0, 0(a1)
	flw	fa1, 4(a1)
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
	lw	a0, 0(a0)
	sw	a0, -164(s0)
	lwu	a1, -164(s0)
	ld	a0, -160(s0)
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
                                        # kill: def $x13 killed $x10
	sw	a0, -20(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	li	a0, 0
	sw	a0, -44(s0)
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
	add	a1, a1, a0
	li	a0, 0
	sw	a0, 0(a1)
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
                                        # kill: def $x15 killed $x10
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
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(binningState)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
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
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	bgeu	a0, a1, .LBB5_2
	j	.LBB5_1
.LBB5_1:
	li	a0, -1
	sw	a0, -20(s0)
	j	.LBB5_5
.LBB5_2:
	ld	a1, -56(s0)
	ld	a0, -64(s0)
	bgeu	a0, a1, .LBB5_4
	j	.LBB5_3
.LBB5_3:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB5_5
.LBB5_4:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB5_5
.LBB5_5:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end5:
	.size	cpu_rasterizer_compare_keys, .Lfunc_end5-cpu_rasterizer_compare_keys
	.cfi_endproc
                                        # -- End function
	.globl	cpu_rasterizer_forward          # -- Begin function cpu_rasterizer_forward
	.p2align	1
	.type	cpu_rasterizer_forward,@function
cpu_rasterizer_forward:                 # @cpu_rasterizer_forward
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -608
	.cfi_def_cfa_offset 608
	sd	ra, 600(sp)                     # 8-byte Folded Spill
	sd	s0, 592(sp)                     # 8-byte Folded Spill
	sd	s1, 584(sp)                     # 8-byte Folded Spill
	sd	s2, 576(sp)                     # 8-byte Folded Spill
	sd	s3, 568(sp)                     # 8-byte Folded Spill
	sd	s4, 560(sp)                     # 8-byte Folded Spill
	sd	s5, 552(sp)                     # 8-byte Folded Spill
	sd	s6, 544(sp)                     # 8-byte Folded Spill
	sd	s7, 536(sp)                     # 8-byte Folded Spill
	sd	s8, 528(sp)                     # 8-byte Folded Spill
	sd	s9, 520(sp)                     # 8-byte Folded Spill
	sd	s10, 512(sp)                    # 8-byte Folded Spill
	sd	s11, 504(sp)                    # 8-byte Folded Spill
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
	addi	s0, sp, 608
	.cfi_def_cfa s0, 0
	mv	t0, a1
	mv	t1, a0
	ld	a0, 88(s0)
	ld	a1, 80(s0)
	ld	a1, 72(s0)
	ld	a1, 64(s0)
	ld	t2, 56(s0)
	ld	t2, 48(s0)
	ld	t2, 40(s0)
	ld	t2, 32(s0)
	ld	t2, 24(s0)
	ld	t2, 16(s0)
	ld	t2, 8(s0)
	ld	t2, 0(s0)
                                        # kill: def $x7 killed $x15
                                        # kill: def $x7 killed $x14
                                        # kill: def $x7 killed $x12
                                        # kill: def $x7 killed $x5
                                        # kill: def $x7 killed $x6
	sw	t1, -108(s0)
	sw	t0, -112(s0)
	sw	a2, -116(s0)
	sd	a3, -128(s0)
	sw	a4, -132(s0)
	sw	a5, -136(s0)
	sd	a6, -144(s0)
	sd	a7, -152(s0)
	fsw	fa0, -156(s0)
	fsw	fa1, -160(s0)
	fsw	fa2, -164(s0)
	sw	a1, -168(s0)
	sw	a0, -172(s0)
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
	sd	a0, -264(s0)
	lw	a0, -108(s0)
	slli	a1, a0, 2
	slli	a0, a0, 3
	add	a0, a0, a1
	call	malloc
	sd	a0, -248(s0)
	lw	a0, -108(s0)
	slli	a0, a0, 2
	call	malloc
	sd	a0, -240(s0)
	lw	a0, -108(s0)
	slli	a0, a0, 3
	call	malloc
	sd	a0, -232(s0)
	lw	a0, -108(s0)
	li	a1, 24
	mul	a0, a0, a1
	call	malloc
	sd	a0, -224(s0)
	lw	a0, -108(s0)
	slli	a0, a0, 4
	call	malloc
	sd	a0, -216(s0)
	lw	a0, -108(s0)
	slli	a1, a0, 2
	slli	a0, a0, 3
	add	a0, a0, a1
	call	malloc
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
	ld	a0, -240(s0)
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
	ld	t0, -248(s0)
	ld	t2, 32(s0)
	ld	t3, 0(s0)
	ld	t4, 40(s0)
	ld	t5, 48(s0)
	ld	t6, 56(s0)
	lw	s1, -132(s0)
	lw	s2, -136(s0)
	flw	fa1, -160(s0)
	flw	fa2, -164(s0)
	flw	fa3, -180(s0)
	flw	fa4, -176(s0)
	ld	s3, 80(s0)
	ld	s4, -232(s0)
	ld	s5, -264(s0)
	ld	s6, -224(s0)
	ld	s7, -208(s0)
	ld	s8, -216(s0)
	ld	s11, -192(s0)
	lw	ra, -168(s0)
	lw	t1, -276(s0)
	sw	t1, -328(s0)
	lwu	t1, -280(s0)
	slli	t1, t1, 32
	lwu	s9, -284(s0)
	or	t1, t1, s9
	sd	t1, -336(s0)
	ld	s9, -336(s0)
	ld	s10, -328(s0)
	mv	t1, sp
	sd	t1, -440(s0)                    # 8-byte Folded Spill
	sd	ra, 136(t1)
	sd	s11, 128(t1)
	sd	s10, 120(t1)
	sd	s9, 112(t1)
	sd	s8, 104(t1)
	sd	s7, 96(t1)
	sd	s6, 88(t1)
	sd	s5, 80(t1)
	sd	s4, 72(t1)
	sd	s3, 64(t1)
	sd	s2, 56(t1)
	sd	s1, 48(t1)
	sd	t6, 40(t1)
	sd	t5, 32(t1)
	sd	t4, 24(t1)
	sd	t3, 16(t1)
	sd	t2, 8(t1)
	sd	t0, 0(t1)
	call	cpu_rasterizer_preprocess
	li	a0, 0
	sw	a0, -340(s0)
	sw	a0, -344(s0)
	j	.LBB6_3
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -344(s0)
	lw	a1, -108(s0)
	bge	a0, a1, .LBB6_6
	j	.LBB6_4
.LBB6_4:                                #   in Loop: Header=BB6_3 Depth=1
	ld	a0, -192(s0)
	lw	a1, -344(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a1, 0(a0)
	lw	a0, -340(s0)
	addw	a0, a0, a1
	sw	a0, -340(s0)
	lw	a0, -340(s0)
	ld	a1, -200(s0)
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
.Lpcrel_hi1:
	auipc	a1, %pcrel_hi(binningState)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi1)
	sd	a1, -448(s0)                    # 8-byte Folded Spill
	sd	a0, 32(a1)
	lw	a0, -348(s0)
	slli	a0, a0, 2
	call	malloc
	ld	a1, -448(s0)                    # 8-byte Folded Reload
	sd	a0, 24(a1)
	lw	a0, -348(s0)
	slli	a0, a0, 3
	call	malloc
	ld	a1, -448(s0)                    # 8-byte Folded Reload
	sd	a0, 16(a1)
	lw	a0, -348(s0)
	slli	a0, a0, 3
	call	malloc
	ld	a5, -448(s0)                    # 8-byte Folded Reload
	sd	a0, 8(a5)
	lw	a0, -108(s0)
	ld	a1, -232(s0)
	ld	a2, -264(s0)
	ld	a3, -200(s0)
	ld	a4, 8(a5)
	ld	a5, 24(a5)
	ld	a6, 80(s0)
	lw	a7, -276(s0)
	sw	a7, -360(s0)
	lwu	a7, -280(s0)
	slli	a7, a7, 32
	lwu	t0, -284(s0)
	or	a7, a7, t0
	sd	a7, -368(s0)
	ld	a7, -368(s0)
	ld	t0, -360(s0)
	mv	t1, sp
	sd	t0, 0(t1)
	call	cpu_rasterizer_duplicateWithKeys
	lw	a0, -284(s0)
	lw	a1, -280(s0)
	mulw	a0, a0, a1
	call	cpu_rasterizer_getHigherMsb
	sw	a0, -372(s0)
	lw	a0, -348(s0)
	slli	a0, a0, 2
	call	malloc
	sd	a0, -384(s0)
	li	a0, 0
	sw	a0, -388(s0)
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
.Lpcrel_hi2:
	auipc	a2, %pcrel_hi(cpu_rasterizer_compare_keys)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi2)
	li	a2, 4
	call	qsort
	li	a0, 0
	sw	a0, -392(s0)
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
.Lpcrel_hi3:
	auipc	a0, %pcrel_hi(binningState)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi3)
	ld	a0, 8(a1)
	lw	a2, -396(s0)
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	ld	a2, 16(a1)
	lw	a3, -392(s0)
	slli	a3, a3, 3
	add	a2, a2, a3
	sd	a0, 0(a2)
	ld	a0, 24(a1)
	lw	a2, -396(s0)
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a1, 32(a1)
	lw	a2, -392(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB6_13
.LBB6_13:                               #   in Loop: Header=BB6_11 Depth=1
	lw	a0, -392(s0)
	addiw	a0, a0, 1
	sw	a0, -392(s0)
	j	.LBB6_11
.LBB6_14:
	ld	a0, -384(s0)
	call	free
	lw	a0, -284(s0)
	lw	a1, -280(s0)
	mulw	a0, a0, a1
	sw	a0, -400(s0)
	li	a0, 0
	sw	a0, -404(s0)
	j	.LBB6_15
.LBB6_15:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -404(s0)
	lw	a1, -400(s0)
	bge	a0, a1, .LBB6_18
	j	.LBB6_16
.LBB6_16:                               #   in Loop: Header=BB6_15 Depth=1
	ld	a0, -312(s0)
	lw	a1, -404(s0)
	slli	a1, a1, 3
	add	a1, a1, a0
	li	a0, 0
	sw	a0, 0(a1)
	ld	a1, -312(s0)
	lw	a2, -404(s0)
	slli	a2, a2, 3
	add	a1, a1, a2
	sw	a0, 4(a1)
	j	.LBB6_17
.LBB6_17:                               #   in Loop: Header=BB6_15 Depth=1
	lw	a0, -404(s0)
	addiw	a0, a0, 1
	sw	a0, -404(s0)
	j	.LBB6_15
.LBB6_18:
	lw	a1, -348(s0)
	li	a0, 0
	bge	a0, a1, .LBB6_20
	j	.LBB6_19
.LBB6_19:
	lw	a0, -348(s0)
.Lpcrel_hi4:
	auipc	a1, %pcrel_hi(binningState)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi4)
	ld	a1, 16(a1)
	ld	a2, -312(s0)
	call	cpu_rasterizer_identifyTileRanges
	j	.LBB6_20
.LBB6_20:
	ld	a0, 0(s0)
	beqz	a0, .LBB6_22
	j	.LBB6_21
.LBB6_21:
	ld	a0, 0(s0)
	sd	a0, -456(s0)                    # 8-byte Folded Spill
	j	.LBB6_23
.LBB6_22:
	ld	a0, -208(s0)
	sd	a0, -456(s0)                    # 8-byte Folded Spill
	j	.LBB6_23
.LBB6_23:
	ld	a0, -456(s0)                    # 8-byte Folded Reload
	sd	a0, -416(s0)
	ld	a2, -312(s0)
.Lpcrel_hi5:
	auipc	a0, %pcrel_hi(binningState)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi5)
	sd	a0, -464(s0)                    # 8-byte Folded Spill
	ld	a3, 32(a0)
	lw	a4, -132(s0)
	lw	a5, -136(s0)
	ld	a6, -232(s0)
	ld	a7, -416(s0)
	ld	t0, -216(s0)
	ld	t2, -296(s0)
	ld	t3, -304(s0)
	ld	t4, -128(s0)
	ld	t5, 72(s0)
	lw	a0, -276(s0)
	sw	a0, -424(s0)
	lwu	a0, -280(s0)
	slli	a0, a0, 32
	lwu	a1, -284(s0)
	or	a0, a0, a1
	sd	a0, -432(s0)
	ld	a1, -424(s0)
	ld	a0, -432(s0)
	mv	t1, sp
	sd	t5, 32(t1)
	sd	t4, 24(t1)
	sd	t3, 16(t1)
	sd	t2, 8(t1)
	sd	t0, 0(t1)
	call	cpu_rasterizer_render
	ld	a0, -264(s0)
	call	free
	ld	a0, -248(s0)
	call	free
	ld	a0, -240(s0)
	call	free
	ld	a0, -232(s0)
	call	free
	ld	a0, -224(s0)
	call	free
	ld	a0, -216(s0)
	call	free
	ld	a0, -208(s0)
	call	free
	ld	a0, -192(s0)
	call	free
	ld	a0, -200(s0)
	call	free
	ld	a0, -296(s0)
	call	free
	ld	a0, -304(s0)
	call	free
	ld	a0, -312(s0)
	call	free
	ld	a0, -464(s0)                    # 8-byte Folded Reload
	ld	a0, 32(a0)
	call	free
	ld	a0, -464(s0)                    # 8-byte Folded Reload
	ld	a0, 24(a0)
	call	free
	ld	a0, -464(s0)                    # 8-byte Folded Reload
	ld	a0, 16(a0)
	call	free
	ld	a0, -464(s0)                    # 8-byte Folded Reload
	ld	a0, 8(a0)
	call	free
	lw	a0, -348(s0)
	ld	ra, 600(sp)                     # 8-byte Folded Reload
	ld	s0, 592(sp)                     # 8-byte Folded Reload
	ld	s1, 584(sp)                     # 8-byte Folded Reload
	ld	s2, 576(sp)                     # 8-byte Folded Reload
	ld	s3, 568(sp)                     # 8-byte Folded Reload
	ld	s4, 560(sp)                     # 8-byte Folded Reload
	ld	s5, 552(sp)                     # 8-byte Folded Reload
	ld	s6, 544(sp)                     # 8-byte Folded Reload
	ld	s7, 536(sp)                     # 8-byte Folded Reload
	ld	s8, 528(sp)                     # 8-byte Folded Reload
	ld	s9, 520(sp)                     # 8-byte Folded Reload
	ld	s10, 512(sp)                    # 8-byte Folded Reload
	ld	s11, 504(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 608
	ret
.Lfunc_end6:
	.size	cpu_rasterizer_forward, .Lfunc_end6-cpu_rasterizer_forward
	.cfi_endproc
                                        # -- End function
	.type	binningState,@object            # @binningState
	.bss
	.globl	binningState
	.p2align	3, 0x0
binningState:
	.zero	48
	.size	binningState, 48

	.ident	"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cpu_rasterizer_getHigherMsb
	.addrsig_sym cpu_rasterizer_checkFrustum
	.addrsig_sym cpu_rasterizer_in_frustum
	.addrsig_sym cpu_rasterizer_duplicateWithKeys
	.addrsig_sym cpu_rasterizer_getRect
	.addrsig_sym cpu_rasterizer_identifyTileRanges
	.addrsig_sym cpu_rasterizer_compare_keys
	.addrsig_sym malloc
	.addrsig_sym cpu_rasterizer_preprocess
	.addrsig_sym qsort
	.addrsig_sym free
	.addrsig_sym cpu_rasterizer_render
	.addrsig_sym binningState
