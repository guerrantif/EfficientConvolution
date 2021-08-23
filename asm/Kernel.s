	.text
	.file	"Kernel.cpp"
	.section	.text._ZNK6KernelIfE3_atEjjjj,"axG",@progbits,_ZNK6KernelIfE3_atEjjjj,comdat
	.weak	_ZNK6KernelIfE3_atEjjjj         # -- Begin function _ZNK6KernelIfE3_atEjjjj
	.p2align	4, 0x90
	.type	_ZNK6KernelIfE3_atEjjjj,@function
_ZNK6KernelIfE3_atEjjjj:                # 
	.cfi_startproc
# %bb.0:
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $esi killed $esi def $rsi
	imull	24(%rdi), %esi
	leal	(%rsi,%rdx), %eax
	imull	16(%rdi), %eax
	addl	%ecx, %eax
	imull	28(%rdi), %eax
	addl	%r8d, %eax
	shlq	$2, %rax
	addq	8(%rdi), %rax
	retq
.Lfunc_end0:
	.size	_ZNK6KernelIfE3_atEjjjj, .Lfunc_end0-_ZNK6KernelIfE3_atEjjjj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6KernelIfE3_atEjjjj,"axG",@progbits,_ZN6KernelIfE3_atEjjjj,comdat
	.weak	_ZN6KernelIfE3_atEjjjj          # -- Begin function _ZN6KernelIfE3_atEjjjj
	.p2align	4, 0x90
	.type	_ZN6KernelIfE3_atEjjjj,@function
_ZN6KernelIfE3_atEjjjj:                 # 
	.cfi_startproc
# %bb.0:
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $esi killed $esi def $rsi
	imull	24(%rdi), %esi
	leal	(%rsi,%rdx), %eax
	imull	16(%rdi), %eax
	addl	%ecx, %eax
	imull	28(%rdi), %eax
	addl	%r8d, %eax
	shlq	$2, %rax
	addq	8(%rdi), %rax
	retq
.Lfunc_end1:
	.size	_ZN6KernelIfE3_atEjjjj, .Lfunc_end1-_ZN6KernelIfE3_atEjjjj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6KernelIfEC2Ev,"axG",@progbits,_ZN6KernelIfEC5Ev,comdat
	.weak	_ZN6KernelIfEC2Ev               # -- Begin function _ZN6KernelIfEC2Ev
	.p2align	4, 0x90
	.type	_ZN6KernelIfEC2Ev,@function
_ZN6KernelIfEC2Ev:                      # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZN6TensorIfEC2Ev
	movq	$_ZTV6KernelIfE+16, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN6KernelIfEC2Ev, .Lfunc_end2-_ZN6KernelIfEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6KernelIfEC2ERKjS2_S2_RKN6tensor4initE,"axG",@progbits,_ZN6KernelIfEC5ERKjS2_S2_RKN6tensor4initE,comdat
	.weak	_ZN6KernelIfEC2ERKjS2_S2_RKN6tensor4initE # -- Begin function _ZN6KernelIfEC2ERKjS2_S2_RKN6tensor4initE
	.p2align	4, 0x90
	.type	_ZN6KernelIfEC2ERKjS2_S2_RKN6tensor4initE,@function
_ZN6KernelIfEC2ERKjS2_S2_RKN6tensor4initE: # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZN6TensorIfEC2ERKjS2_S2_RKN6tensor4initE
	movq	$_ZTV6KernelIfE+16, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN6KernelIfEC2ERKjS2_S2_RKN6tensor4initE, .Lfunc_end3-_ZN6KernelIfEC2ERKjS2_S2_RKN6tensor4initE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6KernelIfEC2ERKjS2_S2_S2_RKN6tensor4initE,"axG",@progbits,_ZN6KernelIfEC5ERKjS2_S2_S2_RKN6tensor4initE,comdat
	.weak	_ZN6KernelIfEC2ERKjS2_S2_S2_RKN6tensor4initE # -- Begin function _ZN6KernelIfEC2ERKjS2_S2_S2_RKN6tensor4initE
	.p2align	4, 0x90
	.type	_ZN6KernelIfEC2ERKjS2_S2_S2_RKN6tensor4initE,@function
