	.file	"main.c"
	.text
	.globl	mult
	.type	mult, @function
mult:
.LFB23:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	16(%rdx), %r10
	movq	%rdi, %r11
	leaq	16(%rdi), %r8
	leaq	80(%rdi), %rbx
.L2:
	movq	%rsi, %r9
	leaq	-16(%r10), %rdi
.L6:
	movq	%r9, %rcx
	movq	%r11, %rax
.L3:
	movl	(%rax), %edx
	imull	(%rcx), %edx
	addl	%edx, (%rdi)
	addq	$4, %rax
	addq	$16, %rcx
	cmpq	%r8, %rax
	jne	.L3
	addq	$4, %r9
	addq	$4, %rdi
	cmpq	%r10, %rdi
	jne	.L6
	addq	$16, %r10
	addq	$16, %r11
	addq	$16, %r8
	cmpq	%rbx, %r8
	jne	.L2
	movl	$0, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	mult, .-mult
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d "
	.text
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
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rbx
	leaq	64(%rdi), %r13
	leaq	.LC0(%rip), %r12
.L10:
	leaq	16(%rbx), %rbp
.L11:
	movl	(%rbx), %edx
	movq	%r12, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$4, %rbx
	cmpq	%rbp, %rbx
	jne	.L11
	movl	$10, %edi
	call	putchar@PLT
	cmpq	%r13, %rbx
	jne	.L10
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
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$208, %rsp
	.cfi_def_cfa_offset 224
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	movl	$1, (%rsp)
	movl	$2, 4(%rsp)
	movl	$3, 8(%rsp)
	movl	$4, 12(%rsp)
	movl	$5, 16(%rsp)
	movl	$6, 20(%rsp)
	movl	$7, 24(%rsp)
	movl	$8, 28(%rsp)
	movl	$9, 32(%rsp)
	movl	$10, 36(%rsp)
	movl	$11, 40(%rsp)
	movl	$12, 44(%rsp)
	movl	$13, 48(%rsp)
	movl	$14, 52(%rsp)
	movl	$15, 56(%rsp)
	movl	$16, 60(%rsp)
	movl	$1, 64(%rsp)
	movl	$2, 68(%rsp)
	movl	$3, 72(%rsp)
	movl	$4, 76(%rsp)
	movl	$5, 80(%rsp)
	movl	$6, 84(%rsp)
	movl	$7, 88(%rsp)
	movl	$8, 92(%rsp)
	movl	$9, 96(%rsp)
	movl	$10, 100(%rsp)
	movl	$11, 104(%rsp)
	movl	$12, 108(%rsp)
	movl	$13, 112(%rsp)
	movl	$14, 116(%rsp)
	movl	$15, 120(%rsp)
	movl	$16, 124(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 184(%rsp)
	leaq	128(%rsp), %rbx
	leaq	64(%rsp), %rsi
	movq	%rsp, %rdi
	movq	%rbx, %rdx
	call	mult
	movq	%rbx, %rdi
	call	print
	movq	200(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L18
	movl	$0, %eax
	addq	$208, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L18:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
