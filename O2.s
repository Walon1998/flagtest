	.file	"main.c"
	.text
	.p2align 4,,15
	.globl	mult
	.type	mult, @function
mult:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	16(%rdi), %r10
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	leaq	80(%rdi), %rbp
	leaq	16(%rdx), %rbx
.L2:
	leaq	-16(%rbx), %r9
	movq	%rsi, %r11
.L6:
	movl	(%r9), %r8d
	movq	%r11, %rcx
	movq	%rdi, %rax
.L3:
	movl	(%rax), %edx
	addq	$4, %rax
	addq	$16, %rcx
	imull	-16(%rcx), %edx
	addl	%edx, %r8d
	cmpq	%r10, %rax
	movl	%r8d, (%r9)
	jne	.L3
	addq	$4, %r9
	addq	$4, %r11
	cmpq	%r9, %rbx
	jne	.L6
	leaq	16(%rax), %r10
	addq	$16, %rbx
	addq	$16, %rdi
	cmpq	%rbp, %r10
	jne	.L2
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	mult, .-mult
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d "
	.text
	.p2align 4,,15
	.globl	print
	.type	print, @function
print:
.LFB24:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	64(%rdi), %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leaq	.LC0(%rip), %r12
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
.L11:
	leaq	16(%rbx), %rbp
.L12:
	movl	(%rbx), %edx
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	$1, %edi
	addq	$4, %rbx
	call	__printf_chk@PLT
	cmpq	%rbx, %rbp
	jne	.L12
	movl	$10, %edi
	call	putchar@PLT
	cmpq	%r13, %rbp
	jne	.L11
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	print, .-print
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	pxor	%xmm0, %xmm0
	movabsq	$42949672969, %rsi
	movabsq	$34359738375, %rdi
	movabsq	$60129542157, %rdx
	subq	$208, %rsp
	.cfi_def_cfa_offset 224
	movabsq	$51539607563, %rcx
	movabsq	$8589934593, %r10
	leaq	128(%rsp), %rbx
	movq	%rsi, 32(%rsp)
	movq	%rsi, 96(%rsp)
	leaq	64(%rsp), %rsi
	movabsq	$17179869187, %r9
	movabsq	$25769803781, %r8
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	movq	%rdi, 24(%rsp)
	movabsq	$68719476751, %rax
	movq	%rdx, 48(%rsp)
	movq	%rdi, 88(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%rsp, %rdi
	movq	%rbx, %rdx
	movq	%rcx, 40(%rsp)
	movq	%rcx, 104(%rsp)
	movq	%r10, (%rsp)
	movq	%r9, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r10, 64(%rsp)
	movq	%r9, 72(%rsp)
	movq	%r8, 80(%rsp)
	movaps	%xmm0, 128(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 120(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 176(%rsp)
	call	mult
	movq	%rbx, %rdi
	call	print
	movq	200(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L19
	addq	$208, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L19:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
