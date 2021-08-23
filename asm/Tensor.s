	.text
	.file	"Tensor.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _ZN6TensorIfE9init_dataERKN6tensor4initE
.LCPI0_0:
	.long	0x4f800000                      #  4.2949673E+9
.LCPI0_1:
	.long	0x40000000                      #  2
.LCPI0_2:
	.long	0x5f000000                      #  9.22337203E+18
.LCPI0_3:
	.long	0x3f800000                      #  1
.LCPI0_11:
	.long	8                               # 0x8
.LCPI0_12:
	.long	16                              # 0x10
.LCPI0_13:
	.long	24                              # 0x18
.LCPI0_14:
	.long	32                              # 0x20
.LCPI0_15:
	.long	40                              # 0x28
.LCPI0_16:
	.long	48                              # 0x30
.LCPI0_17:
	.long	56                              # 0x38
.LCPI0_18:
	.long	64                              # 0x40
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_4:
	.quad	-2147483648                     # 0xffffffff80000000
.LCPI0_5:
	.quad	2147483646                      # 0x7ffffffe
.LCPI0_6:
	.quad	2567483615                      # 0x9908b0df
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_7:
	.quad	-2147483648                     # 0xffffffff80000000
	.quad	-2147483648                     # 0xffffffff80000000
.LCPI0_8:
	.quad	2147483646                      # 0x7ffffffe
	.quad	2147483646                      # 0x7ffffffe
.LCPI0_9:
	.quad	2567483615                      # 0x9908b0df
	.quad	2567483615                      # 0x9908b0df
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5
.LCPI0_10:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	7                               # 0x7
	.section	.text._ZN6TensorIfE9init_dataERKN6tensor4initE,"axG",@progbits,_ZN6TensorIfE9init_dataERKN6tensor4initE,comdat
	.weak	_ZN6TensorIfE9init_dataERKN6tensor4initE
	.p2align	4, 0x90
	.type	_ZN6TensorIfE9init_dataERKN6tensor4initE,@function
_ZN6TensorIfE9init_dataERKN6tensor4initE: # 
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$10152, %rsp                    # imm = 0x27A8
	.cfi_def_cfa_offset 10208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	32(%rdi), %edx
	testq	%rdx, %rdx
	je	.LBB0_63
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	8(%rdi), %r14
	shlq	$2, %rdx
	movl	$16, %esi
	movq	%r14, %rdi
	callq	posix_memalign
	movl	(%rbx), %eax
	cmpq	$3, %rax
	ja	.LBB0_14
# %bb.2:
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_15:
	movslq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB0_14
# %bb.16:
	movq	(%r14), %rcx
	cmpl	$31, %eax
	ja	.LBB0_18
# %bb.17:
	xorl	%edx, %edx
	jmp	.LBB0_26
.LBB0_29:
	leaq	168(%rsp), %rbp
	movq	%rbp, 152(%rsp)
	movl	$1634100580, 168(%rsp)          # imm = 0x61666564
	movl	$1953264993, 171(%rsp)          # imm = 0x746C7561
	movq	$7, 160(%rsp)
	movb	$0, 175(%rsp)
.Ltmp0:
	leaq	5152(%rsp), %rdi
	leaq	152(%rsp), %rsi
	callq	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp1:
# %bb.30:
	movq	152(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.LBB0_32
# %bb.31:
	callq	_ZdlPv
.LBB0_32:
.Ltmp3:
	leaq	5152(%rsp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp4:
# %bb.33:
	movl	%eax, %ebp
	movq	%rbp, 152(%rsp)
	movl	$2, %eax
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	.p2align	4, 0x90
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	shrq	$30, %rsi
	xorl	%edx, %esi
	imull	$1812433253, %esi, %edx         # imm = 0x6C078965
	addl	%eax, %edx
	decl	%edx
	movq	%rdx, 144(%rsp,%rax,8)
	cmpq	$624, %rax                      # imm = 0x270
	je	.LBB0_35
# %bb.62:                               #   in Loop: Header=BB0_34 Depth=1
	movq	%rdx, %rsi
	shrq	$30, %rsi
	xorl	%edx, %esi
	imull	$1812433253, %esi, %esi         # imm = 0x6C078965
	movzwl	%ax, %edx
	cmpl	$624, %edx                      # imm = 0x270
	movl	%eax, %edx
	cmovel	%ecx, %edx
	addl	%esi, %edx
	movq	%rdx, 152(%rsp,%rax,8)
	addq	$2, %rax
	jmp	.LBB0_34
.LBB0_3:
	movslq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB0_14
# %bb.4:
	movq	(%r14), %rcx
	cmpl	$31, %eax
	ja	.LBB0_6
# %bb.5:
	xorl	%edx, %edx
	jmp	.LBB0_13
.LBB0_27:
	movl	32(%r15), %edx
	testq	%rdx, %rdx
	je	.LBB0_14
# %bb.28:
	movq	(%r14), %rdi
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
	jmp	.LBB0_14
.LBB0_35:
	movslq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB0_60
# %bb.36:
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	flds	.LCPI0_0(%rip)
	fstpt	(%rsp)
	callq	logl@PLT
	fstpt	32(%rsp)                        # 10-byte Folded Spill
	flds	.LCPI0_1(%rip)
	fstpt	(%rsp)
	callq	logl@PLT
	fldt	32(%rsp)                        # 10-byte Folded Reload
	fdivp	%st, %st(1)
	flds	.LCPI0_2(%rip)
	xorl	%ecx, %ecx
	fxch	%st(1)
	fucomi	%st(1), %st
	fldz
	fcmovnb	%st(2), %st
	fstp	%st(2)
	fsubp	%st, %st(1)
	fisttpll	24(%rsp)
	setae	%cl
	shlq	$63, %rcx
	xorq	24(%rsp), %rcx
	leaq	23(%rcx), %rax
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB0_37
# %bb.38:
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB0_39
.LBB0_6:
	movq	%rax, %rdx
	andq	$-32, %rdx
	leaq	-32(%rdx), %rsi
	movq	%rsi, %rbp
	shrq	$5, %rbp
	incq	%rbp
	testq	%rsi, %rsi
	je	.LBB0_7
# %bb.8:
	movq	%rbp, %rdi
	andq	$-2, %rdi
	negq	%rdi
	vmovdqa	.LCPI0_10(%rip), %ymm0          # ymm0 = [0,1,2,3,4,5,6,7]
	xorl	%esi, %esi
	vpbroadcastd	.LCPI0_11(%rip), %ymm1  # ymm1 = [8,8,8,8,8,8,8,8]
	vpbroadcastd	.LCPI0_12(%rip), %ymm2  # ymm2 = [16,16,16,16,16,16,16,16]
	vpbroadcastd	.LCPI0_13(%rip), %ymm3  # ymm3 = [24,24,24,24,24,24,24,24]
	vpbroadcastd	.LCPI0_14(%rip), %ymm4  # ymm4 = [32,32,32,32,32,32,32,32]
	vpbroadcastd	.LCPI0_15(%rip), %ymm5  # ymm5 = [40,40,40,40,40,40,40,40]
	vpbroadcastd	.LCPI0_16(%rip), %ymm6  # ymm6 = [48,48,48,48,48,48,48,48]
	vpbroadcastd	.LCPI0_17(%rip), %ymm7  # ymm7 = [56,56,56,56,56,56,56,56]
	vpbroadcastd	.LCPI0_18(%rip), %ymm8  # ymm8 = [64,64,64,64,64,64,64,64]
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	vpaddd	%ymm1, %ymm0, %ymm9
	vpaddd	%ymm2, %ymm0, %ymm10
	vpaddd	%ymm3, %ymm0, %ymm11
	vcvtdq2ps	%ymm0, %ymm12
	vcvtdq2ps	%ymm9, %ymm9
	vcvtdq2ps	%ymm10, %ymm10
	vmovups	%ymm12, (%rcx,%rsi,4)
	vmovups	%ymm9, 32(%rcx,%rsi,4)
	vcvtdq2ps	%ymm11, %ymm9
	vmovups	%ymm10, 64(%rcx,%rsi,4)
	vmovups	%ymm9, 96(%rcx,%rsi,4)
	vpaddd	%ymm4, %ymm0, %ymm9
	vpaddd	%ymm5, %ymm0, %ymm10
	vpaddd	%ymm6, %ymm0, %ymm11
	vpaddd	%ymm7, %ymm0, %ymm12
	vcvtdq2ps	%ymm9, %ymm9
	vcvtdq2ps	%ymm10, %ymm10
	vcvtdq2ps	%ymm11, %ymm11
	vmovups	%ymm9, 128(%rcx,%rsi,4)
	vmovups	%ymm10, 160(%rcx,%rsi,4)
	vmovups	%ymm11, 192(%rcx,%rsi,4)
	vcvtdq2ps	%ymm12, %ymm9
	vmovups	%ymm9, 224(%rcx,%rsi,4)
	addq	$64, %rsi
	vpaddd	%ymm0, %ymm8, %ymm0
	addq	$2, %rdi
	jne	.LBB0_9
# %bb.10:
	testb	$1, %bpl
	je	.LBB0_12
.LBB0_11:
	vpbroadcastd	.LCPI0_11(%rip), %ymm1  # ymm1 = [8,8,8,8,8,8,8,8]
	vpaddd	%ymm1, %ymm0, %ymm1
	vpbroadcastd	.LCPI0_12(%rip), %ymm2  # ymm2 = [16,16,16,16,16,16,16,16]
	vpaddd	%ymm2, %ymm0, %ymm2
	vpbroadcastd	.LCPI0_13(%rip), %ymm3  # ymm3 = [24,24,24,24,24,24,24,24]
	vpaddd	%ymm3, %ymm0, %ymm3
	vcvtdq2ps	%ymm0, %ymm0
	vcvtdq2ps	%ymm1, %ymm1
	vcvtdq2ps	%ymm2, %ymm2
	vcvtdq2ps	%ymm3, %ymm3
	vmovups	%ymm0, (%rcx,%rsi,4)
	vmovups	%ymm1, 32(%rcx,%rsi,4)
	vmovups	%ymm2, 64(%rcx,%rsi,4)
	vmovups	%ymm3, 96(%rcx,%rsi,4)
.LBB0_12:
	cmpq	%rax, %rdx
	je	.LBB0_14
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	vcvtsi2ss	%edx, %xmm13, %xmm0
	vmovss	%xmm0, (%rcx,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB0_13
	jmp	.LBB0_14
.LBB0_18:
	movq	%rax, %rdx
	andq	$-32, %rdx
	leaq	-32(%rdx), %rbp
	movq	%rbp, %rdi
	shrq	$5, %rdi
	incq	%rdi
	movl	%edi, %esi
	andl	$7, %esi
	cmpq	$224, %rbp
	jae	.LBB0_20
# %bb.19:
	xorl	%ebp, %ebp
	jmp	.LBB0_22
.LBB0_37:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
.LBB0_39:
	movl	$2567483615, %ebx               # imm = 0x9908B0DF
	testq	%rax, %rax
	movl	$1, %r12d
	cmovneq	%rax, %r12
	movq	(%r14), %r14
	movl	$624, %r15d                     # imm = 0x270
	xorl	%r13d, %r13d
	vpbroadcastq	.LCPI0_4(%rip), %ymm12  # ymm12 = [18446744071562067968,18446744071562067968,18446744071562067968,18446744071562067968]
	vpbroadcastq	.LCPI0_5(%rip), %ymm13  # ymm13 = [2147483646,2147483646,2147483646,2147483646]
	vpxor	%xmm14, %xmm14, %xmm14
	vpbroadcastq	.LCPI0_6(%rip), %ymm15  # ymm15 = [2567483615,2567483615,2567483615,2567483615]
	vmovdqa	.LCPI0_7(%rip), %xmm11          # xmm11 = [18446744071562067968,18446744071562067968]
	vmovd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movq	16(%rsp), %r8                   # 8-byte Reload
	.p2align	4, 0x90
.LBB0_40:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_43 Depth 3
                                        #       Child Loop BB0_45 Depth 3
	movq	%r12, %rax
	vmovss	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vxorps	%xmm3, %xmm3, %xmm3
	jmp	.LBB0_41
	.p2align	4, 0x90
.LBB0_55:                               #   in Loop: Header=BB0_41 Depth=2
	vcvtsi2ss	%rcx, %xmm8, %xmm2
	vfmadd231ss	%xmm2, %xmm0, %xmm3     # xmm3 = (xmm0 * xmm2) + xmm3
	vmulss	%xmm1, %xmm0, %xmm0
	decq	%rax
	je	.LBB0_57
.LBB0_41:                               #   Parent Loop BB0_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_43 Depth 3
                                        #       Child Loop BB0_45 Depth 3
	cmpq	$624, %r15                      # imm = 0x270
	jb	.LBB0_52
# %bb.42:                               #   in Loop: Header=BB0_41 Depth=2
	vmovss	%xmm3, 64(%rsp)                 # 4-byte Spill
	vmovss	%xmm0, 32(%rsp)                 # 4-byte Spill
	vmovq	%rbp, %xmm2
	vpbroadcastq	%xmm2, %ymm2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_43:                               #   Parent Loop BB0_40 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovdqu	160(%rsp,%rcx,8), %ymm5
	vmovdqu	192(%rsp,%rcx,8), %ymm4
	vmovdqu	224(%rsp,%rcx,8), %ymm3
	vperm2i128	$33, %ymm5, %ymm2, %ymm6 # ymm6 = ymm2[2,3],ymm5[0,1]
	vmovdqu	256(%rsp,%rcx,8), %ymm2
	vpalignr	$8, %ymm6, %ymm5, %ymm6         # ymm6 = ymm6[8,9,10,11,12,13,14,15],ymm5[0,1,2,3,4,5,6,7],ymm6[24,25,26,27,28,29,30,31],ymm5[16,17,18,19,20,21,22,23]
	vperm2i128	$33, %ymm4, %ymm5, %ymm7 # ymm7 = ymm5[2,3],ymm4[0,1]
	vpalignr	$8, %ymm7, %ymm4, %ymm7         # ymm7 = ymm7[8,9,10,11,12,13,14,15],ymm4[0,1,2,3,4,5,6,7],ymm7[24,25,26,27,28,29,30,31],ymm4[16,17,18,19,20,21,22,23]
	vperm2i128	$33, %ymm3, %ymm4, %ymm8 # ymm8 = ymm4[2,3],ymm3[0,1]
	vpalignr	$8, %ymm8, %ymm3, %ymm8         # ymm8 = ymm8[8,9,10,11,12,13,14,15],ymm3[0,1,2,3,4,5,6,7],ymm8[24,25,26,27,28,29,30,31],ymm3[16,17,18,19,20,21,22,23]
	vperm2i128	$33, %ymm2, %ymm3, %ymm9 # ymm9 = ymm3[2,3],ymm2[0,1]
	vpalignr	$8, %ymm9, %ymm2, %ymm9         # ymm9 = ymm9[8,9,10,11,12,13,14,15],ymm2[0,1,2,3,4,5,6,7],ymm9[24,25,26,27,28,29,30,31],ymm2[16,17,18,19,20,21,22,23]
	vpand	%ymm6, %ymm12, %ymm6
	vpand	%ymm7, %ymm12, %ymm7
	vpand	%ymm12, %ymm8, %ymm8
	vpand	%ymm12, %ymm9, %ymm9
	vpand	%ymm5, %ymm13, %ymm10
	vpor	%ymm6, %ymm10, %ymm6
	vpand	%ymm4, %ymm13, %ymm10
	vpor	%ymm7, %ymm10, %ymm7
	vpand	%ymm3, %ymm13, %ymm10
	vpor	%ymm8, %ymm10, %ymm8
	vpand	%ymm2, %ymm13, %ymm10
	vpor	%ymm9, %ymm10, %ymm9
	vpsrlq	$1, %ymm6, %ymm6
	vpsrlq	$1, %ymm7, %ymm7
	vpsrlq	$1, %ymm8, %ymm8
	vpsrlq	$1, %ymm9, %ymm9
	vpxor	3328(%rsp,%rcx,8), %ymm6, %ymm6
	vpxor	3360(%rsp,%rcx,8), %ymm7, %ymm7
	vpxor	3392(%rsp,%rcx,8), %ymm8, %ymm8
	vpxor	3424(%rsp,%rcx,8), %ymm9, %ymm9
	vpsllq	$63, %ymm5, %ymm5
	vpcmpgtq	%ymm5, %ymm14, %ymm5
	vpand	%ymm5, %ymm15, %ymm5
	vpxor	%ymm5, %ymm6, %ymm5
	vpsllq	$63, %ymm4, %ymm4
	vpcmpgtq	%ymm4, %ymm14, %ymm4
	vpand	%ymm4, %ymm15, %ymm4
	vpxor	%ymm4, %ymm7, %ymm4
	vpsllq	$63, %ymm3, %ymm3
	vpcmpgtq	%ymm3, %ymm14, %ymm3
	vpand	%ymm3, %ymm15, %ymm3
	vpxor	%ymm3, %ymm8, %ymm3
	vpsllq	$63, %ymm2, %ymm6
	vpcmpgtq	%ymm6, %ymm14, %ymm6
	vpand	%ymm6, %ymm15, %ymm6
	vpxor	%ymm6, %ymm9, %ymm6
	vmovdqu	%ymm5, 152(%rsp,%rcx,8)
	vmovdqu	%ymm4, 184(%rsp,%rcx,8)
	vmovdqu	%ymm3, 216(%rsp,%rcx,8)
	vmovdqu	%ymm6, 248(%rsp,%rcx,8)
	addq	$16, %rcx
	cmpq	$224, %rcx
	jne	.LBB0_43
# %bb.44:                               #   in Loop: Header=BB0_41 Depth=2
	vextracti128	$1, %ymm2, %xmm2
	vpextrq	$1, %xmm2, %rdx
	andq	$-2147483648, %rdx              # imm = 0x80000000
	movq	1952(%rsp), %rsi
	movq	1960(%rsp), %rcx
	movl	%esi, %edi
	andl	$2147483646, %edi               # imm = 0x7FFFFFFE
	orq	%rdx, %rdi
	shrq	%rdi
	xorq	5120(%rsp), %rdi
	movl	%esi, %edx
	andl	$1, %edx
	negl	%edx
	andl	%ebx, %edx
	xorq	%rdi, %rdx
	movq	%rdx, 1944(%rsp)
	andq	$-2147483648, %rsi              # imm = 0x80000000
	movl	%ecx, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	orq	%rsi, %rdx
	shrq	%rdx
	xorq	5128(%rsp), %rdx
	movl	%ecx, %esi
	andl	$1, %esi
	negl	%esi
	andl	%ebx, %esi
	xorq	%rdx, %rsi
	movq	%rsi, 1952(%rsp)
	andq	$-2147483648, %rcx              # imm = 0x80000000
	movq	1968(%rsp), %rdx
	movl	%edx, %esi
	vmovq	%rdx, %xmm2
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	orq	%rcx, %rdx
	shrq	%rdx
	xorq	5136(%rsp), %rdx
	andl	$1, %esi
	negl	%esi
	andl	%ebx, %esi
	xorq	%rdx, %rsi
	movq	%rsi, 1960(%rsp)
	vpbroadcastq	%xmm2, %xmm2
	xorl	%ecx, %ecx
	vmovdqa	.LCPI0_8(%rip), %xmm7           # xmm7 = [2147483646,2147483646]
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqa	.LCPI0_9(%rip), %xmm0           # xmm0 = [2567483615,2567483615]
	.p2align	4, 0x90
.LBB0_45:                               #   Parent Loop BB0_40 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovdqu	1976(%rsp,%rcx,8), %xmm3
	vmovdqu	1992(%rsp,%rcx,8), %xmm4
	vpalignr	$8, %xmm2, %xmm3, %xmm5         # xmm5 = xmm2[8,9,10,11,12,13,14,15],xmm3[0,1,2,3,4,5,6,7]
	vmovdqu	2008(%rsp,%rcx,8), %xmm2
	vpand	%xmm5, %xmm11, %xmm5
	vpand	%xmm7, %xmm3, %xmm6
	vpor	%xmm5, %xmm6, %xmm5
	vpsrlq	$1, %xmm5, %xmm5
	vpxor	152(%rsp,%rcx,8), %xmm5, %xmm5
	vpsllq	$63, %xmm3, %xmm6
	vpcmpgtq	%xmm6, %xmm1, %xmm6
	vpand	%xmm0, %xmm6, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vmovdqu	%xmm5, 1968(%rsp,%rcx,8)
	vpalignr	$8, %xmm3, %xmm4, %xmm3         # xmm3 = xmm3[8,9,10,11,12,13,14,15],xmm4[0,1,2,3,4,5,6,7]
	vpand	%xmm3, %xmm11, %xmm3
	vpand	%xmm7, %xmm4, %xmm5
	vpor	%xmm3, %xmm5, %xmm3
	vpsrlq	$1, %xmm3, %xmm3
	vpxor	168(%rsp,%rcx,8), %xmm3, %xmm3
	vpsllq	$63, %xmm4, %xmm5
	vpcmpgtq	%xmm5, %xmm1, %xmm5
	vpand	%xmm0, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqu	%xmm3, 1984(%rsp,%rcx,8)
	vpalignr	$8, %xmm4, %xmm2, %xmm3         # xmm3 = xmm4[8,9,10,11,12,13,14,15],xmm2[0,1,2,3,4,5,6,7]
	vpand	%xmm3, %xmm11, %xmm3
	vpand	%xmm7, %xmm2, %xmm4
	vpor	%xmm3, %xmm4, %xmm3
	vpsrlq	$1, %xmm3, %xmm3
	vpxor	184(%rsp,%rcx,8), %xmm3, %xmm3
	vpsllq	$63, %xmm2, %xmm4
	vpcmpgtq	%xmm4, %xmm1, %xmm4
	vpand	%xmm0, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vmovdqu	%xmm3, 2000(%rsp,%rcx,8)
	addq	$6, %rcx
	cmpq	$396, %rcx                      # imm = 0x18C
	jne	.LBB0_45
# %bb.46:                               #   in Loop: Header=BB0_41 Depth=2
	movq	5136(%rsp), %rcx
	andq	$-2147483648, %rcx              # imm = 0x80000000
	movq	152(%rsp), %rbp
	movl	%ebp, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	orq	%rcx, %rdx
	shrq	%rdx
	xorq	3320(%rsp), %rdx
	movl	%ebp, %ecx
	andl	$1, %ecx
	negl	%ecx
	movl	$2567483615, %esi               # imm = 0x9908B0DF
	andl	%ecx, %esi
	xorq	%rdx, %rsi
	movq	%rsi, 5136(%rsp)
	movl	$1, %r15d
	movq	%rbp, %rcx
	vmovd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vmovss	32(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	64(%rsp), %xmm3                 # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB0_53
	.p2align	4, 0x90
.LBB0_52:                               #   in Loop: Header=BB0_41 Depth=2
	movq	152(%rsp,%r15,8), %rcx
	incq	%r15
.LBB0_53:                               #   in Loop: Header=BB0_41 Depth=2
	movq	%rcx, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rcx, %rdx
	movl	%edx, %ecx
	andl	$20601005, %ecx                 # imm = 0x13A58AD
	shlq	$7, %rcx
	xorq	%rdx, %rcx
	movl	%ecx, %edx
	andl	$122764, %edx                   # imm = 0x1DF8C
	shlq	$15, %rdx
	xorq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$18, %rcx
	xorq	%rdx, %rcx
	jns	.LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_41 Depth=2
	movq	%rcx, %rdx
	shrq	%rdx
	andl	$1, %ecx
	orq	%rdx, %rcx
	vcvtsi2ss	%rcx, %xmm8, %xmm2
	vaddss	%xmm2, %xmm2, %xmm2
	vfmadd231ss	%xmm2, %xmm0, %xmm3     # xmm3 = (xmm0 * xmm2) + xmm3
	vmulss	%xmm1, %xmm0, %xmm0
	decq	%rax
	jne	.LBB0_41
.LBB0_57:                               #   in Loop: Header=BB0_40 Depth=1
	vdivss	%xmm0, %xmm3, %xmm0
	vucomiss	.LCPI0_3(%rip), %xmm0
	jae	.LBB0_58
# %bb.59:                               #   in Loop: Header=BB0_40 Depth=1
	vmovss	%xmm0, (%r14,%r13,4)
	incq	%r13
	cmpq	%r8, %r13
	jne	.LBB0_40
	jmp	.LBB0_60
.LBB0_58:                               #   in Loop: Header=BB0_40 Depth=1
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovdqu	%ymm12, 32(%rsp)                # 32-byte Spill
	vmovdqu	%ymm13, 64(%rsp)                # 32-byte Spill
	vmovdqu	%ymm15, 96(%rsp)                # 32-byte Spill
	vzeroupper
	callq	nextafterf
	vmovss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vmovdqa	.LCPI0_7(%rip), %xmm11          # xmm11 = [18446744071562067968,18446744071562067968]
	vmovdqu	96(%rsp), %ymm15                # 32-byte Reload
	vpxor	%xmm14, %xmm14, %xmm14
	vmovdqu	64(%rsp), %ymm13                # 32-byte Reload
	vmovdqu	32(%rsp), %ymm12                # 32-byte Reload
	movq	16(%rsp), %r8                   # 8-byte Reload
	vmovss	%xmm0, (%r14,%r13,4)
	incq	%r13
	cmpq	%r8, %r13
	jne	.LBB0_40
.LBB0_60:
.Ltmp9:
	leaq	5152(%rsp), %rdi
	vzeroupper
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp10:
	jmp	.LBB0_14
.LBB0_20:
	leaq	992(%rcx), %rbx
	andq	$-8, %rdi
	negq	%rdi
	xorl	%ebp, %ebp
	vbroadcastss	.LCPI0_3(%rip), %ymm0   # ymm0 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, -992(%rbx,%rbp,4)
	vmovups	%ymm0, -960(%rbx,%rbp,4)
	vmovups	%ymm0, -928(%rbx,%rbp,4)
	vmovups	%ymm0, -896(%rbx,%rbp,4)
	vmovups	%ymm0, -864(%rbx,%rbp,4)
	vmovups	%ymm0, -832(%rbx,%rbp,4)
	vmovups	%ymm0, -800(%rbx,%rbp,4)
	vmovups	%ymm0, -768(%rbx,%rbp,4)
	vmovups	%ymm0, -736(%rbx,%rbp,4)
	vmovups	%ymm0, -704(%rbx,%rbp,4)
	vmovups	%ymm0, -672(%rbx,%rbp,4)
	vmovups	%ymm0, -640(%rbx,%rbp,4)
	vmovups	%ymm0, -608(%rbx,%rbp,4)
	vmovups	%ymm0, -576(%rbx,%rbp,4)
	vmovups	%ymm0, -544(%rbx,%rbp,4)
	vmovups	%ymm0, -512(%rbx,%rbp,4)
	vmovups	%ymm0, -480(%rbx,%rbp,4)
	vmovups	%ymm0, -448(%rbx,%rbp,4)
	vmovups	%ymm0, -416(%rbx,%rbp,4)
	vmovups	%ymm0, -384(%rbx,%rbp,4)
	vmovups	%ymm0, -352(%rbx,%rbp,4)
	vmovups	%ymm0, -320(%rbx,%rbp,4)
	vmovups	%ymm0, -288(%rbx,%rbp,4)
	vmovups	%ymm0, -256(%rbx,%rbp,4)
	vmovups	%ymm0, -224(%rbx,%rbp,4)
	vmovups	%ymm0, -192(%rbx,%rbp,4)
	vmovups	%ymm0, -160(%rbx,%rbp,4)
	vmovups	%ymm0, -128(%rbx,%rbp,4)
	vmovups	%ymm0, -96(%rbx,%rbp,4)
	vmovups	%ymm0, -64(%rbx,%rbp,4)
	vmovups	%ymm0, -32(%rbx,%rbp,4)
	vmovups	%ymm0, (%rbx,%rbp,4)
	addq	$256, %rbp                      # imm = 0x100
	addq	$8, %rdi
	jne	.LBB0_21
.LBB0_22:
	testq	%rsi, %rsi
	je	.LBB0_25
# %bb.23:
	leaq	(%rcx,%rbp,4), %rdi
	addq	$96, %rdi
	shlq	$7, %rsi
	xorl	%ebp, %ebp
	vbroadcastss	.LCPI0_3(%rip), %ymm0   # ymm0 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	.p2align	4, 0x90
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, -96(%rdi,%rbp)
	vmovups	%ymm0, -64(%rdi,%rbp)
	vmovups	%ymm0, -32(%rdi,%rbp)
	vmovups	%ymm0, (%rdi,%rbp)
	subq	$-128, %rbp
	cmpq	%rbp, %rsi
	jne	.LBB0_24
.LBB0_25:
	cmpq	%rax, %rdx
	je	.LBB0_14
	.p2align	4, 0x90
.LBB0_26:                               # =>This Inner Loop Header: Depth=1
	movl	$1065353216, (%rcx,%rdx,4)      # imm = 0x3F800000
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB0_26
.LBB0_14:
	addq	$10152, %rsp                    # imm = 0x27A8
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.LBB0_7:
	.cfi_def_cfa_offset 10208
	vmovdqa	.LCPI0_10(%rip), %ymm0          # ymm0 = [0,1,2,3,4,5,6,7]
	xorl	%esi, %esi
	testb	$1, %bpl
	jne	.LBB0_11
	jmp	.LBB0_12
.LBB0_63:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZN6TensorIfE9init_dataERKN6tensor4initE, %ecx
	movl	$16, %edx
	callq	__assert_fail
.LBB0_47:
.Ltmp11:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_51:
.Ltmp5:
	movq	%rax, %rbx
.Ltmp6:
	leaq	5152(%rsp), %rdi
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp7:
	jmp	.LBB0_50
.LBB0_61:
.Ltmp8:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_48:
.Ltmp2:
	movq	%rax, %rbx
	movq	152(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.LBB0_50
# %bb.49:
	callq	_ZdlPv
.LBB0_50:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end0:
	.size	_ZN6TensorIfE9init_dataERKN6tensor4initE, .Lfunc_end0-_ZN6TensorIfE9init_dataERKN6tensor4initE
	.cfi_endproc
	.section	.rodata._ZN6TensorIfE9init_dataERKN6tensor4initE,"aG",@progbits,_ZN6TensorIfE9init_dataERKN6tensor4initE,comdat
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_15
	.quad	.LBB0_27
	.quad	.LBB0_29
	.quad	.LBB0_3
	.section	.gcc_except_table._ZN6TensorIfE9init_dataERKN6tensor4initE,"aG",@progbits,_ZN6TensorIfE9init_dataERKN6tensor4initE,comdat
	.p2align	2
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp9-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Lfunc_end0-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text._ZNK6TensorIfE14convolveThreadERS0_RKS0_jjjjjjjjjjjjjjjj,"axG",@progbits,_ZNK6TensorIfE14convolveThreadERS0_RKS0_jjjjjjjjjjjjjjjj,comdat
	.weak	_ZNK6TensorIfE14convolveThreadERS0_RKS0_jjjjjjjjjjjjjjjj # -- Begin function _ZNK6TensorIfE14convolveThreadERS0_RKS0_jjjjjjjjjjjjjjjj
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE14convolveThreadERS0_RKS0_jjjjjjjjjjjjjjjj,@function
_ZNK6TensorIfE14convolveThreadERS0_RKS0_jjjjjjjjjjjjjjjj: # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, 44(%rsp)                  # 4-byte Spill
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	cmpl	160(%rsp), %r9d
	jae	.LBB1_22
# %bb.1:
	movl	256(%rsp), %ecx
	movl	232(%rsp), %edx
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	20(%rax), %esi
	movl	%esi, 68(%rsp)                  # 4-byte Spill
	movl	24(%rax), %eax
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	imull	36(%rsp), %edx                  # 4-byte Folded Reload
	subl	44(%rsp), %edx                  # 4-byte Folded Reload
	movl	%edx, 64(%rsp)                  # 4-byte Spill
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_21:                               #   in Loop: Header=BB1_2 Depth=1
	movl	20(%rsp), %r9d                  # 4-byte Reload
	incl	%r9d
	cmpl	160(%rsp), %r9d
	je	.LBB1_22
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #       Child Loop BB1_6 Depth 3
                                        #         Child Loop BB1_8 Depth 4
                                        #           Child Loop BB1_10 Depth 5
                                        #             Child Loop BB1_13 Depth 6
                                        #               Child Loop BB1_15 Depth 7
                                        #               Child Loop BB1_23 Depth 7
	movl	%r9d, 20(%rsp)                  # 4-byte Spill
	movl	168(%rsp), %eax
	cmpl	176(%rsp), %eax
	jae	.LBB1_21
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %edx
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_20:                               #   in Loop: Header=BB1_4 Depth=2
	movl	16(%rsp), %edx                  # 4-byte Reload
	incl	%edx
	cmpl	176(%rsp), %edx
	je	.LBB1_21
.LBB1_4:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_6 Depth 3
                                        #         Child Loop BB1_8 Depth 4
                                        #           Child Loop BB1_10 Depth 5
                                        #             Child Loop BB1_13 Depth 6
                                        #               Child Loop BB1_15 Depth 7
                                        #               Child Loop BB1_23 Depth 7
	movl	%edx, 16(%rsp)                  # 4-byte Spill
	movl	184(%rsp), %eax
	cmpl	192(%rsp), %eax
	jae	.LBB1_20
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=2
	movl	%eax, %edx
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_6 Depth=3
	movl	24(%rsp), %edx                  # 4-byte Reload
	incl	%edx
	cmpl	192(%rsp), %edx
	je	.LBB1_20
.LBB1_6:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_8 Depth 4
                                        #           Child Loop BB1_10 Depth 5
                                        #             Child Loop BB1_13 Depth 6
                                        #               Child Loop BB1_15 Depth 7
                                        #               Child Loop BB1_23 Depth 7
	movl	%edx, 24(%rsp)                  # 4-byte Spill
	movl	200(%rsp), %eax
	cmpl	208(%rsp), %eax
	jae	.LBB1_19
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=3
	movl	%eax, %edx
	jmp	.LBB1_8
	.p2align	4, 0x90
.LBB1_18:                               #   in Loop: Header=BB1_8 Depth=4
	movl	28(%rsp), %edx                  # 4-byte Reload
	incl	%edx
	cmpl	208(%rsp), %edx
	je	.LBB1_19
.LBB1_8:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        #       Parent Loop BB1_6 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_10 Depth 5
                                        #             Child Loop BB1_13 Depth 6
                                        #               Child Loop BB1_15 Depth 7
                                        #               Child Loop BB1_23 Depth 7
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	movl	216(%rsp), %eax
	cmpl	224(%rsp), %eax
	jae	.LBB1_18
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=4
	movl	28(%rsp), %eax                  # 4-byte Reload
	imull	36(%rsp), %eax                  # 4-byte Folded Reload
	subl	44(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	movl	216(%rsp), %eax
	jmp	.LBB1_10
	.p2align	4, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_10 Depth=5
	movl	32(%rsp), %eax                  # 4-byte Reload
	incl	%eax
	cmpl	224(%rsp), %eax
	je	.LBB1_18
.LBB1_10:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        #       Parent Loop BB1_6 Depth=3
                                        #         Parent Loop BB1_8 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB1_13 Depth 6
                                        #               Child Loop BB1_15 Depth 7
                                        #               Child Loop BB1_23 Depth 7
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	movl	232(%rsp), %eax
	cmpl	240(%rsp), %eax
	jae	.LBB1_17
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=5
	movl	72(%rsp), %eax                  # 4-byte Reload
	addl	32(%rsp), %eax                  # 4-byte Folded Reload
	setns	15(%rsp)                        # 1-byte Folded Spill
	movl	%eax, 76(%rsp)                  # 4-byte Spill
	cmpl	68(%rsp), %eax                  # 4-byte Folded Reload
	setb	%al
	cmpl	%ecx, 248(%rsp)
	jae	.LBB1_17
# %bb.12:                               #   in Loop: Header=BB1_10 Depth=5
	andb	%al, 15(%rsp)                   # 1-byte Folded Spill
	movl	64(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movl	232(%rsp), %ebx
	jmp	.LBB1_13
	.p2align	4, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_13 Depth=6
	incl	%ebx
	movl	40(%rsp), %eax                  # 4-byte Reload
	addl	36(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	cmpl	240(%rsp), %ebx
	je	.LBB1_17
.LBB1_13:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        #       Parent Loop BB1_6 Depth=3
                                        #         Parent Loop BB1_8 Depth=4
                                        #           Parent Loop BB1_10 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB1_15 Depth 7
                                        #               Child Loop BB1_23 Depth 7
	movl	248(%rsp), %r12d
	cmpb	$0, 15(%rsp)                    # 1-byte Folded Reload
	movq	56(%rsp), %r14                  # 8-byte Reload
	movq	48(%rsp), %r13                  # 8-byte Reload
	movl	16(%rsp), %ebp                  # 4-byte Reload
	movl	%ebx, 84(%rsp)                  # 4-byte Spill
	jne	.LBB1_23
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=6
	movl	%r12d, %r15d
	.p2align	4, 0x90
.LBB1_15:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        #       Parent Loop BB1_6 Depth=3
                                        #         Parent Loop BB1_8 Depth=4
                                        #           Parent Loop BB1_10 Depth=5
                                        #             Parent Loop BB1_13 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	32(%rsp), %ecx                  # 4-byte Reload
	movl	%r15d, %r8d
	callq	*(%rax)
	movq	(%r13), %rax
	movq	%r13, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movl	%ebp, %edx
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	*8(%rax)
	movl	256(%rsp), %ecx
	incl	%r15d
	cmpl	%r15d, %ecx
	jne	.LBB1_15
	jmp	.LBB1_16
	.p2align	4, 0x90
.LBB1_24:                               #   in Loop: Header=BB1_23 Depth=7
	movl	20(%rsp), %r15d                 # 4-byte Reload
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	48(%rsp), %r14                  # 8-byte Reload
	movl	24(%rsp), %ebp                  # 4-byte Reload
	movl	16(%rsp), %r13d                 # 4-byte Reload
.LBB1_27:                               #   in Loop: Header=BB1_23 Depth=7
	vmovss	%xmm0, 92(%rsp)                 # 4-byte Spill
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movl	%ebp, %edx
	movl	32(%rsp), %ecx                  # 4-byte Reload
	movl	%r12d, %r8d
	callq	*(%rax)
	vmovss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 88(%rsp)                 # 4-byte Spill
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	%r13d, %edx
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movl	84(%rsp), %ebx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	*8(%rax)
	vmovss	92(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	88(%rsp), %xmm1                 # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	(%rax), %xmm0, %xmm1    # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rax)
	incl	%r12d
	movl	256(%rsp), %ecx
	cmpl	%r12d, %ecx
	je	.LBB1_16
.LBB1_23:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        #       Parent Loop BB1_6 Depth=3
                                        #         Parent Loop BB1_8 Depth=4
                                        #           Parent Loop BB1_10 Depth=5
                                        #             Parent Loop BB1_13 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	movl	40(%rsp), %r8d                  # 4-byte Reload
	addl	%r12d, %r8d
	vxorps	%xmm0, %xmm0, %xmm0
	js	.LBB1_24
# %bb.25:                               #   in Loop: Header=BB1_23 Depth=7
	cmpl	80(%rsp), %r8d                  # 4-byte Folded Reload
	movl	20(%rsp), %r15d                 # 4-byte Reload
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	48(%rsp), %r14                  # 8-byte Reload
	movl	24(%rsp), %ebp                  # 4-byte Reload
	movl	16(%rsp), %r13d                 # 4-byte Reload
	jae	.LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_23 Depth=7
	movq	96(%rsp), %rdi                  # 8-byte Reload
	movq	(%rdi), %rax
	movl	%r15d, %esi
	movl	%ebp, %edx
	movl	76(%rsp), %ecx                  # 4-byte Reload
	callq	*(%rax)
	vmovss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB1_27
.LBB1_22:
	addq	$104, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_ZNK6TensorIfE14convolveThreadERS0_RKS0_jjjjjjjjjjjjjjjj, .Lfunc_end1-_ZNK6TensorIfE14convolveThreadERS0_RKS0_jjjjjjjjjjjjjjjj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfE3_atERKjjS2_,"axG",@progbits,_ZNK6TensorIfE3_atERKjjS2_,comdat
	.weak	_ZNK6TensorIfE3_atERKjjS2_      # -- Begin function _ZNK6TensorIfE3_atERKjjS2_
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE3_atERKjjS2_,@function
_ZNK6TensorIfE3_atERKjjS2_:             # 
	.cfi_startproc
# %bb.0:
	movl	24(%rdi), %eax
	imull	(%rsi), %eax
	addl	%edx, %eax
	imull	28(%rdi), %eax
	addl	(%rcx), %eax
	shlq	$2, %rax
	addq	8(%rdi), %rax
	retq
.Lfunc_end2:
	.size	_ZNK6TensorIfE3_atERKjjS2_, .Lfunc_end2-_ZNK6TensorIfE3_atERKjjS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE3_atERKjjS2_,"axG",@progbits,_ZN6TensorIfE3_atERKjjS2_,comdat
	.weak	_ZN6TensorIfE3_atERKjjS2_       # -- Begin function _ZN6TensorIfE3_atERKjjS2_
	.p2align	4, 0x90
	.type	_ZN6TensorIfE3_atERKjjS2_,@function
_ZN6TensorIfE3_atERKjjS2_:              # 
	.cfi_startproc
# %bb.0:
	movl	24(%rdi), %eax
	imull	(%rsi), %eax
	addl	%edx, %eax
	imull	28(%rdi), %eax
	addl	(%rcx), %eax
	shlq	$2, %rax
	addq	8(%rdi), %rax
	retq
.Lfunc_end3:
	.size	_ZN6TensorIfE3_atERKjjS2_, .Lfunc_end3-_ZN6TensorIfE3_atERKjjS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfE3_atEjjjj,"axG",@progbits,_ZNK6TensorIfE3_atEjjjj,comdat
	.weak	_ZNK6TensorIfE3_atEjjjj         # -- Begin function _ZNK6TensorIfE3_atEjjjj
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE3_atEjjjj,@function
_ZNK6TensorIfE3_atEjjjj:                # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$_ZSt4cout, %edi
	movl	$.L.str.3, %esi
	movl	$7, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	imull	20(%rbx), %ebp
	leal	(%r12,%rbp), %eax
	imull	24(%rbx), %eax
	addl	%r15d, %eax
	imull	28(%rbx), %eax
	addl	%r14d, %eax
	shlq	$2, %rax
	addq	8(%rbx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZNK6TensorIfE3_atEjjjj, .Lfunc_end4-_ZNK6TensorIfE3_atEjjjj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE3_atEjjjj,"axG",@progbits,_ZN6TensorIfE3_atEjjjj,comdat
	.weak	_ZN6TensorIfE3_atEjjjj          # -- Begin function _ZN6TensorIfE3_atEjjjj
	.p2align	4, 0x90
	.type	_ZN6TensorIfE3_atEjjjj,@function
_ZN6TensorIfE3_atEjjjj:                 # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$_ZSt4cout, %edi
	movl	$.L.str.3, %esi
	movl	$7, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	imull	20(%rbx), %ebp
	leal	(%r12,%rbp), %eax
	imull	24(%rbx), %eax
	addl	%r15d, %eax
	imull	28(%rbx), %eax
	addl	%r14d, %eax
	shlq	$2, %rax
	addq	8(%rbx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN6TensorIfE3_atEjjjj, .Lfunc_end5-_ZN6TensorIfE3_atEjjjj
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf
.LCPI6_0:
	.long	0x80000000                      #  -0
.LCPI6_1:
	.long	0x3effffff                      #  0.49999997
	.section	.text._ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf,"axG",@progbits,_ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf,comdat
	.weak	_ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf,@function
_ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf: # 
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 64(%rsp)                   # 8-byte Spill
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movl	%edx, 52(%rsp)
	movl	%ecx, 48(%rsp)
	movl	28(%rdi), %eax
	cmpl	28(%rsi), %eax
	jne	.LBB6_91
# %bb.1:
	movl	%edx, %ebp
	movl	16(%rdi), %r14d
	movl	%eax, 44(%rsp)
	movl	16(%rsi), %r12d
	addl	%ecx, %ecx
	movl	20(%rdi), %eax
	addl	%ecx, %eax
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	addl	24(%rdi), %ecx
	movl	20(%rsi), %edx
	movl	%edx, 40(%rsp)
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movl	24(%rsi), %esi
	movl	%esi, 36(%rsp)
	movl	%r14d, 32(%rsp)
	movl	%r12d, 28(%rsp)
	subl	%edx, %eax
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %r13d
	subl	%esi, %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %r15d
	incl	%r13d
	incl	%r15d
	movl	%r15d, 24(%rsp)
	movl	$72, %edi
	callq	_Znwm
	movq	%rax, %rbx
	movl	$1, 96(%rsp)
	movq	$_ZTV6TensorIfE+16, (%rax)
	movl	%r14d, 16(%rax)
	movl	%r12d, 20(%rax)
	movl	%r13d, 24(%rax)
	movl	%r15d, 28(%rax)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%rax)
	movq	$0, 56(%rax)
	movb	$1, 64(%rax)
	movl	%r12d, %eax
	imull	%r14d, %eax
	imull	%r13d, %eax
	imull	%r15d, %eax
	movl	%eax, 32(%rbx)
.Ltmp12:
	movl	$16, %edi
	callq	_Znwm
.Ltmp13:
# %bb.2:
	movq	%rax, %rbp
	movl	%r14d, (%rax)
	movl	%r12d, 4(%rax)
	movl	%r13d, 12(%rsp)                 # 4-byte Spill
	movl	%r13d, 8(%rax)
	movl	%r15d, 12(%rax)
	movq	40(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB6_4
# %bb.3:
	callq	_ZdlPv
.LBB6_4:
	movq	%rbp, 40(%rbx)
	addq	$16, %rbp
	movq	%rbp, 48(%rbx)
	movq	%rbp, 56(%rbx)
.Ltmp15:
	leaq	96(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_ZN6TensorIfE9init_dataERKN6tensor4initE
.Ltmp16:
# %bb.5:
	movq	%rbx, 72(%rsp)
	movl	$1, %r14d
	movl	12(%rsp), %r15d                 # 4-byte Reload
	cmpl	16(%rsp), %r15d                 # 4-byte Folded Reload
	jb	.LBB6_7
# %bb.6:
	movl	%r15d, %eax
	vcvtsi2ss	%rax, %xmm1, %xmm0
	movl	16(%rsp), %eax                  # 4-byte Reload
	vcvtsi2ss	%rax, %xmm1, %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vbroadcastss	.LCPI6_0(%rip), %xmm1   # xmm1 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vandps	%xmm1, %xmm0, %xmm1
	vbroadcastss	.LCPI6_1(%rip), %xmm2   # xmm2 = [4.9999997E-1,4.9999997E-1,4.9999997E-1,4.9999997E-1]
	vorps	%xmm1, %xmm2, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vroundss	$11, %xmm0, %xmm0, %xmm0
	vcvttss2si	%xmm0, %r14
.LBB6_7:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 96(%rsp)
	movb	$1, 112(%rsp)
	xorl	%ebx, %ebx
.Ltmp18:
	leaq	96(%rsp), %rdi
	xorl	%r12d, %r12d
	callq	_ZN11Chronometer5startEv
.Ltmp19:
# %bb.8:
	xorl	%r13d, %r13d
	testl	%r15d, %r15d
	je	.LBB6_9
# %bb.17:
	movq	16(%rsp), %rax                  # 8-byte Reload
	decl	%eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	jmp	.LBB6_18
	.p2align	4, 0x90
.LBB6_23:                               #   in Loop: Header=BB6_18 Depth=1
	addq	$8, %rbx
	movq	%rbp, %rsi
	addl	%r14d, %r13d
	cmpl	%r13d, %r15d
	jbe	.LBB6_15
.LBB6_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_46 Depth 2
                                        #     Child Loop BB6_38 Depth 2
                                        #     Child Loop BB6_53 Depth 2
	movl	%r14d, %eax
	movq	%rbx, %rbp
	subq	%r12, %rbp
	movq	%rbp, %r14
	sarq	$3, %r14
	movl	%r15d, %ecx
	subl	%r13d, %ecx
	cmpq	16(%rsp), %r14                  # 8-byte Folded Reload
	cmovnel	%eax, %ecx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	cmpq	%rsi, %rbx
	je	.LBB6_27
# %bb.19:                               #   in Loop: Header=BB6_18 Depth=1
	movq	%rsi, %rbp
	movq	$0, (%rbx)
.Ltmp20:
	movl	$104, %edi
	vzeroupper
	callq	_Znwm
.Ltmp21:
# %bb.20:                               #   in Loop: Header=BB6_18 Depth=1
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE+16, (%rax)
	movl	%r13d, 8(%rax)
	movq	56(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, 12(%rax)
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 16(%rax)
	leaq	72(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 32(%rax)
	leaq	52(%rsp), %rcx
	movq	%rcx, 40(%rax)
	leaq	48(%rsp), %rcx
	movq	%rcx, 48(%rax)
	leaq	32(%rsp), %rcx
	movq	%rcx, 56(%rax)
	leaq	28(%rsp), %rcx
	movq	%rcx, 64(%rax)
	leaq	44(%rsp), %rcx
	movq	%rcx, 72(%rax)
	leaq	40(%rsp), %rcx
	movq	%rcx, 80(%rax)
	leaq	24(%rsp), %rcx
	movq	%rcx, 88(%rax)
	leaq	36(%rsp), %rcx
	movq	%rcx, 96(%rax)
	movq	%rax, (%rsp)
.Ltmp22:
	movl	$pthread_create, %edx
	movq	%rbx, %rdi
	movq	%rsp, %rsi
	callq	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.Ltmp23:
# %bb.21:                               #   in Loop: Header=BB6_18 Depth=1
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	movl	12(%rsp), %r15d                 # 4-byte Reload
	je	.LBB6_23
# %bb.22:                               #   in Loop: Header=BB6_18 Depth=1
	movq	(%rdi), %rax
	callq	*8(%rax)
	jmp	.LBB6_23
	.p2align	4, 0x90
.LBB6_27:                               #   in Loop: Header=BB6_18 Depth=1
	testq	%rbp, %rbp
	movq	%r14, %rax
	movl	$1, %ecx
	cmoveq	%rcx, %rax
	leaq	(%rax,%r14), %rdx
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rcx, %rdx
	cmovaq	%rcx, %rdx
	addq	%r14, %rax
	cmovbq	%rcx, %rdx
	testq	%rdx, %rdx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	je	.LBB6_28
# %bb.29:                               #   in Loop: Header=BB6_18 Depth=1
	leaq	(,%rdx,8), %rdi
.Ltmp25:
	vzeroupper
	callq	_Znwm
.Ltmp26:
# %bb.30:                               #   in Loop: Header=BB6_18 Depth=1
	movq	%rax, %r15
	jmp	.LBB6_31
.LBB6_28:                               #   in Loop: Header=BB6_18 Depth=1
	xorl	%r15d, %r15d
.LBB6_31:                               #   in Loop: Header=BB6_18 Depth=1
	movq	$0, (%r15,%r14,8)
.Ltmp28:
	movl	$104, %edi
	vzeroupper
	callq	_Znwm
.Ltmp29:
# %bb.32:                               #   in Loop: Header=BB6_18 Depth=1
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE+16, (%rax)
	movl	%r13d, 8(%rax)
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, 12(%rax)
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 16(%rax)
	leaq	72(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 32(%rax)
	leaq	52(%rsp), %rcx
	movq	%rcx, 40(%rax)
	leaq	48(%rsp), %rcx
	movq	%rcx, 48(%rax)
	leaq	32(%rsp), %rcx
	movq	%rcx, 56(%rax)
	leaq	28(%rsp), %rcx
	movq	%rcx, 64(%rax)
	leaq	44(%rsp), %rcx
	movq	%rcx, 72(%rax)
	leaq	40(%rsp), %rcx
	movq	%rcx, 80(%rax)
	leaq	24(%rsp), %rcx
	movq	%rcx, 88(%rax)
	leaq	36(%rsp), %rcx
	movq	%rcx, 96(%rax)
	movq	%rax, (%rsp)
	leaq	(%r15,%r14,8), %rdi
.Ltmp31:
	movl	$pthread_create, %edx
	movq	%rsp, %rsi
	callq	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.Ltmp32:
# %bb.33:                               #   in Loop: Header=BB6_18 Depth=1
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_35
# %bb.34:                               #   in Loop: Header=BB6_18 Depth=1
	movq	(%rdi), %rax
	callq	*8(%rax)
.LBB6_35:                               #   in Loop: Header=BB6_18 Depth=1
	cmpq	%rbx, %r12
	je	.LBB6_56
# %bb.36:                               #   in Loop: Header=BB6_18 Depth=1
	addq	$-8, %rbp
	movq	%r15, %rdx
	movq	%r12, %rcx
	cmpq	$119, %rbp
	vxorps	%xmm4, %xmm4, %xmm4
	jbe	.LBB6_37
# %bb.41:                               #   in Loop: Header=BB6_18 Depth=1
	shrq	$3, %rbp
	leaq	(%r12,%rbp,8), %rax
	addq	$8, %rax
	cmpq	%rax, %r15
	jae	.LBB6_43
# %bb.42:                               #   in Loop: Header=BB6_18 Depth=1
	leaq	(%r15,%rbp,8), %rax
	addq	$8, %rax
	movq	%r15, %rdx
	movq	%r12, %rcx
	cmpq	%rax, %r12
	jb	.LBB6_37
.LBB6_43:                               #   in Loop: Header=BB6_18 Depth=1
	incq	%rbp
	movq	%rbp, %rax
	andq	$-16, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rdx
	shrq	$4, %rdx
	incq	%rdx
	testq	%rcx, %rcx
	je	.LBB6_44
# %bb.45:                               #   in Loop: Header=BB6_18 Depth=1
	movq	%rdx, %rsi
	andq	$-2, %rsi
	negq	%rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_46:                               #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	%ymm4, (%r15,%rcx,8)
	vmovups	%ymm4, 32(%r15,%rcx,8)
	vmovups	%ymm4, 64(%r15,%rcx,8)
	vmovups	%ymm4, 96(%r15,%rcx,8)
	vmovups	(%r12,%rcx,8), %ymm0
	vmovups	32(%r12,%rcx,8), %ymm1
	vmovups	64(%r12,%rcx,8), %ymm2
	vmovups	96(%r12,%rcx,8), %ymm3
	vmovups	%ymm0, (%r15,%rcx,8)
	vmovups	%ymm1, 32(%r15,%rcx,8)
	vmovups	%ymm2, 64(%r15,%rcx,8)
	vmovups	%ymm3, 96(%r15,%rcx,8)
	vmovups	%ymm4, (%r12,%rcx,8)
	vmovups	%ymm4, 32(%r12,%rcx,8)
	vmovups	%ymm4, 64(%r12,%rcx,8)
	vmovups	%ymm4, 96(%r12,%rcx,8)
	vmovups	%ymm4, 128(%r15,%rcx,8)
	vmovups	%ymm4, 160(%r15,%rcx,8)
	vmovups	%ymm4, 192(%r15,%rcx,8)
	vmovups	%ymm4, 224(%r15,%rcx,8)
	vmovups	128(%r12,%rcx,8), %ymm0
	vmovups	160(%r12,%rcx,8), %ymm1
	vmovups	192(%r12,%rcx,8), %ymm2
	vmovups	224(%r12,%rcx,8), %ymm3
	vmovups	%ymm0, 128(%r15,%rcx,8)
	vmovups	%ymm1, 160(%r15,%rcx,8)
	vmovups	%ymm2, 192(%r15,%rcx,8)
	vmovups	%ymm3, 224(%r15,%rcx,8)
	vmovups	%ymm4, 128(%r12,%rcx,8)
	vmovups	%ymm4, 160(%r12,%rcx,8)
	vmovups	%ymm4, 192(%r12,%rcx,8)
	vmovups	%ymm4, 224(%r12,%rcx,8)
	addq	$32, %rcx
	addq	$2, %rsi
	jne	.LBB6_46
# %bb.47:                               #   in Loop: Header=BB6_18 Depth=1
	testb	$1, %dl
	je	.LBB6_49
.LBB6_48:                               #   in Loop: Header=BB6_18 Depth=1
	vmovups	%ymm4, (%r15,%rcx,8)
	vmovups	%ymm4, 32(%r15,%rcx,8)
	vmovups	%ymm4, 64(%r15,%rcx,8)
	vmovups	%ymm4, 96(%r15,%rcx,8)
	vmovups	(%r12,%rcx,8), %ymm0
	vmovups	32(%r12,%rcx,8), %ymm1
	vmovups	64(%r12,%rcx,8), %ymm2
	vmovups	96(%r12,%rcx,8), %ymm3
	vmovups	%ymm0, (%r15,%rcx,8)
	vmovups	%ymm1, 32(%r15,%rcx,8)
	vmovups	%ymm2, 64(%r15,%rcx,8)
	vmovups	%ymm3, 96(%r15,%rcx,8)
	vmovups	%ymm4, (%r12,%rcx,8)
	vmovups	%ymm4, 32(%r12,%rcx,8)
	vmovups	%ymm4, 64(%r12,%rcx,8)
	vmovups	%ymm4, 96(%r12,%rcx,8)
.LBB6_49:                               #   in Loop: Header=BB6_18 Depth=1
	cmpq	%rax, %rbp
	jne	.LBB6_50
# %bb.51:                               #   in Loop: Header=BB6_18 Depth=1
	leaq	(%r15,%rax,8), %rax
	addq	$-8, %rax
	jmp	.LBB6_52
.LBB6_56:                               #   in Loop: Header=BB6_18 Depth=1
	leaq	8(%r15), %rbx
	movq	56(%rsp), %r14                  # 8-byte Reload
	testq	%r12, %r12
	jne	.LBB6_58
	jmp	.LBB6_59
.LBB6_50:                               #   in Loop: Header=BB6_18 Depth=1
	leaq	(%r15,%rax,8), %rdx
	leaq	(%r12,%rax,8), %rcx
	.p2align	4, 0x90
.LBB6_37:                               #   in Loop: Header=BB6_18 Depth=1
	addq	$-8, %rdx
	.p2align	4, 0x90
.LBB6_38:                               #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	8(%rdx), %rax
	movq	$0, 8(%rdx)
	movq	(%rcx), %rsi
	movq	%rsi, 8(%rdx)
	movq	$0, (%rcx)
	addq	$8, %rcx
	movq	%rax, %rdx
	cmpq	%rcx, %rbx
	jne	.LBB6_38
.LBB6_52:                               #   in Loop: Header=BB6_18 Depth=1
	addq	$16, %rax
	movq	%r12, %rcx
	movq	56(%rsp), %r14                  # 8-byte Reload
	.p2align	4, 0x90
.LBB6_53:                               #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, (%rcx)
	jne	.LBB6_86
# %bb.54:                               #   in Loop: Header=BB6_53 Depth=2
	addq	$8, %rcx
	cmpq	%rcx, %rbx
	jne	.LBB6_53
# %bb.55:                               #   in Loop: Header=BB6_18 Depth=1
	movq	%rax, %rbx
	testq	%r12, %r12
	je	.LBB6_59
.LBB6_58:                               #   in Loop: Header=BB6_18 Depth=1
	movq	%r12, %rdi
	vzeroupper
	callq	_ZdlPv
.LBB6_59:                               #   in Loop: Header=BB6_18 Depth=1
	movq	128(%rsp), %rax                 # 8-byte Reload
	leaq	(%r15,%rax,8), %rsi
	movq	%r15, %r12
	movl	12(%rsp), %r15d                 # 4-byte Reload
	addl	%r14d, %r13d
	cmpl	%r13d, %r15d
	ja	.LBB6_18
	jmp	.LBB6_15
.LBB6_44:                               #   in Loop: Header=BB6_18 Depth=1
	xorl	%ecx, %ecx
	testb	$1, %dl
	jne	.LBB6_48
	jmp	.LBB6_49
.LBB6_15:
	cmpq	%rbx, %r12
	je	.LBB6_16
# %bb.65:
	movq	%r12, %rbp
	movq	64(%rsp), %r14                  # 8-byte Reload
	.p2align	4, 0x90
.LBB6_66:                               # =>This Inner Loop Header: Depth=1
.Ltmp40:
	movq	%rbp, %rdi
	vzeroupper
	callq	_ZNSt6thread4joinEv
.Ltmp41:
# %bb.67:                               #   in Loop: Header=BB6_66 Depth=1
	addq	$8, %rbp
	cmpq	%rbp, %rbx
	jne	.LBB6_66
# %bb.68:
	xorl	%r15d, %r15d
	jmp	.LBB6_69
.LBB6_9:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
.LBB6_16:
	movq	64(%rsp), %r14                  # 8-byte Reload
	movb	$1, %r15b
.LBB6_69:
.Ltmp43:
	leaq	96(%rsp), %rdi
	vzeroupper
	callq	_ZN11Chronometer4stopEv
.Ltmp44:
# %bb.70:
	testq	%r14, %r14
	je	.LBB6_73
# %bb.71:
.Ltmp45:
	leaq	96(%rsp), %rdi
	callq	_ZN11Chronometer7getTimeEv
.Ltmp46:
# %bb.72:
	vmovss	%xmm0, (%r14)
.LBB6_73:
	movq	72(%rsp), %rbp
	testb	%r15b, %r15b
	jne	.LBB6_77
# %bb.74:
	movq	%r12, %rax
	.p2align	4, 0x90
.LBB6_76:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rax)
	jne	.LBB6_86
# %bb.75:                               #   in Loop: Header=BB6_76 Depth=1
	addq	$8, %rax
	cmpq	%rax, %rbx
	jne	.LBB6_76
.LBB6_77:
	testq	%r12, %r12
	je	.LBB6_79
# %bb.78:
	movq	%r12, %rdi
	callq	_ZdlPv
.LBB6_79:
	movq	%rbp, %rax
	addq	$136, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB6_91:
	.cfi_def_cfa_offset 192
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf, %ecx
	movl	$440, %edx                      # imm = 0x1B8
	callq	__assert_fail
.LBB6_11:
.Ltmp17:
	jmp	.LBB6_12
.LBB6_10:
.Ltmp14:
.LBB6_12:
	movq	%rax, %rbp
	movq	%rbx, %rax
	addq	$40, %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB6_14
# %bb.13:
	callq	_ZdlPv
.LBB6_14:
	movq	%rbx, %rdi
	jmp	.LBB6_89
.LBB6_80:
.Ltmp47:
	jmp	.LBB6_81
.LBB6_61:
.Ltmp30:
	movq	%rax, %rbp
	jmp	.LBB6_62
.LBB6_39:
.Ltmp33:
	movq	%rax, %rbp
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_62
# %bb.40:
	movq	(%rdi), %rax
	callq	*8(%rax)
.LBB6_62:
	movq	%rbp, %rdi
	callq	__cxa_begin_catch
	movq	%r15, %rdi
	callq	_ZdlPv
.Ltmp34:
	callq	__cxa_rethrow
.Ltmp35:
# %bb.63:
.LBB6_60:
.Ltmp36:
	movq	%rax, %rbp
.Ltmp37:
	callq	__cxa_end_catch
.Ltmp38:
	jmp	.LBB6_82
.LBB6_92:
.Ltmp39:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB6_93:
.Ltmp42:
	jmp	.LBB6_81
.LBB6_25:
.Ltmp24:
	movq	%rax, %rbp
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_82
# %bb.26:
	movq	(%rdi), %rax
	callq	*8(%rax)
	jmp	.LBB6_82
.LBB6_64:
.Ltmp27:
.LBB6_81:
	movq	%rax, %rbp
.LBB6_82:
	cmpq	%rbx, %r12
	je	.LBB6_87
# %bb.83:
	movq	%r12, %rax
	.p2align	4, 0x90
.LBB6_85:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rax)
	jne	.LBB6_86
# %bb.84:                               #   in Loop: Header=BB6_85 Depth=1
	addq	$8, %rax
	cmpq	%rax, %rbx
	jne	.LBB6_85
.LBB6_87:
	testq	%r12, %r12
	je	.LBB6_90
# %bb.88:
	movq	%r12, %rdi
.LBB6_89:
	callq	_ZdlPv
.LBB6_90:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.LBB6_86:
	vzeroupper
	callq	_ZSt9terminatev
.Lfunc_end6:
	.size	_ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf, .Lfunc_end6-_ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf
	.cfi_endproc
	.section	.gcc_except_table._ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf,"aG",@progbits,_ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf,comdat
	.p2align	2
GCC_except_table6:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp12-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin1          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp47-.Lfunc_begin1          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin1          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp25-.Ltmp23                #   Call between .Ltmp23 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin1          #     jumps to .Ltmp30
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp31-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin1          #     jumps to .Ltmp33
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp40-.Ltmp32                #   Call between .Ltmp32 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin1          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp46-.Ltmp43                #   Call between .Ltmp43 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin1          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp34-.Ltmp46                #   Call between .Ltmp46 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin1          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin1          #     jumps to .Ltmp39
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Lfunc_end6-.Ltmp38            #   Call between .Ltmp38 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf
.LCPI7_0:
	.long	0x80000000                      #  -0
.LCPI7_1:
	.long	0x3effffff                      #  0.49999997
	.section	.text._ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf,"axG",@progbits,_ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf,comdat
	.weak	_ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf,@function
_ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf: # 
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, 8(%rsp)                    # 8-byte Spill
	movl	%edx, 52(%rsp)
	movl	%ecx, 48(%rsp)
	movl	28(%rdi), %eax
	cmpl	28(%rsi), %eax
	jne	.LBB7_91
# %bb.1:
	movq	%r9, %r12
	movl	%edx, %ebp
	movl	16(%rdi), %edx
	movl	%eax, 44(%rsp)
	movl	16(%rsi), %r13d
	addl	%ecx, %ecx
	movl	20(%rdi), %eax
	addl	%ecx, %eax
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	addl	24(%rdi), %ecx
	movl	20(%rsi), %ebx
	movl	%ebx, 40(%rsp)
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movl	24(%rsi), %edi
	movl	%edi, 36(%rsp)
	movl	%edx, 32(%rsp)
	subl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %r14d
	incl	%r14d
	movl	%r14d, 28(%rsp)
	subl	%edi, %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %r15d
	incl	%r15d
	movl	%r15d, 24(%rsp)
	movl	$72, %edi
	callq	_Znwm
	movq	%rax, %rbx
	movq	$_ZTV6TensorIfE+16, (%rax)
	movl	$1, 16(%rax)
	movl	%r14d, 20(%rax)
	movl	%r15d, 24(%rax)
	movl	%r13d, 28(%rax)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%rax)
	movl	$1, 96(%rsp)
	movq	$0, 56(%rax)
	movb	$1, 64(%rax)
	movl	%r14d, %eax
	imull	%r13d, %eax
	imull	%r15d, %eax
	movl	%eax, 32(%rbx)
.Ltmp48:
	movl	$16, %edi
	callq	_Znwm
.Ltmp49:
# %bb.2:
	movq	%rax, %rbp
	movl	$1, (%rax)
	movl	%r14d, 4(%rax)
	movl	%r15d, 8(%rax)
	movl	%r13d, 12(%rax)
	movq	40(%rbx), %rdi
	testq	%rdi, %rdi
	movl	%r13d, %r15d
	je	.LBB7_4
# %bb.3:
	callq	_ZdlPv
.LBB7_4:
	movq	%rbp, 40(%rbx)
	addq	$16, %rbp
	movq	%rbp, 48(%rbx)
	movq	%rbp, 56(%rbx)
.Ltmp51:
	leaq	96(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_ZN6TensorIfE9init_dataERKN6tensor4initE
.Ltmp52:
# %bb.5:
	movq	%rbx, 72(%rsp)
	movl	$1, %r13d
	cmpl	8(%rsp), %r15d                  # 4-byte Folded Reload
	jb	.LBB7_7
# %bb.6:
	movl	%r15d, %eax
	vcvtsi2ss	%rax, %xmm1, %xmm0
	movl	8(%rsp), %eax                   # 4-byte Reload
	vcvtsi2ss	%rax, %xmm1, %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vbroadcastss	.LCPI7_0(%rip), %xmm1   # xmm1 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vandps	%xmm1, %xmm0, %xmm1
	vbroadcastss	.LCPI7_1(%rip), %xmm2   # xmm2 = [4.9999997E-1,4.9999997E-1,4.9999997E-1,4.9999997E-1]
	vorps	%xmm1, %xmm2, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vroundss	$11, %xmm0, %xmm0, %xmm0
	vcvttss2si	%xmm0, %r13
.LBB7_7:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 96(%rsp)
	movb	$1, 112(%rsp)
	xorl	%ebx, %ebx
.Ltmp54:
	leaq	96(%rsp), %rdi
	xorl	%r14d, %r14d
	callq	_ZN11Chronometer5startEv
.Ltmp55:
# %bb.8:
	movq	%r12, 64(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	je	.LBB7_9
# %bb.17:
	movq	8(%rsp), %rax                   # 8-byte Reload
	decl	%eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	%r15d, 20(%rsp)                 # 4-byte Spill
	jmp	.LBB7_18
	.p2align	4, 0x90
.LBB7_23:                               #   in Loop: Header=BB7_18 Depth=1
	addq	$8, %rbx
	movq	%rbp, %rsi
	addl	%r13d, %r12d
	cmpl	%r12d, %r15d
	jbe	.LBB7_15
.LBB7_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_46 Depth 2
                                        #     Child Loop BB7_38 Depth 2
                                        #     Child Loop BB7_53 Depth 2
	movl	%r13d, %eax
	movq	%rbx, %rbp
	subq	%r14, %rbp
	movq	%rbp, %r13
	sarq	$3, %r13
	movl	%r15d, %ecx
	subl	%r12d, %ecx
	cmpq	8(%rsp), %r13                   # 8-byte Folded Reload
	cmovnel	%eax, %ecx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	cmpq	%rsi, %rbx
	je	.LBB7_27
# %bb.19:                               #   in Loop: Header=BB7_18 Depth=1
	movq	%rsi, %rbp
	movq	$0, (%rbx)
.Ltmp56:
	movl	$104, %edi
	vzeroupper
	callq	_Znwm
.Ltmp57:
# %bb.20:                               #   in Loop: Header=BB7_18 Depth=1
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE+16, (%rax)
	movl	%r12d, 8(%rax)
	movq	56(%rsp), %r13                  # 8-byte Reload
	movl	%r13d, 12(%rax)
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 16(%rax)
	leaq	72(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 32(%rax)
	leaq	52(%rsp), %rcx
	movq	%rcx, 40(%rax)
	leaq	48(%rsp), %rcx
	movq	%rcx, 48(%rax)
	leaq	32(%rsp), %rcx
	movq	%rcx, 56(%rax)
	leaq	44(%rsp), %rcx
	movq	%rcx, 64(%rax)
	leaq	28(%rsp), %rcx
	movq	%rcx, 72(%rax)
	leaq	40(%rsp), %rcx
	movq	%rcx, 80(%rax)
	leaq	24(%rsp), %rcx
	movq	%rcx, 88(%rax)
	leaq	36(%rsp), %rcx
	movq	%rcx, 96(%rax)
	movq	%rax, (%rsp)
.Ltmp58:
	movl	$pthread_create, %edx
	movq	%rbx, %rdi
	movq	%rsp, %rsi
	callq	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.Ltmp59:
# %bb.21:                               #   in Loop: Header=BB7_18 Depth=1
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	movl	20(%rsp), %r15d                 # 4-byte Reload
	je	.LBB7_23
# %bb.22:                               #   in Loop: Header=BB7_18 Depth=1
	movq	(%rdi), %rax
	callq	*8(%rax)
	jmp	.LBB7_23
	.p2align	4, 0x90
.LBB7_27:                               #   in Loop: Header=BB7_18 Depth=1
	testq	%rbp, %rbp
	movq	%r13, %rax
	movl	$1, %ecx
	cmoveq	%rcx, %rax
	leaq	(%rax,%r13), %rdx
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rcx, %rdx
	cmovaq	%rcx, %rdx
	addq	%r13, %rax
	cmovbq	%rcx, %rdx
	testq	%rdx, %rdx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	je	.LBB7_28
# %bb.29:                               #   in Loop: Header=BB7_18 Depth=1
	leaq	(,%rdx,8), %rdi
.Ltmp61:
	vzeroupper
	callq	_Znwm
.Ltmp62:
# %bb.30:                               #   in Loop: Header=BB7_18 Depth=1
	movq	%rax, %r15
	jmp	.LBB7_31
.LBB7_28:                               #   in Loop: Header=BB7_18 Depth=1
	xorl	%r15d, %r15d
.LBB7_31:                               #   in Loop: Header=BB7_18 Depth=1
	movq	$0, (%r15,%r13,8)
.Ltmp64:
	movl	$104, %edi
	vzeroupper
	callq	_Znwm
.Ltmp65:
# %bb.32:                               #   in Loop: Header=BB7_18 Depth=1
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE+16, (%rax)
	movl	%r12d, 8(%rax)
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, 12(%rax)
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 16(%rax)
	leaq	72(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 32(%rax)
	leaq	52(%rsp), %rcx
	movq	%rcx, 40(%rax)
	leaq	48(%rsp), %rcx
	movq	%rcx, 48(%rax)
	leaq	32(%rsp), %rcx
	movq	%rcx, 56(%rax)
	leaq	44(%rsp), %rcx
	movq	%rcx, 64(%rax)
	leaq	28(%rsp), %rcx
	movq	%rcx, 72(%rax)
	leaq	40(%rsp), %rcx
	movq	%rcx, 80(%rax)
	leaq	24(%rsp), %rcx
	movq	%rcx, 88(%rax)
	leaq	36(%rsp), %rcx
	movq	%rcx, 96(%rax)
	movq	%rax, (%rsp)
	leaq	(%r15,%r13,8), %rdi
.Ltmp67:
	movl	$pthread_create, %edx
	movq	%rsp, %rsi
	callq	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.Ltmp68:
# %bb.33:                               #   in Loop: Header=BB7_18 Depth=1
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_35
# %bb.34:                               #   in Loop: Header=BB7_18 Depth=1
	movq	(%rdi), %rax
	callq	*8(%rax)
.LBB7_35:                               #   in Loop: Header=BB7_18 Depth=1
	cmpq	%rbx, %r14
	je	.LBB7_56
# %bb.36:                               #   in Loop: Header=BB7_18 Depth=1
	addq	$-8, %rbp
	movq	%r15, %rdx
	movq	%r14, %rcx
	cmpq	$119, %rbp
	vxorps	%xmm4, %xmm4, %xmm4
	jbe	.LBB7_37
# %bb.41:                               #   in Loop: Header=BB7_18 Depth=1
	shrq	$3, %rbp
	leaq	(%r14,%rbp,8), %rax
	addq	$8, %rax
	cmpq	%rax, %r15
	jae	.LBB7_43
# %bb.42:                               #   in Loop: Header=BB7_18 Depth=1
	leaq	(%r15,%rbp,8), %rax
	addq	$8, %rax
	movq	%r15, %rdx
	movq	%r14, %rcx
	cmpq	%rax, %r14
	jb	.LBB7_37
.LBB7_43:                               #   in Loop: Header=BB7_18 Depth=1
	incq	%rbp
	movq	%rbp, %rax
	andq	$-16, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rdx
	shrq	$4, %rdx
	incq	%rdx
	testq	%rcx, %rcx
	je	.LBB7_44
# %bb.45:                               #   in Loop: Header=BB7_18 Depth=1
	movq	%rdx, %rsi
	andq	$-2, %rsi
	negq	%rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB7_46:                               #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	%ymm4, (%r15,%rcx,8)
	vmovups	%ymm4, 32(%r15,%rcx,8)
	vmovups	%ymm4, 64(%r15,%rcx,8)
	vmovups	%ymm4, 96(%r15,%rcx,8)
	vmovups	(%r14,%rcx,8), %ymm0
	vmovups	32(%r14,%rcx,8), %ymm1
	vmovups	64(%r14,%rcx,8), %ymm2
	vmovups	96(%r14,%rcx,8), %ymm3
	vmovups	%ymm0, (%r15,%rcx,8)
	vmovups	%ymm1, 32(%r15,%rcx,8)
	vmovups	%ymm2, 64(%r15,%rcx,8)
	vmovups	%ymm3, 96(%r15,%rcx,8)
	vmovups	%ymm4, (%r14,%rcx,8)
	vmovups	%ymm4, 32(%r14,%rcx,8)
	vmovups	%ymm4, 64(%r14,%rcx,8)
	vmovups	%ymm4, 96(%r14,%rcx,8)
	vmovups	%ymm4, 128(%r15,%rcx,8)
	vmovups	%ymm4, 160(%r15,%rcx,8)
	vmovups	%ymm4, 192(%r15,%rcx,8)
	vmovups	%ymm4, 224(%r15,%rcx,8)
	vmovups	128(%r14,%rcx,8), %ymm0
	vmovups	160(%r14,%rcx,8), %ymm1
	vmovups	192(%r14,%rcx,8), %ymm2
	vmovups	224(%r14,%rcx,8), %ymm3
	vmovups	%ymm0, 128(%r15,%rcx,8)
	vmovups	%ymm1, 160(%r15,%rcx,8)
	vmovups	%ymm2, 192(%r15,%rcx,8)
	vmovups	%ymm3, 224(%r15,%rcx,8)
	vmovups	%ymm4, 128(%r14,%rcx,8)
	vmovups	%ymm4, 160(%r14,%rcx,8)
	vmovups	%ymm4, 192(%r14,%rcx,8)
	vmovups	%ymm4, 224(%r14,%rcx,8)
	addq	$32, %rcx
	addq	$2, %rsi
	jne	.LBB7_46
# %bb.47:                               #   in Loop: Header=BB7_18 Depth=1
	testb	$1, %dl
	je	.LBB7_49
.LBB7_48:                               #   in Loop: Header=BB7_18 Depth=1
	vmovups	%ymm4, (%r15,%rcx,8)
	vmovups	%ymm4, 32(%r15,%rcx,8)
	vmovups	%ymm4, 64(%r15,%rcx,8)
	vmovups	%ymm4, 96(%r15,%rcx,8)
	vmovups	(%r14,%rcx,8), %ymm0
	vmovups	32(%r14,%rcx,8), %ymm1
	vmovups	64(%r14,%rcx,8), %ymm2
	vmovups	96(%r14,%rcx,8), %ymm3
	vmovups	%ymm0, (%r15,%rcx,8)
	vmovups	%ymm1, 32(%r15,%rcx,8)
	vmovups	%ymm2, 64(%r15,%rcx,8)
	vmovups	%ymm3, 96(%r15,%rcx,8)
	vmovups	%ymm4, (%r14,%rcx,8)
	vmovups	%ymm4, 32(%r14,%rcx,8)
	vmovups	%ymm4, 64(%r14,%rcx,8)
	vmovups	%ymm4, 96(%r14,%rcx,8)
.LBB7_49:                               #   in Loop: Header=BB7_18 Depth=1
	cmpq	%rax, %rbp
	jne	.LBB7_50
# %bb.51:                               #   in Loop: Header=BB7_18 Depth=1
	leaq	(%r15,%rax,8), %rax
	addq	$-8, %rax
	jmp	.LBB7_52
.LBB7_56:                               #   in Loop: Header=BB7_18 Depth=1
	leaq	8(%r15), %rbx
	movq	56(%rsp), %r13                  # 8-byte Reload
	testq	%r14, %r14
	jne	.LBB7_58
	jmp	.LBB7_59
.LBB7_50:                               #   in Loop: Header=BB7_18 Depth=1
	leaq	(%r15,%rax,8), %rdx
	leaq	(%r14,%rax,8), %rcx
	.p2align	4, 0x90
.LBB7_37:                               #   in Loop: Header=BB7_18 Depth=1
	addq	$-8, %rdx
	.p2align	4, 0x90
.LBB7_38:                               #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	8(%rdx), %rax
	movq	$0, 8(%rdx)
	movq	(%rcx), %rsi
	movq	%rsi, 8(%rdx)
	movq	$0, (%rcx)
	addq	$8, %rcx
	movq	%rax, %rdx
	cmpq	%rcx, %rbx
	jne	.LBB7_38
.LBB7_52:                               #   in Loop: Header=BB7_18 Depth=1
	addq	$16, %rax
	movq	%r14, %rcx
	movq	56(%rsp), %r13                  # 8-byte Reload
	.p2align	4, 0x90
.LBB7_53:                               #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, (%rcx)
	jne	.LBB7_86
# %bb.54:                               #   in Loop: Header=BB7_53 Depth=2
	addq	$8, %rcx
	cmpq	%rcx, %rbx
	jne	.LBB7_53
# %bb.55:                               #   in Loop: Header=BB7_18 Depth=1
	movq	%rax, %rbx
	testq	%r14, %r14
	je	.LBB7_59
.LBB7_58:                               #   in Loop: Header=BB7_18 Depth=1
	movq	%r14, %rdi
	vzeroupper
	callq	_ZdlPv
.LBB7_59:                               #   in Loop: Header=BB7_18 Depth=1
	movq	128(%rsp), %rax                 # 8-byte Reload
	leaq	(%r15,%rax,8), %rsi
	movq	%r15, %r14
	movl	20(%rsp), %r15d                 # 4-byte Reload
	addl	%r13d, %r12d
	cmpl	%r12d, %r15d
	ja	.LBB7_18
	jmp	.LBB7_15
.LBB7_44:                               #   in Loop: Header=BB7_18 Depth=1
	xorl	%ecx, %ecx
	testb	$1, %dl
	jne	.LBB7_48
	jmp	.LBB7_49
.LBB7_15:
	cmpq	%rbx, %r14
	je	.LBB7_16
# %bb.65:
	movq	%r14, %rbp
	movq	64(%rsp), %r15                  # 8-byte Reload
	.p2align	4, 0x90
.LBB7_66:                               # =>This Inner Loop Header: Depth=1
.Ltmp76:
	movq	%rbp, %rdi
	vzeroupper
	callq	_ZNSt6thread4joinEv
.Ltmp77:
# %bb.67:                               #   in Loop: Header=BB7_66 Depth=1
	addq	$8, %rbp
	cmpq	%rbp, %rbx
	jne	.LBB7_66
# %bb.68:
	xorl	%r12d, %r12d
	jmp	.LBB7_69
.LBB7_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
.LBB7_16:
	movq	64(%rsp), %r15                  # 8-byte Reload
	movb	$1, %r12b
.LBB7_69:
.Ltmp79:
	leaq	96(%rsp), %rdi
	vzeroupper
	callq	_ZN11Chronometer4stopEv
.Ltmp80:
# %bb.70:
	testq	%r15, %r15
	je	.LBB7_73
# %bb.71:
.Ltmp81:
	leaq	96(%rsp), %rdi
	callq	_ZN11Chronometer7getTimeEv
.Ltmp82:
# %bb.72:
	vmovss	%xmm0, (%r15)
.LBB7_73:
	movq	72(%rsp), %rbp
	testb	%r12b, %r12b
	jne	.LBB7_77
# %bb.74:
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB7_76:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rax)
	jne	.LBB7_86
# %bb.75:                               #   in Loop: Header=BB7_76 Depth=1
	addq	$8, %rax
	cmpq	%rax, %rbx
	jne	.LBB7_76
.LBB7_77:
	testq	%r14, %r14
	je	.LBB7_79
# %bb.78:
	movq	%r14, %rdi
	callq	_ZdlPv
.LBB7_79:
	movq	%rbp, %rax
	addq	$136, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB7_91:
	.cfi_def_cfa_offset 192
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf, %ecx
	movl	$507, %edx                      # imm = 0x1FB
	callq	__assert_fail
.LBB7_11:
.Ltmp53:
	jmp	.LBB7_12
.LBB7_10:
.Ltmp50:
.LBB7_12:
	movq	%rax, %rbp
	movq	%rbx, %rax
	addq	$40, %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB7_14
# %bb.13:
	callq	_ZdlPv
.LBB7_14:
	movq	%rbx, %rdi
	jmp	.LBB7_89
.LBB7_80:
.Ltmp83:
	jmp	.LBB7_81
.LBB7_61:
.Ltmp66:
	movq	%rax, %rbp
	jmp	.LBB7_62
.LBB7_39:
.Ltmp69:
	movq	%rax, %rbp
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_62
# %bb.40:
	movq	(%rdi), %rax
	callq	*8(%rax)
.LBB7_62:
	movq	%rbp, %rdi
	callq	__cxa_begin_catch
	movq	%r15, %rdi
	callq	_ZdlPv
.Ltmp70:
	callq	__cxa_rethrow
.Ltmp71:
# %bb.63:
.LBB7_60:
.Ltmp72:
	movq	%rax, %rbp
.Ltmp73:
	callq	__cxa_end_catch
.Ltmp74:
	jmp	.LBB7_82
.LBB7_92:
.Ltmp75:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB7_93:
.Ltmp78:
	jmp	.LBB7_81
.LBB7_25:
.Ltmp60:
	movq	%rax, %rbp
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_82
# %bb.26:
	movq	(%rdi), %rax
	callq	*8(%rax)
	jmp	.LBB7_82
.LBB7_64:
.Ltmp63:
.LBB7_81:
	movq	%rax, %rbp
.LBB7_82:
	cmpq	%rbx, %r14
	je	.LBB7_87
# %bb.83:
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB7_85:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rax)
	jne	.LBB7_86
# %bb.84:                               #   in Loop: Header=BB7_85 Depth=1
	addq	$8, %rax
	cmpq	%rax, %rbx
	jne	.LBB7_85
.LBB7_87:
	testq	%r14, %r14
	je	.LBB7_90
# %bb.88:
	movq	%r14, %rdi
.LBB7_89:
	callq	_ZdlPv
.LBB7_90:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.LBB7_86:
	vzeroupper
	callq	_ZSt9terminatev
.Lfunc_end7:
	.size	_ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf, .Lfunc_end7-_ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf
	.cfi_endproc
	.section	.gcc_except_table._ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf,"aG",@progbits,_ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf,comdat
	.p2align	2
GCC_except_table7:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp48-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin2          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin2          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp83-.Lfunc_begin2          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp63-.Lfunc_begin2          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin2          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp61-.Ltmp59                #   Call between .Ltmp59 and .Ltmp61
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin2          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin2          #     jumps to .Ltmp66
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp67-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin2          #     jumps to .Ltmp69
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp68-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp76-.Ltmp68                #   Call between .Ltmp68 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin2          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp82-.Ltmp79                #   Call between .Ltmp79 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin2          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Ltmp70-.Ltmp82                #   Call between .Ltmp82 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin2          # >> Call Site 15 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin2          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin2          # >> Call Site 16 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin2          #     jumps to .Ltmp75
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp74-.Lfunc_begin2          # >> Call Site 17 <<
	.uleb128 .Lfunc_end7-.Ltmp74            #   Call between .Ltmp74 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf
.LCPI8_0:
	.long	0x80000000                      #  -0
.LCPI8_1:
	.long	0x3effffff                      #  0.49999997
	.section	.text._ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf,"axG",@progbits,_ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf,comdat
	.weak	_ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf,@function
_ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf: # 
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 72(%rsp)                   # 8-byte Spill
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movl	%edx, 52(%rsp)
	movl	%ecx, 48(%rsp)
	movl	28(%rdi), %eax
	cmpl	28(%rsi), %eax
	jne	.LBB8_92
# %bb.1:
	movl	%edx, %ebp
	movl	16(%rdi), %edx
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movl	%eax, 44(%rsp)
	movl	16(%rsi), %r12d
	addl	%ecx, %ecx
	movl	20(%rdi), %eax
	addl	%ecx, %eax
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	addl	24(%rdi), %ecx
	movl	20(%rsi), %edx
	movl	%edx, 40(%rsp)
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movl	24(%rsi), %esi
	movl	%esi, 36(%rsp)
	movl	%r12d, 32(%rsp)
	subl	%edx, %eax
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %r14d
	incl	%r14d
	movl	%r14d, 28(%rsp)
	subl	%esi, %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %r15d
	incl	%r15d
	movl	%r15d, 24(%rsp)
	movl	$72, %edi
	callq	_Znwm
	movq	%rax, %rbx
	movq	$_ZTV6TensorIfE+16, (%rax)
	movl	$1, 16(%rax)
	movl	%r14d, 20(%rax)
	movl	%r15d, 24(%rax)
	movl	%r12d, 28(%rax)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%rax)
	movl	$1, 96(%rsp)
	movq	$0, 56(%rax)
	movb	$1, 64(%rax)
	movl	%r14d, %eax
	imull	%r12d, %eax
	imull	%r15d, %eax
	movl	%eax, 32(%rbx)
.Ltmp84:
	movl	$16, %edi
	callq	_Znwm
.Ltmp85:
# %bb.2:
	movq	%rax, %rbp
	movl	$1, (%rax)
	movl	%r14d, 4(%rax)
	movl	%r15d, 8(%rax)
	movl	%r12d, 12(%rax)
	movq	40(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_4
# %bb.3:
	callq	_ZdlPv
.LBB8_4:
	movq	%rbp, 40(%rbx)
	addq	$16, %rbp
	movq	%rbp, 48(%rbx)
	movq	%rbp, 56(%rbx)
.Ltmp87:
	leaq	96(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_ZN6TensorIfE9init_dataERKN6tensor4initE
.Ltmp88:
	movl	12(%rsp), %r15d                 # 4-byte Reload
# %bb.5:
	movq	%rbx, 64(%rsp)
	movl	$1, %r13d
	cmpl	16(%rsp), %r15d                 # 4-byte Folded Reload
	jb	.LBB8_7
# %bb.6:
	movl	%r15d, %eax
	vcvtsi2ss	%rax, %xmm1, %xmm0
	movl	16(%rsp), %eax                  # 4-byte Reload
	vcvtsi2ss	%rax, %xmm1, %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vbroadcastss	.LCPI8_0(%rip), %xmm1   # xmm1 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vandps	%xmm1, %xmm0, %xmm1
	vbroadcastss	.LCPI8_1(%rip), %xmm2   # xmm2 = [4.9999997E-1,4.9999997E-1,4.9999997E-1,4.9999997E-1]
	vorps	%xmm1, %xmm2, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vroundss	$11, %xmm0, %xmm0, %xmm0
	vcvttss2si	%xmm0, %r13
.LBB8_7:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 96(%rsp)
	movb	$1, 112(%rsp)
	xorl	%ebx, %ebx
.Ltmp90:
	leaq	96(%rsp), %rdi
	xorl	%r14d, %r14d
	callq	_ZN11Chronometer5startEv
.Ltmp91:
# %bb.8:
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	je	.LBB8_9
# %bb.27:
	movq	16(%rsp), %rax                  # 8-byte Reload
	decl	%eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	jmp	.LBB8_28
	.p2align	4, 0x90
.LBB8_33:                               #   in Loop: Header=BB8_28 Depth=1
	addq	$8, %rbx
	movq	%rbp, %rsi
	addl	%r13d, %r12d
	cmpl	%r12d, %r15d
	jbe	.LBB8_22
.LBB8_28:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_56 Depth 2
                                        #     Child Loop BB8_48 Depth 2
                                        #     Child Loop BB8_63 Depth 2
	movl	%r13d, %eax
	movq	%rbx, %rbp
	subq	%r14, %rbp
	movq	%rbp, %r13
	sarq	$3, %r13
	movl	%r15d, %ecx
	subl	%r12d, %ecx
	cmpq	16(%rsp), %r13                  # 8-byte Folded Reload
	cmovnel	%eax, %ecx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	cmpq	%rsi, %rbx
	je	.LBB8_37
# %bb.29:                               #   in Loop: Header=BB8_28 Depth=1
	movq	%rsi, %rbp
	movq	$0, (%rbx)
.Ltmp92:
	movl	$104, %edi
	vzeroupper
	callq	_Znwm
.Ltmp93:
# %bb.30:                               #   in Loop: Header=BB8_28 Depth=1
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE+16, (%rax)
	movl	%r12d, 8(%rax)
	movq	56(%rsp), %r13                  # 8-byte Reload
	movl	%r13d, 12(%rax)
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 16(%rax)
	leaq	64(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 32(%rax)
	leaq	52(%rsp), %rcx
	movq	%rcx, 40(%rax)
	leaq	48(%rsp), %rcx
	movq	%rcx, 48(%rax)
	leaq	32(%rsp), %rcx
	movq	%rcx, 56(%rax)
	leaq	44(%rsp), %rcx
	movq	%rcx, 64(%rax)
	leaq	28(%rsp), %rcx
	movq	%rcx, 72(%rax)
	leaq	40(%rsp), %rcx
	movq	%rcx, 80(%rax)
	leaq	24(%rsp), %rcx
	movq	%rcx, 88(%rax)
	leaq	36(%rsp), %rcx
	movq	%rcx, 96(%rax)
	movq	%rax, (%rsp)
.Ltmp94:
	movl	$pthread_create, %edx
	movq	%rbx, %rdi
	movq	%rsp, %rsi
	callq	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.Ltmp95:
# %bb.31:                               #   in Loop: Header=BB8_28 Depth=1
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	movl	12(%rsp), %r15d                 # 4-byte Reload
	je	.LBB8_33
# %bb.32:                               #   in Loop: Header=BB8_28 Depth=1
	movq	(%rdi), %rax
	callq	*8(%rax)
	jmp	.LBB8_33
	.p2align	4, 0x90
.LBB8_37:                               #   in Loop: Header=BB8_28 Depth=1
	testq	%rbp, %rbp
	movq	%r13, %rax
	movl	$1, %ecx
	cmoveq	%rcx, %rax
	leaq	(%rax,%r13), %rdx
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rcx, %rdx
	cmovaq	%rcx, %rdx
	addq	%r13, %rax
	cmovbq	%rcx, %rdx
	testq	%rdx, %rdx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	je	.LBB8_38
# %bb.39:                               #   in Loop: Header=BB8_28 Depth=1
	leaq	(,%rdx,8), %rdi
.Ltmp97:
	vzeroupper
	callq	_Znwm
.Ltmp98:
# %bb.40:                               #   in Loop: Header=BB8_28 Depth=1
	movq	%rax, %r15
	jmp	.LBB8_41
.LBB8_38:                               #   in Loop: Header=BB8_28 Depth=1
	xorl	%r15d, %r15d
.LBB8_41:                               #   in Loop: Header=BB8_28 Depth=1
	movq	$0, (%r15,%r13,8)
.Ltmp100:
	movl	$104, %edi
	vzeroupper
	callq	_Znwm
.Ltmp101:
# %bb.42:                               #   in Loop: Header=BB8_28 Depth=1
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE+16, (%rax)
	movl	%r12d, 8(%rax)
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, 12(%rax)
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 16(%rax)
	leaq	64(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 32(%rax)
	leaq	52(%rsp), %rcx
	movq	%rcx, 40(%rax)
	leaq	48(%rsp), %rcx
	movq	%rcx, 48(%rax)
	leaq	32(%rsp), %rcx
	movq	%rcx, 56(%rax)
	leaq	44(%rsp), %rcx
	movq	%rcx, 64(%rax)
	leaq	28(%rsp), %rcx
	movq	%rcx, 72(%rax)
	leaq	40(%rsp), %rcx
	movq	%rcx, 80(%rax)
	leaq	24(%rsp), %rcx
	movq	%rcx, 88(%rax)
	leaq	36(%rsp), %rcx
	movq	%rcx, 96(%rax)
	movq	%rax, (%rsp)
	leaq	(%r15,%r13,8), %rdi
.Ltmp103:
	movl	$pthread_create, %edx
	movq	%rsp, %rsi
	callq	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.Ltmp104:
# %bb.43:                               #   in Loop: Header=BB8_28 Depth=1
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_45
# %bb.44:                               #   in Loop: Header=BB8_28 Depth=1
	movq	(%rdi), %rax
	callq	*8(%rax)
.LBB8_45:                               #   in Loop: Header=BB8_28 Depth=1
	cmpq	%rbx, %r14
	je	.LBB8_66
# %bb.46:                               #   in Loop: Header=BB8_28 Depth=1
	addq	$-8, %rbp
	movq	%r15, %rdx
	movq	%r14, %rcx
	cmpq	$119, %rbp
	vxorps	%xmm4, %xmm4, %xmm4
	jbe	.LBB8_47
# %bb.51:                               #   in Loop: Header=BB8_28 Depth=1
	shrq	$3, %rbp
	leaq	(%r14,%rbp,8), %rax
	addq	$8, %rax
	cmpq	%rax, %r15
	jae	.LBB8_53
# %bb.52:                               #   in Loop: Header=BB8_28 Depth=1
	leaq	(%r15,%rbp,8), %rax
	addq	$8, %rax
	movq	%r15, %rdx
	movq	%r14, %rcx
	cmpq	%rax, %r14
	jb	.LBB8_47
.LBB8_53:                               #   in Loop: Header=BB8_28 Depth=1
	incq	%rbp
	movq	%rbp, %rax
	andq	$-16, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rdx
	shrq	$4, %rdx
	incq	%rdx
	testq	%rcx, %rcx
	je	.LBB8_54
# %bb.55:                               #   in Loop: Header=BB8_28 Depth=1
	movq	%rdx, %rsi
	andq	$-2, %rsi
	negq	%rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB8_56:                               #   Parent Loop BB8_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	%ymm4, (%r15,%rcx,8)
	vmovups	%ymm4, 32(%r15,%rcx,8)
	vmovups	%ymm4, 64(%r15,%rcx,8)
	vmovups	%ymm4, 96(%r15,%rcx,8)
	vmovups	(%r14,%rcx,8), %ymm0
	vmovups	32(%r14,%rcx,8), %ymm1
	vmovups	64(%r14,%rcx,8), %ymm2
	vmovups	96(%r14,%rcx,8), %ymm3
	vmovups	%ymm0, (%r15,%rcx,8)
	vmovups	%ymm1, 32(%r15,%rcx,8)
	vmovups	%ymm2, 64(%r15,%rcx,8)
	vmovups	%ymm3, 96(%r15,%rcx,8)
	vmovups	%ymm4, (%r14,%rcx,8)
	vmovups	%ymm4, 32(%r14,%rcx,8)
	vmovups	%ymm4, 64(%r14,%rcx,8)
	vmovups	%ymm4, 96(%r14,%rcx,8)
	vmovups	%ymm4, 128(%r15,%rcx,8)
	vmovups	%ymm4, 160(%r15,%rcx,8)
	vmovups	%ymm4, 192(%r15,%rcx,8)
	vmovups	%ymm4, 224(%r15,%rcx,8)
	vmovups	128(%r14,%rcx,8), %ymm0
	vmovups	160(%r14,%rcx,8), %ymm1
	vmovups	192(%r14,%rcx,8), %ymm2
	vmovups	224(%r14,%rcx,8), %ymm3
	vmovups	%ymm0, 128(%r15,%rcx,8)
	vmovups	%ymm1, 160(%r15,%rcx,8)
	vmovups	%ymm2, 192(%r15,%rcx,8)
	vmovups	%ymm3, 224(%r15,%rcx,8)
	vmovups	%ymm4, 128(%r14,%rcx,8)
	vmovups	%ymm4, 160(%r14,%rcx,8)
	vmovups	%ymm4, 192(%r14,%rcx,8)
	vmovups	%ymm4, 224(%r14,%rcx,8)
	addq	$32, %rcx
	addq	$2, %rsi
	jne	.LBB8_56
# %bb.57:                               #   in Loop: Header=BB8_28 Depth=1
	testb	$1, %dl
	je	.LBB8_59
.LBB8_58:                               #   in Loop: Header=BB8_28 Depth=1
	vmovups	%ymm4, (%r15,%rcx,8)
	vmovups	%ymm4, 32(%r15,%rcx,8)
	vmovups	%ymm4, 64(%r15,%rcx,8)
	vmovups	%ymm4, 96(%r15,%rcx,8)
	vmovups	(%r14,%rcx,8), %ymm0
	vmovups	32(%r14,%rcx,8), %ymm1
	vmovups	64(%r14,%rcx,8), %ymm2
	vmovups	96(%r14,%rcx,8), %ymm3
	vmovups	%ymm0, (%r15,%rcx,8)
	vmovups	%ymm1, 32(%r15,%rcx,8)
	vmovups	%ymm2, 64(%r15,%rcx,8)
	vmovups	%ymm3, 96(%r15,%rcx,8)
	vmovups	%ymm4, (%r14,%rcx,8)
	vmovups	%ymm4, 32(%r14,%rcx,8)
	vmovups	%ymm4, 64(%r14,%rcx,8)
	vmovups	%ymm4, 96(%r14,%rcx,8)
.LBB8_59:                               #   in Loop: Header=BB8_28 Depth=1
	cmpq	%rax, %rbp
	jne	.LBB8_60
# %bb.61:                               #   in Loop: Header=BB8_28 Depth=1
	leaq	(%r15,%rax,8), %rax
	addq	$-8, %rax
	jmp	.LBB8_62
.LBB8_66:                               #   in Loop: Header=BB8_28 Depth=1
	leaq	8(%r15), %rbx
	movq	56(%rsp), %r13                  # 8-byte Reload
	testq	%r14, %r14
	jne	.LBB8_68
	jmp	.LBB8_69
.LBB8_60:                               #   in Loop: Header=BB8_28 Depth=1
	leaq	(%r15,%rax,8), %rdx
	leaq	(%r14,%rax,8), %rcx
	.p2align	4, 0x90
.LBB8_47:                               #   in Loop: Header=BB8_28 Depth=1
	addq	$-8, %rdx
	.p2align	4, 0x90
.LBB8_48:                               #   Parent Loop BB8_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	8(%rdx), %rax
	movq	$0, 8(%rdx)
	movq	(%rcx), %rsi
	movq	%rsi, 8(%rdx)
	movq	$0, (%rcx)
	addq	$8, %rcx
	movq	%rax, %rdx
	cmpq	%rcx, %rbx
	jne	.LBB8_48
.LBB8_62:                               #   in Loop: Header=BB8_28 Depth=1
	addq	$16, %rax
	movq	%r14, %rcx
	movq	56(%rsp), %r13                  # 8-byte Reload
	.p2align	4, 0x90
.LBB8_63:                               #   Parent Loop BB8_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, (%rcx)
	jne	.LBB8_87
# %bb.64:                               #   in Loop: Header=BB8_63 Depth=2
	addq	$8, %rcx
	cmpq	%rcx, %rbx
	jne	.LBB8_63
# %bb.65:                               #   in Loop: Header=BB8_28 Depth=1
	movq	%rax, %rbx
	testq	%r14, %r14
	je	.LBB8_69
.LBB8_68:                               #   in Loop: Header=BB8_28 Depth=1
	movq	%r14, %rdi
	vzeroupper
	callq	_ZdlPv
.LBB8_69:                               #   in Loop: Header=BB8_28 Depth=1
	movq	128(%rsp), %rax                 # 8-byte Reload
	leaq	(%r15,%rax,8), %rsi
	movq	%r15, %r14
	movl	12(%rsp), %r15d                 # 4-byte Reload
	addl	%r13d, %r12d
	cmpl	%r12d, %r15d
	ja	.LBB8_28
	jmp	.LBB8_22
.LBB8_54:                               #   in Loop: Header=BB8_28 Depth=1
	xorl	%ecx, %ecx
	testb	$1, %dl
	jne	.LBB8_58
	jmp	.LBB8_59
.LBB8_22:
	cmpq	%rbx, %r14
	je	.LBB8_10
# %bb.23:
	movq	%r14, %rbp
	.p2align	4, 0x90
.LBB8_24:                               # =>This Inner Loop Header: Depth=1
.Ltmp112:
	movq	%rbp, %rdi
	vzeroupper
	callq	_ZNSt6thread4joinEv
.Ltmp113:
# %bb.25:                               #   in Loop: Header=BB8_24 Depth=1
	addq	$8, %rbp
	cmpq	%rbp, %rbx
	jne	.LBB8_24
# %bb.26:
	xorl	%r15d, %r15d
	jmp	.LBB8_11
.LBB8_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
.LBB8_10:
	movb	$1, %r15b
.LBB8_11:
.Ltmp115:
	leaq	96(%rsp), %rdi
	vzeroupper
	callq	_ZN11Chronometer4stopEv
.Ltmp116:
# %bb.12:
	cmpq	$0, 72(%rsp)                    # 8-byte Folded Reload
	je	.LBB8_15
# %bb.13:
.Ltmp117:
	leaq	96(%rsp), %rdi
	callq	_ZN11Chronometer7getTimeEv
.Ltmp118:
# %bb.14:
	movq	72(%rsp), %rax                  # 8-byte Reload
	vmovss	%xmm0, (%rax)
.LBB8_15:
	movq	64(%rsp), %rbp
	testb	%r15b, %r15b
	jne	.LBB8_78
# %bb.16:
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB8_77:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rax)
	jne	.LBB8_87
# %bb.76:                               #   in Loop: Header=BB8_77 Depth=1
	addq	$8, %rax
	cmpq	%rax, %rbx
	jne	.LBB8_77
.LBB8_78:
	testq	%r14, %r14
	je	.LBB8_80
# %bb.79:
	movq	%r14, %rdi
	callq	_ZdlPv
.LBB8_80:
	movq	%rbp, %rax
	addq	$136, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB8_92:
	.cfi_def_cfa_offset 192
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf, %ecx
	movl	$574, %edx                      # imm = 0x23E
	callq	__assert_fail
.LBB8_18:
.Ltmp89:
	jmp	.LBB8_19
.LBB8_17:
.Ltmp86:
.LBB8_19:
	movq	%rax, %rbp
	movq	%rbx, %rax
	addq	$40, %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB8_21
# %bb.20:
	callq	_ZdlPv
.LBB8_21:
	movq	%rbx, %rdi
	jmp	.LBB8_90
.LBB8_81:
.Ltmp119:
	jmp	.LBB8_82
.LBB8_71:
.Ltmp102:
	movq	%rax, %rbp
	jmp	.LBB8_72
.LBB8_49:
.Ltmp105:
	movq	%rax, %rbp
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_72
# %bb.50:
	movq	(%rdi), %rax
	callq	*8(%rax)
.LBB8_72:
	movq	%rbp, %rdi
	callq	__cxa_begin_catch
	movq	%r15, %rdi
	callq	_ZdlPv
.Ltmp106:
	callq	__cxa_rethrow
.Ltmp107:
# %bb.73:
.LBB8_70:
.Ltmp108:
	movq	%rax, %rbp
.Ltmp109:
	callq	__cxa_end_catch
.Ltmp110:
	jmp	.LBB8_83
.LBB8_93:
.Ltmp111:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB8_75:
.Ltmp114:
	jmp	.LBB8_82
.LBB8_35:
.Ltmp96:
	movq	%rax, %rbp
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_83
# %bb.36:
	movq	(%rdi), %rax
	callq	*8(%rax)
	jmp	.LBB8_83
.LBB8_74:
.Ltmp99:
.LBB8_82:
	movq	%rax, %rbp
.LBB8_83:
	cmpq	%rbx, %r14
	je	.LBB8_88
# %bb.84:
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB8_86:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rax)
	jne	.LBB8_87
# %bb.85:                               #   in Loop: Header=BB8_86 Depth=1
	addq	$8, %rax
	cmpq	%rax, %rbx
	jne	.LBB8_86
.LBB8_88:
	testq	%r14, %r14
	je	.LBB8_91
# %bb.89:
	movq	%r14, %rdi
.LBB8_90:
	callq	_ZdlPv
.LBB8_91:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.LBB8_87:
	vzeroupper
	callq	_ZSt9terminatev
.Lfunc_end8:
	.size	_ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf, .Lfunc_end8-_ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf
	.cfi_endproc
	.section	.gcc_except_table._ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf,"aG",@progbits,_ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf,comdat
	.p2align	2
GCC_except_table8:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp84-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin3          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin3          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp119-.Lfunc_begin3         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp99-.Lfunc_begin3          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin3          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp97-.Ltmp95                #   Call between .Ltmp95 and .Ltmp97
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin3          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin3         #     jumps to .Ltmp102
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp103-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin3         #     jumps to .Ltmp105
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp104-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp112-.Ltmp104              #   Call between .Ltmp104 and .Ltmp112
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin3         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp118-.Ltmp115              #   Call between .Ltmp115 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin3         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp106-.Ltmp118              #   Call between .Ltmp118 and .Ltmp106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin3         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin3         #     jumps to .Ltmp111
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp110-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Lfunc_end8-.Ltmp110           #   Call between .Ltmp110 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2
                                        # -- End function
	.section	.text._ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf,"axG",@progbits,_ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf,comdat
	.weak	_ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf # -- Begin function _ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf,@function
_ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf: # 
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception4
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$392, %rsp                      # imm = 0x188
	.cfi_def_cfa_offset 448
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 384(%rsp)                  # 8-byte Spill
	movslq	28(%rdi), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	cmpl	28(%rsi), %eax
	jne	.LBB9_200
# %bb.1:
	movl	%r8d, %r14d
	movl	%edx, %ebp
	movq	%rdi, %r15
	movl	16(%rsi), %r12d
	movl	24(%rsi), %edi
	movq	%rsi, 216(%rsp)                 # 8-byte Spill
	movslq	20(%rsi), %rdx
	addl	%ecx, %ecx
	movl	20(%r15), %eax
	addl	%ecx, %eax
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	subl	%edx, %eax
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %esi
	addl	24(%r15), %ecx
	movl	%edi, 4(%rsp)                   # 4-byte Spill
	subl	%edi, %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	divl	%ebp
                                        # kill: def $eax killed $eax def $rax
	movq	%rsi, 264(%rsp)                 # 8-byte Spill
	leal	1(%rsi), %r13d
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	leal	1(%rax), %ebx
	movl	$72, %edi
	callq	_Znwm
	movq	%rax, %rbp
	movq	$_ZTV6TensorIfE+16, (%rax)
	movl	$1, 16(%rax)
	movl	%r13d, 20(%rax)
	movl	%ebx, 24(%rax)
	movl	%r12d, 28(%rax)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%rax)
	movl	$1, 352(%rsp)
	movq	$0, 56(%rax)
	movb	$1, 64(%rax)
	movl	%r13d, %eax
	imull	%r12d, %eax
	imull	%ebx, %eax
	movl	%eax, 32(%rbp)
.Ltmp120:
	movl	$16, %edi
	movq	%rbp, 168(%rsp)                 # 8-byte Spill
	callq	_Znwm
.Ltmp121:
# %bb.2:
	movl	$1, (%rax)
	movl	%r13d, 52(%rsp)                 # 4-byte Spill
	movl	%r13d, 4(%rax)
	movl	%ebx, 88(%rsp)                  # 4-byte Spill
	movl	%ebx, 8(%rax)
	movl	%r12d, 100(%rsp)                # 4-byte Spill
	movl	%r12d, 12(%rax)
	movq	40(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_4
# %bb.3:
	movq	%rax, %rbx
	callq	_ZdlPv
	movq	%rbx, %rax
.LBB9_4:
	movq	%rax, 40(%rbp)
	addq	$16, %rax
	movq	%rax, 48(%rbp)
	movq	%rax, 56(%rbp)
.Ltmp123:
	leaq	352(%rsp), %rsi
	movq	%rbp, %rdi
	callq	_ZN6TensorIfE9init_dataERKN6tensor4initE
.Ltmp124:
# %bb.5:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 352(%rsp)
	movb	$1, 368(%rsp)
	leaq	352(%rsp), %rdi
	callq	_ZN11Chronometer5startEv
	decl	%r14d
	cmpl	$6, %r14d
	ja	.LBB9_73
# %bb.6:
	movq	%r15, 208(%rsp)                 # 8-byte Spill
	movl	100(%rsp), %edi                 # 4-byte Reload
	movslq	%edi, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jmpq	*.LJTI9_0(,%r14,8)
.LBB9_7:
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movl	88(%rsp), %ecx                  # 4-byte Reload
	je	.LBB9_197
# %bb.8:
	movq	112(%rsp), %rax                 # 8-byte Reload
	andq	$-2, %rax
	xorl	%esi, %esi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB9_10
	.p2align	4, 0x90
.LBB9_9:                                #   in Loop: Header=BB9_10 Depth=1
	movq	32(%rsp), %rsi                  # 8-byte Reload
	incl	%esi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	cmpl	120(%rsp), %esi                 # 4-byte Folded Reload
	je	.LBB9_197
.LBB9_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_13 Depth 2
                                        #       Child Loop BB9_16 Depth 3
                                        #         Child Loop BB9_19 Depth 4
                                        #           Child Loop BB9_23 Depth 5
                                        #             Child Loop BB9_26 Depth 6
	testl	%edi, %edi
	je	.LBB9_9
# %bb.11:                               #   in Loop: Header=BB9_10 Depth=1
	xorl	%esi, %esi
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB9_13
	.p2align	4, 0x90
.LBB9_12:                               #   in Loop: Header=BB9_13 Depth=2
	movq	8(%rsp), %rcx                   # 8-byte Reload
	incl	%ecx
	movl	100(%rsp), %edi                 # 4-byte Reload
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	cmpl	%edi, %ecx
	movl	88(%rsp), %ecx                  # 4-byte Reload
	je	.LBB9_9
.LBB9_13:                               #   Parent Loop BB9_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_16 Depth 3
                                        #         Child Loop BB9_19 Depth 4
                                        #           Child Loop BB9_23 Depth 5
                                        #             Child Loop BB9_26 Depth 6
	testl	%ecx, %ecx
	je	.LBB9_12
# %bb.14:                               #   in Loop: Header=BB9_13 Depth=2
	movl	$0, 104(%rsp)                   # 4-byte Folded Spill
	xorl	%ecx, %ecx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB9_16
	.p2align	4, 0x90
.LBB9_15:                               #   in Loop: Header=BB9_16 Depth=3
	movq	136(%rsp), %rsi                 # 8-byte Reload
	leal	1(%rsi), %ecx
	addl	%edx, 104(%rsp)                 # 4-byte Folded Spill
	cmpl	232(%rsp), %esi                 # 4-byte Folded Reload
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	je	.LBB9_12
.LBB9_16:                               #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_19 Depth 4
                                        #           Child Loop BB9_23 Depth 5
                                        #             Child Loop BB9_26 Depth 6
	cmpl	$0, 52(%rsp)                    # 4-byte Folded Reload
	je	.LBB9_15
# %bb.17:                               #   in Loop: Header=BB9_16 Depth=3
	movq	136(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	imull	%edx, %ecx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movl	$1, 144(%rsp)                   # 4-byte Folded Spill
	movl	$0, 160(%rsp)                   # 4-byte Folded Spill
	xorl	%ecx, %ecx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	jmp	.LBB9_19
	.p2align	4, 0x90
.LBB9_18:                               #   in Loop: Header=BB9_19 Depth=4
	movq	176(%rsp), %rsi                 # 8-byte Reload
	leal	1(%rsi), %ecx
	movq	72(%rsp), %rdx                  # 8-byte Reload
	addl	%edx, 144(%rsp)                 # 4-byte Folded Spill
	addl	%edx, 160(%rsp)                 # 4-byte Folded Spill
	cmpl	264(%rsp), %esi                 # 4-byte Folded Reload
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	je	.LBB9_15
.LBB9_19:                               #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_13 Depth=2
                                        #       Parent Loop BB9_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB9_23 Depth 5
                                        #             Child Loop BB9_26 Depth 6
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	je	.LBB9_18
# %bb.20:                               #   in Loop: Header=BB9_19 Depth=4
	cmpl	$0, 112(%rsp)                   # 4-byte Folded Reload
	je	.LBB9_18
# %bb.21:                               #   in Loop: Header=BB9_19 Depth=4
	movq	176(%rsp), %rdi                 # 8-byte Reload
	movl	%edi, %ecx
	imull	72(%rsp), %ecx                  # 4-byte Folded Reload
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movl	24(%rcx), %r11d
	movl	28(%rcx), %r15d
	movq	216(%rsp), %r12                 # 8-byte Reload
	movl	24(%r12), %r14d
	movl	16(%r12), %ebp
	movl	28(%r12), %esi
	movq	8(%rcx), %r8
	movq	168(%rsp), %r13                 # 8-byte Reload
	movl	24(%r13), %ecx
	imull	%edi, %ecx
	addl	136(%rsp), %ecx                 # 4-byte Folded Reload
	imull	28(%r13), %ecx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	addl	%edx, %ecx
	movslq	%ecx, %r9
	movl	%r11d, %ebx
	imull	144(%rsp), %ebx                 # 4-byte Folded Reload
	addl	104(%rsp), %ebx                 # 4-byte Folded Reload
	imull	%r15d, %ebx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addl	%ecx, %ebx
	movl	%r11d, %r10d
	imull	%r15d, %r10d
	addl	%r10d, %r10d
	movl	%r14d, 152(%rsp)                # 4-byte Spill
                                        # kill: def $r14d killed $r14d def $r14
	imull	%ebp, %r14d
	leal	(%rdx,%r14), %edi
	imull	%esi, %edi
	addl	%ecx, %edi
	movl	%ebp, 200(%rsp)                 # 4-byte Spill
	imull	%esi, %ebp
	movl	%ebp, 40(%rsp)                  # 4-byte Spill
	imull	%esi, %r14d
	addl	%r14d, %r14d
                                        # kill: def $edx killed $edx killed $rdx
	movl	%esi, 192(%rsp)                 # 4-byte Spill
	imull	%esi, %edx
	addl	%ecx, %edx
	movl	%r11d, 128(%rsp)                # 4-byte Spill
	imull	160(%rsp), %r11d                # 4-byte Folded Reload
	addl	104(%rsp), %r11d                # 4-byte Folded Reload
	movl	%ebx, %ebp
	movl	%edx, %ebx
	movl	%r15d, 16(%rsp)                 # 4-byte Spill
	imull	%r15d, %r11d
	addl	%ecx, %r11d
	movq	8(%r12), %r12
	movq	8(%r13), %rsi
	xorl	%r13d, %r13d
	jmp	.LBB9_23
	.p2align	4, 0x90
.LBB9_22:                               #   in Loop: Header=BB9_23 Depth=5
	incl	%r13d
	movl	16(%rsp), %ecx                  # 4-byte Reload
	movl	24(%rsp), %ebp                  # 4-byte Reload
	addl	%ecx, %ebp
	movl	64(%rsp), %edi                  # 4-byte Reload
	movl	40(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %edi
	movl	56(%rsp), %ebx                  # 4-byte Reload
	addl	%edx, %ebx
	addl	%ecx, %r11d
	cmpl	4(%rsp), %r13d                  # 4-byte Folded Reload
	je	.LBB9_18
.LBB9_23:                               #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_13 Depth=2
                                        #       Parent Loop BB9_16 Depth=3
                                        #         Parent Loop BB9_19 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB9_26 Depth 6
	vmovss	(%rsi,%r9,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	cmpl	$1, 112(%rsp)                   # 4-byte Folded Reload
	movl	%ebp, 24(%rsp)                  # 4-byte Spill
	movl	%edi, 64(%rsp)                  # 4-byte Spill
	movl	%ebx, 56(%rsp)                  # 4-byte Spill
	jne	.LBB9_25
# %bb.24:                               #   in Loop: Header=BB9_23 Depth=5
	xorl	%ecx, %ecx
	jmp	.LBB9_27
	.p2align	4, 0x90
.LBB9_25:                               #   in Loop: Header=BB9_23 Depth=5
	movl	%r11d, %edx
                                        # kill: def $ebx killed $ebx def $rbx
                                        # kill: def $edi killed $edi def $rdi
	movl	%ebp, %r15d
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_26:                               #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_13 Depth=2
                                        #       Parent Loop BB9_16 Depth=3
                                        #         Parent Loop BB9_19 Depth=4
                                        #           Parent Loop BB9_23 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movslq	%edx, %rdx
	movslq	%ebx, %rbx
	vmovss	(%r12,%rbx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	(%r8,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovss	%xmm1, (%rsi,%r9,4)
	movslq	%r15d, %r15
	movslq	%edi, %rdi
	vmovss	(%r12,%rdi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vfmadd132ss	(%r8,%r15,4), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovss	%xmm0, (%rsi,%r9,4)
	addq	$2, %rcx
	addl	%r10d, %r15d
	addl	%r14d, %edi
	addl	%r14d, %ebx
	addl	%r10d, %edx
	cmpq	%rcx, %rax
	jne	.LBB9_26
.LBB9_27:                               #   in Loop: Header=BB9_23 Depth=5
	testb	$1, 112(%rsp)                   # 1-byte Folded Reload
	je	.LBB9_22
# %bb.28:                               #   in Loop: Header=BB9_23 Depth=5
	movq	184(%rsp), %rdx                 # 8-byte Reload
	addl	%r13d, %edx
	movq	80(%rsp), %rdi                  # 8-byte Reload
	addl	%ecx, %edi
	imull	128(%rsp), %edi                 # 4-byte Folded Reload
	addl	%edx, %edi
	imull	152(%rsp), %ecx                 # 4-byte Folded Reload
	addl	%r13d, %ecx
	imull	200(%rsp), %ecx                 # 4-byte Folded Reload
	addl	8(%rsp), %ecx                   # 4-byte Folded Reload
	imull	192(%rsp), %ecx                 # 4-byte Folded Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	vmovss	(%r12,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	imull	16(%rsp), %edi                  # 4-byte Folded Reload
	addl	%edx, %edi
	movslq	%edi, %rcx
	vfmadd231ss	(%r8,%rcx,4), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovss	%xmm0, (%rsi,%r9,4)
	jmp	.LBB9_22
.LBB9_29:
	cmpl	$0, 88(%rsp)                    # 4-byte Folded Reload
	movq	72(%rsp), %rax                  # 8-byte Reload
	je	.LBB9_197
# %bb.30:
	movslq	52(%rsp), %rdx                  # 4-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	andq	$-2, %rdx
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	addl	%eax, %eax
	movl	%eax, 224(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB9_32
	.p2align	4, 0x90
.LBB9_31:                               #   in Loop: Header=BB9_32 Depth=1
	movq	8(%rsp), %rdx                   # 8-byte Reload
	leal	1(%rdx), %eax
	movq	88(%rsp), %rcx                  # 8-byte Reload
	addl	72(%rsp), %ecx                  # 4-byte Folded Reload
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	cmpl	232(%rsp), %edx                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	je	.LBB9_197
.LBB9_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_35 Depth 2
                                        #       Child Loop BB9_38 Depth 3
                                        #         Child Loop BB9_41 Depth 4
                                        #           Child Loop BB9_45 Depth 5
                                        #             Child Loop BB9_48 Depth 6
	testl	%edi, %edi
	je	.LBB9_31
# %bb.33:                               #   in Loop: Header=BB9_32 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	imull	72(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movl	$0, 40(%rsp)                    # 4-byte Folded Spill
	jmp	.LBB9_35
	.p2align	4, 0x90
.LBB9_34:                               #   in Loop: Header=BB9_35 Depth=2
	movl	40(%rsp), %eax                  # 4-byte Reload
	incl	%eax
	movl	100(%rsp), %edi                 # 4-byte Reload
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	cmpl	%edi, %eax
	je	.LBB9_31
.LBB9_35:                               #   Parent Loop BB9_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_38 Depth 3
                                        #         Child Loop BB9_41 Depth 4
                                        #           Child Loop BB9_45 Depth 5
                                        #             Child Loop BB9_48 Depth 6
	cmpl	$0, 112(%rsp)                   # 4-byte Folded Reload
	je	.LBB9_34
# %bb.36:                               #   in Loop: Header=BB9_35 Depth=2
	movl	$0, 16(%rsp)                    # 4-byte Folded Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 104(%rsp)                 # 4-byte Spill
	jmp	.LBB9_38
	.p2align	4, 0x90
.LBB9_37:                               #   in Loop: Header=BB9_38 Depth=3
	movl	16(%rsp), %eax                  # 4-byte Reload
	incl	%eax
	incl	104(%rsp)                       # 4-byte Folded Spill
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	cmpl	112(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB9_34
.LBB9_38:                               #   Parent Loop BB9_32 Depth=1
                                        #     Parent Loop BB9_35 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_41 Depth 4
                                        #           Child Loop BB9_45 Depth 5
                                        #             Child Loop BB9_48 Depth 6
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	je	.LBB9_37
# %bb.39:                               #   in Loop: Header=BB9_38 Depth=3
	xorl	%eax, %eax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 160(%rsp)                 # 4-byte Spill
	jmp	.LBB9_41
	.p2align	4, 0x90
.LBB9_40:                               #   in Loop: Header=BB9_41 Depth=4
	movq	144(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	incl	160(%rsp)                       # 4-byte Folded Spill
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	cmpl	4(%rsp), %eax                   # 4-byte Folded Reload
	je	.LBB9_37
.LBB9_41:                               #   Parent Loop BB9_32 Depth=1
                                        #     Parent Loop BB9_35 Depth=2
                                        #       Parent Loop BB9_38 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB9_45 Depth 5
                                        #             Child Loop BB9_48 Depth 6
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	je	.LBB9_40
# %bb.42:                               #   in Loop: Header=BB9_41 Depth=4
	cmpl	$0, 52(%rsp)                    # 4-byte Folded Reload
	je	.LBB9_40
# %bb.43:                               #   in Loop: Header=BB9_41 Depth=4
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	144(%rsp), %rdx                 # 8-byte Reload
	addl	%edx, %eax
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movl	24(%rcx), %edi
	movl	28(%rcx), %r9d
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	24(%rax), %r8d
	movl	28(%rax), %ebx
	movq	8(%rcx), %r10
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %r11
	movq	8(%rax), %r15
	movl	24(%rcx), %eax
	movl	16(%rsp), %ebp                  # 4-byte Reload
	imull	%ebp, %eax
	addl	%edx, %eax
	imull	16(%rcx), %eax
	movl	40(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %eax
	imull	28(%rcx), %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movl	104(%rsp), %r13d                # 4-byte Reload
	imull	%edi, %r13d
	movl	160(%rsp), %r12d                # 4-byte Reload
	addl	%r12d, %r13d
	imull	%r9d, %r13d
	movl	224(%rsp), %esi                 # 4-byte Reload
	imull	%edi, %esi
	imull	%r9d, %esi
	movq	8(%rsp), %rax                   # 8-byte Reload
	leal	(%rax,%r8), %ecx
	imull	%ebx, %ecx
	addl	%edx, %ecx
	movl	%ecx, 192(%rsp)                 # 4-byte Spill
	movq	%r8, 152(%rsp)                  # 8-byte Spill
	movl	%r8d, %r14d
	imull	%ebx, %r14d
	addl	%r14d, %r14d
                                        # kill: def $eax killed $eax killed $rax
	movl	%ebx, 200(%rsp)                 # 4-byte Spill
	imull	%ebx, %eax
	addl	%edx, %eax
	movl	%eax, 184(%rsp)                 # 4-byte Spill
	movl	%edi, 80(%rsp)                  # 4-byte Spill
	imull	%edi, %ebp
	addl	%r12d, %ebp
	movl	%r9d, 128(%rsp)                 # 4-byte Spill
	imull	%r9d, %ebp
	xorl	%r8d, %r8d
	jmp	.LBB9_45
	.p2align	4, 0x90
.LBB9_44:                               #   in Loop: Header=BB9_45 Depth=5
	incl	%r8d
	incl	%r13d
	incl	%ebp
	cmpl	120(%rsp), %r8d                 # 4-byte Folded Reload
	je	.LBB9_40
.LBB9_45:                               #   Parent Loop BB9_32 Depth=1
                                        #     Parent Loop BB9_35 Depth=2
                                        #       Parent Loop BB9_38 Depth=3
                                        #         Parent Loop BB9_41 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB9_48 Depth 6
	movq	24(%rsp), %rax                  # 8-byte Reload
	addl	%r8d, %eax
	movslq	%eax, %rdi
	movl	64(%rsp), %eax                  # 4-byte Reload
	cmpl	72(%rsp), %eax                  # 4-byte Folded Reload
	jae	.LBB9_47
# %bb.46:                               #   in Loop: Header=BB9_45 Depth=5
	xorl	%ebx, %ebx
	jmp	.LBB9_49
	.p2align	4, 0x90
.LBB9_47:                               #   in Loop: Header=BB9_45 Depth=5
	movl	%ebp, %r9d
	movl	184(%rsp), %eax                 # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	movl	192(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, %edx
	movl	%r13d, %ecx
	xorl	%ebx, %ebx
	movq	176(%rsp), %r12                 # 8-byte Reload
	.p2align	4, 0x90
.LBB9_48:                               #   Parent Loop BB9_32 Depth=1
                                        #     Parent Loop BB9_35 Depth=2
                                        #       Parent Loop BB9_38 Depth=3
                                        #         Parent Loop BB9_41 Depth=4
                                        #           Parent Loop BB9_45 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movslq	%r9d, %r9
	vmovss	(%r10,%r9,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	vmovss	(%r11,%rdi,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	cltq
	vfmadd213ss	(%r15,%rax,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r15,%rax,4)
	movslq	%ecx, %rcx
	vmovss	(%r10,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	(%r11,%rdi,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%edx, %rdx
	vfmadd213ss	(%r15,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r15,%rdx,4)
	addq	$2, %rbx
	addl	%esi, %ecx
	addl	%r14d, %edx
	addl	%r14d, %eax
	addl	%esi, %r9d
	addq	$-2, %r12
	jne	.LBB9_48
.LBB9_49:                               #   in Loop: Header=BB9_45 Depth=5
	testb	$1, 56(%rsp)                    # 1-byte Folded Reload
	je	.LBB9_44
# %bb.50:                               #   in Loop: Header=BB9_45 Depth=5
	movq	152(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	imull	%ebx, %eax
	imull	72(%rsp), %ebx                  # 4-byte Folded Reload
	addl	16(%rsp), %ebx                  # 4-byte Folded Reload
	imull	80(%rsp), %ebx                  # 4-byte Folded Reload
	addl	32(%rsp), %ebx                  # 4-byte Folded Reload
	imull	128(%rsp), %ebx                 # 4-byte Folded Reload
	addl	%r8d, %ebx
	movslq	%ebx, %rcx
	vmovss	(%r10,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	(%r11,%rdi,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	addl	8(%rsp), %eax                   # 4-byte Folded Reload
	imull	200(%rsp), %eax                 # 4-byte Folded Reload
	addl	40(%rsp), %eax                  # 4-byte Folded Reload
	cltq
	vfmadd213ss	(%r15,%rax,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r15,%rax,4)
	jmp	.LBB9_44
.LBB9_51:
	cmpl	$0, 52(%rsp)                    # 4-byte Folded Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movl	88(%rsp), %edx                  # 4-byte Reload
	je	.LBB9_197
# %bb.52:
	cmpl	$0, 112(%rsp)                   # 4-byte Folded Reload
	sete	%al
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	sete	%bl
	movq	120(%rsp), %rsi                 # 8-byte Reload
	leaq	-1(%rsi), %rbp
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	orb	%al, %bl
	movb	%bl, 128(%rsp)                  # 1-byte Spill
	movl	%esi, %eax
	andl	$3, %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	andq	$-4, %rsi
	xorl	%ebp, %ebp
	movq	%rbp, 152(%rsp)                 # 8-byte Spill
	xorl	%ebp, %ebp
	movq	%rbp, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB9_54
	.p2align	4, 0x90
.LBB9_53:                               #   in Loop: Header=BB9_54 Depth=1
	movq	80(%rsp), %rbx                  # 8-byte Reload
	leal	1(%rbx), %edx
	movq	152(%rsp), %rbp                 # 8-byte Reload
	addl	%ecx, %ebp
	movq	%rbp, 152(%rsp)                 # 8-byte Spill
	cmpl	264(%rsp), %ebx                 # 4-byte Folded Reload
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movl	88(%rsp), %edx                  # 4-byte Reload
	je	.LBB9_197
.LBB9_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_57 Depth 2
                                        #       Child Loop BB9_60 Depth 3
                                        #         Child Loop BB9_63 Depth 4
                                        #           Child Loop BB9_66 Depth 5
                                        #             Child Loop BB9_69 Depth 6
                                        #             Child Loop BB9_72 Depth 6
	testl	%edx, %edx
	je	.LBB9_53
# %bb.55:                               #   in Loop: Header=BB9_54 Depth=1
	movl	$0, 32(%rsp)                    # 4-byte Folded Spill
	xorl	%ecx, %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB9_57
	.p2align	4, 0x90
.LBB9_56:                               #   in Loop: Header=BB9_57 Depth=2
	movq	8(%rsp), %rbp                   # 8-byte Reload
	leal	1(%rbp), %edx
	movq	72(%rsp), %rcx                  # 8-byte Reload
	addl	%ecx, 32(%rsp)                  # 4-byte Folded Spill
	cmpl	232(%rsp), %ebp                 # 4-byte Folded Reload
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	je	.LBB9_53
.LBB9_57:                               #   Parent Loop BB9_54 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_60 Depth 3
                                        #         Child Loop BB9_63 Depth 4
                                        #           Child Loop BB9_66 Depth 5
                                        #             Child Loop BB9_69 Depth 6
                                        #             Child Loop BB9_72 Depth 6
	testl	%edi, %edi
	je	.LBB9_56
# %bb.58:                               #   in Loop: Header=BB9_57 Depth=2
	movl	$0, 40(%rsp)                    # 4-byte Folded Spill
	jmp	.LBB9_60
	.p2align	4, 0x90
.LBB9_59:                               #   in Loop: Header=BB9_60 Depth=3
	movl	40(%rsp), %ecx                  # 4-byte Reload
	incl	%ecx
	movl	100(%rsp), %edi                 # 4-byte Reload
	movl	%ecx, 40(%rsp)                  # 4-byte Spill
	cmpl	%edi, %ecx
	je	.LBB9_56
.LBB9_60:                               #   Parent Loop BB9_54 Depth=1
                                        #     Parent Loop BB9_57 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_63 Depth 4
                                        #           Child Loop BB9_66 Depth 5
                                        #             Child Loop BB9_69 Depth 6
                                        #             Child Loop BB9_72 Depth 6
	cmpb	$0, 128(%rsp)                   # 1-byte Folded Reload
	jne	.LBB9_59
# %bb.61:                               #   in Loop: Header=BB9_60 Depth=3
	movl	$0, 56(%rsp)                    # 4-byte Folded Spill
	movq	152(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	jmp	.LBB9_63
	.p2align	4, 0x90
.LBB9_62:                               #   in Loop: Header=BB9_63 Depth=4
	movl	56(%rsp), %ecx                  # 4-byte Reload
	incl	%ecx
	incl	16(%rsp)                        # 4-byte Folded Spill
	movl	%ecx, 56(%rsp)                  # 4-byte Spill
	cmpl	112(%rsp), %ecx                 # 4-byte Folded Reload
	je	.LBB9_59
.LBB9_63:                               #   Parent Loop BB9_54 Depth=1
                                        #     Parent Loop BB9_57 Depth=2
                                        #       Parent Loop BB9_60 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB9_66 Depth 5
                                        #             Child Loop BB9_69 Depth 6
                                        #             Child Loop BB9_72 Depth 6
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	je	.LBB9_62
# %bb.64:                               #   in Loop: Header=BB9_63 Depth=4
	movq	208(%rsp), %r10                 # 8-byte Reload
	movl	28(%r10), %r15d
	movq	216(%rsp), %r11                 # 8-byte Reload
	movl	16(%r11), %eax
	movl	28(%r11), %r14d
	movq	8(%r10), %rbx
	movq	8(%r11), %rbp
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	8(%rdx), %r8
	movl	24(%rdx), %ecx
	imull	80(%rsp), %ecx                  # 4-byte Folded Reload
	addl	8(%rsp), %ecx                   # 4-byte Folded Reload
	imull	28(%rdx), %ecx
	movl	40(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %ecx
	movslq	%ecx, %r9
	movl	24(%r10), %r10d
	imull	16(%rsp), %r10d                 # 4-byte Folded Reload
	addl	32(%rsp), %r10d                 # 4-byte Folded Reload
	movq	%r15, %rdi
	imull	%r15d, %r10d
	movl	24(%r11), %r11d
	imull	%eax, %r11d
	imull	56(%rsp), %r11d                 # 4-byte Folded Reload
	addl	%edx, %r11d
	imull	%r14d, %r11d
	imull	%r14d, %eax
	xorl	%r14d, %r14d
	jmp	.LBB9_66
	.p2align	4, 0x90
.LBB9_65:                               #   in Loop: Header=BB9_66 Depth=5
	incl	%r14d
	addq	%rdi, %r10
	addq	%rax, %r11
	cmpl	4(%rsp), %r14d                  # 4-byte Folded Reload
	je	.LBB9_62
.LBB9_66:                               #   Parent Loop BB9_54 Depth=1
                                        #     Parent Loop BB9_57 Depth=2
                                        #       Parent Loop BB9_60 Depth=3
                                        #         Parent Loop BB9_63 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB9_69 Depth 6
                                        #             Child Loop BB9_72 Depth 6
	vmovss	(%r8,%r9,4), %xmm0              # xmm0 = mem[0],zero,zero,zero
	cmpq	$3, 64(%rsp)                    # 8-byte Folded Reload
	jae	.LBB9_68
# %bb.67:                               #   in Loop: Header=BB9_66 Depth=5
	xorl	%r15d, %r15d
	jmp	.LBB9_70
	.p2align	4, 0x90
.LBB9_68:                               #   in Loop: Header=BB9_66 Depth=5
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB9_69:                               #   Parent Loop BB9_54 Depth=1
                                        #     Parent Loop BB9_57 Depth=2
                                        #       Parent Loop BB9_60 Depth=3
                                        #         Parent Loop BB9_63 Depth=4
                                        #           Parent Loop BB9_66 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leaq	(%r10,%r15), %rcx
	leaq	(%r11,%r15), %rdx
	movslq	%ecx, %r12
	movslq	%edx, %r13
	vmovss	(%rbp,%r13,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	(%rbx,%r12,4), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovss	%xmm1, (%r8,%r9,4)
	leal	1(%r12), %ecx
	leal	1(%r13), %edx
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	vmovss	(%rbp,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vfmadd132ss	(%rbx,%rcx,4), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovss	%xmm0, (%r8,%r9,4)
	leal	2(%r12), %ecx
	leal	2(%r13), %edx
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	vmovss	(%rbp,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	(%rbx,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovss	%xmm1, (%r8,%r9,4)
	addl	$3, %r12d
	addl	$3, %r13d
	movslq	%r12d, %rcx
	movslq	%r13d, %rdx
	vmovss	(%rbp,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vfmadd132ss	(%rbx,%rcx,4), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovss	%xmm0, (%r8,%r9,4)
	addq	$4, %r15
	cmpq	%r15, %rsi
	jne	.LBB9_69
.LBB9_70:                               #   in Loop: Header=BB9_66 Depth=5
	cmpq	$0, 24(%rsp)                    # 8-byte Folded Reload
	je	.LBB9_65
# %bb.71:                               #   in Loop: Header=BB9_66 Depth=5
	leal	(%r11,%r15), %ecx
	addl	%r10d, %r15d
	movq	24(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB9_72:                               #   Parent Loop BB9_54 Depth=1
                                        #     Parent Loop BB9_57 Depth=2
                                        #       Parent Loop BB9_60 Depth=3
                                        #         Parent Loop BB9_63 Depth=4
                                        #           Parent Loop BB9_66 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movslq	%r15d, %r15
	movslq	%ecx, %rcx
	vmovss	(%rbp,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd231ss	(%rbx,%r15,4), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovss	%xmm0, (%r8,%r9,4)
	incl	%ecx
	incl	%r15d
	decq	%rdx
	jne	.LBB9_72
	jmp	.LBB9_65
.LBB9_73:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.6, %esi
	movl	$50, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.LBB9_197
.LBB9_74:
	cmpl	$0, 88(%rsp)                    # 4-byte Folded Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	je	.LBB9_197
# %bb.75:
	movq	120(%rsp), %rdx                 # 8-byte Reload
	leaq	-1(%rdx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movl	%edx, %eax
	andl	$3, %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	andq	$-4, %rdx
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB9_77
	.p2align	4, 0x90
.LBB9_76:                               #   in Loop: Header=BB9_77 Depth=1
	movq	80(%rsp), %rbp                  # 8-byte Reload
	leal	1(%rbp), %eax
	movq	32(%rsp), %rsi                  # 8-byte Reload
	addl	%ecx, %esi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	cmpl	232(%rsp), %ebp                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	je	.LBB9_197
.LBB9_77:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_80 Depth 2
                                        #       Child Loop BB9_83 Depth 3
                                        #         Child Loop BB9_87 Depth 4
                                        #           Child Loop BB9_90 Depth 5
                                        #             Child Loop BB9_93 Depth 6
                                        #             Child Loop BB9_96 Depth 6
	testl	%edi, %edi
	je	.LBB9_76
# %bb.78:                               #   in Loop: Header=BB9_77 Depth=1
	movl	$0, 8(%rsp)                     # 4-byte Folded Spill
	jmp	.LBB9_80
	.p2align	4, 0x90
.LBB9_79:                               #   in Loop: Header=BB9_80 Depth=2
	movl	8(%rsp), %eax                   # 4-byte Reload
	incl	%eax
	movl	100(%rsp), %edi                 # 4-byte Reload
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	cmpl	%edi, %eax
	je	.LBB9_76
.LBB9_80:                               #   Parent Loop BB9_77 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_83 Depth 3
                                        #         Child Loop BB9_87 Depth 4
                                        #           Child Loop BB9_90 Depth 5
                                        #             Child Loop BB9_93 Depth 6
                                        #             Child Loop BB9_96 Depth 6
	cmpl	$0, 52(%rsp)                    # 4-byte Folded Reload
	je	.LBB9_79
# %bb.81:                               #   in Loop: Header=BB9_80 Depth=2
	movl	$0, 128(%rsp)                   # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB9_83
	.p2align	4, 0x90
.LBB9_82:                               #   in Loop: Header=BB9_83 Depth=3
	movq	40(%rsp), %rsi                  # 8-byte Reload
	leal	1(%rsi), %eax
	movq	72(%rsp), %rcx                  # 8-byte Reload
	addl	%ecx, 128(%rsp)                 # 4-byte Folded Spill
	cmpl	264(%rsp), %esi                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	je	.LBB9_79
.LBB9_83:                               #   Parent Loop BB9_77 Depth=1
                                        #     Parent Loop BB9_80 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_87 Depth 4
                                        #           Child Loop BB9_90 Depth 5
                                        #             Child Loop BB9_93 Depth 6
                                        #             Child Loop BB9_96 Depth 6
	cmpl	$0, 112(%rsp)                   # 4-byte Folded Reload
	je	.LBB9_82
# %bb.84:                               #   in Loop: Header=BB9_83 Depth=3
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	je	.LBB9_82
# %bb.85:                               #   in Loop: Header=BB9_83 Depth=3
	movl	$0, 56(%rsp)                    # 4-byte Folded Spill
	movl	128(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	jmp	.LBB9_87
	.p2align	4, 0x90
.LBB9_86:                               #   in Loop: Header=BB9_87 Depth=4
	movl	56(%rsp), %eax                  # 4-byte Reload
	incl	%eax
	incl	16(%rsp)                        # 4-byte Folded Spill
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	cmpl	112(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB9_82
.LBB9_87:                               #   Parent Loop BB9_77 Depth=1
                                        #     Parent Loop BB9_80 Depth=2
                                        #       Parent Loop BB9_83 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB9_90 Depth 5
                                        #             Child Loop BB9_93 Depth 6
                                        #             Child Loop BB9_96 Depth 6
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	je	.LBB9_86
# %bb.88:                               #   in Loop: Header=BB9_87 Depth=4
	movq	208(%rsp), %r9                  # 8-byte Reload
	movl	28(%r9), %r14d
	movq	216(%rsp), %r10                 # 8-byte Reload
	movl	16(%r10), %ebp
	movl	28(%r10), %r11d
	movq	8(%r9), %rdi
	movq	8(%r10), %rsi
	movq	168(%rsp), %rbx                 # 8-byte Reload
	movq	8(%rbx), %rax
	movl	24(%rbx), %ecx
	imull	40(%rsp), %ecx                  # 4-byte Folded Reload
	addl	80(%rsp), %ecx                  # 4-byte Folded Reload
	imull	28(%rbx), %ecx
	movl	8(%rsp), %ebx                   # 4-byte Reload
	addl	%ebx, %ecx
	movslq	%ecx, %r8
	movl	24(%r9), %r9d
	imull	16(%rsp), %r9d                  # 4-byte Folded Reload
	addl	32(%rsp), %r9d                  # 4-byte Folded Reload
	movq	%r14, %r13
	imull	%r14d, %r9d
	movl	24(%r10), %r10d
	imull	%ebp, %r10d
	imull	56(%rsp), %r10d                 # 4-byte Folded Reload
	addl	%ebx, %r10d
	imull	%r11d, %r10d
	imull	%r11d, %ebp
	xorl	%r11d, %r11d
	jmp	.LBB9_90
	.p2align	4, 0x90
.LBB9_89:                               #   in Loop: Header=BB9_90 Depth=5
	incl	%r11d
	addq	%r13, %r9
	addq	%rbp, %r10
	cmpl	4(%rsp), %r11d                  # 4-byte Folded Reload
	je	.LBB9_86
.LBB9_90:                               #   Parent Loop BB9_77 Depth=1
                                        #     Parent Loop BB9_80 Depth=2
                                        #       Parent Loop BB9_83 Depth=3
                                        #         Parent Loop BB9_87 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB9_93 Depth 6
                                        #             Child Loop BB9_96 Depth 6
	vmovss	(%rax,%r8,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	cmpq	$3, 64(%rsp)                    # 8-byte Folded Reload
	jae	.LBB9_92
# %bb.91:                               #   in Loop: Header=BB9_90 Depth=5
	xorl	%r14d, %r14d
	jmp	.LBB9_94
	.p2align	4, 0x90
.LBB9_92:                               #   in Loop: Header=BB9_90 Depth=5
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB9_93:                               #   Parent Loop BB9_77 Depth=1
                                        #     Parent Loop BB9_80 Depth=2
                                        #       Parent Loop BB9_83 Depth=3
                                        #         Parent Loop BB9_87 Depth=4
                                        #           Parent Loop BB9_90 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leaq	(%r9,%r14), %rcx
	leaq	(%r10,%r14), %rbx
	movslq	%ecx, %r15
	movslq	%ebx, %r12
	vmovss	(%rsi,%r12,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	(%rdi,%r15,4), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovss	%xmm1, (%rax,%r8,4)
	leal	1(%r15), %ecx
	leal	1(%r12), %ebx
	movslq	%ecx, %rcx
	movslq	%ebx, %rbx
	vmovss	(%rsi,%rbx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vfmadd132ss	(%rdi,%rcx,4), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovss	%xmm0, (%rax,%r8,4)
	leal	2(%r15), %ecx
	leal	2(%r12), %ebx
	movslq	%ecx, %rcx
	movslq	%ebx, %rbx
	vmovss	(%rsi,%rbx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	(%rdi,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovss	%xmm1, (%rax,%r8,4)
	addl	$3, %r15d
	addl	$3, %r12d
	movslq	%r15d, %rcx
	movslq	%r12d, %rbx
	vmovss	(%rsi,%rbx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vfmadd132ss	(%rdi,%rcx,4), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovss	%xmm0, (%rax,%r8,4)
	addq	$4, %r14
	cmpq	%r14, %rdx
	jne	.LBB9_93
.LBB9_94:                               #   in Loop: Header=BB9_90 Depth=5
	cmpq	$0, 24(%rsp)                    # 8-byte Folded Reload
	je	.LBB9_89
# %bb.95:                               #   in Loop: Header=BB9_90 Depth=5
	leal	(%r10,%r14), %ebx
	addl	%r9d, %r14d
	movq	24(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB9_96:                               #   Parent Loop BB9_77 Depth=1
                                        #     Parent Loop BB9_80 Depth=2
                                        #       Parent Loop BB9_83 Depth=3
                                        #         Parent Loop BB9_87 Depth=4
                                        #           Parent Loop BB9_90 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movslq	%r14d, %r14
	movslq	%ebx, %rbx
	vmovss	(%rsi,%rbx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd231ss	(%rdi,%r14,4), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovss	%xmm0, (%rax,%r8,4)
	incl	%ebx
	incl	%r14d
	decq	%rcx
	jne	.LBB9_96
	jmp	.LBB9_89
.LBB9_97:
	cmpl	$0, 52(%rsp)                    # 4-byte Folded Reload
	movl	88(%rsp), %eax                  # 4-byte Reload
	je	.LBB9_197
# %bb.98:
	testl	%eax, %eax
	sete	%al
	testl	%edi, %edi
	sete	%dl
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leaq	-1(%rcx), %rsi
	movq	%rsi, 144(%rsp)                 # 8-byte Spill
	leaq	-16(%rcx), %rsi
	shrq	$4, %rsi
	movq	%rsi, 336(%rsp)                 # 8-byte Spill
	incq	%rsi
	orb	%al, %dl
	movb	%dl, 244(%rsp)                  # 1-byte Spill
	movq	%rcx, %rax
	andq	$-16, %rax
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	negq	%rcx
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	movq	%rsi, 328(%rsp)                 # 8-byte Spill
	andq	$-2, %rsi
	negq	%rsi
	movq	%rsi, 296(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	jmp	.LBB9_100
	.p2align	4, 0x90
.LBB9_99:                               #   in Loop: Header=BB9_100 Depth=1
	movq	248(%rsp), %rcx                 # 8-byte Reload
	leal	1(%rcx), %eax
	cmpl	264(%rsp), %ecx                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	je	.LBB9_197
.LBB9_100:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_103 Depth 2
                                        #       Child Loop BB9_106 Depth 3
                                        #         Child Loop BB9_109 Depth 4
                                        #           Child Loop BB9_112 Depth 5
                                        #             Child Loop BB9_127 Depth 6
                                        #             Child Loop BB9_118 Depth 6
	cmpl	$0, 112(%rsp)                   # 4-byte Folded Reload
	je	.LBB9_99
# %bb.101:                              #   in Loop: Header=BB9_100 Depth=1
	movq	248(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	imull	72(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	jmp	.LBB9_103
	.p2align	4, 0x90
.LBB9_102:                              #   in Loop: Header=BB9_103 Depth=2
	movq	256(%rsp), %rcx                 # 8-byte Reload
	incl	%ecx
	movq	%rcx, %rax
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	cmpl	112(%rsp), %ecx                 # 4-byte Folded Reload
	je	.LBB9_99
.LBB9_103:                              #   Parent Loop BB9_100 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_106 Depth 3
                                        #         Child Loop BB9_109 Depth 4
                                        #           Child Loop BB9_112 Depth 5
                                        #             Child Loop BB9_127 Depth 6
                                        #             Child Loop BB9_118 Depth 6
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	je	.LBB9_102
# %bb.104:                              #   in Loop: Header=BB9_103 Depth=2
	movq	288(%rsp), %rax                 # 8-byte Reload
	movq	256(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 52(%rsp)                  # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB9_106
	.p2align	4, 0x90
.LBB9_105:                              #   in Loop: Header=BB9_106 Depth=3
	movq	16(%rsp), %rax                  # 8-byte Reload
	incl	%eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	cmpl	4(%rsp), %eax                   # 4-byte Folded Reload
	je	.LBB9_102
.LBB9_106:                              #   Parent Loop BB9_100 Depth=1
                                        #     Parent Loop BB9_103 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_109 Depth 4
                                        #           Child Loop BB9_112 Depth 5
                                        #             Child Loop BB9_127 Depth 6
                                        #             Child Loop BB9_118 Depth 6
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	je	.LBB9_105
# %bb.107:                              #   in Loop: Header=BB9_106 Depth=3
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB9_109
	.p2align	4, 0x90
.LBB9_108:                              #   in Loop: Header=BB9_109 Depth=4
	movq	64(%rsp), %rax                  # 8-byte Reload
	incl	%eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	cmpl	120(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB9_105
.LBB9_109:                              #   Parent Loop BB9_100 Depth=1
                                        #     Parent Loop BB9_103 Depth=2
                                        #       Parent Loop BB9_106 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB9_112 Depth 5
                                        #             Child Loop BB9_127 Depth 6
                                        #             Child Loop BB9_118 Depth 6
	cmpb	$0, 244(%rsp)                   # 1-byte Folded Reload
	jne	.LBB9_108
# %bb.110:                              #   in Loop: Header=BB9_109 Depth=4
	movq	208(%rsp), %r15                 # 8-byte Reload
	movl	28(%r15), %r8d
	movl	%r8d, 128(%rsp)                 # 4-byte Spill
	movq	168(%rsp), %r14                 # 8-byte Reload
	movl	28(%r14), %esi
	movq	216(%rsp), %rax                 # 8-byte Reload
	movl	16(%rax), %edi
	movl	28(%rax), %r10d
	movq	8(%rax), %r9
	movl	24(%r15), %edx
	imull	52(%rsp), %edx                  # 4-byte Folded Reload
	movl	24(%r14), %r11d
	imull	248(%rsp), %r11d                # 4-byte Folded Reload
	movl	24(%rax), %eax
	imull	256(%rsp), %eax                 # 4-byte Folded Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, %ebp
	imull	%edi, %ebp
	movq	64(%rsp), %rbx                  # 8-byte Reload
	leal	(%rbx,%rbp), %r13d
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	addl	%edx, %ecx
	imull	%r8d, %ecx
	addl	%ebx, %ecx
	movl	%ecx, 160(%rsp)                 # 4-byte Spill
	movl	%r8d, %ecx
	imull	72(%rsp), %ecx                  # 4-byte Folded Reload
	movl	%ecx, 104(%rsp)                 # 4-byte Spill
	movslq	%r13d, %rcx
	leaq	(%r9,%rcx,4), %rdx
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
	movq	24(%rsp), %r12                  # 8-byte Reload
	leaq	(%r9,%r12,4), %rdx
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	movq	%r11, 80(%rsp)                  # 8-byte Spill
                                        # kill: def $r11d killed $r11d killed $r11 def $r11
	imull	%esi, %r11d
	imull	%r10d, %edi
	imull	%eax, %edi
	leal	16(%rbp), %eax
	imull	%r10d, %eax
	addl	%ebx, %eax
	movl	%eax, 312(%rsp)                 # 4-byte Spill
	movl	%r10d, %eax
	shll	$5, %eax
	movl	%eax, 304(%rsp)                 # 4-byte Spill
	addl	%ebx, %edi
	movl	%edi, 272(%rsp)                 # 4-byte Spill
	movq	8(%r15), %rax
	movq	8(%r14), %rdx
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	incq	%rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	leaq	(%rdx,%r12,4), %rax
	movq	%rax, 344(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%r13, 192(%rsp)                 # 8-byte Spill
	addl	%r13d, %eax
	movl	%eax, 184(%rsp)                 # 4-byte Spill
	leal	1(%r11), %r8d
	movq	%rbp, 40(%rsp)                  # 8-byte Spill
	leal	1(%rbp), %eax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movq	%r10, 56(%rsp)                  # 8-byte Spill
	leal	(%r10,%r10), %r14d
	xorl	%r13d, %r13d
	movl	%esi, 8(%rsp)                   # 4-byte Spill
	jmp	.LBB9_112
	.p2align	4, 0x90
.LBB9_111:                              #   in Loop: Header=BB9_112 Depth=5
	leal	1(%r13), %eax
	movl	8(%rsp), %esi                   # 4-byte Reload
	addl	%esi, %r11d
	addl	%esi, %r8d
	cmpl	232(%rsp), %r13d                # 4-byte Folded Reload
	movl	%eax, %r13d
	je	.LBB9_108
.LBB9_112:                              #   Parent Loop BB9_100 Depth=1
                                        #     Parent Loop BB9_103 Depth=2
                                        #       Parent Loop BB9_106 Depth=3
                                        #         Parent Loop BB9_109 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB9_127 Depth 6
                                        #             Child Loop BB9_118 Depth 6
	movq	80(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%r13), %r12d
	imull	%esi, %r12d
	movl	%r13d, %eax
	imull	72(%rsp), %eax                  # 4-byte Folded Reload
	addl	16(%rsp), %eax                  # 4-byte Folded Reload
	addl	32(%rsp), %eax                  # 4-byte Folded Reload
	imull	128(%rsp), %eax                 # 4-byte Folded Reload
	addl	64(%rsp), %eax                  # 4-byte Folded Reload
	cltq
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rax,4), %r15
	cmpl	$16, 100(%rsp)                  # 4-byte Folded Reload
	jae	.LBB9_119
.LBB9_113:                              #   in Loop: Header=BB9_112 Depth=5
	xorl	%eax, %eax
.LBB9_114:                              #   in Loop: Header=BB9_112 Depth=5
	movq	%rax, %rsi
	testb	$1, 24(%rsp)                    # 1-byte Folded Reload
	je	.LBB9_116
# %bb.115:                              #   in Loop: Header=BB9_112 Depth=5
	addl	%eax, %r12d
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addl	%eax, %ecx
	imull	56(%rsp), %ecx                  # 4-byte Folded Reload
	addl	64(%rsp), %ecx                  # 4-byte Folded Reload
	vmovss	(%r15), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%ecx, %rcx
	vmovss	(%r9,%rcx,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movslq	%r12d, %rcx
	vfmadd213ss	(%rdx,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rdx,%rcx,4)
	movq	%rax, %rsi
	orq	$1, %rsi
.LBB9_116:                              #   in Loop: Header=BB9_112 Depth=5
	notq	%rax
	cmpq	200(%rsp), %rax                 # 8-byte Folded Reload
	je	.LBB9_111
# %bb.117:                              #   in Loop: Header=BB9_112 Depth=5
	leal	(%r8,%rsi), %eax
	movq	176(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%rsi), %ebp
	movq	56(%rsp), %r10                  # 8-byte Reload
	imull	%r10d, %ebp
	movq	64(%rsp), %rdi                  # 8-byte Reload
	addl	%edi, %ebp
	movq	24(%rsp), %rbx                  # 8-byte Reload
	subq	%rsi, %rbx
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addl	%esi, %ecx
	imull	%r10d, %ecx
	addl	%edi, %ecx
	addl	%r11d, %esi
	.p2align	4, 0x90
.LBB9_118:                              #   Parent Loop BB9_100 Depth=1
                                        #     Parent Loop BB9_103 Depth=2
                                        #       Parent Loop BB9_106 Depth=3
                                        #         Parent Loop BB9_109 Depth=4
                                        #           Parent Loop BB9_112 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vmovss	(%r15), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%ecx, %rcx
	vmovss	(%r9,%rcx,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movslq	%esi, %rsi
	vfmadd213ss	(%rdx,%rsi,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rdx,%rsi,4)
	vmovss	(%r15), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%ebp, %rbp
	vmovss	(%r9,%rbp,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	cltq
	vfmadd213ss	(%rdx,%rax,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rdx,%rax,4)
	addl	$2, %eax
	addl	%r14d, %ebp
	addl	%r14d, %ecx
	addl	$2, %esi
	addq	$-2, %rbx
	jne	.LBB9_118
	jmp	.LBB9_111
	.p2align	4, 0x90
.LBB9_119:                              #   in Loop: Header=BB9_112 Depth=5
	movl	184(%rsp), %eax                 # 4-byte Reload
	cmpl	192(%rsp), %eax                 # 4-byte Folded Reload
	jl	.LBB9_113
# %bb.120:                              #   in Loop: Header=BB9_112 Depth=5
	cmpl	$1, 56(%rsp)                    # 4-byte Folded Reload
	jne	.LBB9_113
# %bb.121:                              #   in Loop: Header=BB9_112 Depth=5
	movq	144(%rsp), %rcx                 # 8-byte Reload
	leal	(%r12,%rcx), %eax
	cmpl	%r12d, %eax
	jl	.LBB9_113
# %bb.122:                              #   in Loop: Header=BB9_112 Depth=5
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	$0, %eax
	jne	.LBB9_114
# %bb.123:                              #   in Loop: Header=BB9_112 Depth=5
	movl	104(%rsp), %eax                 # 4-byte Reload
	imull	%r13d, %eax
	addl	160(%rsp), %eax                 # 4-byte Folded Reload
	cltq
	movq	88(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,4), %rax
	movslq	%r12d, %rcx
	leaq	(%rdx,%rcx,4), %rsi
	movq	344(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rdi,%rcx,4), %rbp
	cmpq	%rbp, %r15
	setb	%bl
	cmpq	%rsi, %rax
	seta	%al
	cmpq	224(%rsp), %rsi                 # 8-byte Folded Reload
	setb	%cl
	cmpq	%rbp, 136(%rsp)                 # 8-byte Folded Reload
	setb	%sil
	testb	%al, %bl
	jne	.LBB9_113
# %bb.124:                              #   in Loop: Header=BB9_112 Depth=5
	movl	$0, %eax
	andb	%sil, %cl
	jne	.LBB9_114
# %bb.125:                              #   in Loop: Header=BB9_112 Depth=5
	cmpq	$0, 336(%rsp)                   # 8-byte Folded Reload
	je	.LBB9_134
# %bb.126:                              #   in Loop: Header=BB9_112 Depth=5
	vbroadcastss	(%r15), %ymm0
	movq	296(%rsp), %rax                 # 8-byte Reload
	movl	272(%rsp), %ecx                 # 4-byte Reload
                                        # kill: def $ecx killed $ecx def $rcx
	movl	312(%rsp), %esi                 # 4-byte Reload
	movl	%esi, %ebx
	movl	%r11d, %r10d
	xorl	%ebp, %ebp
	movl	304(%rsp), %edi                 # 4-byte Reload
	.p2align	4, 0x90
.LBB9_127:                              #   Parent Loop BB9_100 Depth=1
                                        #     Parent Loop BB9_103 Depth=2
                                        #       Parent Loop BB9_106 Depth=3
                                        #         Parent Loop BB9_109 Depth=4
                                        #           Parent Loop BB9_112 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movslq	%ecx, %rcx
	vmovups	(%r9,%rcx,4), %ymm1
	vmovups	32(%r9,%rcx,4), %ymm2
	movslq	%r10d, %r10
	vfmadd213ps	(%rdx,%r10,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	32(%rdx,%r10,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vmovups	%ymm1, (%rdx,%r10,4)
	vmovups	%ymm2, 32(%rdx,%r10,4)
	leal	16(%r10), %esi
	movslq	%ebx, %rbx
	vmovups	(%r9,%rbx,4), %ymm1
	vmovups	32(%r9,%rbx,4), %ymm2
	movslq	%esi, %rsi
	vfmadd213ps	(%rdx,%rsi,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	32(%rdx,%rsi,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vmovups	%ymm1, (%rdx,%rsi,4)
	vmovups	%ymm2, 32(%rdx,%rsi,4)
	addq	$32, %rbp
	addl	$32, %r10d
	addl	%edi, %ebx
	addl	%edi, %ecx
	addq	$2, %rax
	jne	.LBB9_127
# %bb.128:                              #   in Loop: Header=BB9_112 Depth=5
	testb	$1, 328(%rsp)                   # 1-byte Folded Reload
	je	.LBB9_130
.LBB9_129:                              #   in Loop: Header=BB9_112 Depth=5
	leal	(%r12,%rbp), %eax
	addl	40(%rsp), %ebp                  # 4-byte Folded Reload
	imull	56(%rsp), %ebp                  # 4-byte Folded Reload
	addl	64(%rsp), %ebp                  # 4-byte Folded Reload
	vbroadcastss	(%r15), %ymm0
	movslq	%ebp, %rcx
	vmovups	(%r9,%rcx,4), %ymm1
	vmovups	32(%r9,%rcx,4), %ymm2
	cltq
	vfmadd213ps	(%rdx,%rax,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	32(%rdx,%rax,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vmovups	%ymm1, (%rdx,%rax,4)
	vmovups	%ymm2, 32(%rdx,%rax,4)
.LBB9_130:                              #   in Loop: Header=BB9_112 Depth=5
	movq	320(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	cmpq	24(%rsp), %rcx                  # 8-byte Folded Reload
	je	.LBB9_111
	jmp	.LBB9_114
.LBB9_134:                              #   in Loop: Header=BB9_112 Depth=5
	xorl	%ebp, %ebp
	testb	$1, 328(%rsp)                   # 1-byte Folded Reload
	jne	.LBB9_129
	jmp	.LBB9_130
.LBB9_136:
	cmpl	$0, 112(%rsp)                   # 4-byte Folded Reload
	movq	72(%rsp), %rbx                  # 8-byte Reload
	movl	88(%rsp), %eax                  # 4-byte Reload
	je	.LBB9_197
# %bb.137:
	movslq	52(%rsp), %rdx                  # 4-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	andq	$-2, %rdx
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	leal	(%rbx,%rbx), %ecx
	movl	%ecx, 224(%rsp)                 # 4-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movl	%ebx, %ecx
	movl	%ebx, 136(%rsp)                 # 4-byte Spill
	jmp	.LBB9_139
	.p2align	4, 0x90
.LBB9_138:                              #   in Loop: Header=BB9_139 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	incl	%ecx
	incl	136(%rsp)                       # 4-byte Folded Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	cmpl	112(%rsp), %ecx                 # 4-byte Folded Reload
	je	.LBB9_197
.LBB9_139:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_142 Depth 2
                                        #       Child Loop BB9_145 Depth 3
                                        #         Child Loop BB9_148 Depth 4
                                        #           Child Loop BB9_152 Depth 5
                                        #             Child Loop BB9_155 Depth 6
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	je	.LBB9_138
# %bb.140:                              #   in Loop: Header=BB9_139 Depth=1
	movl	$0, 104(%rsp)                   # 4-byte Folded Spill
	jmp	.LBB9_142
	.p2align	4, 0x90
.LBB9_141:                              #   in Loop: Header=BB9_142 Depth=2
	movl	104(%rsp), %ecx                 # 4-byte Reload
	incl	%ecx
	movl	%ecx, 104(%rsp)                 # 4-byte Spill
	cmpl	4(%rsp), %ecx                   # 4-byte Folded Reload
	je	.LBB9_138
.LBB9_142:                              #   Parent Loop BB9_139 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_145 Depth 3
                                        #         Child Loop BB9_148 Depth 4
                                        #           Child Loop BB9_152 Depth 5
                                        #             Child Loop BB9_155 Depth 6
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	je	.LBB9_141
# %bb.143:                              #   in Loop: Header=BB9_142 Depth=2
	movl	$0, 24(%rsp)                    # 4-byte Folded Spill
	jmp	.LBB9_145
	.p2align	4, 0x90
.LBB9_144:                              #   in Loop: Header=BB9_145 Depth=3
	movl	24(%rsp), %eax                  # 4-byte Reload
	incl	%eax
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	cmpl	120(%rsp), %eax                 # 4-byte Folded Reload
	movl	88(%rsp), %eax                  # 4-byte Reload
	je	.LBB9_141
.LBB9_145:                              #   Parent Loop BB9_139 Depth=1
                                        #     Parent Loop BB9_142 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_148 Depth 4
                                        #           Child Loop BB9_152 Depth 5
                                        #             Child Loop BB9_155 Depth 6
	testl	%eax, %eax
	je	.LBB9_144
# %bb.146:                              #   in Loop: Header=BB9_145 Depth=3
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	104(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 160(%rsp)                 # 4-byte Spill
	jmp	.LBB9_148
	.p2align	4, 0x90
.LBB9_147:                              #   in Loop: Header=BB9_148 Depth=4
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leal	1(%rcx), %eax
	addl	%ebx, 160(%rsp)                 # 4-byte Folded Spill
	cmpl	232(%rsp), %ecx                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	je	.LBB9_144
.LBB9_148:                              #   Parent Loop BB9_139 Depth=1
                                        #     Parent Loop BB9_142 Depth=2
                                        #       Parent Loop BB9_145 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB9_152 Depth 5
                                        #             Child Loop BB9_155 Depth 6
	testl	%edi, %edi
	je	.LBB9_147
# %bb.149:                              #   in Loop: Header=BB9_148 Depth=4
	cmpl	$0, 52(%rsp)                    # 4-byte Folded Reload
	je	.LBB9_147
# %bb.150:                              #   in Loop: Header=BB9_148 Depth=4
	movq	8(%rsp), %r10                   # 8-byte Reload
	movl	%r10d, %eax
	imull	%ebx, %eax
	movl	104(%rsp), %esi                 # 4-byte Reload
	addl	%esi, %eax
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	movq	208(%rsp), %rdx                 # 8-byte Reload
	movl	24(%rdx), %eax
	movl	28(%rdx), %r8d
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movl	24(%rcx), %r15d
	movl	28(%rcx), %ebp
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movl	28(%rcx), %edi
	movl	%edi, 56(%rsp)                  # 4-byte Spill
	movq	8(%rdx), %r9
	movl	24(%rcx), %edi
	movq	32(%rsp), %rdx                  # 8-byte Reload
	imull	%edx, %edi
	addl	%esi, %edi
	imull	16(%rcx), %edi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movq	8(%rcx), %r11
	movl	136(%rsp), %edi                 # 4-byte Reload
	imull	%eax, %edi
	movl	160(%rsp), %esi                 # 4-byte Reload
	addl	%esi, %edi
	imull	%r8d, %edi
	movl	24(%rsp), %ecx                  # 4-byte Reload
	addl	%ecx, %edi
	movl	%edi, 184(%rsp)                 # 4-byte Spill
	movl	224(%rsp), %r12d                # 4-byte Reload
	imull	%eax, %r12d
	imull	%r8d, %r12d
	leal	(%r15,%r10), %r14d
	imull	%ebp, %r14d
	movq	%r15, 200(%rsp)                 # 8-byte Spill
	movl	%r15d, %r13d
	imull	%ebp, %r13d
	addl	%r13d, %r13d
	movl	%ebp, 192(%rsp)                 # 4-byte Spill
	imull	%r10d, %ebp
                                        # kill: def $edx killed $edx killed $rdx
	movl	%eax, 128(%rsp)                 # 4-byte Spill
	imull	%eax, %edx
	addl	%esi, %edx
	movl	%r8d, 152(%rsp)                 # 4-byte Spill
	imull	%r8d, %edx
	addl	%ecx, %edx
	movl	%edx, 176(%rsp)                 # 4-byte Spill
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rcx
	xorl	%edx, %edx
	jmp	.LBB9_152
	.p2align	4, 0x90
.LBB9_151:                              #   in Loop: Header=BB9_152 Depth=5
	incl	%edx
	incl	%r14d
	incl	%ebp
	movl	100(%rsp), %edi                 # 4-byte Reload
	cmpl	%edi, %edx
	je	.LBB9_147
.LBB9_152:                              #   Parent Loop BB9_139 Depth=1
                                        #     Parent Loop BB9_142 Depth=2
                                        #       Parent Loop BB9_145 Depth=3
                                        #         Parent Loop BB9_148 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB9_155 Depth 6
	movq	16(%rsp), %rax                  # 8-byte Reload
	addl	%edx, %eax
	imull	56(%rsp), %eax                  # 4-byte Folded Reload
	addl	24(%rsp), %eax                  # 4-byte Folded Reload
	cltq
	cmpl	%ebx, 64(%rsp)                  # 4-byte Folded Reload
	jae	.LBB9_154
# %bb.153:                              #   in Loop: Header=BB9_152 Depth=5
	xorl	%r15d, %r15d
	jmp	.LBB9_156
	.p2align	4, 0x90
.LBB9_154:                              #   in Loop: Header=BB9_152 Depth=5
	movl	176(%rsp), %esi                 # 4-byte Reload
	movl	%esi, %edi
	movl	%ebp, %esi
	movl	%r14d, %r8d
	movl	184(%rsp), %ebx                 # 4-byte Reload
	movl	%ebx, %r10d
	xorl	%r15d, %r15d
	movq	144(%rsp), %rbx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB9_155:                              #   Parent Loop BB9_139 Depth=1
                                        #     Parent Loop BB9_142 Depth=2
                                        #       Parent Loop BB9_145 Depth=3
                                        #         Parent Loop BB9_148 Depth=4
                                        #           Parent Loop BB9_152 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movslq	%edi, %rdi
	vmovss	(%r9,%rdi,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	vmovss	(%r11,%rax,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%esi, %rsi
	vfmadd213ss	(%rcx,%rsi,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rcx,%rsi,4)
	movslq	%r10d, %r10
	vmovss	(%r9,%r10,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	vmovss	(%r11,%rax,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%r8d, %r8
	vfmadd213ss	(%rcx,%r8,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rcx,%r8,4)
	addq	$2, %r15
	addl	%r12d, %r10d
	addl	%r13d, %r8d
	addl	%r13d, %esi
	addl	%r12d, %edi
	addq	$-2, %rbx
	jne	.LBB9_155
.LBB9_156:                              #   in Loop: Header=BB9_152 Depth=5
	testb	$1, 40(%rsp)                    # 1-byte Folded Reload
	movq	72(%rsp), %rbx                  # 8-byte Reload
	je	.LBB9_151
# %bb.157:                              #   in Loop: Header=BB9_152 Depth=5
	movq	200(%rsp), %rsi                 # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	imull	%r15d, %esi
	imull	%ebx, %r15d
	addl	32(%rsp), %r15d                 # 4-byte Folded Reload
	imull	128(%rsp), %r15d                # 4-byte Folded Reload
	addl	80(%rsp), %r15d                 # 4-byte Folded Reload
	imull	152(%rsp), %r15d                # 4-byte Folded Reload
	addl	24(%rsp), %r15d                 # 4-byte Folded Reload
	movslq	%r15d, %rdi
	vmovss	(%r9,%rdi,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	vmovss	(%r11,%rax,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	addl	8(%rsp), %esi                   # 4-byte Folded Reload
	imull	192(%rsp), %esi                 # 4-byte Folded Reload
	addl	%edx, %esi
	movslq	%esi, %rax
	vfmadd213ss	(%rcx,%rax,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rcx,%rax,4)
	jmp	.LBB9_151
.LBB9_158:
	cmpl	$0, 112(%rsp)                   # 4-byte Folded Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movl	88(%rsp), %eax                  # 4-byte Reload
	je	.LBB9_197
# %bb.159:
	testl	%eax, %eax
	sete	%al
	testl	%edi, %edi
	sete	%dl
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leaq	-1(%rcx), %rsi
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	leaq	-16(%rcx), %rsi
	shrq	$4, %rsi
	movq	%rsi, 312(%rsp)                 # 8-byte Spill
	incq	%rsi
	orb	%al, %dl
	movb	%dl, 288(%rsp)                  # 1-byte Spill
	movq	%rcx, %rax
	andq	$-16, %rax
	movq	%rax, 296(%rsp)                 # 8-byte Spill
	negq	%rcx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	movq	%rsi, 304(%rsp)                 # 8-byte Spill
	andq	$-2, %rsi
	negq	%rsi
	movq	%rsi, 248(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	jmp	.LBB9_161
	.p2align	4, 0x90
.LBB9_160:                              #   in Loop: Header=BB9_161 Depth=1
	movq	280(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	cmpl	112(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB9_197
.LBB9_161:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_164 Depth 2
                                        #       Child Loop BB9_167 Depth 3
                                        #         Child Loop BB9_170 Depth 4
                                        #           Child Loop BB9_173 Depth 5
                                        #             Child Loop BB9_188 Depth 6
                                        #             Child Loop BB9_179 Depth 6
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	movl	52(%rsp), %eax                  # 4-byte Reload
	je	.LBB9_160
# %bb.162:                              #   in Loop: Header=BB9_161 Depth=1
	xorl	%ecx, %ecx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB9_164
	.p2align	4, 0x90
.LBB9_163:                              #   in Loop: Header=BB9_164 Depth=2
	movq	32(%rsp), %rcx                  # 8-byte Reload
	incl	%ecx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	cmpl	4(%rsp), %ecx                   # 4-byte Folded Reload
	je	.LBB9_160
.LBB9_164:                              #   Parent Loop BB9_161 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_167 Depth 3
                                        #         Child Loop BB9_170 Depth 4
                                        #           Child Loop BB9_173 Depth 5
                                        #             Child Loop BB9_188 Depth 6
                                        #             Child Loop BB9_179 Depth 6
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	je	.LBB9_163
# %bb.165:                              #   in Loop: Header=BB9_164 Depth=2
	xorl	%ecx, %ecx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB9_167
	.p2align	4, 0x90
.LBB9_166:                              #   in Loop: Header=BB9_167 Depth=3
	movq	16(%rsp), %rax                  # 8-byte Reload
	incl	%eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	cmpl	120(%rsp), %eax                 # 4-byte Folded Reload
	movl	52(%rsp), %eax                  # 4-byte Reload
	je	.LBB9_163
.LBB9_167:                              #   Parent Loop BB9_161 Depth=1
                                        #     Parent Loop BB9_164 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_170 Depth 4
                                        #           Child Loop BB9_173 Depth 5
                                        #             Child Loop BB9_188 Depth 6
                                        #             Child Loop BB9_179 Depth 6
	testl	%eax, %eax
	je	.LBB9_166
# %bb.168:                              #   in Loop: Header=BB9_167 Depth=3
	xorl	%eax, %eax
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	jmp	.LBB9_170
	.p2align	4, 0x90
.LBB9_169:                              #   in Loop: Header=BB9_170 Depth=4
	movq	272(%rsp), %rcx                 # 8-byte Reload
	leal	1(%rcx), %eax
	cmpl	264(%rsp), %ecx                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	je	.LBB9_166
.LBB9_170:                              #   Parent Loop BB9_161 Depth=1
                                        #     Parent Loop BB9_164 Depth=2
                                        #       Parent Loop BB9_167 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB9_173 Depth 5
                                        #             Child Loop BB9_188 Depth 6
                                        #             Child Loop BB9_179 Depth 6
	cmpb	$0, 288(%rsp)                   # 1-byte Folded Reload
	jne	.LBB9_169
# %bb.171:                              #   in Loop: Header=BB9_170 Depth=4
	movq	272(%rsp), %rdi                 # 8-byte Reload
	movl	%edi, %edx
	imull	%r10d, %edx
	movq	280(%rsp), %r12                 # 8-byte Reload
	addl	%r12d, %edx
	movq	208(%rsp), %r13                 # 8-byte Reload
	movl	28(%r13), %r15d
	movq	168(%rsp), %r14                 # 8-byte Reload
	movl	24(%r14), %r11d
	movl	28(%r14), %r8d
	movl	%r8d, 8(%rsp)                   # 4-byte Spill
	movq	216(%rsp), %rax                 # 8-byte Reload
	movl	16(%rax), %esi
	movl	28(%rax), %ebx
	movq	8(%rax), %rbp
	imull	24(%r13), %edx
	movl	%r11d, %ecx
	imull	%edi, %ecx
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movl	24(%rax), %eax
	imull	%r12d, %eax
	movq	32(%rsp), %r12                  # 8-byte Reload
	addl	%r12d, %eax
	movl	%eax, %r9d
	imull	%esi, %r9d
	imull	%r8d, %r11d
	imull	%edi, %r11d
	movq	16(%rsp), %rdi                  # 8-byte Reload
	leal	(%rdi,%r9), %r8d
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	addl	%r12d, %edx
	imull	%r15d, %edx
	addl	%edi, %edx
	movl	%edx, 224(%rsp)                 # 4-byte Spill
	movl	%r15d, 152(%rsp)                # 4-byte Spill
	movl	%r15d, %edx
	imull	%r10d, %edx
	movl	%edx, 88(%rsp)                  # 4-byte Spill
	movslq	%r8d, %rcx
	movq	24(%rsp), %r12                  # 8-byte Reload
	leaq	(,%r12,4), %rdx
	addq	%rbp, %rdx
	leaq	(%rdx,%rcx,4), %rdx
	movq	%rdx, 344(%rsp)                 # 8-byte Spill
	leaq	(,%rcx,4), %rcx
	addq	%rbp, %rcx
	movq	%rcx, 336(%rsp)                 # 8-byte Spill
	movl	8(%rsp), %ecx                   # 4-byte Reload
	imull	%ebx, %esi
	imull	%eax, %esi
	leal	16(%r9), %eax
	imull	%ebx, %eax
	addl	%edi, %eax
	movl	%eax, 256(%rsp)                 # 4-byte Spill
	movl	%ebx, %edx
	shll	$5, %edx
	addl	%edi, %esi
	movl	%esi, 244(%rsp)                 # 4-byte Spill
	movq	8(%r13), %rdi
	movq	8(%r14), %r13
	leaq	1(%rdi), %rax
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	leaq	(%r13,%r12,4), %rax
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%r8, 176(%rsp)                  # 8-byte Spill
	addl	%r8d, %eax
	movl	%eax, 144(%rsp)                 # 4-byte Spill
	movl	%edx, %r8d
	leal	1(%r11), %r15d
	movq	%r9, 80(%rsp)                   # 8-byte Spill
	leal	1(%r9), %eax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	leal	(%rbx,%rbx), %esi
	xorl	%ebx, %ebx
	movq	%r11, 136(%rsp)                 # 8-byte Spill
                                        # kill: def $r11d killed $r11d killed $r11 def $r11
	movq	%r11, 64(%rsp)                  # 8-byte Spill
	movq	%rdi, %r11
	jmp	.LBB9_173
	.p2align	4, 0x90
.LBB9_172:                              #   in Loop: Header=BB9_173 Depth=5
	movq	56(%rsp), %rdi                  # 8-byte Reload
	leal	1(%rdi), %eax
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movq	64(%rsp), %rdx                  # 8-byte Reload
	addl	%ecx, %edx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	addl	%ecx, %r15d
	cmpl	232(%rsp), %edi                 # 4-byte Folded Reload
	movl	%eax, %ebx
	je	.LBB9_169
.LBB9_173:                              #   Parent Loop BB9_161 Depth=1
                                        #     Parent Loop BB9_164 Depth=2
                                        #       Parent Loop BB9_167 Depth=3
                                        #         Parent Loop BB9_170 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB9_188 Depth 6
                                        #             Child Loop BB9_179 Depth 6
	movl	%ebx, %eax
	imull	%r10d, %eax
	addl	32(%rsp), %eax                  # 4-byte Folded Reload
	addl	128(%rsp), %eax                 # 4-byte Folded Reload
	imull	152(%rsp), %eax                 # 4-byte Folded Reload
	addl	16(%rsp), %eax                  # 4-byte Folded Reload
	movq	200(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%rbx), %r12d
	imull	%ecx, %r12d
	cltq
	leaq	(%r11,%rax,4), %r14
	cmpl	$16, 100(%rsp)                  # 4-byte Folded Reload
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	jae	.LBB9_180
.LBB9_174:                              #   in Loop: Header=BB9_173 Depth=5
	xorl	%eax, %eax
.LBB9_175:                              #   in Loop: Header=BB9_173 Depth=5
	movq	%rax, %r9
	testb	$1, 24(%rsp)                    # 1-byte Folded Reload
	je	.LBB9_177
# %bb.176:                              #   in Loop: Header=BB9_173 Depth=5
	addl	%eax, %r12d
	movq	80(%rsp), %rcx                  # 8-byte Reload
	addl	%eax, %ecx
	imull	40(%rsp), %ecx                  # 4-byte Folded Reload
	addl	16(%rsp), %ecx                  # 4-byte Folded Reload
	vmovss	(%r14), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%ecx, %rcx
	vmovss	(%rbp,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%r12d, %rcx
	vfmadd213ss	(%r13,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r13,%rcx,4)
	movq	%rax, %r9
	orq	$1, %r9
.LBB9_177:                              #   in Loop: Header=BB9_173 Depth=5
	notq	%rax
	cmpq	192(%rsp), %rax                 # 8-byte Folded Reload
	je	.LBB9_172
# %bb.178:                              #   in Loop: Header=BB9_173 Depth=5
	leal	(%r15,%r9), %eax
	movq	160(%rsp), %rcx                 # 8-byte Reload
	addl	%r9d, %ecx
	movq	%r15, 184(%rsp)                 # 8-byte Spill
	movq	%r11, %rdi
	movl	%r8d, %r11d
	movq	%r10, %r15
	movq	40(%rsp), %r10                  # 8-byte Reload
	imull	%r10d, %ecx
	movq	16(%rsp), %r12                  # 8-byte Reload
	addl	%r12d, %ecx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	subq	%r9, %rdx
	movq	80(%rsp), %rbx                  # 8-byte Reload
	addl	%r9d, %ebx
	imull	%r10d, %ebx
	movq	%r15, %r10
	movq	%rdi, %r11
	movq	184(%rsp), %r15                 # 8-byte Reload
	addl	%r12d, %ebx
	movq	64(%rsp), %rdi                  # 8-byte Reload
	addl	%r9d, %edi
	.p2align	4, 0x90
.LBB9_179:                              #   Parent Loop BB9_161 Depth=1
                                        #     Parent Loop BB9_164 Depth=2
                                        #       Parent Loop BB9_167 Depth=3
                                        #         Parent Loop BB9_170 Depth=4
                                        #           Parent Loop BB9_173 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vmovss	(%r14), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%ebx, %rbx
	vmovss	(%rbp,%rbx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%edi, %rdi
	vfmadd213ss	(%r13,%rdi,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r13,%rdi,4)
	vmovss	(%r14), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%ecx, %rcx
	vmovss	(%rbp,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	cltq
	vfmadd213ss	(%r13,%rax,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r13,%rax,4)
	addl	$2, %eax
	addl	%esi, %ecx
	addl	%esi, %ebx
	addl	$2, %edi
	addq	$-2, %rdx
	jne	.LBB9_179
	jmp	.LBB9_172
	.p2align	4, 0x90
.LBB9_180:                              #   in Loop: Header=BB9_173 Depth=5
	movl	144(%rsp), %eax                 # 4-byte Reload
	cmpl	176(%rsp), %eax                 # 4-byte Folded Reload
	jl	.LBB9_174
# %bb.181:                              #   in Loop: Header=BB9_173 Depth=5
	cmpl	$1, 40(%rsp)                    # 4-byte Folded Reload
	jne	.LBB9_174
# %bb.182:                              #   in Loop: Header=BB9_173 Depth=5
                                        # kill: def $ecx killed $ecx def $rcx
	imull	%ebx, %ecx
	addl	136(%rsp), %ecx                 # 4-byte Folded Reload
	movq	104(%rsp), %rdx                 # 8-byte Reload
	leal	(%rcx,%rdx), %eax
	cmpl	%ecx, %eax
	jl	.LBB9_174
# %bb.183:                              #   in Loop: Header=BB9_173 Depth=5
	movq	%rdx, %rax
	shrq	$32, %rax
	movl	$0, %eax
	jne	.LBB9_175
# %bb.184:                              #   in Loop: Header=BB9_173 Depth=5
	movl	88(%rsp), %eax                  # 4-byte Reload
	imull	56(%rsp), %eax                  # 4-byte Folded Reload
	addl	224(%rsp), %eax                 # 4-byte Folded Reload
	cltq
	movq	328(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rax,4), %rax
	movslq	%ecx, %rcx
	leaq	(,%rcx,4), %rdx
	addq	%r13, %rdx
	movq	320(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rdi,%rcx,4), %rdi
	cmpq	%rdi, %r14
	setb	%bl
	cmpq	%rdx, %rax
	seta	%al
	cmpq	344(%rsp), %rdx                 # 8-byte Folded Reload
	setb	%cl
	cmpq	%rdi, 336(%rsp)                 # 8-byte Folded Reload
	setb	%dl
	testb	%al, %bl
	jne	.LBB9_174
# %bb.185:                              #   in Loop: Header=BB9_173 Depth=5
	movl	$0, %eax
	andb	%dl, %cl
	jne	.LBB9_175
# %bb.186:                              #   in Loop: Header=BB9_173 Depth=5
	cmpq	$0, 312(%rsp)                   # 8-byte Folded Reload
	je	.LBB9_195
# %bb.187:                              #   in Loop: Header=BB9_173 Depth=5
	vbroadcastss	(%r14), %ymm0
	movq	248(%rsp), %rax                 # 8-byte Reload
	movl	244(%rsp), %ecx                 # 4-byte Reload
                                        # kill: def $ecx killed $ecx def $rcx
	movl	256(%rsp), %edx                 # 4-byte Reload
                                        # kill: def $edx killed $edx def $rdx
	movq	64(%rsp), %rbx                  # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB9_188:                              #   Parent Loop BB9_161 Depth=1
                                        #     Parent Loop BB9_164 Depth=2
                                        #       Parent Loop BB9_167 Depth=3
                                        #         Parent Loop BB9_170 Depth=4
                                        #           Parent Loop BB9_173 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movslq	%ecx, %rcx
	vmovups	(%rbp,%rcx,4), %ymm1
	vmovups	32(%rbp,%rcx,4), %ymm2
	movslq	%ebx, %rbx
	vfmadd213ps	(%r13,%rbx,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	32(%r13,%rbx,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vmovups	%ymm1, (%r13,%rbx,4)
	vmovups	%ymm2, 32(%r13,%rbx,4)
	leal	16(%rbx), %edi
	movslq	%edx, %rdx
	vmovups	(%rbp,%rdx,4), %ymm1
	vmovups	32(%rbp,%rdx,4), %ymm2
	movslq	%edi, %rdi
	vfmadd213ps	(%r13,%rdi,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	32(%r13,%rdi,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vmovups	%ymm1, (%r13,%rdi,4)
	vmovups	%ymm2, 32(%r13,%rdi,4)
	addq	$32, %r10
	addl	$32, %ebx
	addl	%r8d, %edx
	addl	%r8d, %ecx
	addq	$2, %rax
	jne	.LBB9_188
# %bb.189:                              #   in Loop: Header=BB9_173 Depth=5
	testb	$1, 304(%rsp)                   # 1-byte Folded Reload
	je	.LBB9_191
.LBB9_190:                              #   in Loop: Header=BB9_173 Depth=5
	leal	(%r12,%r10), %eax
	addl	80(%rsp), %r10d                 # 4-byte Folded Reload
	imull	40(%rsp), %r10d                 # 4-byte Folded Reload
	addl	16(%rsp), %r10d                 # 4-byte Folded Reload
	vbroadcastss	(%r14), %ymm0
	movslq	%r10d, %rcx
	vmovups	(%rbp,%rcx,4), %ymm1
	vmovups	32(%rbp,%rcx,4), %ymm2
	cltq
	vfmadd213ps	(%r13,%rax,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	32(%r13,%rax,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vmovups	%ymm1, (%r13,%rax,4)
	vmovups	%ymm2, 32(%r13,%rax,4)
.LBB9_191:                              #   in Loop: Header=BB9_173 Depth=5
	movq	296(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	cmpq	24(%rsp), %rcx                  # 8-byte Folded Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	je	.LBB9_172
	jmp	.LBB9_175
.LBB9_195:                              #   in Loop: Header=BB9_173 Depth=5
	xorl	%r10d, %r10d
	testb	$1, 304(%rsp)                   # 1-byte Folded Reload
	jne	.LBB9_190
	jmp	.LBB9_191
.LBB9_197:
	leaq	352(%rsp), %rdi
	vzeroupper
	callq	_ZN11Chronometer4stopEv
	movq	384(%rsp), %rbx                 # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB9_199
# %bb.198:
	leaq	352(%rsp), %rdi
	callq	_ZN11Chronometer7getTimeEv
	vmovss	%xmm0, (%rbx)
.LBB9_199:
	movq	168(%rsp), %rax                 # 8-byte Reload
	addq	$392, %rsp                      # imm = 0x188
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB9_200:
	.cfi_def_cfa_offset 448
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf, %ecx
	movl	$641, %edx                      # imm = 0x281
	callq	__assert_fail
.LBB9_201:
.Ltmp125:
	jmp	.LBB9_203
.LBB9_202:
.Ltmp122:
.LBB9_203:
	movq	%rax, %rbx
	movq	168(%rsp), %rax                 # 8-byte Reload
	addq	$40, %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB9_205
# %bb.204:
	callq	_ZdlPv
.LBB9_205:
	movq	168(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end9:
	.size	_ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf, .Lfunc_end9-_ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf
	.cfi_endproc
	.section	.rodata._ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf,"aG",@progbits,_ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf,comdat
	.p2align	3
.LJTI9_0:
	.quad	.LBB9_7
	.quad	.LBB9_97
	.quad	.LBB9_51
	.quad	.LBB9_74
	.quad	.LBB9_29
	.quad	.LBB9_136
	.quad	.LBB9_158
	.section	.gcc_except_table._ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf,"aG",@progbits,_ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf,comdat
	.p2align	2
GCC_except_table9:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp120-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin4         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin4         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Lfunc_end9-.Ltmp124           #   Call between .Ltmp124 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2
                                        # -- End function
	.section	.text._ZNK6TensorIfEixEi,"axG",@progbits,_ZNK6TensorIfEixEi,comdat
	.weak	_ZNK6TensorIfEixEi              # -- Begin function _ZNK6TensorIfEixEi
	.p2align	4, 0x90
	.type	_ZNK6TensorIfEixEi,@function
_ZNK6TensorIfEixEi:                     # 
	.cfi_startproc
# %bb.0:
	movslq	%esi, %rax
	shlq	$2, %rax
	addq	8(%rdi), %rax
	retq
.Lfunc_end10:
	.size	_ZNK6TensorIfEixEi, .Lfunc_end10-_ZNK6TensorIfEixEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfEixEi,"axG",@progbits,_ZN6TensorIfEixEi,comdat
	.weak	_ZN6TensorIfEixEi               # -- Begin function _ZN6TensorIfEixEi
	.p2align	4, 0x90
	.type	_ZN6TensorIfEixEi,@function
_ZN6TensorIfEixEi:                      # 
	.cfi_startproc
# %bb.0:
	movslq	%esi, %rax
	shlq	$2, %rax
	addq	8(%rdi), %rax
	retq
.Lfunc_end11:
	.size	_ZN6TensorIfEixEi, .Lfunc_end11-_ZN6TensorIfEixEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf,"axG",@progbits,_ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf,comdat
	.weak	_ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf # -- Begin function _ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf,@function
_ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf: # 
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception5
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$600, %rsp                      # imm = 0x258
	.cfi_def_cfa_offset 656
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 576(%rsp)                  # 8-byte Spill
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movslq	28(%rdi), %rax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	cmpl	28(%rsi), %eax
	jne	.LBB12_197
# %bb.1:
	movl	%edx, %ebp
	movl	16(%rsi), %r14d
	movl	24(%rsi), %r8d
	movq	%rsi, 168(%rsp)                 # 8-byte Spill
	movslq	20(%rsi), %r13
	addl	%ecx, %ecx
	movl	20(%rdi), %eax
	addl	%ecx, %eax
	subl	%r13d, %eax
	movl	%eax, 136(%rsp)                 # 4-byte Spill
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %ebx
	movq	%rdi, 200(%rsp)                 # 8-byte Spill
	addl	24(%rdi), %ecx
	movl	%r8d, 28(%rsp)                  # 4-byte Spill
	subl	%r8d, %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	movq	%rbp, 272(%rsp)                 # 8-byte Spill
	divl	%ebp
	movl	%eax, %ecx
	movq	%rbx, 344(%rsp)                 # 8-byte Spill
	leal	1(%rbx), %r15d
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	leal	1(%rcx), %r12d
	movl	$72, %edi
	callq	_Znwm
	movq	%rax, %rbp
	movq	$_ZTV6TensorIfE+16, (%rax)
	movl	$1, 16(%rax)
	movl	%r15d, 20(%rax)
	movl	%r12d, 24(%rax)
	movl	%r14d, 28(%rax)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%rax)
	movl	$1, 544(%rsp)
	movq	$0, 56(%rax)
	movb	$1, 64(%rax)
	movl	%r15d, %eax
	imull	%r14d, %eax
	imull	%r12d, %eax
	movl	%eax, 32(%rbp)
.Ltmp126:
	movl	$16, %edi
	movq	%rbp, 96(%rsp)                  # 8-byte Spill
	callq	_Znwm
.Ltmp127:
# %bb.2:
	movq	%rax, %rbx
	movl	$1, (%rax)
	movl	%r15d, 192(%rsp)                # 4-byte Spill
	movl	%r15d, 4(%rax)
	movl	%r12d, 68(%rsp)                 # 4-byte Spill
	movl	%r12d, 8(%rax)
	movl	%r14d, 156(%rsp)                # 4-byte Spill
	movl	%r14d, 12(%rax)
	movq	40(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB12_4
# %bb.3:
	callq	_ZdlPv
.LBB12_4:
	movq	%rbx, 40(%rbp)
	addq	$16, %rbx
	movq	%rbx, 48(%rbp)
	movq	%rbx, 56(%rbp)
.Ltmp129:
	leaq	544(%rsp), %rsi
	movq	%rbp, %rdi
	callq	_ZN6TensorIfE9init_dataERKN6tensor4initE
.Ltmp130:
# %bb.5:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 544(%rsp)
	movb	$1, 560(%rsp)
	leaq	544(%rsp), %rdi
	callq	_ZN11Chronometer5startEv
	movq	16(%rsp), %rcx                  # 8-byte Reload
	decl	%ecx
	cmpl	$6, %ecx
	movq	272(%rsp), %rdx                 # 8-byte Reload
	ja	.LBB12_193
# %bb.6:
	movl	156(%rsp), %ebx                 # 4-byte Reload
	movslq	%ebx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%r13, 368(%rsp)                 # 8-byte Spill
	jmpq	*.LJTI12_0(,%rcx,8)
.LBB12_118:
	cmpl	$0, 224(%rsp)                   # 4-byte Folded Reload
	movl	192(%rsp), %ecx                 # 4-byte Reload
	je	.LBB12_194
# %bb.119:
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	28(%rax), %esi
	movl	16(%rax), %r10d
	imull	%esi, %r10d
	movq	%r13, %r14
	andq	$-2, %r14
	movl	%r10d, %eax
	negl	%eax
	movl	%eax, 296(%rsp)                 # 4-byte Spill
	leal	(%r10,%r10), %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movl	%esi, 312(%rsp)                 # 4-byte Spill
	movq	%r10, 208(%rsp)                 # 8-byte Spill
	jmp	.LBB12_120
	.p2align	4, 0x90
.LBB12_132:                             #   in Loop: Header=BB12_120 Depth=1
	movq	80(%rsp), %rax                  # 8-byte Reload
	incl	%eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	cmpl	224(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB12_194
.LBB12_120:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_122 Depth 2
                                        #       Child Loop BB12_124 Depth 3
                                        #         Child Loop BB12_127 Depth 4
                                        #           Child Loop BB12_129 Depth 5
                                        #             Child Loop BB12_140 Depth 6
	testl	%ebx, %ebx
	je	.LBB12_132
# %bb.121:                              #   in Loop: Header=BB12_120 Depth=1
	movq	80(%rsp), %rdi                  # 8-byte Reload
	movl	%edi, %eax
	subl	%esi, %eax
	subl	%r10d, %eax
	movl	%eax, 232(%rsp)                 # 4-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	28(%rax), %ebp
	movl	24(%rax), %eax
	movl	%ebp, 248(%rsp)                 # 4-byte Spill
	imull	%ebp, %eax
	movl	%eax, 160(%rsp)                 # 4-byte Spill
	movl	$0, 240(%rsp)                   # 4-byte Folded Spill
	movl	%edi, %eax
	movl	%edi, 264(%rsp)                 # 4-byte Spill
	jmp	.LBB12_122
	.p2align	4, 0x90
.LBB12_131:                             #   in Loop: Header=BB12_122 Depth=2
	movl	240(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	movl	312(%rsp), %esi                 # 4-byte Reload
	addl	%esi, 264(%rsp)                 # 4-byte Folded Spill
	movl	156(%rsp), %ebx                 # 4-byte Reload
	movl	%eax, 240(%rsp)                 # 4-byte Spill
	cmpl	%ebx, %eax
	je	.LBB12_132
.LBB12_122:                             #   Parent Loop BB12_120 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_124 Depth 3
                                        #         Child Loop BB12_127 Depth 4
                                        #           Child Loop BB12_129 Depth 5
                                        #             Child Loop BB12_140 Depth 6
	addl	%esi, 232(%rsp)                 # 4-byte Folded Spill
	cmpl	$0, 68(%rsp)                    # 4-byte Folded Reload
	je	.LBB12_131
# %bb.123:                              #   in Loop: Header=BB12_122 Depth=2
	movl	240(%rsp), %eax                 # 4-byte Reload
	subl	248(%rsp), %eax                 # 4-byte Folded Reload
	subl	160(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movl	$0, 72(%rsp)                    # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	jmp	.LBB12_124
	.p2align	4, 0x90
.LBB12_138:                             #   in Loop: Header=BB12_124 Depth=3
	movq	256(%rsp), %rsi                 # 8-byte Reload
	leal	1(%rsi), %eax
	movl	72(%rsp), %ecx                  # 4-byte Reload
	addl	272(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 72(%rsp)                  # 4-byte Spill
	cmpl	320(%rsp), %esi                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	movl	192(%rsp), %ecx                 # 4-byte Reload
	je	.LBB12_131
.LBB12_124:                             #   Parent Loop BB12_120 Depth=1
                                        #     Parent Loop BB12_122 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_127 Depth 4
                                        #           Child Loop BB12_129 Depth 5
                                        #             Child Loop BB12_140 Depth 6
	movl	40(%rsp), %eax                  # 4-byte Reload
	addl	248(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	testl	%ecx, %ecx
	je	.LBB12_138
# %bb.125:                              #   in Loop: Header=BB12_124 Depth=3
	cmpl	$0, 28(%rsp)                    # 4-byte Folded Reload
	je	.LBB12_138
# %bb.126:                              #   in Loop: Header=BB12_124 Depth=3
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	24(%rax), %r15d
	movl	%r10d, %ecx
	imull	%r15d, %ecx
	movl	232(%rsp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	movl	%eax, 120(%rsp)                 # 4-byte Spill
	movq	256(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	imull	272(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movq	200(%rsp), %rax                 # 8-byte Reload
	movl	28(%rax), %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	addl	%eax, %eax
	movl	%eax, 288(%rsp)                 # 4-byte Spill
	movl	296(%rsp), %eax                 # 4-byte Reload
	imull	%r15d, %eax
	movl	%eax, 144(%rsp)                 # 4-byte Spill
	imull	44(%rsp), %r15d                 # 4-byte Folded Reload
	movl	$1, 48(%rsp)                    # 4-byte Folded Spill
	movl	$0, 104(%rsp)                   # 4-byte Folded Spill
	movl	40(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 128(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	jmp	.LBB12_127
	.p2align	4, 0x90
.LBB12_137:                             #   in Loop: Header=BB12_127 Depth=4
	movq	112(%rsp), %rdi                 # 8-byte Reload
	leal	1(%rdi), %eax
	movq	272(%rsp), %rsi                 # 8-byte Reload
	addl	%esi, 48(%rsp)                  # 4-byte Folded Spill
	addl	%esi, 104(%rsp)                 # 4-byte Folded Spill
	cmpl	344(%rsp), %edi                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	je	.LBB12_138
.LBB12_127:                             #   Parent Loop BB12_120 Depth=1
                                        #     Parent Loop BB12_122 Depth=2
                                        #       Parent Loop BB12_124 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_129 Depth 5
                                        #             Child Loop BB12_140 Depth 6
	movl	128(%rsp), %eax                 # 4-byte Reload
	addl	160(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 128(%rsp)                 # 4-byte Spill
	testl	%r13d, %r13d
	je	.LBB12_137
# %bb.128:                              #   in Loop: Header=BB12_127 Depth=4
	movq	112(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	imull	272(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 216(%rsp)                 # 4-byte Spill
	movslq	128(%rsp), %rsi                 # 4-byte Folded Reload
	movq	200(%rsp), %rax                 # 8-byte Reload
	movl	24(%rax), %r11d
	movq	8(%rax), %rdi
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %r9
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %r12
	vmovss	(%r12,%rsi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movl	%r11d, %eax
	imull	48(%rsp), %eax                  # 4-byte Folded Reload
	movl	72(%rsp), %r8d                  # 4-byte Reload
	addl	%r8d, %eax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	imull	%edx, %eax
	movq	80(%rsp), %rbx                  # 8-byte Reload
	addl	%ebx, %eax
	movl	288(%rsp), %ebp                 # 4-byte Reload
	imull	%r11d, %ebp
	movl	%r11d, 12(%rsp)                 # 4-byte Spill
	imull	104(%rsp), %r11d                # 4-byte Folded Reload
	addl	%r8d, %r11d
	imull	%edx, %r11d
	addl	%ebx, %r11d
	xorl	%edx, %edx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movl	264(%rsp), %edx                 # 4-byte Reload
	movl	120(%rsp), %ebx                 # 4-byte Reload
	jmp	.LBB12_129
	.p2align	4, 0x90
.LBB12_136:                             #   in Loop: Header=BB12_129 Depth=5
	incl	%ebx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addl	%edx, %eax
	movl	136(%rsp), %r11d                # 4-byte Reload
	addl	%edx, %r11d
	movl	56(%rsp), %edx                  # 4-byte Reload
	addl	%r10d, %edx
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	cmpl	28(%rsp), %ebx                  # 4-byte Folded Reload
	movl	88(%rsp), %ebx                  # 4-byte Reload
	je	.LBB12_137
.LBB12_129:                             #   Parent Loop BB12_120 Depth=1
                                        #     Parent Loop BB12_122 Depth=2
                                        #       Parent Loop BB12_124 Depth=3
                                        #         Parent Loop BB12_127 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_140 Depth 6
	addl	%r10d, %ebx
	cmpl	$1, %r13d
	movl	%r11d, 136(%rsp)                # 4-byte Spill
	movl	%edx, 56(%rsp)                  # 4-byte Spill
	movl	%ebx, 88(%rsp)                  # 4-byte Spill
	jne	.LBB12_139
# %bb.130:                              #   in Loop: Header=BB12_129 Depth=5
	xorl	%r11d, %r11d
	movl	%ebx, %r8d
	movq	16(%rsp), %rbx                  # 8-byte Reload
	testb	$1, %r13b
	je	.LBB12_136
	jmp	.LBB12_135
	.p2align	4, 0x90
.LBB12_139:                             #   in Loop: Header=BB12_129 Depth=5
	movl	%edx, %r8d
	movl	%r11d, %r13d
	movl	%eax, 184(%rsp)                 # 4-byte Spill
                                        # kill: def $eax killed $eax def $rax
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB12_140:                             #   Parent Loop BB12_120 Depth=1
                                        #     Parent Loop BB12_122 Depth=2
                                        #       Parent Loop BB12_124 Depth=3
                                        #         Parent Loop BB12_127 Depth=4
                                        #           Parent Loop BB12_129 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movslq	%r13d, %r13
	movslq	%r8d, %r8
	vmovss	(%r9,%r8,4), %xmm1              # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	(%rdi,%r13,4), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovss	%xmm1, (%r12,%rsi,4)
	leal	(%rcx,%r8), %r10d
	cltq
	movslq	%r10d, %rdx
	vmovss	(%r9,%rdx,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	vfmadd132ss	(%rdi,%rax,4), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovss	%xmm0, (%r12,%rsi,4)
	addq	$2, %r11
	addl	%ebp, %eax
	addl	%ebp, %r13d
	addl	%r15d, %r8d
	cmpq	%r11, %r14
	jne	.LBB12_140
# %bb.133:                              #   in Loop: Header=BB12_129 Depth=5
	addl	144(%rsp), %r8d                 # 4-byte Folded Reload
	movq	368(%rsp), %r13                 # 8-byte Reload
	movq	208(%rsp), %r10                 # 8-byte Reload
	movl	184(%rsp), %eax                 # 4-byte Reload
	movq	16(%rsp), %rbx                  # 8-byte Reload
	testb	$1, %r13b
	je	.LBB12_136
.LBB12_135:                             #   in Loop: Header=BB12_129 Depth=5
	movq	%r10, %rdx
	movq	%r13, %r10
	movl	%eax, %r13d
	movq	176(%rsp), %rax                 # 8-byte Reload
	addl	%ebx, %eax
	addl	216(%rsp), %r11d                # 4-byte Folded Reload
	imull	12(%rsp), %r11d                 # 4-byte Folded Reload
	addl	%eax, %r11d
	imull	32(%rsp), %r11d                 # 4-byte Folded Reload
	addl	80(%rsp), %r11d                 # 4-byte Folded Reload
	addl	%ecx, %r8d
	movslq	%r11d, %r11
	movslq	%r8d, %rax
	vmovss	(%r9,%rax,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movl	%r13d, %eax
	movq	%r10, %r13
	movq	%rdx, %r10
	vfmadd231ss	(%rdi,%r11,4), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovss	%xmm0, (%r12,%rsi,4)
	jmp	.LBB12_136
.LBB12_44:
	cmpl	$0, 68(%rsp)                    # 4-byte Folded Reload
	movl	192(%rsp), %ecx                 # 4-byte Reload
	je	.LBB12_194
# %bb.45:
	movq	%rdx, %rdi
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	28(%rax), %eax
	movslq	%ecx, %rsi
	movq	%rsi, %rdx
	andq	$-2, %rdx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	leal	(%rdi,%rdi), %edx
	movl	%edx, 296(%rsp)                 # 4-byte Spill
	movl	%eax, %edx
	negl	%edx
	movl	%edx, 44(%rsp)                  # 4-byte Spill
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	addl	%eax, %eax
	movl	%eax, 240(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 336(%rsp)                 # 8-byte Spill
	movl	$0, 232(%rsp)                   # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	movq	%rsi, 208(%rsp)                 # 8-byte Spill
	jmp	.LBB12_46
	.p2align	4, 0x90
.LBB12_160:                             #   in Loop: Header=BB12_46 Depth=1
	movq	280(%rsp), %rbp                 # 8-byte Reload
	leal	1(%rbp), %eax
	movq	%rdx, %rdi
	addl	%edx, 232(%rsp)                 # 4-byte Folded Spill
	movq	336(%rsp), %rdx                 # 8-byte Reload
	addl	248(%rsp), %edx                 # 4-byte Folded Reload
	movq	%rdx, 336(%rsp)                 # 8-byte Spill
	cmpl	320(%rsp), %ebp                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	je	.LBB12_194
.LBB12_46:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_48 Depth 2
                                        #       Child Loop BB12_50 Depth 3
                                        #         Child Loop BB12_53 Depth 4
                                        #           Child Loop BB12_55 Depth 5
                                        #             Child Loop BB12_168 Depth 6
	testl	%ebx, %ebx
	movq	%rdi, %rdx
	je	.LBB12_160
# %bb.47:                               #   in Loop: Header=BB12_46 Depth=1
	movq	248(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	movq	280(%rsp), %rdi                 # 8-byte Reload
	imull	%edi, %eax
	movq	%rax, 360(%rsp)                 # 8-byte Spill
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	16(%rax), %ebp
	movl	28(%rax), %ebx
	movl	24(%rax), %eax
	imull	%ebp, %eax
	movl	%eax, 344(%rsp)                 # 4-byte Spill
	imull	%ebx, %eax
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movl	%ebx, 352(%rsp)                 # 4-byte Spill
	imull	%ebx, %ebp
	movl	%ebp, 160(%rsp)                 # 4-byte Spill
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	imull	%edx, %edi
	movq	%rdi, 288(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	movq	336(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 144(%rsp)                 # 4-byte Spill
	jmp	.LBB12_48
	.p2align	4, 0x90
.LBB12_159:                             #   in Loop: Header=BB12_48 Depth=2
	movq	312(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	incl	144(%rsp)                       # 4-byte Folded Spill
	movl	156(%rsp), %ebx                 # 4-byte Reload
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	cmpl	%ebx, %eax
	je	.LBB12_160
.LBB12_48:                              #   Parent Loop BB12_46 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_50 Depth 3
                                        #         Child Loop BB12_53 Depth 4
                                        #           Child Loop BB12_55 Depth 5
                                        #             Child Loop BB12_168 Depth 6
	testl	%r13d, %r13d
	je	.LBB12_159
# %bb.49:                               #   in Loop: Header=BB12_48 Depth=2
	movq	360(%rsp), %rax                 # 8-byte Reload
	movq	312(%rsp), %rdi                 # 8-byte Reload
	addl	%edi, %eax
	movl	%eax, 256(%rsp)                 # 4-byte Spill
	movl	%edi, %eax
	subl	344(%rsp), %eax                 # 4-byte Folded Reload
	imull	352(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 264(%rsp)                 # 4-byte Spill
	movl	$0, 16(%rsp)                    # 4-byte Folded Spill
	movl	%edx, %eax
	movl	%edx, 72(%rsp)                  # 4-byte Spill
	jmp	.LBB12_50
	.p2align	4, 0x90
.LBB12_166:                             #   in Loop: Header=BB12_50 Depth=3
	movl	16(%rsp), %eax                  # 4-byte Reload
	incl	%eax
	incl	72(%rsp)                        # 4-byte Folded Spill
	movq	368(%rsp), %r13                 # 8-byte Reload
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	cmpl	%r13d, %eax
	je	.LBB12_159
.LBB12_50:                              #   Parent Loop BB12_46 Depth=1
                                        #     Parent Loop BB12_48 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_53 Depth 4
                                        #           Child Loop BB12_55 Depth 5
                                        #             Child Loop BB12_168 Depth 6
	movl	264(%rsp), %eax                 # 4-byte Reload
	addl	40(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, 264(%rsp)                 # 4-byte Spill
	cmpl	$0, 28(%rsp)                    # 4-byte Folded Reload
	je	.LBB12_166
# %bb.51:                               #   in Loop: Header=BB12_50 Depth=3
	cmpl	$0, 224(%rsp)                   # 4-byte Folded Reload
	je	.LBB12_166
# %bb.52:                               #   in Loop: Header=BB12_50 Depth=3
	movq	200(%rsp), %rax                 # 8-byte Reload
	movl	28(%rax), %edi
	movl	264(%rsp), %eax                 # 4-byte Reload
	subl	160(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 112(%rsp)                 # 4-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	24(%rax), %ebp
	movl	%ebp, %r11d
	imull	248(%rsp), %r11d                # 4-byte Folded Reload
	movl	256(%rsp), %eax                 # 4-byte Reload
	subl	%r11d, %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	296(%rsp), %eax                 # 4-byte Reload
	movl	%edi, 56(%rsp)                  # 4-byte Spill
	imull	%edi, %eax
	movl	%eax, 120(%rsp)                 # 4-byte Spill
	movl	44(%rsp), %eax                  # 4-byte Reload
	imull	%ebp, %eax
	movl	%eax, 176(%rsp)                 # 4-byte Spill
	imull	240(%rsp), %ebp                 # 4-byte Folded Reload
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movl	232(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 104(%rsp)                 # 4-byte Spill
	jmp	.LBB12_53
	.p2align	4, 0x90
.LBB12_165:                             #   in Loop: Header=BB12_53 Depth=4
	movq	48(%rsp), %rax                  # 8-byte Reload
	incl	%eax
	incl	104(%rsp)                       # 4-byte Folded Spill
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	cmpl	28(%rsp), %eax                  # 4-byte Folded Reload
	movl	192(%rsp), %ecx                 # 4-byte Reload
	je	.LBB12_166
.LBB12_53:                              #   Parent Loop BB12_46 Depth=1
                                        #     Parent Loop BB12_48 Depth=2
                                        #       Parent Loop BB12_50 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_55 Depth 5
                                        #             Child Loop BB12_168 Depth 6
	movl	112(%rsp), %eax                 # 4-byte Reload
	addl	160(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 112(%rsp)                 # 4-byte Spill
	testl	%ecx, %ecx
	je	.LBB12_165
# %bb.54:                               #   in Loop: Header=BB12_53 Depth=4
	movq	288(%rsp), %rax                 # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 88(%rsp)                  # 4-byte Spill
	movslq	112(%rsp), %rbx                 # 4-byte Folded Reload
	movq	200(%rsp), %rax                 # 8-byte Reload
	movl	24(%rax), %ecx
	movq	8(%rax), %r13
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %r10
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movl	72(%rsp), %edi                  # 4-byte Reload
	imull	%ecx, %edi
	movl	104(%rsp), %r14d                # 4-byte Reload
	addl	%r14d, %edi
	movl	56(%rsp), %r9d                  # 4-byte Reload
	imull	%r9d, %edi
	movl	%edi, 80(%rsp)                  # 4-byte Spill
	movl	120(%rsp), %r8d                 # 4-byte Reload
	imull	%ecx, %r8d
	movl	16(%rsp), %edi                  # 4-byte Reload
	movl	%ecx, 184(%rsp)                 # 4-byte Spill
	imull	%ecx, %edi
	addl	%r14d, %edi
	imull	%r9d, %edi
	movl	%edi, 216(%rsp)                 # 4-byte Spill
	xorl	%r15d, %r15d
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB12_55
	.p2align	4, 0x90
.LBB12_164:                             #   in Loop: Header=BB12_55 Depth=5
	incq	%r15
	cmpq	224(%rsp), %r15                 # 8-byte Folded Reload
	je	.LBB12_165
.LBB12_55:                              #   Parent Loop BB12_46 Depth=1
                                        #     Parent Loop BB12_48 Depth=2
                                        #       Parent Loop BB12_50 Depth=3
                                        #         Parent Loop BB12_53 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_168 Depth 6
	leaq	(%r15,%rbx), %r14
	cmpl	%edx, 136(%rsp)                 # 4-byte Folded Reload
	jae	.LBB12_167
# %bb.56:                               #   in Loop: Header=BB12_55 Depth=5
	xorl	%ecx, %ecx
	movl	12(%rsp), %edi                  # 4-byte Reload
                                        # kill: def $edi killed $edi def $rdi
	testb	$1, %sil
	je	.LBB12_164
	jmp	.LBB12_163
	.p2align	4, 0x90
.LBB12_167:                             #   in Loop: Header=BB12_55 Depth=5
	movl	144(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, %edi
	movl	216(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, %esi
	movl	80(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %r12d
	xorl	%ecx, %ecx
	movq	128(%rsp), %r9                  # 8-byte Reload
	.p2align	4, 0x90
.LBB12_168:                             #   Parent Loop BB12_46 Depth=1
                                        #     Parent Loop BB12_48 Depth=2
                                        #       Parent Loop BB12_50 Depth=3
                                        #         Parent Loop BB12_53 Depth=4
                                        #           Parent Loop BB12_55 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movslq	%esi, %rsi
	movq	%r11, %rdx
	leaq	(%r15,%rsi), %r11
	vmovss	(%r13,%r11,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	%rdx, %r11
	vmovss	(%r10,%r14,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%edi, %rdi
	vfmadd213ss	(%rax,%rdi,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rax,%rdi,4)
	leal	(%rdx,%rdi), %ebx
	movslq	%r12d, %r12
	leaq	(%r15,%r12), %rdx
	vmovss	(%r13,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	(%r10,%r14,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%ebx, %rdx
	vfmadd213ss	(%rax,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rax,%rdx,4)
	addq	$2, %rcx
	addl	%r8d, %r12d
	addl	%r8d, %esi
	addl	%ebp, %edi
	addq	$-2, %r9
	jne	.LBB12_168
# %bb.161:                              #   in Loop: Header=BB12_55 Depth=5
	addl	176(%rsp), %edi                 # 4-byte Folded Reload
	movq	272(%rsp), %rdx                 # 8-byte Reload
	movq	208(%rsp), %rsi                 # 8-byte Reload
	movq	32(%rsp), %rbx                  # 8-byte Reload
	testb	$1, %sil
	je	.LBB12_164
.LBB12_163:                             #   in Loop: Header=BB12_55 Depth=5
	addl	%r11d, %edi
	imull	%edx, %ecx
	addl	16(%rsp), %ecx                  # 4-byte Folded Reload
	imull	184(%rsp), %ecx                 # 4-byte Folded Reload
	addl	88(%rsp), %ecx                  # 4-byte Folded Reload
	imull	56(%rsp), %ecx                  # 4-byte Folded Reload
	movslq	%ecx, %rcx
	addq	%r15, %rcx
	vmovss	(%r13,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	(%r10,%r14,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%edi, %rcx
	vfmadd213ss	(%rax,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rax,%rcx,4)
	jmp	.LBB12_164
.LBB12_78:
	cmpl	$0, 192(%rsp)                   # 4-byte Folded Reload
	je	.LBB12_194
# %bb.79:
	movq	%rdx, %rcx
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	24(%rax), %edx
	movl	%edx, 288(%rsp)                 # 4-byte Spill
	movl	28(%rax), %eax
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	movq	224(%rsp), %rbp                 # 8-byte Reload
	leaq	-1(%rbp), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movl	%ebp, %edi
	andl	$3, %edi
	andq	$-4, %rbp
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	jmp	.LBB12_80
	.p2align	4, 0x90
.LBB12_98:                              #   in Loop: Header=BB12_80 Depth=1
	movq	120(%rsp), %rax                 # 8-byte Reload
	leal	1(%rax), %r8d
	movq	%rdx, %rcx
	movq	48(%rsp), %rsi                  # 8-byte Reload
	addl	%edx, %esi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	cmpl	344(%rsp), %eax                 # 4-byte Folded Reload
	movl	%r8d, %eax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	je	.LBB12_194
.LBB12_80:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_82 Depth 2
                                        #       Child Loop BB12_84 Depth 3
                                        #         Child Loop BB12_87 Depth 4
                                        #           Child Loop BB12_89 Depth 5
                                        #             Child Loop BB12_156 Depth 6
                                        #             Child Loop BB12_93 Depth 6
	cmpl	$0, 68(%rsp)                    # 4-byte Folded Reload
	movq	%rcx, %rdx
	je	.LBB12_98
# %bb.81:                               #   in Loop: Header=BB12_80 Depth=1
	movl	288(%rsp), %ecx                 # 4-byte Reload
	imull	120(%rsp), %ecx                 # 4-byte Folded Reload
	movl	72(%rsp), %eax                  # 4-byte Reload
	imull	%eax, %ecx
	subl	%eax, %ecx
	movl	%ecx, 104(%rsp)                 # 4-byte Spill
	movl	$0, 128(%rsp)                   # 4-byte Folded Spill
	xorl	%eax, %eax
	jmp	.LBB12_82
	.p2align	4, 0x90
.LBB12_97:                              #   in Loop: Header=BB12_82 Depth=2
	movq	160(%rsp), %rcx                 # 8-byte Reload
	leal	1(%rcx), %eax
	movq	272(%rsp), %rdx                 # 8-byte Reload
	addl	%edx, 128(%rsp)                 # 4-byte Folded Spill
	cmpl	320(%rsp), %ecx                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movl	156(%rsp), %ebx                 # 4-byte Reload
	je	.LBB12_98
.LBB12_82:                              #   Parent Loop BB12_80 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_84 Depth 3
                                        #         Child Loop BB12_87 Depth 4
                                        #           Child Loop BB12_89 Depth 5
                                        #             Child Loop BB12_156 Depth 6
                                        #             Child Loop BB12_93 Depth 6
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movl	104(%rsp), %eax                 # 4-byte Reload
	addl	72(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, 104(%rsp)                 # 4-byte Spill
	testl	%ebx, %ebx
	je	.LBB12_97
# %bb.83:                               #   in Loop: Header=BB12_82 Depth=2
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	16(%rax), %r8d
	movl	28(%rax), %ecx
	movl	24(%rax), %eax
	imull	%r8d, %eax
	imull	%ecx, %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, 208(%rsp)                 # 4-byte Spill
	imull	%ecx, %r8d
	movslq	104(%rsp), %rax                 # 4-byte Folded Reload
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB12_84
	.p2align	4, 0x90
.LBB12_96:                              #   in Loop: Header=BB12_84 Depth=3
	movq	144(%rsp), %rcx                 # 8-byte Reload
	incq	%rcx
	movq	176(%rsp), %rax                 # 8-byte Reload
	addl	208(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	cmpq	16(%rsp), %rcx                  # 8-byte Folded Reload
	je	.LBB12_97
.LBB12_84:                              #   Parent Loop BB12_80 Depth=1
                                        #     Parent Loop BB12_82 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_87 Depth 4
                                        #           Child Loop BB12_89 Depth 5
                                        #             Child Loop BB12_156 Depth 6
                                        #             Child Loop BB12_93 Depth 6
	testl	%r13d, %r13d
	je	.LBB12_96
# %bb.85:                               #   in Loop: Header=BB12_84 Depth=3
	cmpl	$0, 28(%rsp)                    # 4-byte Folded Reload
	je	.LBB12_96
# %bb.86:                               #   in Loop: Header=BB12_84 Depth=3
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	144(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rax), %r10
	movq	200(%rsp), %rax                 # 8-byte Reload
	movl	24(%rax), %ecx
	movl	28(%rax), %r14d
	movq	48(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	imull	%ecx, %eax
	addl	128(%rsp), %eax                 # 4-byte Folded Reload
	imull	%r14d, %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	imull	%r14d, %ecx
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	movq	176(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 184(%rsp)                 # 4-byte Spill
	jmp	.LBB12_87
	.p2align	4, 0x90
.LBB12_95:                              #   in Loop: Header=BB12_87 Depth=4
	movl	80(%rsp), %ecx                  # 4-byte Reload
	incl	%ecx
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	216(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	184(%rsp), %eax                 # 4-byte Reload
	addl	12(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, 184(%rsp)                 # 4-byte Spill
	movq	368(%rsp), %r13                 # 8-byte Reload
	cmpl	%r13d, %ecx
	je	.LBB12_96
.LBB12_87:                              #   Parent Loop BB12_80 Depth=1
                                        #     Parent Loop BB12_82 Depth=2
                                        #       Parent Loop BB12_84 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_89 Depth 5
                                        #             Child Loop BB12_156 Depth 6
                                        #             Child Loop BB12_93 Depth 6
	movl	%ecx, 80(%rsp)                  # 4-byte Spill
	cmpl	$0, 224(%rsp)                   # 4-byte Folded Reload
	je	.LBB12_95
# %bb.88:                               #   in Loop: Header=BB12_87 Depth=4
	movq	200(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rbx
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rcx
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %r9
	vmovss	(%r9,%r10,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	leaq	12(%rcx), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	xorl	%r11d, %r11d
	movl	184(%rsp), %r12d                # 4-byte Reload
	movq	32(%rsp), %r15                  # 8-byte Reload
	jmp	.LBB12_89
	.p2align	4, 0x90
.LBB12_94:                              #   in Loop: Header=BB12_89 Depth=5
	incl	%r11d
	addq	%r14, %r15
	addl	%r8d, %r12d
	cmpl	28(%rsp), %r11d                 # 4-byte Folded Reload
	je	.LBB12_95
.LBB12_89:                              #   Parent Loop BB12_80 Depth=1
                                        #     Parent Loop BB12_82 Depth=2
                                        #       Parent Loop BB12_84 Depth=3
                                        #         Parent Loop BB12_87 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_156 Depth 6
                                        #             Child Loop BB12_93 Depth 6
	movslq	%r12d, %rsi
	cmpq	$3, 136(%rsp)                   # 8-byte Folded Reload
	jae	.LBB12_155
# %bb.90:                               #   in Loop: Header=BB12_89 Depth=5
	xorl	%r13d, %r13d
	jmp	.LBB12_91
	.p2align	4, 0x90
.LBB12_155:                             #   in Loop: Header=BB12_89 Depth=5
	movq	88(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rsi,4), %rax
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB12_156:                             #   Parent Loop BB12_80 Depth=1
                                        #     Parent Loop BB12_82 Depth=2
                                        #       Parent Loop BB12_84 Depth=3
                                        #         Parent Loop BB12_87 Depth=4
                                        #           Parent Loop BB12_89 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leaq	(%r15,%r13), %rdx
	movslq	%edx, %rdx
	vmovss	-12(%rax,%r13,4), %xmm1         # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	(%rbx,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovss	%xmm1, (%r9,%r10,4)
	leal	1(%rdx), %ecx
	movslq	%ecx, %rcx
	vmovss	-8(%rax,%r13,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vfmadd132ss	(%rbx,%rcx,4), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovss	%xmm0, (%r9,%r10,4)
	leal	2(%rdx), %ecx
	movslq	%ecx, %rcx
	vmovss	-4(%rax,%r13,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	(%rbx,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovss	%xmm1, (%r9,%r10,4)
	addl	$3, %edx
	movslq	%edx, %rcx
	vmovss	(%rax,%r13,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vfmadd132ss	(%rbx,%rcx,4), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovss	%xmm0, (%r9,%r10,4)
	addq	$4, %r13
	cmpq	%r13, %rbp
	jne	.LBB12_156
.LBB12_91:                              #   in Loop: Header=BB12_89 Depth=5
	testq	%rdi, %rdi
	je	.LBB12_94
# %bb.92:                               #   in Loop: Header=BB12_89 Depth=5
	addq	%r13, %rsi
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rsi,4), %rax
	addl	%r15d, %r13d
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB12_93:                              #   Parent Loop BB12_80 Depth=1
                                        #     Parent Loop BB12_82 Depth=2
                                        #       Parent Loop BB12_84 Depth=3
                                        #         Parent Loop BB12_87 Depth=4
                                        #           Parent Loop BB12_89 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leal	(%rsi,%r13), %edx
	movslq	%edx, %rdx
	vmovss	(%rax,%rsi,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd231ss	(%rbx,%rdx,4), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovss	%xmm0, (%r9,%r10,4)
	incq	%rsi
	cmpq	%rsi, %rdi
	jne	.LBB12_93
	jmp	.LBB12_94
.LBB12_193:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.6, %esi
	movl	$50, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.LBB12_194
.LBB12_57:
	cmpl	$0, 68(%rsp)                    # 4-byte Folded Reload
	movl	192(%rsp), %ecx                 # 4-byte Reload
	je	.LBB12_194
# %bb.58:
	movq	%rdx, %rdi
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	28(%rax), %eax
	movl	%eax, 120(%rsp)                 # 4-byte Spill
	movq	224(%rsp), %rsi                 # 8-byte Reload
	leaq	-1(%rsi), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movl	%esi, %edx
	andl	$3, %edx
	andq	$-4, %rsi
	xorl	%eax, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB12_59
	.p2align	4, 0x90
.LBB12_77:                              #   in Loop: Header=BB12_59 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	leal	1(%rax), %r8d
	movq	112(%rsp), %rbp                 # 8-byte Reload
	addl	%edi, %ebp
	movq	%rbp, 112(%rsp)                 # 8-byte Spill
	cmpl	320(%rsp), %eax                 # 4-byte Folded Reload
	movl	%r8d, %eax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	je	.LBB12_194
.LBB12_59:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_61 Depth 2
                                        #       Child Loop BB12_63 Depth 3
                                        #         Child Loop BB12_66 Depth 4
                                        #           Child Loop BB12_68 Depth 5
                                        #             Child Loop BB12_158 Depth 6
                                        #             Child Loop BB12_72 Depth 6
	testl	%ebx, %ebx
	je	.LBB12_77
# %bb.60:                               #   in Loop: Header=BB12_59 Depth=1
	movl	120(%rsp), %ebp                 # 4-byte Reload
	movl	%ebp, %eax
	imull	72(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	24(%rax), %eax
	imull	%ebp, %eax
	movl	%eax, 208(%rsp)                 # 4-byte Spill
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	16(%rax), %ebp
	movl	28(%rax), %ebx
	movl	24(%rax), %eax
	imull	%ebp, %eax
	imull	%ebx, %eax
	movl	%eax, 216(%rsp)                 # 4-byte Spill
	movl	%ebx, 104(%rsp)                 # 4-byte Spill
	imull	%ebx, %ebp
	movl	%ebp, 16(%rsp)                  # 4-byte Spill
	movl	$0, 128(%rsp)                   # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB12_61
	.p2align	4, 0x90
.LBB12_76:                              #   in Loop: Header=BB12_61 Depth=2
	movq	48(%rsp), %rcx                  # 8-byte Reload
	incl	%ecx
	movl	128(%rsp), %eax                 # 4-byte Reload
	addl	104(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 128(%rsp)                 # 4-byte Spill
	movl	156(%rsp), %ebx                 # 4-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	cmpl	%ebx, %ecx
	movl	192(%rsp), %ecx                 # 4-byte Reload
	je	.LBB12_77
.LBB12_61:                              #   Parent Loop BB12_59 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_63 Depth 3
                                        #         Child Loop BB12_66 Depth 4
                                        #           Child Loop BB12_68 Depth 5
                                        #             Child Loop BB12_158 Depth 6
                                        #             Child Loop BB12_72 Depth 6
	testl	%ecx, %ecx
	je	.LBB12_76
# %bb.62:                               #   in Loop: Header=BB12_61 Depth=2
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	addl	%ecx, %eax
	subl	208(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	$0, 144(%rsp)                   # 4-byte Folded Spill
	xorl	%eax, %eax
	jmp	.LBB12_63
	.p2align	4, 0x90
.LBB12_75:                              #   in Loop: Header=BB12_63 Depth=3
	movq	176(%rsp), %rcx                 # 8-byte Reload
	leal	1(%rcx), %eax
	movq	272(%rsp), %rdi                 # 8-byte Reload
	addl	%edi, 144(%rsp)                 # 4-byte Folded Spill
	cmpl	344(%rsp), %ecx                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	je	.LBB12_76
.LBB12_63:                              #   Parent Loop BB12_59 Depth=1
                                        #     Parent Loop BB12_61 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_66 Depth 4
                                        #           Child Loop BB12_68 Depth 5
                                        #             Child Loop BB12_158 Depth 6
                                        #             Child Loop BB12_72 Depth 6
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movl	12(%rsp), %eax                  # 4-byte Reload
	addl	208(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	testl	%r13d, %r13d
	je	.LBB12_75
# %bb.64:                               #   in Loop: Header=BB12_63 Depth=3
	cmpl	$0, 28(%rsp)                    # 4-byte Folded Reload
	je	.LBB12_75
# %bb.65:                               #   in Loop: Header=BB12_63 Depth=3
	movq	200(%rsp), %rax                 # 8-byte Reload
	movl	24(%rax), %ecx
	movl	28(%rax), %r10d
	movslq	12(%rsp), %r11                  # 4-byte Folded Reload
	movl	%ecx, %eax
	imull	144(%rsp), %eax                 # 4-byte Folded Reload
	addl	112(%rsp), %eax                 # 4-byte Folded Reload
	imull	%r10d, %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	imull	%r10d, %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	xorl	%ecx, %ecx
	movl	128(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	jmp	.LBB12_66
	.p2align	4, 0x90
.LBB12_74:                              #   in Loop: Header=BB12_66 Depth=4
	movl	184(%rsp), %ecx                 # 4-byte Reload
	incl	%ecx
	movq	88(%rsp), %rax                  # 8-byte Reload
	addq	80(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movl	32(%rsp), %eax                  # 4-byte Reload
	addl	216(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	movq	368(%rsp), %r13                 # 8-byte Reload
	cmpl	%r13d, %ecx
	je	.LBB12_75
.LBB12_66:                              #   Parent Loop BB12_59 Depth=1
                                        #     Parent Loop BB12_61 Depth=2
                                        #       Parent Loop BB12_63 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_68 Depth 5
                                        #             Child Loop BB12_158 Depth 6
                                        #             Child Loop BB12_72 Depth 6
	movl	%ecx, 184(%rsp)                 # 4-byte Spill
	cmpl	$0, 224(%rsp)                   # 4-byte Folded Reload
	je	.LBB12_74
# %bb.67:                               #   in Loop: Header=BB12_66 Depth=4
	movq	200(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %r13
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rdi
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %r8
	vmovss	(%r8,%r11,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	leaq	12(%rdi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	xorl	%ebx, %ebx
	movl	32(%rsp), %r12d                 # 4-byte Reload
	movq	88(%rsp), %r9                   # 8-byte Reload
	jmp	.LBB12_68
	.p2align	4, 0x90
.LBB12_73:                              #   in Loop: Header=BB12_68 Depth=5
	incl	%ebx
	addq	%r10, %r9
	addl	16(%rsp), %r12d                 # 4-byte Folded Reload
	cmpl	28(%rsp), %ebx                  # 4-byte Folded Reload
	je	.LBB12_74
.LBB12_68:                              #   Parent Loop BB12_59 Depth=1
                                        #     Parent Loop BB12_61 Depth=2
                                        #       Parent Loop BB12_63 Depth=3
                                        #         Parent Loop BB12_66 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_158 Depth 6
                                        #             Child Loop BB12_72 Depth 6
	movslq	%r12d, %r15
	cmpq	$3, 136(%rsp)                   # 8-byte Folded Reload
	jae	.LBB12_157
# %bb.69:                               #   in Loop: Header=BB12_68 Depth=5
	xorl	%r14d, %r14d
	jmp	.LBB12_70
	.p2align	4, 0x90
.LBB12_157:                             #   in Loop: Header=BB12_68 Depth=5
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r15,4), %rcx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB12_158:                             #   Parent Loop BB12_59 Depth=1
                                        #     Parent Loop BB12_61 Depth=2
                                        #       Parent Loop BB12_63 Depth=3
                                        #         Parent Loop BB12_66 Depth=4
                                        #           Parent Loop BB12_68 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leaq	(%r9,%r14), %rax
	cltq
	vmovss	-12(%rcx,%r14,4), %xmm1         # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	(%r13,%rax,4), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovss	%xmm1, (%r8,%r11,4)
	leal	1(%rax), %ebp
	movslq	%ebp, %rbp
	vmovss	-8(%rcx,%r14,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vfmadd132ss	(%r13,%rbp,4), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovss	%xmm0, (%r8,%r11,4)
	leal	2(%rax), %ebp
	movslq	%ebp, %rbp
	vmovss	-4(%rcx,%r14,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	(%r13,%rbp,4), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovss	%xmm1, (%r8,%r11,4)
	addl	$3, %eax
	cltq
	vmovss	(%rcx,%r14,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vfmadd132ss	(%r13,%rax,4), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovss	%xmm0, (%r8,%r11,4)
	addq	$4, %r14
	cmpq	%r14, %rsi
	jne	.LBB12_158
.LBB12_70:                              #   in Loop: Header=BB12_68 Depth=5
	testq	%rdx, %rdx
	je	.LBB12_73
# %bb.71:                               #   in Loop: Header=BB12_68 Depth=5
	addq	%r14, %r15
	leaq	(%rdi,%r15,4), %rcx
	addl	%r9d, %r14d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB12_72:                              #   Parent Loop BB12_59 Depth=1
                                        #     Parent Loop BB12_61 Depth=2
                                        #       Parent Loop BB12_63 Depth=3
                                        #         Parent Loop BB12_66 Depth=4
                                        #           Parent Loop BB12_68 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leal	(%r14,%rax), %ebp
	movslq	%ebp, %rbp
	vmovss	(%rcx,%rax,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd231ss	(%r13,%rbp,4), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovss	%xmm0, (%r8,%r11,4)
	incq	%rax
	cmpq	%rax, %rdx
	jne	.LBB12_72
	jmp	.LBB12_73
.LBB12_99:
	cmpl	$0, 192(%rsp)                   # 4-byte Folded Reload
	je	.LBB12_194
# %bb.100:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	24(%rax), %ecx
	movl	28(%rax), %edi
	movslq	68(%rsp), %rax                  # 4-byte Folded Reload
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	-1(%rax), %rsi
	movq	%rsi, 504(%rsp)                 # 8-byte Spill
	movl	%edi, %esi
	movl	%ecx, 528(%rsp)                 # 4-byte Spill
	imull	%ecx, %esi
	movq	%rsi, 536(%rsp)                 # 8-byte Spill
	leaq	-16(%rax), %rcx
	shrq	$4, %rcx
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	incq	%rcx
	movq	%rax, %rsi
	andq	$-16, %rsi
	movq	%rsi, 256(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$3, %eax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	andq	$-2, %rcx
	negq	%rcx
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 464(%rsp)                 # 8-byte Spill
	movq	%rdi, 176(%rsp)                 # 8-byte Spill
	jmp	.LBB12_101
	.p2align	4, 0x90
.LBB12_142:                             #   in Loop: Header=BB12_101 Depth=1
	movq	464(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rax
	incq	%rax
	movq	304(%rsp), %rcx                 # 8-byte Reload
	addl	536(%rsp), %ecx                 # 4-byte Folded Reload
	movq	%rcx, 304(%rsp)                 # 8-byte Spill
	cmpl	344(%rsp), %esi                 # 4-byte Folded Reload
	movq	%rax, 464(%rsp)                 # 8-byte Spill
	je	.LBB12_194
.LBB12_101:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_103 Depth 2
                                        #       Child Loop BB12_105 Depth 3
                                        #         Child Loop BB12_108 Depth 4
                                        #           Child Loop BB12_110 Depth 5
                                        #             Child Loop BB12_148 Depth 6
                                        #             Child Loop BB12_114 Depth 6
                                        #             Child Loop BB12_117 Depth 6
	testl	%r13d, %r13d
	je	.LBB12_142
# %bb.102:                              #   in Loop: Header=BB12_101 Depth=1
	movq	464(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	imulq	536(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movl	528(%rsp), %ecx                 # 4-byte Reload
	imull	%eax, %ecx
	imull	%edi, %ecx
	subl	%edi, %ecx
	movl	%ecx, 520(%rsp)                 # 4-byte Spill
	movl	%eax, %ecx
	imull	%edx, %ecx
                                        # kill: def $eax killed $eax killed $rax def $rax
	imull	%edx, %eax
	movq	%rax, 472(%rsp)                 # 8-byte Spill
	movq	200(%rsp), %rax                 # 8-byte Reload
	movl	24(%rax), %r8d
	movl	28(%rax), %r9d
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	16(%rax), %esi
	movl	24(%rax), %r11d
	movl	28(%rax), %r10d
	movl	%r10d, %ebp
	imull	%esi, %ebp
	movl	%r11d, 532(%rsp)                # 4-byte Spill
	movl	%r11d, %eax
	movq	%rsi, 432(%rsp)                 # 8-byte Spill
	imull	%esi, %eax
	movl	%r8d, 380(%rsp)                 # 4-byte Spill
	movl	%r8d, %esi
	imull	%r9d, %esi
	movq	%rsi, 584(%rsp)                 # 8-byte Spill
	imull	%esi, %ecx
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%r9, 216(%rsp)                  # 8-byte Spill
                                        # kill: def $r9d killed $r9d killed $r9 def $r9
	imull	%edx, %r9d
	movq	%r9, 320(%rsp)                  # 8-byte Spill
	movl	%r10d, %ecx
	imull	256(%rsp), %ecx                 # 4-byte Folded Reload
	movq	%rcx, 512(%rsp)                 # 8-byte Spill
	movl	%r10d, %ecx
	shll	$4, %ecx
	movl	%ecx, 384(%rsp)                 # 4-byte Spill
	movq	%rax, 592(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	imull	%r10d, %eax
	movl	%eax, 328(%rsp)                 # 4-byte Spill
	movl	%r10d, %eax
	shll	$5, %eax
	movl	%eax, 312(%rsp)                 # 4-byte Spill
	leal	(,%r10,4), %r14d
	leal	(%r10,%r10,2), %eax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	leal	(%r10,%r10), %eax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 392(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 400(%rsp)                 # 8-byte Spill
	movl	%ebp, 496(%rsp)                 # 4-byte Spill
	jmp	.LBB12_103
	.p2align	4, 0x90
.LBB12_141:                             #   in Loop: Header=BB12_103 Depth=2
	movq	400(%rsp), %rsi                 # 8-byte Reload
	incq	%rsi
	movl	328(%rsp), %eax                 # 4-byte Reload
	addl	%eax, 384(%rsp)                 # 4-byte Folded Spill
	movq	392(%rsp), %rcx                 # 8-byte Reload
	addl	%eax, %ecx
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	movq	368(%rsp), %r13                 # 8-byte Reload
	movq	%rsi, 400(%rsp)                 # 8-byte Spill
	cmpl	%r13d, %esi
	je	.LBB12_142
.LBB12_103:                             #   Parent Loop BB12_101 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_105 Depth 3
                                        #         Child Loop BB12_108 Depth 4
                                        #           Child Loop BB12_110 Depth 5
                                        #             Child Loop BB12_148 Depth 6
                                        #             Child Loop BB12_114 Depth 6
                                        #             Child Loop BB12_117 Depth 6
	cmpl	$0, 28(%rsp)                    # 4-byte Folded Reload
	je	.LBB12_141
# %bb.104:                              #   in Loop: Header=BB12_103 Depth=2
	movq	400(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	imulq	584(%rsp), %rax                 # 8-byte Folded Reload
	addq	480(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, 424(%rsp)                 # 8-byte Spill
	movq	%rcx, %rsi
	movq	592(%rsp), %rax                 # 8-byte Reload
	imulq	%rax, %rsi
	movq	%rsi, 416(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	imull	%ecx, %eax
	movl	%eax, 332(%rsp)                 # 4-byte Spill
	movq	472(%rsp), %rax                 # 8-byte Reload
	addl	%ecx, %eax
	imull	380(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 488(%rsp)                 # 8-byte Spill
	movl	532(%rsp), %esi                 # 4-byte Reload
	imull	%ecx, %esi
	movq	432(%rsp), %rax                 # 8-byte Reload
	imull	%eax, %esi
	subl	%eax, %esi
	imull	%r10d, %esi
	movl	%esi, 456(%rsp)                 # 4-byte Spill
	movq	392(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 448(%rsp)                 # 4-byte Spill
	movl	384(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 440(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 408(%rsp)                 # 8-byte Spill
	jmp	.LBB12_105
	.p2align	4, 0x90
.LBB12_154:                             #   in Loop: Header=BB12_105 Depth=3
	movq	408(%rsp), %rax                 # 8-byte Reload
	incq	%rax
	movl	496(%rsp), %ebp                 # 4-byte Reload
	addl	%ebp, 440(%rsp)                 # 4-byte Folded Spill
	addl	%ebp, 448(%rsp)                 # 4-byte Folded Spill
	movq	%rax, 408(%rsp)                 # 8-byte Spill
	cmpl	28(%rsp), %eax                  # 4-byte Folded Reload
	je	.LBB12_141
.LBB12_105:                             #   Parent Loop BB12_101 Depth=1
                                        #     Parent Loop BB12_103 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_108 Depth 4
                                        #           Child Loop BB12_110 Depth 5
                                        #             Child Loop BB12_148 Depth 6
                                        #             Child Loop BB12_114 Depth 6
                                        #             Child Loop BB12_117 Depth 6
	addl	%ebp, 456(%rsp)                 # 4-byte Folded Spill
	cmpl	$0, 224(%rsp)                   # 4-byte Folded Reload
	je	.LBB12_154
# %bb.106:                              #   in Loop: Header=BB12_105 Depth=3
	cmpl	$0, 68(%rsp)                    # 4-byte Folded Reload
	je	.LBB12_154
# %bb.107:                              #   in Loop: Header=BB12_105 Depth=3
	movq	408(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	imulq	216(%rsp), %rax                 # 8-byte Folded Reload
	addq	424(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, 352(%rsp)                 # 8-byte Spill
	movq	%rcx, %rsi
	movq	432(%rsp), %rax                 # 8-byte Reload
	imulq	%rax, %rsi
	addq	416(%rsp), %rsi                 # 8-byte Folded Reload
	movq	%rsi, 192(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	imull	%ecx, %eax
	addl	332(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 336(%rsp)                 # 8-byte Spill
	movq	488(%rsp), %rax                 # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	456(%rsp), %eax                 # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	subl	%r10d, %eax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	movl	448(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 296(%rsp)                 # 4-byte Spill
	movl	440(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB12_108
	.p2align	4, 0x90
.LBB12_153:                             #   in Loop: Header=BB12_108 Depth=4
	movq	32(%rsp), %rax                  # 8-byte Reload
	incq	%rax
	incl	44(%rsp)                        # 4-byte Folded Spill
	incl	296(%rsp)                       # 4-byte Folded Spill
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	cmpl	224(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB12_154
.LBB12_108:                             #   Parent Loop BB12_101 Depth=1
                                        #     Parent Loop BB12_103 Depth=2
                                        #       Parent Loop BB12_105 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_110 Depth 5
                                        #             Child Loop BB12_148 Depth 6
                                        #             Child Loop BB12_114 Depth 6
                                        #             Child Loop BB12_117 Depth 6
	testl	%ebx, %ebx
	je	.LBB12_153
# %bb.109:                              #   in Loop: Header=BB12_108 Depth=4
	movq	352(%rsp), %rax                 # 8-byte Reload
	movq	32(%rsp), %rbp                  # 8-byte Reload
	addq	%rbp, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	192(%rsp), %rax                 # 8-byte Reload
	addl	%ebp, %eax
	movq	336(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%rbp), %r11d
	movq	280(%rsp), %rsi                 # 8-byte Reload
	leal	(%rsi,%rbp), %r9d
	cltq
	cmpl	$1, %r10d
	setne	%r12b
	movq	504(%rsp), %r13                 # 8-byte Reload
	movq	%r13, %rsi
	shrq	$32, %rsi
	setne	%cl
	movq	200(%rsp), %rsi                 # 8-byte Reload
	movq	8(%rsi), %rdx
	movq	168(%rsp), %rsi                 # 8-byte Reload
	movq	8(%rsi), %r15
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	8(%rsi), %rbp
	movq	16(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rbp,%rsi,4), %r8
	movq	%r8, 112(%rsp)                  # 8-byte Spill
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	incq	%rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	leaq	(%r15,%rax,4), %rdx
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	leaq	(%r15,%rsi,4), %rsi
	leaq	(%rsi,%rax,4), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	leal	(%r11,%r13), %eax
	cmpl	%r11d, %eax
	setl	%al
	orb	%r12b, %cl
	movq	272(%rsp), %rdx                 # 8-byte Reload
	orb	%al, %cl
	movb	%cl, 184(%rsp)                  # 1-byte Spill
	movq	512(%rsp), %rax                 # 8-byte Reload
	movq	%r9, 56(%rsp)                   # 8-byte Spill
	addl	%r9d, %eax
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	leaq	96(%rbp), %rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movq	%rbp, 136(%rsp)                 # 8-byte Spill
	leaq	12(%rbp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	304(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %r11d
	xorl	%r9d, %r9d
	movl	520(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 88(%rsp)                  # 4-byte Spill
	jmp	.LBB12_110
	.p2align	4, 0x90
.LBB12_152:                             #   in Loop: Header=BB12_110 Depth=5
	incq	%r9
	movq	176(%rsp), %rdi                 # 8-byte Reload
	addl	%edi, %r11d
	cmpq	144(%rsp), %r9                  # 8-byte Folded Reload
	movl	156(%rsp), %ebx                 # 4-byte Reload
	movq	272(%rsp), %rdx                 # 8-byte Reload
	je	.LBB12_153
.LBB12_110:                             #   Parent Loop BB12_101 Depth=1
                                        #     Parent Loop BB12_103 Depth=2
                                        #       Parent Loop BB12_105 Depth=3
                                        #         Parent Loop BB12_108 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_148 Depth 6
                                        #             Child Loop BB12_114 Depth 6
                                        #             Child Loop BB12_117 Depth 6
	cmpl	$15, %ebx
	seta	%al
	movslq	%r11d, %r8
	movl	%r9d, %ecx
	imull	%edx, %ecx
	addl	12(%rsp), %ecx                  # 4-byte Folded Reload
	imull	216(%rsp), %ecx                 # 4-byte Folded Reload
	addl	32(%rsp), %ecx                  # 4-byte Folded Reload
	addl	%edi, 88(%rsp)                  # 4-byte Folded Spill
	movslq	%ecx, %rcx
	movq	80(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rsi,%rcx,4), %r13
	movb	184(%rsp), %cl                  # 1-byte Reload
	xorb	$1, %cl
	testb	%cl, %al
	jne	.LBB12_143
.LBB12_111:                             #   in Loop: Header=BB12_110 Depth=5
	xorl	%ecx, %ecx
	movq	56(%rsp), %r12                  # 8-byte Reload
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	movq	16(%rsp), %rbx                  # 8-byte Reload
.LBB12_112:                             #   in Loop: Header=BB12_110 Depth=5
	movq	%rcx, %rax
	notq	%rax
	addq	%rbx, %rax
	movq	208(%rsp), %rsi                 # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB12_115
# %bb.113:                              #   in Loop: Header=BB12_110 Depth=5
	movq	136(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%r8,4), %rdx
	.p2align	4, 0x90
.LBB12_114:                             #   Parent Loop BB12_101 Depth=1
                                        #     Parent Loop BB12_103 Depth=2
                                        #       Parent Loop BB12_105 Depth=3
                                        #         Parent Loop BB12_108 Depth=4
                                        #           Parent Loop BB12_110 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	addl	%r10d, %r12d
	vmovss	(%r13), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%r12d, %rdi
	vmovss	(%r15,%rdi,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	(%rdx,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rdx,%rcx,4)
	incq	%rcx
	decq	%rsi
	jne	.LBB12_114
.LBB12_115:                             #   in Loop: Header=BB12_110 Depth=5
	cmpq	$3, %rax
	jb	.LBB12_152
# %bb.116:                              #   in Loop: Header=BB12_110 Depth=5
	movq	120(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r8,4), %rbp
	leal	(%r14,%r12), %r8d
	movq	288(%rsp), %rax                 # 8-byte Reload
	addl	%r12d, %eax
	movq	264(%rsp), %rdx                 # 8-byte Reload
	addl	%r12d, %edx
	addl	%r10d, %r12d
	.p2align	4, 0x90
.LBB12_117:                             #   Parent Loop BB12_101 Depth=1
                                        #     Parent Loop BB12_103 Depth=2
                                        #       Parent Loop BB12_105 Depth=3
                                        #         Parent Loop BB12_108 Depth=4
                                        #           Parent Loop BB12_110 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vmovss	(%r13), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%r12d, %r12
	vmovss	(%r15,%r12,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	-12(%rbp,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, -12(%rbp,%rcx,4)
	vmovss	(%r13), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%edx, %rdx
	vmovss	(%r15,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	-8(%rbp,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, -8(%rbp,%rcx,4)
	vmovss	(%r13), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	cltq
	vmovss	(%r15,%rax,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	-4(%rbp,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, -4(%rbp,%rcx,4)
	vmovss	(%r13), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%r8d, %r8
	vmovss	(%r15,%r8,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	(%rbp,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rbp,%rcx,4)
	addq	$4, %rcx
	addl	%r14d, %r8d
	addl	%r14d, %eax
	addl	%r14d, %edx
	addl	%r14d, %r12d
	cmpq	%rcx, %rbx
	jne	.LBB12_117
	jmp	.LBB12_152
	.p2align	4, 0x90
.LBB12_143:                             #   in Loop: Header=BB12_110 Depth=5
	movl	%r9d, %eax
	imull	%edi, %eax
	addl	72(%rsp), %eax                  # 4-byte Folded Reload
	cltq
	movq	136(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rax,4), %rcx
	movq	112(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rax,4), %rdx
	movq	320(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	imull	%r9d, %eax
	addl	128(%rsp), %eax                 # 4-byte Folded Reload
	cltq
	movq	48(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rsi,%rax,4), %rax
	cmpq	%rcx, %rax
	seta	%sil
	cmpq	%rdx, %r13
	setb	%bl
	cmpq	160(%rsp), %rcx                 # 8-byte Folded Reload
	setb	%al
	cmpq	%rdx, 104(%rsp)                 # 8-byte Folded Reload
	setb	%dl
	testb	%bl, %sil
	jne	.LBB12_111
# %bb.144:                              #   in Loop: Header=BB12_110 Depth=5
	movl	$0, %ecx
	movq	56(%rsp), %r12                  # 8-byte Reload
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	andb	%dl, %al
	movq	16(%rsp), %rbx                  # 8-byte Reload
	jne	.LBB12_112
# %bb.145:                              #   in Loop: Header=BB12_110 Depth=5
	cmpq	$0, 248(%rsp)                   # 8-byte Folded Reload
	je	.LBB12_146
# %bb.147:                              #   in Loop: Header=BB12_110 Depth=5
	movq	240(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r8,4), %rcx
	vbroadcastss	(%r13), %ymm0
	movq	360(%rsp), %rdx                 # 8-byte Reload
	movl	296(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %esi
	movl	44(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %edi
	xorl	%eax, %eax
	movl	312(%rsp), %ebp                 # 4-byte Reload
	.p2align	4, 0x90
.LBB12_148:                             #   Parent Loop BB12_101 Depth=1
                                        #     Parent Loop BB12_103 Depth=2
                                        #       Parent Loop BB12_105 Depth=3
                                        #         Parent Loop BB12_108 Depth=4
                                        #           Parent Loop BB12_110 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movslq	%esi, %rsi
	vmovups	(%r15,%rsi,4), %ymm1
	vmovups	32(%r15,%rsi,4), %ymm2
	vfmadd213ps	-96(%rcx,%rax,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	-64(%rcx,%rax,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vmovups	%ymm1, -96(%rcx,%rax,4)
	vmovups	%ymm2, -64(%rcx,%rax,4)
	movslq	%edi, %rdi
	vmovups	(%r15,%rdi,4), %ymm1
	vmovups	32(%r15,%rdi,4), %ymm2
	vfmadd213ps	-32(%rcx,%rax,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	(%rcx,%rax,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vmovups	%ymm1, -32(%rcx,%rax,4)
	vmovups	%ymm2, (%rcx,%rax,4)
	addq	$32, %rax
	addl	%ebp, %edi
	addl	%ebp, %esi
	addq	$2, %rdx
	jne	.LBB12_148
# %bb.149:                              #   in Loop: Header=BB12_110 Depth=5
	testb	$1, 232(%rsp)                   # 1-byte Folded Reload
	je	.LBB12_151
.LBB12_150:                             #   in Loop: Header=BB12_110 Depth=5
	movslq	88(%rsp), %rcx                  # 4-byte Folded Reload
	movl	%r10d, %edx
	imull	%eax, %edx
	addl	56(%rsp), %edx                  # 4-byte Folded Reload
	addq	%rax, %rcx
	addl	%r10d, %edx
	vbroadcastss	(%r13), %ymm0
	movslq	%edx, %rax
	vmovups	(%r15,%rax,4), %ymm1
	vmovups	32(%r15,%rax,4), %ymm2
	movq	136(%rsp), %rax                 # 8-byte Reload
	vfmadd213ps	(%rax,%rcx,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	32(%rax,%rcx,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vmovups	%ymm1, (%rax,%rcx,4)
	vmovups	%ymm2, 32(%rax,%rcx,4)
.LBB12_151:                             #   in Loop: Header=BB12_110 Depth=5
	movq	256(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movl	40(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %r12d
	cmpq	%rbx, %rax
	je	.LBB12_152
	jmp	.LBB12_112
.LBB12_146:                             #   in Loop: Header=BB12_110 Depth=5
	xorl	%eax, %eax
	testb	$1, 232(%rsp)                   # 1-byte Folded Reload
	jne	.LBB12_150
	jmp	.LBB12_151
.LBB12_31:
	movq	%rdx, %rbp
	testl	%r13d, %r13d
	movl	192(%rsp), %edx                 # 4-byte Reload
	je	.LBB12_194
# %bb.32:
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	16(%rax), %ecx
	movl	24(%rax), %edi
	movl	%edi, 240(%rsp)                 # 4-byte Spill
	movl	28(%rax), %esi
	movl	%esi, %eax
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	imull	%ecx, %eax
	movl	%eax, 296(%rsp)                 # 4-byte Spill
	movslq	%edx, %r8
	movq	%r8, %rax
	andq	$-2, %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	%rbp, %rax
	leal	(%rbp,%rbp), %ecx
	movl	%ecx, 248(%rsp)                 # 4-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movl	%esi, 208(%rsp)                 # 4-byte Spill
	movq	%r8, 128(%rsp)                  # 8-byte Spill
	jmp	.LBB12_33
	.p2align	4, 0x90
.LBB12_176:                             #   in Loop: Header=BB12_33 Depth=1
	movq	32(%rsp), %rax                  # 8-byte Reload
	incl	%eax
	incl	40(%rsp)                        # 4-byte Folded Spill
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	cmpl	368(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB12_194
.LBB12_33:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_35 Depth 2
                                        #       Child Loop BB12_37 Depth 3
                                        #         Child Loop BB12_40 Depth 4
                                        #           Child Loop BB12_42 Depth 5
                                        #             Child Loop BB12_178 Depth 6
	cmpl	$0, 28(%rsp)                    # 4-byte Folded Reload
	movl	68(%rsp), %eax                  # 4-byte Reload
	je	.LBB12_176
# %bb.34:                               #   in Loop: Header=BB12_33 Depth=1
	movl	240(%rsp), %edi                 # 4-byte Reload
	imull	32(%rsp), %edi                  # 4-byte Folded Reload
	movl	44(%rsp), %ecx                  # 4-byte Reload
	imull	%ecx, %edi
	subl	%ecx, %edi
	imull	%esi, %edi
	movl	%edi, 232(%rsp)                 # 4-byte Spill
	movl	$0, 120(%rsp)                   # 4-byte Folded Spill
	jmp	.LBB12_35
	.p2align	4, 0x90
.LBB12_175:                             #   in Loop: Header=BB12_35 Depth=2
	movl	120(%rsp), %ecx                 # 4-byte Reload
	incl	%ecx
	movl	%ecx, 120(%rsp)                 # 4-byte Spill
	cmpl	28(%rsp), %ecx                  # 4-byte Folded Reload
	je	.LBB12_176
.LBB12_35:                              #   Parent Loop BB12_33 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_37 Depth 3
                                        #         Child Loop BB12_40 Depth 4
                                        #           Child Loop BB12_42 Depth 5
                                        #             Child Loop BB12_178 Depth 6
	movl	232(%rsp), %ecx                 # 4-byte Reload
	addl	296(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 232(%rsp)                 # 4-byte Spill
	cmpl	$0, 224(%rsp)                   # 4-byte Folded Reload
	je	.LBB12_175
# %bb.36:                               #   in Loop: Header=BB12_35 Depth=2
	movl	232(%rsp), %ecx                 # 4-byte Reload
                                        # kill: def $ecx killed $ecx def $rcx
	subl	%esi, %ecx
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB12_37
	.p2align	4, 0x90
.LBB12_174:                             #   in Loop: Header=BB12_37 Depth=3
	movq	56(%rsp), %rcx                  # 8-byte Reload
	incl	%ecx
	movq	%rcx, %rax
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	cmpl	224(%rsp), %ecx                 # 4-byte Folded Reload
	movl	68(%rsp), %eax                  # 4-byte Reload
	je	.LBB12_175
.LBB12_37:                              #   Parent Loop BB12_33 Depth=1
                                        #     Parent Loop BB12_35 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_40 Depth 4
                                        #           Child Loop BB12_42 Depth 5
                                        #             Child Loop BB12_178 Depth 6
	testl	%eax, %eax
	je	.LBB12_174
# %bb.38:                               #   in Loop: Header=BB12_37 Depth=3
	testl	%ebx, %ebx
	je	.LBB12_174
# %bb.39:                               #   in Loop: Header=BB12_37 Depth=3
	movq	256(%rsp), %rax                 # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 288(%rsp)                 # 4-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	28(%rax), %edi
	movq	200(%rsp), %rcx                 # 8-byte Reload
	movl	28(%rcx), %ecx
	movl	24(%rax), %r10d
	movl	%edi, 160(%rsp)                 # 4-byte Spill
	imull	%edi, %r10d
	movl	248(%rsp), %eax                 # 4-byte Reload
	movl	%ecx, 88(%rsp)                  # 4-byte Spill
	imull	%ecx, %eax
	movl	%eax, 264(%rsp)                 # 4-byte Spill
	movl	%r10d, %eax
	negl	%eax
	movl	%eax, 144(%rsp)                 # 4-byte Spill
	leal	(%r10,%r10), %r12d
	movl	$0, 48(%rsp)                    # 4-byte Folded Spill
	movl	120(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB12_40
	.p2align	4, 0x90
.LBB12_173:                             #   in Loop: Header=BB12_40 Depth=4
	movq	104(%rsp), %rdi                 # 8-byte Reload
	leal	1(%rdi), %eax
	movq	%rdx, %rbp
	addl	%edx, 72(%rsp)                  # 4-byte Folded Spill
	movl	48(%rsp), %ecx                  # 4-byte Reload
	addl	160(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 48(%rsp)                  # 4-byte Spill
	cmpl	320(%rsp), %edi                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movl	192(%rsp), %edx                 # 4-byte Reload
	je	.LBB12_174
.LBB12_40:                              #   Parent Loop BB12_33 Depth=1
                                        #     Parent Loop BB12_35 Depth=2
                                        #       Parent Loop BB12_37 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_42 Depth 5
                                        #             Child Loop BB12_178 Depth 6
	testl	%edx, %edx
	movq	%rbp, %rdx
	je	.LBB12_173
# %bb.41:                               #   in Loop: Header=BB12_40 Depth=4
	movl	160(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	movq	104(%rsp), %rax                 # 8-byte Reload
	imull	%eax, %ecx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	imull	%edx, %eax
	addl	120(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	movq	200(%rsp), %rax                 # 8-byte Reload
	movl	24(%rax), %edi
	movq	8(%rax), %r13
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rbp
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movl	%esi, %r11d
	movl	40(%rsp), %esi                  # 4-byte Reload
	imull	%edi, %esi
	movl	72(%rsp), %r14d                 # 4-byte Reload
	addl	%r14d, %esi
	movl	88(%rsp), %r9d                  # 4-byte Reload
	imull	%r9d, %esi
	movq	56(%rsp), %r15                  # 8-byte Reload
	addl	%r15d, %esi
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	movl	%r11d, %esi
	movl	264(%rsp), %r11d                # 4-byte Reload
	imull	%edi, %r11d
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%edi, 216(%rsp)                 # 4-byte Spill
	imull	%edi, %eax
	addl	%r14d, %eax
	imull	%r9d, %eax
	addl	%r15d, %eax
	movl	%eax, 176(%rsp)                 # 4-byte Spill
	xorl	%r9d, %r9d
	movl	48(%rsp), %r14d                 # 4-byte Reload
	movl	288(%rsp), %eax                 # 4-byte Reload
	jmp	.LBB12_42
	.p2align	4, 0x90
.LBB12_172:                             #   in Loop: Header=BB12_42 Depth=5
	incl	%r9d
	incl	%r14d
	cmpl	%ebx, %r9d
	movl	16(%rsp), %eax                  # 4-byte Reload
	je	.LBB12_173
.LBB12_42:                              #   Parent Loop BB12_33 Depth=1
                                        #     Parent Loop BB12_35 Depth=2
                                        #       Parent Loop BB12_37 Depth=3
                                        #         Parent Loop BB12_40 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_178 Depth 6
	addl	%esi, %eax
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	movslq	%eax, %r15
	cmpl	%edx, 136(%rsp)                 # 4-byte Folded Reload
	jae	.LBB12_177
# %bb.43:                               #   in Loop: Header=BB12_42 Depth=5
	movq	184(%rsp), %rax                 # 8-byte Reload
	leal	(%r9,%rax), %edi
	subl	%r10d, %edi
	xorl	%eax, %eax
	testb	$1, %r8b
	je	.LBB12_172
	jmp	.LBB12_171
	.p2align	4, 0x90
.LBB12_177:                             #   in Loop: Header=BB12_42 Depth=5
	movl	%r14d, %edi
	movl	176(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %r8d
	movl	12(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %esi
	xorl	%eax, %eax
	movq	112(%rsp), %rbx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB12_178:                             #   Parent Loop BB12_33 Depth=1
                                        #     Parent Loop BB12_35 Depth=2
                                        #       Parent Loop BB12_37 Depth=3
                                        #         Parent Loop BB12_40 Depth=4
                                        #           Parent Loop BB12_42 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movslq	%r8d, %r8
	vmovss	(%r13,%r8,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	vmovss	(%rbp,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%edi, %rdi
	vfmadd213ss	(%rcx,%rdi,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rcx,%rdi,4)
	leal	(%r10,%rdi), %edx
	movslq	%esi, %rsi
	vmovss	(%r13,%rsi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	(%rbp,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%edx, %rdx
	vfmadd213ss	(%rcx,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rcx,%rdx,4)
	addq	$2, %rax
	addl	%r11d, %esi
	addl	%r11d, %r8d
	addl	%r12d, %edi
	addq	$-2, %rbx
	jne	.LBB12_178
# %bb.169:                              #   in Loop: Header=BB12_42 Depth=5
	addl	144(%rsp), %edi                 # 4-byte Folded Reload
	movq	272(%rsp), %rdx                 # 8-byte Reload
	movl	156(%rsp), %ebx                 # 4-byte Reload
	movl	208(%rsp), %esi                 # 4-byte Reload
	movq	128(%rsp), %r8                  # 8-byte Reload
	testb	$1, %r8b
	je	.LBB12_172
.LBB12_171:                             #   in Loop: Header=BB12_42 Depth=5
	addl	%r10d, %edi
	imull	%edx, %eax
	addl	32(%rsp), %eax                  # 4-byte Folded Reload
	imull	216(%rsp), %eax                 # 4-byte Folded Reload
	addl	80(%rsp), %eax                  # 4-byte Folded Reload
	imull	88(%rsp), %eax                  # 4-byte Folded Reload
	addl	56(%rsp), %eax                  # 4-byte Folded Reload
	cltq
	vmovss	(%r13,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	(%rbp,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%edi, %rax
	vfmadd213ss	(%rcx,%rax,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rcx,%rax,4)
	jmp	.LBB12_172
.LBB12_12:
	testl	%r13d, %r13d
	movl	192(%rsp), %ecx                 # 4-byte Reload
	je	.LBB12_194
# %bb.13:
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	16(%rax), %esi
	movl	24(%rax), %edi
	movl	28(%rax), %r15d
	movl	%r15d, %ebp
	imull	%esi, %ebp
	movslq	68(%rsp), %rax                  # 4-byte Folded Reload
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movl	%edi, 472(%rsp)                 # 4-byte Spill
	movl	%esi, 392(%rsp)                 # 4-byte Spill
	imull	%esi, %edi
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	-16(%rax), %rsi
	shrq	$4, %rsi
	movq	%rsi, 256(%rsp)                 # 8-byte Spill
	leaq	1(%rsi), %r8
	movq	%rax, %rsi
	andq	$-16, %rsi
	movq	%rsi, 232(%rsp)                 # 8-byte Spill
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	imull	%r15d, %esi
	movq	%rsi, 496(%rsp)                 # 8-byte Spill
	movl	%ebx, %esi
	andl	$3, %esi
	movq	%rsi, 208(%rsp)                 # 8-byte Spill
	movl	%r15d, %esi
	shll	$4, %esi
	movl	%esi, 328(%rsp)                 # 4-byte Spill
	movl	%edi, 380(%rsp)                 # 4-byte Spill
	imull	%r15d, %edi
	movl	%edi, 480(%rsp)                 # 4-byte Spill
	movl	%r15d, %r9d
	shll	$5, %r9d
	movq	%r8, %rsi
	movq	%r8, 248(%rsp)                  # 8-byte Spill
	andq	$-2, %r8
	negq	%r8
	movq	%r8, 312(%rsp)                  # 8-byte Spill
	decq	%rax
	movq	%rax, 432(%rsp)                 # 8-byte Spill
	leal	(,%r15,4), %r14d
	leal	(%r15,%r15,2), %eax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	leal	(%r15,%r15), %eax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	movl	$0, 304(%rsp)                   # 4-byte Folded Spill
	movl	%ebp, 488(%rsp)                 # 4-byte Spill
	jmp	.LBB12_14
	.p2align	4, 0x90
.LBB12_180:                             #   in Loop: Header=BB12_14 Depth=1
	movl	304(%rsp), %edi                 # 4-byte Reload
	incl	%edi
	movl	480(%rsp), %eax                 # 4-byte Reload
	addl	%eax, 328(%rsp)                 # 4-byte Folded Spill
	movq	384(%rsp), %rsi                 # 8-byte Reload
	addl	%eax, %esi
	movq	%rsi, 384(%rsp)                 # 8-byte Spill
	movl	%edi, 304(%rsp)                 # 4-byte Spill
	cmpl	368(%rsp), %edi                 # 4-byte Folded Reload
	je	.LBB12_194
.LBB12_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_16 Depth 2
                                        #       Child Loop BB12_18 Depth 3
                                        #         Child Loop BB12_21 Depth 4
                                        #           Child Loop BB12_23 Depth 5
                                        #             Child Loop BB12_186 Depth 6
                                        #             Child Loop BB12_27 Depth 6
                                        #             Child Loop BB12_30 Depth 6
	cmpl	$0, 28(%rsp)                    # 4-byte Folded Reload
	je	.LBB12_180
# %bb.15:                               #   in Loop: Header=BB12_14 Depth=1
	movl	380(%rsp), %esi                 # 4-byte Reload
	movl	304(%rsp), %eax                 # 4-byte Reload
	imull	%eax, %esi
	movl	%esi, 400(%rsp)                 # 4-byte Spill
	movl	472(%rsp), %esi                 # 4-byte Reload
	imull	%eax, %esi
	movl	392(%rsp), %eax                 # 4-byte Reload
	imull	%eax, %esi
	subl	%eax, %esi
	imull	%r15d, %esi
	movl	%esi, 332(%rsp)                 # 4-byte Spill
	movl	$0, 280(%rsp)                   # 4-byte Folded Spill
	movq	384(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 424(%rsp)                 # 4-byte Spill
	movl	328(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 416(%rsp)                 # 4-byte Spill
	jmp	.LBB12_16
	.p2align	4, 0x90
.LBB12_179:                             #   in Loop: Header=BB12_16 Depth=2
	movl	280(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	movl	488(%rsp), %ebp                 # 4-byte Reload
	addl	%ebp, 416(%rsp)                 # 4-byte Folded Spill
	addl	%ebp, 424(%rsp)                 # 4-byte Folded Spill
	movl	%eax, 280(%rsp)                 # 4-byte Spill
	cmpl	28(%rsp), %eax                  # 4-byte Folded Reload
	je	.LBB12_180
.LBB12_16:                              #   Parent Loop BB12_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_18 Depth 3
                                        #         Child Loop BB12_21 Depth 4
                                        #           Child Loop BB12_23 Depth 5
                                        #             Child Loop BB12_186 Depth 6
                                        #             Child Loop BB12_27 Depth 6
                                        #             Child Loop BB12_30 Depth 6
	addl	%ebp, 332(%rsp)                 # 4-byte Folded Spill
	cmpl	$0, 224(%rsp)                   # 4-byte Folded Reload
	je	.LBB12_179
# %bb.17:                               #   in Loop: Header=BB12_16 Depth=2
	movl	392(%rsp), %eax                 # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	imull	280(%rsp), %eax                 # 4-byte Folded Reload
	addl	400(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 448(%rsp)                 # 8-byte Spill
	movl	332(%rsp), %eax                 # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	subl	%r15d, %eax
	movq	%rax, 440(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movl	424(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	movl	416(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 240(%rsp)                 # 4-byte Spill
	jmp	.LBB12_18
	.p2align	4, 0x90
.LBB12_192:                             #   in Loop: Header=BB12_18 Depth=3
	movq	80(%rsp), %rax                  # 8-byte Reload
	incl	%eax
	incl	240(%rsp)                       # 4-byte Folded Spill
	incl	44(%rsp)                        # 4-byte Folded Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	cmpl	224(%rsp), %eax                 # 4-byte Folded Reload
	movl	192(%rsp), %ecx                 # 4-byte Reload
	je	.LBB12_179
.LBB12_18:                              #   Parent Loop BB12_14 Depth=1
                                        #     Parent Loop BB12_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_21 Depth 4
                                        #           Child Loop BB12_23 Depth 5
                                        #             Child Loop BB12_186 Depth 6
                                        #             Child Loop BB12_27 Depth 6
                                        #             Child Loop BB12_30 Depth 6
	testl	%ecx, %ecx
	je	.LBB12_192
# %bb.19:                               #   in Loop: Header=BB12_18 Depth=3
	cmpl	$0, 68(%rsp)                    # 4-byte Folded Reload
	je	.LBB12_192
# %bb.20:                               #   in Loop: Header=BB12_18 Depth=3
	movq	448(%rsp), %rax                 # 8-byte Reload
	movq	80(%rsp), %r12                  # 8-byte Reload
	addl	%r12d, %eax
	movslq	%eax, %r11
	movq	440(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %r13d
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	24(%rax), %esi
	movl	28(%rax), %edi
	movq	200(%rsp), %rax                 # 8-byte Reload
	movl	24(%rax), %ebp
	movl	28(%rax), %ecx
	movq	432(%rsp), %r10                 # 8-byte Reload
	movq	%r10, %rax
	shrq	$32, %rax
	setne	136(%rsp)                       # 1-byte Folded Spill
	cmpl	$1, %r15d
	setne	%r8b
	movl	%edi, %eax
	movl	%esi, 512(%rsp)                 # 4-byte Spill
	imull	%esi, %eax
	movq	%rax, 336(%rsp)                 # 8-byte Spill
	movl	304(%rsp), %esi                 # 4-byte Reload
	movl	%esi, %eax
	imull	%ebp, %eax
	addl	280(%rsp), %eax                 # 4-byte Folded Reload
	imull	%ecx, %eax
	addl	%r12d, %eax
	movq	%rax, 408(%rsp)                 # 8-byte Spill
	movl	%ebp, 504(%rsp)                 # 4-byte Spill
	movl	%ebp, %eax
	imull	%edx, %eax
	imull	%ecx, %eax
	movq	%rax, 456(%rsp)                 # 8-byte Spill
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, %eax
	imull	%edx, %eax
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	leal	(%r11,%r10), %ecx
	movq	%r11, 520(%rsp)                 # 8-byte Spill
	cmpl	%r11d, %ecx
	setl	%cl
	orb	136(%rsp), %r8b                 # 1-byte Folded Reload
	orb	%cl, %r8b
	movb	%r8b, 176(%rsp)                 # 1-byte Spill
	movq	496(%rsp), %rax                 # 8-byte Reload
	movq	%r13, 88(%rsp)                  # 8-byte Spill
	addl	%r13d, %eax
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 360(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 352(%rsp)                 # 8-byte Spill
	movq	%rdi, 216(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB12_21
	.p2align	4, 0x90
.LBB12_191:                             #   in Loop: Header=BB12_21 Depth=4
	movq	352(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rax
	incq	%rax
	movq	360(%rsp), %rcx                 # 8-byte Reload
	addl	336(%rsp), %ecx                 # 4-byte Folded Reload
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	cmpl	344(%rsp), %esi                 # 4-byte Folded Reload
	movq	%rax, 352(%rsp)                 # 8-byte Spill
	je	.LBB12_192
.LBB12_21:                              #   Parent Loop BB12_14 Depth=1
                                        #     Parent Loop BB12_16 Depth=2
                                        #       Parent Loop BB12_18 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_23 Depth 5
                                        #             Child Loop BB12_186 Depth 6
                                        #             Child Loop BB12_27 Depth 6
                                        #             Child Loop BB12_30 Depth 6
	testl	%ebx, %ebx
	je	.LBB12_191
# %bb.22:                               #   in Loop: Header=BB12_21 Depth=4
	movq	352(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	imulq	336(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	imulq	456(%rsp), %rcx                 # 8-byte Folded Reload
	addq	408(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	imull	%edx, %ecx
	addl	304(%rsp), %ecx                 # 4-byte Folded Reload
	imull	504(%rsp), %ecx                 # 4-byte Folded Reload
	addl	280(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	movl	512(%rsp), %ecx                 # 4-byte Reload
	imull	%eax, %ecx
	imull	%edi, %ecx
	subl	%edi, %ecx
	movl	%ecx, 56(%rsp)                  # 4-byte Spill
	movq	200(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rcx
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rbp
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rsi
	movq	16(%rsp), %r8                   # 8-byte Reload
	leaq	(%rsi,%r8,4), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	leaq	1(%rcx), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	520(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rbp,%rcx,4), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	leaq	(%rbp,%r8,4), %rax
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	96(%rsi), %rax
	movq	%rax, 296(%rsp)                 # 8-byte Spill
	movq	%rsi, 136(%rsp)                 # 8-byte Spill
	leaq	12(%rsi), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	360(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %r13d
	xorl	%r11d, %r11d
	jmp	.LBB12_23
	.p2align	4, 0x90
.LBB12_190:                             #   in Loop: Header=BB12_23 Depth=5
	incq	%r11
	movq	216(%rsp), %rdi                 # 8-byte Reload
	addl	%edi, %r13d
	cmpq	144(%rsp), %r11                 # 8-byte Folded Reload
	movq	272(%rsp), %rdx                 # 8-byte Reload
	movl	156(%rsp), %ebx                 # 4-byte Reload
	je	.LBB12_191
.LBB12_23:                              #   Parent Loop BB12_14 Depth=1
                                        #     Parent Loop BB12_16 Depth=2
                                        #       Parent Loop BB12_18 Depth=3
                                        #         Parent Loop BB12_21 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_186 Depth 6
                                        #             Child Loop BB12_27 Depth 6
                                        #             Child Loop BB12_30 Depth 6
	cmpl	$15, %ebx
	seta	%al
	movslq	%r13d, %r8
	addl	%edi, 56(%rsp)                  # 4-byte Folded Spill
	movl	%r11d, %ecx
	imull	%edx, %ecx
	addl	32(%rsp), %ecx                  # 4-byte Folded Reload
	imull	12(%rsp), %ecx                  # 4-byte Folded Reload
	addl	80(%rsp), %ecx                  # 4-byte Folded Reload
	movslq	%ecx, %rcx
	movq	184(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rcx,4), %r10
	movb	176(%rsp), %cl                  # 1-byte Reload
	xorb	$1, %cl
	testb	%cl, %al
	jne	.LBB12_181
.LBB12_24:                              #   in Loop: Header=BB12_23 Depth=5
	xorl	%ecx, %ecx
	movq	88(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.LBB12_25:                              #   in Loop: Header=BB12_23 Depth=5
	movq	%rcx, %rax
	notq	%rax
	addq	%rbx, %rax
	movq	208(%rsp), %rdi                 # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB12_28
# %bb.26:                               #   in Loop: Header=BB12_23 Depth=5
	movq	136(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rsi,%r8,4), %rsi
	.p2align	4, 0x90
.LBB12_27:                              #   Parent Loop BB12_14 Depth=1
                                        #     Parent Loop BB12_16 Depth=2
                                        #       Parent Loop BB12_18 Depth=3
                                        #         Parent Loop BB12_21 Depth=4
                                        #           Parent Loop BB12_23 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	addl	%r15d, %edx
	vmovss	(%r10), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%edx, %rbx
	vmovss	(%rbp,%rbx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	(%rsi,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rsi,%rcx,4)
	incq	%rcx
	decq	%rdi
	jne	.LBB12_27
.LBB12_28:                              #   in Loop: Header=BB12_23 Depth=5
	cmpq	$3, %rax
	jb	.LBB12_190
# %bb.29:                               #   in Loop: Header=BB12_23 Depth=5
	movq	120(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r8,4), %rbx
	leal	(%r14,%rdx), %edi
	movq	288(%rsp), %rax                 # 8-byte Reload
	addl	%edx, %eax
	movq	264(%rsp), %rsi                 # 8-byte Reload
	addl	%edx, %esi
	addl	%r15d, %edx
	.p2align	4, 0x90
.LBB12_30:                              #   Parent Loop BB12_14 Depth=1
                                        #     Parent Loop BB12_16 Depth=2
                                        #       Parent Loop BB12_18 Depth=3
                                        #         Parent Loop BB12_21 Depth=4
                                        #           Parent Loop BB12_23 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vmovss	(%r10), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%edx, %rdx
	vmovss	(%rbp,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	-12(%rbx,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, -12(%rbx,%rcx,4)
	vmovss	(%r10), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%esi, %rsi
	vmovss	(%rbp,%rsi,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	-8(%rbx,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, -8(%rbx,%rcx,4)
	vmovss	(%r10), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	cltq
	vmovss	(%rbp,%rax,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	-4(%rbx,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, -4(%rbx,%rcx,4)
	vmovss	(%r10), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%edi, %rdi
	vmovss	(%rbp,%rdi,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	(%rbx,%rcx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rbx,%rcx,4)
	addq	$4, %rcx
	addl	%r14d, %edi
	addl	%r14d, %eax
	addl	%r14d, %esi
	addl	%r14d, %edx
	cmpq	%rcx, %r12
	jne	.LBB12_30
	jmp	.LBB12_190
	.p2align	4, 0x90
.LBB12_181:                             #   in Loop: Header=BB12_23 Depth=5
	movl	%r11d, %eax
	imull	%edi, %eax
	addl	128(%rsp), %eax                 # 4-byte Folded Reload
	cltq
	movq	136(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rax,4), %rcx
	movq	48(%rsp), %rdx                  # 8-byte Reload
	leaq	(%rdx,%rax,4), %rdx
	movq	320(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	imull	%r11d, %eax
	addl	112(%rsp), %eax                 # 4-byte Folded Reload
	cltq
	movq	104(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rsi,%rax,4), %rax
	cmpq	%rcx, %rax
	seta	%dil
	cmpq	%rdx, %r10
	setb	%bl
	cmpq	72(%rsp), %rcx                  # 8-byte Folded Reload
	setb	%al
	cmpq	%rdx, 160(%rsp)                 # 8-byte Folded Reload
	setb	%sil
	testb	%bl, %dil
	jne	.LBB12_24
# %bb.182:                              #   in Loop: Header=BB12_23 Depth=5
	movl	$0, %ecx
	movq	88(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andb	%sil, %al
	movq	16(%rsp), %rbx                  # 8-byte Reload
	jne	.LBB12_25
# %bb.183:                              #   in Loop: Header=BB12_23 Depth=5
	cmpq	$0, 256(%rsp)                   # 8-byte Folded Reload
	je	.LBB12_184
# %bb.185:                              #   in Loop: Header=BB12_23 Depth=5
	movq	296(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r8,4), %rcx
	vbroadcastss	(%r10), %ymm0
	movq	312(%rsp), %rdx                 # 8-byte Reload
	movl	44(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %esi
	movl	240(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %edi
	xorl	%eax, %eax
	movq	16(%rsp), %rbx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB12_186:                             #   Parent Loop BB12_14 Depth=1
                                        #     Parent Loop BB12_16 Depth=2
                                        #       Parent Loop BB12_18 Depth=3
                                        #         Parent Loop BB12_21 Depth=4
                                        #           Parent Loop BB12_23 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movslq	%esi, %rsi
	vmovups	(%rbp,%rsi,4), %ymm1
	vmovups	32(%rbp,%rsi,4), %ymm2
	vfmadd213ps	-96(%rcx,%rax,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	-64(%rcx,%rax,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vmovups	%ymm1, -96(%rcx,%rax,4)
	vmovups	%ymm2, -64(%rcx,%rax,4)
	movslq	%edi, %rdi
	vmovups	(%rbp,%rdi,4), %ymm1
	vmovups	32(%rbp,%rdi,4), %ymm2
	vfmadd213ps	-32(%rcx,%rax,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	(%rcx,%rax,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vmovups	%ymm1, -32(%rcx,%rax,4)
	vmovups	%ymm2, (%rcx,%rax,4)
	addq	$32, %rax
	addl	%r9d, %edi
	addl	%r9d, %esi
	addq	$2, %rdx
	jne	.LBB12_186
# %bb.187:                              #   in Loop: Header=BB12_23 Depth=5
	testb	$1, 248(%rsp)                   # 1-byte Folded Reload
	je	.LBB12_189
.LBB12_188:                             #   in Loop: Header=BB12_23 Depth=5
	movslq	56(%rsp), %rcx                  # 4-byte Folded Reload
	movl	%r15d, %edx
	imull	%eax, %edx
	addl	88(%rsp), %edx                  # 4-byte Folded Reload
	addl	%r15d, %edx
	addq	%rax, %rcx
	vbroadcastss	(%r10), %ymm0
	movslq	%edx, %rax
	vmovups	(%rbp,%rax,4), %ymm1
	vmovups	32(%rbp,%rax,4), %ymm2
	movq	136(%rsp), %rax                 # 8-byte Reload
	vfmadd213ps	(%rax,%rcx,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	32(%rax,%rcx,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vmovups	%ymm1, (%rax,%rcx,4)
	vmovups	%ymm2, 32(%rax,%rcx,4)
.LBB12_189:                             #   in Loop: Header=BB12_23 Depth=5
	movq	232(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movl	40(%rsp), %edx                  # 4-byte Reload
                                        # kill: def $edx killed $edx def $rdx
	cmpq	%rbx, %rax
	je	.LBB12_190
	jmp	.LBB12_25
.LBB12_184:                             #   in Loop: Header=BB12_23 Depth=5
	xorl	%eax, %eax
	movq	16(%rsp), %rbx                  # 8-byte Reload
	testb	$1, 248(%rsp)                   # 1-byte Folded Reload
	jne	.LBB12_188
	jmp	.LBB12_189
.LBB12_194:
	leaq	544(%rsp), %rdi
	vzeroupper
	callq	_ZN11Chronometer4stopEv
	movq	576(%rsp), %rbx                 # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB12_196
# %bb.195:
	leaq	544(%rsp), %rdi
	callq	_ZN11Chronometer7getTimeEv
	vmovss	%xmm0, (%rbx)
.LBB12_196:
	movq	96(%rsp), %rax                  # 8-byte Reload
	addq	$600, %rsp                      # imm = 0x258
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB12_197:
	.cfi_def_cfa_offset 656
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf, %ecx
	movl	$849, %edx                      # imm = 0x351
	callq	__assert_fail
.LBB12_8:
.Ltmp131:
	jmp	.LBB12_9
.LBB12_7:
.Ltmp128:
.LBB12_9:
	movq	%rax, %rbx
	movq	96(%rsp), %rax                  # 8-byte Reload
	addq	$40, %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB12_11
# %bb.10:
	callq	_ZdlPv
.LBB12_11:
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end12:
	.size	_ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf, .Lfunc_end12-_ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf
	.cfi_endproc
	.section	.rodata._ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf,"aG",@progbits,_ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf,comdat
	.p2align	3
.LJTI12_0:
	.quad	.LBB12_118
	.quad	.LBB12_99
	.quad	.LBB12_78
	.quad	.LBB12_57
	.quad	.LBB12_44
	.quad	.LBB12_31
	.quad	.LBB12_12
	.section	.gcc_except_table._ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf,"aG",@progbits,_ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf,comdat
	.p2align	2
GCC_except_table12:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp126-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin5         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin5         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Lfunc_end12-.Ltmp130          #   Call between .Ltmp130 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2
                                        # -- End function
	.section	.text._ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf,"axG",@progbits,_ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf,comdat
	.weak	_ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf # -- Begin function _ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf,@function
_ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf: # 
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception6
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$616, %rsp                      # imm = 0x268
	.cfi_def_cfa_offset 672
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $ecx killed $ecx def $rcx
	movl	28(%rdi), %ebx
	cmpl	28(%rsi), %ebx
	jne	.LBB13_281
# %bb.1:
	movl	%edx, %r15d
	movl	16(%rsi), %r14d
	movl	24(%rsi), %ebp
	movl	20(%rdi), %eax
	movq	%rdi, 512(%rsp)                 # 8-byte Spill
	movl	24(%rdi), %edi
	movq	%rsi, 520(%rsp)                 # 8-byte Spill
	movslq	20(%rsi), %rdx
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leal	(%rax,%rcx,2), %eax
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	subl	%edx, %eax
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	xorl	%edx, %edx
	divl	%r15d
	movl	%eax, %r10d
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	leal	(%rdi,%rcx,2), %eax
	movq	%rbp, 40(%rsp)                  # 8-byte Spill
	subl	%ebp, %eax
	xorl	%edx, %edx
	divl	%r15d
	movl	%eax, %r12d
	incl	%r12d
	cmpl	%r8d, %ebx
	movl	%r8d, %ecx
	cmovbl	%ebx, %ecx
	testl	%r8d, %r8d
	cmovlel	%ebx, %ecx
	movl	%ebx, 12(%rsp)                  # 4-byte Spill
	movl	%ebx, %eax
	xorl	%edx, %edx
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
	movl	%edx, 424(%rsp)                 # 4-byte Spill
	cmpl	$1, %edx
	sbbl	$-1, %eax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	cmpl	%r9d, %r14d
	movl	%r9d, %ecx
	cmovbl	%r14d, %ecx
	testl	%r9d, %r9d
	cmovlel	%r14d, %ecx
	movl	%r14d, %eax
	xorl	%edx, %edx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
	movl	672(%rsp), %ecx
	movl	%edx, 420(%rsp)                 # 4-byte Spill
	cmpl	$1, %edx
	sbbl	$-1, %eax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	cmpl	%ecx, %r12d
	movl	%ecx, %esi
	cmovbl	%r12d, %esi
	testl	%ecx, %ecx
	cmovlel	%r12d, %esi
	movl	%r12d, %eax
	xorl	%edx, %edx
	movl	%esi, 16(%rsp)                  # 4-byte Spill
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
	movl	%edx, 356(%rsp)                 # 4-byte Spill
	cmpl	$1, %edx
	sbbl	$-1, %eax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	%r10, 440(%rsp)                 # 8-byte Spill
	leal	1(%r10), %r13d
	movl	$72, %edi
	callq	_Znwm
	movq	%rax, %rbx
	movq	$_ZTV6TensorIfE+16, (%rax)
	movl	$1, 16(%rax)
	movl	%r13d, 20(%rax)
	movl	%r12d, 24(%rax)
	movl	%r14d, 28(%rax)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%rax)
	movl	$1, 592(%rsp)
	movq	$0, 56(%rax)
	movb	$1, 64(%rax)
	movl	%r12d, %eax
	imull	%r13d, %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movl	%r14d, 344(%rsp)                # 4-byte Spill
	imull	%r14d, %eax
	movl	%eax, 32(%rbx)
.Ltmp132:
	movl	$16, %edi
	movq	%rbx, 448(%rsp)                 # 8-byte Spill
	callq	_Znwm
.Ltmp133:
# %bb.2:
	movq	%rax, %rbp
	movl	$1, (%rax)
	movl	%r13d, 4(%rax)
	movl	%r12d, 8(%rax)
	movl	344(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 12(%rbp)
	movq	40(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB13_4
# %bb.3:
	callq	_ZdlPv
	movq	448(%rsp), %rbx                 # 8-byte Reload
.LBB13_4:
	movq	%rbp, 40(%rbx)
	addq	$16, %rbp
	movq	%rbp, 48(%rbx)
	movq	%rbp, 56(%rbx)
.Ltmp135:
	leaq	592(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_ZN6TensorIfE9init_dataERKN6tensor4initE
.Ltmp136:
# %bb.5:
	movl	680(%rsp), %ebx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 592(%rsp)
	movb	$1, 608(%rsp)
	leaq	592(%rsp), %rdi
	callq	_ZN11Chronometer5startEv
	leal	-1(%rbx), %eax
	cmpl	$6, %eax
	ja	.LBB13_38
# %bb.6:
	movl	%r12d, 116(%rsp)                # 4-byte Spill
	movq	%r15, 344(%rsp)                 # 8-byte Spill
	movl	%r13d, 436(%rsp)                # 4-byte Spill
	jmpq	*.LJTI13_0(,%rax,8)
.LBB13_7:
	cmpl	$0, 136(%rsp)                   # 4-byte Folded Reload
	movl	52(%rsp), %ecx                  # 4-byte Reload
	je	.LBB13_277
# %bb.8:
	movq	136(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 560(%rsp)                 # 4-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 300(%rsp)                 # 4-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 408(%rsp)                 # 4-byte Spill
	movq	64(%rsp), %r14                  # 8-byte Reload
	imull	%ecx, %r14d
	imull	24(%rsp), %r14d                 # 4-byte Folded Reload
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rdx                    # 8-byte Reload
	movl	8(%rsp), %eax                   # 4-byte Reload
	imull	%edx, %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movl	12(%rsp), %r8d                  # 4-byte Reload
	movl	%r8d, %eax
	imull	%edx, %eax
	movl	%eax, 428(%rsp)                 # 4-byte Spill
	movl	%edx, %edi
	imull	%ecx, %edi
	movslq	%r13d, %rax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rax, %rbp
	andq	$-2, %rbp
                                        # kill: def $edx killed $edx killed $rdx
	imull	%eax, %edx
	movl	%edx, %ebx
	imull	%r8d, %ebx
	movl	%ebx, 432(%rsp)                 # 4-byte Spill
	movl	%eax, %ebx
	movq	40(%rsp), %rax                  # 8-byte Reload
	imull	%eax, %ebx
	movl	%edi, 472(%rsp)                 # 4-byte Spill
	movl	%ebx, 460(%rsp)                 # 4-byte Spill
	imull	%ebx, %edi
	movl	%edi, 504(%rsp)                 # 4-byte Spill
	imull	%eax, %edx
	addl	%eax, %eax
	movl	%eax, 552(%rsp)                 # 4-byte Spill
	imull	%r8d, %edx
	movl	%edx, 292(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 464(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 496(%rsp)                 # 8-byte Spill
	xorl	%edx, %edx
	movq	%rbp, 216(%rsp)                 # 8-byte Spill
	jmp	.LBB13_10
	.p2align	4, 0x90
.LBB13_9:                               #   in Loop: Header=BB13_10 Depth=1
	movl	296(%rsp), %edx                 # 4-byte Reload
	incl	%edx
	movq	496(%rsp), %rax                 # 8-byte Reload
	addl	432(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 496(%rsp)                 # 8-byte Spill
	movq	464(%rsp), %rax                 # 8-byte Reload
	addl	292(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 464(%rsp)                 # 8-byte Spill
	cmpl	136(%rsp), %edx                 # 4-byte Folded Reload
	je	.LBB13_277
.LBB13_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_13 Depth 2
                                        #       Child Loop BB13_16 Depth 3
                                        #         Child Loop BB13_19 Depth 4
                                        #           Child Loop BB13_22 Depth 5
                                        #             Child Loop BB13_25 Depth 6
                                        #               Child Loop BB13_29 Depth 7
                                        #                 Child Loop BB13_32 Depth 8
                                        #                   Child Loop BB13_35 Depth 9
	movq	(%rsp), %rax                    # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%edx, 296(%rsp)                 # 4-byte Spill
	cmpl	560(%rsp), %edx                 # 4-byte Folded Reload
	movl	%eax, %r14d
	movl	420(%rsp), %edx                 # 4-byte Reload
	cmovel	%edx, %r14d
	testl	%edx, %edx
	cmovel	%eax, %r14d
	cmpl	$0, 144(%rsp)                   # 4-byte Folded Reload
	movq	%r14, (%rsp)                    # 8-byte Spill
	je	.LBB13_9
# %bb.11:                               #   in Loop: Header=BB13_10 Depth=1
	movl	8(%rsp), %eax                   # 4-byte Reload
	movl	%eax, %edx
	movl	296(%rsp), %eax                 # 4-byte Reload
	imull	%eax, %edx
	movq	%rdx, 400(%rsp)                 # 8-byte Spill
	movl	428(%rsp), %edx                 # 4-byte Reload
	imull	%eax, %edx
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movq	496(%rsp), %rax                 # 8-byte Reload
	addl	%r14d, %eax
	imull	40(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, 76(%rsp)                  # 4-byte Spill
	movl	460(%rsp), %eax                 # 4-byte Reload
	imull	%r14d, %eax
	movl	%eax, 368(%rsp)                 # 4-byte Spill
	movl	552(%rsp), %r8d                 # 4-byte Reload
	imull	%r14d, %r8d
	movl	$0, 304(%rsp)                   # 4-byte Folded Spill
	movq	464(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	xorl	%edx, %edx
	jmp	.LBB13_13
	.p2align	4, 0x90
.LBB13_12:                              #   in Loop: Header=BB13_13 Depth=2
	movl	36(%rsp), %edx                  # 4-byte Reload
	incl	%edx
	movl	304(%rsp), %eax                 # 4-byte Reload
	addl	64(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, 304(%rsp)                 # 4-byte Spill
	movl	504(%rsp), %eax                 # 4-byte Reload
	addl	%eax, 76(%rsp)                  # 4-byte Folded Spill
	addl	%eax, 72(%rsp)                  # 4-byte Folded Spill
	cmpl	144(%rsp), %edx                 # 4-byte Folded Reload
	movl	52(%rsp), %ecx                  # 4-byte Reload
	je	.LBB13_9
.LBB13_13:                              #   Parent Loop BB13_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_16 Depth 3
                                        #         Child Loop BB13_19 Depth 4
                                        #           Child Loop BB13_22 Depth 5
                                        #             Child Loop BB13_25 Depth 6
                                        #               Child Loop BB13_29 Depth 7
                                        #                 Child Loop BB13_32 Depth 8
                                        #                   Child Loop BB13_35 Depth 9
	movl	%edx, 36(%rsp)                  # 4-byte Spill
	cmpl	300(%rsp), %edx                 # 4-byte Folded Reload
	movl	%ecx, %edx
	movl	424(%rsp), %eax                 # 4-byte Reload
	cmovel	%eax, %edx
	testl	%eax, %eax
	cmovel	%ecx, %edx
	movq	%rdx, %rax
	movq	%rdx, 224(%rsp)                 # 8-byte Spill
	testl	%edx, %edx
	je	.LBB13_12
# %bb.14:                               #   in Loop: Header=BB13_13 Depth=2
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %ecx
	movl	36(%rsp), %eax                  # 4-byte Reload
	imull	%eax, %ecx
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	movl	472(%rsp), %ecx                 # 4-byte Reload
	imull	%eax, %ecx
	addl	12(%rsp), %ecx                  # 4-byte Folded Reload
	movl	%ecx, 360(%rsp)                 # 4-byte Spill
	movq	224(%rsp), %rax                 # 8-byte Reload
	addl	%eax, %eax
	movl	%eax, 248(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movl	72(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	movl	76(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 440(%rsp)                 # 4-byte Spill
	movl	304(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 128(%rsp)                 # 4-byte Spill
	jmp	.LBB13_16
	.p2align	4, 0x90
.LBB13_15:                              #   in Loop: Header=BB13_16 Depth=3
	movq	80(%rsp), %rcx                  # 8-byte Reload
	incl	%ecx
	incl	128(%rsp)                       # 4-byte Folded Spill
	movl	368(%rsp), %eax                 # 4-byte Reload
	addl	%eax, 440(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 20(%rsp)                  # 4-byte Folded Spill
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	cmpl	224(%rsp), %ecx                 # 4-byte Folded Reload
	je	.LBB13_12
.LBB13_16:                              #   Parent Loop BB13_10 Depth=1
                                        #     Parent Loop BB13_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_19 Depth 4
                                        #           Child Loop BB13_22 Depth 5
                                        #             Child Loop BB13_25 Depth 6
                                        #               Child Loop BB13_29 Depth 7
                                        #                 Child Loop BB13_32 Depth 8
                                        #                   Child Loop BB13_35 Depth 9
	testl	%r14d, %r14d
	je	.LBB13_15
# %bb.17:                               #   in Loop: Header=BB13_16 Depth=3
	movq	392(%rsp), %rax                 # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 336(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	imull	%r14d, %eax
	addl	360(%rsp), %eax                 # 4-byte Folded Reload
	imull	96(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, 272(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movl	20(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 168(%rsp)                 # 4-byte Spill
	movl	440(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 320(%rsp)                 # 4-byte Spill
	jmp	.LBB13_19
	.p2align	4, 0x90
.LBB13_18:                              #   in Loop: Header=BB13_19 Depth=4
	movq	184(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	incl	320(%rsp)                       # 4-byte Folded Spill
	incl	168(%rsp)                       # 4-byte Folded Spill
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	cmpl	%r14d, %eax
	je	.LBB13_15
.LBB13_19:                              #   Parent Loop BB13_10 Depth=1
                                        #     Parent Loop BB13_13 Depth=2
                                        #       Parent Loop BB13_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB13_22 Depth 5
                                        #             Child Loop BB13_25 Depth 6
                                        #               Child Loop BB13_29 Depth 7
                                        #                 Child Loop BB13_32 Depth 8
                                        #                   Child Loop BB13_35 Depth 9
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	je	.LBB13_18
# %bb.20:                               #   in Loop: Header=BB13_19 Depth=4
	movq	400(%rsp), %rax                 # 8-byte Reload
	movq	184(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 160(%rsp)                 # 4-byte Spill
	movl	$0, 152(%rsp)                   # 4-byte Folded Spill
	xorl	%eax, %eax
	jmp	.LBB13_22
	.p2align	4, 0x90
.LBB13_21:                              #   in Loop: Header=BB13_22 Depth=5
	movl	232(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	addl	%r15d, 152(%rsp)                # 4-byte Folded Spill
	cmpl	120(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB13_18
.LBB13_22:                              #   Parent Loop BB13_10 Depth=1
                                        #     Parent Loop BB13_13 Depth=2
                                        #       Parent Loop BB13_16 Depth=3
                                        #         Parent Loop BB13_19 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB13_25 Depth 6
                                        #               Child Loop BB13_29 Depth 7
                                        #                 Child Loop BB13_32 Depth 8
                                        #                   Child Loop BB13_35 Depth 9
	movl	%eax, 232(%rsp)                 # 4-byte Spill
	cmpl	408(%rsp), %eax                 # 4-byte Folded Reload
	movl	16(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %edx
	movl	356(%rsp), %ecx                 # 4-byte Reload
	cmovel	%ecx, %edx
	testl	%ecx, %ecx
	cmovel	%eax, %edx
	movl	%edx, 312(%rsp)                 # 4-byte Spill
	testl	%edx, %edx
	je	.LBB13_21
# %bb.23:                               #   in Loop: Header=BB13_22 Depth=5
	movl	232(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	imull	%r15d, %ecx
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax def $rax
	imull	16(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 376(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movl	152(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 256(%rsp)                 # 4-byte Spill
	jmp	.LBB13_25
	.p2align	4, 0x90
.LBB13_24:                              #   in Loop: Header=BB13_25 Depth=6
	movq	240(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	incl	256(%rsp)                       # 4-byte Folded Spill
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	cmpl	312(%rsp), %eax                 # 4-byte Folded Reload
	movl	436(%rsp), %r13d                # 4-byte Reload
	je	.LBB13_21
.LBB13_25:                              #   Parent Loop BB13_10 Depth=1
                                        #     Parent Loop BB13_13 Depth=2
                                        #       Parent Loop BB13_16 Depth=3
                                        #         Parent Loop BB13_19 Depth=4
                                        #           Parent Loop BB13_22 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB13_29 Depth 7
                                        #                 Child Loop BB13_32 Depth 8
                                        #                   Child Loop BB13_35 Depth 9
	testl	%r13d, %r13d
	je	.LBB13_24
# %bb.26:                               #   in Loop: Header=BB13_25 Depth=6
	cmpl	$0, 40(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_24
# %bb.27:                               #   in Loop: Header=BB13_25 Depth=6
	movq	200(%rsp), %rax                 # 8-byte Reload
	movq	240(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	376(%rsp), %rax                 # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 328(%rsp)                 # 4-byte Spill
	movl	$1, 264(%rsp)                   # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movq	216(%rsp), %r13                 # 8-byte Reload
	jmp	.LBB13_29
	.p2align	4, 0x90
.LBB13_28:                              #   in Loop: Header=BB13_29 Depth=7
	movq	176(%rsp), %rcx                 # 8-byte Reload
	incq	%rcx
	movq	344(%rsp), %r15                 # 8-byte Reload
	addl	%r15d, 264(%rsp)                # 4-byte Folded Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	addl	%r15d, %eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	cmpq	208(%rsp), %rcx                 # 8-byte Folded Reload
	je	.LBB13_24
.LBB13_29:                              #   Parent Loop BB13_10 Depth=1
                                        #     Parent Loop BB13_13 Depth=2
                                        #       Parent Loop BB13_16 Depth=3
                                        #         Parent Loop BB13_19 Depth=4
                                        #           Parent Loop BB13_22 Depth=5
                                        #             Parent Loop BB13_25 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB13_32 Depth 8
                                        #                   Child Loop BB13_35 Depth 9
	cmpl	$0, 96(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_28
# %bb.30:                               #   in Loop: Header=BB13_29 Depth=7
	movl	116(%rsp), %eax                 # 4-byte Reload
	movq	176(%rsp), %rcx                 # 8-byte Reload
	imull	%ecx, %eax
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	imull	344(%rsp), %ecx                 # 4-byte Folded Reload
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	addl	328(%rsp), %eax                 # 4-byte Folded Reload
	imull	%r14d, %eax
	addl	160(%rsp), %eax                 # 4-byte Folded Reload
	movslq	%eax, %rdi
	movq	512(%rsp), %rax                 # 8-byte Reload
	movl	24(%rax), %edx
	movq	8(%rax), %rbx
	movq	520(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %r9
	movq	448(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %r15
	vmovss	(%r15,%rdi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movl	%edx, %ecx
	imull	264(%rsp), %ecx                 # 4-byte Folded Reload
	movl	256(%rsp), %esi                 # 4-byte Reload
	addl	%esi, %ecx
	movq	224(%rsp), %r10                 # 8-byte Reload
	imull	%r10d, %ecx
	movl	128(%rsp), %r11d                # 4-byte Reload
	addl	%r11d, %ecx
	movl	248(%rsp), %eax                 # 4-byte Reload
	imull	%edx, %eax
	movl	%edx, 280(%rsp)                 # 4-byte Spill
	imull	104(%rsp), %edx                 # 4-byte Folded Reload
	addl	%esi, %edx
	imull	%r10d, %edx
	addl	%r11d, %edx
	xorl	%r10d, %r10d
	movl	168(%rsp), %esi                 # 4-byte Reload
	movl	320(%rsp), %r11d                # 4-byte Reload
	jmp	.LBB13_32
	.p2align	4, 0x90
.LBB13_31:                              #   in Loop: Header=BB13_32 Depth=8
	incl	%r10d
	movq	224(%rsp), %rbp                 # 8-byte Reload
	movl	56(%rsp), %ecx                  # 4-byte Reload
	addl	%ebp, %ecx
	addl	%r14d, %r11d
	movl	192(%rsp), %esi                 # 4-byte Reload
	addl	%r14d, %esi
	movl	24(%rsp), %edx                  # 4-byte Reload
	addl	%ebp, %edx
	cmpl	40(%rsp), %r10d                 # 4-byte Folded Reload
	je	.LBB13_28
.LBB13_32:                              #   Parent Loop BB13_10 Depth=1
                                        #     Parent Loop BB13_13 Depth=2
                                        #       Parent Loop BB13_16 Depth=3
                                        #         Parent Loop BB13_19 Depth=4
                                        #           Parent Loop BB13_22 Depth=5
                                        #             Parent Loop BB13_25 Depth=6
                                        #               Parent Loop BB13_29 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB13_35 Depth 9
	cmpl	$1, 96(%rsp)                    # 4-byte Folded Reload
	movl	%ecx, 56(%rsp)                  # 4-byte Spill
	movl	%edx, 24(%rsp)                  # 4-byte Spill
	movl	%esi, 192(%rsp)                 # 4-byte Spill
	jne	.LBB13_34
# %bb.33:                               #   in Loop: Header=BB13_32 Depth=8
	xorl	%ecx, %ecx
	jmp	.LBB13_36
	.p2align	4, 0x90
.LBB13_34:                              #   in Loop: Header=BB13_32 Depth=8
	movl	%edx, %ebp
	movl	%esi, %r14d
	movl	%r11d, %esi
	movl	%ecx, %r12d
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB13_35:                              #   Parent Loop BB13_10 Depth=1
                                        #     Parent Loop BB13_13 Depth=2
                                        #       Parent Loop BB13_16 Depth=3
                                        #         Parent Loop BB13_19 Depth=4
                                        #           Parent Loop BB13_22 Depth=5
                                        #             Parent Loop BB13_25 Depth=6
                                        #               Parent Loop BB13_29 Depth=7
                                        #                 Parent Loop BB13_32 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	movslq	%ebp, %rbp
	movslq	%r14d, %r14
	vmovss	(%r9,%r14,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	(%rbx,%rbp,4), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovss	%xmm1, (%r15,%rdi,4)
	movslq	%r12d, %r12
	movslq	%esi, %rsi
	vmovss	(%r9,%rsi,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	vfmadd132ss	(%rbx,%r12,4), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovss	%xmm0, (%r15,%rdi,4)
	addq	$2, %rcx
	addl	%eax, %r12d
	addl	%r8d, %esi
	addl	%r8d, %r14d
	addl	%eax, %ebp
	cmpq	%rcx, %r13
	jne	.LBB13_35
.LBB13_36:                              #   in Loop: Header=BB13_32 Depth=8
	testb	$1, 96(%rsp)                    # 1-byte Folded Reload
	movq	(%rsp), %r14                    # 8-byte Reload
	je	.LBB13_31
# %bb.37:                               #   in Loop: Header=BB13_32 Depth=8
	movq	88(%rsp), %rsi                  # 8-byte Reload
	addl	%r10d, %esi
	movq	384(%rsp), %rbp                 # 8-byte Reload
	addl	%ecx, %ebp
	imull	280(%rsp), %ebp                 # 4-byte Folded Reload
	addl	%esi, %ebp
	movl	%r10d, %esi
	imull	%r14d, %esi
	addl	184(%rsp), %esi                 # 4-byte Folded Reload
	imull	%r14d, %ecx
	addl	272(%rsp), %ecx                 # 4-byte Folded Reload
	imull	40(%rsp), %ecx                  # 4-byte Folded Reload
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	vmovss	(%r9,%rcx,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	imull	224(%rsp), %ebp                 # 4-byte Folded Reload
	addl	336(%rsp), %ebp                 # 4-byte Folded Reload
	movslq	%ebp, %rcx
	vfmadd231ss	(%rbx,%rcx,4), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovss	%xmm0, (%r15,%rdi,4)
	jmp	.LBB13_31
.LBB13_38:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.8, %esi
	movl	$59, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9, %esi
	movl	$14, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %esi
	movl	$_ZSt4cerr, %edi
	callq	_ZNSo9_M_insertImEERSoT_
	movl	$.L.str.10, %esi
	movl	$14, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	jmp	.LBB13_277
.LBB13_39:
	cmpl	$0, 136(%rsp)                   # 4-byte Folded Reload
	movl	52(%rsp), %edx                  # 4-byte Reload
	je	.LBB13_277
# %bb.40:
	movq	136(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 588(%rsp)                 # 4-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 576(%rsp)                 # 4-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 464(%rsp)                 # 4-byte Spill
	movq	64(%rsp), %r14                  # 8-byte Reload
	imull	%edx, %r14d
	imull	24(%rsp), %r14d                 # 4-byte Folded Reload
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, 8(%rsp)                   # 4-byte Spill
	movl	%eax, %esi
	imull	%edx, %esi
	movl	%eax, %edi
	movq	96(%rsp), %rcx                  # 8-byte Reload
	imull	%ecx, %edi
	movq	40(%rsp), %rax                  # 8-byte Reload
	imull	%eax, %edi
	imull	12(%rsp), %edi                  # 4-byte Folded Reload
	movl	%edi, 488(%rsp)                 # 4-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx
	imull	%eax, %ecx
	movl	%ecx, 584(%rsp)                 # 4-byte Spill
	imull	%ecx, %esi
	movl	%esi, 540(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 568(%rsp)                 # 8-byte Spill
	movl	$3, 484(%rsp)                   # 4-byte Folded Spill
	movl	$2, 532(%rsp)                   # 4-byte Folded Spill
	movl	$1, 528(%rsp)                   # 4-byte Folded Spill
	xorl	%esi, %esi
	jmp	.LBB13_42
	.p2align	4, 0x90
.LBB13_41:                              #   in Loop: Header=BB13_42 Depth=1
	movl	492(%rsp), %esi                 # 4-byte Reload
	incl	%esi
	movl	488(%rsp), %eax                 # 4-byte Reload
	movq	568(%rsp), %rcx                 # 8-byte Reload
	addl	%eax, %ecx
	movq	%rcx, 568(%rsp)                 # 8-byte Spill
	addl	%eax, 484(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 532(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 528(%rsp)                 # 4-byte Folded Spill
	cmpl	136(%rsp), %esi                 # 4-byte Folded Reload
	je	.LBB13_277
.LBB13_42:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_45 Depth 2
                                        #       Child Loop BB13_48 Depth 3
                                        #         Child Loop BB13_51 Depth 4
                                        #           Child Loop BB13_54 Depth 5
                                        #             Child Loop BB13_57 Depth 6
                                        #               Child Loop BB13_61 Depth 7
                                        #                 Child Loop BB13_64 Depth 8
                                        #                   Child Loop BB13_79 Depth 9
                                        #                   Child Loop BB13_68 Depth 9
                                        #                   Child Loop BB13_71 Depth 9
	movq	(%rsp), %rax                    # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%esi, 492(%rsp)                 # 4-byte Spill
	cmpl	588(%rsp), %esi                 # 4-byte Folded Reload
	movl	%eax, %esi
	movl	420(%rsp), %ecx                 # 4-byte Reload
	cmovel	%ecx, %esi
	testl	%ecx, %ecx
	cmovel	%eax, %esi
	cmpl	$0, 144(%rsp)                   # 4-byte Folded Reload
	movq	%rsi, (%rsp)                    # 8-byte Spill
	je	.LBB13_41
# %bb.43:                               #   in Loop: Header=BB13_42 Depth=1
	movl	488(%rsp), %ecx                 # 4-byte Reload
	movl	492(%rsp), %eax                 # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, 536(%rsp)                 # 4-byte Spill
	movl	8(%rsp), %ecx                   # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, 184(%rsp)                 # 4-byte Spill
	movslq	%esi, %rcx
	leaq	-1(%rcx), %rdi
	movl	116(%rsp), %eax                 # 4-byte Reload
	imull	%esi, %eax
	movl	%eax, 548(%rsp)                 # 4-byte Spill
	movl	16(%rsp), %eax                  # 4-byte Reload
	imull	%esi, %eax
	movl	%eax, 460(%rsp)                 # 4-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	imull	%esi, %eax
	movl	%eax, 300(%rsp)                 # 4-byte Spill
	movl	584(%rsp), %eax                 # 4-byte Reload
	imull	%esi, %eax
	movl	%eax, 312(%rsp)                 # 4-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	andq	$-32, %rcx
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	movl	%esi, %eax
	andl	$3, %eax
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	movl	528(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 560(%rsp)                 # 4-byte Spill
	movl	532(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	movl	484(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 432(%rsp)                 # 4-byte Spill
	movq	568(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 428(%rsp)                 # 4-byte Spill
	movq	%rdi, 336(%rsp)                 # 8-byte Spill
	jmp	.LBB13_45
	.p2align	4, 0x90
.LBB13_44:                              #   in Loop: Header=BB13_45 Depth=2
	movl	544(%rsp), %ecx                 # 4-byte Reload
	incl	%ecx
	movl	540(%rsp), %eax                 # 4-byte Reload
	addl	%eax, 428(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 432(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 292(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 560(%rsp)                 # 4-byte Folded Spill
	cmpl	144(%rsp), %ecx                 # 4-byte Folded Reload
	movl	52(%rsp), %edx                  # 4-byte Reload
	movl	436(%rsp), %r13d                # 4-byte Reload
	je	.LBB13_41
.LBB13_45:                              #   Parent Loop BB13_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_48 Depth 3
                                        #         Child Loop BB13_51 Depth 4
                                        #           Child Loop BB13_54 Depth 5
                                        #             Child Loop BB13_57 Depth 6
                                        #               Child Loop BB13_61 Depth 7
                                        #                 Child Loop BB13_64 Depth 8
                                        #                   Child Loop BB13_79 Depth 9
                                        #                   Child Loop BB13_68 Depth 9
                                        #                   Child Loop BB13_71 Depth 9
	movl	%ecx, 544(%rsp)                 # 4-byte Spill
	cmpl	576(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%edx, %ecx
	movl	424(%rsp), %eax                 # 4-byte Reload
	cmovel	%eax, %ecx
	testl	%eax, %eax
	cmovel	%edx, %ecx
	movl	%ecx, 56(%rsp)                  # 4-byte Spill
	testl	%r13d, %r13d
	je	.LBB13_44
# %bb.46:                               #   in Loop: Header=BB13_45 Depth=2
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %ecx
	movl	544(%rsp), %eax                 # 4-byte Reload
	imull	%eax, %ecx
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	movl	540(%rsp), %ecx                 # 4-byte Reload
	imull	%eax, %ecx
	addl	536(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 552(%rsp)                 # 8-byte Spill
	jmp	.LBB13_48
	.p2align	4, 0x90
.LBB13_47:                              #   in Loop: Header=BB13_48 Depth=3
	movq	552(%rsp), %rcx                 # 8-byte Reload
	leal	1(%rcx), %eax
	cmpl	440(%rsp), %ecx                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 552(%rsp)                 # 8-byte Spill
	je	.LBB13_44
.LBB13_48:                              #   Parent Loop BB13_42 Depth=1
                                        #     Parent Loop BB13_45 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_51 Depth 4
                                        #           Child Loop BB13_54 Depth 5
                                        #             Child Loop BB13_57 Depth 6
                                        #               Child Loop BB13_61 Depth 7
                                        #                 Child Loop BB13_64 Depth 8
                                        #                   Child Loop BB13_79 Depth 9
                                        #                   Child Loop BB13_68 Depth 9
                                        #                   Child Loop BB13_71 Depth 9
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	je	.LBB13_47
# %bb.49:                               #   in Loop: Header=BB13_48 Depth=3
	movq	552(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	imull	344(%rsp), %ecx                 # 4-byte Folded Reload
	movq	%rcx, 504(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	imull	116(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 496(%rsp)                 # 4-byte Spill
	movl	548(%rsp), %ecx                 # 4-byte Reload
	imull	%eax, %ecx
	addl	184(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 296(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	jmp	.LBB13_51
	.p2align	4, 0x90
.LBB13_50:                              #   in Loop: Header=BB13_51 Depth=4
	movl	472(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	cmpl	120(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB13_47
.LBB13_51:                              #   Parent Loop BB13_42 Depth=1
                                        #     Parent Loop BB13_45 Depth=2
                                        #       Parent Loop BB13_48 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB13_54 Depth 5
                                        #             Child Loop BB13_57 Depth 6
                                        #               Child Loop BB13_61 Depth 7
                                        #                 Child Loop BB13_64 Depth 8
                                        #                   Child Loop BB13_79 Depth 9
                                        #                   Child Loop BB13_68 Depth 9
                                        #                   Child Loop BB13_71 Depth 9
	movl	%eax, 472(%rsp)                 # 4-byte Spill
	cmpl	464(%rsp), %eax                 # 4-byte Folded Reload
	movl	16(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %edx
	movl	356(%rsp), %ecx                 # 4-byte Reload
	cmovel	%ecx, %edx
	testl	%ecx, %ecx
	cmovel	%eax, %edx
	movl	%edx, 280(%rsp)                 # 4-byte Spill
	cmpl	$0, 96(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_50
# %bb.52:                               #   in Loop: Header=BB13_51 Depth=4
	movl	472(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	imull	344(%rsp), %ecx                 # 4-byte Folded Reload
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	movl	460(%rsp), %ecx                 # 4-byte Reload
	imull	%eax, %ecx
	addl	296(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
                                        # kill: def $eax killed $eax def $rax
	imull	16(%rsp), %eax                  # 4-byte Folded Reload
	addl	496(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 360(%rsp)                 # 8-byte Spill
	movl	560(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 304(%rsp)                 # 4-byte Spill
	movl	292(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	movl	432(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 76(%rsp)                  # 4-byte Spill
	movl	428(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	jmp	.LBB13_54
	.p2align	4, 0x90
.LBB13_53:                              #   in Loop: Header=BB13_54 Depth=5
	movq	360(%rsp), %rcx                 # 8-byte Reload
	incl	%ecx
	movl	300(%rsp), %eax                 # 4-byte Reload
	addl	%eax, 72(%rsp)                  # 4-byte Folded Spill
	addl	%eax, 76(%rsp)                  # 4-byte Folded Spill
	addl	%eax, 36(%rsp)                  # 4-byte Folded Spill
	addl	%eax, 304(%rsp)                 # 4-byte Folded Spill
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	cmpl	96(%rsp), %ecx                  # 4-byte Folded Reload
	je	.LBB13_50
.LBB13_54:                              #   Parent Loop BB13_42 Depth=1
                                        #     Parent Loop BB13_45 Depth=2
                                        #       Parent Loop BB13_48 Depth=3
                                        #         Parent Loop BB13_51 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB13_57 Depth 6
                                        #               Child Loop BB13_61 Depth 7
                                        #                 Child Loop BB13_64 Depth 8
                                        #                   Child Loop BB13_79 Depth 9
                                        #                   Child Loop BB13_68 Depth 9
                                        #                   Child Loop BB13_71 Depth 9
	cmpl	$0, 40(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_53
# %bb.55:                               #   in Loop: Header=BB13_54 Depth=5
	movq	504(%rsp), %rax                 # 8-byte Reload
	movq	360(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 376(%rsp)                 # 4-byte Spill
	movl	300(%rsp), %eax                 # 4-byte Reload
	imull	%ecx, %eax
	addl	12(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, 368(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movl	304(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 408(%rsp)                 # 4-byte Spill
	movl	36(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 400(%rsp)                 # 4-byte Spill
	movl	76(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	movl	72(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	jmp	.LBB13_57
	.p2align	4, 0x90
.LBB13_56:                              #   in Loop: Header=BB13_57 Depth=6
	movq	152(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	addl	%esi, 20(%rsp)                  # 4-byte Folded Spill
	addl	%esi, 80(%rsp)                  # 4-byte Folded Spill
	addl	%esi, 400(%rsp)                 # 4-byte Folded Spill
	addl	%esi, 408(%rsp)                 # 4-byte Folded Spill
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	cmpl	40(%rsp), %eax                  # 4-byte Folded Reload
	je	.LBB13_53
.LBB13_57:                              #   Parent Loop BB13_42 Depth=1
                                        #     Parent Loop BB13_45 Depth=2
                                        #       Parent Loop BB13_48 Depth=3
                                        #         Parent Loop BB13_51 Depth=4
                                        #           Parent Loop BB13_54 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB13_61 Depth 7
                                        #                 Child Loop BB13_64 Depth 8
                                        #                   Child Loop BB13_79 Depth 9
                                        #                   Child Loop BB13_68 Depth 9
                                        #                   Child Loop BB13_71 Depth 9
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_56
# %bb.58:                               #   in Loop: Header=BB13_57 Depth=6
	cmpl	$0, 280(%rsp)                   # 4-byte Folded Reload
	je	.LBB13_56
# %bb.59:                               #   in Loop: Header=BB13_57 Depth=6
	movq	392(%rsp), %rax                 # 8-byte Reload
	movq	152(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movl	%esi, %eax
	imull	%ecx, %eax
	addl	368(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 200(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movl	408(%rsp), %eax                 # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movl	400(%rsp), %eax                 # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movl	80(%rsp), %eax                  # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movl	20(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %r15d
	jmp	.LBB13_61
	.p2align	4, 0x90
.LBB13_60:                              #   in Loop: Header=BB13_61 Depth=7
	movq	240(%rsp), %rcx                 # 8-byte Reload
	incl	%ecx
	movl	312(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %r15d
	movq	176(%rsp), %rdx                 # 8-byte Reload
	addl	%eax, %edx
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	movq	104(%rsp), %rdx                 # 8-byte Reload
	addl	%eax, %edx
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	movq	216(%rsp), %rdx                 # 8-byte Reload
	addl	%eax, %edx
	movq	%rdx, 216(%rsp)                 # 8-byte Spill
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	cmpl	56(%rsp), %ecx                  # 4-byte Folded Reload
	movq	(%rsp), %rsi                    # 8-byte Reload
	je	.LBB13_56
.LBB13_61:                              #   Parent Loop BB13_42 Depth=1
                                        #     Parent Loop BB13_45 Depth=2
                                        #       Parent Loop BB13_48 Depth=3
                                        #         Parent Loop BB13_51 Depth=4
                                        #           Parent Loop BB13_54 Depth=5
                                        #             Parent Loop BB13_57 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB13_64 Depth 8
                                        #                   Child Loop BB13_79 Depth 9
                                        #                   Child Loop BB13_68 Depth 9
                                        #                   Child Loop BB13_71 Depth 9
	testl	%esi, %esi
	je	.LBB13_60
# %bb.62:                               #   in Loop: Header=BB13_61 Depth=7
	movl	312(%rsp), %edx                 # 4-byte Reload
	movq	240(%rsp), %rcx                 # 8-byte Reload
	imull	%ecx, %edx
	addl	200(%rsp), %edx                 # 4-byte Folded Reload
	movq	232(%rsp), %rax                 # 8-byte Reload
	leal	(%rcx,%rax), %esi
	movl	%edx, 264(%rsp)                 # 4-byte Spill
	movslq	%edx, %rdx
	movq	512(%rsp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rbp
	movq	520(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %r10
	movq	448(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rbx
	movl	24(%rcx), %r14d
	imull	376(%rsp), %r14d                # 4-byte Folded Reload
	movq	%rbp, 384(%rsp)                 # 8-byte Spill
	leaq	1(%rbp), %rax
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	movq	192(%rsp), %rax                 # 8-byte Reload
	addl	%r14d, %eax
	imull	56(%rsp), %eax                  # 4-byte Folded Reload
	movl	%esi, 224(%rsp)                 # 4-byte Spill
	addl	%esi, %eax
	movl	%eax, 168(%rsp)                 # 4-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	(%rbx,%rax,4), %rcx
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	leaq	(%r10,%rdx,4), %rcx
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	leaq	(%r10,%rax,4), %rax
	leaq	(%rax,%rdx,4), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	addl	%edi, %edx
	movq	%rdx, 208(%rsp)                 # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB13_64
	.p2align	4, 0x90
.LBB13_63:                              #   in Loop: Header=BB13_64 Depth=8
	incl	%r12d
	cmpl	280(%rsp), %r12d                # 4-byte Folded Reload
	movq	336(%rsp), %rdi                 # 8-byte Reload
	je	.LBB13_60
.LBB13_64:                              #   Parent Loop BB13_42 Depth=1
                                        #     Parent Loop BB13_45 Depth=2
                                        #       Parent Loop BB13_48 Depth=3
                                        #         Parent Loop BB13_51 Depth=4
                                        #           Parent Loop BB13_54 Depth=5
                                        #             Parent Loop BB13_57 Depth=6
                                        #               Parent Loop BB13_61 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB13_79 Depth 9
                                        #                   Child Loop BB13_68 Depth 9
                                        #                   Child Loop BB13_71 Depth 9
	movq	192(%rsp), %rax                 # 8-byte Reload
	addl	%r12d, %eax
	addl	%r14d, %eax
	imull	56(%rsp), %eax                  # 4-byte Folded Reload
	addl	224(%rsp), %eax                 # 4-byte Folded Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
	leal	(%rcx,%r12), %edx
	movq	(%rsp), %rcx                    # 8-byte Reload
	imull	%ecx, %edx
	addl	184(%rsp), %edx                 # 4-byte Folded Reload
	cltq
	movq	384(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rsi,%rax,4), %r13
	cmpl	$31, %ecx
	ja	.LBB13_72
.LBB13_65:                              #   in Loop: Header=BB13_64 Depth=8
	xorl	%edi, %edi
.LBB13_66:                              #   in Loop: Header=BB13_64 Depth=8
	movq	%rdi, %rcx
	notq	%rcx
	addq	24(%rsp), %rcx                  # 8-byte Folded Reload
	movq	272(%rsp), %rsi                 # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB13_69
# %bb.67:                               #   in Loop: Header=BB13_64 Depth=8
	leal	(%r15,%rdi), %ebp
	.p2align	4, 0x90
.LBB13_68:                              #   Parent Loop BB13_42 Depth=1
                                        #     Parent Loop BB13_45 Depth=2
                                        #       Parent Loop BB13_48 Depth=3
                                        #         Parent Loop BB13_51 Depth=4
                                        #           Parent Loop BB13_54 Depth=5
                                        #             Parent Loop BB13_57 Depth=6
                                        #               Parent Loop BB13_61 Depth=7
                                        #                 Parent Loop BB13_64 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rdx,%rdi), %eax
	vmovss	(%r13), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%ebp, %rbp
	vmovss	(%r10,%rbp,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	cltq
	vfmadd213ss	(%rbx,%rax,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rbx,%rax,4)
	incq	%rdi
	incl	%ebp
	decq	%rsi
	jne	.LBB13_68
.LBB13_69:                              #   in Loop: Header=BB13_64 Depth=8
	cmpq	$3, %rcx
	jb	.LBB13_63
# %bb.70:                               #   in Loop: Header=BB13_64 Depth=8
	movq	176(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %ecx
	movq	104(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	movq	216(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %ebp
	movq	24(%rsp), %r11                  # 8-byte Reload
	subq	%rdi, %r11
	leal	(%r15,%rdi), %r8d
	.p2align	4, 0x90
.LBB13_71:                              #   Parent Loop BB13_42 Depth=1
                                        #     Parent Loop BB13_45 Depth=2
                                        #       Parent Loop BB13_48 Depth=3
                                        #         Parent Loop BB13_51 Depth=4
                                        #           Parent Loop BB13_54 Depth=5
                                        #             Parent Loop BB13_57 Depth=6
                                        #               Parent Loop BB13_61 Depth=7
                                        #                 Parent Loop BB13_64 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rdx,%rdi), %eax
	vmovss	(%r13), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%r8d, %r8
	vmovss	(%r10,%r8,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	cltq
	vfmadd213ss	(%rbx,%rax,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rbx,%rax,4)
	leal	1(%rdx,%rdi), %eax
	vmovss	(%r13), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%ebp, %rbp
	vmovss	(%r10,%rbp,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	cltq
	vfmadd213ss	(%rbx,%rax,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rbx,%rax,4)
	leal	2(%rdx,%rdi), %eax
	vmovss	(%r13), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%r9d, %r9
	vmovss	(%r10,%r9,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	cltq
	vfmadd213ss	(%rbx,%rax,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rbx,%rax,4)
	leal	3(%rdx,%rdi), %eax
	vmovss	(%r13), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%ecx, %rcx
	vmovss	(%r10,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	cltq
	vfmadd213ss	(%rbx,%rax,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rbx,%rax,4)
	addq	$4, %rdi
	addl	$4, %ecx
	addl	$4, %r9d
	addl	$4, %ebp
	addl	$4, %r8d
	addq	$-4, %r11
	jne	.LBB13_71
	jmp	.LBB13_63
	.p2align	4, 0x90
.LBB13_72:                              #   in Loop: Header=BB13_64 Depth=8
	movq	208(%rsp), %rax                 # 8-byte Reload
	cmpl	264(%rsp), %eax                 # 4-byte Folded Reload
	jl	.LBB13_65
# %bb.73:                               #   in Loop: Header=BB13_64 Depth=8
	cmpl	$1, 56(%rsp)                    # 4-byte Folded Reload
	jne	.LBB13_65
# %bb.74:                               #   in Loop: Header=BB13_64 Depth=8
	movq	(%rsp), %rcx                    # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	imull	%r12d, %ecx
	addl	256(%rsp), %ecx                 # 4-byte Folded Reload
	leal	(%rcx,%rdi), %eax
	cmpl	%ecx, %eax
	jl	.LBB13_65
# %bb.75:                               #   in Loop: Header=BB13_64 Depth=8
	movq	%rdi, %rax
	shrq	$32, %rax
	movl	$0, %edi
	jne	.LBB13_66
# %bb.76:                               #   in Loop: Header=BB13_64 Depth=8
	movl	56(%rsp), %eax                  # 4-byte Reload
	imull	%r12d, %eax
	addl	168(%rsp), %eax                 # 4-byte Folded Reload
	cltq
	movq	328(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rsi,%rax,4), %rax
	movslq	%ecx, %rcx
	leaq	(%rbx,%rcx,4), %rsi
	movq	320(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rdi,%rcx,4), %rdi
	cmpq	%rdi, %r13
	setb	%r8b
	cmpq	%rsi, %rax
	seta	%al
	cmpq	128(%rsp), %rsi                 # 8-byte Folded Reload
	setb	%cl
	cmpq	%rdi, 160(%rsp)                 # 8-byte Folded Reload
	setb	%sil
	testb	%al, %r8b
	jne	.LBB13_65
# %bb.77:                               #   in Loop: Header=BB13_64 Depth=8
	movl	$0, %edi
	andb	%sil, %cl
	jne	.LBB13_66
# %bb.78:                               #   in Loop: Header=BB13_64 Depth=8
	vbroadcastss	(%r13), %ymm0
	movq	248(%rsp), %rcx                 # 8-byte Reload
	movl	%r15d, %edi
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB13_79:                              #   Parent Loop BB13_42 Depth=1
                                        #     Parent Loop BB13_45 Depth=2
                                        #       Parent Loop BB13_48 Depth=3
                                        #         Parent Loop BB13_51 Depth=4
                                        #           Parent Loop BB13_54 Depth=5
                                        #             Parent Loop BB13_57 Depth=6
                                        #               Parent Loop BB13_61 Depth=7
                                        #                 Parent Loop BB13_64 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rdx,%rbp), %eax
	movslq	%edi, %rdi
	vmovups	(%r10,%rdi,4), %ymm1
	vmovups	32(%r10,%rdi,4), %ymm2
	vmovups	64(%r10,%rdi,4), %ymm3
	vmovups	96(%r10,%rdi,4), %ymm4
	cltq
	vfmadd213ps	(%rbx,%rax,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	32(%rbx,%rax,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vfmadd213ps	64(%rbx,%rax,4), %ymm0, %ymm3 # ymm3 = (ymm0 * ymm3) + mem
	vfmadd213ps	96(%rbx,%rax,4), %ymm0, %ymm4 # ymm4 = (ymm0 * ymm4) + mem
	vmovups	%ymm1, (%rbx,%rax,4)
	vmovups	%ymm2, 32(%rbx,%rax,4)
	vmovups	%ymm3, 64(%rbx,%rax,4)
	vmovups	%ymm4, 96(%rbx,%rax,4)
	addq	$32, %rbp
	addl	$32, %edi
	addq	$-32, %rcx
	jne	.LBB13_79
# %bb.80:                               #   in Loop: Header=BB13_64 Depth=8
	movq	248(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	cmpq	24(%rsp), %rax                  # 8-byte Folded Reload
	je	.LBB13_63
	jmp	.LBB13_66
.LBB13_81:
	cmpl	$0, 136(%rsp)                   # 4-byte Folded Reload
	movl	52(%rsp), %r11d                 # 4-byte Reload
	je	.LBB13_277
# %bb.82:
	movq	136(%rsp), %rax                 # 8-byte Reload
	leal	-1(%rax), %r8d
	movq	144(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 368(%rsp)                 # 4-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 408(%rsp)                 # 4-byte Spill
	movq	(%rsp), %rdx                    # 8-byte Reload
	movl	8(%rsp), %eax                   # 4-byte Reload
	imull	%edx, %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movl	%edx, %edi
	movq	96(%rsp), %rcx                  # 8-byte Reload
	imull	%ecx, %edi
	movq	40(%rsp), %rax                  # 8-byte Reload
	imull	%eax, %edi
	imull	12(%rsp), %edi                  # 4-byte Folded Reload
	movl	%edi, 72(%rsp)                  # 4-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	imull	%r11d, %edx
                                        # kill: def $ecx killed $ecx killed $rcx
	imull	%eax, %ecx
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	imull	%ecx, %edx
	movl	%edx, 392(%rsp)                 # 4-byte Spill
	movq	64(%rsp), %r14                  # 8-byte Reload
	imull	%r11d, %r14d
	movq	24(%rsp), %rax                  # 8-byte Reload
	imull	%eax, %r14d
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	decl	%eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	%r8d, 76(%rsp)                  # 4-byte Spill
.LBB13_83:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_86 Depth 2
                                        #       Child Loop BB13_89 Depth 3
                                        #         Child Loop BB13_92 Depth 4
                                        #           Child Loop BB13_95 Depth 5
                                        #             Child Loop BB13_98 Depth 6
                                        #               Child Loop BB13_101 Depth 7
                                        #                 Child Loop BB13_104 Depth 8
                                        #                   Child Loop BB13_109 Depth 9
	movq	(%rsp), %rax                    # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	cmpl	%r8d, %esi
	movl	%eax, %edx
	movl	420(%rsp), %ecx                 # 4-byte Reload
	cmovel	%ecx, %edx
	testl	%ecx, %ecx
	cmovel	%eax, %edx
	cmpl	$0, 144(%rsp)                   # 4-byte Folded Reload
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rdi, 360(%rsp)                 # 8-byte Spill
	movl	%esi, 304(%rsp)                 # 4-byte Spill
	je	.LBB13_113
# %bb.84:                               #   in Loop: Header=BB13_83 Depth=1
	movl	8(%rsp), %eax                   # 4-byte Reload
	imull	%esi, %eax
	movl	%eax, 376(%rsp)                 # 4-byte Spill
	movl	%edx, %eax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	imull	%edx, %eax
	movl	%eax, 264(%rsp)                 # 4-byte Spill
	movl	36(%rsp), %r14d                 # 4-byte Reload
	imull	%edx, %r14d
	movl	$0, 272(%rsp)                   # 4-byte Folded Spill
	movl	%edi, %eax
	movl	%edi, 200(%rsp)                 # 4-byte Spill
	xorl	%ecx, %ecx
	movq	520(%rsp), %r9                  # 8-byte Reload
	movq	512(%rsp), %r12                 # 8-byte Reload
	movq	448(%rsp), %r10                 # 8-byte Reload
	movl	%r14d, 280(%rsp)                # 4-byte Spill
	jmp	.LBB13_86
	.p2align	4, 0x90
.LBB13_85:                              #   in Loop: Header=BB13_86 Depth=2
	movl	20(%rsp), %ecx                  # 4-byte Reload
	incl	%ecx
	movl	200(%rsp), %eax                 # 4-byte Reload
	addl	392(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 200(%rsp)                 # 4-byte Spill
	movl	272(%rsp), %eax                 # 4-byte Reload
	addl	64(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, 272(%rsp)                 # 4-byte Spill
	cmpl	144(%rsp), %ecx                 # 4-byte Folded Reload
	movl	436(%rsp), %r13d                # 4-byte Reload
	je	.LBB13_113
.LBB13_86:                              #   Parent Loop BB13_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_89 Depth 3
                                        #         Child Loop BB13_92 Depth 4
                                        #           Child Loop BB13_95 Depth 5
                                        #             Child Loop BB13_98 Depth 6
                                        #               Child Loop BB13_101 Depth 7
                                        #                 Child Loop BB13_104 Depth 8
                                        #                   Child Loop BB13_109 Depth 9
	movl	%r11d, %eax
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	cmpl	368(%rsp), %ecx                 # 4-byte Folded Reload
	movl	424(%rsp), %ecx                 # 4-byte Reload
	cmovel	%ecx, %r11d
	testl	%ecx, %ecx
	cmovel	%eax, %r11d
	testl	%r13d, %r13d
	je	.LBB13_85
# %bb.87:                               #   in Loop: Header=BB13_86 Depth=2
	movl	%r11d, %eax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movl	$0, 160(%rsp)                   # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB13_89
	.p2align	4, 0x90
.LBB13_88:                              #   in Loop: Header=BB13_89 Depth=3
	movq	80(%rsp), %rcx                  # 8-byte Reload
	leal	1(%rcx), %eax
	addl	%r15d, 160(%rsp)                # 4-byte Folded Spill
	cmpl	440(%rsp), %ecx                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	je	.LBB13_85
.LBB13_89:                              #   Parent Loop BB13_83 Depth=1
                                        #     Parent Loop BB13_86 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_92 Depth 4
                                        #           Child Loop BB13_95 Depth 5
                                        #             Child Loop BB13_98 Depth 6
                                        #               Child Loop BB13_101 Depth 7
                                        #                 Child Loop BB13_104 Depth 8
                                        #                   Child Loop BB13_109 Depth 9
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	je	.LBB13_88
# %bb.90:                               #   in Loop: Header=BB13_89 Depth=3
	movq	80(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	imull	116(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 400(%rsp)                 # 4-byte Spill
	movl	$0, 152(%rsp)                   # 4-byte Folded Spill
	xorl	%eax, %eax
	jmp	.LBB13_92
	.p2align	4, 0x90
.LBB13_91:                              #   in Loop: Header=BB13_92 Depth=4
	movl	232(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	movq	344(%rsp), %r15                 # 8-byte Reload
	addl	%r15d, 152(%rsp)                # 4-byte Folded Spill
	cmpl	120(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB13_88
.LBB13_92:                              #   Parent Loop BB13_83 Depth=1
                                        #     Parent Loop BB13_86 Depth=2
                                        #       Parent Loop BB13_89 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB13_95 Depth 5
                                        #             Child Loop BB13_98 Depth 6
                                        #               Child Loop BB13_101 Depth 7
                                        #                 Child Loop BB13_104 Depth 8
                                        #                   Child Loop BB13_109 Depth 9
	movl	%eax, 232(%rsp)                 # 4-byte Spill
	cmpl	408(%rsp), %eax                 # 4-byte Folded Reload
	movl	16(%rsp), %r8d                  # 4-byte Reload
	movl	%r8d, %eax
	movl	356(%rsp), %ecx                 # 4-byte Reload
	cmovel	%ecx, %eax
	testl	%ecx, %ecx
	cmovel	%r8d, %eax
	movl	%eax, 248(%rsp)                 # 4-byte Spill
	testl	%eax, %eax
	je	.LBB13_91
# %bb.93:                               #   in Loop: Header=BB13_92 Depth=4
	movl	232(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	imull	344(%rsp), %ecx                 # 4-byte Folded Reload
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax def $rax
	imull	16(%rsp), %eax                  # 4-byte Folded Reload
	addl	400(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movl	152(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 208(%rsp)                 # 4-byte Spill
	jmp	.LBB13_95
	.p2align	4, 0x90
.LBB13_94:                              #   in Loop: Header=BB13_95 Depth=5
	movq	128(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	incl	208(%rsp)                       # 4-byte Folded Spill
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	cmpl	248(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB13_91
.LBB13_95:                              #   Parent Loop BB13_83 Depth=1
                                        #     Parent Loop BB13_86 Depth=2
                                        #       Parent Loop BB13_89 Depth=3
                                        #         Parent Loop BB13_92 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB13_98 Depth 6
                                        #               Child Loop BB13_101 Depth 7
                                        #                 Child Loop BB13_104 Depth 8
                                        #                   Child Loop BB13_109 Depth 9
	cmpl	$0, (%rsp)                      # 4-byte Folded Reload
	je	.LBB13_94
# %bb.96:                               #   in Loop: Header=BB13_95 Depth=5
	movq	240(%rsp), %rax                 # 8-byte Reload
	movq	128(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movq	%rax, 336(%rsp)                 # 8-byte Spill
	movq	312(%rsp), %rax                 # 8-byte Reload
	addl	%ecx, %eax
	imull	(%rsp), %eax                    # 4-byte Folded Reload
	addl	376(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	movl	200(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 328(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	jmp	.LBB13_98
	.p2align	4, 0x90
.LBB13_97:                              #   in Loop: Header=BB13_98 Depth=6
	movq	256(%rsp), %rcx                 # 8-byte Reload
	incq	%rcx
	incl	328(%rsp)                       # 4-byte Folded Spill
	movq	%rcx, %rax
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	cmpq	168(%rsp), %rcx                 # 8-byte Folded Reload
	je	.LBB13_94
.LBB13_98:                              #   Parent Loop BB13_83 Depth=1
                                        #     Parent Loop BB13_86 Depth=2
                                        #       Parent Loop BB13_89 Depth=3
                                        #         Parent Loop BB13_92 Depth=4
                                        #           Parent Loop BB13_95 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB13_101 Depth 7
                                        #                 Child Loop BB13_104 Depth 8
                                        #                   Child Loop BB13_109 Depth 9
	cmpl	$0, 96(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_97
# %bb.99:                               #   in Loop: Header=BB13_98 Depth=6
	movq	320(%rsp), %rax                 # 8-byte Reload
	movq	256(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rdx
	xorl	%eax, %eax
	movl	160(%rsp), %edi                 # 4-byte Reload
	movl	328(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 104(%rsp)                 # 4-byte Spill
	movq	%rdx, 384(%rsp)                 # 8-byte Spill
	jmp	.LBB13_101
	.p2align	4, 0x90
.LBB13_100:                             #   in Loop: Header=BB13_101 Depth=7
	movl	176(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	movl	104(%rsp), %ecx                 # 4-byte Reload
	addl	264(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 104(%rsp)                 # 4-byte Spill
	incl	%edi
	cmpl	96(%rsp), %eax                  # 4-byte Folded Reload
	je	.LBB13_97
.LBB13_101:                             #   Parent Loop BB13_83 Depth=1
                                        #     Parent Loop BB13_86 Depth=2
                                        #       Parent Loop BB13_89 Depth=3
                                        #         Parent Loop BB13_92 Depth=4
                                        #           Parent Loop BB13_95 Depth=5
                                        #             Parent Loop BB13_98 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB13_104 Depth 8
                                        #                   Child Loop BB13_109 Depth 9
	movl	%eax, 176(%rsp)                 # 4-byte Spill
	cmpl	$0, 40(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_100
# %bb.102:                              #   in Loop: Header=BB13_101 Depth=7
	movl	208(%rsp), %esi                 # 4-byte Reload
	movl	104(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 88(%rsp)                  # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movl	%edi, 224(%rsp)                 # 4-byte Spill
	jmp	.LBB13_104
	.p2align	4, 0x90
.LBB13_103:                             #   in Loop: Header=BB13_104 Depth=8
	movq	184(%rsp), %rcx                 # 8-byte Reload
	incq	%rcx
	movl	88(%rsp), %eax                  # 4-byte Reload
	addl	(%rsp), %eax                    # 4-byte Folded Reload
	movl	%eax, 88(%rsp)                  # 4-byte Spill
	incl	%esi
	movq	%rcx, %rax
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	cmpq	40(%rsp), %rcx                  # 8-byte Folded Reload
	je	.LBB13_100
.LBB13_104:                             #   Parent Loop BB13_83 Depth=1
                                        #     Parent Loop BB13_86 Depth=2
                                        #       Parent Loop BB13_89 Depth=3
                                        #         Parent Loop BB13_92 Depth=4
                                        #           Parent Loop BB13_95 Depth=5
                                        #             Parent Loop BB13_98 Depth=6
                                        #               Parent Loop BB13_101 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB13_109 Depth 9
	testl	%r11d, %r11d
	je	.LBB13_103
# %bb.105:                              #   in Loop: Header=BB13_104 Depth=8
	movq	336(%rsp), %rax                 # 8-byte Reload
	movq	184(%rsp), %rcx                 # 8-byte Reload
	leal	(%rax,%rcx), %ebx
	movq	216(%rsp), %rbp                 # 8-byte Reload
	movl	272(%rsp), %r13d                # 4-byte Reload
	movl	88(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %r15d
	movl	%esi, 192(%rsp)                 # 4-byte Spill
	jmp	.LBB13_109
	.p2align	4, 0x90
.LBB13_106:                             #   in Loop: Header=BB13_109 Depth=9
	movzbl	67(%r12), %eax
.LBB13_107:                             #   in Loop: Header=BB13_109 Depth=9
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movq	520(%rsp), %r9                  # 8-byte Reload
	movq	512(%rsp), %r12                 # 8-byte Reload
	movq	448(%rsp), %r10                 # 8-byte Reload
	movl	%r14d, %r11d
	movl	280(%rsp), %r14d                # 4-byte Reload
	movq	384(%rsp), %rdx                 # 8-byte Reload
	movl	224(%rsp), %edi                 # 4-byte Reload
	movl	192(%rsp), %esi                 # 4-byte Reload
	movq	%rbp, %rbx
	movq	56(%rsp), %rbp                  # 8-byte Reload
.LBB13_108:                             #   in Loop: Header=BB13_109 Depth=9
	movl	24(%r12), %eax
	imull	%edi, %eax
	addl	%esi, %eax
	imull	%r11d, %eax
	addl	%r13d, %eax
	movq	8(%r12), %rcx
	cltq
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	8(%r9), %rax
	movslq	%r15d, %r15
	vmovss	(%rax,%r15,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movq	8(%r10), %rax
	vfmadd213ss	(%rax,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rax,%rdx,4)
	addl	%r14d, %r15d
	incl	%r13d
	decq	%rbp
	je	.LBB13_103
.LBB13_109:                             #   Parent Loop BB13_83 Depth=1
                                        #     Parent Loop BB13_86 Depth=2
                                        #       Parent Loop BB13_89 Depth=3
                                        #         Parent Loop BB13_92 Depth=4
                                        #           Parent Loop BB13_95 Depth=5
                                        #             Parent Loop BB13_98 Depth=6
                                        #               Parent Loop BB13_101 Depth=7
                                        #                 Parent Loop BB13_104 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	cmpl	24(%rsp), %ebx                  # 4-byte Folded Reload
	jbe	.LBB13_108
# %bb.110:                              #   in Loop: Header=BB13_109 Depth=9
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	movl	%r11d, %r14d
	movl	$_ZSt4cout, %edi
	movl	$.L.str.7, %esi
	movl	$8, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movq	%rbx, %rbp
	movq	%rbx, %rsi
	callq	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	.LBB13_280
# %bb.111:                              #   in Loop: Header=BB13_109 Depth=9
	cmpb	$0, 56(%r12)
	jne	.LBB13_106
# %bb.112:                              #   in Loop: Header=BB13_109 Depth=9
	movq	%r12, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movq	%r12, %rdi
	movl	$10, %esi
	callq	*48(%rax)
	jmp	.LBB13_107
.LBB13_113:                             #   in Loop: Header=BB13_83 Depth=1
	movl	304(%rsp), %esi                 # 4-byte Reload
	incl	%esi
	movq	360(%rsp), %rdi                 # 8-byte Reload
	addl	72(%rsp), %edi                  # 4-byte Folded Reload
	cmpl	136(%rsp), %esi                 # 4-byte Folded Reload
	movl	76(%rsp), %r8d                  # 4-byte Reload
	jne	.LBB13_83
	jmp	.LBB13_277
.LBB13_114:
	cmpl	$0, 136(%rsp)                   # 4-byte Folded Reload
	movl	52(%rsp), %ecx                  # 4-byte Reload
	je	.LBB13_277
# %bb.115:
	movq	136(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 496(%rsp)                 # 4-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 360(%rsp)                 # 4-byte Spill
	movq	64(%rsp), %r14                  # 8-byte Reload
	imull	%ecx, %r14d
	imull	24(%rsp), %r14d                 # 4-byte Folded Reload
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rdx                    # 8-byte Reload
	movl	8(%rsp), %eax                   # 4-byte Reload
	imull	%edx, %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movl	%edx, %esi
	imull	%ecx, %esi
	movslq	%r13d, %rax
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	movl	%edx, %edi
	movq	96(%rsp), %rax                  # 8-byte Reload
	imull	%eax, %edi
                                        # kill: def $eax killed $eax killed $rax def $rax
	movq	40(%rsp), %rbx                  # 8-byte Reload
	imull	%ebx, %eax
	movl	%esi, 300(%rsp)                 # 4-byte Spill
	imull	%eax, %esi
	movl	%esi, 76(%rsp)                  # 4-byte Spill
	movq	%rax, 560(%rsp)                 # 8-byte Spill
	addl	%eax, %eax
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	imull	%ebx, %edi
	movl	12(%rsp), %eax                  # 4-byte Reload
	imull	%eax, %edi
	movl	%edi, 296(%rsp)                 # 4-byte Spill
	imull	%edx, %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 504(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 472(%rsp)                 # 8-byte Spill
	xorl	%edx, %edx
	jmp	.LBB13_117
	.p2align	4, 0x90
.LBB13_116:                             #   in Loop: Header=BB13_117 Depth=1
	movl	464(%rsp), %edx                 # 4-byte Reload
	incl	%edx
	movq	472(%rsp), %rax                 # 8-byte Reload
	addl	12(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 472(%rsp)                 # 8-byte Spill
	movq	504(%rsp), %rax                 # 8-byte Reload
	addl	296(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, 504(%rsp)                 # 8-byte Spill
	cmpl	136(%rsp), %edx                 # 4-byte Folded Reload
	je	.LBB13_277
.LBB13_117:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_120 Depth 2
                                        #       Child Loop BB13_123 Depth 3
                                        #         Child Loop BB13_126 Depth 4
                                        #           Child Loop BB13_129 Depth 5
                                        #             Child Loop BB13_132 Depth 6
                                        #               Child Loop BB13_136 Depth 7
                                        #                 Child Loop BB13_139 Depth 8
                                        #                   Child Loop BB13_142 Depth 9
	movq	(%rsp), %rax                    # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%edx, 464(%rsp)                 # 4-byte Spill
	cmpl	496(%rsp), %edx                 # 4-byte Folded Reload
	movl	%eax, %esi
	movl	420(%rsp), %edx                 # 4-byte Reload
	cmovel	%edx, %esi
	testl	%edx, %edx
	cmovel	%eax, %esi
	cmpl	$0, 144(%rsp)                   # 4-byte Folded Reload
	movq	%rsi, (%rsp)                    # 8-byte Spill
	je	.LBB13_116
# %bb.118:                              #   in Loop: Header=BB13_117 Depth=1
	movl	8(%rsp), %eax                   # 4-byte Reload
	movl	%eax, %edx
	movl	464(%rsp), %eax                 # 4-byte Reload
	imull	%eax, %edx
	movq	%rdx, 232(%rsp)                 # 8-byte Spill
	movl	12(%rsp), %edx                  # 4-byte Reload
	imull	%eax, %edx
	movl	%edx, 72(%rsp)                  # 4-byte Spill
	movq	472(%rsp), %rax                 # 8-byte Reload
	addl	%esi, %eax
	imull	560(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	imull	%esi, %eax
	movl	%eax, 208(%rsp)                 # 4-byte Spill
	movl	292(%rsp), %r12d                # 4-byte Reload
	imull	%esi, %r12d
	movl	$1, %eax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movl	$0, 320(%rsp)                   # 4-byte Folded Spill
	movq	504(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 440(%rsp)                 # 4-byte Spill
	xorl	%edx, %edx
	jmp	.LBB13_120
	.p2align	4, 0x90
.LBB13_119:                             #   in Loop: Header=BB13_120 Depth=2
	movl	304(%rsp), %edx                 # 4-byte Reload
	incl	%edx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	168(%rsp), %rcx                 # 8-byte Reload
	addl	%eax, %ecx
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	movl	76(%rsp), %ecx                  # 4-byte Reload
	addl	%ecx, 20(%rsp)                  # 4-byte Folded Spill
	addl	%ecx, 440(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 320(%rsp)                 # 4-byte Folded Spill
	cmpl	144(%rsp), %edx                 # 4-byte Folded Reload
	movl	52(%rsp), %ecx                  # 4-byte Reload
	je	.LBB13_116
.LBB13_120:                             #   Parent Loop BB13_117 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_123 Depth 3
                                        #         Child Loop BB13_126 Depth 4
                                        #           Child Loop BB13_129 Depth 5
                                        #             Child Loop BB13_132 Depth 6
                                        #               Child Loop BB13_136 Depth 7
                                        #                 Child Loop BB13_139 Depth 8
                                        #                   Child Loop BB13_142 Depth 9
	movl	%edx, 304(%rsp)                 # 4-byte Spill
	cmpl	36(%rsp), %edx                  # 4-byte Folded Reload
	movl	%ecx, %edx
	movl	424(%rsp), %eax                 # 4-byte Reload
	cmovel	%eax, %edx
	testl	%eax, %eax
	cmovel	%ecx, %edx
	movl	%edx, 24(%rsp)                  # 4-byte Spill
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	je	.LBB13_119
# %bb.121:                              #   in Loop: Header=BB13_120 Depth=2
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %ecx
	movl	304(%rsp), %eax                 # 4-byte Reload
	imull	%eax, %ecx
	movq	%rcx, 336(%rsp)                 # 8-byte Spill
	movl	300(%rsp), %ecx                 # 4-byte Reload
	imull	%eax, %ecx
	addl	72(%rsp), %ecx                  # 4-byte Folded Reload
	movl	%ecx, 272(%rsp)                 # 4-byte Spill
	movslq	24(%rsp), %rax                  # 4-byte Folded Reload
	movq	%rax, %r8
	andq	$-2, %r8
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movl	%eax, %eax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	movl	$0, 392(%rsp)                   # 4-byte Folded Spill
	xorl	%eax, %eax
	jmp	.LBB13_123
	.p2align	4, 0x90
.LBB13_122:                             #   in Loop: Header=BB13_123 Depth=3
	movl	368(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	addl	%r15d, 392(%rsp)                # 4-byte Folded Spill
	cmpl	120(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB13_119
.LBB13_123:                             #   Parent Loop BB13_117 Depth=1
                                        #     Parent Loop BB13_120 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_126 Depth 4
                                        #           Child Loop BB13_129 Depth 5
                                        #             Child Loop BB13_132 Depth 6
                                        #               Child Loop BB13_136 Depth 7
                                        #                 Child Loop BB13_139 Depth 8
                                        #                   Child Loop BB13_142 Depth 9
	movl	%eax, 368(%rsp)                 # 4-byte Spill
	cmpl	360(%rsp), %eax                 # 4-byte Folded Reload
	movl	16(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %edx
	movl	356(%rsp), %ecx                 # 4-byte Reload
	cmovel	%ecx, %edx
	testl	%ecx, %ecx
	cmovel	%eax, %edx
	movl	%edx, 408(%rsp)                 # 4-byte Spill
	testl	%edx, %edx
	je	.LBB13_122
# %bb.124:                              #   in Loop: Header=BB13_123 Depth=3
	movl	368(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	imull	%r15d, %ecx
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax def $rax
	imull	16(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movl	392(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 328(%rsp)                 # 4-byte Spill
	jmp	.LBB13_126
	.p2align	4, 0x90
.LBB13_125:                             #   in Loop: Header=BB13_126 Depth=4
	movq	152(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	incl	328(%rsp)                       # 4-byte Folded Spill
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	cmpl	408(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB13_122
.LBB13_126:                             #   Parent Loop BB13_117 Depth=1
                                        #     Parent Loop BB13_120 Depth=2
                                        #       Parent Loop BB13_123 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB13_129 Depth 5
                                        #             Child Loop BB13_132 Depth 6
                                        #               Child Loop BB13_136 Depth 7
                                        #                 Child Loop BB13_139 Depth 8
                                        #                   Child Loop BB13_142 Depth 9
	testl	%esi, %esi
	je	.LBB13_125
# %bb.127:                              #   in Loop: Header=BB13_126 Depth=4
	movq	400(%rsp), %rax                 # 8-byte Reload
	movq	152(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 376(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movl	440(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 240(%rsp)                 # 4-byte Spill
	movl	20(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 312(%rsp)                 # 4-byte Spill
	jmp	.LBB13_129
	.p2align	4, 0x90
.LBB13_128:                             #   in Loop: Header=BB13_129 Depth=5
	movq	88(%rsp), %rax                  # 8-byte Reload
	incl	%eax
	incl	312(%rsp)                       # 4-byte Folded Spill
	incl	240(%rsp)                       # 4-byte Folded Spill
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	cmpl	%esi, %eax
	movl	436(%rsp), %r13d                # 4-byte Reload
	je	.LBB13_125
.LBB13_129:                             #   Parent Loop BB13_117 Depth=1
                                        #     Parent Loop BB13_120 Depth=2
                                        #       Parent Loop BB13_123 Depth=3
                                        #         Parent Loop BB13_126 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB13_132 Depth 6
                                        #               Child Loop BB13_136 Depth 7
                                        #                 Child Loop BB13_139 Depth 8
                                        #                   Child Loop BB13_142 Depth 9
	testl	%r13d, %r13d
	je	.LBB13_128
# %bb.130:                              #   in Loop: Header=BB13_129 Depth=5
	movq	232(%rsp), %rax                 # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 200(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	jmp	.LBB13_132
	.p2align	4, 0x90
.LBB13_131:                             #   in Loop: Header=BB13_132 Depth=6
	movq	128(%rsp), %rcx                 # 8-byte Reload
	incq	%rcx
	movq	344(%rsp), %r15                 # 8-byte Reload
	movq	160(%rsp), %rax                 # 8-byte Reload
	addl	%r15d, %eax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	cmpq	248(%rsp), %rcx                 # 8-byte Folded Reload
	je	.LBB13_128
.LBB13_132:                             #   Parent Loop BB13_117 Depth=1
                                        #     Parent Loop BB13_120 Depth=2
                                        #       Parent Loop BB13_123 Depth=3
                                        #         Parent Loop BB13_126 Depth=4
                                        #           Parent Loop BB13_129 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB13_136 Depth 7
                                        #                 Child Loop BB13_139 Depth 8
                                        #                   Child Loop BB13_142 Depth 9
	cmpl	$0, 96(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_131
# %bb.133:                              #   in Loop: Header=BB13_132 Depth=6
	cmpl	$0, 40(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_131
# %bb.134:                              #   in Loop: Header=BB13_132 Depth=6
	movl	116(%rsp), %eax                 # 4-byte Reload
	movq	128(%rsp), %rcx                 # 8-byte Reload
	imull	%ecx, %eax
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	imull	344(%rsp), %ecx                 # 4-byte Folded Reload
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	addl	376(%rsp), %eax                 # 4-byte Folded Reload
	imull	(%rsp), %eax                    # 4-byte Folded Reload
	addl	200(%rsp), %eax                 # 4-byte Folded Reload
	cltq
	xorl	%ecx, %ecx
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	movl	240(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 104(%rsp)                 # 4-byte Spill
	movl	312(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 176(%rsp)                 # 4-byte Spill
	movq	160(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, 264(%rsp)                 # 4-byte Spill
	jmp	.LBB13_136
	.p2align	4, 0x90
.LBB13_135:                             #   in Loop: Header=BB13_136 Depth=7
	movq	216(%rsp), %rdx                 # 8-byte Reload
	incl	%edx
	incl	264(%rsp)                       # 4-byte Folded Spill
	movl	208(%rsp), %ecx                 # 4-byte Reload
	addl	%ecx, 176(%rsp)                 # 4-byte Folded Spill
	addl	%ecx, 104(%rsp)                 # 4-byte Folded Spill
	movq	%rdx, 216(%rsp)                 # 8-byte Spill
	cmpl	96(%rsp), %edx                  # 4-byte Folded Reload
	je	.LBB13_131
.LBB13_136:                             #   Parent Loop BB13_117 Depth=1
                                        #     Parent Loop BB13_120 Depth=2
                                        #       Parent Loop BB13_123 Depth=3
                                        #         Parent Loop BB13_126 Depth=4
                                        #           Parent Loop BB13_129 Depth=5
                                        #             Parent Loop BB13_132 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB13_139 Depth 8
                                        #                   Child Loop BB13_142 Depth 9
	cmpl	$0, 24(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_135
# %bb.137:                              #   in Loop: Header=BB13_136 Depth=7
	movq	216(%rsp), %rdx                 # 8-byte Reload
	movl	%edx, %ecx
	imull	(%rsp), %ecx                    # 4-byte Folded Reload
	movl	%ecx, 384(%rsp)                 # 4-byte Spill
	movq	256(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %edx
	movq	512(%rsp), %rcx                 # 8-byte Reload
	movl	24(%rcx), %ebx
	movq	8(%rcx), %r11
	movq	520(%rsp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %r10
	movq	448(%rsp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rdi
	vmovss	(%rdi,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	imull	%ebx, %edx
	movl	%edx, 280(%rsp)                 # 4-byte Spill
	imull	264(%rsp), %ebx                 # 4-byte Folded Reload
	addl	328(%rsp), %ebx                 # 4-byte Folded Reload
	imull	24(%rsp), %ebx                  # 4-byte Folded Reload
	movq	168(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%rbx), %r13d
	addl	320(%rsp), %ebx                 # 4-byte Folded Reload
	xorl	%r14d, %r14d
	movl	104(%rsp), %ecx                 # 4-byte Reload
	movl	176(%rsp), %r15d                # 4-byte Reload
	jmp	.LBB13_139
	.p2align	4, 0x90
.LBB13_138:                             #   in Loop: Header=BB13_139 Depth=8
	incl	%r14d
	movq	224(%rsp), %rdx                 # 8-byte Reload
	addq	%rdx, %r13
	movq	(%rsp), %rcx                    # 8-byte Reload
	addl	%ecx, %r15d
	movl	56(%rsp), %esi                  # 4-byte Reload
	addl	%ecx, %esi
	movl	%esi, %ecx
	addq	%rdx, %rbx
	cmpl	40(%rsp), %r14d                 # 4-byte Folded Reload
	je	.LBB13_135
.LBB13_139:                             #   Parent Loop BB13_117 Depth=1
                                        #     Parent Loop BB13_120 Depth=2
                                        #       Parent Loop BB13_123 Depth=3
                                        #         Parent Loop BB13_126 Depth=4
                                        #           Parent Loop BB13_129 Depth=5
                                        #             Parent Loop BB13_132 Depth=6
                                        #               Parent Loop BB13_136 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB13_142 Depth 9
	cmpl	$1, 24(%rsp)                    # 4-byte Folded Reload
	movl	%ecx, 56(%rsp)                  # 4-byte Spill
	jne	.LBB13_141
# %bb.140:                              #   in Loop: Header=BB13_139 Depth=8
	xorl	%ecx, %ecx
	jmp	.LBB13_143
	.p2align	4, 0x90
.LBB13_141:                             #   in Loop: Header=BB13_139 Depth=8
	movl	%ecx, %ebp
	movl	%r15d, %esi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB13_142:                             #   Parent Loop BB13_117 Depth=1
                                        #     Parent Loop BB13_120 Depth=2
                                        #       Parent Loop BB13_123 Depth=3
                                        #         Parent Loop BB13_126 Depth=4
                                        #           Parent Loop BB13_129 Depth=5
                                        #             Parent Loop BB13_132 Depth=6
                                        #               Parent Loop BB13_136 Depth=7
                                        #                 Parent Loop BB13_139 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rbx,%rcx), %r9d
	movslq	%r9d, %rdx
	movslq	%ebp, %rbp
	vmovss	(%r10,%rbp,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	(%r11,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovss	%xmm1, (%rdi,%rax,4)
	leal	(%r13,%rcx), %edx
	movslq	%edx, %rdx
	movslq	%esi, %rsi
	vmovss	(%r10,%rsi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vfmadd132ss	(%r11,%rdx,4), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovss	%xmm0, (%rdi,%rax,4)
	addq	$2, %rcx
	addl	%r12d, %esi
	addl	%r12d, %ebp
	cmpq	%rcx, %r8
	jne	.LBB13_142
.LBB13_143:                             #   in Loop: Header=BB13_139 Depth=8
	testb	$1, 192(%rsp)                   # 1-byte Folded Reload
	je	.LBB13_138
# %bb.144:                              #   in Loop: Header=BB13_139 Depth=8
	movq	184(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%r14), %esi
	addl	280(%rsp), %esi                 # 4-byte Folded Reload
	imull	24(%rsp), %esi                  # 4-byte Folded Reload
	movq	336(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%rcx), %ebp
	addl	%esi, %ebp
	movl	%r14d, %esi
	movq	(%rsp), %rdx                    # 8-byte Reload
	imull	%edx, %esi
	addl	88(%rsp), %esi                  # 4-byte Folded Reload
	imull	%edx, %ecx
	addl	272(%rsp), %ecx                 # 4-byte Folded Reload
	imull	96(%rsp), %ecx                  # 4-byte Folded Reload
	addl	384(%rsp), %ecx                 # 4-byte Folded Reload
	imull	40(%rsp), %ecx                  # 4-byte Folded Reload
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	vmovss	(%r10,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%ebp, %rcx
	vfmadd231ss	(%r11,%rcx,4), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovss	%xmm0, (%rdi,%rax,4)
	jmp	.LBB13_138
.LBB13_145:
	cmpl	$0, 136(%rsp)                   # 4-byte Folded Reload
	movl	52(%rsp), %ecx                  # 4-byte Reload
	je	.LBB13_277
# %bb.146:
	movq	136(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 304(%rsp)                 # 4-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 400(%rsp)                 # 4-byte Spill
	movq	64(%rsp), %r14                  # 8-byte Reload
	imull	%ecx, %r14d
	imull	24(%rsp), %r14d                 # 4-byte Folded Reload
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	8(%rsp), %edx                   # 4-byte Reload
	imull	%eax, %edx
	movl	%edx, 8(%rsp)                   # 4-byte Spill
	movl	12(%rsp), %edx                  # 4-byte Reload
	imull	%eax, %edx
	movl	%edx, 12(%rsp)                  # 4-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	imull	%ecx, %eax
	movl	%eax, 368(%rsp)                 # 4-byte Spill
	movslq	%r13d, %rdx
	movq	%rdx, %rax
	movq	%rdx, 280(%rsp)                 # 8-byte Spill
	andq	$-2, %rdx
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	leal	(%r15,%r15), %eax
	movl	%eax, 392(%rsp)                 # 4-byte Spill
	xorl	%edx, %edx
	jmp	.LBB13_148
	.p2align	4, 0x90
.LBB13_147:                             #   in Loop: Header=BB13_148 Depth=1
	movq	360(%rsp), %rdx                 # 8-byte Reload
	incl	%edx
	cmpl	136(%rsp), %edx                 # 4-byte Folded Reload
	je	.LBB13_277
.LBB13_148:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_151 Depth 2
                                        #       Child Loop BB13_154 Depth 3
                                        #         Child Loop BB13_157 Depth 4
                                        #           Child Loop BB13_160 Depth 5
                                        #             Child Loop BB13_163 Depth 6
                                        #               Child Loop BB13_167 Depth 7
                                        #                 Child Loop BB13_170 Depth 8
                                        #                   Child Loop BB13_173 Depth 9
	movq	(%rsp), %rax                    # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 360(%rsp)                 # 8-byte Spill
	cmpl	304(%rsp), %edx                 # 4-byte Folded Reload
	movl	%eax, %r14d
	movl	420(%rsp), %edx                 # 4-byte Reload
	cmovel	%edx, %r14d
	testl	%edx, %edx
	cmovel	%eax, %r14d
	cmpl	$0, 144(%rsp)                   # 4-byte Folded Reload
	movq	%r14, (%rsp)                    # 8-byte Spill
	je	.LBB13_147
# %bb.149:                              #   in Loop: Header=BB13_148 Depth=1
	movl	8(%rsp), %eax                   # 4-byte Reload
	movl	%eax, %edx
	movq	360(%rsp), %rax                 # 8-byte Reload
	imull	%eax, %edx
	movq	%rdx, 240(%rsp)                 # 8-byte Spill
	movl	12(%rsp), %edx                  # 4-byte Reload
	imull	%eax, %edx
	movl	%edx, 440(%rsp)                 # 4-byte Spill
	movl	$0, 160(%rsp)                   # 4-byte Folded Spill
	xorl	%edx, %edx
	jmp	.LBB13_151
	.p2align	4, 0x90
.LBB13_150:                             #   in Loop: Header=BB13_151 Depth=2
	movl	80(%rsp), %edx                  # 4-byte Reload
	incl	%edx
	movl	160(%rsp), %eax                 # 4-byte Reload
	addl	64(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, 160(%rsp)                 # 4-byte Spill
	cmpl	144(%rsp), %edx                 # 4-byte Folded Reload
	movl	52(%rsp), %ecx                  # 4-byte Reload
	je	.LBB13_147
.LBB13_151:                             #   Parent Loop BB13_148 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_154 Depth 3
                                        #         Child Loop BB13_157 Depth 4
                                        #           Child Loop BB13_160 Depth 5
                                        #             Child Loop BB13_163 Depth 6
                                        #               Child Loop BB13_167 Depth 7
                                        #                 Child Loop BB13_170 Depth 8
                                        #                   Child Loop BB13_173 Depth 9
	movl	%edx, 80(%rsp)                  # 4-byte Spill
	cmpl	20(%rsp), %edx                  # 4-byte Folded Reload
	movl	%ecx, %edx
	movl	424(%rsp), %eax                 # 4-byte Reload
	cmovel	%eax, %edx
	testl	%eax, %eax
	cmovel	%ecx, %edx
	movl	%edx, 272(%rsp)                 # 4-byte Spill
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	je	.LBB13_150
# %bb.152:                              #   in Loop: Header=BB13_151 Depth=2
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %ecx
	movl	80(%rsp), %eax                  # 4-byte Reload
	imull	%eax, %ecx
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	movl	368(%rsp), %ecx                 # 4-byte Reload
	imull	%eax, %ecx
	addl	440(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 88(%rsp)                  # 4-byte Spill
	movl	272(%rsp), %eax                 # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movl	392(%rsp), %ecx                 # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, 128(%rsp)                 # 4-byte Spill
	movl	$0, 408(%rsp)                   # 4-byte Folded Spill
	xorl	%eax, %eax
	jmp	.LBB13_154
	.p2align	4, 0x90
.LBB13_153:                             #   in Loop: Header=BB13_154 Depth=3
	movl	152(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	addl	%r15d, 408(%rsp)                # 4-byte Folded Spill
	cmpl	120(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB13_150
.LBB13_154:                             #   Parent Loop BB13_148 Depth=1
                                        #     Parent Loop BB13_151 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_157 Depth 4
                                        #           Child Loop BB13_160 Depth 5
                                        #             Child Loop BB13_163 Depth 6
                                        #               Child Loop BB13_167 Depth 7
                                        #                 Child Loop BB13_170 Depth 8
                                        #                   Child Loop BB13_173 Depth 9
	movl	%eax, 152(%rsp)                 # 4-byte Spill
	cmpl	400(%rsp), %eax                 # 4-byte Folded Reload
	movl	16(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %edx
	movl	356(%rsp), %ecx                 # 4-byte Reload
	cmovel	%ecx, %edx
	testl	%ecx, %ecx
	cmovel	%eax, %edx
	movl	%edx, 200(%rsp)                 # 4-byte Spill
	testl	%edx, %edx
	je	.LBB13_153
# %bb.155:                              #   in Loop: Header=BB13_154 Depth=3
	movl	152(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	imull	%r15d, %ecx
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax def $rax
	imull	16(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	movl	408(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 248(%rsp)                 # 4-byte Spill
	jmp	.LBB13_157
	.p2align	4, 0x90
.LBB13_156:                             #   in Loop: Header=BB13_157 Depth=4
	movq	312(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	incl	248(%rsp)                       # 4-byte Folded Spill
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	cmpl	200(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB13_153
.LBB13_157:                             #   Parent Loop BB13_148 Depth=1
                                        #     Parent Loop BB13_151 Depth=2
                                        #       Parent Loop BB13_154 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB13_160 Depth 5
                                        #             Child Loop BB13_163 Depth 6
                                        #               Child Loop BB13_167 Depth 7
                                        #                 Child Loop BB13_170 Depth 8
                                        #                   Child Loop BB13_173 Depth 9
	testl	%r14d, %r14d
	je	.LBB13_156
# %bb.158:                              #   in Loop: Header=BB13_157 Depth=4
	movq	376(%rsp), %rax                 # 8-byte Reload
	movq	312(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	movq	232(%rsp), %rax                 # 8-byte Reload
	leal	(%rcx,%rax), %r12d
	xorl	%eax, %eax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	jmp	.LBB13_160
	.p2align	4, 0x90
.LBB13_159:                             #   in Loop: Header=BB13_160 Depth=5
	movq	168(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	cmpl	%r14d, %eax
	je	.LBB13_156
.LBB13_160:                             #   Parent Loop BB13_148 Depth=1
                                        #     Parent Loop BB13_151 Depth=2
                                        #       Parent Loop BB13_154 Depth=3
                                        #         Parent Loop BB13_157 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB13_163 Depth 6
                                        #               Child Loop BB13_167 Depth 7
                                        #                 Child Loop BB13_170 Depth 8
                                        #                   Child Loop BB13_173 Depth 9
	cmpl	$0, 96(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_159
# %bb.161:                              #   in Loop: Header=BB13_160 Depth=5
	movq	240(%rsp), %rax                 # 8-byte Reload
	movq	168(%rsp), %rcx                 # 8-byte Reload
	addl	%eax, %ecx
	movl	$0, 336(%rsp)                   # 4-byte Folded Spill
	movl	%r15d, %eax
	movl	%r15d, 328(%rsp)                # 4-byte Spill
	jmp	.LBB13_163
	.p2align	4, 0x90
.LBB13_162:                             #   in Loop: Header=BB13_163 Depth=6
	movl	336(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	incl	328(%rsp)                       # 4-byte Folded Spill
	movl	%eax, 336(%rsp)                 # 4-byte Spill
	cmpl	96(%rsp), %eax                  # 4-byte Folded Reload
	je	.LBB13_159
.LBB13_163:                             #   Parent Loop BB13_148 Depth=1
                                        #     Parent Loop BB13_151 Depth=2
                                        #       Parent Loop BB13_154 Depth=3
                                        #         Parent Loop BB13_157 Depth=4
                                        #           Parent Loop BB13_160 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB13_167 Depth 7
                                        #                 Child Loop BB13_170 Depth 8
                                        #                   Child Loop BB13_173 Depth 9
	cmpl	$0, 40(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_162
# %bb.164:                              #   in Loop: Header=BB13_163 Depth=6
	cmpl	$0, 272(%rsp)                   # 4-byte Folded Reload
	je	.LBB13_162
# %bb.165:                              #   in Loop: Header=BB13_163 Depth=6
	movl	336(%rsp), %eax                 # 4-byte Reload
	imull	%r14d, %eax
	movl	%eax, 384(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	movl	248(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 256(%rsp)                 # 4-byte Spill
	jmp	.LBB13_167
	.p2align	4, 0x90
.LBB13_166:                             #   in Loop: Header=BB13_167 Depth=7
	movq	208(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	incl	256(%rsp)                       # 4-byte Folded Spill
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	cmpl	40(%rsp), %eax                  # 4-byte Folded Reload
	movl	436(%rsp), %r13d                # 4-byte Reload
	je	.LBB13_162
.LBB13_167:                             #   Parent Loop BB13_148 Depth=1
                                        #     Parent Loop BB13_151 Depth=2
                                        #       Parent Loop BB13_154 Depth=3
                                        #         Parent Loop BB13_157 Depth=4
                                        #           Parent Loop BB13_160 Depth=5
                                        #             Parent Loop BB13_163 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB13_170 Depth 8
                                        #                   Child Loop BB13_173 Depth 9
	testl	%r13d, %r13d
	je	.LBB13_166
# %bb.168:                              #   in Loop: Header=BB13_167 Depth=7
	movq	320(%rsp), %rax                 # 8-byte Reload
	movq	208(%rsp), %rdx                 # 8-byte Reload
	addl	%edx, %eax
	movl	%eax, 216(%rsp)                 # 4-byte Spill
	movl	%edx, %eax
	imull	%r14d, %eax
	addl	168(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 224(%rsp)                 # 4-byte Spill
	movq	512(%rsp), %rax                 # 8-byte Reload
	movl	24(%rax), %ebp
	movq	8(%rax), %rdx
	movq	520(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	movq	448(%rsp), %rsi                 # 8-byte Reload
	movq	8(%rsi), %r13
	movl	328(%rsp), %esi                 # 4-byte Reload
	imull	%ebp, %esi
	movl	256(%rsp), %r8d                 # 4-byte Reload
	addl	%r8d, %esi
	movl	272(%rsp), %r10d                # 4-byte Reload
	imull	%r10d, %esi
	movl	160(%rsp), %r9d                 # 4-byte Reload
	addl	%r9d, %esi
	movl	128(%rsp), %edi                 # 4-byte Reload
	imull	%ebp, %edi
	movl	336(%rsp), %ebx                 # 4-byte Reload
	movl	%ebp, 104(%rsp)                 # 4-byte Spill
	imull	%ebp, %ebx
	addl	%r8d, %ebx
	imull	%r10d, %ebx
	addl	%r9d, %ebx
	xorl	%r10d, %r10d
	jmp	.LBB13_170
	.p2align	4, 0x90
.LBB13_169:                             #   in Loop: Header=BB13_170 Depth=8
	incq	%r10
	movl	24(%rsp), %esi                  # 4-byte Reload
	incl	%esi
	movl	192(%rsp), %ebx                 # 4-byte Reload
	incl	%ebx
	cmpq	184(%rsp), %r10                 # 8-byte Folded Reload
	je	.LBB13_166
.LBB13_170:                             #   Parent Loop BB13_148 Depth=1
                                        #     Parent Loop BB13_151 Depth=2
                                        #       Parent Loop BB13_154 Depth=3
                                        #         Parent Loop BB13_157 Depth=4
                                        #           Parent Loop BB13_160 Depth=5
                                        #             Parent Loop BB13_163 Depth=6
                                        #               Parent Loop BB13_167 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB13_173 Depth 9
	movl	%r14d, %ebp
	imull	%r10d, %ebp
	addl	88(%rsp), %ebp                  # 4-byte Folded Reload
	imull	96(%rsp), %ebp                  # 4-byte Folded Reload
	addl	384(%rsp), %ebp                 # 4-byte Folded Reload
	imull	40(%rsp), %ebp                  # 4-byte Folded Reload
	addl	224(%rsp), %ebp                 # 4-byte Folded Reload
	movslq	%ebp, %r11
	cmpl	%r15d, 56(%rsp)                 # 4-byte Folded Reload
	movl	%esi, 24(%rsp)                  # 4-byte Spill
	movl	%ebx, 192(%rsp)                 # 4-byte Spill
	jae	.LBB13_172
# %bb.171:                              #   in Loop: Header=BB13_170 Depth=8
	xorl	%r8d, %r8d
	movq	(%rsp), %rbx                    # 8-byte Reload
	jmp	.LBB13_174
	.p2align	4, 0x90
.LBB13_172:                             #   in Loop: Header=BB13_170 Depth=8
	movl	%ebx, %ebp
	movl	%esi, %r15d
	xorl	%r8d, %r8d
	movq	176(%rsp), %r9                  # 8-byte Reload
	movl	116(%rsp), %r14d                # 4-byte Reload
	movq	(%rsp), %rbx                    # 8-byte Reload
	.p2align	4, 0x90
.LBB13_173:                             #   Parent Loop BB13_148 Depth=1
                                        #     Parent Loop BB13_151 Depth=2
                                        #       Parent Loop BB13_154 Depth=3
                                        #         Parent Loop BB13_157 Depth=4
                                        #           Parent Loop BB13_160 Depth=5
                                        #             Parent Loop BB13_163 Depth=6
                                        #               Parent Loop BB13_167 Depth=7
                                        #                 Parent Loop BB13_170 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	movl	%r14d, %esi
	imull	%r8d, %esi
	addl	%r12d, %esi
	imull	%ebx, %esi
	addl	%ecx, %esi
	movslq	%ebp, %rbp
	vmovss	(%rdx,%rbp,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	(%rax,%r11,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%esi, %rsi
	vfmadd213ss	(%r13,%rsi,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r13,%rsi,4)
	movl	%r8d, %esi
	orl	$1, %esi
	imull	%r14d, %esi
	addl	%r12d, %esi
	imull	%ebx, %esi
	addl	%ecx, %esi
	movslq	%r15d, %r15
	vmovss	(%rdx,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	(%rax,%r11,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%esi, %rsi
	vfmadd213ss	(%r13,%rsi,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r13,%rsi,4)
	addq	$2, %r8
	addl	%edi, %r15d
	addl	%edi, %ebp
	addq	$-2, %r9
	jne	.LBB13_173
.LBB13_174:                             #   in Loop: Header=BB13_170 Depth=8
	testb	$1, 280(%rsp)                   # 1-byte Folded Reload
	movq	344(%rsp), %r15                 # 8-byte Reload
	movq	%rbx, %r14
	je	.LBB13_169
# %bb.175:                              #   in Loop: Header=BB13_170 Depth=8
	movq	264(%rsp), %rsi                 # 8-byte Reload
	leal	(%rsi,%r10), %r9d
	movl	116(%rsp), %ebp                 # 4-byte Reload
	imull	%r8d, %ebp
	imull	%r15d, %r8d
	addl	336(%rsp), %r8d                 # 4-byte Folded Reload
	imull	104(%rsp), %r8d                 # 4-byte Folded Reload
	addl	216(%rsp), %r8d                 # 4-byte Folded Reload
	imull	272(%rsp), %r8d                 # 4-byte Folded Reload
	addl	%r9d, %r8d
	movslq	%r8d, %rsi
	vmovss	(%rdx,%rsi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	(%rax,%r11,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	addl	%r12d, %ebp
	imull	%r14d, %ebp
	addl	%ecx, %ebp
	movslq	%ebp, %rsi
	vfmadd213ss	(%r13,%rsi,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r13,%rsi,4)
	jmp	.LBB13_169
.LBB13_176:
	cmpl	$0, 136(%rsp)                   # 4-byte Folded Reload
	movl	52(%rsp), %ecx                  # 4-byte Reload
	je	.LBB13_277
# %bb.177:
	movq	136(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 440(%rsp)                 # 4-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 312(%rsp)                 # 4-byte Spill
	movq	64(%rsp), %r14                  # 8-byte Reload
	imull	%ecx, %r14d
	imull	24(%rsp), %r14d                 # 4-byte Folded Reload
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	8(%rsp), %edx                   # 4-byte Reload
	imull	%eax, %edx
	movl	%edx, 8(%rsp)                   # 4-byte Spill
	movl	12(%rsp), %edx                  # 4-byte Reload
	imull	%eax, %edx
	movl	%edx, 12(%rsp)                  # 4-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	imull	%ecx, %eax
	movl	%eax, 392(%rsp)                 # 4-byte Spill
	movslq	%r13d, %rdx
	movq	%rdx, %rax
	movq	%rdx, 192(%rsp)                 # 8-byte Spill
	andq	$-2, %rdx
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	leal	(%r15,%r15), %eax
	movl	%eax, 360(%rsp)                 # 4-byte Spill
	xorl	%edx, %edx
	jmp	.LBB13_179
	.p2align	4, 0x90
.LBB13_178:                             #   in Loop: Header=BB13_179 Depth=1
	movq	304(%rsp), %rdx                 # 8-byte Reload
	incl	%edx
	cmpl	136(%rsp), %edx                 # 4-byte Folded Reload
	je	.LBB13_277
.LBB13_179:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_182 Depth 2
                                        #       Child Loop BB13_185 Depth 3
                                        #         Child Loop BB13_188 Depth 4
                                        #           Child Loop BB13_191 Depth 5
                                        #             Child Loop BB13_194 Depth 6
                                        #               Child Loop BB13_198 Depth 7
                                        #                 Child Loop BB13_201 Depth 8
                                        #                   Child Loop BB13_204 Depth 9
	movq	(%rsp), %rax                    # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 304(%rsp)                 # 8-byte Spill
	cmpl	36(%rsp), %edx                  # 4-byte Folded Reload
	movl	%eax, %esi
	movl	420(%rsp), %edx                 # 4-byte Reload
	cmovel	%edx, %esi
	testl	%edx, %edx
	cmovel	%eax, %esi
	movq	%rsi, (%rsp)                    # 8-byte Spill
	cmpl	$0, 144(%rsp)                   # 4-byte Folded Reload
	je	.LBB13_178
# %bb.180:                              #   in Loop: Header=BB13_179 Depth=1
	movl	8(%rsp), %eax                   # 4-byte Reload
	movl	%eax, %edx
	movq	304(%rsp), %rax                 # 8-byte Reload
	imull	%eax, %edx
	movq	%rdx, 224(%rsp)                 # 8-byte Spill
	movl	12(%rsp), %edx                  # 4-byte Reload
	imull	%eax, %edx
	movl	%edx, 368(%rsp)                 # 4-byte Spill
	movslq	(%rsp), %rax                    # 4-byte Folded Reload
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	movl	$0, 80(%rsp)                    # 4-byte Folded Spill
	xorl	%edx, %edx
	movq	(%rsp), %r14                    # 8-byte Reload
	jmp	.LBB13_182
	.p2align	4, 0x90
.LBB13_181:                             #   in Loop: Header=BB13_182 Depth=2
	movl	20(%rsp), %edx                  # 4-byte Reload
	incl	%edx
	movl	80(%rsp), %eax                  # 4-byte Reload
	addl	64(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	cmpl	144(%rsp), %edx                 # 4-byte Folded Reload
	movl	52(%rsp), %ecx                  # 4-byte Reload
	je	.LBB13_178
.LBB13_182:                             #   Parent Loop BB13_179 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_185 Depth 3
                                        #         Child Loop BB13_188 Depth 4
                                        #           Child Loop BB13_191 Depth 5
                                        #             Child Loop BB13_194 Depth 6
                                        #               Child Loop BB13_198 Depth 7
                                        #                 Child Loop BB13_201 Depth 8
                                        #                   Child Loop BB13_204 Depth 9
	movl	%edx, 20(%rsp)                  # 4-byte Spill
	cmpl	440(%rsp), %edx                 # 4-byte Folded Reload
	movl	%ecx, %edx
	movl	424(%rsp), %eax                 # 4-byte Reload
	cmovel	%eax, %edx
	testl	%eax, %eax
	cmovel	%ecx, %edx
	movl	%edx, 280(%rsp)                 # 4-byte Spill
	cmpl	$0, 96(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_181
# %bb.183:                              #   in Loop: Header=BB13_182 Depth=2
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %ecx
	movl	20(%rsp), %eax                  # 4-byte Reload
	imull	%eax, %ecx
	movq	%rcx, 408(%rsp)                 # 8-byte Spill
	movl	392(%rsp), %ecx                 # 4-byte Reload
	imull	%eax, %ecx
	addl	368(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 400(%rsp)                 # 4-byte Spill
	movl	360(%rsp), %eax                 # 4-byte Reload
	imull	280(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 128(%rsp)                 # 4-byte Spill
	movl	$0, 88(%rsp)                    # 4-byte Folded Spill
	movl	%r15d, %eax
	movl	%r15d, 160(%rsp)                # 4-byte Spill
	jmp	.LBB13_185
	.p2align	4, 0x90
.LBB13_184:                             #   in Loop: Header=BB13_185 Depth=3
	movl	88(%rsp), %eax                  # 4-byte Reload
	incl	%eax
	incl	160(%rsp)                       # 4-byte Folded Spill
	movl	%eax, 88(%rsp)                  # 4-byte Spill
	cmpl	96(%rsp), %eax                  # 4-byte Folded Reload
	je	.LBB13_181
.LBB13_185:                             #   Parent Loop BB13_179 Depth=1
                                        #     Parent Loop BB13_182 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_188 Depth 4
                                        #           Child Loop BB13_191 Depth 5
                                        #             Child Loop BB13_194 Depth 6
                                        #               Child Loop BB13_198 Depth 7
                                        #                 Child Loop BB13_201 Depth 8
                                        #                   Child Loop BB13_204 Depth 9
	cmpl	$0, 40(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_184
# %bb.186:                              #   in Loop: Header=BB13_185 Depth=3
	movl	88(%rsp), %eax                  # 4-byte Reload
	imull	(%rsp), %eax                    # 4-byte Folded Reload
	movl	%eax, 152(%rsp)                 # 4-byte Spill
	movl	$0, 200(%rsp)                   # 4-byte Folded Spill
	jmp	.LBB13_188
	.p2align	4, 0x90
.LBB13_187:                             #   in Loop: Header=BB13_188 Depth=4
	movl	200(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	movl	%eax, 200(%rsp)                 # 4-byte Spill
	cmpl	40(%rsp), %eax                  # 4-byte Folded Reload
	je	.LBB13_184
.LBB13_188:                             #   Parent Loop BB13_179 Depth=1
                                        #     Parent Loop BB13_182 Depth=2
                                        #       Parent Loop BB13_185 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB13_191 Depth 5
                                        #             Child Loop BB13_194 Depth 6
                                        #               Child Loop BB13_198 Depth 7
                                        #                 Child Loop BB13_201 Depth 8
                                        #                   Child Loop BB13_204 Depth 9
	cmpl	$0, 280(%rsp)                   # 4-byte Folded Reload
	je	.LBB13_187
# %bb.189:                              #   in Loop: Header=BB13_188 Depth=4
	movl	200(%rsp), %eax                 # 4-byte Reload
	imull	(%rsp), %eax                    # 4-byte Folded Reload
	movl	%eax, 232(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 376(%rsp)                 # 8-byte Spill
	movl	80(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 320(%rsp)                 # 4-byte Spill
	jmp	.LBB13_191
	.p2align	4, 0x90
.LBB13_190:                             #   in Loop: Header=BB13_191 Depth=5
	movq	376(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	incl	320(%rsp)                       # 4-byte Folded Spill
	movq	%rax, 376(%rsp)                 # 8-byte Spill
	cmpl	280(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB13_187
.LBB13_191:                             #   Parent Loop BB13_179 Depth=1
                                        #     Parent Loop BB13_182 Depth=2
                                        #       Parent Loop BB13_185 Depth=3
                                        #         Parent Loop BB13_188 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB13_194 Depth 6
                                        #               Child Loop BB13_198 Depth 7
                                        #                 Child Loop BB13_201 Depth 8
                                        #                   Child Loop BB13_204 Depth 9
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	je	.LBB13_190
# %bb.192:                              #   in Loop: Header=BB13_191 Depth=5
	movq	408(%rsp), %rax                 # 8-byte Reload
	movq	376(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 104(%rsp)                 # 4-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	imull	(%rsp), %ecx                    # 4-byte Folded Reload
	addl	400(%rsp), %ecx                 # 4-byte Folded Reload
	imull	96(%rsp), %ecx                  # 4-byte Folded Reload
	addl	152(%rsp), %ecx                 # 4-byte Folded Reload
	imull	40(%rsp), %ecx                  # 4-byte Folded Reload
	addl	232(%rsp), %ecx                 # 4-byte Folded Reload
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	movl	200(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 240(%rsp)                 # 4-byte Spill
	jmp	.LBB13_194
	.p2align	4, 0x90
.LBB13_193:                             #   in Loop: Header=BB13_194 Depth=6
	movl	248(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	movq	344(%rsp), %r15                 # 8-byte Reload
	addl	%r15d, 240(%rsp)                # 4-byte Folded Spill
	cmpl	120(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB13_190
.LBB13_194:                             #   Parent Loop BB13_179 Depth=1
                                        #     Parent Loop BB13_182 Depth=2
                                        #       Parent Loop BB13_185 Depth=3
                                        #         Parent Loop BB13_188 Depth=4
                                        #           Parent Loop BB13_191 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB13_198 Depth 7
                                        #                 Child Loop BB13_201 Depth 8
                                        #                   Child Loop BB13_204 Depth 9
	movl	%eax, 248(%rsp)                 # 4-byte Spill
	cmpl	312(%rsp), %eax                 # 4-byte Folded Reload
	movl	16(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %edx
	movl	356(%rsp), %ecx                 # 4-byte Reload
	cmovel	%ecx, %edx
	testl	%ecx, %ecx
	cmovel	%eax, %edx
	movl	%edx, 256(%rsp)                 # 4-byte Spill
	testl	%edx, %edx
	je	.LBB13_193
# %bb.195:                              #   in Loop: Header=BB13_194 Depth=6
	cmpl	$0, (%rsp)                      # 4-byte Folded Reload
	je	.LBB13_193
# %bb.196:                              #   in Loop: Header=BB13_194 Depth=6
	movl	248(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	imull	344(%rsp), %ecx                 # 4-byte Folded Reload
	addl	200(%rsp), %ecx                 # 4-byte Folded Reload
	movq	%rcx, 328(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax def $rax
	imull	16(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	movl	240(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 208(%rsp)                 # 4-byte Spill
	movl	116(%rsp), %r15d                # 4-byte Reload
	jmp	.LBB13_198
	.p2align	4, 0x90
.LBB13_197:                             #   in Loop: Header=BB13_198 Depth=7
	movq	264(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	incl	208(%rsp)                       # 4-byte Folded Spill
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	cmpl	256(%rsp), %eax                 # 4-byte Folded Reload
	movl	436(%rsp), %r13d                # 4-byte Reload
	je	.LBB13_193
.LBB13_198:                             #   Parent Loop BB13_179 Depth=1
                                        #     Parent Loop BB13_182 Depth=2
                                        #       Parent Loop BB13_185 Depth=3
                                        #         Parent Loop BB13_188 Depth=4
                                        #           Parent Loop BB13_191 Depth=5
                                        #             Parent Loop BB13_194 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB13_201 Depth 8
                                        #                   Child Loop BB13_204 Depth 9
	testl	%r13d, %r13d
	je	.LBB13_197
# %bb.199:                              #   in Loop: Header=BB13_198 Depth=7
	movq	328(%rsp), %rax                 # 8-byte Reload
	movq	264(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 184(%rsp)                 # 4-byte Spill
	movq	168(%rsp), %rax                 # 8-byte Reload
	leal	(%rcx,%rax), %r11d
	movq	512(%rsp), %rax                 # 8-byte Reload
	movl	24(%rax), %esi
	movq	8(%rax), %r13
	movq	520(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %r12
	movq	448(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %r9
	movl	160(%rsp), %edi                 # 4-byte Reload
	imull	%esi, %edi
	movl	208(%rsp), %edx                 # 4-byte Reload
	addl	%edx, %edi
	movl	280(%rsp), %eax                 # 4-byte Reload
	imull	%eax, %edi
	movl	320(%rsp), %ecx                 # 4-byte Reload
	addl	%ecx, %edi
	movl	%edi, 272(%rsp)                 # 4-byte Spill
	movl	128(%rsp), %r10d                # 4-byte Reload
	imull	%esi, %r10d
	movl	88(%rsp), %edi                  # 4-byte Reload
	movl	%esi, 336(%rsp)                 # 4-byte Spill
	imull	%esi, %edi
	addl	%edx, %edi
	imull	%eax, %edi
	addl	%ecx, %edi
	movl	%edi, 216(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB13_201
	.p2align	4, 0x90
.LBB13_200:                             #   in Loop: Header=BB13_201 Depth=8
	incq	%rdi
	cmpq	384(%rsp), %rdi                 # 8-byte Folded Reload
	je	.LBB13_197
.LBB13_201:                             #   Parent Loop BB13_179 Depth=1
                                        #     Parent Loop BB13_182 Depth=2
                                        #       Parent Loop BB13_185 Depth=3
                                        #         Parent Loop BB13_188 Depth=4
                                        #           Parent Loop BB13_191 Depth=5
                                        #             Parent Loop BB13_194 Depth=6
                                        #               Parent Loop BB13_198 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB13_204 Depth 9
	movq	224(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %esi
	movq	24(%rsp), %rax                  # 8-byte Reload
	addl	%edi, %eax
	cltq
	movl	56(%rsp), %ecx                  # 4-byte Reload
	cmpl	344(%rsp), %ecx                 # 4-byte Folded Reload
	jae	.LBB13_203
# %bb.202:                              #   in Loop: Header=BB13_201 Depth=8
	xorl	%ebx, %ebx
	jmp	.LBB13_205
	.p2align	4, 0x90
.LBB13_203:                             #   in Loop: Header=BB13_201 Depth=8
	movl	216(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, %ebp
	movl	272(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, %r8d
	xorl	%ebx, %ebx
	movq	176(%rsp), %rcx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB13_204:                             #   Parent Loop BB13_179 Depth=1
                                        #     Parent Loop BB13_182 Depth=2
                                        #       Parent Loop BB13_185 Depth=3
                                        #         Parent Loop BB13_188 Depth=4
                                        #           Parent Loop BB13_191 Depth=5
                                        #             Parent Loop BB13_194 Depth=6
                                        #               Parent Loop BB13_198 Depth=7
                                        #                 Parent Loop BB13_201 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	movl	%r15d, %edx
	imull	%ebx, %edx
	addl	%r11d, %edx
	imull	%r14d, %edx
	addl	%esi, %edx
	movslq	%ebp, %rbp
	vmovss	(%r13,%rbp,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	(%r12,%rax,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%edx, %rdx
	vfmadd213ss	(%r9,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r9,%rdx,4)
	movl	%ebx, %edx
	orl	$1, %edx
	imull	%r15d, %edx
	addl	%r11d, %edx
	imull	%r14d, %edx
	addl	%esi, %edx
	movslq	%r8d, %r8
	vmovss	(%r13,%r8,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	vmovss	(%r12,%rax,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%edx, %rdx
	vfmadd213ss	(%r9,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r9,%rdx,4)
	addq	$2, %rbx
	addl	%r10d, %r8d
	addl	%r10d, %ebp
	addq	$-2, %rcx
	jne	.LBB13_204
.LBB13_205:                             #   in Loop: Header=BB13_201 Depth=8
	testb	$1, 192(%rsp)                   # 1-byte Folded Reload
	je	.LBB13_200
# %bb.206:                              #   in Loop: Header=BB13_201 Depth=8
	movl	116(%rsp), %ecx                 # 4-byte Reload
	imull	%ebx, %ecx
	addl	%r11d, %ecx
	imull	(%rsp), %ecx                    # 4-byte Folded Reload
	addl	%ecx, %esi
	imull	344(%rsp), %ebx                 # 4-byte Folded Reload
	addl	88(%rsp), %ebx                  # 4-byte Folded Reload
	imull	336(%rsp), %ebx                 # 4-byte Folded Reload
	addl	184(%rsp), %ebx                 # 4-byte Folded Reload
	imull	280(%rsp), %ebx                 # 4-byte Folded Reload
	addl	104(%rsp), %ebx                 # 4-byte Folded Reload
	movslq	%ebx, %rcx
	vmovss	(%r13,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	(%r12,%rax,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%esi, %rax
	vfmadd213ss	(%r9,%rax,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r9,%rax,4)
	jmp	.LBB13_200
.LBB13_207:
	cmpl	$0, 136(%rsp)                   # 4-byte Folded Reload
	movl	52(%rsp), %edx                  # 4-byte Reload
	je	.LBB13_277
# %bb.208:
	movq	136(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 532(%rsp)                 # 4-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 544(%rsp)                 # 4-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	decl	%eax
	movl	%eax, 240(%rsp)                 # 4-byte Spill
	movq	64(%rsp), %r14                  # 8-byte Reload
	imull	%edx, %r14d
	imull	24(%rsp), %r14d                 # 4-byte Folded Reload
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, 8(%rsp)                   # 4-byte Spill
	movl	%eax, %esi
	imull	%edx, %esi
	movl	%eax, %edi
	movq	96(%rsp), %rcx                  # 8-byte Reload
	imull	%ecx, %edi
	movq	40(%rsp), %rax                  # 8-byte Reload
	imull	%eax, %edi
	imull	12(%rsp), %edi                  # 4-byte Folded Reload
	movl	%edi, 568(%rsp)                 # 4-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx
	imull	%eax, %ecx
	movl	%ecx, 528(%rsp)                 # 4-byte Spill
	imull	%ecx, %esi
	movl	%esi, 548(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 576(%rsp)                 # 8-byte Spill
	movl	$3, 492(%rsp)                   # 4-byte Folded Spill
	movl	$2, 488(%rsp)                   # 4-byte Folded Spill
	movl	$1, 484(%rsp)                   # 4-byte Folded Spill
	xorl	%esi, %esi
	jmp	.LBB13_210
	.p2align	4, 0x90
.LBB13_209:                             #   in Loop: Header=BB13_210 Depth=1
	movl	536(%rsp), %esi                 # 4-byte Reload
	incl	%esi
	movl	568(%rsp), %eax                 # 4-byte Reload
	movq	576(%rsp), %rcx                 # 8-byte Reload
	addl	%eax, %ecx
	movq	%rcx, 576(%rsp)                 # 8-byte Spill
	addl	%eax, 492(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 488(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 484(%rsp)                 # 4-byte Folded Spill
	cmpl	136(%rsp), %esi                 # 4-byte Folded Reload
	je	.LBB13_277
.LBB13_210:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_213 Depth 2
                                        #       Child Loop BB13_216 Depth 3
                                        #         Child Loop BB13_219 Depth 4
                                        #           Child Loop BB13_222 Depth 5
                                        #             Child Loop BB13_225 Depth 6
                                        #               Child Loop BB13_229 Depth 7
                                        #                 Child Loop BB13_233 Depth 8
                                        #                   Child Loop BB13_248 Depth 9
                                        #                   Child Loop BB13_237 Depth 9
                                        #                   Child Loop BB13_240 Depth 9
                                        #               Child Loop BB13_252 Depth 7
                                        #                 Child Loop BB13_256 Depth 8
                                        #                   Child Loop BB13_271 Depth 9
                                        #                   Child Loop BB13_260 Depth 9
                                        #                   Child Loop BB13_263 Depth 9
	movq	(%rsp), %rax                    # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%esi, 536(%rsp)                 # 4-byte Spill
	cmpl	532(%rsp), %esi                 # 4-byte Folded Reload
	movl	%eax, %esi
	movl	420(%rsp), %ecx                 # 4-byte Reload
	cmovel	%ecx, %esi
	testl	%ecx, %ecx
	cmovel	%eax, %esi
	cmpl	$0, 144(%rsp)                   # 4-byte Folded Reload
	movq	%rsi, (%rsp)                    # 8-byte Spill
	je	.LBB13_209
# %bb.211:                              #   in Loop: Header=BB13_210 Depth=1
	movl	568(%rsp), %ecx                 # 4-byte Reload
	movl	536(%rsp), %eax                 # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, 540(%rsp)                 # 4-byte Spill
	movl	8(%rsp), %ecx                   # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, 384(%rsp)                 # 4-byte Spill
	movslq	%esi, %rcx
	leaq	-1(%rcx), %rax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	movl	116(%rsp), %eax                 # 4-byte Reload
	imull	%esi, %eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	movl	16(%rsp), %eax                  # 4-byte Reload
	imull	%esi, %eax
	movl	%eax, 152(%rsp)                 # 4-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	imull	%esi, %eax
	movl	%eax, 296(%rsp)                 # 4-byte Spill
	movl	528(%rsp), %eax                 # 4-byte Reload
	imull	%esi, %eax
	movl	%eax, 392(%rsp)                 # 4-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	andq	$-32, %rcx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	andl	$3, %esi
	movq	%rsi, 280(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	movl	484(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 432(%rsp)                 # 4-byte Spill
	movl	488(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 428(%rsp)                 # 4-byte Spill
	movl	492(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 460(%rsp)                 # 4-byte Spill
	movq	576(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 552(%rsp)                 # 4-byte Spill
	jmp	.LBB13_213
	.p2align	4, 0x90
.LBB13_212:                             #   in Loop: Header=BB13_213 Depth=2
	movl	292(%rsp), %ecx                 # 4-byte Reload
	incl	%ecx
	movl	548(%rsp), %eax                 # 4-byte Reload
	addl	%eax, 552(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 460(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 428(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 432(%rsp)                 # 4-byte Folded Spill
	cmpl	144(%rsp), %ecx                 # 4-byte Folded Reload
	movl	52(%rsp), %edx                  # 4-byte Reload
	je	.LBB13_209
.LBB13_213:                             #   Parent Loop BB13_210 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_216 Depth 3
                                        #         Child Loop BB13_219 Depth 4
                                        #           Child Loop BB13_222 Depth 5
                                        #             Child Loop BB13_225 Depth 6
                                        #               Child Loop BB13_229 Depth 7
                                        #                 Child Loop BB13_233 Depth 8
                                        #                   Child Loop BB13_248 Depth 9
                                        #                   Child Loop BB13_237 Depth 9
                                        #                   Child Loop BB13_240 Depth 9
                                        #               Child Loop BB13_252 Depth 7
                                        #                 Child Loop BB13_256 Depth 8
                                        #                   Child Loop BB13_271 Depth 9
                                        #                   Child Loop BB13_260 Depth 9
                                        #                   Child Loop BB13_263 Depth 9
	movl	%ecx, 292(%rsp)                 # 4-byte Spill
	cmpl	544(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%edx, %ecx
	movl	424(%rsp), %eax                 # 4-byte Reload
	cmovel	%eax, %ecx
	testl	%eax, %eax
	cmovel	%edx, %ecx
	movl	%ecx, 56(%rsp)                  # 4-byte Spill
	cmpl	$0, 96(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_212
# %bb.214:                              #   in Loop: Header=BB13_213 Depth=2
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %ecx
	movl	292(%rsp), %eax                 # 4-byte Reload
	imull	%eax, %ecx
	movq	%rcx, 304(%rsp)                 # 8-byte Spill
	movl	548(%rsp), %ecx                 # 4-byte Reload
	imull	%eax, %ecx
	addl	540(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 560(%rsp)                 # 4-byte Spill
	movl	$0, 80(%rsp)                    # 4-byte Folded Spill
	movl	432(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	428(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 472(%rsp)                 # 4-byte Spill
	movl	460(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 464(%rsp)                 # 4-byte Spill
	movl	552(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 496(%rsp)                 # 4-byte Spill
	jmp	.LBB13_216
	.p2align	4, 0x90
.LBB13_215:                             #   in Loop: Header=BB13_216 Depth=3
	movl	80(%rsp), %ecx                  # 4-byte Reload
	incl	%ecx
	movl	296(%rsp), %eax                 # 4-byte Reload
	addl	%eax, 496(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 464(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 472(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 12(%rsp)                  # 4-byte Folded Spill
	movl	%ecx, 80(%rsp)                  # 4-byte Spill
	cmpl	96(%rsp), %ecx                  # 4-byte Folded Reload
	je	.LBB13_212
.LBB13_216:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_219 Depth 4
                                        #           Child Loop BB13_222 Depth 5
                                        #             Child Loop BB13_225 Depth 6
                                        #               Child Loop BB13_229 Depth 7
                                        #                 Child Loop BB13_233 Depth 8
                                        #                   Child Loop BB13_248 Depth 9
                                        #                   Child Loop BB13_237 Depth 9
                                        #                   Child Loop BB13_240 Depth 9
                                        #               Child Loop BB13_252 Depth 7
                                        #                 Child Loop BB13_256 Depth 8
                                        #                   Child Loop BB13_271 Depth 9
                                        #                   Child Loop BB13_260 Depth 9
                                        #                   Child Loop BB13_263 Depth 9
	cmpl	$0, 40(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_215
# %bb.217:                              #   in Loop: Header=BB13_216 Depth=3
	movl	296(%rsp), %eax                 # 4-byte Reload
	imull	80(%rsp), %eax                  # 4-byte Folded Reload
	addl	560(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 504(%rsp)                 # 4-byte Spill
	movl	$0, 232(%rsp)                   # 4-byte Folded Spill
	movl	12(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	movl	472(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 76(%rsp)                  # 4-byte Spill
	movl	464(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	movl	496(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 300(%rsp)                 # 4-byte Spill
	jmp	.LBB13_219
	.p2align	4, 0x90
.LBB13_218:                             #   in Loop: Header=BB13_219 Depth=4
	movl	232(%rsp), %ecx                 # 4-byte Reload
	incl	%ecx
	movq	(%rsp), %rax                    # 8-byte Reload
	addl	%eax, 300(%rsp)                 # 4-byte Folded Spill
	addl	%eax, 72(%rsp)                  # 4-byte Folded Spill
	addl	%eax, 76(%rsp)                  # 4-byte Folded Spill
	addl	%eax, 36(%rsp)                  # 4-byte Folded Spill
	movl	%ecx, 232(%rsp)                 # 4-byte Spill
	cmpl	40(%rsp), %ecx                  # 4-byte Folded Reload
	je	.LBB13_215
.LBB13_219:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        #       Parent Loop BB13_216 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB13_222 Depth 5
                                        #             Child Loop BB13_225 Depth 6
                                        #               Child Loop BB13_229 Depth 7
                                        #                 Child Loop BB13_233 Depth 8
                                        #                   Child Loop BB13_248 Depth 9
                                        #                   Child Loop BB13_237 Depth 9
                                        #                   Child Loop BB13_240 Depth 9
                                        #               Child Loop BB13_252 Depth 7
                                        #                 Child Loop BB13_256 Depth 8
                                        #                   Child Loop BB13_271 Depth 9
                                        #                   Child Loop BB13_260 Depth 9
                                        #                   Child Loop BB13_263 Depth 9
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_218
# %bb.220:                              #   in Loop: Header=BB13_219 Depth=4
	movq	(%rsp), %rax                    # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	imull	232(%rsp), %eax                 # 4-byte Folded Reload
	addl	504(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 360(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 368(%rsp)                 # 8-byte Spill
	movl	36(%rsp), %eax                  # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movl	76(%rsp), %eax                  # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movl	72(%rsp), %eax                  # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movl	300(%rsp), %eax                 # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	jmp	.LBB13_222
	.p2align	4, 0x90
.LBB13_221:                             #   in Loop: Header=BB13_222 Depth=5
	movq	368(%rsp), %rcx                 # 8-byte Reload
	incl	%ecx
	movl	392(%rsp), %eax                 # 4-byte Reload
	movq	192(%rsp), %rdx                 # 8-byte Reload
	addl	%eax, %edx
	movq	%rdx, 192(%rsp)                 # 8-byte Spill
	movq	176(%rsp), %rdx                 # 8-byte Reload
	addl	%eax, %edx
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	movq	104(%rsp), %rdx                 # 8-byte Reload
	addl	%eax, %edx
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	movq	216(%rsp), %rdx                 # 8-byte Reload
	addl	%eax, %edx
	movq	%rdx, 216(%rsp)                 # 8-byte Spill
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	cmpl	56(%rsp), %ecx                  # 4-byte Folded Reload
	movl	436(%rsp), %r13d                # 4-byte Reload
	je	.LBB13_218
.LBB13_222:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        #       Parent Loop BB13_216 Depth=3
                                        #         Parent Loop BB13_219 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB13_225 Depth 6
                                        #               Child Loop BB13_229 Depth 7
                                        #                 Child Loop BB13_233 Depth 8
                                        #                   Child Loop BB13_248 Depth 9
                                        #                   Child Loop BB13_237 Depth 9
                                        #                   Child Loop BB13_240 Depth 9
                                        #               Child Loop BB13_252 Depth 7
                                        #                 Child Loop BB13_256 Depth 8
                                        #                   Child Loop BB13_271 Depth 9
                                        #                   Child Loop BB13_260 Depth 9
                                        #                   Child Loop BB13_263 Depth 9
	testl	%r13d, %r13d
	je	.LBB13_221
# %bb.223:                              #   in Loop: Header=BB13_222 Depth=5
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	368(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, 224(%rsp)                 # 4-byte Spill
	movl	392(%rsp), %eax                 # 4-byte Reload
	imull	%ecx, %eax
	addl	360(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 336(%rsp)                 # 4-byte Spill
	movslq	%eax, %rcx
	movq	264(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	addl	%ecx, %eax
	movl	%eax, 272(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	jmp	.LBB13_225
	.p2align	4, 0x90
.LBB13_224:                             #   in Loop: Header=BB13_225 Depth=6
	movq	400(%rsp), %rcx                 # 8-byte Reload
	leal	1(%rcx), %eax
	cmpl	440(%rsp), %ecx                 # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	je	.LBB13_221
.LBB13_225:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        #       Parent Loop BB13_216 Depth=3
                                        #         Parent Loop BB13_219 Depth=4
                                        #           Parent Loop BB13_222 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB13_229 Depth 7
                                        #                 Child Loop BB13_233 Depth 8
                                        #                   Child Loop BB13_248 Depth 9
                                        #                   Child Loop BB13_237 Depth 9
                                        #                   Child Loop BB13_240 Depth 9
                                        #               Child Loop BB13_252 Depth 7
                                        #                 Child Loop BB13_256 Depth 8
                                        #                   Child Loop BB13_271 Depth 9
                                        #                   Child Loop BB13_260 Depth 9
                                        #                   Child Loop BB13_263 Depth 9
	movq	%rax, 400(%rsp)                 # 8-byte Spill
	cmpl	$0, 120(%rsp)                   # 4-byte Folded Reload
	je	.LBB13_224
# %bb.226:                              #   in Loop: Header=BB13_225 Depth=6
	movq	400(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	imull	344(%rsp), %ecx                 # 4-byte Folded Reload
	addl	80(%rsp), %ecx                  # 4-byte Folded Reload
	movl	%ecx, 312(%rsp)                 # 4-byte Spill
	movl	%eax, %ecx
	imull	116(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 200(%rsp)                 # 4-byte Spill
	cmpl	$0, 356(%rsp)                   # 4-byte Folded Reload
	je	.LBB13_250
# %bb.227:                              #   in Loop: Header=BB13_225 Depth=6
	movl	20(%rsp), %ecx                  # 4-byte Reload
	imull	%eax, %ecx
	addl	384(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 408(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	jmp	.LBB13_229
	.p2align	4, 0x90
.LBB13_228:                             #   in Loop: Header=BB13_229 Depth=7
	movl	248(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	cmpl	120(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB13_224
.LBB13_229:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        #       Parent Loop BB13_216 Depth=3
                                        #         Parent Loop BB13_219 Depth=4
                                        #           Parent Loop BB13_222 Depth=5
                                        #             Parent Loop BB13_225 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB13_233 Depth 8
                                        #                   Child Loop BB13_248 Depth 9
                                        #                   Child Loop BB13_237 Depth 9
                                        #                   Child Loop BB13_240 Depth 9
	movl	%eax, 248(%rsp)                 # 4-byte Spill
	cmpl	240(%rsp), %eax                 # 4-byte Folded Reload
	movl	16(%rsp), %r14d                 # 4-byte Reload
	cmovel	356(%rsp), %r14d                # 4-byte Folded Reload
	testl	%r14d, %r14d
	je	.LBB13_228
# %bb.230:                              #   in Loop: Header=BB13_229 Depth=7
	cmpl	$0, (%rsp)                      # 4-byte Folded Reload
	je	.LBB13_228
# %bb.231:                              #   in Loop: Header=BB13_229 Depth=7
	movl	248(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %r11d
	imull	344(%rsp), %r11d                # 4-byte Folded Reload
	addl	232(%rsp), %r11d                # 4-byte Folded Reload
	movl	152(%rsp), %ecx                 # 4-byte Reload
	imull	%eax, %ecx
	addl	408(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, %r10d
	imull	16(%rsp), %r10d                 # 4-byte Folded Reload
	addl	200(%rsp), %r10d                # 4-byte Folded Reload
	movq	512(%rsp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rsi
	movq	520(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rdx
	movq	448(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %r13
	movl	24(%rcx), %eax
	imull	312(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	leaq	1(%rsi), %rcx
	movq	%rcx, 328(%rsp)                 # 8-byte Spill
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	addl	%r11d, %eax
	imull	56(%rsp), %eax                  # 4-byte Folded Reload
	addl	224(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, 168(%rsp)                 # 4-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	(,%rax,4), %rcx
	addq	%r13, %rcx
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	movq	376(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rdx,%rcx,4), %rsi
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	leaq	(%rdx,%rax,4), %rax
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB13_233
	.p2align	4, 0x90
.LBB13_232:                             #   in Loop: Header=BB13_233 Depth=8
	incl	%r15d
	cmpl	%r14d, %r15d
	je	.LBB13_228
.LBB13_233:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        #       Parent Loop BB13_216 Depth=3
                                        #         Parent Loop BB13_219 Depth=4
                                        #           Parent Loop BB13_222 Depth=5
                                        #             Parent Loop BB13_225 Depth=6
                                        #               Parent Loop BB13_229 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB13_248 Depth 9
                                        #                   Child Loop BB13_237 Depth 9
                                        #                   Child Loop BB13_240 Depth 9
	leal	(%r11,%r15), %eax
	addl	184(%rsp), %eax                 # 4-byte Folded Reload
	imull	56(%rsp), %eax                  # 4-byte Folded Reload
	addl	224(%rsp), %eax                 # 4-byte Folded Reload
	leal	(%r10,%r15), %ecx
	movq	(%rsp), %rsi                    # 8-byte Reload
	imull	%esi, %ecx
	addl	384(%rsp), %ecx                 # 4-byte Folded Reload
	cltq
	movq	88(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rdi,%rax,4), %r12
	cmpl	$31, %esi
	ja	.LBB13_241
.LBB13_234:                             #   in Loop: Header=BB13_233 Depth=8
	xorl	%edi, %edi
.LBB13_235:                             #   in Loop: Header=BB13_233 Depth=8
	movq	%rdi, %rax
	notq	%rax
	addq	24(%rsp), %rax                  # 8-byte Folded Reload
	movq	280(%rsp), %rbp                 # 8-byte Reload
	testq	%rbp, %rbp
	je	.LBB13_238
# %bb.236:                              #   in Loop: Header=BB13_233 Depth=8
	movq	192(%rsp), %rsi                 # 8-byte Reload
	addl	%edi, %esi
	.p2align	4, 0x90
.LBB13_237:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        #       Parent Loop BB13_216 Depth=3
                                        #         Parent Loop BB13_219 Depth=4
                                        #           Parent Loop BB13_222 Depth=5
                                        #             Parent Loop BB13_225 Depth=6
                                        #               Parent Loop BB13_229 Depth=7
                                        #                 Parent Loop BB13_233 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rcx,%rdi), %ebx
	vmovss	(%r12), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%esi, %rsi
	vmovss	(%rdx,%rsi,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%ebx, %rbx
	vfmadd213ss	(%r13,%rbx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r13,%rbx,4)
	incq	%rdi
	incl	%esi
	decq	%rbp
	jne	.LBB13_237
.LBB13_238:                             #   in Loop: Header=BB13_233 Depth=8
	cmpq	$3, %rax
	jb	.LBB13_232
# %bb.239:                              #   in Loop: Header=BB13_233 Depth=8
	movq	176(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	movq	104(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %esi
	movq	216(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %ebp
	movq	24(%rsp), %rax                  # 8-byte Reload
	subq	%rdi, %rax
	movq	192(%rsp), %rbx                 # 8-byte Reload
	leal	(%rbx,%rdi), %r8d
	.p2align	4, 0x90
.LBB13_240:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        #       Parent Loop BB13_216 Depth=3
                                        #         Parent Loop BB13_219 Depth=4
                                        #           Parent Loop BB13_222 Depth=5
                                        #             Parent Loop BB13_225 Depth=6
                                        #               Parent Loop BB13_229 Depth=7
                                        #                 Parent Loop BB13_233 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rcx,%rdi), %ebx
	vmovss	(%r12), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%r8d, %r8
	vmovss	(%rdx,%r8,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movslq	%ebx, %rbx
	vfmadd213ss	(%r13,%rbx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r13,%rbx,4)
	leal	1(%rcx,%rdi), %ebx
	vmovss	(%r12), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%ebp, %rbp
	vmovss	(%rdx,%rbp,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%ebx, %rbx
	vfmadd213ss	(%r13,%rbx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r13,%rbx,4)
	leal	2(%rcx,%rdi), %ebx
	vmovss	(%r12), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%esi, %rsi
	vmovss	(%rdx,%rsi,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%ebx, %rbx
	vfmadd213ss	(%r13,%rbx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r13,%rbx,4)
	leal	3(%rcx,%rdi), %ebx
	vmovss	(%r12), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movslq	%r9d, %r9
	vmovss	(%rdx,%r9,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movslq	%ebx, %rbx
	vfmadd213ss	(%r13,%rbx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%r13,%rbx,4)
	addq	$4, %rdi
	addl	$4, %r9d
	addl	$4, %esi
	addl	$4, %ebp
	addl	$4, %r8d
	addq	$-4, %rax
	jne	.LBB13_240
	jmp	.LBB13_232
	.p2align	4, 0x90
.LBB13_241:                             #   in Loop: Header=BB13_233 Depth=8
	movl	272(%rsp), %eax                 # 4-byte Reload
	cmpl	336(%rsp), %eax                 # 4-byte Folded Reload
	jl	.LBB13_234
# %bb.242:                              #   in Loop: Header=BB13_233 Depth=8
	cmpl	$1, 56(%rsp)                    # 4-byte Folded Reload
	jne	.LBB13_234
# %bb.243:                              #   in Loop: Header=BB13_233 Depth=8
	movq	(%rsp), %rax                    # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	imull	%r15d, %eax
	addl	256(%rsp), %eax                 # 4-byte Folded Reload
	movq	264(%rsp), %rdi                 # 8-byte Reload
	leal	(%rax,%rdi), %esi
	cmpl	%eax, %esi
	jl	.LBB13_234
# %bb.244:                              #   in Loop: Header=BB13_233 Depth=8
	movq	%rdi, %rsi
	shrq	$32, %rsi
	movl	$0, %edi
	jne	.LBB13_235
# %bb.245:                              #   in Loop: Header=BB13_233 Depth=8
	movl	56(%rsp), %esi                  # 4-byte Reload
	imull	%r15d, %esi
	addl	168(%rsp), %esi                 # 4-byte Folded Reload
	movslq	%esi, %rsi
	movq	328(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rdi,%rsi,4), %rsi
	cltq
	leaq	(,%rax,4), %rdi
	addq	%r13, %rdi
	movq	320(%rsp), %rbp                 # 8-byte Reload
	leaq	(%rbp,%rax,4), %rbp
	cmpq	%rbp, %r12
	setb	%r8b
	cmpq	%rdi, %rsi
	seta	%bl
	cmpq	128(%rsp), %rdi                 # 8-byte Folded Reload
	setb	%al
	cmpq	%rbp, 160(%rsp)                 # 8-byte Folded Reload
	setb	%sil
	testb	%bl, %r8b
	jne	.LBB13_234
# %bb.246:                              #   in Loop: Header=BB13_233 Depth=8
	movl	$0, %edi
	andb	%sil, %al
	jne	.LBB13_235
# %bb.247:                              #   in Loop: Header=BB13_233 Depth=8
	vbroadcastss	(%r12), %ymm0
	movq	208(%rsp), %rax                 # 8-byte Reload
	movq	192(%rsp), %rsi                 # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB13_248:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        #       Parent Loop BB13_216 Depth=3
                                        #         Parent Loop BB13_219 Depth=4
                                        #           Parent Loop BB13_222 Depth=5
                                        #             Parent Loop BB13_225 Depth=6
                                        #               Parent Loop BB13_229 Depth=7
                                        #                 Parent Loop BB13_233 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rcx,%rdi), %ebp
	movslq	%esi, %rsi
	vmovups	(%rdx,%rsi,4), %ymm1
	vmovups	32(%rdx,%rsi,4), %ymm2
	vmovups	64(%rdx,%rsi,4), %ymm3
	vmovups	96(%rdx,%rsi,4), %ymm4
	movslq	%ebp, %rbp
	vfmadd213ps	(%r13,%rbp,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	32(%r13,%rbp,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vfmadd213ps	64(%r13,%rbp,4), %ymm0, %ymm3 # ymm3 = (ymm0 * ymm3) + mem
	vfmadd213ps	96(%r13,%rbp,4), %ymm0, %ymm4 # ymm4 = (ymm0 * ymm4) + mem
	vmovups	%ymm1, (%r13,%rbp,4)
	vmovups	%ymm2, 32(%r13,%rbp,4)
	vmovups	%ymm3, 64(%r13,%rbp,4)
	vmovups	%ymm4, 96(%r13,%rbp,4)
	addq	$32, %rdi
	addl	$32, %esi
	addq	$-32, %rax
	jne	.LBB13_248
# %bb.249:                              #   in Loop: Header=BB13_233 Depth=8
	movq	208(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	cmpq	24(%rsp), %rax                  # 8-byte Folded Reload
	je	.LBB13_232
	jmp	.LBB13_235
	.p2align	4, 0x90
.LBB13_250:                             #   in Loop: Header=BB13_225 Depth=6
	movl	20(%rsp), %ecx                  # 4-byte Reload
	imull	%eax, %ecx
	addl	384(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 248(%rsp)                 # 4-byte Spill
	movl	$0, 128(%rsp)                   # 4-byte Folded Spill
	jmp	.LBB13_252
	.p2align	4, 0x90
.LBB13_251:                             #   in Loop: Header=BB13_252 Depth=7
	movl	128(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	movl	%eax, 128(%rsp)                 # 4-byte Spill
	cmpl	120(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB13_224
.LBB13_252:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        #       Parent Loop BB13_216 Depth=3
                                        #         Parent Loop BB13_219 Depth=4
                                        #           Parent Loop BB13_222 Depth=5
                                        #             Parent Loop BB13_225 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB13_256 Depth 8
                                        #                   Child Loop BB13_271 Depth 9
                                        #                   Child Loop BB13_260 Depth 9
                                        #                   Child Loop BB13_263 Depth 9
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_251
# %bb.253:                              #   in Loop: Header=BB13_252 Depth=7
	cmpl	$0, (%rsp)                      # 4-byte Folded Reload
	je	.LBB13_251
# %bb.254:                              #   in Loop: Header=BB13_252 Depth=7
	movl	128(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %r12d
	imull	344(%rsp), %r12d                # 4-byte Folded Reload
	addl	232(%rsp), %r12d                # 4-byte Folded Reload
	movl	152(%rsp), %ecx                 # 4-byte Reload
	imull	%eax, %ecx
	addl	248(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 184(%rsp)                 # 4-byte Spill
	movl	%eax, %r13d
	imull	16(%rsp), %r13d                 # 4-byte Folded Reload
	addl	200(%rsp), %r13d                # 4-byte Folded Reload
	movq	512(%rsp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rdx
	movq	520(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %r14
	movq	448(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	movl	24(%rcx), %r8d
	imull	312(%rsp), %r8d                 # 4-byte Folded Reload
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	leaq	1(%rdx), %rcx
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	leal	(%r12,%r8), %ecx
	imull	56(%rsp), %ecx                  # 4-byte Folded Reload
	addl	224(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, 328(%rsp)                 # 4-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,4), %rdx
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	movq	376(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r14,%rdx,4), %rsi
	movq	%rsi, 320(%rsp)                 # 8-byte Spill
	leaq	(%r14,%rcx,4), %rcx
	leaq	(%rcx,%rdx,4), %rcx
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	xorl	%r11d, %r11d
	jmp	.LBB13_256
	.p2align	4, 0x90
.LBB13_255:                             #   in Loop: Header=BB13_256 Depth=8
	incl	%r11d
	cmpl	16(%rsp), %r11d                 # 4-byte Folded Reload
	je	.LBB13_251
.LBB13_256:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        #       Parent Loop BB13_216 Depth=3
                                        #         Parent Loop BB13_219 Depth=4
                                        #           Parent Loop BB13_222 Depth=5
                                        #             Parent Loop BB13_225 Depth=6
                                        #               Parent Loop BB13_252 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB13_271 Depth 9
                                        #                   Child Loop BB13_260 Depth 9
                                        #                   Child Loop BB13_263 Depth 9
	leal	(%r12,%r11), %esi
	addl	%r8d, %esi
	imull	56(%rsp), %esi                  # 4-byte Folded Reload
	addl	224(%rsp), %esi                 # 4-byte Folded Reload
	leal	(%r11,%r13), %ecx
	movq	(%rsp), %rdx                    # 8-byte Reload
	imull	%edx, %ecx
	addl	384(%rsp), %ecx                 # 4-byte Folded Reload
	movslq	%esi, %rsi
	movq	88(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rdi,%rsi,4), %r9
	cmpl	$32, %edx
	jae	.LBB13_264
.LBB13_257:                             #   in Loop: Header=BB13_256 Depth=8
	xorl	%edi, %edi
.LBB13_258:                             #   in Loop: Header=BB13_256 Depth=8
	movq	%rdi, %r10
	notq	%r10
	addq	24(%rsp), %r10                  # 8-byte Folded Reload
	movq	280(%rsp), %rbx                 # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB13_261
# %bb.259:                              #   in Loop: Header=BB13_256 Depth=8
	movq	192(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%rdi), %ebp
	.p2align	4, 0x90
.LBB13_260:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        #       Parent Loop BB13_216 Depth=3
                                        #         Parent Loop BB13_219 Depth=4
                                        #           Parent Loop BB13_222 Depth=5
                                        #             Parent Loop BB13_225 Depth=6
                                        #               Parent Loop BB13_252 Depth=7
                                        #                 Parent Loop BB13_256 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rcx,%rdi), %esi
	vmovss	(%r9), %xmm0                    # xmm0 = mem[0],zero,zero,zero
	movslq	%ebp, %rbp
	vmovss	(%r14,%rbp,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%esi, %rsi
	vfmadd213ss	(%rax,%rsi,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rax,%rsi,4)
	incq	%rdi
	incl	%ebp
	decq	%rbx
	jne	.LBB13_260
.LBB13_261:                             #   in Loop: Header=BB13_256 Depth=8
	cmpq	$3, %r10
	jb	.LBB13_255
# %bb.262:                              #   in Loop: Header=BB13_256 Depth=8
	movq	176(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%rdi), %esi
	movq	104(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%rdi), %ebp
	movq	216(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%rdi), %ebx
	movq	24(%rsp), %r15                  # 8-byte Reload
	subq	%rdi, %r15
	movq	192(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%rdi), %r10d
	.p2align	4, 0x90
.LBB13_263:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        #       Parent Loop BB13_216 Depth=3
                                        #         Parent Loop BB13_219 Depth=4
                                        #           Parent Loop BB13_222 Depth=5
                                        #             Parent Loop BB13_225 Depth=6
                                        #               Parent Loop BB13_252 Depth=7
                                        #                 Parent Loop BB13_256 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rcx,%rdi), %edx
	vmovss	(%r9), %xmm0                    # xmm0 = mem[0],zero,zero,zero
	movslq	%r10d, %r10
	vmovss	(%r14,%r10,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%edx, %rdx
	vfmadd213ss	(%rax,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rax,%rdx,4)
	leal	1(%rcx,%rdi), %edx
	vmovss	(%r9), %xmm0                    # xmm0 = mem[0],zero,zero,zero
	movslq	%ebx, %rbx
	vmovss	(%r14,%rbx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%edx, %rdx
	vfmadd213ss	(%rax,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rax,%rdx,4)
	leal	2(%rcx,%rdi), %edx
	vmovss	(%r9), %xmm0                    # xmm0 = mem[0],zero,zero,zero
	movslq	%ebp, %rbp
	vmovss	(%r14,%rbp,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%edx, %rdx
	vfmadd213ss	(%rax,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rax,%rdx,4)
	leal	3(%rcx,%rdi), %edx
	vmovss	(%r9), %xmm0                    # xmm0 = mem[0],zero,zero,zero
	movslq	%esi, %rsi
	vmovss	(%r14,%rsi,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movslq	%edx, %rdx
	vfmadd213ss	(%rax,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rax,%rdx,4)
	addq	$4, %rdi
	addl	$4, %esi
	addl	$4, %ebp
	addl	$4, %ebx
	addl	$4, %r10d
	addq	$-4, %r15
	jne	.LBB13_263
	jmp	.LBB13_255
	.p2align	4, 0x90
.LBB13_264:                             #   in Loop: Header=BB13_256 Depth=8
	movl	272(%rsp), %edx                 # 4-byte Reload
	cmpl	336(%rsp), %edx                 # 4-byte Folded Reload
	jl	.LBB13_257
# %bb.265:                              #   in Loop: Header=BB13_256 Depth=8
	cmpl	$1, 56(%rsp)                    # 4-byte Folded Reload
	jne	.LBB13_257
# %bb.266:                              #   in Loop: Header=BB13_256 Depth=8
	movq	(%rsp), %rsi                    # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	imull	%r11d, %esi
	addl	184(%rsp), %esi                 # 4-byte Folded Reload
	movq	264(%rsp), %rdx                 # 8-byte Reload
	leal	(%rsi,%rdx), %edi
	cmpl	%esi, %edi
	jl	.LBB13_257
# %bb.267:                              #   in Loop: Header=BB13_256 Depth=8
	movq	%rdx, %rdi
	shrq	$32, %rdi
	movl	$0, %edi
	jne	.LBB13_258
# %bb.268:                              #   in Loop: Header=BB13_256 Depth=8
	movl	56(%rsp), %edi                  # 4-byte Reload
	imull	%r11d, %edi
	addl	328(%rsp), %edi                 # 4-byte Folded Reload
	movslq	%edi, %rdi
	movq	256(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rdi,4), %rdi
	movslq	%esi, %rsi
	leaq	(%rax,%rsi,4), %rbp
	movq	168(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rsi,4), %rsi
	cmpq	%rsi, %r9
	setb	%r10b
	cmpq	%rbp, %rdi
	seta	%dil
	cmpq	160(%rsp), %rbp                 # 8-byte Folded Reload
	setb	%bl
	cmpq	%rsi, 320(%rsp)                 # 8-byte Folded Reload
	setb	%sil
	testb	%dil, %r10b
	jne	.LBB13_257
# %bb.269:                              #   in Loop: Header=BB13_256 Depth=8
	movl	$0, %edi
	andb	%sil, %bl
	jne	.LBB13_258
# %bb.270:                              #   in Loop: Header=BB13_256 Depth=8
	vbroadcastss	(%r9), %ymm0
	movq	208(%rsp), %rsi                 # 8-byte Reload
	movq	192(%rsp), %rdi                 # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB13_271:                             #   Parent Loop BB13_210 Depth=1
                                        #     Parent Loop BB13_213 Depth=2
                                        #       Parent Loop BB13_216 Depth=3
                                        #         Parent Loop BB13_219 Depth=4
                                        #           Parent Loop BB13_222 Depth=5
                                        #             Parent Loop BB13_225 Depth=6
                                        #               Parent Loop BB13_252 Depth=7
                                        #                 Parent Loop BB13_256 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rcx,%rbp), %ebx
	movslq	%edi, %rdi
	vmovups	(%r14,%rdi,4), %ymm1
	vmovups	32(%r14,%rdi,4), %ymm2
	vmovups	64(%r14,%rdi,4), %ymm3
	vmovups	96(%r14,%rdi,4), %ymm4
	movslq	%ebx, %rbx
	vfmadd213ps	(%rax,%rbx,4), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) + mem
	vfmadd213ps	32(%rax,%rbx,4), %ymm0, %ymm2 # ymm2 = (ymm0 * ymm2) + mem
	vfmadd213ps	64(%rax,%rbx,4), %ymm0, %ymm3 # ymm3 = (ymm0 * ymm3) + mem
	vfmadd213ps	96(%rax,%rbx,4), %ymm0, %ymm4 # ymm4 = (ymm0 * ymm4) + mem
	vmovups	%ymm1, (%rax,%rbx,4)
	vmovups	%ymm2, 32(%rax,%rbx,4)
	vmovups	%ymm3, 64(%rax,%rbx,4)
	vmovups	%ymm4, 96(%rax,%rbx,4)
	addq	$32, %rbp
	addl	$32, %edi
	addq	$-32, %rsi
	jne	.LBB13_271
# %bb.272:                              #   in Loop: Header=BB13_256 Depth=8
	movq	208(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %rdi
	cmpq	24(%rsp), %rdx                  # 8-byte Folded Reload
	je	.LBB13_255
	jmp	.LBB13_258
.LBB13_277:
	movq	688(%rsp), %rbx
	leaq	592(%rsp), %rdi
	vzeroupper
	callq	_ZN11Chronometer4stopEv
	testq	%rbx, %rbx
	je	.LBB13_279
# %bb.278:
	leaq	592(%rsp), %rdi
	callq	_ZN11Chronometer7getTimeEv
	vmovss	%xmm0, (%rbx)
.LBB13_279:
	movq	448(%rsp), %rax                 # 8-byte Reload
	addq	$616, %rsp                      # imm = 0x268
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB13_280:
	.cfi_def_cfa_offset 672
	callq	_ZSt16__throw_bad_castv
.LBB13_281:
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf, %ecx
	movl	$1121, %edx                     # imm = 0x461
	callq	__assert_fail
.LBB13_282:
.Ltmp137:
	jmp	.LBB13_284
.LBB13_283:
.Ltmp134:
.LBB13_284:
	movq	%rax, %rbx
	movq	448(%rsp), %rax                 # 8-byte Reload
	addq	$40, %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB13_286
# %bb.285:
	callq	_ZdlPv
.LBB13_286:
	movq	448(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end13:
	.size	_ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf, .Lfunc_end13-_ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf
	.cfi_endproc
	.section	.rodata._ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf,"aG",@progbits,_ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf,comdat
	.p2align	3
.LJTI13_0:
	.quad	.LBB13_7
	.quad	.LBB13_39
	.quad	.LBB13_81
	.quad	.LBB13_114
	.quad	.LBB13_145
	.quad	.LBB13_176
	.quad	.LBB13_207
	.section	.gcc_except_table._ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf,"aG",@progbits,_ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf,comdat
	.p2align	2
GCC_except_table13:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp132-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin6         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin6         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Lfunc_end13-.Ltmp136          #   Call between .Ltmp136 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6TensorIfEC2Ev,"axG",@progbits,_ZN6TensorIfEC5Ev,comdat
	.weak	_ZN6TensorIfEC2Ev               # -- Begin function _ZN6TensorIfEC2Ev
	.p2align	4, 0x90
	.type	_ZN6TensorIfEC2Ev,@function
_ZN6TensorIfEC2Ev:                      # 
	.cfi_startproc
# %bb.0:
	movq	$_ZTV6TensorIfE+16, (%rdi)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%rdi)
	movq	$0, 56(%rdi)
	cmpb	$0, 64(%rdi)
	je	.LBB14_1
# %bb.4:
	retq
.LBB14_1:
	cmpq	$0, 8(%rdi)
	je	.LBB14_3
# %bb.2:
	movq	$0, 8(%rdi)
.LBB14_3:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 16(%rdi)
	movl	$0, 32(%rdi)
	movq	$0, 48(%rdi)
	movb	$0, 64(%rdi)
	retq
.Lfunc_end14:
	.size	_ZN6TensorIfEC2Ev, .Lfunc_end14-_ZN6TensorIfEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE10invalidateEv,"axG",@progbits,_ZN6TensorIfE10invalidateEv,comdat
	.weak	_ZN6TensorIfE10invalidateEv     # -- Begin function _ZN6TensorIfE10invalidateEv
	.p2align	4, 0x90
	.type	_ZN6TensorIfE10invalidateEv,@function
_ZN6TensorIfE10invalidateEv:            # 
	.cfi_startproc
# %bb.0:
	cmpb	$0, 64(%rdi)
	je	.LBB15_1
# %bb.4:
	retq
.LBB15_1:
	cmpq	$0, 8(%rdi)
	je	.LBB15_3
# %bb.2:
	movq	$0, 8(%rdi)
.LBB15_3:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 16(%rdi)
	movl	$0, 32(%rdi)
	movq	40(%rdi), %rax
	movq	%rax, 48(%rdi)
	movb	$0, 64(%rdi)
	retq
.Lfunc_end15:
	.size	_ZN6TensorIfE10invalidateEv, .Lfunc_end15-_ZN6TensorIfE10invalidateEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfEC2ERKjS2_S2_RKN6tensor4initE,"axG",@progbits,_ZN6TensorIfEC5ERKjS2_S2_RKN6tensor4initE,comdat
	.weak	_ZN6TensorIfEC2ERKjS2_S2_RKN6tensor4initE # -- Begin function _ZN6TensorIfEC2ERKjS2_S2_RKN6tensor4initE
	.p2align	4, 0x90
	.type	_ZN6TensorIfEC2ERKjS2_S2_RKN6tensor4initE,@function
_ZN6TensorIfEC2ERKjS2_S2_RKN6tensor4initE: # 
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception7
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	$_ZTV6TensorIfE+16, (%rdi)
	movl	$1, 16(%rdi)
	movl	(%rsi), %r12d
	movl	%r12d, 20(%rdi)
	movl	(%rdx), %r13d
	movl	%r13d, 24(%rdi)
	movl	(%rcx), %ebp
	movl	%ebp, 28(%rdi)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%rdi)
	movq	%r8, %r14
	movq	$0, 56(%rdi)
	movb	$1, 64(%rdi)
	movl	%r13d, %eax
	imull	%r12d, %eax
	imull	%ebp, %eax
	movl	%eax, 32(%rdi)
.Ltmp138:
	movl	$16, %edi
	callq	_Znwm
.Ltmp139:
# %bb.1:
	movq	%rax, %rbx
	movl	$1, (%rax)
	movl	%r12d, 4(%rax)
	movl	%r13d, 8(%rax)
	movl	%ebp, 12(%rax)
	movq	40(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB16_3
# %bb.2:
	callq	_ZdlPv
.LBB16_3:
	movq	%rbx, 40(%r15)
	addq	$16, %rbx
	movq	%rbx, 48(%r15)
	movq	%rbx, 56(%r15)
.Ltmp141:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN6TensorIfE9init_dataERKN6tensor4initE
.Ltmp142:
# %bb.4:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB16_6:
	.cfi_def_cfa_offset 64
.Ltmp143:
	jmp	.LBB16_7
.LBB16_5:
.Ltmp140:
.LBB16_7:
	movq	%rax, %rbx
	addq	$40, %r15
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB16_9
# %bb.8:
	callq	_ZdlPv
.LBB16_9:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end16:
	.size	_ZN6TensorIfEC2ERKjS2_S2_RKN6tensor4initE, .Lfunc_end16-_ZN6TensorIfEC2ERKjS2_S2_RKN6tensor4initE
	.cfi_endproc
	.section	.gcc_except_table._ZN6TensorIfEC2ERKjS2_S2_RKN6tensor4initE,"aG",@progbits,_ZN6TensorIfEC5ERKjS2_S2_RKN6tensor4initE,comdat
	.p2align	2
GCC_except_table16:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp138-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin7         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin7         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Lfunc_end16-.Ltmp142          #   Call between .Ltmp142 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6TensorIfEC2ERKjS2_S2_S2_RKN6tensor4initE,"axG",@progbits,_ZN6TensorIfEC5ERKjS2_S2_S2_RKN6tensor4initE,comdat
	.weak	_ZN6TensorIfEC2ERKjS2_S2_S2_RKN6tensor4initE # -- Begin function _ZN6TensorIfEC2ERKjS2_S2_S2_RKN6tensor4initE
	.p2align	4, 0x90
	.type	_ZN6TensorIfEC2ERKjS2_S2_S2_RKN6tensor4initE,@function
_ZN6TensorIfEC2ERKjS2_S2_S2_RKN6tensor4initE: # 
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception8
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, (%rsp)                     # 8-byte Spill
	movq	%rdi, %r15
	movq	$_ZTV6TensorIfE+16, (%rdi)
	movl	(%rsi), %r12d
	movl	%r12d, 16(%rdi)
	movl	(%rdx), %r13d
	movl	%r13d, 20(%rdi)
	movl	(%rcx), %ebp
	movl	%ebp, 24(%rdi)
	movl	(%r8), %r14d
	movl	%r14d, 28(%rdi)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%rdi)
	movq	$0, 56(%rdi)
	movb	$1, 64(%rdi)
	movl	%r13d, %eax
	imull	%r12d, %eax
	movl	%ebp, %ecx
	imull	%r14d, %ecx
	imull	%eax, %ecx
	movl	%ecx, 32(%rdi)
.Ltmp144:
	movl	$16, %edi
	callq	_Znwm
.Ltmp145:
# %bb.1:
	movq	%rax, %rbx
	movl	%r12d, (%rax)
	movl	%r13d, 4(%rax)
	movl	%ebp, 8(%rax)
	movl	%r14d, 12(%rax)
	movq	40(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB17_3
# %bb.2:
	callq	_ZdlPv
.LBB17_3:
	movq	%rbx, 40(%r15)
	addq	$16, %rbx
	movq	%rbx, 48(%r15)
	movq	%rbx, 56(%r15)
.Ltmp147:
	movq	%r15, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	callq	_ZN6TensorIfE9init_dataERKN6tensor4initE
.Ltmp148:
# %bb.4:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB17_6:
	.cfi_def_cfa_offset 64
.Ltmp149:
	jmp	.LBB17_7
.LBB17_5:
.Ltmp146:
.LBB17_7:
	movq	%rax, %rbx
	addq	$40, %r15
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB17_9
# %bb.8:
	callq	_ZdlPv
.LBB17_9:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end17:
	.size	_ZN6TensorIfEC2ERKjS2_S2_S2_RKN6tensor4initE, .Lfunc_end17-_ZN6TensorIfEC2ERKjS2_S2_S2_RKN6tensor4initE
	.cfi_endproc
	.section	.gcc_except_table._ZN6TensorIfEC2ERKjS2_S2_S2_RKN6tensor4initE,"aG",@progbits,_ZN6TensorIfEC5ERKjS2_S2_S2_RKN6tensor4initE,comdat
	.p2align	2
GCC_except_table17:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp144-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin8         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin8         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Lfunc_end17-.Ltmp148          #   Call between .Ltmp148 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6TensorIfEC2ERKS0_,"axG",@progbits,_ZN6TensorIfEC5ERKS0_,comdat
	.weak	_ZN6TensorIfEC2ERKS0_           # -- Begin function _ZN6TensorIfEC2ERKS0_
	.p2align	4, 0x90
	.type	_ZN6TensorIfEC2ERKS0_,@function
_ZN6TensorIfEC2ERKS0_:                  # 
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception9
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	$_ZTV6TensorIfE+16, (%rdi)
	vmovups	16(%rsi), %xmm0
	vmovups	%xmm0, 16(%rdi)
	movl	32(%rsi), %eax
	movl	%eax, 32(%rdi)
	movq	48(%rsi), %rdi
	subq	40(%rsi), %rdi
	movq	%rdi, %rbx
	sarq	$2, %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%r12)
	movq	$0, 56(%r12)
	testq	%rdi, %rdi
	je	.LBB18_1
# %bb.2:
	movq	%rbx, %rax
	shrq	$62, %rax
	jne	.LBB18_28
# %bb.3:
	callq	_Znwm
	movq	%rax, %r15
	jmp	.LBB18_4
.LBB18_1:
	xorl	%r15d, %r15d
.LBB18_4:
	movq	%r15, 40(%r12)
	movq	%r15, 48(%r12)
	leaq	(%r15,%rbx,4), %rax
	movq	%rax, 56(%r12)
	movq	40(%r14), %rsi
	movq	48(%r14), %rbx
	subq	%rsi, %rbx
	je	.LBB18_6
# %bb.5:
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	memmove@PLT
.LBB18_6:
	addq	%r15, %rbx
	movq	%rbx, 48(%r12)
	movb	$1, 64(%r12)
	movl	32(%r12), %ebx
	leaq	(,%rbx,4), %rdi
.Ltmp150:
	callq	_Znam
.Ltmp151:
# %bb.7:
	movq	%rax, 8(%r12)
	testl	%ebx, %ebx
	je	.LBB18_24
# %bb.8:
	movslq	%ebx, %r9
	movq	8(%r14), %rdx
	cmpl	$31, %ebx
	jbe	.LBB18_9
# %bb.14:
	leaq	(%rdx,%r9,4), %rcx
	cmpq	%rcx, %rax
	jae	.LBB18_16
# %bb.15:
	leaq	(%rax,%r9,4), %rcx
	cmpq	%rdx, %rcx
	jbe	.LBB18_16
.LBB18_9:
	xorl	%esi, %esi
.LBB18_10:
	movq	%rsi, %rdi
	notq	%rdi
	addq	%r9, %rdi
	movq	%r9, %rcx
	andq	$7, %rcx
	je	.LBB18_12
	.p2align	4, 0x90
.LBB18_11:                              # =>This Inner Loop Header: Depth=1
	vmovss	(%rdx,%rsi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, (%rax,%rsi,4)
	incq	%rsi
	decq	%rcx
	jne	.LBB18_11
.LBB18_12:
	cmpq	$7, %rdi
	jb	.LBB18_24
	.p2align	4, 0x90
.LBB18_13:                              # =>This Inner Loop Header: Depth=1
	vmovss	(%rdx,%rsi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, (%rax,%rsi,4)
	vmovss	4(%rdx,%rsi,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 4(%rax,%rsi,4)
	vmovss	8(%rdx,%rsi,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 8(%rax,%rsi,4)
	vmovss	12(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 12(%rax,%rsi,4)
	vmovss	16(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 16(%rax,%rsi,4)
	vmovss	20(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 20(%rax,%rsi,4)
	vmovss	24(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 24(%rax,%rsi,4)
	vmovss	28(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 28(%rax,%rsi,4)
	addq	$8, %rsi
	cmpq	%rsi, %r9
	jne	.LBB18_13
	jmp	.LBB18_24
.LBB18_16:
	movq	%r9, %rsi
	andq	$-32, %rsi
	leaq	-32(%rsi), %rcx
	movq	%rcx, %rdi
	shrq	$5, %rdi
	incq	%rdi
	movl	%edi, %r8d
	andl	$3, %r8d
	cmpq	$96, %rcx
	jae	.LBB18_18
# %bb.17:
	xorl	%ebx, %ebx
	jmp	.LBB18_20
.LBB18_18:
	andq	$-4, %rdi
	negq	%rdi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB18_19:                              # =>This Inner Loop Header: Depth=1
	vmovups	(%rdx,%rbx,4), %ymm0
	vmovups	32(%rdx,%rbx,4), %ymm1
	vmovups	64(%rdx,%rbx,4), %ymm2
	vmovups	96(%rdx,%rbx,4), %ymm3
	vmovups	%ymm0, (%rax,%rbx,4)
	vmovups	%ymm1, 32(%rax,%rbx,4)
	vmovups	%ymm2, 64(%rax,%rbx,4)
	vmovups	%ymm3, 96(%rax,%rbx,4)
	vmovups	128(%rdx,%rbx,4), %ymm0
	vmovups	160(%rdx,%rbx,4), %ymm1
	vmovups	192(%rdx,%rbx,4), %ymm2
	vmovups	224(%rdx,%rbx,4), %ymm3
	vmovups	%ymm0, 128(%rax,%rbx,4)
	vmovups	%ymm1, 160(%rax,%rbx,4)
	vmovups	%ymm2, 192(%rax,%rbx,4)
	vmovups	%ymm3, 224(%rax,%rbx,4)
	vmovups	256(%rdx,%rbx,4), %ymm0
	vmovups	288(%rdx,%rbx,4), %ymm1
	vmovups	320(%rdx,%rbx,4), %ymm2
	vmovups	352(%rdx,%rbx,4), %ymm3
	vmovups	%ymm0, 256(%rax,%rbx,4)
	vmovups	%ymm1, 288(%rax,%rbx,4)
	vmovups	%ymm2, 320(%rax,%rbx,4)
	vmovups	%ymm3, 352(%rax,%rbx,4)
	vmovups	384(%rdx,%rbx,4), %ymm0
	vmovups	416(%rdx,%rbx,4), %ymm1
	vmovups	448(%rdx,%rbx,4), %ymm2
	vmovups	480(%rdx,%rbx,4), %ymm3
	vmovups	%ymm0, 384(%rax,%rbx,4)
	vmovups	%ymm1, 416(%rax,%rbx,4)
	vmovups	%ymm2, 448(%rax,%rbx,4)
	vmovups	%ymm3, 480(%rax,%rbx,4)
	subq	$-128, %rbx
	addq	$4, %rdi
	jne	.LBB18_19
.LBB18_20:
	testq	%r8, %r8
	je	.LBB18_23
# %bb.21:
	leaq	(%rax,%rbx,4), %rdi
	addq	$96, %rdi
	leaq	(%rdx,%rbx,4), %rbx
	addq	$96, %rbx
	shlq	$7, %r8
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB18_22:                              # =>This Inner Loop Header: Depth=1
	vmovups	-96(%rbx,%rcx), %ymm0
	vmovups	-64(%rbx,%rcx), %ymm1
	vmovups	-32(%rbx,%rcx), %ymm2
	vmovups	(%rbx,%rcx), %ymm3
	vmovups	%ymm0, -96(%rdi,%rcx)
	vmovups	%ymm1, -64(%rdi,%rcx)
	vmovups	%ymm2, -32(%rdi,%rcx)
	vmovups	%ymm3, (%rdi,%rcx)
	subq	$-128, %rcx
	cmpq	%rcx, %r8
	jne	.LBB18_22
.LBB18_23:
	cmpq	%r9, %rsi
	jne	.LBB18_10
.LBB18_24:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.LBB18_28:
	.cfi_def_cfa_offset 48
	callq	_ZSt17__throw_bad_allocv
.LBB18_25:
.Ltmp152:
	movq	%rax, %rbx
	testq	%r15, %r15
	je	.LBB18_27
# %bb.26:
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB18_27:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end18:
	.size	_ZN6TensorIfEC2ERKS0_, .Lfunc_end18-_ZN6TensorIfEC2ERKS0_
	.cfi_endproc
	.section	.gcc_except_table._ZN6TensorIfEC2ERKS0_,"aG",@progbits,_ZN6TensorIfEC5ERKS0_,comdat
	.p2align	2
GCC_except_table18:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp150-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp150
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin9         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Lfunc_end18-.Ltmp151          #   Call between .Ltmp151 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6TensorIfEC2EOS0_,"axG",@progbits,_ZN6TensorIfEC5EOS0_,comdat
	.weak	_ZN6TensorIfEC2EOS0_            # -- Begin function _ZN6TensorIfEC2EOS0_
	.p2align	4, 0x90
	.type	_ZN6TensorIfEC2EOS0_,@function
_ZN6TensorIfEC2EOS0_:                   # 
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	$_ZTV6TensorIfE+16, (%rdi)
	movq	8(%rsi), %rax
	movq	$0, 8(%rsi)
	movq	%rax, 8(%rdi)
	vmovups	16(%rsi), %xmm0
	vmovups	%xmm0, 16(%rdi)
	movl	32(%rsi), %eax
	movl	%eax, 32(%rdi)
	movq	48(%rsi), %rdi
	subq	40(%rsi), %rdi
	movq	%rdi, %r15
	sarq	$2, %r15
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%r12)
	movq	$0, 56(%r12)
	testq	%rdi, %rdi
	je	.LBB19_1
# %bb.2:
	movq	%r15, %rax
	shrq	$62, %rax
	jne	.LBB19_11
# %bb.3:
	callq	_Znwm
	movq	%rax, %rbx
	jmp	.LBB19_4
.LBB19_1:
	xorl	%ebx, %ebx
.LBB19_4:
	movq	%rbx, 40(%r12)
	movq	%rbx, 48(%r12)
	leaq	(%rbx,%r15,4), %rax
	movq	%rax, 56(%r12)
	movq	40(%r14), %r15
	movq	48(%r14), %r13
	subq	%r15, %r13
	je	.LBB19_6
# %bb.5:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	memmove@PLT
.LBB19_6:
	addq	%r13, %rbx
	movq	%rbx, 48(%r12)
	movb	$1, 64(%r12)
	cmpb	$0, 64(%r14)
	jne	.LBB19_10
# %bb.7:
	leaq	16(%r14), %rax
	cmpq	$0, 8(%r14)
	je	.LBB19_9
# %bb.8:
	movq	$0, 8(%r14)
.LBB19_9:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rax)
	movl	$0, 16(%rax)
	movq	%r15, 48(%r14)
	movb	$0, 64(%r14)
.LBB19_10:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB19_11:
	.cfi_def_cfa_offset 48
	callq	_ZSt17__throw_bad_allocv
.Lfunc_end19:
	.size	_ZN6TensorIfEC2EOS0_, .Lfunc_end19-_ZN6TensorIfEC2EOS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfED2Ev,"axG",@progbits,_ZN6TensorIfED5Ev,comdat
	.weak	_ZN6TensorIfED2Ev               # -- Begin function _ZN6TensorIfED2Ev
	.p2align	4, 0x90
	.type	_ZN6TensorIfED2Ev,@function
_ZN6TensorIfED2Ev:                      # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	$_ZTV6TensorIfE+16, (%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB20_2
# %bb.1:
	callq	_ZdaPv
.LBB20_2:
	movq	40(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB20_3
# %bb.4:
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv                          # TAILCALL
.LBB20_3:
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	_ZN6TensorIfED2Ev, .Lfunc_end20-_ZN6TensorIfED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfED0Ev,"axG",@progbits,_ZN6TensorIfED5Ev,comdat
	.weak	_ZN6TensorIfED0Ev               # -- Begin function _ZN6TensorIfED0Ev
	.p2align	4, 0x90
	.type	_ZN6TensorIfED0Ev,@function
_ZN6TensorIfED0Ev:                      # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	$_ZTV6TensorIfE+16, (%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB21_2
# %bb.1:
	callq	_ZdaPv
.LBB21_2:
	movq	40(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB21_4
# %bb.3:
	callq	_ZdlPv
.LBB21_4:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv                          # TAILCALL
.Lfunc_end21:
	.size	_ZN6TensorIfED0Ev, .Lfunc_end21-_ZN6TensorIfED0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfEaSERKS0_,"axG",@progbits,_ZN6TensorIfEaSERKS0_,comdat
	.weak	_ZN6TensorIfEaSERKS0_           # -- Begin function _ZN6TensorIfEaSERKS0_
	.p2align	4, 0x90
	.type	_ZN6TensorIfEaSERKS0_,@function
_ZN6TensorIfEaSERKS0_:                  # 
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	cmpq	%rsi, %rdi
	je	.LBB22_19
# %bb.1:
	movq	%rsi, %rbx
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*16(%rax)
	vmovups	16(%rbx), %xmm0
	vmovups	%xmm0, 16(%r14)
	movl	32(%rbx), %eax
	movl	%eax, 32(%r14)
	leaq	40(%rbx), %rsi
	leaq	40(%r14), %rdi
	callq	_ZNSt6vectorIjSaIjEEaSERKS1_
	movl	32(%r14), %r15d
	leaq	(,%r15,4), %rdi
	callq	_Znam
	movq	%rax, 8(%r14)
	testq	%r15, %r15
	je	.LBB22_18
# %bb.2:
	movslq	%r15d, %r9
	movq	8(%rbx), %rdx
	cmpl	$31, %r9d
	jbe	.LBB22_3
# %bb.8:
	leaq	(%rdx,%r9,4), %rcx
	cmpq	%rcx, %rax
	jae	.LBB22_10
# %bb.9:
	leaq	(%rax,%r9,4), %rcx
	cmpq	%rdx, %rcx
	jbe	.LBB22_10
.LBB22_3:
	xorl	%esi, %esi
.LBB22_4:
	movq	%rsi, %rdi
	notq	%rdi
	addq	%r9, %rdi
	movq	%r9, %rcx
	andq	$7, %rcx
	je	.LBB22_6
	.p2align	4, 0x90
.LBB22_5:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rdx,%rsi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, (%rax,%rsi,4)
	incq	%rsi
	decq	%rcx
	jne	.LBB22_5
.LBB22_6:
	cmpq	$7, %rdi
	jb	.LBB22_18
	.p2align	4, 0x90
.LBB22_7:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rdx,%rsi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, (%rax,%rsi,4)
	vmovss	4(%rdx,%rsi,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 4(%rax,%rsi,4)
	vmovss	8(%rdx,%rsi,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 8(%rax,%rsi,4)
	vmovss	12(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 12(%rax,%rsi,4)
	vmovss	16(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 16(%rax,%rsi,4)
	vmovss	20(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 20(%rax,%rsi,4)
	vmovss	24(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 24(%rax,%rsi,4)
	vmovss	28(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 28(%rax,%rsi,4)
	addq	$8, %rsi
	cmpq	%rsi, %r9
	jne	.LBB22_7
	jmp	.LBB22_18
.LBB22_10:
	movq	%r9, %rsi
	andq	$-32, %rsi
	leaq	-32(%rsi), %rcx
	movq	%rcx, %rdi
	shrq	$5, %rdi
	incq	%rdi
	movl	%edi, %r8d
	andl	$3, %r8d
	cmpq	$96, %rcx
	jae	.LBB22_12
# %bb.11:
	xorl	%ebx, %ebx
	jmp	.LBB22_14
.LBB22_12:
	andq	$-4, %rdi
	negq	%rdi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB22_13:                              # =>This Inner Loop Header: Depth=1
	vmovups	(%rdx,%rbx,4), %ymm0
	vmovups	32(%rdx,%rbx,4), %ymm1
	vmovups	64(%rdx,%rbx,4), %ymm2
	vmovups	96(%rdx,%rbx,4), %ymm3
	vmovups	%ymm0, (%rax,%rbx,4)
	vmovups	%ymm1, 32(%rax,%rbx,4)
	vmovups	%ymm2, 64(%rax,%rbx,4)
	vmovups	%ymm3, 96(%rax,%rbx,4)
	vmovups	128(%rdx,%rbx,4), %ymm0
	vmovups	160(%rdx,%rbx,4), %ymm1
	vmovups	192(%rdx,%rbx,4), %ymm2
	vmovups	224(%rdx,%rbx,4), %ymm3
	vmovups	%ymm0, 128(%rax,%rbx,4)
	vmovups	%ymm1, 160(%rax,%rbx,4)
	vmovups	%ymm2, 192(%rax,%rbx,4)
	vmovups	%ymm3, 224(%rax,%rbx,4)
	vmovups	256(%rdx,%rbx,4), %ymm0
	vmovups	288(%rdx,%rbx,4), %ymm1
	vmovups	320(%rdx,%rbx,4), %ymm2
	vmovups	352(%rdx,%rbx,4), %ymm3
	vmovups	%ymm0, 256(%rax,%rbx,4)
	vmovups	%ymm1, 288(%rax,%rbx,4)
	vmovups	%ymm2, 320(%rax,%rbx,4)
	vmovups	%ymm3, 352(%rax,%rbx,4)
	vmovups	384(%rdx,%rbx,4), %ymm0
	vmovups	416(%rdx,%rbx,4), %ymm1
	vmovups	448(%rdx,%rbx,4), %ymm2
	vmovups	480(%rdx,%rbx,4), %ymm3
	vmovups	%ymm0, 384(%rax,%rbx,4)
	vmovups	%ymm1, 416(%rax,%rbx,4)
	vmovups	%ymm2, 448(%rax,%rbx,4)
	vmovups	%ymm3, 480(%rax,%rbx,4)
	subq	$-128, %rbx
	addq	$4, %rdi
	jne	.LBB22_13
.LBB22_14:
	testq	%r8, %r8
	je	.LBB22_17
# %bb.15:
	leaq	(%rax,%rbx,4), %rdi
	addq	$96, %rdi
	leaq	(%rdx,%rbx,4), %rbx
	addq	$96, %rbx
	shlq	$7, %r8
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB22_16:                              # =>This Inner Loop Header: Depth=1
	vmovups	-96(%rbx,%rcx), %ymm0
	vmovups	-64(%rbx,%rcx), %ymm1
	vmovups	-32(%rbx,%rcx), %ymm2
	vmovups	(%rbx,%rcx), %ymm3
	vmovups	%ymm0, -96(%rdi,%rcx)
	vmovups	%ymm1, -64(%rdi,%rcx)
	vmovups	%ymm2, -32(%rdi,%rcx)
	vmovups	%ymm3, (%rdi,%rcx)
	subq	$-128, %rcx
	cmpq	%rcx, %r8
	jne	.LBB22_16
.LBB22_17:
	cmpq	%r9, %rsi
	jne	.LBB22_4
.LBB22_18:
	movb	$1, 64(%r14)
.LBB22_19:
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end22:
	.size	_ZN6TensorIfEaSERKS0_, .Lfunc_end22-_ZN6TensorIfEaSERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIjSaIjEEaSERKS1_,"axG",@progbits,_ZNSt6vectorIjSaIjEEaSERKS1_,comdat
	.weak	_ZNSt6vectorIjSaIjEEaSERKS1_    # -- Begin function _ZNSt6vectorIjSaIjEEaSERKS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIjSaIjEEaSERKS1_,@function
_ZNSt6vectorIjSaIjEEaSERKS1_:           # 
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	cmpq	%rdi, %rsi
	je	.LBB23_18
# %bb.1:
	movq	%rsi, %rbx
	movq	(%rsi), %r14
	movq	8(%rsi), %rdx
	movq	%rdx, %r12
	subq	%r14, %r12
	movq	%r12, %r13
	sarq	$2, %r13
	movq	(%r15), %rax
	movq	16(%r15), %rcx
	subq	%rax, %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %r13
	jbe	.LBB23_9
# %bb.2:
	testq	%r12, %r12
	je	.LBB23_3
# %bb.4:
	movq	%r13, %rax
	shrq	$62, %rax
	jne	.LBB23_19
# %bb.5:
	movq	%r12, %rdi
	callq	_Znwm
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB23_8
.LBB23_7:
	callq	_ZdlPv
.LBB23_8:
	movq	%rbx, (%r15)
	leaq	(%rbx,%r13,4), %rax
	movq	%rax, 16(%r15)
	jmp	.LBB23_17
.LBB23_9:
	movq	8(%r15), %rdi
	movq	%rdi, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsi
	sarq	$2, %rsi
	cmpq	%r13, %rsi
	jae	.LBB23_10
# %bb.12:
	testq	%rcx, %rcx
	je	.LBB23_13
# %bb.14:
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%rcx, %rdx
	callq	memmove@PLT
	movq	(%rbx), %r14
	movq	8(%rbx), %rdx
	movq	8(%r15), %rdi
	movq	%rdi, %rax
	subq	(%r15), %rax
	sarq	$2, %rax
	leaq	(%r14,%rax,4), %rsi
	subq	%rsi, %rdx
	jne	.LBB23_16
	jmp	.LBB23_17
.LBB23_10:
	testq	%r12, %r12
	je	.LBB23_17
# %bb.11:
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	jmp	.LBB23_16
.LBB23_3:
	xorl	%ebx, %ebx
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	jne	.LBB23_7
	jmp	.LBB23_8
.LBB23_13:
	xorl	%eax, %eax
	leaq	(%r14,%rax,4), %rsi
	subq	%rsi, %rdx
	je	.LBB23_17
.LBB23_16:
	callq	memmove@PLT
.LBB23_17:
	shlq	$2, %r13
	addq	(%r15), %r13
	movq	%r13, 8(%r15)
.LBB23_18:
	movq	%r15, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB23_19:
	.cfi_def_cfa_offset 48
	callq	_ZSt17__throw_bad_allocv
.Lfunc_end23:
	.size	_ZNSt6vectorIjSaIjEEaSERKS1_, .Lfunc_end23-_ZNSt6vectorIjSaIjEEaSERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfEaSEOS0_,"axG",@progbits,_ZN6TensorIfEaSEOS0_,comdat
	.weak	_ZN6TensorIfEaSEOS0_            # -- Begin function _ZN6TensorIfEaSEOS0_
	.p2align	4, 0x90
	.type	_ZN6TensorIfEaSEOS0_,@function
_ZN6TensorIfEaSEOS0_:                   # 
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	cmpq	%rsi, %rdi
	je	.LBB24_5
# %bb.1:
	movq	%rsi, %r14
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*16(%rax)
	vmovups	16(%r14), %xmm0
	vmovups	%xmm0, 16(%rbx)
	movl	32(%r14), %eax
	movl	%eax, 32(%rbx)
	leaq	40(%r14), %rsi
	leaq	40(%rbx), %rdi
	callq	_ZNSt6vectorIjSaIjEEaSERKS1_
	movq	8(%r14), %rax
	movq	$0, 8(%r14)
	movq	%rax, 8(%rbx)
	movb	$1, 64(%rbx)
	cmpb	$0, 64(%r14)
	jne	.LBB24_5
# %bb.2:
	leaq	16(%r14), %rax
	cmpq	$0, 8(%r14)
	je	.LBB24_4
# %bb.3:
	movq	$0, 8(%r14)
.LBB24_4:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rax)
	movl	$0, 16(%rax)
	movq	40(%r14), %rax
	movq	%rax, 48(%r14)
	movb	$0, 64(%r14)
.LBB24_5:
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end24:
	.size	_ZN6TensorIfEaSEOS0_, .Lfunc_end24-_ZN6TensorIfEaSEOS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfE2atERKjjS2_,"axG",@progbits,_ZNK6TensorIfE2atERKjjS2_,comdat
	.weak	_ZNK6TensorIfE2atERKjjS2_       # -- Begin function _ZNK6TensorIfE2atERKjjS2_
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE2atERKjjS2_,@function
_ZNK6TensorIfE2atERKjjS2_:              # 
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	(%rcx), %r8d
	movl	28(%rdi), %ecx
	cmpl	%ecx, %r8d
	jae	.LBB25_4
# %bb.1:
	movl	(%rsi), %esi
	cmpl	20(%rdi), %esi
	jae	.LBB25_5
# %bb.2:
	movl	24(%rdi), %eax
	cmpl	%edx, %eax
	jbe	.LBB25_6
# %bb.3:
	imull	%esi, %eax
	addl	%edx, %eax
	imull	%ecx, %eax
	addl	%r8d, %eax
	shlq	$2, %rax
	addq	8(%rdi), %rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB25_4:
	.cfi_def_cfa_offset 16
	movl	$.L.str.11, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6TensorIfE2atERKjjS2_, %ecx
	movl	$218, %edx
	callq	__assert_fail
.LBB25_5:
	movl	$.L.str.12, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6TensorIfE2atERKjjS2_, %ecx
	movl	$219, %edx
	callq	__assert_fail
.LBB25_6:
	movl	$.L.str.13, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6TensorIfE2atERKjjS2_, %ecx
	movl	$220, %edx
	callq	__assert_fail
.Lfunc_end25:
	.size	_ZNK6TensorIfE2atERKjjS2_, .Lfunc_end25-_ZNK6TensorIfE2atERKjjS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE2atERKjjS2_,"axG",@progbits,_ZN6TensorIfE2atERKjjS2_,comdat
	.weak	_ZN6TensorIfE2atERKjjS2_        # -- Begin function _ZN6TensorIfE2atERKjjS2_
	.p2align	4, 0x90
	.type	_ZN6TensorIfE2atERKjjS2_,@function
_ZN6TensorIfE2atERKjjS2_:               # 
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	(%rcx), %r8d
	movl	28(%rdi), %ecx
	cmpl	%ecx, %r8d
	jae	.LBB26_4
# %bb.1:
	movl	(%rsi), %esi
	cmpl	20(%rdi), %esi
	jae	.LBB26_5
# %bb.2:
	movl	24(%rdi), %eax
	cmpl	%edx, %eax
	jbe	.LBB26_6
# %bb.3:
	imull	%esi, %eax
	addl	%edx, %eax
	imull	%ecx, %eax
	addl	%r8d, %eax
	shlq	$2, %rax
	addq	8(%rdi), %rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB26_4:
	.cfi_def_cfa_offset 16
	movl	$.L.str.11, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZN6TensorIfE2atERKjjS2_, %ecx
	movl	$229, %edx
	callq	__assert_fail
.LBB26_5:
	movl	$.L.str.12, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZN6TensorIfE2atERKjjS2_, %ecx
	movl	$230, %edx
	callq	__assert_fail
.LBB26_6:
	movl	$.L.str.13, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZN6TensorIfE2atERKjjS2_, %ecx
	movl	$231, %edx
	callq	__assert_fail
.Lfunc_end26:
	.size	_ZN6TensorIfE2atERKjjS2_, .Lfunc_end26-_ZN6TensorIfE2atERKjjS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfE2atEjjjj,"axG",@progbits,_ZNK6TensorIfE2atEjjjj,comdat
	.weak	_ZNK6TensorIfE2atEjjjj          # -- Begin function _ZNK6TensorIfE2atEjjjj
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE2atEjjjj,@function
_ZNK6TensorIfE2atEjjjj:                 # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	%esi, 16(%rdi)
	jbe	.LBB27_5
# %bb.1:
	movl	%r8d, %r15d
	movq	%rdi, %r14
	cmpl	%r8d, 28(%rdi)
	jbe	.LBB27_6
# %bb.2:
	movl	%edx, %ebp
	cmpl	%edx, 20(%r14)
	jbe	.LBB27_7
# %bb.3:
	movl	%ecx, %r12d
	cmpl	%ecx, 24(%r14)
	jbe	.LBB27_8
# %bb.4:
	movl	%esi, %ebx
	movl	$_ZSt4cout, %edi
	movl	$.L.str.3, %esi
	movl	$7, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	imull	20(%r14), %ebx
	addl	%ebp, %ebx
	imull	24(%r14), %ebx
	addl	%r12d, %ebx
	imull	28(%r14), %ebx
	addl	%r15d, %ebx
	shlq	$2, %rbx
	addq	8(%r14), %rbx
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB27_5:
	.cfi_def_cfa_offset 48
	movl	$.L.str.14, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6TensorIfE2atEjjjj, %ecx
	movl	$240, %edx
	callq	__assert_fail
.LBB27_6:
	movl	$.L.str.11, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6TensorIfE2atEjjjj, %ecx
	movl	$241, %edx
	callq	__assert_fail
.LBB27_7:
	movl	$.L.str.12, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6TensorIfE2atEjjjj, %ecx
	movl	$242, %edx
	callq	__assert_fail
.LBB27_8:
	movl	$.L.str.13, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6TensorIfE2atEjjjj, %ecx
	movl	$243, %edx
	callq	__assert_fail
.Lfunc_end27:
	.size	_ZNK6TensorIfE2atEjjjj, .Lfunc_end27-_ZNK6TensorIfE2atEjjjj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE2atEjjjj,"axG",@progbits,_ZN6TensorIfE2atEjjjj,comdat
	.weak	_ZN6TensorIfE2atEjjjj           # -- Begin function _ZN6TensorIfE2atEjjjj
	.p2align	4, 0x90
	.type	_ZN6TensorIfE2atEjjjj,@function
_ZN6TensorIfE2atEjjjj:                  # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	%esi, 16(%rdi)
	jbe	.LBB28_5
# %bb.1:
	movl	%r8d, %r15d
	movq	%rdi, %r14
	cmpl	%r8d, 28(%rdi)
	jbe	.LBB28_6
# %bb.2:
	movl	%edx, %ebp
	cmpl	%edx, 20(%r14)
	jbe	.LBB28_7
# %bb.3:
	movl	%ecx, %r12d
	cmpl	%ecx, 24(%r14)
	jbe	.LBB28_8
# %bb.4:
	movl	%esi, %ebx
	movl	$_ZSt4cout, %edi
	movl	$.L.str.3, %esi
	movl	$7, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	imull	20(%r14), %ebx
	addl	%ebp, %ebx
	imull	24(%r14), %ebx
	addl	%r12d, %ebx
	imull	28(%r14), %ebx
	addl	%r15d, %ebx
	shlq	$2, %rbx
	addq	8(%r14), %rbx
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB28_5:
	.cfi_def_cfa_offset 48
	movl	$.L.str.14, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZN6TensorIfE2atEjjjj, %ecx
	movl	$253, %edx
	callq	__assert_fail
.LBB28_6:
	movl	$.L.str.11, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZN6TensorIfE2atEjjjj, %ecx
	movl	$254, %edx
	callq	__assert_fail
.LBB28_7:
	movl	$.L.str.12, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZN6TensorIfE2atEjjjj, %ecx
	movl	$255, %edx
	callq	__assert_fail
.LBB28_8:
	movl	$.L.str.13, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZN6TensorIfE2atEjjjj, %ecx
	movl	$256, %edx                      # imm = 0x100
	callq	__assert_fail
.Lfunc_end28:
	.size	_ZN6TensorIfE2atEjjjj, .Lfunc_end28-_ZN6TensorIfE2atEjjjj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfEmlERKf,"axG",@progbits,_ZN6TensorIfEmlERKf,comdat
	.weak	_ZN6TensorIfEmlERKf             # -- Begin function _ZN6TensorIfEmlERKf
	.p2align	4, 0x90
	.type	_ZN6TensorIfEmlERKf,@function
_ZN6TensorIfEmlERKf:                    # 
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	_ZN6TensorIfE4copyEv
	movslq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB29_16
# %bb.1:
	movq	8(%r14), %rcx
	cmpl	$32, %eax
	jb	.LBB29_2
# %bb.3:
	leaq	1(%rbx), %rdx
	cmpq	%rcx, %rdx
	jbe	.LBB29_6
# %bb.4:
	leaq	(%rcx,%rax,4), %rdx
	cmpq	%rbx, %rdx
	jbe	.LBB29_6
.LBB29_2:
	xorl	%edx, %edx
.LBB29_12:
	movq	%rdx, %rsi
	notq	%rsi
	addq	%rax, %rsi
	movq	%rax, %rdi
	andq	$7, %rdi
	je	.LBB29_14
	.p2align	4, 0x90
.LBB29_13:                              # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmulss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, (%rcx,%rdx,4)
	incq	%rdx
	decq	%rdi
	jne	.LBB29_13
.LBB29_14:
	cmpq	$7, %rsi
	jb	.LBB29_16
	.p2align	4, 0x90
.LBB29_15:                              # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	4(%rcx,%rdx,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vmulss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, (%rcx,%rdx,4)
	vmulss	(%rbx), %xmm1, %xmm0
	vmovss	%xmm0, 4(%rcx,%rdx,4)
	vmovss	8(%rcx,%rdx,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmulss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 8(%rcx,%rdx,4)
	vmovss	12(%rcx,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmulss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 12(%rcx,%rdx,4)
	vmovss	16(%rcx,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmulss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 16(%rcx,%rdx,4)
	vmovss	20(%rcx,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmulss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 20(%rcx,%rdx,4)
	vmovss	24(%rcx,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmulss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 24(%rcx,%rdx,4)
	vmovss	28(%rcx,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmulss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 28(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	%rdx, %rax
	jne	.LBB29_15
	jmp	.LBB29_16
.LBB29_6:
	movq	%rax, %rdx
	andq	$-32, %rdx
	leaq	-32(%rdx), %rsi
	movq	%rsi, %r8
	shrq	$5, %r8
	incq	%r8
	testq	%rsi, %rsi
	je	.LBB29_17
# %bb.7:
	vbroadcastss	(%rbx), %ymm0
	movq	%r8, %rsi
	andq	$-2, %rsi
	negq	%rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB29_8:                               # =>This Inner Loop Header: Depth=1
	vmulps	(%rcx,%rdi,4), %ymm0, %ymm1
	vmulps	32(%rcx,%rdi,4), %ymm0, %ymm2
	vmulps	64(%rcx,%rdi,4), %ymm0, %ymm3
	vmulps	96(%rcx,%rdi,4), %ymm0, %ymm4
	vmovups	%ymm1, (%rcx,%rdi,4)
	vmovups	%ymm2, 32(%rcx,%rdi,4)
	vmovups	%ymm3, 64(%rcx,%rdi,4)
	vmovups	%ymm4, 96(%rcx,%rdi,4)
	vmulps	128(%rcx,%rdi,4), %ymm0, %ymm1
	vmulps	160(%rcx,%rdi,4), %ymm0, %ymm2
	vmulps	192(%rcx,%rdi,4), %ymm0, %ymm3
	vmulps	224(%rcx,%rdi,4), %ymm0, %ymm4
	vmovups	%ymm1, 128(%rcx,%rdi,4)
	vmovups	%ymm2, 160(%rcx,%rdi,4)
	vmovups	%ymm3, 192(%rcx,%rdi,4)
	vmovups	%ymm4, 224(%rcx,%rdi,4)
	addq	$64, %rdi
	addq	$2, %rsi
	jne	.LBB29_8
# %bb.9:
	testb	$1, %r8b
	je	.LBB29_11
.LBB29_10:
	vbroadcastss	(%rbx), %ymm0
	vmulps	(%rcx,%rdi,4), %ymm0, %ymm1
	vmulps	32(%rcx,%rdi,4), %ymm0, %ymm2
	vmulps	64(%rcx,%rdi,4), %ymm0, %ymm3
	vmulps	96(%rcx,%rdi,4), %ymm0, %ymm0
	vmovups	%ymm1, (%rcx,%rdi,4)
	vmovups	%ymm2, 32(%rcx,%rdi,4)
	vmovups	%ymm3, 64(%rcx,%rdi,4)
	vmovups	%ymm0, 96(%rcx,%rdi,4)
.LBB29_11:
	cmpq	%rax, %rdx
	jne	.LBB29_12
.LBB29_16:
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.LBB29_17:
	.cfi_def_cfa_offset 32
	xorl	%edi, %edi
	testb	$1, %r8b
	jne	.LBB29_10
	jmp	.LBB29_11
.Lfunc_end29:
	.size	_ZN6TensorIfEmlERKf, .Lfunc_end29-_ZN6TensorIfEmlERKf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE4copyEv,"axG",@progbits,_ZN6TensorIfE4copyEv,comdat
	.weak	_ZN6TensorIfE4copyEv            # -- Begin function _ZN6TensorIfE4copyEv
	.p2align	4, 0x90
	.type	_ZN6TensorIfE4copyEv,@function
_ZN6TensorIfE4copyEv:                   # 
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception10
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	$_ZTV6TensorIfE+16, (%rdi)
	addq	$40, %rdi
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%r14)
	movq	$0, 56(%r14)
	cmpb	$0, 64(%r14)
	jne	.LBB30_4
# %bb.1:
	cmpq	$0, 8(%r14)
	je	.LBB30_3
# %bb.2:
	movq	$0, 8(%r14)
.LBB30_3:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 16(%r14)
	movl	$0, 32(%r14)
	movq	$0, 48(%r14)
	movb	$0, 64(%r14)
.LBB30_4:
	movl	32(%r15), %eax
	movl	%eax, 32(%r14)
	leaq	40(%r15), %rsi
.Ltmp153:
	callq	_ZNSt6vectorIjSaIjEEaSERKS1_
.Ltmp154:
# %bb.5:
	vmovups	16(%r15), %xmm0
	vmovups	%xmm0, 16(%r14)
	movb	$1, 64(%r14)
	movl	32(%r15), %ebx
	leaq	(,%rbx,4), %rdi
.Ltmp155:
	callq	_Znam
.Ltmp156:
# %bb.6:
	movq	%rax, 8(%r14)
	testl	%ebx, %ebx
	je	.LBB30_23
# %bb.7:
	movslq	%ebx, %r9
	movq	8(%r15), %rdx
	cmpl	$31, %ebx
	jbe	.LBB30_8
# %bb.13:
	leaq	(%rdx,%r9,4), %rcx
	cmpq	%rcx, %rax
	jae	.LBB30_15
# %bb.14:
	leaq	(%rax,%r9,4), %rcx
	cmpq	%rdx, %rcx
	jbe	.LBB30_15
.LBB30_8:
	xorl	%esi, %esi
.LBB30_9:
	movq	%rsi, %rdi
	notq	%rdi
	addq	%r9, %rdi
	movq	%r9, %rcx
	andq	$7, %rcx
	je	.LBB30_11
	.p2align	4, 0x90
.LBB30_10:                              # =>This Inner Loop Header: Depth=1
	vmovss	(%rdx,%rsi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, (%rax,%rsi,4)
	incq	%rsi
	decq	%rcx
	jne	.LBB30_10
.LBB30_11:
	cmpq	$7, %rdi
	jb	.LBB30_23
	.p2align	4, 0x90
.LBB30_12:                              # =>This Inner Loop Header: Depth=1
	vmovss	(%rdx,%rsi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, (%rax,%rsi,4)
	vmovss	4(%rdx,%rsi,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 4(%rax,%rsi,4)
	vmovss	8(%rdx,%rsi,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 8(%rax,%rsi,4)
	vmovss	12(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 12(%rax,%rsi,4)
	vmovss	16(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 16(%rax,%rsi,4)
	vmovss	20(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 20(%rax,%rsi,4)
	vmovss	24(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 24(%rax,%rsi,4)
	vmovss	28(%rdx,%rsi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 28(%rax,%rsi,4)
	addq	$8, %rsi
	cmpq	%rsi, %r9
	jne	.LBB30_12
	jmp	.LBB30_23
.LBB30_15:
	movq	%r9, %rsi
	andq	$-32, %rsi
	leaq	-32(%rsi), %rcx
	movq	%rcx, %rdi
	shrq	$5, %rdi
	incq	%rdi
	movl	%edi, %r8d
	andl	$3, %r8d
	cmpq	$96, %rcx
	jae	.LBB30_17
# %bb.16:
	xorl	%ebx, %ebx
	jmp	.LBB30_19
.LBB30_17:
	andq	$-4, %rdi
	negq	%rdi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB30_18:                              # =>This Inner Loop Header: Depth=1
	vmovups	(%rdx,%rbx,4), %ymm0
	vmovups	32(%rdx,%rbx,4), %ymm1
	vmovups	64(%rdx,%rbx,4), %ymm2
	vmovups	96(%rdx,%rbx,4), %ymm3
	vmovups	%ymm0, (%rax,%rbx,4)
	vmovups	%ymm1, 32(%rax,%rbx,4)
	vmovups	%ymm2, 64(%rax,%rbx,4)
	vmovups	%ymm3, 96(%rax,%rbx,4)
	vmovups	128(%rdx,%rbx,4), %ymm0
	vmovups	160(%rdx,%rbx,4), %ymm1
	vmovups	192(%rdx,%rbx,4), %ymm2
	vmovups	224(%rdx,%rbx,4), %ymm3
	vmovups	%ymm0, 128(%rax,%rbx,4)
	vmovups	%ymm1, 160(%rax,%rbx,4)
	vmovups	%ymm2, 192(%rax,%rbx,4)
	vmovups	%ymm3, 224(%rax,%rbx,4)
	vmovups	256(%rdx,%rbx,4), %ymm0
	vmovups	288(%rdx,%rbx,4), %ymm1
	vmovups	320(%rdx,%rbx,4), %ymm2
	vmovups	352(%rdx,%rbx,4), %ymm3
	vmovups	%ymm0, 256(%rax,%rbx,4)
	vmovups	%ymm1, 288(%rax,%rbx,4)
	vmovups	%ymm2, 320(%rax,%rbx,4)
	vmovups	%ymm3, 352(%rax,%rbx,4)
	vmovups	384(%rdx,%rbx,4), %ymm0
	vmovups	416(%rdx,%rbx,4), %ymm1
	vmovups	448(%rdx,%rbx,4), %ymm2
	vmovups	480(%rdx,%rbx,4), %ymm3
	vmovups	%ymm0, 384(%rax,%rbx,4)
	vmovups	%ymm1, 416(%rax,%rbx,4)
	vmovups	%ymm2, 448(%rax,%rbx,4)
	vmovups	%ymm3, 480(%rax,%rbx,4)
	subq	$-128, %rbx
	addq	$4, %rdi
	jne	.LBB30_18
.LBB30_19:
	testq	%r8, %r8
	je	.LBB30_22
# %bb.20:
	leaq	(%rax,%rbx,4), %rdi
	addq	$96, %rdi
	leaq	(%rdx,%rbx,4), %rbx
	addq	$96, %rbx
	shlq	$7, %r8
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB30_21:                              # =>This Inner Loop Header: Depth=1
	vmovups	-96(%rbx,%rcx), %ymm0
	vmovups	-64(%rbx,%rcx), %ymm1
	vmovups	-32(%rbx,%rcx), %ymm2
	vmovups	(%rbx,%rcx), %ymm3
	vmovups	%ymm0, -96(%rdi,%rcx)
	vmovups	%ymm1, -64(%rdi,%rcx)
	vmovups	%ymm2, -32(%rdi,%rcx)
	vmovups	%ymm3, (%rdi,%rcx)
	subq	$-128, %rcx
	cmpq	%rcx, %r8
	jne	.LBB30_21
.LBB30_22:
	cmpq	%r9, %rsi
	jne	.LBB30_9
.LBB30_23:
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.LBB30_24:
	.cfi_def_cfa_offset 32
.Ltmp157:
	movq	%rax, %rbx
	movq	$_ZTV6TensorIfE+16, (%r14)
	movq	8(%r14), %rdi
	testq	%rdi, %rdi
	jne	.LBB30_25
# %bb.26:
	movq	40(%r14), %rdi
	testq	%rdi, %rdi
	jne	.LBB30_27
.LBB30_28:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB30_25:
	callq	_ZdaPv
	movq	40(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB30_28
.LBB30_27:
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end30:
	.size	_ZN6TensorIfE4copyEv, .Lfunc_end30-_ZN6TensorIfE4copyEv
	.cfi_endproc
	.section	.gcc_except_table._ZN6TensorIfE4copyEv,"aG",@progbits,_ZN6TensorIfE4copyEv,comdat
	.p2align	2
GCC_except_table30:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp153-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp156-.Ltmp153              #   Call between .Ltmp153 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin10        #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Lfunc_end30-.Ltmp156          #   Call between .Ltmp156 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6TensorIfEplERKf,"axG",@progbits,_ZN6TensorIfEplERKf,comdat
	.weak	_ZN6TensorIfEplERKf             # -- Begin function _ZN6TensorIfEplERKf
	.p2align	4, 0x90
	.type	_ZN6TensorIfEplERKf,@function
_ZN6TensorIfEplERKf:                    # 
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	_ZN6TensorIfE4copyEv
	movslq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB31_16
# %bb.1:
	movq	8(%r14), %rcx
	cmpl	$32, %eax
	jb	.LBB31_2
# %bb.3:
	leaq	1(%rbx), %rdx
	cmpq	%rcx, %rdx
	jbe	.LBB31_6
# %bb.4:
	leaq	(%rcx,%rax,4), %rdx
	cmpq	%rbx, %rdx
	jbe	.LBB31_6
.LBB31_2:
	xorl	%edx, %edx
.LBB31_12:
	movq	%rdx, %rsi
	notq	%rsi
	addq	%rax, %rsi
	movq	%rax, %rdi
	andq	$7, %rdi
	je	.LBB31_14
	.p2align	4, 0x90
.LBB31_13:                              # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vaddss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, (%rcx,%rdx,4)
	incq	%rdx
	decq	%rdi
	jne	.LBB31_13
.LBB31_14:
	cmpq	$7, %rsi
	jb	.LBB31_16
	.p2align	4, 0x90
.LBB31_15:                              # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	4(%rcx,%rdx,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vaddss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, (%rcx,%rdx,4)
	vaddss	(%rbx), %xmm1, %xmm0
	vmovss	%xmm0, 4(%rcx,%rdx,4)
	vmovss	8(%rcx,%rdx,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vaddss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 8(%rcx,%rdx,4)
	vmovss	12(%rcx,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vaddss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 12(%rcx,%rdx,4)
	vmovss	16(%rcx,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vaddss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 16(%rcx,%rdx,4)
	vmovss	20(%rcx,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vaddss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 20(%rcx,%rdx,4)
	vmovss	24(%rcx,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vaddss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 24(%rcx,%rdx,4)
	vmovss	28(%rcx,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vaddss	(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 28(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	%rdx, %rax
	jne	.LBB31_15
	jmp	.LBB31_16
.LBB31_6:
	movq	%rax, %rdx
	andq	$-32, %rdx
	leaq	-32(%rdx), %rsi
	movq	%rsi, %r8
	shrq	$5, %r8
	incq	%r8
	testq	%rsi, %rsi
	je	.LBB31_17
# %bb.7:
	vbroadcastss	(%rbx), %ymm0
	movq	%r8, %rsi
	andq	$-2, %rsi
	negq	%rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB31_8:                               # =>This Inner Loop Header: Depth=1
	vaddps	(%rcx,%rdi,4), %ymm0, %ymm1
	vaddps	32(%rcx,%rdi,4), %ymm0, %ymm2
	vaddps	64(%rcx,%rdi,4), %ymm0, %ymm3
	vaddps	96(%rcx,%rdi,4), %ymm0, %ymm4
	vmovups	%ymm1, (%rcx,%rdi,4)
	vmovups	%ymm2, 32(%rcx,%rdi,4)
	vmovups	%ymm3, 64(%rcx,%rdi,4)
	vmovups	%ymm4, 96(%rcx,%rdi,4)
	vaddps	128(%rcx,%rdi,4), %ymm0, %ymm1
	vaddps	160(%rcx,%rdi,4), %ymm0, %ymm2
	vaddps	192(%rcx,%rdi,4), %ymm0, %ymm3
	vaddps	224(%rcx,%rdi,4), %ymm0, %ymm4
	vmovups	%ymm1, 128(%rcx,%rdi,4)
	vmovups	%ymm2, 160(%rcx,%rdi,4)
	vmovups	%ymm3, 192(%rcx,%rdi,4)
	vmovups	%ymm4, 224(%rcx,%rdi,4)
	addq	$64, %rdi
	addq	$2, %rsi
	jne	.LBB31_8
# %bb.9:
	testb	$1, %r8b
	je	.LBB31_11
.LBB31_10:
	vbroadcastss	(%rbx), %ymm0
	vaddps	(%rcx,%rdi,4), %ymm0, %ymm1
	vaddps	32(%rcx,%rdi,4), %ymm0, %ymm2
	vaddps	64(%rcx,%rdi,4), %ymm0, %ymm3
	vaddps	96(%rcx,%rdi,4), %ymm0, %ymm0
	vmovups	%ymm1, (%rcx,%rdi,4)
	vmovups	%ymm2, 32(%rcx,%rdi,4)
	vmovups	%ymm3, 64(%rcx,%rdi,4)
	vmovups	%ymm0, 96(%rcx,%rdi,4)
.LBB31_11:
	cmpq	%rax, %rdx
	jne	.LBB31_12
.LBB31_16:
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.LBB31_17:
	.cfi_def_cfa_offset 32
	xorl	%edi, %edi
	testb	$1, %r8b
	jne	.LBB31_10
	jmp	.LBB31_11
.Lfunc_end31:
	.size	_ZN6TensorIfEplERKf, .Lfunc_end31-_ZN6TensorIfEplERKf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _ZN6TensorIfEeqERKS0_
.LCPI32_0:
	.long	0x7fffffff                      #  NaN
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI32_1:
	.quad	0x3f50624dd2f1a9fc              #  0.001
	.section	.text._ZN6TensorIfEeqERKS0_,"axG",@progbits,_ZN6TensorIfEeqERKS0_,comdat
	.weak	_ZN6TensorIfEeqERKS0_
	.p2align	4, 0x90
	.type	_ZN6TensorIfEeqERKS0_,@function
_ZN6TensorIfEeqERKS0_:                  # 
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	40(%rdi), %rdi
	movq	48(%rbx), %rdx
	subq	%rdi, %rdx
	movq	40(%rsi), %rsi
	movq	48(%r14), %rax
	subq	%rsi, %rax
	cmpq	%rax, %rdx
	jne	.LBB32_3
# %bb.1:
	testq	%rdx, %rdx
	je	.LBB32_6
# %bb.2:
	callq	bcmp@PLT
	testl	%eax, %eax
	je	.LBB32_6
.LBB32_3:
	xorl	%eax, %eax
.LBB32_4:
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB32_6:
	.cfi_def_cfa_offset 32
	movl	32(%rbx), %ecx
	testq	%rcx, %rcx
	je	.LBB32_10
# %bb.7:
	movq	8(%rbx), %rdx
	movq	8(%r14), %rsi
	movl	$1, %edi
	vbroadcastss	.LCPI32_0(%rip), %xmm0  # xmm0 = [NaN,NaN,NaN,NaN]
	vmovsd	.LCPI32_1(%rip), %xmm1          # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB32_8:                               # =>This Inner Loop Header: Depth=1
	vmovss	-4(%rdx,%rdi,4), %xmm2          # xmm2 = mem[0],zero,zero,zero
	vsubss	-4(%rsi,%rdi,4), %xmm2, %xmm2
	vandps	%xmm0, %xmm2, %xmm2
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vucomisd	%xmm1, %xmm2
	setbe	%al
	cmpq	%rcx, %rdi
	jae	.LBB32_4
# %bb.9:                                #   in Loop: Header=BB32_8 Depth=1
	incq	%rdi
	vucomisd	%xmm1, %xmm2
	jbe	.LBB32_8
	jmp	.LBB32_4
.LBB32_10:
	movb	$1, %al
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end32:
	.size	_ZN6TensorIfEeqERKS0_, .Lfunc_end32-_ZN6TensorIfEeqERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE7getDataEv,"axG",@progbits,_ZN6TensorIfE7getDataEv,comdat
	.weak	_ZN6TensorIfE7getDataEv         # -- Begin function _ZN6TensorIfE7getDataEv
	.p2align	4, 0x90
	.type	_ZN6TensorIfE7getDataEv,@function
_ZN6TensorIfE7getDataEv:                # 
	.cfi_startproc
# %bb.0:
	movq	8(%rdi), %rax
	retq
.Lfunc_end33:
	.size	_ZN6TensorIfE7getDataEv, .Lfunc_end33-_ZN6TensorIfE7getDataEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE12getNElementsEv,"axG",@progbits,_ZN6TensorIfE12getNElementsEv,comdat
	.weak	_ZN6TensorIfE12getNElementsEv   # -- Begin function _ZN6TensorIfE12getNElementsEv
	.p2align	4, 0x90
	.type	_ZN6TensorIfE12getNElementsEv,@function
_ZN6TensorIfE12getNElementsEv:          # 
	.cfi_startproc
# %bb.0:
	leaq	16(%rdi), %rax
	retq
.Lfunc_end34:
	.size	_ZN6TensorIfE12getNElementsEv, .Lfunc_end34-_ZN6TensorIfE12getNElementsEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE12getNChannelsEv,"axG",@progbits,_ZN6TensorIfE12getNChannelsEv,comdat
	.weak	_ZN6TensorIfE12getNChannelsEv   # -- Begin function _ZN6TensorIfE12getNChannelsEv
	.p2align	4, 0x90
	.type	_ZN6TensorIfE12getNChannelsEv,@function
_ZN6TensorIfE12getNChannelsEv:          # 
	.cfi_startproc
# %bb.0:
	leaq	28(%rdi), %rax
	retq
.Lfunc_end35:
	.size	_ZN6TensorIfE12getNChannelsEv, .Lfunc_end35-_ZN6TensorIfE12getNChannelsEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE9getHeightEv,"axG",@progbits,_ZN6TensorIfE9getHeightEv,comdat
	.weak	_ZN6TensorIfE9getHeightEv       # -- Begin function _ZN6TensorIfE9getHeightEv
	.p2align	4, 0x90
	.type	_ZN6TensorIfE9getHeightEv,@function
_ZN6TensorIfE9getHeightEv:              # 
	.cfi_startproc
# %bb.0:
	leaq	20(%rdi), %rax
	retq
.Lfunc_end36:
	.size	_ZN6TensorIfE9getHeightEv, .Lfunc_end36-_ZN6TensorIfE9getHeightEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE8getWidthEv,"axG",@progbits,_ZN6TensorIfE8getWidthEv,comdat
	.weak	_ZN6TensorIfE8getWidthEv        # -- Begin function _ZN6TensorIfE8getWidthEv
	.p2align	4, 0x90
	.type	_ZN6TensorIfE8getWidthEv,@function
_ZN6TensorIfE8getWidthEv:               # 
	.cfi_startproc
# %bb.0:
	leaq	24(%rdi), %rax
	retq
.Lfunc_end37:
	.size	_ZN6TensorIfE8getWidthEv, .Lfunc_end37-_ZN6TensorIfE8getWidthEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE7getSizeEv,"axG",@progbits,_ZN6TensorIfE7getSizeEv,comdat
	.weak	_ZN6TensorIfE7getSizeEv         # -- Begin function _ZN6TensorIfE7getSizeEv
	.p2align	4, 0x90
	.type	_ZN6TensorIfE7getSizeEv,@function
_ZN6TensorIfE7getSizeEv:                # 
	.cfi_startproc
# %bb.0:
	leaq	32(%rdi), %rax
	retq
.Lfunc_end38:
	.size	_ZN6TensorIfE7getSizeEv, .Lfunc_end38-_ZN6TensorIfE7getSizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE8getShapeEv,"axG",@progbits,_ZN6TensorIfE8getShapeEv,comdat
	.weak	_ZN6TensorIfE8getShapeEv        # -- Begin function _ZN6TensorIfE8getShapeEv
	.p2align	4, 0x90
	.type	_ZN6TensorIfE8getShapeEv,@function
_ZN6TensorIfE8getShapeEv:               # 
	.cfi_startproc
# %bb.0:
	leaq	40(%rdi), %rax
	retq
.Lfunc_end39:
	.size	_ZN6TensorIfE8getShapeEv, .Lfunc_end39-_ZN6TensorIfE8getShapeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfE7getDataEv,"axG",@progbits,_ZNK6TensorIfE7getDataEv,comdat
	.weak	_ZNK6TensorIfE7getDataEv        # -- Begin function _ZNK6TensorIfE7getDataEv
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE7getDataEv,@function
_ZNK6TensorIfE7getDataEv:               # 
	.cfi_startproc
# %bb.0:
	movq	8(%rdi), %rax
	retq
.Lfunc_end40:
	.size	_ZNK6TensorIfE7getDataEv, .Lfunc_end40-_ZNK6TensorIfE7getDataEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfE12getNElementsEv,"axG",@progbits,_ZNK6TensorIfE12getNElementsEv,comdat
	.weak	_ZNK6TensorIfE12getNElementsEv  # -- Begin function _ZNK6TensorIfE12getNElementsEv
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE12getNElementsEv,@function
_ZNK6TensorIfE12getNElementsEv:         # 
	.cfi_startproc
# %bb.0:
	leaq	16(%rdi), %rax
	retq
.Lfunc_end41:
	.size	_ZNK6TensorIfE12getNElementsEv, .Lfunc_end41-_ZNK6TensorIfE12getNElementsEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfE12getNChannelsEv,"axG",@progbits,_ZNK6TensorIfE12getNChannelsEv,comdat
	.weak	_ZNK6TensorIfE12getNChannelsEv  # -- Begin function _ZNK6TensorIfE12getNChannelsEv
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE12getNChannelsEv,@function
_ZNK6TensorIfE12getNChannelsEv:         # 
	.cfi_startproc
# %bb.0:
	leaq	28(%rdi), %rax
	retq
.Lfunc_end42:
	.size	_ZNK6TensorIfE12getNChannelsEv, .Lfunc_end42-_ZNK6TensorIfE12getNChannelsEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfE9getHeightEv,"axG",@progbits,_ZNK6TensorIfE9getHeightEv,comdat
	.weak	_ZNK6TensorIfE9getHeightEv      # -- Begin function _ZNK6TensorIfE9getHeightEv
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE9getHeightEv,@function
_ZNK6TensorIfE9getHeightEv:             # 
	.cfi_startproc
# %bb.0:
	leaq	20(%rdi), %rax
	retq
.Lfunc_end43:
	.size	_ZNK6TensorIfE9getHeightEv, .Lfunc_end43-_ZNK6TensorIfE9getHeightEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfE8getWidthEv,"axG",@progbits,_ZNK6TensorIfE8getWidthEv,comdat
	.weak	_ZNK6TensorIfE8getWidthEv       # -- Begin function _ZNK6TensorIfE8getWidthEv
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE8getWidthEv,@function
_ZNK6TensorIfE8getWidthEv:              # 
	.cfi_startproc
# %bb.0:
	leaq	24(%rdi), %rax
	retq
.Lfunc_end44:
	.size	_ZNK6TensorIfE8getWidthEv, .Lfunc_end44-_ZNK6TensorIfE8getWidthEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfE7getSizeEv,"axG",@progbits,_ZNK6TensorIfE7getSizeEv,comdat
	.weak	_ZNK6TensorIfE7getSizeEv        # -- Begin function _ZNK6TensorIfE7getSizeEv
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE7getSizeEv,@function
_ZNK6TensorIfE7getSizeEv:               # 
	.cfi_startproc
# %bb.0:
	leaq	32(%rdi), %rax
	retq
.Lfunc_end45:
	.size	_ZNK6TensorIfE7getSizeEv, .Lfunc_end45-_ZNK6TensorIfE7getSizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfE8getShapeEv,"axG",@progbits,_ZNK6TensorIfE8getShapeEv,comdat
	.weak	_ZNK6TensorIfE8getShapeEv       # -- Begin function _ZNK6TensorIfE8getShapeEv
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE8getShapeEv,@function
_ZNK6TensorIfE8getShapeEv:              # 
	.cfi_startproc
# %bb.0:
	leaq	40(%rdi), %rax
	retq
.Lfunc_end46:
	.size	_ZNK6TensorIfE8getShapeEv, .Lfunc_end46-_ZNK6TensorIfE8getShapeEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _ZNK6TensorIfE8convolveERKS0_jjjPf
.LCPI47_0:
	.long	0x3f800000                      #  1
	.section	.text._ZNK6TensorIfE8convolveERKS0_jjjPf,"axG",@progbits,_ZNK6TensorIfE8convolveERKS0_jjjPf,comdat
	.weak	_ZNK6TensorIfE8convolveERKS0_jjjPf
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE8convolveERKS0_jjjPf,@function
_ZNK6TensorIfE8convolveERKS0_jjjPf:     # 
	.cfi_startproc
# %bb.0:
                                        # kill: def $ecx killed $ecx def $rcx
	movl	%edx, %r10d
	movl	16(%rdi), %eax
	movl	16(%rsi), %edx
	vcvtsi2ss	%rax, %xmm0, %xmm1
	vcvtsi2ss	%rdx, %xmm0, %xmm0
	vdivss	%xmm0, %xmm1, %xmm1
	vucomiss	.LCPI47_0(%rip), %xmm1
	jbe	.LBB47_1
# %bb.3:
	movl	%r10d, %edx
                                        # kill: def $ecx killed $ecx killed $rcx
	jmp	_ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf # TAILCALL
.LBB47_1:
	leal	(%rcx,%rcx), %eax
	addl	20(%rdi), %eax
	subl	20(%rsi), %eax
	xorl	%edx, %edx
	divl	%r10d
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	vcvtsi2ss	%rax, %xmm2, %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	movl	%r10d, %edx
                                        # kill: def $ecx killed $ecx killed $rcx
	vucomiss	.LCPI47_0(%rip), %xmm0
	jbe	.LBB47_2
# %bb.4:
	jmp	_ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf # TAILCALL
.LBB47_2:
	jmp	_ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf # TAILCALL
.Lfunc_end47:
	.size	_ZNK6TensorIfE8convolveERKS0_jjjPf, .Lfunc_end47-_ZNK6TensorIfE8convolveERKS0_jjjPf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _ZNK6TensorIfE8convolveERKS0_jjPf
.LCPI48_0:
	.long	0x3f800000                      #  1
	.section	.text._ZNK6TensorIfE8convolveERKS0_jjPf,"axG",@progbits,_ZNK6TensorIfE8convolveERKS0_jjPf,comdat
	.weak	_ZNK6TensorIfE8convolveERKS0_jjPf
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE8convolveERKS0_jjPf,@function
_ZNK6TensorIfE8convolveERKS0_jjPf:      # 
	.cfi_startproc
# %bb.0:
	movq	%r8, %r9
                                        # kill: def $ecx killed $ecx def $rcx
	movl	%edx, %r8d
	movl	16(%rdi), %eax
	movl	16(%rsi), %edx
	vcvtsi2ss	%rax, %xmm0, %xmm1
	vcvtsi2ss	%rdx, %xmm0, %xmm0
	vdivss	%xmm0, %xmm1, %xmm1
	vucomiss	.LCPI48_0(%rip), %xmm1
	jbe	.LBB48_1
# %bb.3:
	movl	%r8d, %edx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	$4, %r8d
	jmp	_ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf # TAILCALL
.LBB48_1:
	leal	(%rcx,%rcx), %eax
	addl	20(%rdi), %eax
	subl	20(%rsi), %eax
	xorl	%edx, %edx
	divl	%r8d
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	vcvtsi2ss	%rax, %xmm2, %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	movl	%r8d, %edx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	$4, %r8d
	vucomiss	.LCPI48_0(%rip), %xmm0
	jbe	.LBB48_2
# %bb.4:
	jmp	_ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf # TAILCALL
.LBB48_2:
	jmp	_ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf # TAILCALL
.Lfunc_end48:
	.size	_ZNK6TensorIfE8convolveERKS0_jjPf, .Lfunc_end48-_ZNK6TensorIfE8convolveERKS0_jjPf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfE7isValidEv,"axG",@progbits,_ZNK6TensorIfE7isValidEv,comdat
	.weak	_ZNK6TensorIfE7isValidEv        # -- Begin function _ZNK6TensorIfE7isValidEv
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE7isValidEv,@function
_ZNK6TensorIfE7isValidEv:               # 
	.cfi_startproc
# %bb.0:
	movb	64(%rdi), %al
	retq
.Lfunc_end49:
	.size	_ZNK6TensorIfE7isValidEv, .Lfunc_end49-_ZNK6TensorIfE7isValidEv
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # 
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end50:
	.size	__clang_call_terminate, .Lfunc_end50-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEED0Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEED0Ev,comdat
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEED0Ev # -- Begin function _ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEED0Ev
	.p2align	4, 0x90
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEED0Ev,@function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEED0Ev: # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZNSt6thread6_StateD2Ev
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv                          # TAILCALL
.Lfunc_end51:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEED0Ev, .Lfunc_end51-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEED0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEE6_M_runEv,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEE6_M_runEv,comdat
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEE6_M_runEv # -- Begin function _ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEE6_M_runEv
	.p2align	4, 0x90
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEE6_M_runEv,@function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEE6_M_runEv: # 
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	16(%rdi), %r9
	movq	24(%rdi), %rax
	movq	(%rax), %rsi
	movq	32(%rdi), %rdx
	movq	40(%rdi), %rax
	movl	(%rax), %ecx
	movq	48(%rdi), %rax
	movl	(%rax), %r8d
	movq	56(%rdi), %rax
	movl	(%rax), %r10d
	movq	64(%rdi), %rax
	movl	(%rax), %r11d
	movq	72(%rdi), %rax
	movl	(%rax), %r14d
	movl	8(%rdi), %r15d
	movl	12(%rdi), %eax
	addl	%r15d, %eax
	movq	80(%rdi), %rbx
	movl	(%rbx), %r12d
	movq	88(%rdi), %rbx
	movl	(%rbx), %r13d
	movq	96(%rdi), %rdi
	movl	(%rdi), %ebx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r9, %rdi
	xorl	%r9d, %r9d
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	_ZNK6TensorIfE14convolveThreadERS0_RKS0_jjjjjjjjjjjjjjjj
	addq	$112, %rsp
	.cfi_adjust_cfa_offset -112
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end52:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEE6_M_runEv, .Lfunc_end52-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEE6_M_runEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEED0Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEED0Ev,comdat
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEED0Ev # -- Begin function _ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEED0Ev
	.p2align	4, 0x90
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEED0Ev,@function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEED0Ev: # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZNSt6thread6_StateD2Ev
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv                          # TAILCALL
.Lfunc_end53:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEED0Ev, .Lfunc_end53-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEED0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEE6_M_runEv,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEE6_M_runEv,comdat
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEE6_M_runEv # -- Begin function _ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEE6_M_runEv
	.p2align	4, 0x90
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEE6_M_runEv,@function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEE6_M_runEv: # 
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	16(%rdi), %r9
	movq	24(%rdi), %rcx
	movq	(%rcx), %rsi
	movq	32(%rdi), %rdx
	movq	40(%rdi), %rcx
	movl	(%rcx), %ecx
	movq	48(%rdi), %rbx
	movl	(%rbx), %r8d
	movq	56(%rdi), %rbx
	movl	(%rbx), %r10d
	movl	8(%rdi), %r11d
	movl	12(%rdi), %ebx
	addl	%r11d, %ebx
	movq	64(%rdi), %rax
	movl	(%rax), %r14d
	movq	72(%rdi), %rax
	movl	(%rax), %r15d
	movq	80(%rdi), %rax
	movl	(%rax), %r12d
	movq	88(%rdi), %rax
	movl	(%rax), %r13d
	movq	96(%rdi), %rdi
	movl	(%rdi), %eax
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r9, %rdi
	xorl	%r9d, %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	_ZNK6TensorIfE14convolveThreadERS0_RKS0_jjjjjjjjjjjjjjjj
	addq	$112, %rsp
	.cfi_adjust_cfa_offset -112
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end54:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEE6_M_runEv, .Lfunc_end54-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEE6_M_runEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEED0Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEED0Ev,comdat
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEED0Ev # -- Begin function _ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEED0Ev
	.p2align	4, 0x90
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEED0Ev,@function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEED0Ev: # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZNSt6thread6_StateD2Ev
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv                          # TAILCALL
.Lfunc_end55:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEED0Ev, .Lfunc_end55-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEED0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEE6_M_runEv,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEE6_M_runEv,comdat
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEE6_M_runEv # -- Begin function _ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEE6_M_runEv
	.p2align	4, 0x90
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEE6_M_runEv,@function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEE6_M_runEv: # 
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	16(%rdi), %r10
	movq	24(%rdi), %rax
	movq	(%rax), %rsi
	movq	32(%rdi), %rdx
	movq	40(%rdi), %rax
	movl	(%rax), %ecx
	movq	48(%rdi), %rax
	movl	(%rax), %r8d
	movl	8(%rdi), %r9d
	movl	12(%rdi), %eax
	addl	%r9d, %eax
	movq	56(%rdi), %rbx
	movl	(%rbx), %r11d
	movq	64(%rdi), %rbx
	movl	(%rbx), %r14d
	movq	72(%rdi), %rbx
	movl	(%rbx), %r15d
	movq	80(%rdi), %rbx
	movl	(%rbx), %r12d
	movq	88(%rdi), %rbx
	movl	(%rbx), %r13d
	movq	96(%rdi), %rdi
	movl	(%rdi), %ebx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r10, %rdi
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_ZNK6TensorIfE14convolveThreadERS0_RKS0_jjjjjjjjjjjjjjjj
	addq	$112, %rsp
	.cfi_adjust_cfa_offset -112
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end56:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEE6_M_runEv, .Lfunc_end56-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEE6_M_runEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_Tensor.cpp
	.type	_GLOBAL__sub_I_Tensor.cpp,@function
_GLOBAL__sub_I_Tensor.cpp:              # 
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit                    # TAILCALL
.Lfunc_end57:
	.size	_GLOBAL__sub_I_Tensor.cpp, .Lfunc_end57-_GLOBAL__sub_I_Tensor.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # 
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"this->size != 0"
	.size	.L.str, 16

	.type	.L.str.1,@object                # 
.L.str.1:
	.asciz	"src/Tensor.cpp"
	.size	.L.str.1, 15

	.type	.L__PRETTY_FUNCTION__._ZN6TensorIfE9init_dataERKN6tensor4initE,@object # 
.L__PRETTY_FUNCTION__._ZN6TensorIfE9init_dataERKN6tensor4initE:
	.asciz	"void Tensor<float>::init_data(const tensor::init &) [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZN6TensorIfE9init_dataERKN6tensor4initE, 64

	.type	.L.str.2,@object                # 
.L.str.2:
	.asciz	"default"
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # 
.L.str.3:
	.asciz	"TENSOR\n"
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # 
.L.str.4:
	.asciz	"this->nChannels == kernel.nChannels"
	.size	.L.str.4, 36

	.type	.L__PRETTY_FUNCTION__._ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf,@object # 
.L__PRETTY_FUNCTION__._ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf:
	.asciz	"Tensor<T> &Tensor<float>::convolveParallelHo(const Tensor<T> &, const uint32_t, const uint32_t, const uint32_t, float *) const [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZNK6TensorIfE18convolveParallelHoERKS0_jjjPf, 139

	.type	.L__PRETTY_FUNCTION__._ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf,@object # 
.L__PRETTY_FUNCTION__._ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf:
	.asciz	"Tensor<T> &Tensor<float>::convolveParallelCo(const Tensor<T> &, const uint32_t, const uint32_t, const uint32_t, float *) const [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZNK6TensorIfE18convolveParallelCoERKS0_jjjPf, 139

	.type	.L__PRETTY_FUNCTION__._ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf,@object # 
.L__PRETTY_FUNCTION__._ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf:
	.asciz	"Tensor<T> &Tensor<float>::convolveParallelEo(const Tensor<T> &, const uint32_t, const uint32_t, const uint32_t, float *) const [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZNK6TensorIfE18convolveParallelEoERKS0_jjjPf, 139

	.type	.L.str.5,@object                # 
.L.str.5:
	.asciz	"this->nChannels == kernel->nChannels"
	.size	.L.str.5, 37

	.type	.L__PRETTY_FUNCTION__._ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf,@object # 
.L__PRETTY_FUNCTION__._ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf:
	.asciz	"Tensor<T> &Tensor<float>::convolveNaive(const Kernel<T> *, const uint32_t, const uint32_t, const uint32_t, float *) const [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZNK6TensorIfE13convolveNaiveEPK6KernelIfEjjjPf, 134

	.type	.L.str.6,@object                # 
.L.str.6:
	.asciz	"Please insert a valid order for naive convolution\n"
	.size	.L.str.6, 51

	.type	.L__PRETTY_FUNCTION__._ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf,@object # 
.L__PRETTY_FUNCTION__._ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf:
	.asciz	"Tensor<T> &Tensor<float>::convolveNaiveOptimised(const Kernel<T> *, const uint32_t, const uint32_t, const uint32_t, float *) const [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZNK6TensorIfE22convolveNaiveOptimisedEPK6KernelIfEjjjPf, 143

	.type	.L__PRETTY_FUNCTION__._ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf,@object # 
.L__PRETTY_FUNCTION__._ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf:
	.asciz	"Tensor<T> &Tensor<float>::convolveMemoryBlocking(const Kernel<T> *, const uint32_t, const uint32_t, const int32_t, const int32_t, const int32_t, const uint32_t, float *) const [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZNK6TensorIfE22convolveMemoryBlockingEPK6KernelIfEjjiiijPf, 188

	.type	.L.str.7,@object                # 
.L.str.7:
	.asciz	"Wi_idx: "
	.size	.L.str.7, 9

	.type	.L.str.8,@object                # 
.L.str.8:
	.asciz	"Please insert a valid order for memory blocking convolution"
	.size	.L.str.8, 60

	.type	.L.str.9,@object                # 
.L.str.9:
	.asciz	"Order number: "
	.size	.L.str.9, 15

	.type	.L.str.10,@object               # 
.L.str.10:
	.asciz	" is not valid\n"
	.size	.L.str.10, 15

	.type	_ZTV6TensorIfE,@object          # 
	.section	.rodata._ZTV6TensorIfE,"aG",@progbits,_ZTV6TensorIfE,comdat
	.weak	_ZTV6TensorIfE
	.p2align	3
_ZTV6TensorIfE:
	.quad	0
	.quad	_ZTI6TensorIfE
	.quad	_ZNK6TensorIfE3_atEjjjj
	.quad	_ZN6TensorIfE3_atEjjjj
	.quad	_ZN6TensorIfED2Ev
	.quad	_ZN6TensorIfED0Ev
	.quad	_ZNK6TensorIfE2atEjjjj
	.quad	_ZN6TensorIfE2atEjjjj
	.size	_ZTV6TensorIfE, 64

	.type	.L.str.11,@object               # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"C_idx >= 0 && C_idx < this->nChannels"
	.size	.L.str.11, 38

	.type	.L__PRETTY_FUNCTION__._ZNK6TensorIfE2atERKjjS2_,@object # 
.L__PRETTY_FUNCTION__._ZNK6TensorIfE2atERKjjS2_:
	.asciz	"const T &Tensor<float>::at(const uint32_t &, const uint32_t, const uint32_t &) const [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZNK6TensorIfE2atERKjjS2_, 97

	.type	.L.str.12,@object               # 
.L.str.12:
	.asciz	"H_idx >= 0 && H_idx < this->height"
	.size	.L.str.12, 35

	.type	.L.str.13,@object               # 
.L.str.13:
	.asciz	"W_idx >= 0 && W_idx < this->width"
	.size	.L.str.13, 34

	.type	.L__PRETTY_FUNCTION__._ZN6TensorIfE2atERKjjS2_,@object # 
.L__PRETTY_FUNCTION__._ZN6TensorIfE2atERKjjS2_:
	.asciz	"T &Tensor<float>::at(const uint32_t &, const uint32_t, const uint32_t &) [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZN6TensorIfE2atERKjjS2_, 85

	.type	.L.str.14,@object               # 
.L.str.14:
	.asciz	"E_idx >= 0 && E_idx < this->nElements"
	.size	.L.str.14, 38

	.type	.L__PRETTY_FUNCTION__._ZNK6TensorIfE2atEjjjj,@object # 
.L__PRETTY_FUNCTION__._ZNK6TensorIfE2atEjjjj:
	.asciz	"virtual const T &Tensor<float>::at(const uint32_t, const uint32_t, const uint32_t, const uint32_t) const [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZNK6TensorIfE2atEjjjj, 117

	.type	.L__PRETTY_FUNCTION__._ZN6TensorIfE2atEjjjj,@object # 
.L__PRETTY_FUNCTION__._ZN6TensorIfE2atEjjjj:
	.asciz	"virtual T &Tensor<float>::at(const uint32_t, const uint32_t, const uint32_t, const uint32_t) [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZN6TensorIfE2atEjjjj, 105

	.type	_ZTS6TensorIfE,@object          # 
	.section	.rodata._ZTS6TensorIfE,"aG",@progbits,_ZTS6TensorIfE,comdat
	.weak	_ZTS6TensorIfE
_ZTS6TensorIfE:
	.asciz	"6TensorIfE"
	.size	_ZTS6TensorIfE, 11

	.type	_ZTI6TensorIfE,@object          # 
	.section	.rodata._ZTI6TensorIfE,"aG",@progbits,_ZTI6TensorIfE,comdat
	.weak	_ZTI6TensorIfE
	.p2align	3
_ZTI6TensorIfE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS6TensorIfE
	.size	_ZTI6TensorIfE, 16

	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE,@object # 
	.section	.rodata._ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE,"aG",@progbits,_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE,comdat
	.weak	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE
	.p2align	3
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE
	.quad	_ZNSt6thread6_StateD2Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEE6_M_runEv
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE, 40

	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE,@object # 
	.section	.rodata._ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE,"aG",@progbits,_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE,comdat
	.weak	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE:
	.asciz	"NSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE"
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE, 104

	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE,@object # 
	.section	.rodata._ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE,"aG",@progbits,_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE,comdat
	.weak	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE
	.p2align	3
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE
	.quad	_ZTINSt6thread6_StateE
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelHoERKS4_jjjPfEUlvE_EEEEEE, 24

	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE,@object # 
	.section	.rodata._ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE,"aG",@progbits,_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE,comdat
	.weak	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE
	.p2align	3
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE
	.quad	_ZNSt6thread6_StateD2Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEE6_M_runEv
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE, 40

	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE,@object # 
	.section	.rodata._ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE,"aG",@progbits,_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE,comdat
	.weak	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE:
	.asciz	"NSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE"
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE, 104

	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE,@object # 
	.section	.rodata._ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE,"aG",@progbits,_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE,comdat
	.weak	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE
	.p2align	3
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE
	.quad	_ZTINSt6thread6_StateE
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelCoERKS4_jjjPfEUlvE_EEEEEE, 24

	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE,@object # 
	.section	.rodata._ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE,"aG",@progbits,_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE,comdat
	.weak	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE
	.p2align	3
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE
	.quad	_ZNSt6thread6_StateD2Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEE6_M_runEv
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE, 40

	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE,@object # 
	.section	.rodata._ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE,"aG",@progbits,_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE,comdat
	.weak	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE:
	.asciz	"NSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE"
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE, 104

	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE,@object # 
	.section	.rodata._ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE,"aG",@progbits,_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE,comdat
	.weak	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE
	.p2align	3
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE
	.quad	_ZTINSt6thread6_StateE
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK6TensorIfE18convolveParallelEoERKS4_jjjPfEUlvE_EEEEEE, 24

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_Tensor.cpp
	.weak	_ZN6TensorIfEC1Ev
	.type	_ZN6TensorIfEC1Ev,@function
.set _ZN6TensorIfEC1Ev, _ZN6TensorIfEC2Ev
	.weak	_ZN6TensorIfEC1ERKjS2_S2_RKN6tensor4initE
	.type	_ZN6TensorIfEC1ERKjS2_S2_RKN6tensor4initE,@function
.set _ZN6TensorIfEC1ERKjS2_S2_RKN6tensor4initE, _ZN6TensorIfEC2ERKjS2_S2_RKN6tensor4initE
	.weak	_ZN6TensorIfEC1ERKjS2_S2_S2_RKN6tensor4initE
	.type	_ZN6TensorIfEC1ERKjS2_S2_S2_RKN6tensor4initE,@function
.set _ZN6TensorIfEC1ERKjS2_S2_S2_RKN6tensor4initE, _ZN6TensorIfEC2ERKjS2_S2_S2_RKN6tensor4initE
	.weak	_ZN6TensorIfEC1ERKS0_
	.type	_ZN6TensorIfEC1ERKS0_,@function
.set _ZN6TensorIfEC1ERKS0_, _ZN6TensorIfEC2ERKS0_
	.weak	_ZN6TensorIfEC1EOS0_
	.type	_ZN6TensorIfEC1EOS0_,@function
.set _ZN6TensorIfEC1EOS0_, _ZN6TensorIfEC2EOS0_
	.weak	_ZN6TensorIfED1Ev
	.type	_ZN6TensorIfED1Ev,@function
.set _ZN6TensorIfED1Ev, _ZN6TensorIfED2Ev
	.ident	"Intel(R) oneAPI DPC++ Compiler 2021.2.0 (2021.2.0.20210317)"
	.section	".note.GNU-stack","",@progbits
