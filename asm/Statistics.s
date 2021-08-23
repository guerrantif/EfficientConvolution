	.text
	.file	"Statistics.cpp"
	.globl	_ZN10Statistics15addToCollectionEd # -- Begin function _ZN10Statistics15addToCollectionEd
	.p2align	4, 0x90
	.type	_ZN10Statistics15addToCollectionEd,@function
_ZN10Statistics15addToCollectionEd:     # 
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	leaq	8(%rdi), %rax
	movq	8(%rdi), %rbx
	cmpq	16(%rdi), %rbx
	je	.LBB0_2
# %bb.1:
	vmovsd	%xmm0, (%rbx)
	addq	$8, %rbx
	jmp	.LBB0_12
.LBB0_2:
	movq	%rdi, %r14
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	(%rdi), %rdx
	movq	%rbx, %r13
	subq	%rdx, %r13
	movq	%r13, %rbp
	sarq	$3, %rbp
	testq	%r13, %r13
	movl	$1, %eax
	cmovneq	%rbp, %rax
	leaq	(%rax,%rbp), %r15
	movq	%r15, %rcx
	shrq	$61, %rcx
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmovneq	%rcx, %r15
	addq	%rbp, %rax
	cmovbq	%rcx, %r15
	testq	%r15, %r15
	je	.LBB0_3
# %bb.4:
	leaq	(,%r15,8), %rdi
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	callq	_Znwm
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %r12
	movq	(%r14), %rax
	movq	%rbx, %r13
	movq	%rax, (%rsp)                    # 8-byte Spill
	subq	%rax, %r13
	vmovsd	%xmm0, (%r12,%rbp,8)
	testq	%r13, %r13
	je	.LBB0_7
.LBB0_6:
	movq	%r12, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%r13, %rdx
	callq	memmove@PLT
.LBB0_7:
	addq	%r12, %r13
	addq	$8, %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rbp
	subq	%rbx, %rbp
	je	.LBB0_9
# %bb.8:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
.LBB0_9:
	movq	(%rsp), %rdi                    # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_11
# %bb.10:
	callq	_ZdlPv
.LBB0_11:
	leaq	16(%r14), %rax
	addq	%rbp, %r13
	movq	%r12, (%r14)
	movq	%r13, 8(%r14)
	leaq	(%r12,%r15,8), %rbx
.LBB0_12:
	movq	%rbx, (%rax)
	addq	$24, %rsp
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
.LBB0_3:
	.cfi_def_cfa_offset 80
	movq	%rdx, (%rsp)                    # 8-byte Spill
	xorl	%r12d, %r12d
	vmovsd	%xmm0, (%r12,%rbp,8)
	testq	%r13, %r13
	jne	.LBB0_6
	jmp	.LBB0_7
.Lfunc_end0:
	.size	_ZN10Statistics15addToCollectionEd, .Lfunc_end0-_ZN10Statistics15addToCollectionEd
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _ZN10Statistics9getMedianEv
.LCPI1_0:
	.quad	0x3fe0000000000000              #  0.5
	.text
	.globl	_ZN10Statistics9getMedianEv
	.p2align	4, 0x90
	.type	_ZN10Statistics9getMedianEv,@function
_ZN10Statistics9getMedianEv:            # 
	.cfi_startproc
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
	movq	%rdi, %r14
	movq	(%rdi), %r12
	movq	8(%rdi), %r15
	cmpq	%r15, %r12
	je	.LBB1_25
# %bb.1:
	movq	%r15, %rbx
	subq	%r12, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	lzcntq	%rax, %rdx
	addq	%rdx, %rdx
	xorq	$126, %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
	leaq	8(%r12), %rax
	cmpq	$129, %rbx
	jl	.LBB1_16
# %bb.2:
	vmovsd	8(%r12), %xmm0                  # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_4
# %bb.3:
	movq	(%r12), %rcx
	movq	%rcx, 8(%r12)
	movq	%r12, %rcx
	jmp	.LBB1_7
.LBB1_16:
	cmpq	%r15, %rax
	je	.LBB1_25
# %bb.17:
	movq	%r12, %rbx
	jmp	.LBB1_18
	.p2align	4, 0x90
.LBB1_24:                               #   in Loop: Header=BB1_18 Depth=1
	vmovsd	%xmm1, (%rax)
	leaq	8(%rbx), %rax
	cmpq	%r15, %rax
	je	.LBB1_25
.LBB1_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_23 Depth 2
	movq	%rbx, %rdi
	movq	%rax, %rbx
	vmovsd	8(%rdi), %xmm1                  # xmm1 = mem[0],zero
	vucomisd	(%r12), %xmm1
	jae	.LBB1_21
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=1
	movq	%rbx, %rdx
	movq	%r12, %rax
	subq	%r12, %rdx
	je	.LBB1_24
# %bb.20:                               #   in Loop: Header=BB1_18 Depth=1
	subq	%rdx, %rdi
	addq	$16, %rdi
	movq	%r12, %rsi
	vmovsd	%xmm1, (%rsp)                   # 8-byte Spill
	callq	memmove@PLT
	vmovsd	(%rsp), %xmm1                   # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%r12, %rax
	jmp	.LBB1_24
	.p2align	4, 0x90
