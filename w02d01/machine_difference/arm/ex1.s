	.syntax unified
	.arch armv7-a
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfpv3-d16
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"ex1.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	" x %d\012\000"
	.align	2
.LC1:
	.ascii	" b %p\012\000"
	.align	2
.LC2:
	.ascii	" c %p\012\000"
	.align	2
.LC3:
	.ascii	"*b %x\012\000"
	.align	2
.LC4:
	.ascii	"&b %p\012\000"
	.align	2
.LC5:
	.ascii	"&c %p\012\000"
	.align	2
.LC6:
	.ascii	"int size   : %d\012\000"
	.align	2
.LC7:
	.ascii	"double size: %d\012\000"
	.align	2
.LC8:
	.ascii	"float size : %d\012\000"
	.align	2
.LC9:
	.ascii	"x size     : %d\012\000"
	.align	2
.LC10:
	.ascii	"b size     : %d\012\000"
	.align	2
.LC11:
	.ascii	"c size     : %d\012\000"
	.text
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #5
	str	r3, [r7, #12]
	add	r3, r7, #12
	str	r3, [r7, #16]
	add	r3, r7, #16
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	mov	r1, r3
	bl	printf
	ldr	r3, [r7, #16]
	movw	r0, #:lower16:.LC1
	movt	r0, #:upper16:.LC1
	mov	r1, r3
	bl	printf
	ldr	r3, [r7, #20]
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	mov	r1, r3
	bl	printf
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	mov	r1, r3
	bl	printf
	add	r3, r7, #16
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	mov	r1, r3
	bl	printf
	add	r3, r7, #20
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	mov	r1, r3
	bl	printf
	movw	r0, #:lower16:.LC6
	movt	r0, #:upper16:.LC6
	movs	r1, #4
	bl	printf
	movw	r0, #:lower16:.LC7
	movt	r0, #:upper16:.LC7
	movs	r1, #8
	bl	printf
	movw	r0, #:lower16:.LC8
	movt	r0, #:upper16:.LC8
	movs	r1, #4
	bl	printf
	movw	r0, #:lower16:.LC9
	movt	r0, #:upper16:.LC9
	movs	r1, #4
	bl	printf
	movw	r0, #:lower16:.LC10
	movt	r0, #:upper16:.LC10
	movs	r1, #4
	bl	printf
	movw	r0, #:lower16:.LC11
	movt	r0, #:upper16:.LC11
	movs	r1, #4
	bl	printf
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",%progbits
