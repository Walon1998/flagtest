	.file	"main.c"
	.text
	.globl	mult
	.type	mult, @function
mult:
.LFB13:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	16(%rsi), %rbx
	xorl	%eax, %eax
.L2:
	leaq	(%rdi,%rax), %r11
	leaq	(%rdx,%rax), %r9
	movq	%rsi, %r8
.L6:
	xorl	%ecx, %ecx
.L3:
	movq	%rcx, %r10
	salq	$4, %r10
	movl	(%r8,%r10), %r10d
	imull	(%r11,%rcx,4), %r10d
	incq	%rcx
	addl	%r10d, (%r9)
	cmpq	$4, %rcx
	jne	.L3
	addq	$4, %r8
	addq	$4, %r9
	cmpq	%r8, %rbx
	jne	.L6
	addq	$16, %rax
	cmpq	$64, %rax
	jne	.L2
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	mult, .-mult
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%d "
	.text
	.globl	print
	.type	print, @function
print:
.LFB14:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	.LC1(%rip), %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leaq	64(%rdi), %r12
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
.L11:
	xorl	%ebp, %ebp
.L12:
	movl	(%rbx,%rbp,4), %edx
	xorl	%eax, %eax
	movq	%r13, %rsi
	movl	$1, %edi
	incq	%rbp
	call	__printf_chk@PLT
	cmpq	$4, %rbp
	jne	.L12
	movl	$10, %edi
	addq	$16, %rbx
	call	putchar@PLT
	cmpq	%r12, %rbx
	jne	.L11
	popq	%rax
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
.LFE14:
	.size	print, .-print
	.section	.rodata
	.align 32
.LC0:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.long	16
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LFB15:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC0(%rip), %rsi
	movl	$16, %ecx
	subq	$208, %rsp
	.cfi_def_cfa_offset 224
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	leaq	128(%rsp), %rbx
	movq	%rsp, %rdi
	rep movsl
	leaq	64(%rsp), %rdi
	leaq	.LC0(%rip), %rsi
	movl	$16, %ecx
	movq	%rbx, %rdx
	rep movsl
	leaq	128(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movl	$16, %ecx
	rep stosl
	movq	%rsp, %rdi
	call	mult
	movq	%rbx, %rdi
	call	print
	movq	200(%rsp), %rdx
	xorq	%fs:40, %rdx
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	addq	$208, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