.LBB1_21:                               #   in Loop: Header=BB1_18 Depth=1
	vmovsd	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	movq	%rbx, %rax
	jae	.LBB1_24
# %bb.22:                               #   in Loop: Header=BB1_18 Depth=1
	movq	%rbx, %rax
	.p2align	4, 0x90
.LBB1_23:                               #   Parent Loop BB1_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	%xmm0, (%rax)
	vmovsd	-16(%rax), %xmm0                # xmm0 = mem[0],zero
	addq	$-8, %rax
	vucomisd	%xmm0, %xmm1
	jb	.LBB1_23
	jmp	.LBB1_24
.LBB1_4:
	vmovsd	(%r12), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rax, %rcx
	jae	.LBB1_7
# %bb.5:
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rcx)
	vmovsd	-16(%rcx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rcx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_6
.LBB1_7:
	vmovsd	%xmm0, (%rcx)
	leaq	16(%r12), %rdx
	vmovsd	16(%r12), %xmm0                 # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_8
# %bb.28:
	vmovupd	(%r12), %xmm1
	vmovupd	%xmm1, (%rax)
	movq	%r12, %rcx
	jmp	.LBB1_29
.LBB1_8:
	vmovsd	(%rax), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rdx, %rcx
	jae	.LBB1_29
# %bb.9:
	movq	%rdx, %rcx
	.p2align	4, 0x90
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rcx)
	vmovsd	-16(%rcx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rcx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_10
.LBB1_29:
	vmovsd	%xmm0, (%rcx)
	leaq	24(%r12), %rcx
	vmovsd	24(%r12), %xmm0                 # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_30
# %bb.33:
	vmovupd	(%r12), %xmm1
	movq	16(%r12), %rdx
	movq	%rdx, 16(%rax)
	vmovupd	%xmm1, (%rax)
	movq	%r12, %rdx
	jmp	.LBB1_34
.LBB1_30:
	vmovsd	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rcx, %rdx
	jae	.LBB1_34
# %bb.31:
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB1_32:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rdx)
	vmovsd	-16(%rdx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rdx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_32
.LBB1_34:
	vmovsd	%xmm0, (%rdx)
	leaq	32(%r12), %rdx
	vmovsd	32(%r12), %xmm0                 # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_35
# %bb.38:
	vmovupd	(%r12), %ymm1
	vmovupd	%ymm1, (%rax)
	movq	%r12, %rcx
	jmp	.LBB1_39
.LBB1_35:
	vmovsd	(%rcx), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rdx, %rcx
	jae	.LBB1_39
# %bb.36:
	movq	%rdx, %rcx
	.p2align	4, 0x90
.LBB1_37:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rcx)
	vmovsd	-16(%rcx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rcx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_37
.LBB1_39:
	vmovsd	%xmm0, (%rcx)
	leaq	40(%r12), %rcx
	vmovsd	40(%r12), %xmm0                 # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_40
# %bb.43:
	vmovupd	(%r12), %ymm1
	movq	32(%r12), %rdx
	movq	%rdx, 32(%rax)
	vmovupd	%ymm1, (%rax)
	movq	%r12, %rdx
	jmp	.LBB1_44
.LBB1_40:
	vmovsd	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rcx, %rdx
	jae	.LBB1_44
# %bb.41:
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB1_42:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rdx)
	vmovsd	-16(%rdx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rdx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_42
.LBB1_44:
	vmovsd	%xmm0, (%rdx)
	leaq	48(%r12), %rdx
	vmovsd	48(%r12), %xmm0                 # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_45
# %bb.48:
	vmovupd	(%r12), %ymm1
	vmovups	32(%r12), %xmm2
	vmovups	%xmm2, 32(%rax)
	vmovupd	%ymm1, (%rax)
	movq	%r12, %rcx
	jmp	.LBB1_49
.LBB1_45:
	vmovsd	(%rcx), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rdx, %rcx
	jae	.LBB1_49
# %bb.46:
	movq	%rdx, %rcx
	.p2align	4, 0x90
.LBB1_47:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rcx)
	vmovsd	-16(%rcx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rcx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_47
.LBB1_49:
	vmovsd	%xmm0, (%rcx)
	leaq	56(%r12), %rcx
	vmovsd	56(%r12), %xmm0                 # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_50
# %bb.53:
	vmovupd	(%r12), %ymm1
	movq	48(%r12), %rdx
	vmovups	32(%r12), %xmm2
	vmovups	%xmm2, 32(%rax)
	movq	%rdx, 48(%rax)
	vmovupd	%ymm1, (%rax)
	movq	%r12, %rdx
	jmp	.LBB1_54
.LBB1_50:
	vmovsd	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rcx, %rdx
	jae	.LBB1_54
# %bb.51:
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB1_52:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rdx)
	vmovsd	-16(%rdx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rdx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_52
.LBB1_54:
	vmovsd	%xmm0, (%rdx)
	leaq	64(%r12), %rdx
	vmovsd	64(%r12), %xmm0                 # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_55
# %bb.58:
	vmovupd	(%r12), %ymm1
	vmovups	32(%r12), %ymm2
	vmovups	%ymm2, 32(%rax)
	vmovupd	%ymm1, (%rax)
	movq	%r12, %rcx
	jmp	.LBB1_59
.LBB1_55:
	vmovsd	(%rcx), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rdx, %rcx
	jae	.LBB1_59
# %bb.56:
	movq	%rdx, %rcx
	.p2align	4, 0x90
.LBB1_57:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rcx)
	vmovsd	-16(%rcx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rcx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_57
.LBB1_59:
	vmovsd	%xmm0, (%rcx)
	leaq	72(%r12), %rcx
	vmovsd	72(%r12), %xmm0                 # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_60
# %bb.63:
	vmovupd	(%r12), %ymm1
	vmovups	32(%r12), %ymm2
	movq	64(%r12), %rdx
	movq	%rdx, 64(%rax)
	vmovups	%ymm2, 32(%rax)
	vmovupd	%ymm1, (%rax)
	movq	%r12, %rdx
	jmp	.LBB1_64
.LBB1_60:
	vmovsd	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rcx, %rdx
	jae	.LBB1_64
# %bb.61:
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB1_62:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rdx)
	vmovsd	-16(%rdx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rdx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_62
.LBB1_64:
	vmovsd	%xmm0, (%rdx)
	leaq	80(%r12), %rdx
	vmovsd	80(%r12), %xmm0                 # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_65
# %bb.68:
	vmovupd	64(%r12), %xmm1
	vmovups	(%r12), %ymm2
	vmovups	32(%r12), %ymm3
	vmovups	%ymm3, 32(%rax)
	vmovupd	%xmm1, 64(%rax)
	vmovups	%ymm2, (%rax)
	movq	%r12, %rcx
	jmp	.LBB1_69
.LBB1_65:
	vmovsd	(%rcx), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rdx, %rcx
	jae	.LBB1_69
# %bb.66:
	movq	%rdx, %rcx
	.p2align	4, 0x90
.LBB1_67:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rcx)
	vmovsd	-16(%rcx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rcx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_67
.LBB1_69:
	vmovsd	%xmm0, (%rcx)
	leaq	88(%r12), %rcx
	vmovsd	88(%r12), %xmm0                 # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_70
# %bb.73:
	movq	80(%r12), %rdx
	vmovupd	64(%r12), %xmm1
	vmovups	(%r12), %ymm2
	vmovups	32(%r12), %ymm3
	vmovups	%ymm3, 32(%rax)
	vmovupd	%xmm1, 64(%rax)
	movq	%rdx, 80(%rax)
	vmovups	%ymm2, (%rax)
	movq	%r12, %rdx
	jmp	.LBB1_74
.LBB1_70:
	vmovsd	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rcx, %rdx
	jae	.LBB1_74
# %bb.71:
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB1_72:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rdx)
	vmovsd	-16(%rdx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rdx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_72
.LBB1_74:
	vmovsd	%xmm0, (%rdx)
	leaq	96(%r12), %rdx
	vmovsd	96(%r12), %xmm0                 # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_75
# %bb.78:
	vmovupd	(%r12), %ymm1
	vmovups	32(%r12), %ymm2
	vmovups	64(%r12), %ymm3
	vmovups	%ymm3, 64(%rax)
	vmovups	%ymm2, 32(%rax)
	vmovupd	%ymm1, (%rax)
	movq	%r12, %rcx
	jmp	.LBB1_79
.LBB1_75:
	vmovsd	(%rcx), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rdx, %rcx
	jae	.LBB1_79
# %bb.76:
	movq	%rdx, %rcx
	.p2align	4, 0x90
.LBB1_77:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rcx)
	vmovsd	-16(%rcx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rcx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_77
.LBB1_79:
	vmovsd	%xmm0, (%rcx)
	leaq	104(%r12), %rcx
	vmovsd	104(%r12), %xmm0                # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_80
# %bb.83:
	vmovupd	(%r12), %ymm1
	vmovups	32(%r12), %ymm2
	vmovups	64(%r12), %ymm3
	movq	96(%r12), %rdx
	movq	%rdx, 96(%rax)
	vmovups	%ymm3, 64(%rax)
	vmovups	%ymm2, 32(%rax)
	vmovupd	%ymm1, (%rax)
	movq	%r12, %rdx
	jmp	.LBB1_84
.LBB1_80:
	vmovsd	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rcx, %rdx
	jae	.LBB1_84
# %bb.81:
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB1_82:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rdx)
	vmovsd	-16(%rdx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rdx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_82
.LBB1_84:
	vmovsd	%xmm0, (%rdx)
	leaq	112(%r12), %rdx
	vmovsd	112(%r12), %xmm0                # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_85
# %bb.88:
	vmovupd	96(%r12), %xmm1
	vmovups	(%r12), %ymm2
	vmovups	32(%r12), %ymm3
	vmovups	64(%r12), %ymm4
	vmovups	%ymm3, 32(%rax)
	vmovups	%ymm4, 64(%rax)
	vmovupd	%xmm1, 96(%rax)
	vmovups	%ymm2, (%rax)
	movq	%r12, %rcx
	jmp	.LBB1_89
.LBB1_85:
	vmovsd	(%rcx), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%rdx, %rcx
	jae	.LBB1_89
# %bb.86:
	movq	%rdx, %rcx
	.p2align	4, 0x90
.LBB1_87:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rcx)
	vmovsd	-16(%rcx), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rcx
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_87
.LBB1_89:
	vmovsd	%xmm0, (%rcx)
	vmovsd	120(%r12), %xmm0                # xmm0 = mem[0],zero
	vucomisd	(%r12), %xmm0
	jae	.LBB1_90