_ZN6KernelIfEC2ERKjS2_S2_S2_RKN6tensor4initE: # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdx, %rax
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	_ZN6TensorIfEC2ERKjS2_S2_S2_RKN6tensor4initE
	movq	$_ZTV6KernelIfE+16, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN6KernelIfEC2ERKjS2_S2_S2_RKN6tensor4initE, .Lfunc_end4-_ZN6KernelIfEC2ERKjS2_S2_S2_RKN6tensor4initE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6KernelIfEC2ERKS0_,"axG",@progbits,_ZN6KernelIfEC5ERKS0_,comdat
	.weak	_ZN6KernelIfEC2ERKS0_           # -- Begin function _ZN6KernelIfEC2ERKS0_
	.p2align	4, 0x90
	.type	_ZN6KernelIfEC2ERKS0_,@function
_ZN6KernelIfEC2ERKS0_:                  # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZN6TensorIfEC2ERKS0_
	movq	$_ZTV6KernelIfE+16, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN6KernelIfEC2ERKS0_, .Lfunc_end5-_ZN6KernelIfEC2ERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6KernelIfEC2EOS0_,"axG",@progbits,_ZN6KernelIfEC5EOS0_,comdat
	.weak	_ZN6KernelIfEC2EOS0_            # -- Begin function _ZN6KernelIfEC2EOS0_
	.p2align	4, 0x90
	.type	_ZN6KernelIfEC2EOS0_,@function
_ZN6KernelIfEC2EOS0_:                   # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZN6TensorIfEC2EOS0_
	movq	$_ZTV6KernelIfE+16, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN6KernelIfEC2EOS0_, .Lfunc_end6-_ZN6KernelIfEC2EOS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6KernelIfED2Ev,"axG",@progbits,_ZN6KernelIfED5Ev,comdat
	.weak	_ZN6KernelIfED2Ev               # -- Begin function _ZN6KernelIfED2Ev
	.p2align	4, 0x90
	.type	_ZN6KernelIfED2Ev,@function
_ZN6KernelIfED2Ev:                      # 
	.cfi_startproc
# %bb.0:
	jmp	_ZN6TensorIfED2Ev               # TAILCALL
.Lfunc_end7:
	.size	_ZN6KernelIfED2Ev, .Lfunc_end7-_ZN6KernelIfED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6KernelIfED0Ev,"axG",@progbits,_ZN6KernelIfED5Ev,comdat
	.weak	_ZN6KernelIfED0Ev               # -- Begin function _ZN6KernelIfED0Ev
	.p2align	4, 0x90
	.type	_ZN6KernelIfED0Ev,@function
_ZN6KernelIfED0Ev:                      # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZN6TensorIfED2Ev
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv                          # TAILCALL
.Lfunc_end8:
	.size	_ZN6KernelIfED0Ev, .Lfunc_end8-_ZN6KernelIfED0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6KernelIfE2atEjjjj,"axG",@progbits,_ZNK6KernelIfE2atEjjjj,comdat
	.weak	_ZNK6KernelIfE2atEjjjj          # -- Begin function _ZNK6KernelIfE2atEjjjj
	.p2align	4, 0x90
	.type	_ZNK6KernelIfE2atEjjjj,@function
_ZNK6KernelIfE2atEjjjj:                 # 
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpl	%esi, 20(%rdi)
	jbe	.LBB9_5
# %bb.1:
	movl	24(%rdi), %r9d
	cmpl	%edx, %r9d
	jbe	.LBB9_6
# %bb.2:
	movl	16(%rdi), %r10d
	cmpl	%ecx, %r10d
	jbe	.LBB9_7
# %bb.3:
	movl	28(%rdi), %eax
	cmpl	%r8d, %eax
	jbe	.LBB9_8
