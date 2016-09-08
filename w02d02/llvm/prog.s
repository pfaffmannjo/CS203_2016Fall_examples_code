	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$1, -8(%rbp)
	jne	LBB0_2
## BB#1:
	leaq	L_.str1(%rip), %rsi
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movb	$0, %al
	callq	_fprintf
	movl	$1, -4(%rbp)
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	leaq	L_.str2(%rip), %rsi
	leaq	-20(%rbp), %rdx
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movl	$4, -20(%rbp)
	movq	(%rax), %rdi
	movb	$0, %al
	callq	_fprintf
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdi
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	callq	_open_file
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdi
	callq	_write_input_string
	movl	$10, %edi
	leaq	L_.str3(%rip), %rdx
	movq	%rdx, -32(%rbp)
	movq	_fh(%rip), %rdx
	movq	-32(%rbp), %rsi
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rdx, -64(%rbp)         ## 8-byte Spill
	callq	_fibonacci
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	callq	_close_file
	movl	$10, %eax
	movl	%eax, %edi
	callq	_malloc
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
LBB0_3:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_open_file
	.align	4, 0x90
_open_file:                             ## @open_file
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str4(%rip), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_fopen
	movq	%rax, _fh(%rip)
	cmpq	$0, %rax
	jne	LBB1_2
## BB#1:
	leaq	L_.str5(%rip), %rdi
	callq	_perror
LBB1_2:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_write_input_string
	.align	4, 0x90
_write_input_string:                    ## @write_input_string
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str6(%rip), %rsi
	movq	%rdi, -8(%rbp)
	movq	_fh(%rip), %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_fibonacci
	.align	4, 0x90
_fibonacci:                             ## @fibonacci
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	LBB3_2
## BB#1:
	movl	$0, -4(%rbp)
	jmp	LBB3_5
LBB3_2:
	cmpl	$1, -12(%rbp)
	jne	LBB3_4
## BB#3:
	movl	$1, -4(%rbp)
	jmp	LBB3_5
LBB3_4:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	callq	_fibonacci
	movl	-12(%rbp), %edi
	subl	$2, %edi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	callq	_fibonacci
	movl	-16(%rbp), %edi         ## 4-byte Reload
	addl	%eax, %edi
	movl	%edi, -4(%rbp)
LBB3_5:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_close_file
	.align	4, 0x90
_close_file:                            ## @close_file
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	movq	_fh(%rip), %rdi
	callq	_fclose
	cmpl	$0, %eax
	je	LBB4_2
## BB#1:
	leaq	L_.str7(%rip), %rdi
	callq	_perror
LBB4_2:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_fh                     ## @fh
.zerofill __DATA,__common,_fh,8,3
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"The fibonacci number of 10 is %d\n"

	.section	__DATA,__data
	.globl	_str2                   ## @str2
	.align	3
_str2:
	.quad	L_.str

	.section	__TEXT,__cstring,cstring_literals
L_.str1:                                ## @.str1
	.asciz	"prog <file-name> <quoted-string>\n"

L_.str2:                                ## @.str2
	.asciz	"%p\n"

L_.str3:                                ## @.str3
	.asciz	"The fibonacci of 10 is %d\n"

L_.str4:                                ## @.str4
	.asciz	"w"

L_.str5:                                ## @.str5
	.asciz	"File could not be opened"

L_.str6:                                ## @.str6
	.asciz	"%s\n"

L_.str7:                                ## @.str7
	.asciz	"File could not be closed"


.subsections_via_symbols
