	.text
	.file	"Chronometer.cpp"
	.globl	_ZN11Chronometer5startEv        # -- Begin function _ZN11Chronometer5startEv
	.p2align	4, 0x90
	.type	_ZN11Chronometer5startEv,@function
_ZN11Chronometer5startEv:               # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN11Chronometer5startEv, .Lfunc_end0-_ZN11Chronometer5startEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11Chronometer4stopEv         # -- Begin function _ZN11Chronometer4stopEv
	.p2align	4, 0x90
	.type	_ZN11Chronometer4stopEv,@function
_ZN11Chronometer4stopEv:                # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, 8(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_ZN11Chronometer4stopEv, .Lfunc_end1-_ZN11Chronometer4stopEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11Chronometer11setTimeUnitEONS_8timeUnitE # -- Begin function _ZN11Chronometer11setTimeUnitEONS_8timeUnitE
	.p2align	4, 0x90
	.type	_ZN11Chronometer11setTimeUnitEONS_8timeUnitE,@function
_ZN11Chronometer11setTimeUnitEONS_8timeUnitE: # 
	.cfi_startproc
# %bb.0:
	movb	(%rsi), %al
	movb	%al, 16(%rdi)
	retq
.Lfunc_end2:
	.size	_ZN11Chronometer11setTimeUnitEONS_8timeUnitE, .Lfunc_end2-_ZN11Chronometer11setTimeUnitEONS_8timeUnitE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _ZN11Chronometer7getTimeEv
.LCPI3_0:
	.long	0x3a83126f                      #  0.00100000005
.LCPI3_1:
	.long	0x358637bd                      #  9.99999997E-7
	.text
	.globl	_ZN11Chronometer7getTimeEv
	.p2align	4, 0x90
	.type	_ZN11Chronometer7getTimeEv,@function
_ZN11Chronometer7getTimeEv:             # 
	.cfi_startproc
# %bb.0:
	movb	16(%rdi), %al
	cmpb	$2, %al
	je	.LBB3_5
# %bb.1:
	cmpb	$1, %al
	je	.LBB3_4
# %bb.2:
	testb	%al, %al
	jne	.LBB3_6
# %bb.3:
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	movabsq	$2361183241434822607, %rcx      # imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	vcvtsi2ss	%rdx, %xmm0, %xmm0
	vmulss	.LCPI3_1(%rip), %xmm0, %xmm0
	retq
.LBB3_5:
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	movabsq	$2361183241434822607, %rcx      # imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	vcvtsi2ss	%rdx, %xmm0, %xmm0
	retq
.LBB3_4:
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	movabsq	$2361183241434822607, %rcx      # imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	vcvtsi2ss	%rdx, %xmm0, %xmm0
	vmulss	.LCPI3_0(%rip), %xmm0, %xmm0
	retq
.LBB3_6:
                                        # implicit-def: $xmm0
	retq
.Lfunc_end3:
	.size	_ZN11Chronometer7getTimeEv, .Lfunc_end3-_ZN11Chronometer7getTimeEv
	.cfi_endproc
                                        # -- End function
	.ident	"Intel(R) oneAPI DPC++ Compiler 2021.2.0 (2021.2.0.20210317)"
	.section	".note.GNU-stack","",@progbits
