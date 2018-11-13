	.file	"main.c"
	.text
	.globl	mult
	.type	mult, @function
mult:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$4, -4(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L2
.L7:
	movl	$0, -12(%rbp)
	jmp	.L3
.L6:
	movl	$0, -8(%rbp)
	jmp	.L4
.L5:
	movl	-16(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-16(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %edx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	addq	%rax, %rsi
	movl	-12(%rbp), %eax
	cltq
	movl	(%rsi,%rax,4), %eax
	imull	%edx, %eax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rsi
	salq	$4, %rsi
	movq	-40(%rbp), %rdx
	addq	%rsi, %rdx
	addl	%eax, %ecx
	movl	-12(%rbp), %eax
	cltq
	movl	%ecx, (%rdx,%rax,4)
	addl	$1, -8(%rbp)
.L4:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L5
	addl	$1, -12(%rbp)
.L3:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L6
	addl	$1, -16(%rbp)
.L2:
	movl	-16(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L7
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mult, .-mult
	.section	.rodata
.LC0:
	.string	"%d "
	.text
	.globl	print
	.type	print, @function
print:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L10
.L13:
	movl	$0, -4(%rbp)
	jmp	.L11
.L12:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L11:
	cmpl	$3, -4(%rbp)
	jle	.L12
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -8(%rbp)
.L10:
	cmpl	$3, -8(%rbp)
	jle	.L13
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	print, .-print
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$4, -212(%rbp)
	movl	$1, -208(%rbp)
	movl	$2, -204(%rbp)
	movl	$3, -200(%rbp)
	movl	$4, -196(%rbp)
	movl	$5, -192(%rbp)
	movl	$6, -188(%rbp)
	movl	$7, -184(%rbp)
	movl	$8, -180(%rbp)
	movl	$9, -176(%rbp)
	movl	$10, -172(%rbp)
	movl	$11, -168(%rbp)
	movl	$12, -164(%rbp)
	movl	$13, -160(%rbp)
	movl	$14, -156(%rbp)
	movl	$15, -152(%rbp)
	movl	$16, -148(%rbp)
	movl	$1, -144(%rbp)
	movl	$2, -140(%rbp)
	movl	$3, -136(%rbp)
	movl	$4, -132(%rbp)
	movl	$5, -128(%rbp)
	movl	$6, -124(%rbp)
	movl	$7, -120(%rbp)
	movl	$8, -116(%rbp)
	movl	$9, -112(%rbp)
	movl	$10, -108(%rbp)
	movl	$11, -104(%rbp)
	movl	$12, -100(%rbp)
	movl	$13, -96(%rbp)
	movl	$14, -92(%rbp)
	movl	$15, -88(%rbp)
	movl	$16, -84(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mult
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	print
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