# %bb.93:
	movq	112(%r12), %rcx
	vmovupd	96(%r12), %xmm1
	vmovups	(%r12), %ymm2
	vmovups	32(%r12), %ymm3
	vmovups	64(%r12), %ymm4
	vmovups	%ymm3, 32(%rax)
	vmovups	%ymm4, 64(%rax)
	vmovupd	%xmm1, 96(%rax)
	movq	%rcx, 112(%rax)
	vmovups	%ymm2, (%rax)
	movq	%r12, %rax
.LBB1_94:
	vmovsd	%xmm0, (%rax)
	subq	$-128, %r12
	jmp	.LBB1_15
	.p2align	4, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_15 Depth=1
	vmovsd	%xmm0, (%rax)
	addq	$8, %r12
.LBB1_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
	cmpq	%r15, %r12
	je	.LBB1_25
# %bb.11:                               #   in Loop: Header=BB1_15 Depth=1
	vmovsd	-8(%r12), %xmm1                 # xmm1 = mem[0],zero
	vmovsd	(%r12), %xmm0                   # xmm0 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	movq	%r12, %rax
	jae	.LBB1_14
# %bb.12:                               #   in Loop: Header=BB1_15 Depth=1
	movq	%r12, %rax
	.p2align	4, 0x90
.LBB1_13:                               #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	%xmm1, (%rax)
	vmovsd	-16(%rax), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rax
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_13
	jmp	.LBB1_14