# %bb.4:
	imull	%esi, %r9d
	addl	%edx, %r9d
	imull	%r9d, %r10d
	addl	%ecx, %r10d
	imull	%r10d, %eax
	addl	%r8d, %eax
	shlq	$2, %rax
	addq	8(%rdi), %rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB9_5:
	.cfi_def_cfa_offset 16
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6KernelIfE2atEjjjj, %ecx
	movl	$49, %edx
	callq	__assert_fail
.LBB9_6:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6KernelIfE2atEjjjj, %ecx
	movl	$50, %edx
	callq	__assert_fail
.LBB9_7:
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6KernelIfE2atEjjjj, %ecx
	movl	$51, %edx
	callq	__assert_fail
.LBB9_8:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZNK6KernelIfE2atEjjjj, %ecx
	movl	$52, %edx
	callq	__assert_fail
.Lfunc_end9:
	.size	_ZNK6KernelIfE2atEjjjj, .Lfunc_end9-_ZNK6KernelIfE2atEjjjj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6KernelIfE2atEjjjj,"axG",@progbits,_ZN6KernelIfE2atEjjjj,comdat
	.weak	_ZN6KernelIfE2atEjjjj           # -- Begin function _ZN6KernelIfE2atEjjjj
	.p2align	4, 0x90
	.type	_ZN6KernelIfE2atEjjjj,@function
_ZN6KernelIfE2atEjjjj:                  # 
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpl	%esi, 20(%rdi)
	jbe	.LBB10_5
# %bb.1:
	movl	24(%rdi), %r9d
	cmpl	%edx, %r9d
	jbe	.LBB10_6
# %bb.2:
	movl	16(%rdi), %r10d
	cmpl	%ecx, %r10d
	jbe	.LBB10_7
# %bb.3:
	movl	28(%rdi), %eax
	cmpl	%r8d, %eax
	jbe	.LBB10_8
# %bb.4:
	imull	%esi, %r9d
	addl	%edx, %r9d
	imull	%r9d, %r10d
	addl	%ecx, %r10d
	imull	%r10d, %eax
	addl	%r8d, %eax
	shlq	$2, %rax
	addq	8(%rdi), %rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB10_5:
	.cfi_def_cfa_offset 16
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZN6KernelIfE2atEjjjj, %ecx
	movl	$60, %edx
	callq	__assert_fail
.LBB10_6:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZN6KernelIfE2atEjjjj, %ecx
	movl	$61, %edx
	callq	__assert_fail
.LBB10_7:
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZN6KernelIfE2atEjjjj, %ecx
	movl	$62, %edx
	callq	__assert_fail
.LBB10_8:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__._ZN6KernelIfE2atEjjjj, %ecx
	movl	$63, %edx
	callq	__assert_fail
.Lfunc_end10:
	.size	_ZN6KernelIfE2atEjjjj, .Lfunc_end10-_ZN6KernelIfE2atEjjjj
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_Kernel.cpp
	.type	_GLOBAL__sub_I_Kernel.cpp,@function
_GLOBAL__sub_I_Kernel.cpp:              # 
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
.Lfunc_end11:
	.size	_GLOBAL__sub_I_Kernel.cpp, .Lfunc_end11-_GLOBAL__sub_I_Kernel.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # 
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	_ZTV6KernelIfE,@object          # 
	.section	.rodata._ZTV6KernelIfE,"aG",@progbits,_ZTV6KernelIfE,comdat
	.weak	_ZTV6KernelIfE
	.p2align	3
_ZTV6KernelIfE:
	.quad	0
	.quad	_ZTI6KernelIfE
	.quad	_ZNK6KernelIfE3_atEjjjj
	.quad	_ZN6KernelIfE3_atEjjjj
	.quad	_ZN6KernelIfED2Ev
	.quad	_ZN6KernelIfED0Ev
	.quad	_ZNK6KernelIfE2atEjjjj
	.quad	_ZN6KernelIfE2atEjjjj
	.size	_ZTV6KernelIfE, 64

	.type	.L.str,@object                  # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"H_idx >= 0 && H_idx < this->height"
	.size	.L.str, 35

	.type	.L.str.1,@object                # 
