	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"portraitDemo.c"
	.text
	.align	1
	.p2align 2,,3
	.global	eyeAnimation1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	eyeAnimation1, %function
eyeAnimation1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	movs	r3, #129
	movs	r2, r1
	push	{r5, r6, r7, lr}
	bics	r2, r3
	sub	sp, sp, #12
	subs	r3, r2, #0
	bne	.L1
	adds	r3, r3, #128
	ands	r3, r1
	movs	r4, #1
	mov	r8, r3
	movs	r3, #22
	movs	r6, #88
	movs	r2, #4
	ldr	r5, [r0, #44]
	ldr	r7, [r5, #44]
	ands	r1, r4
	ldrsb	r3, [r7, r3]
	lsls	r1, r1, #6
	subs	r3, r2, r3
	subs	r6, r6, r1
	lsls	r6, r6, #16
	mov	r10, r3
	movs	r0, r5
	ldr	r3, .L11
	lsrs	r6, r6, #16
	bl	.L13
	tst	r4, r0
	bne	.L3
	mov	r3, r10
	rsbs	r3, r3, #0
	mov	r10, r3
.L3:
	movs	r1, #1
	mov	r2, r10
	mov	r9, r1
	ldrb	r3, [r7, #27]
	lsls	r3, r3, #24
	asrs	r3, r3, #31
	subs	r1, r1, r3
	lsls	r2, r2, #3
	movs	r4, r1
	muls	r4, r2
	mov	r2, r10
	muls	r2, r3
	adds	r4, r4, r2
	movs	r2, #52
	ldrsh	r3, [r5, r2]
	movs	r0, r5
	adds	r4, r4, r3
	ldr	r3, .L11
	bl	.L13
	mov	r3, r9
	subs	r4, r4, #16
	lsls	r4, r4, #23
	lsrs	r4, r4, #23
	tst	r3, r0
	beq	.L4
	movs	r3, #128
	lsls	r3, r3, #5
	mov	ip, r3
	add	r4, r4, ip
.L4:
	ldr	r3, .L11
	movs	r0, r5
	mov	r9, r3
	bl	.L13
	ldrb	r3, [r7, #27]
	movs	r1, #23
	lsls	r3, r3, #24
	asrs	r3, r3, #31
	mov	r10, r3
	ldrsb	r1, [r7, r1]
	lsls	r3, r1, #3
	mov	ip, r3
	movs	r7, #1
	mov	r3, r10
	subs	r2, r7, r3
	mov	r3, ip
	muls	r3, r2
	movs	r2, r3
	ldrh	r3, [r5, #54]
	mov	ip, r3
	mov	r3, r10
	muls	r3, r1
	add	r2, r2, ip
	adds	r3, r2, r3
	movs	r2, #255
	ands	r3, r2
	movs	r2, #128
	lsls	r2, r2, #3
	ands	r0, r2
	rsbs	r0, r0, #0
	asrs	r0, r0, #31
	ands	r0, r2
	orrs	r3, r0
	mov	r10, r3
	movs	r3, #65
	mov	fp, r3
	mov	r3, r8
	add	fp, fp, r5
	cmp	r3, #0
	beq	.L5
	movs	r0, r5
	bl	.L14
	tst	r7, r0
	bne	.L6
	adds	r4, r4, #16
.L6:
	mov	r3, fp
	movs	r0, #0
	ldrsb	r0, [r3, r0]
	movs	r2, #60
	ldrsh	r3, [r5, r2]
	adds	r6, r3, r6
	adds	r6, r6, #2
	movs	r1, r4
	str	r6, [sp]
	ldr	r3, .L11+4
	mov	r2, r10
	ldr	r4, .L11+8
	bl	.L15
.L1:
	add	sp, sp, #12
	@ sp needed
	pop	{r2, r3, r4, r5}
	mov	r8, r2
	mov	r9, r3
	mov	r10, r4
	mov	fp, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L5:
	mov	r3, fp
	movs	r0, #0
	ldrsb	r0, [r3, r0]
	movs	r2, #60
	ldrsh	r3, [r5, r2]
	adds	r6, r3, r6
	movs	r1, r4
	str	r6, [sp]
	ldr	r3, .L11+12
	mov	r2, r10
	ldr	r4, .L11+8
	bl	.L15
	b	.L1
.L12:
	.align	2
.L11:
	.word	134240165
	.word	140054348
	.word	134239273
	.word	140054412
	.size	eyeAnimation1, .-eyeAnimation1
	.align	1
	.p2align 2,,3
	.global	eyeAnimation2
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	eyeAnimation2, %function
eyeAnimation2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	mov	lr, r9
	movs	r3, #129
	push	{r7, lr}
	movs	r2, r1
	movs	r7, #128
	ldr	r6, [r0, #44]
	bics	r2, r3
	sub	sp, sp, #12
	ldr	r4, [r6, #44]
	ands	r7, r1
	movs	r3, #0
	cmp	r2, #0
	bne	.L17
	adds	r3, r3, #1
	ands	r1, r3
	adds	r3, r3, #1
	subs	r3, r3, r1
.L17:
	movs	r2, #60
	ldrsh	r1, [r6, r2]
	ldr	r2, .L33
	mov	ip, r2
	adds	r1, r1, #92
	ldr	r2, [r4, #16]
	lsls	r1, r1, #22
	lsrs	r1, r1, #17
	add	r1, r1, ip
	mov	ip, r2
	lsls	r3, r3, #2
	add	r3, r3, ip
	ldr	r0, [r3, #4]
	ldr	r5, .L33+4
	movs	r3, #2
	movs	r2, #4
	bl	.L35
	movs	r5, #22
	ldrsb	r5, [r4, r5]
	cmp	r7, #0
	bne	.L18
	movs	r3, #4
	subs	r5, r3, r5
.L19:
	ldrb	r3, [r4, #27]
	cmp	r3, #127
	bhi	.L20
	lsls	r5, r5, #3
.L20:
	ldr	r3, .L33+8
	movs	r0, r6
	bl	.L13
	lsls	r3, r0, #31
	bmi	.L21
	rsbs	r5, r5, #0
.L21:
	movs	r2, #52
	ldrsh	r3, [r6, r2]
	adds	r5, r3, r5
	subs	r5, r5, #16
	lsls	r5, r5, #23
	ldr	r3, .L33+8
	movs	r0, r6
	lsrs	r5, r5, #23
	bl	.L13
	lsls	r3, r0, #31
	bpl	.L22
	movs	r3, #128
	lsls	r3, r3, #5
	mov	ip, r3
	add	r5, r5, ip
.L22:
	movs	r3, #23
	ldrb	r2, [r4, #27]
	ldrsb	r3, [r4, r3]
	cmp	r2, #127
	bhi	.L23
	lsls	r3, r3, #3
.L23:
	movs	r2, #54
	ldrsh	r4, [r6, r2]
	adds	r4, r4, r3
	movs	r3, #255
	ands	r3, r4
	mov	r9, r3
	ldr	r3, .L33+8
	movs	r0, r6
	mov	r8, r3
	bl	.L13
	movs	r3, #128
	lsls	r3, r3, #3
	ands	r0, r3
	rsbs	r4, r0, #0
	asrs	r4, r4, #31
	ands	r4, r3
	mov	r3, r9
	orrs	r4, r3
	movs	r3, #65
	mov	r9, r3
	add	r9, r9, r6
	cmp	r7, #0
	beq	.L24
	movs	r0, r6
	bl	.L36
	lsls	r3, r0, #31
	bpl	.L32
.L25:
	mov	r3, r9
	movs	r0, #0
	movs	r7, #2
	ldrsb	r0, [r3, r0]
	movs	r3, #60
	ldrsh	r2, [r6, r3]
	ldr	r3, .L33+12
	adds	r2, r2, #92
.L26:
	adds	r7, r7, r2
	str	r7, [sp]
	movs	r2, r4
	movs	r1, r5
	ldr	r4, .L33+16
	bl	.L15
	add	sp, sp, #12
	@ sp needed
	pop	{r2, r3}
	mov	r8, r2
	mov	r9, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L24:
	mov	r3, r9
	movs	r0, #0
	ldrsb	r0, [r3, r0]
	movs	r3, #60
	ldrsh	r2, [r6, r3]
	ldr	r3, .L33+20
	adds	r2, r2, #92
	b	.L26
.L18:
	movs	r3, #6
	subs	r5, r3, r5
	b	.L19
.L32:
	adds	r5, r5, #18
	b	.L25
.L34:
	.align	2
.L33:
	.word	100728832
	.word	134295541
	.word	134240165
	.word	140054348
	.word	134239273
	.word	140054412
	.size	eyeAnimation2, .-eyeAnimation2
	.align	1
	.p2align 2,,3
	.global	eyeAnimation3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	eyeAnimation3, %function
eyeAnimation3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, r1
	push	{r3, r4, r5, r6, r7, lr}
	mov	lr, r9
	mov	r7, r8
	ldr	r3, [r0, #44]
	movs	r6, r0
	movs	r1, #1
	movs	r0, #129
	movs	r4, r2
	push	{r7, lr}
	ldr	r5, [r3, #44]
	ldr	r3, [r5, #16]
	bics	r4, r0
	ldrsb	r1, [r3, r1]
	cmp	r4, #0
	beq	.L38
	movs	r7, #0
	cmp	r1, #0
	ble	.L37
	ldr	r2, .L62
	mov	r8, r2
.L39:
	movs	r2, #0
	ldrsb	r2, [r3, r2]
	movs	r4, #0
	cmp	r2, #0
	ble	.L42
.L41:
	movs	r0, r2
	muls	r0, r7
	ldr	r1, [r3, #16]
	adds	r0, r0, r4
	lsls	r2, r0, #1
	ldrsh	r1, [r2, r1]
	ldr	r2, [r6, #44]
	ldrh	r2, [r2, #60]
	adds	r1, r1, r2
	ldr	r2, .L62+4
	mov	ip, r2
	ldr	r3, [r3, #4]
	lsls	r1, r1, #22
	lsrs	r1, r1, #17
	lsls	r0, r0, #5
	adds	r0, r3, r0
	movs	r2, #1
	movs	r3, #1
	add	r1, r1, ip
	bl	.L36
	movs	r2, #0
	ldr	r3, [r5, #16]
	ldrsb	r2, [r3, r2]
	adds	r4, r4, #1
	cmp	r2, r4
	bgt	.L41
	movs	r1, #1
	ldrsb	r1, [r3, r1]
.L42:
	adds	r7, r7, #1
	cmp	r1, r7
	bgt	.L39
.L37:
	@ sp needed
	pop	{r2, r3}
	mov	r8, r2
	mov	r9, r3
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L38:
	movs	r0, #1
	movs	r7, #2
	ands	r0, r2
	subs	r7, r7, r0
	lsls	r2, r2, #24
	bpl	.L61
	movs	r2, #3
	ldrsb	r2, [r3, r2]
	subs	r2, r1, r2
	mov	r8, r2
	cmp	r2, r1
	bge	.L37
	ldr	r2, .L62
	mov	r9, r2
	lsls	r7, r7, #2
.L47:
	movs	r2, #0
	movs	r4, #2
	ldrsb	r2, [r3, r2]
	ldrsb	r4, [r3, r4]
	subs	r4, r2, r4
	cmp	r4, r2
	bge	.L45
.L46:
	mov	r1, r8
	muls	r1, r2
	ldr	r0, [r3, #16]
	adds	r2, r1, r4
	lsls	r1, r2, #1
	ldrsh	r1, [r1, r0]
	ldr	r0, [r6, #44]
	ldrh	r0, [r0, #60]
	adds	r1, r1, r0
	ldr	r0, .L62+4
	mov	ip, r0
	adds	r3, r3, r7
	ldr	r0, [r3, #4]
	lsls	r1, r1, #22
	lsls	r2, r2, #5
	lsrs	r1, r1, #17
	adds	r0, r0, r2
	movs	r3, #1
	movs	r2, #1
	add	r1, r1, ip
	bl	.L14
	movs	r2, #0
	ldr	r3, [r5, #16]
	ldrsb	r2, [r3, r2]
	adds	r4, r4, #1
	cmp	r2, r4
	bgt	.L46
	movs	r1, #1
	ldrsb	r1, [r3, r1]
.L45:
	movs	r2, #1
	mov	ip, r2
	add	r8, r8, ip
	cmp	r1, r8
	bgt	.L47
	b	.L37
.L61:
	movs	r2, #0
	mov	r8, r2
	cmp	r1, #0
	ble	.L37
	ldr	r2, .L62
	mov	r9, r2
	lsls	r7, r7, #2
.L44:
	movs	r2, #0
	ldrsb	r2, [r3, r2]
	movs	r4, #0
	cmp	r2, #0
	ble	.L49
.L48:
	mov	r1, r8
	muls	r1, r2
	ldr	r0, [r3, #16]
	adds	r2, r1, r4
	lsls	r1, r2, #1
	ldrsh	r1, [r1, r0]
	ldr	r0, [r6, #44]
	ldrh	r0, [r0, #60]
	adds	r1, r1, r0
	ldr	r0, .L62+4
	mov	ip, r0
	adds	r3, r3, r7
	ldr	r0, [r3, #4]
	lsls	r1, r1, #22
	lsls	r2, r2, #5
	lsrs	r1, r1, #17
	adds	r0, r0, r2
	movs	r3, #1
	movs	r2, #1
	add	r1, r1, ip
	bl	.L14
	movs	r2, #0
	ldr	r3, [r5, #16]
	ldrsb	r2, [r3, r2]
	adds	r4, r4, #1
	cmp	r2, r4
	bgt	.L48
	movs	r1, #1
	ldrsb	r1, [r3, r1]
.L49:
	movs	r2, #1
	mov	ip, r2
	add	r8, r8, ip
	cmp	r1, r8
	bgt	.L44
	b	.L37
.L63:
	.align	2
.L62:
	.word	134295541
	.word	100728832
	.size	eyeAnimation3, .-eyeAnimation3
	.section	.callEyeAnimation,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	callEyeAnimation
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	callEyeAnimation, %function
callEyeAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, [r0, #44]
	ldr	r3, [r3, #44]
	ldrb	r3, [r3, #24]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldr	r2, .L65
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r3, [r3, r2]
	bl	.L67
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L66:
	.align	2
.L65:
	.word	.LANCHOR0
.L67:
	bx	r3
	.size	callEyeAnimation, .-callEyeAnimation
	.text
	.align	1
	.p2align 2,,3
	.global	drawStatScreenPortrait
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	drawStatScreenPortrait, %function
drawStatScreenPortrait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r8
	mov	r6, r9
	mov	lr, fp
	mov	r7, r10
	movs	r4, r0
	push	{r5, r6, r7, lr}
	mov	r8, r1
	movs	r6, r2
	movs	r5, r3
	cmp	r1, #0
	beq	.L68
	movs	r0, r1
	ldr	r3, .L80
	bl	.L13
	lsls	r3, r5, #5
	mov	r10, r3
	ldr	r3, .L80+4
	movs	r7, r0
	mov	r1, r10
	movs	r2, #32
	ldr	r0, [r0, #8]
	mov	r9, r3
	bl	.L13
	movs	r3, #192
	ldr	r0, [r7]
	lsls	r3, r3, #14
	adds	r1, r6, r3
	lsls	r3, r5, #12
	lsls	r6, r6, #22
	lsls	r1, r1, #5
	mov	fp, r3
	lsrs	r6, r6, #22
	cmp	r0, #0
	beq	.L71
	ldr	r3, .L80+8
	bl	.L13
	movs	r2, #32
	mov	r1, r10
	ldr	r0, [r7, #8]
	bl	.L14
	ldr	r3, .L80+12
	mov	r0, r8
	bl	.L13
	movs	r3, #26
	lsls	r5, r5, #28
	lsrs	r5, r5, #16
	adds	r2, r5, r6
	lsls	r0, r0, #24
	ldrsb	r3, [r7, r3]
	cmp	r0, #0
	bne	.L79
.L73:
	ldr	r1, .L80+16
	lsls	r3, r3, #2
	ldr	r1, [r3, r1]
	movs	r0, r4
	ldr	r3, .L80+20
	bl	.L13
.L75:
	movs	r2, #180
	movs	r0, r4
	ldrb	r4, [r7, #27]
	lsls	r4, r4, #25
	asrs	r3, r4, #25
	movs	r4, r2
	muls	r4, r3
	ldr	r3, .L80+24
	adds	r4, r4, r3
	movs	r3, #144
	lsls	r3, r3, #2
	adds	r5, r0, r3
.L74:
	movs	r3, #0
.L76:
	ldrh	r1, [r4, r3]
	ldrh	r2, [r0, r3]
	rsbs	r1, r1, #0
	ands	r2, r1
	strh	r2, [r0, r3]
	adds	r3, r3, #2
	cmp	r3, #20
	bne	.L76
	adds	r0, r0, #64
	adds	r4, r4, #20
	cmp	r5, r0
	bne	.L74
.L68:
	@ sp needed
	pop	{r2, r3, r4, r5}
	mov	r8, r2
	mov	r9, r3
	mov	r10, r4
	mov	fp, r5
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L71:
	ldr	r0, [r7, #16]
	ldr	r3, .L80+8
	bl	.L13
	movs	r1, r6
	movs	r3, #9
	add	r1, r1, fp
	movs	r2, #10
	movs	r0, r4
	ldr	r4, .L80+28
	bl	.L15
	b	.L68
.L79:
	cmp	r3, #0
	bne	.L73
	ldr	r3, .L80+16
	movs	r0, r4
	ldr	r1, [r3, #4]
	ldr	r3, .L80+20
	bl	.L13
	b	.L75
.L81:
	.align	2
.L80:
	.word	134239509
	.word	134221241
	.word	134295377
	.word	134241317
	.word	.LANCHOR1
	.word	135099553
	.word	statScreenPortraitMask
	.word	134295813
	.size	drawStatScreenPortrait, .-drawStatScreenPortrait
	.section	.callDrawStatScreenPortrait,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	callDrawStatScreenPortrait
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	callDrawStatScreenPortrait, %function
callDrawStatScreenPortrait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L83
	bl	.L85
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L84:
	.align	2
.L83:
	.word	drawStatScreenPortrait
.L85:
	bx	r4
	.size	callDrawStatScreenPortrait, .-callDrawStatScreenPortrait
	.text
	.align	1
	.p2align 2,,3
	.global	drawDialoguePortrait
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	drawDialoguePortrait, %function
drawDialoguePortrait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #48]
	ldr	r2, .L104
	ldr	r1, .L104+4
	ands	r2, r3
	adds	r1, r2, r1
	push	{r4, lr}
	ldr	r4, [r0, #44]
	cmp	r1, #1
	bls	.L98
	cmp	r2, #5
	bls	.L99
	movs	r2, #240
	lsls	r2, r2, #2
	ands	r3, r2
	cmp	r3, #128
	beq	.L94
.L102:
	cmp	r3, #128
	bhi	.L100
	subs	r3, r3, #64
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	lsls	r3, r3, #11
.L91:
.L93:
	movs	r2, #64
	ldrsb	r1, [r0, r2]
	ldr	r4, .L104+8
	ldr	r2, .L104+12
	lsls	r1, r1, #3
	ldr	r2, [r1, r2]
	ldrh	r1, [r1, r4]
	asrs	r2, r2, #5
	lsls	r1, r1, #12
	adds	r2, r2, r1
	adds	r3, r3, r2
	strh	r3, [r0, #60]
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L100:
	ldr	r2, .L104+16
	mov	ip, r2
	add	r3, r3, ip
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	movs	r2, #192
	lsls	r2, r2, #4
	mov	ip, r2
	rsbs	r3, r3, #0
	lsls	r3, r3, #10
	add	r3, r3, ip
	b	.L93
.L99:
	movs	r1, #25
	ldrsb	r1, [r4, r1]
	lsrs	r2, r2, #1
	cmp	r2, r1
	bcc	.L101
.L90:
	movs	r1, #1
	lsls	r2, r2, #1
	ands	r1, r3
.L97:
	adds	r2, r2, r1
	ldr	r1, .L104+20
	lsls	r2, r2, #2
	adds	r2, r1, r2
	ldr	r2, [r2, #12]
	str	r2, [r0, #56]
	movs	r2, #240
	lsls	r2, r2, #2
	ands	r3, r2
	cmp	r3, #128
	bne	.L102
.L94:
	movs	r3, #128
	lsls	r3, r3, #3
	b	.L93
.L98:
	ldrb	r1, [r4, #25]
	adds	r2, r1, #0
	lsls	r1, r1, #24
	asrs	r1, r1, #24
	cmp	r1, #3
	blt	.L103
	movs	r1, #1
	lsls	r2, r2, #24
	ands	r1, r3
	asrs	r2, r2, #23
	b	.L97
.L103:
	movs	r2, #3
	movs	r1, #1
	lsls	r2, r2, #24
	ands	r1, r3
	asrs	r2, r2, #23
	b	.L97
.L101:
	movs	r2, r1
	b	.L90
.L105:
	.align	2
.L104:
	.word	2055
	.word	-2048
	.word	33728144
	.word	33728140
	.word	-512
	.word	.LANCHOR1
	.size	drawDialoguePortrait, .-drawDialoguePortrait
	.section	.callDrawDialoguePortrait,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	callDrawDialoguePortrait
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	callDrawDialoguePortrait, %function
callDrawDialoguePortrait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L107
	bl	.L109
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L108:
	.align	2
.L107:
	.word	drawDialoguePortrait
.L109:
	bx	r3
	.size	callDrawDialoguePortrait, .-callDrawDialoguePortrait
	.text
	.align	1
	.p2align 2,,3
	.global	mouthAnimation
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	mouthAnimation, %function
mouthAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	ldr	r4, [r0, #44]
	sub	sp, sp, #8
	ldr	r7, .L129
	mov	r8, r0
	movs	r0, r4
	ldr	r6, [r4, #44]
	bl	.L131
	movs	r3, r0
	movs	r0, #8
	ands	r0, r3
	rsbs	r3, r0, #0
	adcs	r0, r0, r3
	movs	r5, #24
	rsbs	r0, r0, #0
	ands	r5, r0
	movs	r0, r4
	bl	.L131
	movs	r3, #48
	tst	r3, r0
	bne	.L128
	movs	r3, #60
	ldrsh	r1, [r4, r3]
	ldr	r3, .L129+4
	movs	r0, r5
	mov	ip, r3
	adds	r1, r1, #28
	lsls	r1, r1, #22
	lsrs	r1, r1, #17
	adds	r0, r0, #16
	add	r1, r1, ip
	lsls	r0, r0, #5
.L127:
	ldr	r3, [r6, #12]
	mov	ip, r3
	movs	r2, #4
	add	r0, r0, ip
	movs	r3, #2
	ldr	r5, .L129+8
	bl	.L35
.L113:
	movs	r7, #20
	movs	r5, #4
	ldrsb	r7, [r6, r7]
	ldrb	r3, [r6, #27]
	subs	r7, r5, r7
	cmp	r3, #127
	bhi	.L116
	lsls	r7, r7, #3
.L116:
	ldr	r3, .L129
	movs	r0, r4
	bl	.L13
	lsls	r3, r0, #31
	bmi	.L117
	rsbs	r7, r7, #0
.L117:
	movs	r3, #52
	ldrsh	r5, [r4, r3]
	adds	r5, r5, r7
	subs	r5, r5, #16
	lsls	r5, r5, #23
	ldr	r3, .L129
	movs	r0, r4
	lsrs	r5, r5, #23
	bl	.L13
	lsls	r3, r0, #31
	bpl	.L118
	movs	r3, #128
	lsls	r3, r3, #5
	mov	ip, r3
	add	r5, r5, ip
.L118:
	movs	r3, #21
	ldrb	r2, [r6, #27]
	ldrsb	r3, [r6, r3]
	cmp	r2, #127
	bhi	.L119
	lsls	r3, r3, #3
.L119:
	movs	r6, #255
	movs	r1, #54
	ldrsh	r2, [r4, r1]
	movs	r0, r4
	adds	r2, r2, r3
	ldr	r3, .L129
	ands	r6, r2
	bl	.L13
	movs	r3, #128
	lsls	r3, r3, #3
	ands	r0, r3
	rsbs	r2, r0, #0
	asrs	r2, r2, #31
	ands	r2, r3
	movs	r3, #65
	ldrsb	r0, [r4, r3]
	movs	r1, #60
	ldrsh	r3, [r4, r1]
	adds	r3, r3, #28
	str	r3, [sp]
	orrs	r2, r6
	ldr	r3, .L129+12
	movs	r1, r5
	ldr	r4, .L129+16
	bl	.L15
	add	sp, sp, #8
	@ sp needed
	pop	{r2}
	mov	r8, r2
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L128:
	mov	r3, r8
	mov	r2, r8
	ldrh	r3, [r3, #50]
	subs	r3, r3, #1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	strh	r3, [r2, #50]
	bpl	.L113
	ldr	r3, .L129+20
	bl	.L13
	mov	r3, r8
	movs	r2, #3
	mov	r1, r8
	lsls	r0, r0, #13
	lsrs	r0, r0, #29
	adds	r0, r0, #1
	strh	r0, [r3, #50]
	ldrh	r3, [r3, #48]
	adds	r3, r3, #1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	ands	r2, r3
	strh	r2, [r1, #48]
	lsls	r3, r3, #31
	bpl	.L114
	adds	r5, r5, #8
.L114:
	cmp	r2, #2
	bne	.L115
	adds	r5, r5, #16
.L115:
	movs	r3, #60
	ldrsh	r1, [r4, r3]
	ldr	r3, .L129+4
	mov	ip, r3
	adds	r1, r1, #28
	lsls	r1, r1, #22
	lsrs	r1, r1, #17
	add	r1, r1, ip
	lsls	r0, r5, #5
	b	.L127
.L130:
	.align	2
.L129:
	.word	134240165
	.word	100728832
	.word	134295541
	.word	140054412
	.word	134239273
	.word	134221033
	.size	mouthAnimation, .-mouthAnimation
	.section	.callMouthAnimation,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	callMouthAnimation
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	callMouthAnimation, %function
callMouthAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L133
	bl	.L135
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L134:
	.align	2
.L133:
	.word	mouthAnimation
.L135:
	bx	r3
	.size	callMouthAnimation, .-callMouthAnimation
	.global	statScreenPortraitMask
	.global	statScreenPortraitTemplate
	.global	TikiFPortraitInBoxTemplate
	.global	dialoguePortraitTemplate
	.global	TikiFPortraitTemplateRight
	.global	TikiFPortraitTemplateLeft
	.global	eyeAnimation
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	eyeAnimation, %object
	.size	eyeAnimation, 12
eyeAnimation:
	.word	eyeAnimation1
	.word	eyeAnimation2
	.word	eyeAnimation3
	.type	statScreenPortraitMask, %object
	.size	statScreenPortraitMask, 360
statScreenPortraitMask:
	.short	0
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	0
	.short	0
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	0
	.short	0
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	0
	.short	0
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	0
	.short	0
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	0
	.short	0
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	0
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	0
	.short	0
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	0
	.short	0
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.type	TikiFPortraitInBoxTemplate, %object
	.size	TikiFPortraitInBoxTemplate, 184
TikiFPortraitInBoxTemplate:
	.short	2057
	.short	17
	.short	18
	.short	19
	.short	20
	.short	21
	.short	22
	.short	23
	.short	24
	.short	25
	.short	26
	.short	102
	.short	103
	.short	104
	.short	105
	.short	106
	.short	107
	.short	108
	.short	109
	.short	110
	.short	111
	.short	70
	.short	71
	.short	72
	.short	73
	.short	74
	.short	75
	.short	76
	.short	77
	.short	78
	.short	79
	.short	38
	.short	39
	.short	40
	.short	41
	.short	42
	.short	43
	.short	44
	.short	45
	.short	46
	.short	47
	.short	6
	.short	7
	.short	8
	.short	9
	.short	10
	.short	11
	.short	12
	.short	13
	.short	14
	.short	15
	.short	31
	.short	31
	.short	96
	.short	97
	.short	98
	.short	99
	.short	100
	.short	101
	.short	31
	.short	31
	.short	31
	.short	31
	.short	64
	.short	65
	.short	66
	.short	67
	.short	68
	.short	69
	.short	31
	.short	31
	.short	31
	.short	31
	.short	32
	.short	33
	.short	34
	.short	35
	.short	36
	.short	37
	.short	31
	.short	31
	.short	31
	.short	31
	.short	0
	.short	1
	.short	2
	.short	3
	.short	4
	.short	5
	.short	31
	.short	31
	.short	0
	.type	TikiFPortraitTemplateRight, %object
	.size	TikiFPortraitTemplateRight, 56
TikiFPortraitTemplateRight:
	.short	9
	.short	240
	.short	-28672
	.short	0
	.short	-32528
	.short	-28176
	.short	4
	.short	16400
	.short	-11792
	.short	6
	.short	-32752
	.short	-28192
	.short	14
	.short	-32752
	.short	20952
	.short	16
	.short	16432
	.short	-11792
	.short	17
	.short	48
	.short	20960
	.short	25
	.short	48
	.short	20944
	.short	89
	.short	16448
	.short	-28208
	.short	92
	.type	TikiFPortraitTemplateLeft, %object
	.size	TikiFPortraitTemplateLeft, 56
TikiFPortraitTemplateLeft:
	.short	9
	.short	240
	.short	-32288
	.short	0
	.short	-32528
	.short	-32768
	.short	4
	.short	16400
	.short	-15920
	.short	6
	.short	-32752
	.short	-32752
	.short	14
	.short	-32752
	.short	16416
	.short	16
	.short	16432
	.short	-15920
	.short	17
	.short	48
	.short	16400
	.short	25
	.short	48
	.short	16416
	.short	89
	.short	16448
	.short	-32752
	.short	92
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	statScreenPortraitTemplate, %object
	.size	statScreenPortraitTemplate, 12
statScreenPortraitTemplate:
	.word	140118072
	.word	140118256
	.word	TikiFPortraitInBoxTemplate
	.type	dialoguePortraitTemplate, %object
	.size	dialoguePortraitTemplate, 40
dialoguePortraitTemplate:
	.word	140054540
	.word	140054566
	.word	140054592
	.word	140054630
	.word	140054668
	.word	140054718
	.word	140054768
	.word	140054818
	.word	TikiFPortraitTemplateLeft
	.word	TikiFPortraitTemplateRight
	.ident	"GCC: (devkitARM release 47) 7.1.0"
	.text
	.code 16
	.align	1
.L13:
	bx	r3
.L15:
	bx	r4
.L35:
	bx	r5
.L131:
	bx	r7
.L36:
	bx	r8
.L14:
	bx	r9