.LBB1_25:
	movq	(%r14), %rax
	movq	8(%r14), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rcx
	sarq	$3, %rcx
	shrq	%rcx
	vmovsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	testb	$8, %dl
	jne	.LBB1_27
# %bb.26:
	vaddsd	-8(%rax,%rcx,8), %xmm0, %xmm0
	vmulsd	.LCPI1_0(%rip), %xmm0, %xmm0
.LBB1_27:
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
.LBB1_90:
	.cfi_def_cfa_offset 48
	leaq	120(%r12), %rax
	vmovsd	(%rdx), %xmm1                   # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	jae	.LBB1_94
	.p2align	4, 0x90
.LBB1_92:                               # =>This Inner Loop Header: Depth=1
	vmovsd	%xmm1, (%rax)
	vmovsd	-16(%rax), %xmm1                # xmm1 = mem[0],zero
	addq	$-8, %rax
	vucomisd	%xmm1, %xmm0
	jb	.LBB1_92
	jmp	.LBB1_94
.Lfunc_end1:
	.size	_ZN10Statistics9getMedianEv, .Lfunc_end1-_ZN10Statistics9getMedianEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function _ZN10Statistics7getMeanEv
.LCPI2_0:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI2_1:
	.quad	0x4330000000000000              #  4503599627370496
	.quad	0x4530000000000000              #  1.9342813113834067E+25
	.text
	.globl	_ZN10Statistics7getMeanEv
	.p2align	4, 0x90
	.type	_ZN10Statistics7getMeanEv,@function
_ZN10Statistics7getMeanEv:              # 
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	cmpq	%rax, %rcx
	je	.LBB2_1
# %bb.2:
	movq	%rax, %r9
	subq	%rcx, %r9
	addq	$-8, %r9
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rcx, %rdx
	cmpq	$119, %r9
	jbe	.LBB2_12
# %bb.3:
	shrq	$3, %r9
	incq	%r9
	movq	%r9, %r8
	andq	$-16, %r8
	leaq	-16(%r8), %rsi
	movq	%rsi, %rdi
	shrq	$4, %rdi
	incq	%rdi
	movl	%edi, %edx
	andl	$3, %edx
	cmpq	$48, %rsi
	jae	.LBB2_5
# %bb.4:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm3, %xmm3, %xmm3
	jmp	.LBB2_7