.L.str.1:
	.asciz	"src/Kernel.cpp"
	.size	.L.str.1, 15

	.type	.L__PRETTY_FUNCTION__._ZNK6KernelIfE2atEjjjj,@object # 
.L__PRETTY_FUNCTION__._ZNK6KernelIfE2atEjjjj:
	.asciz	"virtual const T &Kernel<float>::at(const uint32_t, const uint32_t, const uint32_t, const uint32_t) const [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZNK6KernelIfE2atEjjjj, 117

	.type	.L.str.2,@object                # 
.L.str.2:
	.asciz	"W_idx >= 0 && W_idx < this->width"
	.size	.L.str.2, 34

	.type	.L.str.3,@object                # 
.L.str.3:
	.asciz	"E_idx >= 0 && E_idx < this->nElements"
	.size	.L.str.3, 38

	.type	.L.str.4,@object                # 
.L.str.4:
	.asciz	"C_idx >= 0 && C_idx < this->nChannels"
	.size	.L.str.4, 38

	.type	.L__PRETTY_FUNCTION__._ZN6KernelIfE2atEjjjj,@object # 
.L__PRETTY_FUNCTION__._ZN6KernelIfE2atEjjjj:
	.asciz	"virtual T &Kernel<float>::at(const uint32_t, const uint32_t, const uint32_t, const uint32_t) [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZN6KernelIfE2atEjjjj, 105

	.type	_ZTS6KernelIfE,@object          # 
	.section	.rodata._ZTS6KernelIfE,"aG",@progbits,_ZTS6KernelIfE,comdat
	.weak	_ZTS6KernelIfE
_ZTS6KernelIfE:
	.asciz	"6KernelIfE"
	.size	_ZTS6KernelIfE, 11

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

	.type	_ZTI6KernelIfE,@object          # 
	.section	.rodata._ZTI6KernelIfE,"aG",@progbits,_ZTI6KernelIfE,comdat
	.weak	_ZTI6KernelIfE
	.p2align	3
_ZTI6KernelIfE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS6KernelIfE
	.quad	_ZTI6TensorIfE
	.size	_ZTI6KernelIfE, 24

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_Kernel.cpp
	.weak	_ZN6KernelIfEC1Ev
	.type	_ZN6KernelIfEC1Ev,@function
.set _ZN6KernelIfEC1Ev, _ZN6KernelIfEC2Ev
	.weak	_ZN6KernelIfEC1ERKjS2_S2_RKN6tensor4initE
	.type	_ZN6KernelIfEC1ERKjS2_S2_RKN6tensor4initE,@function
.set _ZN6KernelIfEC1ERKjS2_S2_RKN6tensor4initE, _ZN6KernelIfEC2ERKjS2_S2_RKN6tensor4initE
	.weak	_ZN6KernelIfEC1ERKjS2_S2_S2_RKN6tensor4initE
	.type	_ZN6KernelIfEC1ERKjS2_S2_S2_RKN6tensor4initE,@function
.set _ZN6KernelIfEC1ERKjS2_S2_S2_RKN6tensor4initE, _ZN6KernelIfEC2ERKjS2_S2_S2_RKN6tensor4initE
	.weak	_ZN6KernelIfEC1ERKS0_
	.type	_ZN6KernelIfEC1ERKS0_,@function
.set _ZN6KernelIfEC1ERKS0_, _ZN6KernelIfEC2ERKS0_
	.weak	_ZN6KernelIfEC1EOS0_
	.type	_ZN6KernelIfEC1EOS0_,@function
.set _ZN6KernelIfEC1EOS0_, _ZN6KernelIfEC2EOS0_
	.weak	_ZN6KernelIfED1Ev
	.type	_ZN6KernelIfED1Ev,@function
.set _ZN6KernelIfED1Ev, _ZN6KernelIfED2Ev
	.ident	"Intel(R) oneAPI DPC++ Compiler 2021.2.0 (2021.2.0.20210317)"
	.section	".note.GNU-stack","",@progbits
