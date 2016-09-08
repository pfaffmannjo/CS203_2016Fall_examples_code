	.file	"ex1.c"
	.section	.rodata
.LC0:
	.string	" x %d\n"
.LC1:
	.string	" b %p\n"
.LC2:
	.string	" c %p\n"
.LC3:
	.string	"*b %x\n"
.LC4:
	.string	"&b %p\n"
.LC5:
	.string	"&c %p\n"
.LC6:
	.string	"int size   : %d\n"
.LC7:
	.string	"double size: %d\n"
.LC8:
	.string	"float size : %d\n"
.LC9:
	.string	"x size     : %d\n"
.LC10:
	.string	"b size     : %d\n"
.LC11:
	.string	"c size     : %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$5, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$4, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	$8, %esi
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	movl	$4, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	movl	$4, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movl	$8, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	movl	$8, %esi
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 6.1.1 20160621 (Red Hat 6.1.1-3)"
	.section	.note.GNU-stack,"",@progbits