.LBB2_1:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB2_13
.LBB2_5:
	andq	$-4, %rdi
	negq	%rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	vmovupd	128(%rcx,%rsi,8), %ymm4
	vmovupd	160(%rcx,%rsi,8), %ymm5
	vmovupd	192(%rcx,%rsi,8), %ymm6
	vmovupd	224(%rcx,%rsi,8), %ymm7
	vaddpd	(%rcx,%rsi,8), %ymm0, %ymm0
	vaddpd	256(%rcx,%rsi,8), %ymm4, %ymm4
	vaddpd	384(%rcx,%rsi,8), %ymm0, %ymm0
	vaddpd	32(%rcx,%rsi,8), %ymm1, %ymm1
	vaddpd	288(%rcx,%rsi,8), %ymm5, %ymm5
	vaddpd	416(%rcx,%rsi,8), %ymm1, %ymm1
	vaddpd	%ymm4, %ymm0, %ymm0
	vaddpd	%ymm5, %ymm1, %ymm1
	vaddpd	64(%rcx,%rsi,8), %ymm2, %ymm2
	vaddpd	320(%rcx,%rsi,8), %ymm6, %ymm4
	vaddpd	448(%rcx,%rsi,8), %ymm2, %ymm2
	vaddpd	96(%rcx,%rsi,8), %ymm3, %ymm3
	vaddpd	352(%rcx,%rsi,8), %ymm7, %ymm5
	vaddpd	%ymm4, %ymm2, %ymm2
	vaddpd	480(%rcx,%rsi,8), %ymm3, %ymm3
	vaddpd	%ymm5, %ymm3, %ymm3
	addq	$64, %rsi
	addq	$4, %rdi
	jne	.LBB2_6
.LBB2_7:
	testq	%rdx, %rdx
	je	.LBB2_10
# %bb.8:
	leaq	(%rcx,%rsi,8), %rsi
	addq	$96, %rsi
	shlq	$7, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	vaddpd	-96(%rsi,%rdi), %ymm0, %ymm0
	vaddpd	-64(%rsi,%rdi), %ymm1, %ymm1
	vaddpd	-32(%rsi,%rdi), %ymm2, %ymm2
	vaddpd	(%rsi,%rdi), %ymm3, %ymm3
	subq	$-128, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB2_9
.LBB2_10:
	vaddpd	%ymm3, %ymm1, %ymm1
	vaddpd	%ymm2, %ymm0, %ymm0
	vaddpd	%ymm1, %ymm0, %ymm0
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%r8, %r9
	je	.LBB2_13
# %bb.11:
	leaq	(%rcx,%r8,8), %rdx
	.p2align	4, 0x90
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	vaddsd	(%rdx), %xmm0, %xmm0
	addq	$8, %rdx
	cmpq	%rdx, %rax
	jne	.LBB2_12
.LBB2_13:
	subq	%rcx, %rax
	sarq	$3, %rax
	vmovq	%rax, %xmm1
	vpunpckldq	.LCPI2_0(%rip), %xmm1, %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	vsubpd	.LCPI2_1(%rip), %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0]
	vaddsd	%xmm1, %xmm2, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vzeroupper
	retq
.Lfunc_end2:
	.size	_ZN10Statistics7getMeanEv, .Lfunc_end2-_ZN10Statistics7getMeanEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10Statistics6getMinEv        # -- Begin function _ZN10Statistics6getMinEv
	.p2align	4, 0x90
	.type	_ZN10Statistics6getMinEv,@function
_ZN10Statistics6getMinEv:               # 
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	cmpq	%rcx, %rax
	je	.LBB3_11
# %bb.1:
	movq	%rcx, %rdx
	subq	%rax, %rdx
	addq	$-8, %rdx
	cmpq	$119, %rdx
	jbe	.LBB3_10
# %bb.2:
	shrq	$3, %rdx
	incq	%rdx
	movq	%rdx, %r8
	andq	$-16, %r8
	vbroadcastsd	%xmm0, %ymm0
	leaq	-16(%r8), %rsi
	movq	%rsi, %r9
	shrq	$4, %r9
	incq	%r9
	testq	%rsi, %rsi
	je	.LBB3_3
# %bb.4:
	movq	%r9, %rdi
	andq	$-2, %rdi
	negq	%rdi
	xorl	%esi, %esi
	vmovapd	%ymm0, %ymm1
	vmovapd	%ymm0, %ymm2
	vmovapd	%ymm0, %ymm3
	.p2align	4, 0x90
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	vminpd	(%rax,%rsi,8), %ymm0, %ymm0
	vminpd	32(%rax,%rsi,8), %ymm1, %ymm1
	vminpd	64(%rax,%rsi,8), %ymm2, %ymm2
	vminpd	96(%rax,%rsi,8), %ymm3, %ymm3
	vminpd	128(%rax,%rsi,8), %ymm0, %ymm0
	vminpd	160(%rax,%rsi,8), %ymm1, %ymm1
	vminpd	192(%rax,%rsi,8), %ymm2, %ymm2
	vminpd	224(%rax,%rsi,8), %ymm3, %ymm3
	addq	$32, %rsi
	addq	$2, %rdi
	jne	.LBB3_5
# %bb.6:
	testb	$1, %r9b
	je	.LBB3_8
.LBB3_7:
	vminpd	96(%rax,%rsi,8), %ymm3, %ymm3
	vminpd	64(%rax,%rsi,8), %ymm2, %ymm2
	vminpd	32(%rax,%rsi,8), %ymm1, %ymm1
	vminpd	(%rax,%rsi,8), %ymm0, %ymm0
