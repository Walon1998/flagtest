	.file	"main.c"
	.text
	.p2align 4,,15
	.globl	mult
	.type	mult, @function
mult:
.LFB23:
	.cfi_startproc
	leaq	64(%rdx), %r8
.L2:
	movl	(%rdi), %ecx
	imull	(%rsi), %ecx
	addl	(%rdx), %ecx
	movl	%ecx, (%rdx)
	movl	4(%rdi), %eax
	imull	16(%rsi), %eax
	addl	%eax, %ecx
	movl	%ecx, (%rdx)
	movl	8(%rdi), %eax
	imull	32(%rsi), %eax
	addl	%ecx, %eax
	movl	%eax, (%rdx)
	movl	12(%rdi), %ecx
	imull	48(%rsi), %ecx
	addl	%ecx, %eax
	movl	%eax, (%rdx)
	movl	(%rdi), %ecx
	imull	4(%rsi), %ecx
	addl	4(%rdx), %ecx
	movl	%ecx, 4(%rdx)
	movl	4(%rdi), %eax
	imull	20(%rsi), %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%rdx)
	movl	8(%rdi), %eax
	imull	36(%rsi), %eax
	addl	%ecx, %eax
	movl	%eax, 4(%rdx)
	movl	12(%rdi), %ecx
	imull	52(%rsi), %ecx
	addl	%ecx, %eax
	movl	%eax, 4(%rdx)
	movl	(%rdi), %ecx
	imull	8(%rsi), %ecx
	addl	8(%rdx), %ecx
	movl	%ecx, 8(%rdx)
	movl	4(%rdi), %eax
	imull	24(%rsi), %eax
	addl	%eax, %ecx
	movl	%ecx, 8(%rdx)
	movl	8(%rdi), %eax
	imull	40(%rsi), %eax
	addl	%ecx, %eax
	movl	%eax, 8(%rdx)
	movl	12(%rdi), %ecx
	imull	56(%rsi), %ecx
	addl	%ecx, %eax
	movl	%eax, 8(%rdx)
	movl	(%rdi), %ecx
	imull	12(%rsi), %ecx
	addl	12(%rdx), %ecx
	movl	%ecx, 12(%rdx)
	movl	4(%rdi), %eax
	imull	28(%rsi), %eax
	addl	%eax, %ecx
	movl	%ecx, 12(%rdx)
	movl	8(%rdi), %eax
	imull	44(%rsi), %eax
	addl	%ecx, %eax
	movl	%eax, 12(%rdx)
	movl	12(%rdi), %ecx
	imull	60(%rsi), %ecx
	addl	%ecx, %eax
	addq	$16, %rdx
	movl	%eax, -4(%rdx)
	addq	$16, %rdi
	cmpq	%r8, %rdx
	jne	.L2
	xorl	%eax, %eax
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
.L6:
	leaq	16(%rbx), %rbp
.L7:
	movl	(%rbx), %edx
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	$1, %edi
	addq	$4, %rbx
	call	__printf_chk@PLT
	cmpq	%rbx, %rbp
	jne	.L7
	movl	$10, %edi
	call	putchar@PLT
	cmpq	%r13, %rbp
	jne	.L6
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	movdqa	.LC4(%rip), %xmm0
	leaq	128(%rsp), %r9
	leaq	64(%rsp), %rsi
	movq	%rsp, %rdi
	movaps	%xmm0, 48(%rsp)
	movq	%r9, %rdx
	movaps	%xmm0, 112(%rsp)
	pxor	%xmm0, %xmm0
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	movdqa	.LC1(%rip), %xmm3
	movdqa	.LC2(%rip), %xmm2
	movdqa	.LC3(%rip), %xmm1
	movaps	%xmm3, (%rsp)
	movaps	%xmm2, 16(%rsp)
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm3, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 176(%rsp)
	call	mult
	movq	%r9, %rdi
	call	print
	movq	200(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L14
	xorl	%eax, %eax
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L14:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	1
	.long	2
	.long	3
	.long	4
	.align 16
.LC2:
	.long	5
	.long	6
	.long	7
	.long	8
	.align 16
.LC3:
	.long	9
	.long	10
	.long	11
	.long	12
	.align 16
.LC4:
	.long	13
	.long	14
	.long	15
	.long	16
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
