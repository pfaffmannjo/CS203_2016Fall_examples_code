	.file	"prog.c"
	.globl	fh
	.bss
	.align 8
	.type	fh, @object
	.size	fh, 8
fh:
	.zero	8
	.globl	str2
	.section	.rodata
	.align 8
.LC0:
	.string	"The fibonacci number of 10 is %d\n"
	.data
	.align 8
	.type	str2, @object
	.size	str2, 8
str2:
	.quad	.LC0
	.section	.rodata
	.align 8
.LC1:
	.string	"prog <file-name> <quoted-string>\n"
.LC2:
	.string	"%0X\n"
.LC3:
	.string	"The fibonacci of 10 is %d\n"
	.text
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
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	cmpl	$1, -36(%rbp)
	jne	.L2
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	movl	$1, %eax
	jmp	.L4
.L2:
	movl	$4, -20(%rbp)
	movq	stdout(%rip), %rax
	leaq	-20(%rbp), %rdx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	open_file
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	write_input_string
	movq	$.LC3, -8(%rbp)
	movl	$10, %edi
	call	fibonacci
	movl	%eax, %edx
	movq	fh(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	fh(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	close_file
	movl	$10, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
.LC4:
	.string	"w"
.LC5:
	.string	"File could not be opened"
	.text
	.globl	open_file
	.type	open_file, @function
open_file:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, fh(%rip)
	movq	fh(%rip), %rax
	testq	%rax, %rax
	jne	.L7
	movl	$.LC5, %edi
	call	perror
.L7:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	open_file, .-open_file
	.section	.rodata
.LC6:
	.string	"%s\n"
	.text
	.globl	write_input_string
	.type	write_input_string, @function
write_input_string:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	fh(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	write_input_string, .-write_input_string
	.section	.rodata
.LC7:
	.string	"File could not be closed"
	.text
	.globl	close_file
	.type	close_file, @function
close_file:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	fh(%rip), %rax
	movq	%rax, %rdi
	call	fclose
	testl	%eax, %eax
	je	.L11
	movl	$.LC7, %edi
	call	perror
.L11:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	close_file, .-close_file
	.globl	fibonacci
	.type	fibonacci, @function
fibonacci:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	cmpl	$1, -20(%rbp)
	jne	.L15
	movl	$1, %eax
	jmp	.L14
.L15:
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	fibonacci
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %edi
	call	fibonacci
	addl	%ebx, %eax
.L14:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fibonacci, .-fibonacci
	.ident	"GCC: (GNU) 6.1.1 20160621 (Red Hat 6.1.1-3)"
	.section	.note.GNU-stack,"",@progbits