.LBB3_8:
	vminpd	%ymm3, %ymm0, %ymm0
	vminpd	%ymm2, %ymm1, %ymm1
	vminpd	%ymm0, %ymm1, %ymm0
	vextractf128	$1, %ymm0, %xmm1
	vpermilpd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0]
	vpermilpd	$1, %xmm0, %xmm3        # xmm3 = xmm0[1,0]
	vminsd	%xmm3, %xmm0, %xmm0
	vminsd	%xmm2, %xmm1, %xmm1
	vminsd	%xmm1, %xmm0, %xmm0
	cmpq	%r8, %rdx
	je	.LBB3_11
# %bb.9:
	leaq	(%rax,%r8,8), %rax
	.p2align	4, 0x90
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	vminsd	(%rax), %xmm0, %xmm0
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.LBB3_10
.LBB3_11:
	vzeroupper
	retq
.LBB3_3:
	xorl	%esi, %esi
	vmovapd	%ymm0, %ymm1
	vmovapd	%ymm0, %ymm2
	vmovapd	%ymm0, %ymm3
	testb	$1, %r9b
	jne	.LBB3_7
	jmp	.LBB3_8
.Lfunc_end3:
	.size	_ZN10Statistics6getMinEv, .Lfunc_end3-_ZN10Statistics6getMinEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ # -- Begin function _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
	.p2align	4, 0x90
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,@function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_: # 
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	cmpq	$129, %rbx
	jl	.LBB4_43
