.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data 
arr: .space 24

.text
.global main
.type main, %function
main:
.L0 :
	push {r10,fp}
	sub sp,sp,#84
	add fp,sp,#0
	mov r5,#0
	mov r6,#4
	mul r6,r5,r6
	str r6,[fp,#12]
	movw r5,#:lower16:arr
	movt r5,#:upper16:arr
	ldr r6,[fp,#12]
	add r6,r5,r6
	str r6,[fp,#16]
	mov r5,#1
	ldr r4,[fp,#16]
	str r5,[r4]
	mov r5,#1
	mov r6,#4
	mul r6,r5,r6
	str r6,[fp,#20]
	movw r5,#:lower16:arr
	movt r5,#:upper16:arr
	ldr r6,[fp,#20]
	add r6,r5,r6
	str r6,[fp,#24]
	mov r5,#2
	ldr r4,[fp,#24]
	str r5,[r4]
	mov r5,#2
	mov r6,#4
	mul r6,r5,r6
	str r6,[fp,#28]
	movw r5,#:lower16:arr
	movt r5,#:upper16:arr
	ldr r6,[fp,#28]
	add r6,r5,r6
	str r6,[fp,#32]
	mov r5,#33
	ldr r4,[fp,#32]
	str r5,[r4]
	mov r5,#3
	mov r6,#4
	mul r6,r5,r6
	str r6,[fp,#36]
	movw r5,#:lower16:arr
	movt r5,#:upper16:arr
	ldr r6,[fp,#36]
	add r6,r5,r6
	str r6,[fp,#40]
	mov r5,#4
	ldr r4,[fp,#40]
	str r5,[r4]
	mov r5,#4
	mov r6,#4
	mul r6,r5,r6
	str r6,[fp,#44]
	movw r5,#:lower16:arr
	movt r5,#:upper16:arr
	ldr r6,[fp,#44]
	add r6,r5,r6
	str r6,[fp,#48]
	mov r5,#5
	ldr r4,[fp,#48]
	str r5,[r4]
	mov r5,#5
	mov r6,#4
	mul r6,r5,r6
	str r6,[fp,#52]
	movw r5,#:lower16:arr
	movt r5,#:upper16:arr
	ldr r6,[fp,#52]
	add r6,r5,r6
	str r6,[fp,#56]
	mov r5,#6
	ldr r4,[fp,#56]
	str r5,[r4]
	mov r5,#0
	str r5,[fp,#4]
	mov r5,#0
	str r5,[fp,#8]
.L2 :
	ldr r5,[fp,#4]
	mov r6,#6
	cmp r5,r6
	blt .L3
	b .L4
.L3 :
	ldr r5,[fp,#4]
	mov r6,#4
	mul r6,r5,r6
	str r6,[fp,#64]
	movw r5,#:lower16:arr
	movt r5,#:upper16:arr
	ldr r6,[fp,#64]
	add r6,r5,r6
	str r6,[fp,#68]
	ldr r5,[fp,#68]
	ldr r5,[r5]
	str r5,[fp,#72]
	ldr r5,[fp,#8]
	ldr r6,[fp,#72]
	add r6,r5,r6
	str r6,[fp,#76]
	ldr r5,[fp,#76]
	str r5,[fp,#8]
	ldr r5,[fp,#4]
	mov r6,#1
	add r6,r5,r6
	str r6,[fp,#80]
	ldr r5,[fp,#80]
	str r5,[fp,#4]
	b .L2
.L4 :
	ldr r5,[fp,#8]
	str r5,[fp]
	b .L1
.L1 :
	ldr r0,[fp]
	mov r4,#84
	add fp,fp,r4
	mov sp,fp
	pop {r10,fp}
	bx lr
