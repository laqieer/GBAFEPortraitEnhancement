	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.arm
	.syntax divided
	.file	"portrait.c"
	.global	eyeAnimation
	.section	.rodata
	.align	2
	.type	eyeAnimation, %object
	.size	eyeAnimation, 12
eyeAnimation:
	.word	eyeAnimation1
	.word	eyeAnimation2
	.word	eyeAnimation3
	.global	dialoguePortraitTemplate
	.data
	.align	2
	.type	dialoguePortraitTemplate, %object
	.size	dialoguePortraitTemplate, 32
dialoguePortraitTemplate:
	.word	140054540
	.word	140054566
	.word	140054592
	.word	140054630
	.word	140054668
	.word	140054718
	.word	140054768
	.word	140054818
	.global	statScreenPortraitTemplate
	.align	2
	.type	statScreenPortraitTemplate, %object
	.size	statScreenPortraitTemplate, 8
statScreenPortraitTemplate:
	.word	140118072
	.word	140118256
	.global	statScreenPortraitMask
	.section	.rodata
	.align	2
	.type	statScreenPortraitMask, %object
	.size	statScreenPortraitMask, 180
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
	.text
	.align	2
	.global	eyeAnimation1
	.type	eyeAnimation1, %function
eyeAnimation1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #44
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	ldr	r3, [fp, #-44]
	bic	r3, r3, #129
	cmp	r3, #0
	bne	.L8
	ldr	r3, [fp, #-44]
	and	r3, r3, #128
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #88
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-22]	@ movhi
	ldr	r3, [fp, #-40]
	add	r3, r3, #44
	ldr	r3, [r3]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	add	r3, r3, #44
	ldr	r3, [r3]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3, #22]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	rsb	r3, r3, #4
	str	r3, [fp, #-16]
	ldr	r3, .L9
	ldr	r0, [fp, #-28]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L4
	ldr	r3, [fp, #-16]
	rsb	r3, r3, #0
	str	r3, [fp, #-16]
.L4:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-32]
	ldrb	r2, [r2, #27]
	mov	r2, r2, asl #24
	mov	r2, r2, asr #24
	mov	r2, r2, asr #7
	and	r2, r2, #255
	mov	r2, r2, asl #24
	mov	r2, r2, asr #24
	rsb	r2, r2, #1
	mul	r2, r3, r2
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3, #27]
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	mov	r3, r3, asr #7
	and	r3, r3, #255
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	ldr	r1, [fp, #-16]
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, #52
	ldr	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r2, r3
	sub	r3, r3, #16
	mov	r3, r3, asl #23
	mov	r3, r3, lsr #23
	str	r3, [fp, #-16]
	ldr	r3, .L9
	ldr	r0, [fp, #-28]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L5
	ldr	r3, [fp, #-16]
	add	r3, r3, #4096
	str	r3, [fp, #-16]
.L5:
	ldr	r3, .L9
	ldr	r0, [fp, #-28]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	and	r3, r3, #1024
	rsb	r3, r3, #0
	mov	r3, r3, asr #31
	and	r2, r3, #1024
	ldr	r3, [fp, #-28]
	add	r3, r3, #54
	ldrh	r3, [r3]
	mov	r0, r3
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3, #23]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	mov	r3, r3, asl #3
	ldr	r1, [fp, #-32]
	ldrb	r1, [r1, #27]
	mov	r1, r1, asl #24
	mov	r1, r1, asr #24
	mov	r1, r1, asr #7
	and	r1, r1, #255
	mov	r1, r1, asl #24
	mov	r1, r1, asr #24
	rsb	r1, r1, #1
	mul	r3, r1, r3
	add	r1, r0, r3
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3, #23]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	ldr	r0, [fp, #-32]
	ldrb	r0, [r0, #27]
	mov	r0, r0, asl #24
	mov	r0, r0, asr #24
	mov	r0, r0, asr #7
	and	r0, r0, #255
	mov	r0, r0, asl #24
	mov	r0, r0, asr #24
	mul	r3, r0, r3
	add	r3, r1, r3
	and	r3, r3, #255
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L6
	ldr	r3, .L9
	ldr	r0, [fp, #-28]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L7
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	str	r3, [fp, #-16]
.L7:
	ldr	r3, [fp, #-28]
	add	r3, r3, #65
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r0, r3, asr #24
	ldr	r3, [fp, #-28]
	add	r3, r3, #60
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r2, r3, asr #16
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	add	r3, r3, #2
	str	r3, [sp]
	ldr	r4, .L9+4
	ldr	r3, .L9+8
	ldr	r2, [fp, #-36]
	ldr	r1, [fp, #-16]
	mov	lr, pc
	bx	r4
	b	.L1
.L6:
	ldr	r3, [fp, #-28]
	add	r3, r3, #65
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r0, r3, asr #24
	ldr	r3, [fp, #-28]
	add	r3, r3, #60
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r2, r3, asr #16
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	str	r3, [sp]
	ldr	r4, .L9+4
	ldr	r3, .L9+12
	ldr	r2, [fp, #-36]
	ldr	r1, [fp, #-16]
	mov	lr, pc
	bx	r4
	b	.L1
.L8:
	mov	r0, r0	@ nop
.L1:
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	134240165
	.word	134239273
	.word	140054348
	.word	140054412
	.size	eyeAnimation1, .-eyeAnimation1
	.align	2
	.global	eyeAnimation2
	.type	eyeAnimation2, %function
eyeAnimation2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #44
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	ldr	r3, [fp, #-40]
	add	r3, r3, #44
	ldr	r3, [r3]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	add	r3, r3, #44
	ldr	r3, [r3]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-44]
	and	r3, r3, #128
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-44]
	and	r3, r3, #1
	rsb	r3, r3, #2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-44]
	bic	r3, r3, #129
	cmp	r3, #0
	beq	.L12
	mov	r3, #0
	str	r3, [fp, #-16]
.L12:
	ldr	r3, [fp, #-32]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r0, [r3, #4]
	ldr	r3, [fp, #-28]
	add	r3, r3, #60
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r3, #92
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	add	r3, r3, #3145728
	add	r3, r3, #2048
	mov	r1, r3, asl #5
	ldr	r4, .L23
	mov	r3, #2
	mov	r2, #4
	mov	lr, pc
	bx	r4
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3, #22]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	rsb	r3, r3, #4
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L13
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L13:
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3, #27]	@ zero_extendqisi2
	bic	r3, r3, #127
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L14
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	str	r3, [fp, #-20]
.L14:
	ldr	r3, .L23+4
	ldr	r0, [fp, #-28]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L15
	ldr	r3, [fp, #-20]
	rsb	r3, r3, #0
	str	r3, [fp, #-20]
.L15:
	ldr	r3, [fp, #-28]
	add	r3, r3, #52
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r2, r3, asr #16
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	sub	r3, r3, #16
	mov	r3, r3, asl #23
	mov	r3, r3, lsr #23
	str	r3, [fp, #-20]
	ldr	r3, .L23+4
	ldr	r0, [fp, #-28]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L16
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	str	r3, [fp, #-20]
.L16:
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3, #23]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3, #27]	@ zero_extendqisi2
	bic	r3, r3, #127
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L17
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	str	r3, [fp, #-24]
.L17:
	ldr	r3, [fp, #-28]
	add	r3, r3, #54
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r2, r3, asr #16
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	and	r4, r3, #255
	ldr	r3, .L23+4
	ldr	r0, [fp, #-28]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	and	r3, r3, #1024
	rsb	r3, r3, #0
	mov	r3, r3, asr #31
	and	r3, r3, #1024
	add	r3, r4, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L18
	ldr	r3, .L23+4
	ldr	r0, [fp, #-28]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L18
	ldr	r3, [fp, #-20]
	add	r3, r3, #18
	str	r3, [fp, #-20]
.L18:
	ldr	r3, [fp, #-28]
	add	r3, r3, #65
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r0, r3, asr #24
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L19
	ldr	r1, .L23+8
	b	.L20
.L19:
	ldr	r1, .L23+12
.L20:
	ldr	r3, [fp, #-28]
	add	r3, r3, #60
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r2, r3, #92
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L21
	mov	r3, #2
	b	.L22
.L21:
	mov	r3, #0
.L22:
	add	r3, r2, r3
	str	r3, [sp]
	ldr	r4, .L23+16
	mov	r3, r1
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	mov	lr, pc
	bx	r4
	mov	r0, r0	@ nop
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	134295541
	.word	134240165
	.word	140054348
	.word	140054412
	.word	134239273
	.size	eyeAnimation2, .-eyeAnimation2
	.align	2
	.global	eyeAnimation3
	.type	eyeAnimation3, %function
eyeAnimation3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #36
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	ldr	r3, [fp, #-40]
	add	r3, r3, #44
	ldr	r3, [r3]
	add	r3, r3, #44
	ldr	r3, [r3]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-44]
	bic	r3, r3, #129
	cmp	r3, #0
	beq	.L26
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L27
.L30:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L28
.L29:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #4]
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	ldr	r2, [fp, #-16]
	mul	r2, r3, r2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r3, r3, asl #5
	add	r0, r1, r3
	ldr	r3, [fp, #-40]
	add	r3, r3, #44
	ldr	r3, [r3]
	add	r3, r3, #60
	ldrh	r3, [r3]
	mov	ip, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	ldr	r1, [fp, #-16]
	mul	r1, r3, r1
	ldr	r3, [fp, #-20]
	add	r3, r1, r3
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, ip, r3
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	add	r3, r3, #3145728
	add	r3, r3, #2048
	mov	r1, r3, asl #5
	ldr	r4, .L41
	mov	r3, #1
	mov	r2, #1
	mov	lr, pc
	bx	r4
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L28:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r2, r3, asr #24
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bgt	.L29
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L27:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r2, r3, asr #24
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bgt	.L30
	b	.L25
.L26:
	ldr	r3, [fp, #-44]
	and	r3, r3, #128
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-44]
	and	r3, r3, #1
	rsb	r3, r3, #2
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L32
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r2, r3, asr #24
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	rsb	r3, r3, r2
	str	r3, [fp, #-16]
	b	.L33
.L36:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r2, r3, asr #24
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	rsb	r3, r3, r2
	str	r3, [fp, #-20]
	b	.L34
.L35:
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	ldr	r2, [fp, #-16]
	mul	r2, r3, r2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r3, r3, asl #5
	add	r0, r1, r3
	ldr	r3, [fp, #-40]
	add	r3, r3, #44
	ldr	r3, [r3]
	add	r3, r3, #60
	ldrh	r3, [r3]
	mov	ip, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	ldr	r1, [fp, #-16]
	mul	r1, r3, r1
	ldr	r3, [fp, #-20]
	add	r3, r1, r3
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, ip, r3
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	add	r3, r3, #3145728
	add	r3, r3, #2048
	mov	r1, r3, asl #5
	ldr	r4, .L41
	mov	r3, #1
	mov	r2, #1
	mov	lr, pc
	bx	r4
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L34:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r2, r3, asr #24
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bgt	.L35
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L33:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r2, r3, asr #24
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bgt	.L36
	b	.L25
.L32:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L37
.L40:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L38
.L39:
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	ldr	r2, [fp, #-16]
	mul	r2, r3, r2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r3, r3, asl #5
	add	r0, r1, r3
	ldr	r3, [fp, #-40]
	add	r3, r3, #44
	ldr	r3, [r3]
	add	r3, r3, #60
	ldrh	r3, [r3]
	mov	ip, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	ldr	r1, [fp, #-16]
	mul	r1, r3, r1
	ldr	r3, [fp, #-20]
	add	r3, r1, r3
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, ip, r3
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	add	r3, r3, #3145728
	add	r3, r3, #2048
	mov	r1, r3, asl #5
	ldr	r4, .L41
	mov	r3, #1
	mov	r2, #1
	mov	lr, pc
	bx	r4
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L38:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r2, r3, asr #24
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bgt	.L39
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L37:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r2, r3, asr #24
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bgt	.L40
.L25:
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	134295541
	.size	eyeAnimation3, .-eyeAnimation3
	.section	.callEyeAnimation,"ax",%progbits
	.align	2
	.global	callEyeAnimation
	.type	callEyeAnimation, %function
callEyeAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r3, r3, #44
	ldr	r3, [r3]
	add	r3, r3, #44
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	sub	r3, r3, #1
	ldr	r2, .L44
	ldr	r3, [r2, r3, asl #2]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	mov	lr, pc
	bx	r3
	mov	r0, r0	@ nop
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	eyeAnimation
	.size	callEyeAnimation, .-callEyeAnimation
	.text
	.align	2
	.global	drawStatScreenPortrait
	.type	drawStatScreenPortrait, %function
drawStatScreenPortrait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #36
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L56
	ldr	r3, .L57
	ldr	r0, [fp, #-36]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r0, [r3, #8]
	ldr	r3, [fp, #-44]
	mov	r1, r3, asl #5
	ldr	r3, .L57+4
	mov	r2, #32
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L49
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	ldr	r3, [fp, #-40]
	add	r3, r3, #3145728
	mov	r1, r3, asl #5
	ldr	r3, .L57+8
	mov	r0, r2
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-24]
	ldr	r0, [r3, #8]
	ldr	r3, [fp, #-44]
	mov	r1, r3, asl #5
	ldr	r3, .L57+4
	mov	r2, #32
	mov	lr, pc
	bx	r3
	ldr	r3, .L57+12
	ldr	r0, [fp, #-36]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	mov	r3, r3, asl #24
	cmp	r3, #0
	beq	.L50
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #26]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L50
	ldr	r3, .L57+16
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #12
	mov	r2, r3, asl #16
	mov	r2, r2, lsr #16
	ldr	r3, [fp, #-40]
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	add	r2, r2, r3
	ldr	r3, .L57+20
	ldr	r0, [fp, #-32]
	mov	lr, pc
	bx	r3
	b	.L51
.L50:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #26]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	ldr	r2, .L57+16
	ldr	r1, [r2, r3, asl #2]
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #12
	mov	r2, r3, asl #16
	mov	r2, r2, lsr #16
	ldr	r3, [fp, #-40]
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	add	r2, r2, r3
	ldr	r3, .L57+20
	ldr	r0, [fp, #-32]
	mov	lr, pc
	bx	r3
.L51:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L52
.L55:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L53
.L54:
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #5
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-32]
	add	r0, r2, r3
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #5
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	lr, r3, lsr #16
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #27]
	mov	r3, r3, asl #1
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	mov	r3, r3, asr #1
	and	r3, r3, #255
	mov	r3, r3, asl #24
	mov	r1, r3, asr #24
	ldr	ip, .L57+24
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	mov	r2, r1
	mov	r2, r2, asl #1
	add	r2, r2, r1
	mov	r1, r2, asl #4
	rsb	r1, r2, r1
	mov	r2, r1, asl #1
	mov	r1, r2
	add	r2, r3, r1
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r3, r3, asl #1
	add	r3, ip, r3
	ldrh	r3, [r3]
	rsb	r3, r3, #0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, lr	@ movhi
	and	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L53:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	ble	.L54
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L52:
	ldr	r3, [fp, #-16]
	cmp	r3, #8
	ble	.L55
	b	.L46
.L49:
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-40]
	add	r3, r3, #3145728
	mov	r1, r3, asl #5
	ldr	r3, .L57+8
	mov	r0, r2
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-44]
	mov	r2, r3, asl #12
	ldr	r3, [fp, #-40]
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	add	r1, r2, r3
	ldr	r4, .L57+28
	mov	r3, #9
	mov	r2, #10
	ldr	r0, [fp, #-32]
	mov	lr, pc
	bx	r4
	b	.L46
.L56:
	mov	r0, r0	@ nop
.L46:
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
.L58:
	.align	2
.L57:
	.word	134239509
	.word	134221241
	.word	134295377
	.word	134241317
	.word	statScreenPortraitTemplate
	.word	135099553
	.word	statScreenPortraitMask
	.word	134295813
	.size	drawStatScreenPortrait, .-drawStatScreenPortrait
	.section	.callDrawStatScreenPortrait,"ax",%progbits
	.align	2
	.global	callDrawStatScreenPortrait
	.type	callDrawStatScreenPortrait, %function
callDrawStatScreenPortrait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	ldr	r4, .L60
	mov	lr, pc
	bx	r4
	mov	r0, r0	@ nop
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	drawStatScreenPortrait
	.size	callDrawStatScreenPortrait, .-callDrawStatScreenPortrait
	.text
	.align	2
	.global	drawDialoguePortrait
	.type	drawDialoguePortrait, %function
drawDialoguePortrait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	add	r3, r3, #44
	ldr	r3, [r3]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r3, r3, #48
	ldr	r2, [r3]
	ldr	r3, .L73
	and	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #2048
	beq	.L63
	ldr	r3, [fp, #-16]
	ldr	r2, .L73+4
	cmp	r3, r2
	bne	.L64
.L63:
	ldr	r3, [fp, #-24]
	add	r2, r3, #56
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3, #25]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	cmp	r3, #3
	movge	r3, r3
	movlt	r3, #3
	and	r3, r3, #255
	mov	r3, r3, asl #24
	mov	r1, r3, asr #24
	ldr	r3, [fp, #-16]
	and	r3, r3, #1
	ldr	r0, .L73+8
	mov	r1, r1, asl #1
	add	r3, r1, r3
	ldr	r3, [r0, r3, asl #2]
	str	r3, [r2]
	b	.L65
.L64:
	ldr	r3, [fp, #-16]
	cmp	r3, #5
	bhi	.L65
	ldr	r3, [fp, #-24]
	add	r1, r3, #56
	ldr	r3, [fp, #-16]
	mov	r2, r3, lsr #1
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3, #25]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	cmp	r2, r3
	movcs	r2, r2
	movcc	r2, r3
	ldr	r3, [fp, #-16]
	and	r3, r3, #1
	ldr	r0, .L73+8
	mov	r2, r2, asl #1
	add	r3, r2, r3
	ldr	r3, [r0, r3, asl #2]
	str	r3, [r1]
.L65:
	ldr	r3, [fp, #-24]
	add	r3, r3, #48
	ldr	r3, [r3]
	and	r3, r3, #960
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #128
	bne	.L66
	mov	r3, #1024
	strh	r3, [fp, #-6]	@ movhi
	b	.L67
.L66:
	ldr	r3, [fp, #-20]
	cmp	r3, #128
	bls	.L68
	ldr	r3, [fp, #-20]
	cmp	r3, #512
	bne	.L72
	mov	r3, #3072
	strh	r3, [fp, #-6]	@ movhi
	b	.L67
.L68:
	ldr	r3, [fp, #-20]
	cmp	r3, #64
	beq	.L71
	b	.L70
.L72:
	mov	r0, r0	@ nop
.L70:
	mov	r3, #2048
	strh	r3, [fp, #-6]	@ movhi
	b	.L67
.L71:
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L67:
	ldr	r3, [fp, #-24]
	add	r2, r3, #60
	ldr	r3, [fp, #-24]
	add	r3, r3, #64
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	mov	r1, r3, asl #3
	ldr	r3, .L73+12
	add	r3, r1, r3
	ldr	r3, [r3]
	mov	r3, r3, asr #5
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, [fp, #-24]
	add	r3, r3, #64
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r0, r3, asr #24
	ldr	r3, .L73+16
	add	r3, r0, r3
	mov	r3, r3, asl #3
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r1, r3
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-6]
	add	r3, r1, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r2]	@ movhi
	mov	r0, r0	@ nop
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L74:
	.align	2
.L73:
	.word	2055
	.word	2049
	.word	dialoguePortraitTemplate
	.word	33728140
	.word	4216018
	.size	drawDialoguePortrait, .-drawDialoguePortrait
	.section	.callDrawDialoguePortrait,"ax",%progbits
	.align	2
	.global	callDrawDialoguePortrait
	.type	callDrawDialoguePortrait, %function
callDrawDialoguePortrait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	ldr	r3, .L76
	mov	lr, pc
	bx	r3
	mov	r0, r0	@ nop
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L77:
	.align	2
.L76:
	.word	drawDialoguePortrait
	.size	callDrawDialoguePortrait, .-callDrawDialoguePortrait
	.text
	.align	2
	.global	mouthAnimation
	.type	mouthAnimation, %function
mouthAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #44
	str	r0, [fp, #-40]
	ldr	r3, [fp, #-40]
	add	r3, r3, #44
	ldr	r3, [r3]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	add	r3, r3, #44
	ldr	r3, [r3]
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r3, .L91
	ldr	r0, [fp, #-28]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L79
	mov	r3, #24
	str	r3, [fp, #-16]
.L79:
	ldr	r3, .L91
	ldr	r0, [fp, #-28]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	and	r3, r3, #48
	cmp	r3, #0
	beq	.L80
	ldr	r3, [fp, #-40]
	add	r3, r3, #50
	ldrh	r2, [r3]
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	sub	r2, r2, #1
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3]	@ movhi
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #0
	bge	.L90
	ldr	r3, [fp, #-40]
	add	r4, r3, #50
	ldr	r3, .L91+4
	mov	lr, pc
	bx	r3
	mov	r3, r0
	mov	r3, r3, asr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r4]	@ movhi
	ldr	r3, [fp, #-40]
	add	r3, r3, #48
	ldr	r2, [fp, #-40]
	add	r2, r2, #48
	ldrh	r2, [r2]
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r2, #1
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	and	r2, r2, #3
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-40]
	add	r3, r3, #48
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #1
	beq	.L83
	ldr	r3, [fp, #-40]
	add	r3, r3, #48
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #3
	bne	.L84
.L83:
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	str	r3, [fp, #-16]
.L84:
	ldr	r3, [fp, #-40]
	add	r3, r3, #48
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #2
	bne	.L85
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	str	r3, [fp, #-16]
.L85:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #5
	add	r0, r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, #60
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r3, #28
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	add	r3, r3, #3145728
	add	r3, r3, #2048
	mov	r1, r3, asl #5
	ldr	r4, .L91+8
	mov	r3, #2
	mov	r2, #4
	mov	lr, pc
	bx	r4
	b	.L82
.L80:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	mov	r3, r3, asl #5
	add	r0, r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, #60
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r3, #28
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	add	r3, r3, #3145728
	add	r3, r3, #2048
	mov	r1, r3, asl #5
	ldr	r4, .L91+8
	mov	r3, #2
	mov	r2, #4
	mov	lr, pc
	bx	r4
	b	.L82
.L90:
	mov	r0, r0	@ nop
.L82:
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	rsb	r3, r3, #4
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3, #27]	@ zero_extendqisi2
	bic	r3, r3, #127
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L86
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	str	r3, [fp, #-20]
.L86:
	ldr	r3, .L91
	ldr	r0, [fp, #-28]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L87
	ldr	r3, [fp, #-20]
	rsb	r3, r3, #0
	str	r3, [fp, #-20]
.L87:
	ldr	r3, [fp, #-28]
	add	r3, r3, #52
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r2, r3, asr #16
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	sub	r3, r3, #16
	mov	r3, r3, asl #23
	mov	r3, r3, lsr #23
	str	r3, [fp, #-20]
	ldr	r3, .L91
	ldr	r0, [fp, #-28]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L88
	ldr	r3, [fp, #-20]
	add	r3, r3, #4096
	str	r3, [fp, #-20]
.L88:
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3, #27]	@ zero_extendqisi2
	bic	r3, r3, #127
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L89
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	str	r3, [fp, #-24]
.L89:
	ldr	r3, [fp, #-28]
	add	r3, r3, #54
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r2, r3, asr #16
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	and	r4, r3, #255
	ldr	r3, .L91
	ldr	r0, [fp, #-28]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	and	r3, r3, #1024
	rsb	r3, r3, #0
	mov	r3, r3, asr #31
	and	r3, r3, #1024
	add	r3, r4, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-28]
	add	r3, r3, #65
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r3, r3, asl #24
	mov	r0, r3, asr #24
	ldr	r3, [fp, #-28]
	add	r3, r3, #60
	ldrh	r3, [r3]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	add	r3, r3, #28
	str	r3, [sp]
	ldr	r4, .L91+12
	ldr	r3, .L91+16
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	mov	lr, pc
	bx	r4
	mov	r0, r0	@ nop
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	134240165
	.word	134221033
	.word	134295541
	.word	134239273
	.word	140054412
	.size	mouthAnimation, .-mouthAnimation
	.section	.callMouthAnimation,"ax",%progbits
	.align	2
	.global	callMouthAnimation
	.type	callMouthAnimation, %function
callMouthAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	ldr	r3, .L94
	mov	lr, pc
	bx	r3
	mov	r0, r0	@ nop
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L95:
	.align	2
.L94:
	.word	mouthAnimation
	.size	callMouthAnimation, .-callMouthAnimation
	.ident	"GCC: (devkitARM release 45) 5.3.0"
