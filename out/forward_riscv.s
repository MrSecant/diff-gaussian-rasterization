	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.file	"forward.c"
	.section	.sdata,"aw",@progbits
	.p2align	2, 0x0                          # -- Begin function computeColorFromSH
.LCPI0_0:
	.word	0x3e906ebb                      # float 0.282094806
.LCPI0_1:
	.word	0x3efa2a1c                      # float 0.488602519
	.text
	.globl	computeColorFromSH
	.p2align	1
	.type	computeColorFromSH,@function
computeColorFromSH:                     # @computeColorFromSH
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -496
	.cfi_def_cfa_offset 496
	sd	ra, 488(sp)                     # 8-byte Folded Spill
	sd	s0, 480(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 496
	.cfi_def_cfa s0, 0
	addi	sp, sp, -1744
	addi	t0, s0, -2048
	addi	t0, t0, -104
	lui	t1, 1
	sub	t1, s0, t1
	sd	t0, 1920(t1)                    # 8-byte Folded Spill
                                        # kill: def $x5 killed $x15
                                        # kill: def $x5 killed $x14
                                        # kill: def $x5 killed $x12
                                        # kill: def $x5 killed $x11
                                        # kill: def $x5 killed $x10
	sd	a5, -64(s0)
	sd	a4, -72(s0)
	lw	a4, -64(s0)
	sw	a4, -48(s0)
	ld	a4, -72(s0)
	sd	a4, -56(s0)
	sw	a0, -76(s0)
	sw	a1, -80(s0)
	sw	a2, -84(s0)
	sd	a3, -96(s0)
	sd	a6, -104(s0)
	sd	a7, -112(s0)
	ld	a0, -96(s0)
	lw	a1, -76(s0)
	li	a2, 12
	lui	a3, 1
	sub	a3, s0, a3
	sd	a2, 1928(a3)                    # 8-byte Folded Spill
	mul	a1, a1, a2
	add	a0, a0, a1
	lw	a1, 8(a0)
	sw	a1, -120(s0)
	lwu	a1, 0(a0)
	lwu	a0, 4(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -128(s0)
	lw	a0, -120(s0)
	sw	a0, -152(s0)
	ld	a0, -128(s0)
	sd	a0, -160(s0)
	ld	a1, -152(s0)
	ld	a0, -160(s0)
	lw	a2, -48(s0)
	sw	a2, -168(s0)
	ld	a2, -56(s0)
	sd	a2, -176(s0)
	ld	a3, -168(s0)
	ld	a2, -176(s0)
	call	vec3_sub
	sd	a1, -184(s0)
	sd	a0, -192(s0)
	lw	a0, -184(s0)
	sw	a0, -136(s0)
	ld	a0, -192(s0)
	sd	a0, -144(s0)
	lw	a0, -136(s0)
	sw	a0, -208(s0)
	ld	a0, -144(s0)
	sd	a0, -216(s0)
	ld	a1, -208(s0)
	ld	a0, -216(s0)
	call	vec3_length
	fsw	fa0, -196(s0)
	flw	fa0, -196(s0)
	lw	a0, -136(s0)
	sw	a0, -240(s0)
	ld	a0, -144(s0)
	sd	a0, -248(s0)
	ld	a1, -240(s0)
	ld	a0, -248(s0)
	call	vec3_div_scalar
	lui	a2, 1
	sub	a2, s0, a2
	ld	a2, 1928(a2)                    # 8-byte Folded Reload
	sd	a1, -256(s0)
	sd	a0, -264(s0)
	lw	a0, -256(s0)
	sw	a0, -224(s0)
	ld	a0, -264(s0)
	sd	a0, -232(s0)
	lw	a0, -224(s0)
	sw	a0, -136(s0)
	ld	a0, -232(s0)
	sd	a0, -144(s0)
	ld	a0, -104(s0)
	lw	a1, -76(s0)
	lw	a3, -84(s0)
	mulw	a1, a1, a3
	mul	a1, a1, a2
	add	a0, a0, a1
	sd	a0, -272(s0)
	ld	a0, -272(s0)
	lw	a1, 8(a0)
	sw	a1, -280(s0)
	lwu	a1, 0(a0)
	lwu	a0, 4(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -288(s0)
	ld	a1, -280(s0)
	ld	a0, -288(s0)
.Lpcrel_hi0:
	auipc	a2, %pcrel_hi(.LCPI0_0)
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi0)
	flw	fa0, 0(a2)
	call	vec3_mul_scalar
	sd	a1, -296(s0)
	sd	a0, -304(s0)
	lw	a0, -296(s0)
	sw	a0, -32(s0)
	ld	a0, -304(s0)
	sd	a0, -40(s0)
	lw	a1, -80(s0)
	li	a0, 0
	bge	a0, a1, .LBB0_6
	j	.LBB0_1
.LBB0_1:
	flw	fa5, -144(s0)
	fsw	fa5, -308(s0)
	flw	fa5, -140(s0)
	fsw	fa5, -312(s0)
	flw	fa5, -136(s0)
	fsw	fa5, -316(s0)
	ld	a0, -272(s0)
	flw	fa5, -312(s0)
.Lpcrel_hi1:
	auipc	a1, %pcrel_hi(.LCPI0_1)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi1)
	flw	fa4, 0(a1)
	lui	a1, 1
	sub	a1, s0, a1
	fsw	fa4, 1916(a1)                   # 4-byte Folded Spill
	fmul.s	fa0, fa5, fa4
	lw	a1, 20(a0)
	sw	a1, -352(s0)
	lwu	a1, 12(a0)
	lwu	a0, 16(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -360(s0)
	ld	a1, -352(s0)
	ld	a0, -360(s0)
	call	vec3_mul_scalar
	sd	a1, -368(s0)
	sd	a0, -376(s0)
	lw	a0, -368(s0)
	sw	a0, -336(s0)
	ld	a0, -376(s0)
	sd	a0, -344(s0)
	lw	a0, -32(s0)
	sw	a0, -384(s0)
	ld	a0, -40(s0)
	sd	a0, -392(s0)
	ld	a1, -384(s0)
	ld	a0, -392(s0)
	lw	a2, -336(s0)
	sw	a2, -400(s0)
	ld	a2, -344(s0)
	sd	a2, -408(s0)
	ld	a3, -400(s0)
	ld	a2, -408(s0)
	call	vec3_sub
	lui	a2, 1
	sub	a2, s0, a2
	flw	fa4, 1916(a2)                   # 4-byte Folded Reload
	sd	a1, -416(s0)
	sd	a0, -424(s0)
	lw	a0, -416(s0)
	sw	a0, -320(s0)
	ld	a0, -424(s0)
	sd	a0, -328(s0)
	lw	a0, -320(s0)
	sw	a0, -32(s0)
	ld	a0, -328(s0)
	sd	a0, -40(s0)
	ld	a0, -272(s0)
	flw	fa5, -316(s0)
	fmul.s	fa0, fa5, fa4
	lw	a1, 32(a0)
	sw	a1, -464(s0)
	lwu	a1, 24(a0)
	lwu	a0, 28(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -472(s0)
	ld	a1, -464(s0)
	ld	a0, -472(s0)
	call	vec3_mul_scalar
	sd	a1, -480(s0)
	sd	a0, -488(s0)
	lw	a0, -480(s0)
	sw	a0, -448(s0)
	ld	a0, -488(s0)
	sd	a0, -456(s0)
	lw	a0, -32(s0)
	sw	a0, -496(s0)
	ld	a0, -40(s0)
	sd	a0, -504(s0)
	ld	a1, -496(s0)
	ld	a0, -504(s0)
	lw	a2, -448(s0)
	sw	a2, -512(s0)
	ld	a2, -456(s0)
	sd	a2, -520(s0)
	ld	a3, -512(s0)
	ld	a2, -520(s0)
	call	vec3_add
	lui	a2, 1
	sub	a2, s0, a2
	flw	fa4, 1916(a2)                   # 4-byte Folded Reload
	sd	a1, -528(s0)
	sd	a0, -536(s0)
	lw	a0, -528(s0)
	sw	a0, -432(s0)
	ld	a0, -536(s0)
	sd	a0, -440(s0)
	lw	a0, -432(s0)
	sw	a0, -32(s0)
	ld	a0, -440(s0)
	sd	a0, -40(s0)
	ld	a0, -272(s0)
	flw	fa5, -308(s0)
	fmul.s	fa0, fa5, fa4
	lw	a1, 44(a0)
	sw	a1, -576(s0)
	lwu	a1, 36(a0)
	lwu	a0, 40(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -584(s0)
	ld	a1, -576(s0)
	ld	a0, -584(s0)
	call	vec3_mul_scalar
	sd	a1, -592(s0)
	sd	a0, -600(s0)
	lw	a0, -592(s0)
	sw	a0, -560(s0)
	ld	a0, -600(s0)
	sd	a0, -568(s0)
	lw	a0, -32(s0)
	sw	a0, -608(s0)
	ld	a0, -40(s0)
	sd	a0, -616(s0)
	ld	a1, -608(s0)
	ld	a0, -616(s0)
	lw	a2, -560(s0)
	sw	a2, -624(s0)
	ld	a2, -568(s0)
	sd	a2, -632(s0)
	ld	a3, -624(s0)
	ld	a2, -632(s0)
	call	vec3_sub
	sd	a1, -640(s0)
	sd	a0, -648(s0)
	lw	a0, -640(s0)
	sw	a0, -544(s0)
	ld	a0, -648(s0)
	sd	a0, -552(s0)
	lw	a0, -544(s0)
	sw	a0, -32(s0)
	ld	a0, -552(s0)
	sd	a0, -40(s0)
	lw	a0, -80(s0)
	li	a1, 2
	blt	a0, a1, .LBB0_5
	j	.LBB0_2
.LBB0_2:
	flw	fa5, -308(s0)
	fmul.s	fa5, fa5, fa5
	fsw	fa5, -652(s0)
	flw	fa5, -312(s0)
	fmul.s	fa5, fa5, fa5
	fsw	fa5, -656(s0)
	flw	fa5, -316(s0)
	fmul.s	fa5, fa5, fa5
	fsw	fa5, -660(s0)
	flw	fa5, -308(s0)
	flw	fa4, -312(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -664(s0)
	flw	fa5, -312(s0)
	flw	fa4, -316(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -668(s0)
	flw	fa5, -308(s0)
	flw	fa4, -316(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -672(s0)
	ld	a0, -272(s0)
.Lpcrel_hi2:
	auipc	a1, %pcrel_hi(SH_C2)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi2)
	lui	a2, 1
	sub	a2, s0, a2
	sd	a1, 1904(a2)                    # 8-byte Folded Spill
	flw	fa5, 0(a1)
	flw	fa4, -664(s0)
	fmul.s	fa0, fa5, fa4
	lw	a1, 56(a0)
	sw	a1, -712(s0)
	lwu	a1, 48(a0)
	lwu	a0, 52(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -720(s0)
	ld	a1, -712(s0)
	ld	a0, -720(s0)
	call	vec3_mul_scalar
	sd	a1, -728(s0)
	sd	a0, -736(s0)
	lw	a0, -728(s0)
	sw	a0, -696(s0)
	ld	a0, -736(s0)
	sd	a0, -704(s0)
	lw	a0, -32(s0)
	sw	a0, -744(s0)
	ld	a0, -40(s0)
	sd	a0, -752(s0)
	ld	a1, -744(s0)
	ld	a0, -752(s0)
	lw	a2, -696(s0)
	sw	a2, -760(s0)
	ld	a2, -704(s0)
	sd	a2, -768(s0)
	ld	a3, -760(s0)
	ld	a2, -768(s0)
	call	vec3_add
	mv	a2, a1
	lui	a1, 1
	sub	a1, s0, a1
	ld	a1, 1904(a1)                    # 8-byte Folded Reload
	sd	a2, -776(s0)
	sd	a0, -784(s0)
	lw	a0, -776(s0)
	sw	a0, -680(s0)
	ld	a0, -784(s0)
	sd	a0, -688(s0)
	lw	a0, -680(s0)
	sw	a0, -32(s0)
	ld	a0, -688(s0)
	sd	a0, -40(s0)
	ld	a0, -272(s0)
	flw	fa5, 4(a1)
	flw	fa4, -668(s0)
	fmul.s	fa0, fa5, fa4
	lw	a1, 68(a0)
	sw	a1, -824(s0)
	lwu	a1, 60(a0)
	lwu	a0, 64(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -832(s0)
	ld	a1, -824(s0)
	ld	a0, -832(s0)
	call	vec3_mul_scalar
	sd	a1, -840(s0)
	sd	a0, -848(s0)
	lw	a0, -840(s0)
	sw	a0, -808(s0)
	ld	a0, -848(s0)
	sd	a0, -816(s0)
	lw	a0, -32(s0)
	sw	a0, -856(s0)
	ld	a0, -40(s0)
	sd	a0, -864(s0)
	ld	a1, -856(s0)
	ld	a0, -864(s0)
	lw	a2, -808(s0)
	sw	a2, -872(s0)
	ld	a2, -816(s0)
	sd	a2, -880(s0)
	ld	a3, -872(s0)
	ld	a2, -880(s0)
	call	vec3_add
	mv	a2, a1
	lui	a1, 1
	sub	a1, s0, a1
	ld	a1, 1904(a1)                    # 8-byte Folded Reload
	sd	a2, -888(s0)
	sd	a0, -896(s0)
	lw	a0, -888(s0)
	sw	a0, -792(s0)
	ld	a0, -896(s0)
	sd	a0, -800(s0)
	lw	a0, -792(s0)
	sw	a0, -32(s0)
	ld	a0, -800(s0)
	sd	a0, -40(s0)
	ld	a0, -272(s0)
	flw	fa5, 8(a1)
	flw	fa4, -660(s0)
	flw	fa2, -652(s0)
	lui	a1, 262144
	fmv.w.x	fa3, a1
	fmsub.s	fa4, fa4, fa3, fa2
	flw	fa3, -656(s0)
	fsub.s	fa4, fa4, fa3
	fmul.s	fa0, fa5, fa4
	lw	a1, 80(a0)
	sw	a1, -936(s0)
	lwu	a1, 72(a0)
	lwu	a0, 76(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -944(s0)
	ld	a1, -936(s0)
	ld	a0, -944(s0)
	call	vec3_mul_scalar
	sd	a1, -952(s0)
	sd	a0, -960(s0)
	lw	a0, -952(s0)
	sw	a0, -920(s0)
	ld	a0, -960(s0)
	sd	a0, -928(s0)
	lw	a0, -32(s0)
	sw	a0, -968(s0)
	ld	a0, -40(s0)
	sd	a0, -976(s0)
	ld	a1, -968(s0)
	ld	a0, -976(s0)
	lw	a2, -920(s0)
	sw	a2, -984(s0)
	ld	a2, -928(s0)
	sd	a2, -992(s0)
	ld	a3, -984(s0)
	ld	a2, -992(s0)
	call	vec3_add
	mv	a2, a1
	lui	a1, 1
	sub	a1, s0, a1
	ld	a1, 1904(a1)                    # 8-byte Folded Reload
	sd	a2, -1000(s0)
	sd	a0, -1008(s0)
	lw	a0, -1000(s0)
	sw	a0, -904(s0)
	ld	a0, -1008(s0)
	sd	a0, -912(s0)
	lw	a0, -904(s0)
	sw	a0, -32(s0)
	ld	a0, -912(s0)
	sd	a0, -40(s0)
	ld	a0, -272(s0)
	flw	fa5, 12(a1)
	flw	fa4, -672(s0)
	fmul.s	fa0, fa5, fa4
	lw	a1, 92(a0)
	sw	a1, -1048(s0)
	lwu	a1, 84(a0)
	lwu	a0, 88(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -1056(s0)
	ld	a1, -1048(s0)
	ld	a0, -1056(s0)
	call	vec3_mul_scalar
	sd	a1, -1064(s0)
	sd	a0, -1072(s0)
	lw	a0, -1064(s0)
	sw	a0, -1032(s0)
	ld	a0, -1072(s0)
	sd	a0, -1040(s0)
	lw	a0, -32(s0)
	sw	a0, -1080(s0)
	ld	a0, -40(s0)
	sd	a0, -1088(s0)
	ld	a1, -1080(s0)
	ld	a0, -1088(s0)
	lw	a2, -1032(s0)
	sw	a2, -1096(s0)
	ld	a2, -1040(s0)
	sd	a2, -1104(s0)
	ld	a3, -1096(s0)
	ld	a2, -1104(s0)
	call	vec3_add
	mv	a2, a1
	lui	a1, 1
	sub	a1, s0, a1
	ld	a1, 1904(a1)                    # 8-byte Folded Reload
	sd	a2, -1112(s0)
	sd	a0, -1120(s0)
	lw	a0, -1112(s0)
	sw	a0, -1016(s0)
	ld	a0, -1120(s0)
	sd	a0, -1024(s0)
	lw	a0, -1016(s0)
	sw	a0, -32(s0)
	ld	a0, -1024(s0)
	sd	a0, -40(s0)
	ld	a0, -272(s0)
	flw	fa5, 16(a1)
	flw	fa4, -652(s0)
	flw	fa3, -656(s0)
	fsub.s	fa4, fa4, fa3
	fmul.s	fa0, fa5, fa4
	lw	a1, 104(a0)
	sw	a1, -1160(s0)
	lwu	a1, 96(a0)
	lwu	a0, 100(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -1168(s0)
	ld	a1, -1160(s0)
	ld	a0, -1168(s0)
	call	vec3_mul_scalar
	sd	a1, -1176(s0)
	sd	a0, -1184(s0)
	lw	a0, -1176(s0)
	sw	a0, -1144(s0)
	ld	a0, -1184(s0)
	sd	a0, -1152(s0)
	lw	a0, -32(s0)
	sw	a0, -1192(s0)
	ld	a0, -40(s0)
	sd	a0, -1200(s0)
	ld	a1, -1192(s0)
	ld	a0, -1200(s0)
	lw	a2, -1144(s0)
	sw	a2, -1208(s0)
	ld	a2, -1152(s0)
	sd	a2, -1216(s0)
	ld	a3, -1208(s0)
	ld	a2, -1216(s0)
	call	vec3_add
	sd	a1, -1224(s0)
	sd	a0, -1232(s0)
	lw	a0, -1224(s0)
	sw	a0, -1128(s0)
	ld	a0, -1232(s0)
	sd	a0, -1136(s0)
	lw	a0, -1128(s0)
	sw	a0, -32(s0)
	ld	a0, -1136(s0)
	sd	a0, -40(s0)
	lw	a0, -80(s0)
	li	a1, 3
	blt	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	ld	a0, -272(s0)
.Lpcrel_hi3:
	auipc	a1, %pcrel_hi(SH_C3)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi3)
	lui	a2, 1
	sub	a2, s0, a2
	sd	a1, 1872(a2)                    # 8-byte Folded Spill
	flw	fa5, 0(a1)
	flw	fa4, -312(s0)
	fmul.s	fa5, fa5, fa4
	flw	fa4, -652(s0)
	flw	fa2, -656(s0)
	lui	a1, 263168
	fmv.w.x	fa3, a1
	fmsub.s	fa4, fa4, fa3, fa2
	fmul.s	fa0, fa5, fa4
	lw	a1, 116(a0)
	sw	a1, -1272(s0)
	lwu	a1, 108(a0)
	lwu	a0, 112(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -1280(s0)
	ld	a1, -1272(s0)
	ld	a0, -1280(s0)
	call	vec3_mul_scalar
	sd	a1, -1288(s0)
	sd	a0, -1296(s0)
	lw	a0, -1288(s0)
	sw	a0, -1256(s0)
	ld	a0, -1296(s0)
	sd	a0, -1264(s0)
	lw	a0, -32(s0)
	sw	a0, -1304(s0)
	ld	a0, -40(s0)
	sd	a0, -1312(s0)
	ld	a1, -1304(s0)
	ld	a0, -1312(s0)
	lw	a2, -1256(s0)
	sw	a2, -1320(s0)
	ld	a2, -1264(s0)
	sd	a2, -1328(s0)
	ld	a3, -1320(s0)
	ld	a2, -1328(s0)
	call	vec3_add
	mv	a2, a1
	lui	a1, 1
	sub	a1, s0, a1
	ld	a1, 1872(a1)                    # 8-byte Folded Reload
	sd	a2, -1336(s0)
	sd	a0, -1344(s0)
	lw	a0, -1336(s0)
	sw	a0, -1240(s0)
	ld	a0, -1344(s0)
	sd	a0, -1248(s0)
	lw	a0, -1240(s0)
	sw	a0, -32(s0)
	ld	a0, -1248(s0)
	sd	a0, -40(s0)
	ld	a0, -272(s0)
	flw	fa5, 4(a1)
	flw	fa4, -664(s0)
	fmul.s	fa5, fa5, fa4
	flw	fa4, -316(s0)
	fmul.s	fa0, fa5, fa4
	lw	a1, 128(a0)
	sw	a1, -1384(s0)
	lwu	a1, 120(a0)
	lwu	a0, 124(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -1392(s0)
	ld	a1, -1384(s0)
	ld	a0, -1392(s0)
	call	vec3_mul_scalar
	sd	a1, -1400(s0)
	sd	a0, -1408(s0)
	lw	a0, -1400(s0)
	sw	a0, -1368(s0)
	ld	a0, -1408(s0)
	sd	a0, -1376(s0)
	lw	a0, -32(s0)
	sw	a0, -1416(s0)
	ld	a0, -40(s0)
	sd	a0, -1424(s0)
	ld	a1, -1416(s0)
	ld	a0, -1424(s0)
	lw	a2, -1368(s0)
	sw	a2, -1432(s0)
	ld	a2, -1376(s0)
	sd	a2, -1440(s0)
	ld	a3, -1432(s0)
	ld	a2, -1440(s0)
	call	vec3_add
	mv	a2, a1
	lui	a1, 1
	sub	a1, s0, a1
	ld	a1, 1872(a1)                    # 8-byte Folded Reload
	sd	a2, -1448(s0)
	sd	a0, -1456(s0)
	lw	a0, -1448(s0)
	sw	a0, -1352(s0)
	ld	a0, -1456(s0)
	sd	a0, -1360(s0)
	lw	a0, -1352(s0)
	sw	a0, -32(s0)
	ld	a0, -1360(s0)
	sd	a0, -40(s0)
	ld	a0, -272(s0)
	flw	fa5, 8(a1)
	flw	fa4, -312(s0)
	fmul.s	fa5, fa5, fa4
	flw	fa4, -660(s0)
	flw	fa2, -652(s0)
	lui	a1, 264192
	fmv.w.x	fa3, a1
	lui	a1, 1
	sub	a1, s0, a1
	fsw	fa3, 1868(a1)                   # 4-byte Folded Spill
	fmsub.s	fa4, fa4, fa3, fa2
	flw	fa3, -656(s0)
	fsub.s	fa4, fa4, fa3
	fmul.s	fa0, fa5, fa4
	lw	a1, 140(a0)
	sw	a1, -1496(s0)
	lwu	a1, 132(a0)
	lwu	a0, 136(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -1504(s0)
	ld	a1, -1496(s0)
	ld	a0, -1504(s0)
	call	vec3_mul_scalar
	sd	a1, -1512(s0)
	sd	a0, -1520(s0)
	lw	a0, -1512(s0)
	sw	a0, -1480(s0)
	ld	a0, -1520(s0)
	sd	a0, -1488(s0)
	lw	a0, -32(s0)
	sw	a0, -1528(s0)
	ld	a0, -40(s0)
	sd	a0, -1536(s0)
	ld	a1, -1528(s0)
	ld	a0, -1536(s0)
	lw	a2, -1480(s0)
	sw	a2, -1544(s0)
	ld	a2, -1488(s0)
	sd	a2, -1552(s0)
	ld	a3, -1544(s0)
	ld	a2, -1552(s0)
	call	vec3_add
	mv	a2, a1
	lui	a1, 1
	sub	a1, s0, a1
	ld	a1, 1872(a1)                    # 8-byte Folded Reload
	sd	a2, -1560(s0)
	sd	a0, -1568(s0)
	lw	a0, -1560(s0)
	sw	a0, -1464(s0)
	ld	a0, -1568(s0)
	sd	a0, -1472(s0)
	lw	a0, -1464(s0)
	sw	a0, -32(s0)
	ld	a0, -1472(s0)
	sd	a0, -40(s0)
	ld	a0, -272(s0)
	flw	fa5, 12(a1)
	flw	fa4, -316(s0)
	fmul.s	fa5, fa5, fa4
	flw	fa4, -660(s0)
	flw	fa2, -652(s0)
	lui	a1, 787456
	fmv.w.x	fa3, a1
	lui	a1, 1
	sub	a1, s0, a1
	fsw	fa3, 1884(a1)                   # 4-byte Folded Spill
	fmul.s	fa1, fa2, fa3
	lui	a1, 262144
	fmv.w.x	fa2, a1
	fmadd.s	fa2, fa4, fa2, fa1
	flw	fa4, -656(s0)
	fmadd.s	fa4, fa4, fa3, fa2
	fmul.s	fa0, fa5, fa4
	lw	a1, 152(a0)
	sw	a1, -1608(s0)
	lwu	a1, 144(a0)
	lwu	a0, 148(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -1616(s0)
	ld	a1, -1608(s0)
	ld	a0, -1616(s0)
	call	vec3_mul_scalar
	sd	a1, -1624(s0)
	sd	a0, -1632(s0)
	lw	a0, -1624(s0)
	sw	a0, -1592(s0)
	ld	a0, -1632(s0)
	sd	a0, -1600(s0)
	lw	a0, -32(s0)
	sw	a0, -1640(s0)
	ld	a0, -40(s0)
	sd	a0, -1648(s0)
	ld	a1, -1640(s0)
	ld	a0, -1648(s0)
	lw	a2, -1592(s0)
	sw	a2, -1656(s0)
	ld	a2, -1600(s0)
	sd	a2, -1664(s0)
	ld	a3, -1656(s0)
	ld	a2, -1664(s0)
	call	vec3_add
	lui	a2, 1
	sub	a2, s0, a2
	flw	fa3, 1868(a2)                   # 4-byte Folded Reload
	mv	a2, a1
	lui	a1, 1
	sub	a1, s0, a1
	ld	a1, 1872(a1)                    # 8-byte Folded Reload
	sd	a2, -1672(s0)
	sd	a0, -1680(s0)
	lw	a0, -1672(s0)
	sw	a0, -1576(s0)
	ld	a0, -1680(s0)
	sd	a0, -1584(s0)
	lw	a0, -1576(s0)
	sw	a0, -32(s0)
	ld	a0, -1584(s0)
	sd	a0, -40(s0)
	ld	a0, -272(s0)
	flw	fa5, 16(a1)
	flw	fa4, -308(s0)
	fmul.s	fa5, fa5, fa4
	flw	fa4, -660(s0)
	flw	fa2, -652(s0)
	fmsub.s	fa4, fa4, fa3, fa2
	flw	fa3, -656(s0)
	fsub.s	fa4, fa4, fa3
	fmul.s	fa0, fa5, fa4
	lw	a1, 164(a0)
	sw	a1, -1720(s0)
	lwu	a1, 156(a0)
	lwu	a0, 160(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -1728(s0)
	ld	a1, -1720(s0)
	ld	a0, -1728(s0)
	call	vec3_mul_scalar
	sd	a1, -1736(s0)
	sd	a0, -1744(s0)
	lw	a0, -1736(s0)
	sw	a0, -1704(s0)
	ld	a0, -1744(s0)
	sd	a0, -1712(s0)
	lw	a0, -32(s0)
	sw	a0, -1752(s0)
	ld	a0, -40(s0)
	sd	a0, -1760(s0)
	ld	a1, -1752(s0)
	ld	a0, -1760(s0)
	lw	a2, -1704(s0)
	sw	a2, -1768(s0)
	ld	a2, -1712(s0)
	sd	a2, -1776(s0)
	ld	a3, -1768(s0)
	ld	a2, -1776(s0)
	call	vec3_add
	mv	a2, a1
	lui	a1, 1
	sub	a1, s0, a1
	ld	a1, 1872(a1)                    # 8-byte Folded Reload
	sd	a2, -1784(s0)
	sd	a0, -1792(s0)
	lw	a0, -1784(s0)
	sw	a0, -1688(s0)
	ld	a0, -1792(s0)
	sd	a0, -1696(s0)
	lw	a0, -1688(s0)
	sw	a0, -32(s0)
	ld	a0, -1696(s0)
	sd	a0, -40(s0)
	ld	a0, -272(s0)
	flw	fa5, 20(a1)
	flw	fa4, -316(s0)
	fmul.s	fa5, fa5, fa4
	flw	fa4, -652(s0)
	flw	fa3, -656(s0)
	fsub.s	fa4, fa4, fa3
	fmul.s	fa0, fa5, fa4
	lw	a1, 176(a0)
	sw	a1, -1832(s0)
	lwu	a1, 168(a0)
	lwu	a0, 172(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -1840(s0)
	ld	a1, -1832(s0)
	ld	a0, -1840(s0)
	call	vec3_mul_scalar
	lui	a2, 1
	sub	a2, s0, a2
	ld	a2, 1920(a2)                    # 8-byte Folded Reload
	sd	a1, -1848(s0)
	sd	a0, -1856(s0)
	lw	a0, -1848(s0)
	sw	a0, -1816(s0)
	ld	a0, -1856(s0)
	sd	a0, -1824(s0)
	lw	a0, -32(s0)
	sw	a0, -1864(s0)
	ld	a0, -40(s0)
	sd	a0, -1872(s0)
	ld	a1, -1864(s0)
	ld	a0, -1872(s0)
	lw	a3, -1816(s0)
	sw	a3, -1880(s0)
	ld	a3, -1824(s0)
	sd	a3, 264(a2)
	ld	a3, -1880(s0)
	ld	a2, 264(a2)
	call	vec3_add
	lui	a2, 1
	sub	a2, s0, a2
	ld	a2, 1872(a2)                    # 8-byte Folded Reload
	lui	a3, 1
	sub	a3, s0, a3
	flw	fa3, 1884(a3)                   # 4-byte Folded Reload
	mv	a3, a0
	lui	a0, 1
	sub	a0, s0, a0
	ld	a0, 1920(a0)                    # 8-byte Folded Reload
	lui	a4, 1
	sub	a4, s0, a4
	sd	a3, 1888(a4)                    # 8-byte Folded Spill
	mv	a3, a1
	lui	a1, 1
	sub	a1, s0, a1
	ld	a1, 1888(a1)                    # 8-byte Folded Reload
	sd	a3, 256(a0)
	sd	a1, 248(a0)
	lw	a1, 256(a0)
	sw	a1, -1800(s0)
	ld	a1, 248(a0)
	sd	a1, -1808(s0)
	lw	a1, -1800(s0)
	sw	a1, -32(s0)
	ld	a1, -1808(s0)
	sd	a1, -40(s0)
	ld	a1, -272(s0)
	flw	fa5, 24(a2)
	flw	fa4, -308(s0)
	fmul.s	fa5, fa5, fa4
	flw	fa2, -652(s0)
	flw	fa4, -656(s0)
	fmadd.s	fa4, fa4, fa3, fa2
	fmul.s	fa0, fa5, fa4
	lw	a2, 188(a1)
	sw	a2, 208(a0)
	lwu	a2, 180(a1)
	lwu	a1, 184(a1)
	slli	a1, a1, 32
	or	a1, a1, a2
	sd	a1, 200(a0)
	ld	a1, 208(a0)
	ld	a0, 200(a0)
	call	vec3_mul_scalar
	lui	a2, 1
	sub	a2, s0, a2
	ld	a2, 1920(a2)                    # 8-byte Folded Reload
	sd	a1, 192(a2)
	sd	a0, 184(a2)
	lw	a0, 192(a2)
	sw	a0, 224(a2)
	ld	a0, 184(a2)
	sd	a0, 216(a2)
	lw	a0, -32(s0)
	sw	a0, 176(a2)
	ld	a0, -40(s0)
	sd	a0, 168(a2)
	ld	a1, 176(a2)
	ld	a0, 168(a2)
	lw	a3, 224(a2)
	sw	a3, 160(a2)
	ld	a3, 216(a2)
	sd	a3, 152(a2)
	ld	a3, 160(a2)
	ld	a2, 152(a2)
	call	vec3_add
	mv	a2, a0
	lui	a0, 1
	sub	a0, s0, a0
	ld	a0, 1920(a0)                    # 8-byte Folded Reload
	lui	a3, 1
	sub	a3, s0, a3
	sd	a2, 1896(a3)                    # 8-byte Folded Spill
	mv	a2, a1
	lui	a1, 1
	sub	a1, s0, a1
	ld	a1, 1896(a1)                    # 8-byte Folded Reload
	sd	a2, 144(a0)
	sd	a1, 136(a0)
	lw	a1, 144(a0)
	sw	a1, 240(a0)
	ld	a1, 136(a0)
	sd	a1, 232(a0)
	lw	a1, 240(a0)
	sw	a1, -32(s0)
	ld	a0, 232(a0)
	sd	a0, -40(s0)
	j	.LBB0_4
.LBB0_4:
	j	.LBB0_5
.LBB0_5:
	j	.LBB0_6
.LBB0_6:
	lui	a0, 1
	sub	a0, s0, a0
	ld	a2, 1920(a0)                    # 8-byte Folded Reload
	lui	a0, 258048
	sw	a0, 108(a2)
	sw	a0, 112(a2)
	sw	a0, 116(a2)
	lw	a0, -32(s0)
	sw	a0, 96(a2)
	ld	a0, -40(s0)
	sd	a0, 88(a2)
	ld	a1, 96(a2)
	ld	a0, 88(a2)
	lw	a3, 116(a2)
	sw	a3, 80(a2)
	lwu	a3, 112(a2)
	slli	a3, a3, 32
	lwu	a4, 108(a2)
	or	a3, a3, a4
	sd	a3, 72(a2)
	ld	a3, 80(a2)
	ld	a2, 72(a2)
	call	vec3_add
	mv	a2, a0
	lui	a0, 1
	sub	a0, s0, a0
	ld	a0, 1920(a0)                    # 8-byte Folded Reload
	lui	a3, 1
	sub	a3, s0, a3
	sd	a2, 1856(a3)                    # 8-byte Folded Spill
	mv	a2, a1
	lui	a1, 1
	sub	a1, s0, a1
	ld	a1, 1856(a1)                    # 8-byte Folded Reload
	sd	a2, 64(a0)
	sd	a1, 56(a0)
	lw	a1, 64(a0)
	sw	a1, 128(a0)
	ld	a1, 56(a0)
	sd	a1, 120(a0)
	lw	a1, 128(a0)
	sw	a1, -32(s0)
	ld	a1, 120(a0)
	sd	a1, -40(s0)
	flw	fa5, -40(s0)
	fmv.w.x	fa0, zero
	flt.s	a1, fa5, fa0
	ld	a2, -112(s0)
	lw	a4, -76(s0)
	slliw	a3, a4, 1
	addw	a3, a3, a4
	slli	a3, a3, 2
	add	a2, a2, a3
	sw	a1, 0(a2)
	flw	fa5, -36(s0)
	flt.s	a1, fa5, fa0
	ld	a3, -112(s0)
	lw	a4, -76(s0)
	slliw	a2, a4, 1
	addw	a2, a2, a4
	slli	a2, a2, 2
	add	a2, a2, a3
	sw	a1, 4(a2)
	flw	fa5, -32(s0)
	flt.s	a1, fa5, fa0
	ld	a3, -112(s0)
	lw	a4, -76(s0)
	slliw	a2, a4, 1
	addw	a2, a2, a4
	slli	a2, a2, 2
	add	a2, a2, a3
	sw	a1, 8(a2)
	lw	a1, -32(s0)
	sw	a1, 32(a0)
	ld	a1, -40(s0)
	sd	a1, 24(a0)
	ld	a1, 32(a0)
	ld	a0, 24(a0)
	call	vec3_max_scalar
	mv	a2, a1
	lui	a1, 1
	sub	a1, s0, a1
	ld	a1, 1920(a1)                    # 8-byte Folded Reload
	sd	a2, 16(a1)
	sd	a0, 8(a1)
	lw	a0, 16(a1)
	sw	a0, 48(a1)
	ld	a0, 8(a1)
	sd	a0, 40(a1)
	lw	a0, 48(a1)
	sw	a0, -32(s0)
	ld	a0, 40(a1)
	sd	a0, -40(s0)
	lw	a0, -32(s0)
	sw	a0, 0(a1)
	ld	a0, -40(s0)
	sd	a0, -8(a1)
	ld	a0, -8(a1)
	ld	a1, 0(a1)
	addi	sp, sp, 1744
	ld	ra, 488(sp)                     # 8-byte Folded Reload
	ld	s0, 480(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 496
	ret
.Lfunc_end0:
	.size	computeColorFromSH, .Lfunc_end0-computeColorFromSH
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function vec3_sub
	.type	vec3_sub,@function
vec3_sub:                               # @vec3_sub
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 112
	.cfi_def_cfa s0, 0
                                        # kill: def $x14 killed $x13
                                        # kill: def $x14 killed $x12
                                        # kill: def $x14 killed $x11
                                        # kill: def $x14 killed $x10
	sd	a1, -48(s0)
	sd	a0, -56(s0)
	lw	a0, -48(s0)
	sw	a0, -32(s0)
	ld	a0, -56(s0)
	sd	a0, -40(s0)
	sd	a3, -80(s0)
	sd	a2, -88(s0)
	lw	a0, -80(s0)
	sw	a0, -64(s0)
	ld	a0, -88(s0)
	sd	a0, -72(s0)
	flw	fa5, -40(s0)
	flw	fa4, -72(s0)
	fsub.s	fa5, fa5, fa4
	fsw	fa5, -28(s0)
	flw	fa5, -36(s0)
	flw	fa4, -68(s0)
	fsub.s	fa5, fa5, fa4
	fsw	fa5, -24(s0)
	flw	fa5, -32(s0)
	flw	fa4, -64(s0)
	fsub.s	fa5, fa5, fa4
	fsw	fa5, -20(s0)
	lw	a0, -20(s0)
	sw	a0, -96(s0)
	lwu	a0, -24(s0)
	slli	a0, a0, 32
	lwu	a1, -28(s0)
	or	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -104(s0)
	ld	a1, -96(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end1:
	.size	vec3_sub, .Lfunc_end1-vec3_sub
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function vec3_length
	.type	vec3_length,@function
vec3_length:                            # @vec3_length
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	lw	a0, -40(s0)
	sw	a0, -24(s0)
	ld	a0, -48(s0)
	sd	a0, -32(s0)
	flw	fa5, -32(s0)
	flw	fa4, -28(s0)
	fmul.s	fa4, fa4, fa4
	fmadd.s	fa4, fa5, fa5, fa4
	flw	fa5, -24(s0)
	fmadd.s	fa5, fa5, fa5, fa4
	fcvt.d.s	fa0, fa5
	call	sqrt
	fcvt.s.d	fa0, fa0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	vec3_length, .Lfunc_end2-vec3_length
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function vec3_div_scalar
	.type	vec3_div_scalar,@function
vec3_div_scalar:                        # @vec3_div_scalar
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
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a1, -48(s0)
	sd	a0, -56(s0)
	lw	a0, -48(s0)
	sw	a0, -32(s0)
	ld	a0, -56(s0)
	sd	a0, -40(s0)
	fsw	fa0, -60(s0)
	flw	fa5, -40(s0)
	flw	fa4, -60(s0)
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, -28(s0)
	flw	fa5, -36(s0)
	flw	fa4, -60(s0)
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, -24(s0)
	flw	fa5, -32(s0)
	flw	fa4, -60(s0)
	fdiv.s	fa5, fa5, fa4
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
	.size	vec3_div_scalar, .Lfunc_end3-vec3_div_scalar
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function vec3_mul_scalar
	.type	vec3_mul_scalar,@function
vec3_mul_scalar:                        # @vec3_mul_scalar
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
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a1, -48(s0)
	sd	a0, -56(s0)
	lw	a0, -48(s0)
	sw	a0, -32(s0)
	ld	a0, -56(s0)
	sd	a0, -40(s0)
	fsw	fa0, -60(s0)
	flw	fa5, -40(s0)
	flw	fa4, -60(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -28(s0)
	flw	fa5, -36(s0)
	flw	fa4, -60(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -24(s0)
	flw	fa5, -32(s0)
	flw	fa4, -60(s0)
	fmul.s	fa5, fa5, fa4
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
.Lfunc_end4:
	.size	vec3_mul_scalar, .Lfunc_end4-vec3_mul_scalar
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function vec3_add
	.type	vec3_add,@function
vec3_add:                               # @vec3_add
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 112
	.cfi_def_cfa s0, 0
                                        # kill: def $x14 killed $x13
                                        # kill: def $x14 killed $x12
                                        # kill: def $x14 killed $x11
                                        # kill: def $x14 killed $x10
	sd	a1, -48(s0)
	sd	a0, -56(s0)
	lw	a0, -48(s0)
	sw	a0, -32(s0)
	ld	a0, -56(s0)
	sd	a0, -40(s0)
	sd	a3, -80(s0)
	sd	a2, -88(s0)
	lw	a0, -80(s0)
	sw	a0, -64(s0)
	ld	a0, -88(s0)
	sd	a0, -72(s0)
	flw	fa5, -40(s0)
	flw	fa4, -72(s0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -28(s0)
	flw	fa5, -36(s0)
	flw	fa4, -68(s0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -24(s0)
	flw	fa5, -32(s0)
	flw	fa4, -64(s0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -20(s0)
	lw	a0, -20(s0)
	sw	a0, -96(s0)
	lwu	a0, -24(s0)
	slli	a0, a0, 32
	lwu	a1, -28(s0)
	or	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -104(s0)
	ld	a1, -96(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end5:
	.size	vec3_add, .Lfunc_end5-vec3_add
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function vec3_max_scalar
	.type	vec3_max_scalar,@function
vec3_max_scalar:                        # @vec3_max_scalar
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
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a1, -48(s0)
	sd	a0, -56(s0)
	lw	a0, -48(s0)
	sw	a0, -32(s0)
	ld	a0, -56(s0)
	sd	a0, -40(s0)
	fsw	fa0, -60(s0)
	flw	fa5, -40(s0)
	fcvt.d.s	fa5, fa5
	flw	fa4, -60(s0)
	fcvt.d.s	fa4, fa4
	fmax.d	fa5, fa5, fa4
	fcvt.s.d	fa5, fa5
	fsw	fa5, -28(s0)
	flw	fa5, -36(s0)
	fcvt.d.s	fa5, fa5
	flw	fa4, -60(s0)
	fcvt.d.s	fa4, fa4
	fmax.d	fa5, fa5, fa4
	fcvt.s.d	fa5, fa5
	fsw	fa5, -24(s0)
	flw	fa5, -32(s0)
	fcvt.d.s	fa5, fa5
	flw	fa4, -60(s0)
	fcvt.d.s	fa4, fa4
	fmax.d	fa5, fa5, fa4
	fcvt.s.d	fa5, fa5
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
.Lfunc_end6:
	.size	vec3_max_scalar, .Lfunc_end6-vec3_max_scalar
	.cfi_endproc
                                        # -- End function
	.section	.sdata,"aw",@progbits
	.p2align	3, 0x0                          # -- Begin function preprocessCPU
.LCPI7_0:
	.word	0x33d6bf95                      # float 1.00000001E-7
	.zero	4
.LCPI7_1:
	.quad	0x3fb99999a0000000              # double 0.10000000149011612
.LCPI7_2:
	.quad	0x4008000000000000              # double 3
.LCPI7_3:
	.quad	0x4330000000000000              # double 4503599627370496
	.text
	.globl	preprocessCPU
	.p2align	1
	.type	preprocessCPU,@function
preprocessCPU:                          # @preprocessCPU
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -480
	.cfi_def_cfa_offset 480
	sd	ra, 472(sp)                     # 8-byte Folded Spill
	sd	s0, 464(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 480
	.cfi_def_cfa s0, 0
	mv	t0, a2
	mv	t1, a1
	mv	t2, a0
	ld	t4, 120(s0)
	ld	t3, 112(s0)
	ld	a0, 136(s0)
	ld	a1, 128(s0)
	ld	a1, 104(s0)
	ld	a1, 96(s0)
	ld	a1, 88(s0)
	ld	a1, 80(s0)
	ld	a1, 72(s0)
	ld	a1, 64(s0)
	ld	a1, 56(s0)
	ld	a2, 48(s0)
	ld	t5, 40(s0)
	ld	t5, 32(s0)
	ld	t5, 24(s0)
	ld	t5, 16(s0)
	ld	t5, 8(s0)
	ld	t5, 0(s0)
                                        # kill: def $x30 killed $x5
                                        # kill: def $x30 killed $x6
                                        # kill: def $x30 killed $x7
	sd	t4, -40(s0)
	sd	t3, -48(s0)
	lw	t3, -40(s0)
	sw	t3, -24(s0)
	ld	t3, -48(s0)
	sd	t3, -32(s0)
	sw	t2, -52(s0)
	sw	t1, -56(s0)
	sw	t0, -60(s0)
	sd	a3, -72(s0)
	sd	a4, -80(s0)
	fsw	fa0, -84(s0)
	sd	a5, -96(s0)
	sd	a6, -104(s0)
	sd	a7, -112(s0)
	sw	a2, -116(s0)
	sw	a1, -120(s0)
	fsw	fa1, -124(s0)
	fsw	fa2, -128(s0)
	fsw	fa3, -132(s0)
	fsw	fa4, -136(s0)
	sw	a0, -140(s0)
	li	a0, 0
	sw	a0, -144(s0)
	j	.LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -144(s0)
	lw	a1, -52(s0)
	bge	a0, a1, .LBB7_17
	j	.LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	ld	a0, 64(s0)
	lw	a1, -144(s0)
	slli	a1, a1, 2
	add	a1, a1, a0
	li	a0, 0
	sw	a0, 0(a1)
	ld	a1, 128(s0)
	lw	a2, -144(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -144(s0)
	ld	a1, -72(s0)
	ld	a2, 24(s0)
	ld	a3, 32(s0)
	lw	a4, -140(s0)
	addi	a5, s0, -156
	call	cpu_rasterizer_in_frustum
	bnez	a0, .LBB7_4
	j	.LBB7_3
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	j	.LBB7_16
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	ld	a0, -72(s0)
	lw	a2, -144(s0)
	slliw	a1, a2, 1
	addw	a1, a1, a2
	slli	a1, a1, 2
	add	a0, a0, a1
	flw	fa5, 0(a0)
	fsw	fa5, -168(s0)
	ld	a1, -72(s0)
	lw	a2, -144(s0)
	slliw	a0, a2, 1
	addw	a0, a0, a2
	slli	a0, a0, 2
	add	a0, a0, a1
	flw	fa5, 4(a0)
	fsw	fa5, -164(s0)
	ld	a1, -72(s0)
	lw	a2, -144(s0)
	slliw	a0, a2, 1
	addw	a0, a0, a2
	slli	a0, a0, 2
	add	a0, a0, a1
	flw	fa5, 8(a0)
	fsw	fa5, -160(s0)
	ld	a2, 32(s0)
	lw	a0, -160(s0)
	sw	a0, -192(s0)
	lwu	a0, -164(s0)
	slli	a0, a0, 32
	lwu	a1, -168(s0)
	or	a0, a0, a1
	sd	a0, -200(s0)
	ld	a1, -192(s0)
	ld	a0, -200(s0)
	call	cpu_rasterizer_transformPoint4x4
	sw	a1, -176(s0)
	srli	a1, a1, 32
	sw	a1, -172(s0)
	sw	a0, -184(s0)
	srli	a0, a0, 32
	sw	a0, -180(s0)
	flw	fa5, -172(s0)
.Lpcrel_hi4:
	auipc	a0, %pcrel_hi(.LCPI7_0)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi4)
	flw	fa4, 0(a0)
	fadd.s	fa4, fa5, fa4
	lui	a0, 260096
	fmv.w.x	fa5, a0
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, -204(s0)
	flw	fa5, -184(s0)
	flw	fa4, -204(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -216(s0)
	flw	fa5, -180(s0)
	flw	fa4, -204(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -212(s0)
	flw	fa5, -176(s0)
	flw	fa4, -204(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -208(s0)
	ld	a0, 8(s0)
	beqz	a0, .LBB7_6
	j	.LBB7_5
.LBB7_5:                                #   in Loop: Header=BB7_1 Depth=1
	ld	a0, 8(s0)
	lw	a1, -144(s0)
	li	a2, 6
	mulw	a1, a1, a2
	slli	a1, a1, 2
	add	a0, a0, a1
	sd	a0, -224(s0)
	j	.LBB7_7
.LBB7_6:                                #   in Loop: Header=BB7_1 Depth=1
	ld	a0, -80(s0)
	lw	a2, -144(s0)
	li	a1, 12
	mul	a1, a2, a1
	add	a0, a0, a1
	flw	fa0, -84(s0)
	ld	a1, -96(s0)
	slli	a3, a2, 4
	add	a3, a3, a1
	ld	a1, 88(s0)
	li	a4, 6
	sd	a4, -456(s0)                    # 8-byte Folded Spill
	mulw	a2, a2, a4
	slli	a2, a2, 2
	add	a4, a1, a2
	lw	a1, 8(a0)
	sw	a1, -232(s0)
	lwu	a1, 0(a0)
	lwu	a0, 4(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -240(s0)
	ld	a1, -232(s0)
	ld	a0, -240(s0)
	lwu	a5, 0(a3)
	lwu	a2, 4(a3)
	slli	a2, a2, 32
	or	a2, a2, a5
	lwu	a5, 8(a3)
	lwu	a3, 12(a3)
	slli	a3, a3, 32
	or	a3, a3, a5
	call	computeCov3D
	ld	a2, -456(s0)                    # 8-byte Folded Reload
	ld	a0, 88(s0)
	lw	a1, -144(s0)
	mulw	a1, a1, a2
	slli	a1, a1, 2
	add	a0, a0, a1
	sd	a0, -224(s0)
	j	.LBB7_7
.LBB7_7:                                #   in Loop: Header=BB7_1 Depth=1
	flw	fa0, -132(s0)
	flw	fa1, -136(s0)
	flw	fa2, -124(s0)
	flw	fa3, -128(s0)
	ld	a2, -224(s0)
	ld	a3, 24(s0)
	lw	a0, -160(s0)
	sw	a0, -264(s0)
	lwu	a0, -164(s0)
	slli	a0, a0, 32
	lwu	a1, -168(s0)
	or	a0, a0, a1
	sd	a0, -272(s0)
	ld	a1, -264(s0)
	ld	a0, -272(s0)
	call	computeCov2D
	sd	a1, -280(s0)
	sd	a0, -288(s0)
	lw	a0, -280(s0)
	sw	a0, -248(s0)
	ld	a0, -288(s0)
	sd	a0, -256(s0)
	flw	fa5, -256(s0)
	flw	fa4, -248(s0)
	flw	fa3, -252(s0)
	fmul.s	fa3, fa3, fa3
	fmsub.s	fa5, fa5, fa4, fa3
	fsw	fa5, -292(s0)
	flw	fa5, -292(s0)
	fmv.w.x	fa4, zero
	feq.s	a0, fa5, fa4
	beqz	a0, .LBB7_9
	j	.LBB7_8
.LBB7_8:                                #   in Loop: Header=BB7_1 Depth=1
	j	.LBB7_16
.LBB7_9:                                #   in Loop: Header=BB7_1 Depth=1
	flw	fa4, -292(s0)
	lui	a0, 260096
	fmv.w.x	fa5, a0
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, -296(s0)
	flw	fa5, -248(s0)
	flw	fa4, -296(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -308(s0)
	flw	fa5, -252(s0)
	fneg.s	fa5, fa5
	flw	fa4, -296(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -304(s0)
	flw	fa5, -256(s0)
	flw	fa4, -296(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -300(s0)
	flw	fa5, -256(s0)
	flw	fa4, -248(s0)
	fadd.s	fa5, fa5, fa4
	lui	a0, 258048
	fmv.w.x	fa4, a0
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -312(s0)
	flw	fa5, -312(s0)
	flw	fa4, -292(s0)
	fmsub.s	fa5, fa5, fa5, fa4
	fsw	fa5, -316(s0)
	flw	fa5, -316(s0)
	fcvt.d.s	fa5, fa5
.Lpcrel_hi5:
	auipc	a0, %pcrel_hi(.LCPI7_1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi5)
	fld	fa4, 0(a0)
	fmax.d	fa5, fa5, fa4
	fcvt.s.d	fa5, fa5
	fsw	fa5, -316(s0)
	flw	fa5, -316(s0)
	fcvt.d.s	fa0, fa5
	call	sqrt
	fcvt.s.d	fa5, fa0
	fsw	fa5, -320(s0)
	flw	fa5, -312(s0)
	flw	fa4, -320(s0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -324(s0)
	flw	fa5, -312(s0)
	flw	fa4, -320(s0)
	fsub.s	fa5, fa5, fa4
	fsw	fa5, -328(s0)
	flw	fa5, -324(s0)
	fcvt.d.s	fa5, fa5
	flw	fa4, -328(s0)
	fcvt.d.s	fa4, fa4
	fmax.d	fa0, fa5, fa4
	call	sqrt
.Lpcrel_hi6:
	auipc	a0, %pcrel_hi(.LCPI7_2)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi6)
	fld	fa5, 0(a0)
	fmul.d	fa5, fa0, fa5
	fsd	fa5, -472(s0)                   # 8-byte Folded Spill
.Lpcrel_hi7:
	auipc	a0, %pcrel_hi(.LCPI7_3)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi7)
	fld	fa3, 0(a0)
	fabs.d	fa4, fa5
	flt.d	a0, fa4, fa3
	fsd	fa5, -464(s0)                   # 8-byte Folded Spill
	beqz	a0, .LBB7_11
# %bb.10:                               #   in Loop: Header=BB7_1 Depth=1
	fld	fa4, -472(s0)                   # 8-byte Folded Reload
	fcvt.l.d	a0, fa4, rup
	fcvt.d.l	fa5, a0, rup
	fsgnj.d	fa5, fa5, fa4
	fsd	fa5, -464(s0)                   # 8-byte Folded Spill
.LBB7_11:                               #   in Loop: Header=BB7_1 Depth=1
	fld	fa5, -464(s0)                   # 8-byte Folded Reload
	fcvt.s.d	fa5, fa5
	fsw	fa5, -332(s0)
	flw	fa0, -216(s0)
	lw	a0, -116(s0)
	call	cpu_rasterizer_ndc2Pix
	fsw	fa0, -340(s0)
	flw	fa0, -212(s0)
	lw	a0, -120(s0)
	call	cpu_rasterizer_ndc2Pix
	fsw	fa0, -336(s0)
	flw	fa5, -332(s0)
	fcvt.w.s	a0, fa5, rtz
	flw	fa0, -340(s0)
	flw	fa1, -336(s0)
	lw	a1, -24(s0)
	sw	a1, -368(s0)
	ld	a1, -32(s0)
	sd	a1, -376(s0)
	ld	a4, -368(s0)
	ld	a3, -376(s0)
	addi	a1, s0, -348
	addi	a2, s0, -356
	call	cpu_rasterizer_getRect
	lw	a0, -356(s0)
	lw	a1, -348(s0)
	subw	a0, a0, a1
	lw	a1, -352(s0)
	lw	a2, -344(s0)
	subw	a1, a1, a2
	mulw	a0, a0, a1
	bnez	a0, .LBB7_13
	j	.LBB7_12
.LBB7_12:                               #   in Loop: Header=BB7_1 Depth=1
	j	.LBB7_16
.LBB7_13:                               #   in Loop: Header=BB7_1 Depth=1
	ld	a0, 16(s0)
	bnez	a0, .LBB7_15
	j	.LBB7_14
.LBB7_14:                               #   in Loop: Header=BB7_1 Depth=1
	ld	a0, 40(s0)
	lw	a1, 8(a0)
	sw	a1, -392(s0)
	lwu	a1, 0(a0)
	lwu	a0, 4(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -400(s0)
	lw	a0, -144(s0)
	lw	a1, -56(s0)
	lw	a2, -60(s0)
	ld	a3, -72(s0)
	ld	a6, -112(s0)
	ld	a7, 0(s0)
	lw	a4, -392(s0)
	sw	a4, -424(s0)
	ld	a4, -400(s0)
	sd	a4, -432(s0)
	ld	a5, -424(s0)
	ld	a4, -432(s0)
	call	computeColorFromSH
	sd	a1, -440(s0)
	sd	a0, -448(s0)
	lw	a0, -440(s0)
	sw	a0, -408(s0)
	ld	a0, -448(s0)
	sd	a0, -416(s0)
	flw	fa5, -416(s0)
	ld	a0, 96(s0)
	lw	a2, -144(s0)
	slliw	a1, a2, 1
	addw	a1, a1, a2
	slli	a1, a1, 2
	add	a0, a0, a1
	fsw	fa5, 0(a0)
	flw	fa5, -412(s0)
	ld	a1, 96(s0)
	lw	a2, -144(s0)
	slliw	a0, a2, 1
	addw	a0, a0, a2
	slli	a0, a0, 2
	add	a0, a0, a1
	fsw	fa5, 4(a0)
	flw	fa5, -408(s0)
	ld	a1, 96(s0)
	lw	a2, -144(s0)
	slliw	a0, a2, 1
	addw	a0, a0, a2
	slli	a0, a0, 2
	add	a0, a0, a1
	fsw	fa5, 8(a0)
	j	.LBB7_15
.LBB7_15:                               #   in Loop: Header=BB7_1 Depth=1
	flw	fa5, -148(s0)
	ld	a0, 80(s0)
	lw	a1, -144(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	fsw	fa5, 0(a0)
	flw	fa5, -332(s0)
	fcvt.w.s	a0, fa5, rtz
	ld	a1, 64(s0)
	lw	a2, -144(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	ld	a0, 72(s0)
	lw	a1, -144(s0)
	slli	a1, a1, 3
	add	a1, a1, a0
	lw	a0, -336(s0)
	sw	a0, 4(a1)
	lw	a0, -340(s0)
	sw	a0, 0(a1)
	flw	fa5, -308(s0)
	ld	a0, 104(s0)
	lw	a1, -144(s0)
	slli	a1, a1, 4
	add	a0, a0, a1
	fsw	fa5, 0(a0)
	flw	fa5, -304(s0)
	ld	a0, 104(s0)
	lw	a1, -144(s0)
	slli	a1, a1, 4
	add	a0, a0, a1
	fsw	fa5, 4(a0)
	flw	fa5, -300(s0)
	ld	a0, 104(s0)
	lw	a1, -144(s0)
	slli	a1, a1, 4
	add	a0, a0, a1
	fsw	fa5, 8(a0)
	ld	a0, -104(s0)
	lw	a1, -144(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	flw	fa5, 0(a0)
	ld	a0, 104(s0)
	slli	a1, a1, 4
	add	a0, a0, a1
	fsw	fa5, 12(a0)
	lw	a0, -352(s0)
	lw	a1, -344(s0)
	subw	a0, a0, a1
	lw	a1, -356(s0)
	lw	a2, -348(s0)
	subw	a1, a1, a2
	mulw	a0, a0, a1
	ld	a1, 128(s0)
	lw	a2, -144(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB7_16
.LBB7_16:                               #   in Loop: Header=BB7_1 Depth=1
	lw	a0, -144(s0)
	addiw	a0, a0, 1
	sw	a0, -144(s0)
	j	.LBB7_1
.LBB7_17:
	ld	ra, 472(sp)                     # 8-byte Folded Reload
	ld	s0, 464(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 480
	ret
.Lfunc_end7:
	.size	preprocessCPU, .Lfunc_end7-preprocessCPU
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function computeCov3D
	.type	computeCov3D,@function
computeCov3D:                           # @computeCov3D
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -320
	.cfi_def_cfa_offset 320
	sd	ra, 312(sp)                     # 8-byte Folded Spill
	sd	s0, 304(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 320
	.cfi_def_cfa s0, 0
                                        # kill: def $x15 killed $x13
                                        # kill: def $x15 killed $x12
                                        # kill: def $x15 killed $x11
                                        # kill: def $x15 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	lw	a0, -40(s0)
	sw	a0, -24(s0)
	ld	a0, -48(s0)
	sd	a0, -32(s0)
	srli	a0, a3, 32
	sw	a0, -52(s0)
	sw	a3, -56(s0)
	srli	a0, a2, 32
	sw	a0, -60(s0)
	sw	a2, -64(s0)
	fsw	fa0, -68(s0)
	sd	a4, -80(s0)
	flw	fa5, -68(s0)
	flw	fa4, -32(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -116(s0)
	li	a0, 0
	sw	a0, -112(s0)
	sw	a0, -108(s0)
	sw	a0, -104(s0)
	flw	fa5, -68(s0)
	flw	fa4, -28(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -100(s0)
	sw	a0, -96(s0)
	sw	a0, -92(s0)
	sw	a0, -88(s0)
	flw	fa5, -68(s0)
	flw	fa4, -24(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -84(s0)
	flw	fa5, -64(s0)
	fsw	fa5, -120(s0)
	flw	fa5, -60(s0)
	fsw	fa5, -124(s0)
	flw	fa5, -56(s0)
	fsw	fa5, -128(s0)
	flw	fa5, -52(s0)
	fsw	fa5, -132(s0)
	flw	fa5, -124(s0)
	flw	fa4, -128(s0)
	fmul.s	fa4, fa4, fa4
	fmadd.s	fa5, fa5, fa5, fa4
	lui	a1, 260096
	fmv.w.x	fa3, a1
	lui	a1, 786432
	fmv.w.x	fa4, a1
	fmadd.s	fa5, fa5, fa4, fa3
	fsw	fa5, -168(s0)
	flw	fa5, -120(s0)
	flw	fa2, -124(s0)
	flw	fa1, -132(s0)
	flw	fa0, -128(s0)
	fmul.s	fa1, fa1, fa0
	fmsub.s	fa5, fa5, fa2, fa1
	fadd.s	fa5, fa5, fa5
	fsw	fa5, -164(s0)
	flw	fa5, -120(s0)
	flw	fa2, -128(s0)
	flw	fa1, -132(s0)
	flw	fa0, -124(s0)
	fmul.s	fa1, fa1, fa0
	fmadd.s	fa5, fa5, fa2, fa1
	fadd.s	fa5, fa5, fa5
	fsw	fa5, -160(s0)
	flw	fa5, -120(s0)
	flw	fa2, -124(s0)
	flw	fa1, -132(s0)
	flw	fa0, -128(s0)
	fmul.s	fa1, fa1, fa0
	fmadd.s	fa5, fa5, fa2, fa1
	fadd.s	fa5, fa5, fa5
	fsw	fa5, -156(s0)
	flw	fa5, -120(s0)
	flw	fa2, -128(s0)
	fmul.s	fa2, fa2, fa2
	fmadd.s	fa5, fa5, fa5, fa2
	fmadd.s	fa5, fa5, fa4, fa3
	fsw	fa5, -152(s0)
	flw	fa5, -124(s0)
	flw	fa2, -128(s0)
	flw	fa1, -132(s0)
	flw	fa0, -120(s0)
	fmul.s	fa1, fa1, fa0
	fmsub.s	fa5, fa5, fa2, fa1
	fadd.s	fa5, fa5, fa5
	fsw	fa5, -148(s0)
	flw	fa5, -120(s0)
	flw	fa2, -128(s0)
	flw	fa1, -132(s0)
	flw	fa0, -124(s0)
	fmul.s	fa1, fa1, fa0
	fmsub.s	fa5, fa5, fa2, fa1
	fadd.s	fa5, fa5, fa5
	fsw	fa5, -144(s0)
	flw	fa5, -124(s0)
	flw	fa2, -128(s0)
	flw	fa1, -132(s0)
	flw	fa0, -120(s0)
	fmul.s	fa1, fa1, fa0
	fmadd.s	fa5, fa5, fa2, fa1
	fadd.s	fa5, fa5, fa5
	fsw	fa5, -140(s0)
	flw	fa5, -120(s0)
	flw	fa2, -124(s0)
	fmul.s	fa2, fa2, fa2
	fmadd.s	fa5, fa5, fa5, fa2
	fmadd.s	fa5, fa5, fa4, fa3
	fsw	fa5, -136(s0)
	sw	a0, -208(s0)
	j	.LBB8_1
.LBB8_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
                                        #       Child Loop BB8_5 Depth 3
	lw	a1, -208(s0)
	li	a0, 2
	blt	a0, a1, .LBB8_12
	j	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	li	a0, 0
	sw	a0, -212(s0)
	j	.LBB8_3
.LBB8_3:                                #   Parent Loop BB8_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_5 Depth 3
	lw	a1, -212(s0)
	li	a0, 2
	blt	a0, a1, .LBB8_10
	j	.LBB8_4
.LBB8_4:                                #   in Loop: Header=BB8_3 Depth=2
	lw	a1, -208(s0)
	slliw	a0, a1, 1
	addw	a0, a0, a1
	lw	a1, -212(s0)
	addw	a0, a0, a1
	slli	a1, a0, 2
	addi	a0, s0, -204
	add	a1, a1, a0
	li	a0, 0
	sw	a0, 0(a1)
	sw	a0, -216(s0)
	j	.LBB8_5
.LBB8_5:                                #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a1, -216(s0)
	li	a0, 2
	blt	a0, a1, .LBB8_8
	j	.LBB8_6
.LBB8_6:                                #   in Loop: Header=BB8_5 Depth=3
	lw	a1, -208(s0)
	slliw	a0, a1, 1
	addw	a0, a0, a1
	lw	a2, -216(s0)
	addw	a1, a0, a2
	slli	a3, a1, 2
	addi	a1, s0, -116
	add	a1, a1, a3
	flw	fa5, 0(a1)
	slliw	a1, a2, 1
	addw	a2, a2, a1
	lw	a1, -212(s0)
	addw	a2, a2, a1
	slli	a3, a2, 2
	addi	a2, s0, -168
	add	a2, a2, a3
	flw	fa4, 0(a2)
	addw	a0, a0, a1
	slli	a1, a0, 2
	addi	a0, s0, -204
	add	a0, a0, a1
	flw	fa3, 0(a0)
	fmadd.s	fa5, fa5, fa4, fa3
	fsw	fa5, 0(a0)
	j	.LBB8_7
.LBB8_7:                                #   in Loop: Header=BB8_5 Depth=3
	lw	a0, -216(s0)
	addiw	a0, a0, 1
	sw	a0, -216(s0)
	j	.LBB8_5
.LBB8_8:                                #   in Loop: Header=BB8_3 Depth=2
	j	.LBB8_9
.LBB8_9:                                #   in Loop: Header=BB8_3 Depth=2
	lw	a0, -212(s0)
	addiw	a0, a0, 1
	sw	a0, -212(s0)
	j	.LBB8_3
.LBB8_10:                               #   in Loop: Header=BB8_1 Depth=1
	j	.LBB8_11
.LBB8_11:                               #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -208(s0)
	addiw	a0, a0, 1
	sw	a0, -208(s0)
	j	.LBB8_1
.LBB8_12:
	li	a0, 0
	sw	a0, -256(s0)
	j	.LBB8_13
.LBB8_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_15 Depth 2
	lw	a1, -256(s0)
	li	a0, 2
	blt	a0, a1, .LBB8_20
	j	.LBB8_14
.LBB8_14:                               #   in Loop: Header=BB8_13 Depth=1
	li	a0, 0
	sw	a0, -260(s0)
	j	.LBB8_15
.LBB8_15:                               #   Parent Loop BB8_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a1, -260(s0)
	li	a0, 2
	blt	a0, a1, .LBB8_18
	j	.LBB8_16
.LBB8_16:                               #   in Loop: Header=BB8_15 Depth=2
	lw	a1, -260(s0)
	slliw	a0, a1, 1
	addw	a0, a0, a1
	lw	a2, -256(s0)
	addw	a0, a0, a2
	slli	a3, a0, 2
	addi	a0, s0, -204
	add	a0, a0, a3
	flw	fa5, 0(a0)
	slliw	a0, a2, 1
	addw	a0, a0, a2
	addw	a0, a0, a1
	slli	a1, a0, 2
	addi	a0, s0, -252
	add	a0, a0, a1
	fsw	fa5, 0(a0)
	j	.LBB8_17
.LBB8_17:                               #   in Loop: Header=BB8_15 Depth=2
	lw	a0, -260(s0)
	addiw	a0, a0, 1
	sw	a0, -260(s0)
	j	.LBB8_15
.LBB8_18:                               #   in Loop: Header=BB8_13 Depth=1
	j	.LBB8_19
.LBB8_19:                               #   in Loop: Header=BB8_13 Depth=1
	lw	a0, -256(s0)
	addiw	a0, a0, 1
	sw	a0, -256(s0)
	j	.LBB8_13
.LBB8_20:
	li	a0, 0
	sw	a0, -300(s0)
	j	.LBB8_21
.LBB8_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_23 Depth 2
                                        #       Child Loop BB8_25 Depth 3
	lw	a1, -300(s0)
	li	a0, 2
	blt	a0, a1, .LBB8_32
	j	.LBB8_22
.LBB8_22:                               #   in Loop: Header=BB8_21 Depth=1
	li	a0, 0
	sw	a0, -304(s0)
	j	.LBB8_23
.LBB8_23:                               #   Parent Loop BB8_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_25 Depth 3
	lw	a1, -304(s0)
	li	a0, 2
	blt	a0, a1, .LBB8_30
	j	.LBB8_24
.LBB8_24:                               #   in Loop: Header=BB8_23 Depth=2
	lw	a1, -300(s0)
	slliw	a0, a1, 1
	addw	a0, a0, a1
	lw	a1, -304(s0)
	addw	a0, a0, a1
	slli	a1, a0, 2
	addi	a0, s0, -296
	add	a1, a1, a0
	li	a0, 0
	sw	a0, 0(a1)
	sw	a0, -308(s0)
	j	.LBB8_25
.LBB8_25:                               #   Parent Loop BB8_21 Depth=1
                                        #     Parent Loop BB8_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a1, -308(s0)
	li	a0, 2
	blt	a0, a1, .LBB8_28
	j	.LBB8_26
.LBB8_26:                               #   in Loop: Header=BB8_25 Depth=3
	lw	a1, -300(s0)
	slliw	a0, a1, 1
	addw	a0, a0, a1
	lw	a2, -308(s0)
	addw	a1, a0, a2
	slli	a3, a1, 2
	addi	a1, s0, -252
	add	a1, a1, a3
	flw	fa5, 0(a1)
	slliw	a1, a2, 1
	addw	a2, a2, a1
	lw	a1, -304(s0)
	addw	a2, a2, a1
	slli	a3, a2, 2
	addi	a2, s0, -204
	add	a2, a2, a3
	flw	fa4, 0(a2)
	addw	a0, a0, a1
	slli	a1, a0, 2
	addi	a0, s0, -296
	add	a0, a0, a1
	flw	fa3, 0(a0)
	fmadd.s	fa5, fa5, fa4, fa3
	fsw	fa5, 0(a0)
	j	.LBB8_27
.LBB8_27:                               #   in Loop: Header=BB8_25 Depth=3
	lw	a0, -308(s0)
	addiw	a0, a0, 1
	sw	a0, -308(s0)
	j	.LBB8_25
.LBB8_28:                               #   in Loop: Header=BB8_23 Depth=2
	j	.LBB8_29
.LBB8_29:                               #   in Loop: Header=BB8_23 Depth=2
	lw	a0, -304(s0)
	addiw	a0, a0, 1
	sw	a0, -304(s0)
	j	.LBB8_23
.LBB8_30:                               #   in Loop: Header=BB8_21 Depth=1
	j	.LBB8_31
.LBB8_31:                               #   in Loop: Header=BB8_21 Depth=1
	lw	a0, -300(s0)
	addiw	a0, a0, 1
	sw	a0, -300(s0)
	j	.LBB8_21
.LBB8_32:
	flw	fa5, -296(s0)
	ld	a0, -80(s0)
	fsw	fa5, 0(a0)
	flw	fa5, -292(s0)
	ld	a0, -80(s0)
	fsw	fa5, 4(a0)
	flw	fa5, -288(s0)
	ld	a0, -80(s0)
	fsw	fa5, 8(a0)
	flw	fa5, -280(s0)
	ld	a0, -80(s0)
	fsw	fa5, 12(a0)
	flw	fa5, -276(s0)
	ld	a0, -80(s0)
	fsw	fa5, 16(a0)
	flw	fa5, -264(s0)
	ld	a0, -80(s0)
	fsw	fa5, 20(a0)
	ld	ra, 312(sp)                     # 8-byte Folded Reload
	ld	s0, 304(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 320
	ret
.Lfunc_end8:
	.size	computeCov3D, .Lfunc_end8-computeCov3D
	.cfi_endproc
                                        # -- End function
	.section	.sdata,"aw",@progbits
	.p2align	2, 0x0                          # -- Begin function computeCov2D
.LCPI9_0:
	.word	0x3fa66666                      # float 1.29999995
.LCPI9_1:
	.word	0x3e99999a                      # float 0.300000012
	.text
	.p2align	1
	.type	computeCov2D,@function
computeCov2D:                           # @computeCov2D
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -512
	.cfi_def_cfa_offset 512
	sd	ra, 504(sp)                     # 8-byte Folded Spill
	sd	s0, 496(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 512
	.cfi_def_cfa s0, 0
                                        # kill: def $x14 killed $x11
                                        # kill: def $x14 killed $x10
	sd	a1, -48(s0)
	sd	a0, -56(s0)
	lw	a0, -48(s0)
	sw	a0, -32(s0)
	ld	a0, -56(s0)
	sd	a0, -40(s0)
	fsw	fa0, -60(s0)
	fsw	fa1, -64(s0)
	fsw	fa2, -68(s0)
	fsw	fa3, -72(s0)
	sd	a2, -80(s0)
	sd	a3, -88(s0)
	ld	a2, -88(s0)
	lw	a0, -32(s0)
	sw	a0, -112(s0)
	ld	a0, -40(s0)
	sd	a0, -120(s0)
	ld	a1, -112(s0)
	ld	a0, -120(s0)
	call	cpu_rasterizer_transformPoint4x3
	sd	a1, -128(s0)
	sd	a0, -136(s0)
	lw	a0, -128(s0)
	sw	a0, -96(s0)
	ld	a0, -136(s0)
	sd	a0, -104(s0)
	flw	fa5, -68(s0)
.Lpcrel_hi8:
	auipc	a0, %pcrel_hi(.LCPI9_0)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi8)
	flw	fa4, 0(a0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -140(s0)
	flw	fa5, -72(s0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -144(s0)
	flw	fa5, -104(s0)
	flw	fa4, -96(s0)
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, -148(s0)
	flw	fa5, -100(s0)
	flw	fa4, -96(s0)
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, -152(s0)
	flw	fa4, -140(s0)
	fcvt.d.s	fa5, fa4
	fneg.s	fa4, fa4
	fcvt.d.s	fa4, fa4
	flw	fa3, -148(s0)
	fcvt.d.s	fa3, fa3
	fmax.d	fa4, fa4, fa3
	fmin.d	fa5, fa5, fa4
	flw	fa4, -96(s0)
	fcvt.d.s	fa4, fa4
	fmul.d	fa5, fa5, fa4
	fcvt.s.d	fa5, fa5
	fsw	fa5, -104(s0)
	flw	fa4, -144(s0)
	fcvt.d.s	fa5, fa4
	fneg.s	fa4, fa4
	fcvt.d.s	fa4, fa4
	flw	fa3, -152(s0)
	fcvt.d.s	fa3, fa3
	fmax.d	fa4, fa4, fa3
	fmin.d	fa5, fa5, fa4
	flw	fa4, -96(s0)
	fcvt.d.s	fa4, fa4
	fmul.d	fa5, fa5, fa4
	fcvt.s.d	fa5, fa5
	fsw	fa5, -100(s0)
	flw	fa5, -60(s0)
	flw	fa4, -96(s0)
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, -188(s0)
	li	a0, 0
	sw	a0, -184(s0)
	flw	fa5, -60(s0)
	flw	fa4, -104(s0)
	fmul.s	fa5, fa5, fa4
	fneg.s	fa5, fa5
	flw	fa4, -96(s0)
	fmul.s	fa4, fa4, fa4
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, -180(s0)
	sw	a0, -176(s0)
	flw	fa5, -64(s0)
	flw	fa4, -96(s0)
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, -172(s0)
	flw	fa5, -64(s0)
	flw	fa4, -100(s0)
	fmul.s	fa5, fa5, fa4
	fneg.s	fa5, fa5
	flw	fa4, -96(s0)
	fmul.s	fa4, fa4, fa4
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, -168(s0)
	sw	a0, -164(s0)
	sw	a0, -160(s0)
	sw	a0, -156(s0)
	ld	a1, -88(s0)
	flw	fa5, 0(a1)
	fsw	fa5, -224(s0)
	ld	a1, -88(s0)
	flw	fa5, 16(a1)
	fsw	fa5, -220(s0)
	ld	a1, -88(s0)
	flw	fa5, 32(a1)
	fsw	fa5, -216(s0)
	ld	a1, -88(s0)
	flw	fa5, 4(a1)
	fsw	fa5, -212(s0)
	ld	a1, -88(s0)
	flw	fa5, 20(a1)
	fsw	fa5, -208(s0)
	ld	a1, -88(s0)
	flw	fa5, 36(a1)
	fsw	fa5, -204(s0)
	ld	a1, -88(s0)
	flw	fa5, 8(a1)
	fsw	fa5, -200(s0)
	ld	a1, -88(s0)
	flw	fa5, 24(a1)
	fsw	fa5, -196(s0)
	ld	a1, -88(s0)
	flw	fa5, 40(a1)
	fsw	fa5, -192(s0)
	sw	a0, -264(s0)
	j	.LBB9_1
.LBB9_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
                                        #       Child Loop BB9_5 Depth 3
	lw	a1, -264(s0)
	li	a0, 2
	blt	a0, a1, .LBB9_12
	j	.LBB9_2
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
	li	a0, 0
	sw	a0, -268(s0)
	j	.LBB9_3
.LBB9_3:                                #   Parent Loop BB9_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_5 Depth 3
	lw	a1, -268(s0)
	li	a0, 2
	blt	a0, a1, .LBB9_10
	j	.LBB9_4
.LBB9_4:                                #   in Loop: Header=BB9_3 Depth=2
	lw	a1, -264(s0)
	slliw	a0, a1, 1
	addw	a0, a0, a1
	lw	a1, -268(s0)
	addw	a0, a0, a1
	slli	a1, a0, 2
	addi	a0, s0, -260
	add	a1, a1, a0
	li	a0, 0
	sw	a0, 0(a1)
	sw	a0, -272(s0)
	j	.LBB9_5
.LBB9_5:                                #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a1, -272(s0)
	li	a0, 2
	blt	a0, a1, .LBB9_8
	j	.LBB9_6
.LBB9_6:                                #   in Loop: Header=BB9_5 Depth=3
	lw	a1, -264(s0)
	slliw	a0, a1, 1
	addw	a0, a0, a1
	lw	a2, -272(s0)
	addw	a1, a0, a2
	slli	a3, a1, 2
	addi	a1, s0, -224
	add	a1, a1, a3
	flw	fa5, 0(a1)
	slliw	a1, a2, 1
	addw	a2, a2, a1
	lw	a1, -268(s0)
	addw	a2, a2, a1
	slli	a3, a2, 2
	addi	a2, s0, -188
	add	a2, a2, a3
	flw	fa4, 0(a2)
	addw	a0, a0, a1
	slli	a1, a0, 2
	addi	a0, s0, -260
	add	a0, a0, a1
	flw	fa3, 0(a0)
	fmadd.s	fa5, fa5, fa4, fa3
	fsw	fa5, 0(a0)
	j	.LBB9_7
.LBB9_7:                                #   in Loop: Header=BB9_5 Depth=3
	lw	a0, -272(s0)
	addiw	a0, a0, 1
	sw	a0, -272(s0)
	j	.LBB9_5
.LBB9_8:                                #   in Loop: Header=BB9_3 Depth=2
	j	.LBB9_9
.LBB9_9:                                #   in Loop: Header=BB9_3 Depth=2
	lw	a0, -268(s0)
	addiw	a0, a0, 1
	sw	a0, -268(s0)
	j	.LBB9_3
.LBB9_10:                               #   in Loop: Header=BB9_1 Depth=1
	j	.LBB9_11
.LBB9_11:                               #   in Loop: Header=BB9_1 Depth=1
	lw	a0, -264(s0)
	addiw	a0, a0, 1
	sw	a0, -264(s0)
	j	.LBB9_1
.LBB9_12:
	ld	a0, -80(s0)
	flw	fa5, 0(a0)
	fsw	fa5, -308(s0)
	ld	a0, -80(s0)
	flw	fa5, 4(a0)
	fsw	fa5, -304(s0)
	ld	a0, -80(s0)
	flw	fa5, 8(a0)
	fsw	fa5, -300(s0)
	ld	a0, -80(s0)
	flw	fa5, 4(a0)
	fsw	fa5, -296(s0)
	ld	a0, -80(s0)
	flw	fa5, 12(a0)
	fsw	fa5, -292(s0)
	ld	a0, -80(s0)
	flw	fa5, 16(a0)
	fsw	fa5, -288(s0)
	ld	a0, -80(s0)
	flw	fa5, 8(a0)
	fsw	fa5, -284(s0)
	ld	a0, -80(s0)
	flw	fa5, 16(a0)
	fsw	fa5, -280(s0)
	ld	a0, -80(s0)
	flw	fa5, 20(a0)
	fsw	fa5, -276(s0)
	li	a0, 0
	sw	a0, -348(s0)
	j	.LBB9_13
.LBB9_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_15 Depth 2
	lw	a1, -348(s0)
	li	a0, 2
	blt	a0, a1, .LBB9_20
	j	.LBB9_14
.LBB9_14:                               #   in Loop: Header=BB9_13 Depth=1
	li	a0, 0
	sw	a0, -352(s0)
	j	.LBB9_15
.LBB9_15:                               #   Parent Loop BB9_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a1, -352(s0)
	li	a0, 2
	blt	a0, a1, .LBB9_18
	j	.LBB9_16
.LBB9_16:                               #   in Loop: Header=BB9_15 Depth=2
	lw	a1, -352(s0)
	slliw	a0, a1, 1
	addw	a0, a0, a1
	lw	a2, -348(s0)
	addw	a0, a0, a2
	slli	a3, a0, 2
	addi	a0, s0, -260
	add	a0, a0, a3
	flw	fa5, 0(a0)
	slliw	a0, a2, 1
	addw	a0, a0, a2
	addw	a0, a0, a1
	slli	a1, a0, 2
	addi	a0, s0, -344
	add	a0, a0, a1
	fsw	fa5, 0(a0)
	j	.LBB9_17
.LBB9_17:                               #   in Loop: Header=BB9_15 Depth=2
	lw	a0, -352(s0)
	addiw	a0, a0, 1
	sw	a0, -352(s0)
	j	.LBB9_15
.LBB9_18:                               #   in Loop: Header=BB9_13 Depth=1
	j	.LBB9_19
.LBB9_19:                               #   in Loop: Header=BB9_13 Depth=1
	lw	a0, -348(s0)
	addiw	a0, a0, 1
	sw	a0, -348(s0)
	j	.LBB9_13
.LBB9_20:
	li	a0, 0
	sw	a0, -392(s0)
	j	.LBB9_21
.LBB9_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_23 Depth 2
	lw	a1, -392(s0)
	li	a0, 2
	blt	a0, a1, .LBB9_28
	j	.LBB9_22
.LBB9_22:                               #   in Loop: Header=BB9_21 Depth=1
	li	a0, 0
	sw	a0, -396(s0)
	j	.LBB9_23
.LBB9_23:                               #   Parent Loop BB9_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a1, -396(s0)
	li	a0, 2
	blt	a0, a1, .LBB9_26
	j	.LBB9_24
.LBB9_24:                               #   in Loop: Header=BB9_23 Depth=2
	lw	a1, -396(s0)
	slliw	a0, a1, 1
	addw	a0, a0, a1
	lw	a2, -392(s0)
	addw	a0, a0, a2
	slli	a3, a0, 2
	addi	a0, s0, -308
	add	a0, a0, a3
	flw	fa5, 0(a0)
	slliw	a0, a2, 1
	addw	a0, a0, a2
	addw	a0, a0, a1
	slli	a1, a0, 2
	addi	a0, s0, -388
	add	a0, a0, a1
	fsw	fa5, 0(a0)
	j	.LBB9_25
.LBB9_25:                               #   in Loop: Header=BB9_23 Depth=2
	lw	a0, -396(s0)
	addiw	a0, a0, 1
	sw	a0, -396(s0)
	j	.LBB9_23
.LBB9_26:                               #   in Loop: Header=BB9_21 Depth=1
	j	.LBB9_27
.LBB9_27:                               #   in Loop: Header=BB9_21 Depth=1
	lw	a0, -392(s0)
	addiw	a0, a0, 1
	sw	a0, -392(s0)
	j	.LBB9_21
.LBB9_28:
	li	a0, 0
	sw	a0, -436(s0)
	j	.LBB9_29
.LBB9_29:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_31 Depth 2
                                        #       Child Loop BB9_33 Depth 3
	lw	a1, -436(s0)
	li	a0, 2
	blt	a0, a1, .LBB9_40
	j	.LBB9_30
.LBB9_30:                               #   in Loop: Header=BB9_29 Depth=1
	li	a0, 0
	sw	a0, -440(s0)
	j	.LBB9_31
.LBB9_31:                               #   Parent Loop BB9_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_33 Depth 3
	lw	a1, -440(s0)
	li	a0, 2
	blt	a0, a1, .LBB9_38
	j	.LBB9_32
.LBB9_32:                               #   in Loop: Header=BB9_31 Depth=2
	lw	a1, -436(s0)
	slliw	a0, a1, 1
	addw	a0, a0, a1
	lw	a1, -440(s0)
	addw	a0, a0, a1
	slli	a1, a0, 2
	addi	a0, s0, -432
	add	a1, a1, a0
	li	a0, 0
	sw	a0, 0(a1)
	sw	a0, -444(s0)
	j	.LBB9_33
.LBB9_33:                               #   Parent Loop BB9_29 Depth=1
                                        #     Parent Loop BB9_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a1, -444(s0)
	li	a0, 2
	blt	a0, a1, .LBB9_36
	j	.LBB9_34
.LBB9_34:                               #   in Loop: Header=BB9_33 Depth=3
	lw	a1, -436(s0)
	slliw	a0, a1, 1
	addw	a0, a0, a1
	lw	a2, -444(s0)
	addw	a1, a0, a2
	slli	a3, a1, 2
	addi	a1, s0, -344
	add	a1, a1, a3
	flw	fa5, 0(a1)
	slliw	a1, a2, 1
	addw	a2, a2, a1
	lw	a1, -440(s0)
	addw	a2, a2, a1
	slli	a3, a2, 2
	addi	a2, s0, -388
	add	a2, a2, a3
	flw	fa4, 0(a2)
	addw	a0, a0, a1
	slli	a1, a0, 2
	addi	a0, s0, -432
	add	a0, a0, a1
	flw	fa3, 0(a0)
	fmadd.s	fa5, fa5, fa4, fa3
	fsw	fa5, 0(a0)
	j	.LBB9_35
.LBB9_35:                               #   in Loop: Header=BB9_33 Depth=3
	lw	a0, -444(s0)
	addiw	a0, a0, 1
	sw	a0, -444(s0)
	j	.LBB9_33
.LBB9_36:                               #   in Loop: Header=BB9_31 Depth=2
	j	.LBB9_37
.LBB9_37:                               #   in Loop: Header=BB9_31 Depth=2
	lw	a0, -440(s0)
	addiw	a0, a0, 1
	sw	a0, -440(s0)
	j	.LBB9_31
.LBB9_38:                               #   in Loop: Header=BB9_29 Depth=1
	j	.LBB9_39
.LBB9_39:                               #   in Loop: Header=BB9_29 Depth=1
	lw	a0, -436(s0)
	addiw	a0, a0, 1
	sw	a0, -436(s0)
	j	.LBB9_29
.LBB9_40:
	li	a0, 0
	sw	a0, -484(s0)
	j	.LBB9_41
.LBB9_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_43 Depth 2
                                        #       Child Loop BB9_45 Depth 3
	lw	a1, -484(s0)
	li	a0, 2
	blt	a0, a1, .LBB9_52
	j	.LBB9_42
.LBB9_42:                               #   in Loop: Header=BB9_41 Depth=1
	li	a0, 0
	sw	a0, -488(s0)
	j	.LBB9_43
.LBB9_43:                               #   Parent Loop BB9_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_45 Depth 3
	lw	a1, -488(s0)
	li	a0, 2
	blt	a0, a1, .LBB9_50
	j	.LBB9_44
.LBB9_44:                               #   in Loop: Header=BB9_43 Depth=2
	lw	a1, -484(s0)
	slliw	a0, a1, 1
	addw	a0, a0, a1
	lw	a1, -488(s0)
	addw	a0, a0, a1
	slli	a1, a0, 2
	addi	a0, s0, -480
	add	a1, a1, a0
	li	a0, 0
	sw	a0, 0(a1)
	sw	a0, -492(s0)
	j	.LBB9_45
.LBB9_45:                               #   Parent Loop BB9_41 Depth=1
                                        #     Parent Loop BB9_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a1, -492(s0)
	li	a0, 2
	blt	a0, a1, .LBB9_48
	j	.LBB9_46
.LBB9_46:                               #   in Loop: Header=BB9_45 Depth=3
	lw	a1, -484(s0)
	slliw	a0, a1, 1
	addw	a0, a0, a1
	lw	a2, -492(s0)
	addw	a1, a0, a2
	slli	a3, a1, 2
	addi	a1, s0, -432
	add	a1, a1, a3
	flw	fa5, 0(a1)
	slliw	a1, a2, 1
	addw	a2, a2, a1
	lw	a1, -488(s0)
	addw	a2, a2, a1
	slli	a3, a2, 2
	addi	a2, s0, -260
	add	a2, a2, a3
	flw	fa4, 0(a2)
	addw	a0, a0, a1
	slli	a1, a0, 2
	addi	a0, s0, -480
	add	a0, a0, a1
	flw	fa3, 0(a0)
	fmadd.s	fa5, fa5, fa4, fa3
	fsw	fa5, 0(a0)
	j	.LBB9_47
.LBB9_47:                               #   in Loop: Header=BB9_45 Depth=3
	lw	a0, -492(s0)
	addiw	a0, a0, 1
	sw	a0, -492(s0)
	j	.LBB9_45
.LBB9_48:                               #   in Loop: Header=BB9_43 Depth=2
	j	.LBB9_49
.LBB9_49:                               #   in Loop: Header=BB9_43 Depth=2
	lw	a0, -488(s0)
	addiw	a0, a0, 1
	sw	a0, -488(s0)
	j	.LBB9_43
.LBB9_50:                               #   in Loop: Header=BB9_41 Depth=1
	j	.LBB9_51
.LBB9_51:                               #   in Loop: Header=BB9_41 Depth=1
	lw	a0, -484(s0)
	addiw	a0, a0, 1
	sw	a0, -484(s0)
	j	.LBB9_41
.LBB9_52:
	flw	fa5, -480(s0)
.Lpcrel_hi9:
	auipc	a0, %pcrel_hi(.LCPI9_1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi9)
	flw	fa4, 0(a0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -480(s0)
	flw	fa5, -464(s0)
	fadd.s	fa5, fa5, fa4
	fsw	fa5, -464(s0)
	flw	fa5, -480(s0)
	fsw	fa5, -28(s0)
	flw	fa5, -476(s0)
	fsw	fa5, -24(s0)
	flw	fa5, -464(s0)
	fsw	fa5, -20(s0)
	lw	a0, -20(s0)
	sw	a0, -504(s0)
	lwu	a0, -24(s0)
	slli	a0, a0, 32
	lwu	a1, -28(s0)
	or	a0, a0, a1
	sd	a0, -512(s0)
	ld	a0, -512(s0)
	ld	a1, -504(s0)
	ld	ra, 504(sp)                     # 8-byte Folded Reload
	ld	s0, 496(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 512
	ret
.Lfunc_end9:
	.size	computeCov2D, .Lfunc_end9-computeCov2D
	.cfi_endproc
                                        # -- End function
	.section	.sdata,"aw",@progbits
	.p2align	3, 0x0                          # -- Begin function cpu_rasterizer_ndc2Pix
.LCPI10_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI10_1:
	.quad	0xbff0000000000000              # double -1
.LCPI10_2:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.p2align	1
	.type	cpu_rasterizer_ndc2Pix,@function
cpu_rasterizer_ndc2Pix:                 # @cpu_rasterizer_ndc2Pix
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
	fsw	fa0, -20(s0)
	sw	a0, -24(s0)
	flw	fa5, -20(s0)
	fcvt.d.s	fa5, fa5
.Lpcrel_hi10:
	auipc	a0, %pcrel_hi(.LCPI10_0)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi10)
	fld	fa4, 0(a0)
	fadd.d	fa5, fa5, fa4
	lw	a0, -24(s0)
	fcvt.d.w	fa4, a0
.Lpcrel_hi11:
	auipc	a0, %pcrel_hi(.LCPI10_1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi11)
	fld	fa3, 0(a0)
	fmadd.d	fa5, fa5, fa4, fa3
.Lpcrel_hi12:
	auipc	a0, %pcrel_hi(.LCPI10_2)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi12)
	fld	fa4, 0(a0)
	fmul.d	fa5, fa5, fa4
	fcvt.s.d	fa0, fa5
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end10:
	.size	cpu_rasterizer_ndc2Pix, .Lfunc_end10-cpu_rasterizer_ndc2Pix
	.cfi_endproc
                                        # -- End function
	.section	.sdata,"aw",@progbits
	.p2align	3, 0x0                          # -- Begin function renderCPU
.LCPI11_0:
	.quad	0x3fefae1480000000              # double 0.99000000953674316
.LCPI11_1:
	.word	0x3b808081                      # float 0.00392156886
.LCPI11_2:
	.word	0x38d1b717                      # float 9.99999974E-5
	.text
	.globl	renderCPU
	.p2align	1
	.type	renderCPU,@function
renderCPU:                              # @renderCPU
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -256
	.cfi_def_cfa_offset 256
	sd	ra, 248(sp)                     # 8-byte Folded Spill
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 256
	.cfi_def_cfa s0, 0
                                        # kill: def $x5 killed $x11
                                        # kill: def $x5 killed $x10
	ld	t0, 32(s0)
	ld	t0, 24(s0)
	ld	t0, 16(s0)
	ld	t0, 8(s0)
	ld	t0, 0(s0)
                                        # kill: def $x5 killed $x15
                                        # kill: def $x5 killed $x14
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	lw	a0, -40(s0)
	sw	a0, -24(s0)
	ld	a0, -48(s0)
	sd	a0, -32(s0)
	sd	a2, -56(s0)
	sd	a3, -64(s0)
	sw	a4, -68(s0)
	sw	a5, -72(s0)
	sd	a6, -80(s0)
	sd	a7, -88(s0)
	lw	a0, -72(s0)
	addiw	a0, a0, 15
	sraiw	a1, a0, 31
	srliw	a1, a1, 28
	addw	a0, a0, a1
	sraiw	a0, a0, 4
	sw	a0, -92(s0)
	lw	a0, -68(s0)
	addiw	a0, a0, 15
	sraiw	a1, a0, 31
	srliw	a1, a1, 28
	addw	a0, a0, a1
	sraiw	a0, a0, 4
	sw	a0, -96(s0)
	li	a0, 0
	sw	a0, -100(s0)
	j	.LBB11_1
.LBB11_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
                                        #       Child Loop BB11_5 Depth 3
                                        #         Child Loop BB11_7 Depth 4
                                        #           Child Loop BB11_9 Depth 5
                                        #             Child Loop BB11_17 Depth 6
                                        #           Child Loop BB11_23 Depth 5
	lw	a0, -100(s0)
	lw	a1, -92(s0)
	bgeu	a0, a1, .LBB11_34
	j	.LBB11_2
.LBB11_2:                               #   in Loop: Header=BB11_1 Depth=1
	li	a0, 0
	sw	a0, -104(s0)
	j	.LBB11_3
.LBB11_3:                               #   Parent Loop BB11_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_5 Depth 3
                                        #         Child Loop BB11_7 Depth 4
                                        #           Child Loop BB11_9 Depth 5
                                        #             Child Loop BB11_17 Depth 6
                                        #           Child Loop BB11_23 Depth 5
	lw	a0, -104(s0)
	lw	a1, -96(s0)
	bgeu	a0, a1, .LBB11_32
	j	.LBB11_4
.LBB11_4:                               #   in Loop: Header=BB11_3 Depth=2
	lw	a0, -104(s0)
	slliw	a0, a0, 4
	sw	a0, -112(s0)
	lw	a0, -100(s0)
	slliw	a0, a0, 4
	sw	a0, -108(s0)
	lw	a0, -112(s0)
	addiw	a0, a0, 16
	lw	a1, -68(s0)
	call	min_int
	sw	a0, -120(s0)
	lw	a0, -108(s0)
	addiw	a0, a0, 16
	lw	a1, -72(s0)
	call	min_int
	sw	a0, -116(s0)
	ld	a0, -56(s0)
	lw	a1, -100(s0)
	lw	a2, -96(s0)
	mulw	a1, a1, a2
	lw	a2, -104(s0)
	addw	a1, a1, a2
	slli	a1, a1, 32
	srli	a1, a1, 29
	add	a0, a0, a1
	lwu	a1, 0(a0)
	lwu	a0, 4(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -128(s0)
	lw	a0, -124(s0)
	lw	a1, -128(s0)
	subw	a0, a0, a1
	sw	a0, -132(s0)
	lw	a0, -108(s0)
	sw	a0, -136(s0)
	j	.LBB11_5
.LBB11_5:                               #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_7 Depth 4
                                        #           Child Loop BB11_9 Depth 5
                                        #             Child Loop BB11_17 Depth 6
                                        #           Child Loop BB11_23 Depth 5
	lw	a0, -136(s0)
	lw	a1, -116(s0)
	bgeu	a0, a1, .LBB11_30
	j	.LBB11_6
.LBB11_6:                               #   in Loop: Header=BB11_5 Depth=3
	lw	a0, -112(s0)
	sw	a0, -140(s0)
	j	.LBB11_7
.LBB11_7:                               #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_3 Depth=2
                                        #       Parent Loop BB11_5 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB11_9 Depth 5
                                        #             Child Loop BB11_17 Depth 6
                                        #           Child Loop BB11_23 Depth 5
	lw	a0, -140(s0)
	lw	a1, -120(s0)
	bgeu	a0, a1, .LBB11_28
	j	.LBB11_8
.LBB11_8:                               #   in Loop: Header=BB11_7 Depth=4
	lw	a0, -68(s0)
	lw	a1, -136(s0)
	mulw	a0, a0, a1
	lw	a1, -140(s0)
	addw	a0, a0, a1
	sw	a0, -144(s0)
	lwu	a0, -140(s0)
	fcvt.s.wu	fa5, a0
	fsw	fa5, -152(s0)
	lwu	a0, -136(s0)
	fcvt.s.wu	fa5, a0
	fsw	fa5, -148(s0)
	lui	a0, 260096
	sw	a0, -156(s0)
	li	a0, 0
	sw	a0, -160(s0)
	sw	a0, -164(s0)
	sw	a0, -168(s0)
	sd	a0, -176(s0)
	lw	a0, -128(s0)
	sw	a0, -180(s0)
	j	.LBB11_9
.LBB11_9:                               #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_3 Depth=2
                                        #       Parent Loop BB11_5 Depth=3
                                        #         Parent Loop BB11_7 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB11_17 Depth 6
	lw	a0, -180(s0)
	lw	a1, -124(s0)
	bgeu	a0, a1, .LBB11_22
	j	.LBB11_10
.LBB11_10:                              #   in Loop: Header=BB11_9 Depth=5
	lw	a0, -160(s0)
	addiw	a0, a0, 1
	sw	a0, -160(s0)
	ld	a0, -64(s0)
	lw	a1, -180(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -184(s0)
	ld	a0, -80(s0)
	lw	a1, -184(s0)
	slli	a1, a1, 3
	add	a0, a0, a1
	lwu	a1, 0(a0)
	lwu	a0, 4(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -192(s0)
	flw	fa5, -192(s0)
	flw	fa4, -152(s0)
	fsub.s	fa5, fa5, fa4
	fsw	fa5, -200(s0)
	flw	fa5, -188(s0)
	flw	fa4, -148(s0)
	fsub.s	fa5, fa5, fa4
	fsw	fa5, -196(s0)
	ld	a0, 0(s0)
	lw	a1, -184(s0)
	slli	a1, a1, 4
	add	a0, a0, a1
	lwu	a2, 8(a0)
	lwu	a1, 12(a0)
	slli	a1, a1, 32
	or	a1, a1, a2
	sd	a1, -208(s0)
	lwu	a1, 0(a0)
	lwu	a0, 4(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -216(s0)
	flw	fa5, -216(s0)
	flw	fa2, -200(s0)
	fmul.s	fa5, fa5, fa2
	flw	fa4, -208(s0)
	flw	fa3, -196(s0)
	fmul.s	fa4, fa4, fa3
	fmul.s	fa4, fa4, fa3
	fmadd.s	fa5, fa5, fa2, fa4
	flw	fa4, -212(s0)
	fmul.s	fa4, fa4, fa2
	fmul.s	fa3, fa4, fa3
	lui	a0, 782336
	fmv.w.x	fa4, a0
	fmsub.s	fa5, fa5, fa4, fa3
	fsw	fa5, -220(s0)
	flw	fa4, -220(s0)
	fmv.w.x	fa5, zero
	flt.s	a0, fa5, fa4
	beqz	a0, .LBB11_12
	j	.LBB11_11
.LBB11_11:                              #   in Loop: Header=BB11_9 Depth=5
	j	.LBB11_21
.LBB11_12:                              #   in Loop: Header=BB11_9 Depth=5
	flw	fa5, -204(s0)
	fcvt.d.s	fa5, fa5
	fsd	fa5, -248(s0)                   # 8-byte Folded Spill
	flw	fa5, -220(s0)
	fcvt.d.s	fa0, fa5
	call	exp
	fld	fa5, -248(s0)                   # 8-byte Folded Reload
	fmul.d	fa5, fa5, fa0
.Lpcrel_hi13:
	auipc	a0, %pcrel_hi(.LCPI11_0)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi13)
	fld	fa4, 0(a0)
	fmin.d	fa5, fa5, fa4
	fcvt.s.d	fa5, fa5
	fsw	fa5, -224(s0)
	flw	fa5, -224(s0)
.Lpcrel_hi14:
	auipc	a0, %pcrel_hi(.LCPI11_1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi14)
	flw	fa4, 0(a0)
	flt.s	a0, fa5, fa4
	beqz	a0, .LBB11_14
	j	.LBB11_13
.LBB11_13:                              #   in Loop: Header=BB11_9 Depth=5
	j	.LBB11_21
.LBB11_14:                              #   in Loop: Header=BB11_9 Depth=5
	flw	fa5, -156(s0)
	flw	fa3, -224(s0)
	lui	a0, 260096
	fmv.w.x	fa4, a0
	fsub.s	fa4, fa4, fa3
	fmul.s	fa5, fa5, fa4
	fsw	fa5, -228(s0)
	flw	fa5, -228(s0)
.Lpcrel_hi15:
	auipc	a0, %pcrel_hi(.LCPI11_2)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi15)
	flw	fa4, 0(a0)
	flt.s	a0, fa5, fa4
	beqz	a0, .LBB11_16
	j	.LBB11_15
.LBB11_15:                              #   in Loop: Header=BB11_7 Depth=4
	j	.LBB11_22
.LBB11_16:                              #   in Loop: Header=BB11_9 Depth=5
	li	a0, 0
	sw	a0, -232(s0)
	j	.LBB11_17
.LBB11_17:                              #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_3 Depth=2
                                        #       Parent Loop BB11_5 Depth=3
                                        #         Parent Loop BB11_7 Depth=4
                                        #           Parent Loop BB11_9 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	lw	a1, -232(s0)
	li	a0, 2
	blt	a0, a1, .LBB11_20
	j	.LBB11_18
.LBB11_18:                              #   in Loop: Header=BB11_17 Depth=6
	ld	a1, -88(s0)
	lw	a2, -184(s0)
	slliw	a0, a2, 1
	addw	a2, a2, a0
	lw	a0, -232(s0)
	addw	a2, a2, a0
	slli	a2, a2, 2
	add	a1, a1, a2
	flw	fa5, 0(a1)
	flw	fa4, -224(s0)
	fmul.s	fa5, fa5, fa4
	flw	fa4, -156(s0)
	slli	a1, a0, 2
	addi	a0, s0, -176
	add	a0, a0, a1
	flw	fa3, 0(a0)
	fmadd.s	fa5, fa5, fa4, fa3
	fsw	fa5, 0(a0)
	j	.LBB11_19
.LBB11_19:                              #   in Loop: Header=BB11_17 Depth=6
	lw	a0, -232(s0)
	addiw	a0, a0, 1
	sw	a0, -232(s0)
	j	.LBB11_17
.LBB11_20:                              #   in Loop: Header=BB11_9 Depth=5
	flw	fa5, -228(s0)
	fsw	fa5, -156(s0)
	lw	a0, -160(s0)
	sw	a0, -164(s0)
	j	.LBB11_21
.LBB11_21:                              #   in Loop: Header=BB11_9 Depth=5
	lw	a0, -180(s0)
	addiw	a0, a0, 1
	sw	a0, -180(s0)
	j	.LBB11_9
.LBB11_22:                              #   in Loop: Header=BB11_7 Depth=4
	flw	fa5, -156(s0)
	ld	a0, 8(s0)
	lwu	a1, -144(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	fsw	fa5, 0(a0)
	lw	a0, -164(s0)
	ld	a1, 16(s0)
	lwu	a2, -144(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	li	a0, 0
	sw	a0, -236(s0)
	j	.LBB11_23
.LBB11_23:                              #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_3 Depth=2
                                        #       Parent Loop BB11_5 Depth=3
                                        #         Parent Loop BB11_7 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	lw	a1, -236(s0)
	li	a0, 2
	blt	a0, a1, .LBB11_26
	j	.LBB11_24
.LBB11_24:                              #   in Loop: Header=BB11_23 Depth=5
	lw	a1, -236(s0)
	slli	a2, a1, 2
	addi	a0, s0, -176
	add	a0, a0, a2
	flw	fa3, 0(a0)
	flw	fa5, -156(s0)
	ld	a0, 24(s0)
	add	a0, a0, a2
	flw	fa4, 0(a0)
	fmadd.s	fa5, fa5, fa4, fa3
	ld	a0, 32(s0)
	lw	a2, -72(s0)
	mulw	a1, a1, a2
	lw	a2, -68(s0)
	mulw	a1, a1, a2
	lw	a2, -144(s0)
	addw	a1, a1, a2
	slli	a1, a1, 32
	srli	a1, a1, 30
	add	a0, a0, a1
	fsw	fa5, 0(a0)
	j	.LBB11_25
.LBB11_25:                              #   in Loop: Header=BB11_23 Depth=5
	lw	a0, -236(s0)
	addiw	a0, a0, 1
	sw	a0, -236(s0)
	j	.LBB11_23
.LBB11_26:                              #   in Loop: Header=BB11_7 Depth=4
	j	.LBB11_27
.LBB11_27:                              #   in Loop: Header=BB11_7 Depth=4
	lw	a0, -140(s0)
	addiw	a0, a0, 1
	sw	a0, -140(s0)
	j	.LBB11_7
.LBB11_28:                              #   in Loop: Header=BB11_5 Depth=3
	j	.LBB11_29
.LBB11_29:                              #   in Loop: Header=BB11_5 Depth=3
	lw	a0, -136(s0)
	addiw	a0, a0, 1
	sw	a0, -136(s0)
	j	.LBB11_5
.LBB11_30:                              #   in Loop: Header=BB11_3 Depth=2
	j	.LBB11_31
.LBB11_31:                              #   in Loop: Header=BB11_3 Depth=2
	lw	a0, -104(s0)
	addiw	a0, a0, 1
	sw	a0, -104(s0)
	j	.LBB11_3
.LBB11_32:                              #   in Loop: Header=BB11_1 Depth=1
	j	.LBB11_33
.LBB11_33:                              #   in Loop: Header=BB11_1 Depth=1
	lw	a0, -100(s0)
	addiw	a0, a0, 1
	sw	a0, -100(s0)
	j	.LBB11_1
.LBB11_34:
	ld	ra, 248(sp)                     # 8-byte Folded Reload
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 256
	ret
.Lfunc_end11:
	.size	renderCPU, .Lfunc_end11-renderCPU
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
	bge	a0, a1, .LBB12_2
	j	.LBB12_1
.LBB12_1:
	lw	a0, -20(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB12_3
.LBB12_2:
	lw	a0, -24(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB12_3
.LBB12_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end12:
	.size	min_int, .Lfunc_end12-min_int
	.cfi_endproc
                                        # -- End function
	.globl	cpu_rasterizer_render           # -- Begin function cpu_rasterizer_render
	.p2align	1
	.type	cpu_rasterizer_render,@function
cpu_rasterizer_render:                  # @cpu_rasterizer_render
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -144
	.cfi_def_cfa_offset 144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 144
	.cfi_def_cfa s0, 0
                                        # kill: def $x5 killed $x11
                                        # kill: def $x5 killed $x10
	ld	t0, 32(s0)
	ld	t0, 24(s0)
	ld	t0, 16(s0)
	ld	t0, 8(s0)
	ld	t0, 0(s0)
                                        # kill: def $x5 killed $x15
                                        # kill: def $x5 killed $x14
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	lw	a0, -40(s0)
	sw	a0, -24(s0)
	ld	a0, -48(s0)
	sd	a0, -32(s0)
	sd	a2, -56(s0)
	sd	a3, -64(s0)
	sw	a4, -68(s0)
	sw	a5, -72(s0)
	sd	a6, -80(s0)
	sd	a7, -88(s0)
	ld	a2, -56(s0)
	ld	a3, -64(s0)
	lw	a4, -68(s0)
	lw	a5, -72(s0)
	ld	a6, -80(s0)
	ld	a7, -88(s0)
	ld	t0, 0(s0)
	ld	t2, 8(s0)
	ld	t3, 16(s0)
	ld	t4, 24(s0)
	ld	t5, 32(s0)
	lw	a0, -24(s0)
	sw	a0, -96(s0)
	ld	a0, -32(s0)
	sd	a0, -104(s0)
	ld	a1, -96(s0)
	ld	a0, -104(s0)
	mv	t1, sp
	sd	t5, 32(t1)
	sd	t4, 24(t1)
	sd	t3, 16(t1)
	sd	t2, 8(t1)
	sd	t0, 0(t1)
	call	renderCPU
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.Lfunc_end13:
	.size	cpu_rasterizer_render, .Lfunc_end13-cpu_rasterizer_render
	.cfi_endproc
                                        # -- End function
	.globl	cpu_rasterizer_preprocess       # -- Begin function cpu_rasterizer_preprocess
	.p2align	1
	.type	cpu_rasterizer_preprocess,@function
cpu_rasterizer_preprocess:              # @cpu_rasterizer_preprocess
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -400
	.cfi_def_cfa_offset 400
	sd	ra, 392(sp)                     # 8-byte Folded Spill
	sd	s0, 384(sp)                     # 8-byte Folded Spill
	sd	s1, 376(sp)                     # 8-byte Folded Spill
	sd	s2, 368(sp)                     # 8-byte Folded Spill
	sd	s3, 360(sp)                     # 8-byte Folded Spill
	sd	s4, 352(sp)                     # 8-byte Folded Spill
	sd	s5, 344(sp)                     # 8-byte Folded Spill
	sd	s6, 336(sp)                     # 8-byte Folded Spill
	sd	s7, 328(sp)                     # 8-byte Folded Spill
	sd	s8, 320(sp)                     # 8-byte Folded Spill
	sd	s9, 312(sp)                     # 8-byte Folded Spill
	sd	s10, 304(sp)                    # 8-byte Folded Spill
	sd	s11, 296(sp)                    # 8-byte Folded Spill
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
	addi	s0, sp, 400
	.cfi_def_cfa s0, 0
	mv	t0, a2
	mv	t1, a1
	mv	t2, a0
	ld	t4, 120(s0)
	ld	t3, 112(s0)
	ld	a0, 136(s0)
	ld	a1, 128(s0)
	ld	a1, 104(s0)
	ld	a1, 96(s0)
	ld	a1, 88(s0)
	ld	a1, 80(s0)
	ld	a1, 72(s0)
	ld	a1, 64(s0)
	ld	a1, 56(s0)
	ld	a2, 48(s0)
	ld	t5, 40(s0)
	ld	t5, 32(s0)
	ld	t5, 24(s0)
	ld	t5, 16(s0)
	ld	t5, 8(s0)
	ld	t5, 0(s0)
                                        # kill: def $x30 killed $x5
                                        # kill: def $x30 killed $x6
                                        # kill: def $x30 killed $x7
	sd	t4, -128(s0)
	sd	t3, -136(s0)
	lw	t3, -128(s0)
	sw	t3, -112(s0)
	ld	t3, -136(s0)
	sd	t3, -120(s0)
	sw	t2, -140(s0)
	sw	t1, -144(s0)
	sw	t0, -148(s0)
	sd	a3, -160(s0)
	sd	a4, -168(s0)
	fsw	fa0, -172(s0)
	sd	a5, -184(s0)
	sd	a6, -192(s0)
	sd	a7, -200(s0)
	sw	a2, -204(s0)
	sw	a1, -208(s0)
	fsw	fa1, -212(s0)
	fsw	fa2, -216(s0)
	fsw	fa3, -220(s0)
	fsw	fa4, -224(s0)
	sw	a0, -228(s0)
	lw	a0, -140(s0)
	lw	a1, -144(s0)
	lw	a2, -148(s0)
	ld	a3, -160(s0)
	ld	a4, -168(s0)
	flw	fa0, -172(s0)
	ld	a5, -184(s0)
	ld	a6, -192(s0)
	ld	a7, -200(s0)
	ld	t0, 0(s0)
	ld	t2, 8(s0)
	ld	t3, 16(s0)
	ld	t4, 24(s0)
	ld	t5, 32(s0)
	ld	t6, 40(s0)
	lw	s1, -204(s0)
	lw	s2, -208(s0)
	flw	fa1, -212(s0)
	flw	fa2, -216(s0)
	flw	fa3, -220(s0)
	flw	fa4, -224(s0)
	ld	s3, 64(s0)
	ld	s4, 72(s0)
	ld	s5, 80(s0)
	ld	s6, 88(s0)
	ld	s7, 96(s0)
	ld	s8, 104(s0)
	ld	s11, 128(s0)
	lw	ra, -228(s0)
	lw	t1, -112(s0)
	sw	t1, -240(s0)
	ld	t1, -120(s0)
	sd	t1, -248(s0)
	ld	s9, -248(s0)
	ld	s10, -240(s0)
	mv	t1, sp
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
	call	preprocessCPU
	ld	ra, 392(sp)                     # 8-byte Folded Reload
	ld	s0, 384(sp)                     # 8-byte Folded Reload
	ld	s1, 376(sp)                     # 8-byte Folded Reload
	ld	s2, 368(sp)                     # 8-byte Folded Reload
	ld	s3, 360(sp)                     # 8-byte Folded Reload
	ld	s4, 352(sp)                     # 8-byte Folded Reload
	ld	s5, 344(sp)                     # 8-byte Folded Reload
	ld	s6, 336(sp)                     # 8-byte Folded Reload
	ld	s7, 328(sp)                     # 8-byte Folded Reload
	ld	s8, 320(sp)                     # 8-byte Folded Reload
	ld	s9, 312(sp)                     # 8-byte Folded Reload
	ld	s10, 304(sp)                    # 8-byte Folded Reload
	ld	s11, 296(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 400
	ret
.Lfunc_end14:
	.size	cpu_rasterizer_preprocess, .Lfunc_end14-cpu_rasterizer_preprocess
	.cfi_endproc
                                        # -- End function
	.type	SH_C0,@object                   # @SH_C0
	.section	.rodata,"a",@progbits
	.globl	SH_C0
	.p2align	2, 0x0
SH_C0:
	.word	0x3e906ebb                      # float 0.282094806
	.size	SH_C0, 4

	.type	SH_C1,@object                   # @SH_C1
	.globl	SH_C1
	.p2align	2, 0x0
SH_C1:
	.word	0x3efa2a1c                      # float 0.488602519
	.size	SH_C1, 4

	.type	SH_C2,@object                   # @SH_C2
	.globl	SH_C2
	.p2align	2, 0x0
SH_C2:
	.word	0x3f8bd8a1                      # float 1.09254849
	.word	0xbf8bd8a1                      # float -1.09254849
	.word	0x3ea17b01                      # float 0.31539157
	.word	0xbf8bd8a1                      # float -1.09254849
	.word	0x3f0bd8a1                      # float 0.546274245
	.size	SH_C2, 20

	.type	SH_C3,@object                   # @SH_C3
	.globl	SH_C3
	.p2align	2, 0x0
SH_C3:
	.word	0xbf170d19                      # float -0.590043604
	.word	0x4038ffc7                      # float 2.89061141
	.word	0xbeea01e8                      # float -0.457045794
	.word	0x3ebf10f8                      # float 0.373176336
	.word	0xbeea01e8                      # float -0.457045794
	.word	0x3fb8ffc7                      # float 1.44530571
	.word	0xbf170d19                      # float -0.590043604
	.size	SH_C3, 28

	.ident	"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym computeColorFromSH
	.addrsig_sym vec3_sub
	.addrsig_sym vec3_length
	.addrsig_sym vec3_div_scalar
	.addrsig_sym vec3_mul_scalar
	.addrsig_sym vec3_add
	.addrsig_sym vec3_max_scalar
	.addrsig_sym preprocessCPU
	.addrsig_sym cpu_rasterizer_in_frustum
	.addrsig_sym cpu_rasterizer_transformPoint4x4
	.addrsig_sym computeCov3D
	.addrsig_sym computeCov2D
	.addrsig_sym sqrt
	.addrsig_sym cpu_rasterizer_ndc2Pix
	.addrsig_sym cpu_rasterizer_getRect
	.addrsig_sym renderCPU
	.addrsig_sym min_int
	.addrsig_sym exp
	.addrsig_sym cpu_rasterizer_transformPoint4x3
	.addrsig_sym SH_C2
	.addrsig_sym SH_C3