# %bb.1:
	movq	%rdx, %r14
	movq	%rdi, %r15
	leaq	8(%rdi), %r13
	movq	$-8, %rbp
	subq	%rdi, %rbp
	jmp	.LBB4_3
	.p2align	4, 0x90
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
	movq	%r12, %rsi
	cmpq	$128, %rbx
	jle	.LBB4_43
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #       Child Loop BB4_9 Depth 3
                                        #       Child Loop BB4_11 Depth 3
	testq	%r14, %r14
	je	.LBB4_14
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	shrq	$4, %rbx
	leaq	(%r15,%rbx,8), %rcx
	leaq	-8(%rsi), %rax
	vmovsd	8(%r15), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	(%r15,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	vmovsd	-8(%rsi), %xmm2                 # xmm2 = mem[0],zero
	jae	.LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	vucomisd	%xmm2, %xmm0
	cmovaeq	%r13, %rax
	vucomisd	%xmm2, %xmm1
	vmaxsd	%xmm0, %xmm2, %xmm0
	vcmpltsd	%xmm2, %xmm1, %xmm2
	vblendvpd	%xmm2, %xmm1, %xmm0, %xmm0
	cmovbq	%rcx, %rax
	jmp	.LBB4_7
	.p2align	4, 0x90
.LBB4_6:                                #   in Loop: Header=BB4_3 Depth=1
	vucomisd	%xmm2, %xmm1
	cmovbq	%rax, %rcx
	vucomisd	%xmm2, %xmm0
	vmaxsd	%xmm1, %xmm2, %xmm1
	vcmpltsd	%xmm2, %xmm0, %xmm2
	vblendvpd	%xmm2, %xmm0, %xmm1, %xmm0
	cmovbq	%r13, %rcx
	movq	%rcx, %rax
.LBB4_7:                                #   in Loop: Header=BB4_3 Depth=1
	decq	%r14
	vmovsd	(%r15), %xmm1                   # xmm1 = mem[0],zero
	vmovsd	%xmm0, (%r15)
	vmovsd	%xmm1, (%rax)
	movq	%r13, %rax
	movq	%rsi, %rcx
	.p2align	4, 0x90
.LBB4_8:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_9 Depth 3
                                        #       Child Loop BB4_11 Depth 3
	vmovsd	(%r15), %xmm0                   # xmm0 = mem[0],zero
	leaq	(%rax,%rbp), %rbx
	.p2align	4, 0x90
.LBB4_9:                                #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovsd	(%rax), %xmm1                   # xmm1 = mem[0],zero
	addq	$8, %rax
	addq	$8, %rbx
	vucomisd	%xmm1, %xmm0
	ja	.LBB4_9
# %bb.10:                               #   in Loop: Header=BB4_8 Depth=2
	leaq	-8(%rax), %r12
	.p2align	4, 0x90
.LBB4_11:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovsd	-8(%rcx), %xmm2                 # xmm2 = mem[0],zero
	addq	$-8, %rcx
	vucomisd	%xmm2, %xmm0
	jb	.LBB4_11
# %bb.12:                               #   in Loop: Header=BB4_8 Depth=2
	cmpq	%rcx, %r12
	jae	.LBB4_2
# %bb.13:                               #   in Loop: Header=BB4_8 Depth=2
	vmovsd	%xmm2, (%r12)
	vmovsd	%xmm1, (%rcx)
	jmp	.LBB4_8
.LBB4_14:
	movq	%rbx, %rax
	shrq	$3, %rax
	leaq	-2(%rax), %rcx
	shrq	$63, %rcx
	leaq	(%rax,%rcx), %r8
	addq	$-2, %r8
	sarq	%r8
	leaq	-1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	decq	%rcx
	sarq	%rcx
	testb	$8, %bl
	jne	.LBB4_32
# %bb.15:
	leaq	(%r8,%r8), %rdx
	incq	%rdx
	movq	%r8, %rbp
	jmp	.LBB4_18
	.p2align	4, 0x90
.LBB4_16:                               #   in Loop: Header=BB4_18 Depth=1
	movq	%rax, %rdi
.LBB4_17:                               #   in Loop: Header=BB4_18 Depth=1
	vmovsd	%xmm0, (%r15,%rdi,8)
	subq	$1, %rbp
	jb	.LBB4_42
.LBB4_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_22 Depth 2
                                        #     Child Loop BB4_27 Depth 2
	vmovsd	(%r15,%rbp,8), %xmm0            # xmm0 = mem[0],zero
	movq	%rbp, %rax
	cmpq	%rbp, %rcx
	jle	.LBB4_24
# %bb.19:                               #   in Loop: Header=BB4_18 Depth=1
	movq	%rbp, %rdi
	jmp	.LBB4_22
	.p2align	4, 0x90
.LBB4_20:                               #   in Loop: Header=BB4_22 Depth=2
	leaq	(%rdi,%rdi), %rax
	addq	$2, %rax
.LBB4_21:                               #   in Loop: Header=BB4_22 Depth=2
	vmovsd	(%r15,%rax,8), %xmm1            # xmm1 = mem[0],zero
	vmovsd	%xmm1, (%r15,%rdi,8)
	movq	%rax, %rdi
	cmpq	%rcx, %rax
	jge	.LBB4_24
.LBB4_22:                               #   Parent Loop BB4_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%rdi,%rdi), %rax
	vmovsd	16(%r15,%rax,8), %xmm1          # xmm1 = mem[0],zero
	vucomisd	8(%r15,%rax,8), %xmm1
	jae	.LBB4_20
# %bb.23:                               #   in Loop: Header=BB4_22 Depth=2
	leaq	(%rdi,%rdi), %rax
	incq	%rax
	jmp	.LBB4_21
	.p2align	4, 0x90
.LBB4_24:                               #   in Loop: Header=BB4_18 Depth=1
	cmpq	%r8, %rax
	jne	.LBB4_26
# %bb.25:                               #   in Loop: Header=BB4_18 Depth=1
	vmovsd	(%r15,%rdx,8), %xmm1            # xmm1 = mem[0],zero
	vmovsd	%xmm1, (%r15,%r8,8)
	movq	%rdx, %rax
.LBB4_26:                               #   in Loop: Header=BB4_18 Depth=1
	cmpq	%rbp, %rax
	jle	.LBB4_16
	.p2align	4, 0x90
.LBB4_27:                               #   Parent Loop BB4_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%rax), %rdi
	shrq	$63, %rdi
	addq	%rax, %rdi
	decq	%rdi
	sarq	%rdi
	vmovsd	(%r15,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	jbe	.LBB4_16
# %bb.28:                               #   in Loop: Header=BB4_27 Depth=2
	vmovsd	%xmm1, (%r15,%rax,8)
	movq	%rdi, %rax
	cmpq	%rbp, %rdi
	jg	.LBB4_27
	jmp	.LBB4_17
	.p2align	4, 0x90
.LBB4_30:                               #   in Loop: Header=BB4_32 Depth=1
	movq	%rax, %rdx
.LBB4_31:                               #   in Loop: Header=BB4_32 Depth=1
	vmovsd	%xmm0, (%r15,%rdx,8)
	subq	$1, %r8
	jb	.LBB4_42
.LBB4_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_36 Depth 2
                                        #     Child Loop BB4_39 Depth 2
	vmovsd	(%r15,%r8,8), %xmm0             # xmm0 = mem[0],zero
	movq	%r8, %rdx
	cmpq	%r8, %rcx
	jle	.LBB4_31
# %bb.33:                               #   in Loop: Header=BB4_32 Depth=1
	movq	%r8, %rdx
	jmp	.LBB4_36
	.p2align	4, 0x90
.LBB4_34:                               #   in Loop: Header=BB4_36 Depth=2
	leaq	(%rdx,%rdx), %rax
	addq	$2, %rax
.LBB4_35:                               #   in Loop: Header=BB4_36 Depth=2
	vmovsd	(%r15,%rax,8), %xmm1            # xmm1 = mem[0],zero
	vmovsd	%xmm1, (%r15,%rdx,8)
	movq	%rax, %rdx
	cmpq	%rcx, %rax
	jge	.LBB4_38
.LBB4_36:                               #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%rdx,%rdx), %rax
	vmovsd	16(%r15,%rax,8), %xmm1          # xmm1 = mem[0],zero
	vucomisd	8(%r15,%rax,8), %xmm1
	jae	.LBB4_34
# %bb.37:                               #   in Loop: Header=BB4_36 Depth=2
	leaq	(%rdx,%rdx), %rax
	incq	%rax
	jmp	.LBB4_35
	.p2align	4, 0x90
.LBB4_38:                               #   in Loop: Header=BB4_32 Depth=1
	cmpq	%r8, %rax
	jle	.LBB4_30
	.p2align	4, 0x90
.LBB4_39:                               #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%rax), %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	decq	%rdx
	sarq	%rdx
	vmovsd	(%r15,%rdx,8), %xmm1            # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	jbe	.LBB4_30
# %bb.40:                               #   in Loop: Header=BB4_39 Depth=2
	vmovsd	%xmm1, (%r15,%rax,8)
	movq	%rdx, %rax
	cmpq	%r8, %rdx
	jg	.LBB4_39
	jmp	.LBB4_31
.LBB4_42:
	cmpq	$9, %rbx
	jge	.LBB4_46
.LBB4_43:
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
	.p2align	4, 0x90
.LBB4_44:                               #   in Loop: Header=BB4_46 Depth=1
	.cfi_def_cfa_offset 64
	movq	%rbp, %rcx
.LBB4_45:                               #   in Loop: Header=BB4_46 Depth=1
	vmovsd	%xmm0, (%r15,%rcx,8)
	cmpq	$8, %rax
	jle	.LBB4_43
.LBB4_46:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_50 Depth 2
                                        #     Child Loop BB4_57 Depth 2
	vmovsd	-8(%rsi), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	(%r15), %xmm1                   # xmm1 = mem[0],zero
	vmovsd	%xmm1, -8(%rsi)
	addq	$-8, %rsi
	movq	%rsi, %rax
	subq	%r15, %rax
	movq	%rax, %rdx
	sarq	$3, %rdx
	cmpq	$17, %rax
	jl	.LBB4_52
# %bb.47:                               #   in Loop: Header=BB4_46 Depth=1
	leaq	-1(%rdx), %rcx
	shrq	$63, %rcx
	leaq	(%rdx,%rcx), %rdi
	decq	%rdi
	sarq	%rdi
	xorl	%ecx, %ecx
	jmp	.LBB4_50
	.p2align	4, 0x90
.LBB4_48:                               #   in Loop: Header=BB4_50 Depth=2
	leaq	(%rcx,%rcx), %rbp
	addq	$2, %rbp
.LBB4_49:                               #   in Loop: Header=BB4_50 Depth=2
	vmovsd	(%r15,%rbp,8), %xmm1            # xmm1 = mem[0],zero
	vmovsd	%xmm1, (%r15,%rcx,8)
	movq	%rbp, %rcx
	cmpq	%rdi, %rbp
	jge	.LBB4_53
.LBB4_50:                               #   Parent Loop BB4_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%rcx,%rcx), %rbp
	vmovsd	16(%r15,%rbp,8), %xmm1          # xmm1 = mem[0],zero
	vucomisd	8(%r15,%rbp,8), %xmm1
	jae	.LBB4_48
# %bb.51:                               #   in Loop: Header=BB4_50 Depth=2
	leaq	(%rcx,%rcx), %rbp
	incq	%rbp
	jmp	.LBB4_49
	.p2align	4, 0x90
.LBB4_52:                               #   in Loop: Header=BB4_46 Depth=1
	xorl	%ebp, %ebp
.LBB4_53:                               #   in Loop: Header=BB4_46 Depth=1
	testb	$8, %al
	jne	.LBB4_56
# %bb.54:                               #   in Loop: Header=BB4_46 Depth=1
	leaq	-2(%rdx), %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
	addq	$-2, %rcx
	sarq	%rcx
	cmpq	%rcx, %rbp
	jne	.LBB4_56
# %bb.55:                               #   in Loop: Header=BB4_46 Depth=1
	movq	%rbp, %rcx
	addq	%rbp, %rcx
	vmovsd	8(%r15,%rcx,8), %xmm1           # xmm1 = mem[0],zero
	vmovsd	%xmm1, (%r15,%rbp,8)
	addq	%rbp, %rbp
	incq	%rbp
.LBB4_56:                               #   in Loop: Header=BB4_46 Depth=1
	testq	%rbp, %rbp
	jle	.LBB4_44
	.p2align	4, 0x90
.LBB4_57:                               #   Parent Loop BB4_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%rbp), %rcx
	shrq	$63, %rcx
	addq	%rbp, %rcx
	decq	%rcx
	sarq	%rcx
	vmovsd	(%r15,%rcx,8), %xmm1            # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	jbe	.LBB4_44
# %bb.58:                               #   in Loop: Header=BB4_57 Depth=2
	vmovsd	%xmm1, (%r15,%rbp,8)
	cmpq	$2, %rbp
	movq	%rcx, %rbp
	jg	.LBB4_57
	jmp	.LBB4_45
.Lfunc_end4:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_, .Lfunc_end4-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_Statistics.cpp
	.type	_GLOBAL__sub_I_Statistics.cpp,@function
_GLOBAL__sub_I_Statistics.cpp:          # 
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
.Lfunc_end5:
	.size	_GLOBAL__sub_I_Statistics.cpp, .Lfunc_end5-_GLOBAL__sub_I_Statistics.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # 
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_Statistics.cpp
	.ident	"Intel(R) oneAPI DPC++ Compiler 2021.2.0 (2021.2.0.20210317)"
	.section	".note.GNU-stack","",@progbits
