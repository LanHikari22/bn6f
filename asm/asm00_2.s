.include "asm/asm00_2.inc"

.func
.thumb_func
sub_800ED80:
	ldr R1, [R0,#0x7C]
	ldr R2, off_800ED8C // =byte_203F6A0 
	ldr R3, [R2]
	bic R3, R1
	str R3, [R2]
	mov PC, LR
off_800ED8C: .word byte_203F6A0
.endfunc // sub_800ED80

.func
.thumb_func
sub_800ED90:
	push {r5,r7,lr}
	add r5, r0, #0
	ldrh R0, [R5,#0x28]
	bl sub_800F29C
	cmp R0, #2
	bne loc_800EDC6
	ldrb R0, [R5,#0x16]
	bl sub_8010018
	ldrb R1, [R0]
	add r1, r1, r1
	add r0, r0, r1
	add R0, #2
	add r7, r0, #0
	ldrh R0, [R7]
	mov R1, #0
	bl sub_800EF34
	ldrh R2, [R7,#0x18]
	add r2, r2, r0
	ldrh R0, [R7,#0x24]
	add r2, r2, r0
	ldrh R1, [R7,#0xC]
	ldrh R0, [R7]
	ldrb R3, [R5,#0x1A]
	pop {r5,r7,pc}
loc_800EDC6:
	ldrh R0, [R5,#0x2A]
	mov R1, #0
	mov R2, #0
	ldrb R3, [R5,#0x1A]
	pop {r5,r7,pc}
.endfunc // sub_800ED90

.func
.thumb_func
sub_800EDD0:
	push {R5-R7,lr}
	sub sp, sp, #4
	str R1, [SP]
	add r5, r0, #0
	ldrh R0, [R5,#0x28]
	bl sub_800F29C
	cmp R0, #2
	bne loc_800EE1A
	ldrb R0, [R5,#0x16]
	bl sub_8010018
	add r4, r0, #0
	ldrb R6, [R0]
	add r1, r6, r6
	add r0, r0, r1
	add R0, #2
	add r7, r0, #0
	ldrh R0, [R7]
	ldr R1, [SP]
	bl sub_800EF34
	add r3, r1, #0
	ldrh R2, [R7,#0x18]
	add r2, r2, r0
	ldrh R0, [R7,#0x24]
	add r2, r2, r0
	ldrh R1, [R7,#0xC]
	ldrh R0, [R7]
	mov r7, #0x44 
	add r7, r7, r6
	ldrb R7, [R4,R7]
	add r6, #0x3e 
	ldrb R4, [R4,R6]
	lsl r4, r4, #8
	add r4, r4, r7
	b loc_800EE22
loc_800EE1A:
	ldrh R0, [R5,#0x2A]
	mov R1, #0
	mov R2, #0
	ldrb R3, [R5,#0x1A]
loc_800EE22:
	add sp, sp, #4
	pop {R5-R7,pc}
.endfunc // sub_800EDD0

.func
.thumb_func
sub_800EE26:
	push {R5-R7,lr}
	add r5, r0, #0
	ldrh R0, [R5,#0x28]
	bl sub_800F29C
	cmp R0, #2
	bne loc_800EE8E
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	add r6, r0, #0
	bl sub_800EE98
	ldrh R0, [R6,#0x34]
	mov R1, #0
	bl sub_800EF34
	push {r0,r1}
	// idx
	ldrh R0, [R6,#0x34]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#0xF]
	strb R0, [R7,#0x1D]
	ldrh R0, [R6,#0x34]
	ldrb R1, [R5,#0x16]
	bl sub_80109A4
	add r1, r0, #0
	pop {r2,r3}
	push {R1-R3}
	// idx
	ldrh R0, [R6,#0x34]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#9]
	pop {R1-R3}
	mov R4, #2
	tst R0, R4
	beq loc_800EE7A
	ldrh R4, [R6,#0x36]
	add r2, r2, r4
	mov R4, #0
	strh R4, [R6,#0x36]
loc_800EE7A:
	mov R4, #4
	tst R0, R4
	beq loc_800EE88
	ldrh R4, [R6,#0x38]
	add r2, r2, r4
	mov R4, #0
	strh R4, [R6,#0x38]
loc_800EE88:
	mov R4, #0
	ldrh R0, [R6,#0x34]
	b locret_800EE96
loc_800EE8E:
	ldrh R0, [R5,#0x2A]
	mov R1, #0
	mov R2, #0
	ldrb R3, [R5,#0x1A]
locret_800EE96:
	pop {R5-R7,pc}
.endfunc // sub_800EE26

.func
.thumb_func
sub_800EE98:
	push {R0-R4,lr}
	ldrb R0, [R5,#0x16]
	ldrh R1, [R6,#0x34]
	bl sub_802E830
	add r4, r0, #0
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	tst R0, R0
	bne loc_800EEBA
	add r0, r4, #0
	bl sub_801E2BA
	mov R0, #0x8D
	bl sound_play // () -> void
loc_800EEBA:
	// idx
	ldrh R0, [R6,#0x34]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r4, r0, #0
	ldrb R0, [R4,#0x16] // ChipData.unk_16
	mov R1, #0x80
	tst R0, R1
	bne locret_800EEE2
	ldrb R0, [R4,#0x7] // ChipData.elemIdx
	add r0, r0, r0
	ldr R1, off_800EEF4 // =byte_800EEF8 
	ldrh R0, [R1,R0]
	ldr R2, off_800EEF0 // =unk_200F3C4 
	add r3, r6, r6
	strh R0, [R2,R3]
	ldrh R1, [R6,#0x28]
	sub r1, r1, r0
	bge loc_800EEE0
	mov R1, #0
loc_800EEE0:
	strh R1, [R6,#0x28]
locret_800EEE2:
	pop {R0-R4,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
off_800EEF0: .word unk_200F3C4
off_800EEF4: .word byte_800EEF8
byte_800EEF8: .byte 0x0, 0x15, 0x0, 0x2A, 0x0, 0x40, 0xFF, 0xFF, 0xFF, 0xFF
.endfunc // sub_800EE98

.func
.thumb_func
sub_800EF02:
	push {R5-R7,lr}
	add r6, r0, #0
	ldrh R0, [R5,#0x28]
	bl sub_800F29C
	cmp R0, #2
	bne loc_800EF2A
	add r0, r6, #0
	mov R1, #0
	bl sub_800EF34
	push {r0,r1}
	add r0, r6, #0
	ldrb R1, [R5,#0x16]
	bl sub_80109A4
	add r1, r0, #0
	pop {r2,r3}
	add r0, r6, #0
	b locret_800EF32
loc_800EF2A:
	ldrh R0, [R5,#0x2A]
	mov R1, #0
	mov R2, #0
	ldrb R3, [R5,#0x1A]
locret_800EF32:
	pop {R5-R7,pc}
.endfunc // sub_800EF02

.func
.thumb_func
sub_800EF34:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str R1, [SP]
	add r4, r0, #0
	mov R6, #0
	mov R7, #0
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0
	beq loc_800EF54
	add r0, r4, #0
	ldr R1, [SP]
	bl sub_800F09E
	b loc_800F094
loc_800EF54:
	ldr R0, dword_800F208 // =0xFFFF 
	cmp R0, R4
	bne loc_800EF5C
	b loc_800F090
loc_800EF5C:
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #1
	beq loc_800EF6A
	cmp R0, #0xD
	bne loc_800EF8E
loc_800EF6A:
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800EF8C
	ldrb R1, [R0,#6]
	cmp R1, #0
	bne loc_800EF8C
	ldrb R1, [R0,#9]
	mov R2, #1
	tst R1, R2
	bne loc_800EF8C
	mov R7, #2
	add r6, #0x32 
	b loc_800F090
loc_800EF8C:
	b loc_800F058
loc_800EF8E:
	cmp R0, #0xE
	beq loc_800EF96
	cmp R0, #2
	bne loc_800EFB8
loc_800EF96:
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800F058
	ldrb R1, [R0,#6]
	cmp R1, #2
	bne loc_800F058
	ldrb R1, [R0,#9]
	mov R2, #1
	tst R1, R2
	bne loc_800F058
	mov R7, #6
	add r6, #0x32 
	b loc_800F090
loc_800EFB8:
	cmp R0, #0xF
	beq loc_800EFC0
	cmp R0, #3
	bne loc_800EFE2
loc_800EFC0:
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800F058
	ldrb R1, [R0,#6]
	cmp R1, #5
	bne loc_800F058
	ldrb R1, [R0,#9]
	mov R2, #1
	tst R1, R2
	bne loc_800F058
	mov R7, #6
	add r6, #0x32 
	b loc_800F090
loc_800EFE2:
	cmp R0, #0x14
	beq loc_800EFEA
	cmp R0, #8
	bne loc_800F00C
loc_800EFEA:
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800F058
	ldrb R1, [R0,#6]
	cmp R1, #8
	bne loc_800F058
	ldrb R1, [R0,#9]
	mov R2, #1
	tst R1, R2
	bne loc_800F058
	mov R7, #7
	add R6, #0xA
	b loc_800F090
loc_800F00C:
	cmp R0, #0x10
	beq loc_800F014
	cmp R0, #4
	bne loc_800F02E
loc_800F014:
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800F058
	ldrb R1, [R0,#6]
	cmp R1, #6
	bne loc_800F058
	mov R7, #8
	add R6, #0x1E
	b loc_800F090
loc_800F02E:
	cmp R0, #0x15
	beq loc_800F036
	cmp R0, #9
	bne loc_800F058
loc_800F036:
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800F058
	ldrb R1, [R0,#6]
	cmp R1, #9
	bne loc_800F058
	ldrb R1, [R0,#9]
	mov R2, #1
	tst R1, R2
	bne loc_800F058
	mov R7, #8
	add R6, #0xA
	b loc_800F090
loc_800F058:
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0xB
	blt loc_800F090
	cmp R0, #0x16
	bgt loc_800F090
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800F090
	ldrb R1, [R0,#6]
	cmp R1, #0xA
	bne loc_800F090
	ldrb R1, [R0,#9]
	mov R2, #1
	tst R1, R2
	bne loc_800F090
	bl sub_802D234
	cmp R0, #1
	beq loc_800F090
	mov R7, #9
	add R6, #0x1E
	b loc_800F090
loc_800F090:
	add r0, r6, #0
	add r1, r7, #0
loc_800F094:
	add r2, r4, #0
	bl sub_800F1DC
	add sp, sp, #4
	pop {r4,r6,r7,pc}
.endfunc // sub_800EF34

.func
.thumb_func
sub_800F09E:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str R1, [SP]
	add r4, r0, #0
	mov R6, #0
	mov R7, #0
	ldr R0, dword_800F208 // =0xFFFF 
	cmp R0, R4
	beq loc_800F0DE
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #1
	bne loc_800F0E0
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800F0DC
	ldrb R1, [R0,#6]
	cmp R1, #0
	bne loc_800F0DC
	ldrb R1, [R0,#9]
	mov R2, #1
	tst R1, R2
	bne loc_800F0DC
	mov R7, #0xC
	add R6, #0
	b loc_800F1BE
loc_800F0DC:
	b loc_800F1D4
loc_800F0DE:
	b loc_800F1D4
loc_800F0E0:
	cmp R0, #2
	bne loc_800F106
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800F1D4
	ldrb R1, [R0,#6]
	cmp R1, #2
	bne loc_800F1D4
	ldrb R1, [R0,#9]
	mov R2, #1
	tst R1, R2
	bne loc_800F1D4
	mov R7, #0xD
	add R6, #0
	b loc_800F1BE
loc_800F106:
	cmp R0, #3
	bne loc_800F12C
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800F1D4
	ldrb R1, [R0,#6]
	cmp R1, #5
	bne loc_800F1D4
	ldrb R1, [R0,#9]
	mov R2, #1
	tst R1, R2
	bne loc_800F1D4
	mov R7, #0xE
	add R6, #0
	b loc_800F1BE
loc_800F12C:
	cmp R0, #4
	bne loc_800F14A
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800F1D4
	ldrb R1, [R0,#6]
	cmp R1, #6
	bne loc_800F1D4
	mov R7, #0xF
	add R6, #0
	b loc_800F1BE
loc_800F14A:
	cmp R0, #8
	bne loc_800F170
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800F1D4
	ldrb R1, [R0,#6]
	cmp R1, #8
	bne loc_800F1D4
	ldrb R1, [R0,#9]
	mov R2, #1
	tst R1, R2
	bne loc_800F1D4
	mov R7, #0x10
	add R6, #0
	b loc_800F1BE
loc_800F170:
	cmp R0, #9
	bne loc_800F196
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800F1D4
	ldrb R1, [R0,#6]
	cmp R1, #9
	bne loc_800F1D4
	ldrb R1, [R0,#9]
	mov R2, #1
	tst R1, R2
	bne loc_800F1D4
	mov R7, #0x11
	add R6, #0
	b loc_800F1BE
loc_800F196:
	cmp R0, #0xA
	bne loc_800F1BC
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_800F1D4
	ldrb R1, [R0,#6]
	cmp R1, #9
	bne loc_800F1D4
	ldrb R1, [R0,#9]
	mov R2, #1
	tst R1, R2
	bne loc_800F1D4
	mov R7, #0x12
	add R6, #0
	b loc_800F1BE
loc_800F1BC:
	b loc_800F1D4
loc_800F1BE:
	bl sub_800F49E
	cmp R0, #0xFF
	beq loc_800F1D4
	add r1, r7, #0
	sub R1, #0xC
	mov R2, #0xF
	mul R1, R2
	add r0, r0, r1
	ldr R1, off_800F20C // =byte_8021300 
	ldrb R6, [R1,R0]
loc_800F1D4:
	add r0, r6, #0
	add r1, r7, #0
	add sp, sp, #4
	pop {r4,r6,r7,pc}
.endfunc // sub_800F09E

.func
.thumb_func
sub_800F1DC:
	push {r1,r6,r7,lr}
	ldr R3, off_800F210 // =0x150 
	cmp R2, R3
	beq loc_800F1EC
	cmp r2, #0x5f 
	blt locret_800F204
	cmp r2, #0x61 
	bgt locret_800F204
loc_800F1EC:
	ldr R3, [R5,#0x54]
	ldrb R2, [R3,#6]
	cmp R2, #0
	beq locret_800F204
	cmp R2, #0x10
	bge locret_800F204
	cmp R2, #8
	bne loc_800F202
	ldrb R2, [R3,#0x16]
	cmp R2, #0
	beq locret_800F204
loc_800F202:
	add r0, #0x32 
locret_800F204:
	pop {r1,r6,r7,pc}
	.balign 4, 0x00
dword_800F208: .word 0xFFFF
off_800F20C: .word byte_8021300
off_800F210: .word 0x150
.endfunc // sub_800F1DC

.func
.thumb_func
sub_800F214:
	push {lr}
	bl sub_80182B4
	ldrb R2, [R0,#1]
	lsl r2, r2, #2
	ldr R1, off_800F22C // =off_800F230 
	ldr R1, [R1,R2]
	ldrb R2, [R0,#2]
	lsl r2, r2, #2
	ldr R0, [R1,R2]
	pop {pc}
	.balign 4, 0x00
off_800F22C: .word off_800F230
off_800F230: .word off_81090D0
	.word off_80F24D8
	.word off_80EA814
.endfunc // sub_800F214

.func
.thumb_func
sub_800F23C:
	push {lr}
	bl sub_80182B4
	ldrb R2, [R0,#1]
	lsl r2, r2, #2
	ldr R1, off_800F25C // =off_800F260 
	ldr R1, [R1,R2]
	ldrb R2, [R0,#2]
	lsl r2, r2, #2
	ldr R1, [R1,R2]
	ldrb R2, [R0]
	mov R3, #6
	mul R2, R3
	add r0, r1, r2
	pop {pc}
	.balign 4, 0x00
off_800F25C: .word off_800F260
off_800F260: .word off_8109150
	.word off_80F253C
	.word loc_80EA8D8
.endfunc // sub_800F23C

.func
.thumb_func
sub_800F26C:
	push {lr}
	mov R2, #0xCD
	sub r2, r0, r2
	mov r1, #0x32 
	cmp R2, R1
	bls loc_800F286
	bl sub_800F214
	ldrb R1, [R0,#1]
	ldrb R0, [R0]
	mov R2, #0
	mov R3, #0
	pop {pc}
loc_800F286:
	sub R0, #0xCD
	mov R1, #5
	mul R0, R1
	ldr R3, off_800F4D4 // =byte_8021220 
	add r3, r3, r0
	ldrb R0, [R3]
	ldrb R1, [R3,#1]
	ldrb R2, [R3,#2]
	ldrb R4, [R3,#4]
	ldrb R3, [R3,#3]
	pop {pc}
.endfunc // sub_800F26C

.func
.thumb_func
sub_800F29C:
	push {lr}
	bl sub_80182B4
	ldrb R2, [R0]
	ldrb R1, [R0,#2]
	ldrb R0, [R0,#1]
	pop {pc}
.endfunc // sub_800F29C

.func
.thumb_func
sub_800F2AA:
	push {lr}
	ldrh R1, [R5,#0x28]
	bl nullsub_3
	pop {pc}
.endfunc // sub_800F2AA

.func
.thumb_func
nullsub_3:
	mov PC, LR
.endfunc // nullsub_3

.func
.thumb_func
sub_800F2B6:
	push {lr}
	ldrh R1, [R5,#0x28]
	bl nullsub_3
	strb R0, [R5,#0x10]
	mov R0, #0xFF
	strb R0, [R5,#0x11]
	pop {pc}
.endfunc // sub_800F2B6

.func
.thumb_func
sub_800F2C6:
	push {lr}
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	ldr R0, [R5,#0x58]
	tst R0, R0
	beq locret_800F2EE
	ldrb R1, [R0]
	cmp R1, #2
	bne loc_800F2EA
	mov R0, #3
	bl sub_8018856
	neg R1, R1
	bl sub_801DC06
	pop {pc}
loc_800F2EA:
	bl sub_801DBD4
locret_800F2EE:
	pop {pc}
.endfunc // sub_800F2C6

.func
.thumb_func
sub_800F2F0:
	push {lr}
	ldr R0, [R5,#0x58]
	ldr R0, [R0,#0x78]
	bl sub_800F2FC
	pop {pc}
.endfunc // sub_800F2F0

.func
.thumb_func
sub_800F2FC:
	push {lr}
	ldrb R1, [R0,#0x12]
	ldrb R2, [R5,#0x12]
	mov R0, #0
	sub r1, r1, r2
	beq locret_800F316
	bgt loc_800F30C
	mov R0, #1
loc_800F30C:
	ldrb R1, [R5,#0x16]
	eor R0, R1
	strb R0, [R5,#0x17]
	bl sub_800F2C6
locret_800F316:
	pop {pc}
.endfunc // sub_800F2FC

.func
.thumb_func
sub_800F318:
	ldr R1, [R5,#0x58]
	tst R1, R1
	beq locret_800F320
	str R0, [R1,#0x78]
locret_800F320:
	mov PC, LR
.endfunc // sub_800F318

.func
.thumb_func
sub_800F322:
	ldrb R0, [R5,#0x1A]
	cmp R0, #0
	beq locret_800F332
	sub R0, #1
	strb R0, [R5,#0x1A]
	bne locret_800F332
	sub R0, #1
	strh R0, [R5,#0x2A]
locret_800F332:
	mov PC, LR
.endfunc // sub_800F322

.func
.thumb_func
sub_800F334:
	ldr R0, [R5,#0x58]
	ldrb R1, [R0]
	ldrb R2, [R0,#0x16]
	ldrb R3, [R0,#3]
	cmp R1, #0
	bne loc_800F346
	mul R2, R3
	add r0, r2, #0
	mov PC, LR
loc_800F346:
	ldr R0, off_800F350 // =byte_800F354 
	ldrb R0, [R0,R2]
	mul R0, R3
	mov PC, LR
	.byte 0, 0
off_800F350: .word byte_800F354
byte_800F354: .byte 0x0, 0x0, 0x0, 0x0, 0x3, 0x1, 0x0, 0x0
.endfunc // sub_800F334

.func
.thumb_func
sub_800F35C:
	push {lr}
	ldr R0, off_800F368 // =off_800F36C 
	bl sub_800F420
	pop {pc}
	.balign 4, 0x00
off_800F368: .word off_800F36C
off_800F36C: .word byte_8109250
	.word off_80F2604
	.word loc_80EA9A0
.endfunc // sub_800F35C

.func
.thumb_func
sub_800F378:
	push {lr}
	ldr R0, pool_800F384 // =off_800F388 
	bl sub_800F420
	pop {pc}
	.balign 4, 0x00
pool_800F384: .word off_800F388
off_800F388: .word byte_81092D0
	.word off_80F2668
	.word loc_80EAA04
.endfunc // sub_800F378

.func
.thumb_func
sub_800F394:
	push {lr}
	ldr R0, off_800F3A0 // =off_800F3A4 
	bl sub_800F420
	pop {pc}
	.balign 4, 0x00
off_800F3A0: .word off_800F3A4
off_800F3A4: .word byte_8109350
	.word off_80F26CC
	.word loc_80EAA68
.endfunc // sub_800F394

.func
.thumb_func
sub_800F3B0:
	push {lr}
	ldr R0, off_800F3BC // =off_800F3C0 
	bl sub_800F420
	pop {pc}
	.balign 4, 0x00
off_800F3BC: .word off_800F3C0
off_800F3C0: .word byte_81093D0
	.word off_80F2730
	.word loc_80EAACC
.endfunc // sub_800F3B0

.func
.thumb_func
sub_800F3CC:
	push {lr}
	ldr R0, off_800F3D8 // =off_800F3DC 
	bl sub_800F420
	pop {pc}
	.balign 4, 0x00
off_800F3D8: .word off_800F3DC
off_800F3DC: .word byte_8109450
	.word off_80F2794
	.word loc_80EAB30
.endfunc // sub_800F3CC

.func
.thumb_func
sub_800F3E8:
	push {lr}
	ldr R0, off_800F3F4 // =off_800F3F8 
	bl sub_800F420
	pop {pc}
	.balign 4, 0x00
off_800F3F4: .word off_800F3F8
off_800F3F8: .word byte_81094D0
	.word off_80F27F8
	.word loc_80EAB94
.endfunc // sub_800F3E8

.func
.thumb_func
sub_800F404:
	push {lr}
	ldr R0, off_800F410 // =off_800F414 
	bl sub_800F420
	pop {pc}
	.balign 4, 0x00
off_800F410: .word off_800F414
off_800F414: .word byte_8109550
	.word byte_80F285C
	.word loc_80EABF8
.endfunc // sub_800F404

.func
.thumb_func
sub_800F420:
	push {lr}
	ldr R3, [R5,#0x58]
	ldrb R1, [R3]
	lsl r1, r1, #2
	ldr R2, [R0,R1]
	ldrb R1, [R3,#1]
	lsl r1, r1, #2
	ldr R0, [R2,R1]
	mov LR, PC
	bx r0
	pop {pc}
.endfunc // sub_800F420

.func
.thumb_func
sub_800F436:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str R2, [SP]
	add r6, r0, #0
	add r7, r1, #0
	bl object_getFlipDirection_800E2CA // () -> int
	add r4, r0, #0
loc_800F446:
	add r6, r6, r4
	add r0, r6, #0
	add r1, r7, #0
	bl object_isValidPanel
	beq loc_800F462
	add r0, r6, #0
	add r1, r7, #0
	bl object_getPanelParameters
	ldr R1, [SP]
	tst R0, R1
	bne loc_800F466
	b loc_800F446
loc_800F462:
	mov R0, #0
	b loc_800F468
loc_800F466:
	mov R0, #1
loc_800F468:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
.endfunc // sub_800F436

.func
.thumb_func
sub_800F46C:
	push {lr}
	bl sub_802D26A
	cmp r0, #0x38 
	beq loc_800F482
	cmp r0, #0x30 
	beq loc_800F482
	cmp r0, #0x3c 
	beq loc_800F482
	ldrb R0, [R5,#0x17]
	pop {pc}
loc_800F482:
	mov R0, #0
	pop {pc}
.endfunc // sub_800F46C

.func
.thumb_func
sub_800F486:
	cmp R0, #0xD3
	beq loc_800F49A
	cmp R0, #0xDA
	beq loc_800F49A
	cmp R0, #0xE9
	beq loc_800F49A
	cmp R0, #0xEA
	beq loc_800F49A
	mov R0, #1
	mov PC, LR
loc_800F49A:
	mov R0, #0
	mov PC, LR
.endfunc // sub_800F486

.func
.thumb_func
sub_800F49E:
	ldr R1, off_800F4D8 // =dword_203CFA0 
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #2
	ldr R0, [R1,R0]
	mov PC, LR
.endfunc // sub_800F49E

.func
.thumb_func
sub_800F4A8:
	ldr R1, off_800F4DC // =dword_203F7E0 
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #2
	ldr R0, [R1,R0]
	mov PC, LR
.endfunc // sub_800F4A8

.func
.thumb_func
sub_800F4B2:
	push {lr}
	ldr R1, off_800F4E0 // =dword_203F7E0 
	ldrb R2, [R5,#0x16]
	lsl r2, r2, #2
	ldr R3, [R1,R2]
	sub r3, r3, r0
	str R3, [R1,R2]
	push {r0}
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	cmp R0, #0
	pop {r0}
	bne locret_800F4D2
	bl sub_803D0C8
locret_800F4D2:
	pop {pc}
off_800F4D4: .word byte_8021220
off_800F4D8: .word dword_203CFA0
off_800F4DC: .word dword_203F7E0
off_800F4E0: .word dword_203F7E0
.endfunc // sub_800F4B2

	push {r6,r7,lr}
	add r6, r0, #0
	add r7, r1, #0
	bl object_isValidPanel
	beq loc_800F4FE
	add r0, r6, #0
	add r1, r7, #0
	ldr R2, dword_800F504 // =0x10 
	ldr R3, dword_800F508 // =0x3880080 
	bl object_checkPanelParameters
	pop {r6,r7,pc}
loc_800F4FE:
	mov R0, #0
	pop {r6,r7,pc}
	.balign 4, 0x00
dword_800F504: .word 0x10
dword_800F508: .word 0x3880080
.func
.thumb_func
sub_800F50C:
	push {r6,r7,lr}
	add r6, r0, #0
	add r7, r1, #0
	bl object_isValidPanel
	beq loc_800F526
	add r0, r6, #0
	add r1, r7, #0
	ldr R2, dword_800F52C // =0x10 
	ldr R3, dword_800F530 // =0xF880080 
	bl object_checkPanelParameters
	pop {r6,r7,pc}
loc_800F526:
	mov R0, #0
	pop {r6,r7,pc}
	.balign 4, 0x00
dword_800F52C: .word 0x10
dword_800F530: .word 0xF880080
.endfunc // sub_800F50C

.func
.thumb_func
sub_800F534:
	push {r6,r7,lr}
	add r6, r0, #0
	add r7, r1, #0
	bl object_isValidPanel
	beq loc_800F54E
	add r0, r6, #0
	add r1, r7, #0
	ldr R2, dword_800F554 // =0x10 
	ldr R3, dword_800F558 // =0x3800000 
	bl object_checkPanelParameters
	pop {r6,r7,pc}
loc_800F54E:
	mov R0, #0
	pop {r6,r7,pc}
	.balign 4, 0x00
dword_800F554: .word 0x10
dword_800F558: .word 0x3800000
.endfunc // sub_800F534

.func
.thumb_func
sub_800F55C:
	push {r6,r7,lr}
	add r6, r0, #0
	add r7, r1, #0
	bl object_isValidPanel
	beq loc_800F580
	ldrb R0, [R5,#0xC]
	sub R0, #1
	lsl r0, r0, #3
	ldr R3, off_800F584 // =byte_800F588 
	add r3, r3, r0
	ldr R2, [R3]
	ldr R3, [R3,#4]
	add r0, r6, #0
	add r1, r7, #0
	bl object_checkPanelParameters
	pop {r6,r7,pc}
loc_800F580:
	mov R0, #0
	pop {r6,r7,pc}
off_800F584: .word byte_800F588
byte_800F588: .byte 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x3, 0x10, 0x0, 0x0, 0x0, 0x20
	.byte 0x0, 0x80, 0x3
.endfunc // sub_800F55C

.func
.thumb_func
sub_800F598:
	push {r4,r6,r7,lr}
	ldr R3, [R5,#0x54]
	mov R0, #1
	ldr R1, [R3,#0x70]
	mov r2, #0x54 
	ldr R2, [R3,R2]
	orr R1, R2
	ldr R2, dword_800F600 // =0xF3000000 
	tst R1, R2
	beq loc_800F5BC
	ldr R2, dword_800F5F8 // =0xA2000000 
	tst R1, R2
	bne loc_800F5B6
	neg R0, R0
	b loc_800F5C6
loc_800F5B6:
	ldr R2, dword_800F5FC // =0x51000000 
	tst R1, R2
	beq loc_800F5C6
loc_800F5BC:
	mov R0, #0
	mov R1, #0
	mov R2, #0
	mov R3, #0
	pop {r4,r6,r7,pc}
loc_800F5C6:
	push {r0}
	ldrb R1, [R3,#0xF]
	lsr r1, r1, #2
	mov R2, #0
loc_800F5CE:
	lsr r1, r1, #1
	bcs loc_800F5DA
	add R2, #1
	cmp R2, #4
	blt loc_800F5CE
	b loc_800F5E4
loc_800F5DA:
	mov R1, #3
	mul R2, R1
	ldr R1, off_800F5F4 // =byte_800F604 
	add r2, r2, r1
	b loc_800F5E4
loc_800F5E4:
	mov R1, #0
	ldrsb R1, [R2,R1]
	mul R0, R1
	mov R1, #1
	ldrsb R1, [R2,R1]
	ldrb R2, [R2,#2]
	pop {r3}
	pop {r4,r6,r7,pc}
off_800F5F4: .word byte_800F604
dword_800F5F8: .word 0xA2000000
dword_800F5FC: .word 0x51000000
dword_800F600: .word 0xF3000000
byte_800F604: .byte 0xFF, 0x0, 0x6, 0x1, 0x0, 0x6, 0xFF, 0x0, 0x1, 0x1, 0x0, 0x1, 0x0, 0x0, 0x0
	.byte 0x0
.endfunc // sub_800F598

.func
.thumb_func
sub_800F614:
	push {lr}
	mov R3, #0xC
	mul R3, R1
	mov R1, R10
	ldr R1, [R1,#0x18]
	add r1, r1, r3
	lsl r3, r2, #3
	add r1, r1, r3
	add R1, #0xA0
	tst R2, R2
	bne loc_800F648
	ldr R2, [R1]
	ldr R3, [R1,#4]
	tst R2, R2
	bne loc_800F636
	str R0, [R1]
	b locret_800F654
loc_800F636:
	tst R3, R3
	bne loc_800F63E
	str R0, [R1,#4]
	b locret_800F654
loc_800F63E:
	str R3, [R1]
	str R0, [R1,#4]
	mov R3, #0
	strh R3, [R2,#0x24]
	b locret_800F654
loc_800F648:
	ldr R2, [R1]
	str R0, [R1]
	tst R2, R2
	beq locret_800F654
	mov R3, #0
	strh R3, [R2,#0x24]
locret_800F654:
	pop {pc}
.endfunc // sub_800F614

.func
.thumb_func
sub_800F656:
	mov R0, R10
	ldr R0, [R0,#0x18]
	add R0, #0xA0
	mov R1, #0
loc_800F65E:
	ldr R2, [R0]
	cmp R2, R5
	bne loc_800F668
	mov R2, #0
	str R2, [R0]
loc_800F668:
	add R0, #4
	add R1, #1
	cmp R1, #6
	blt loc_800F65E
	mov PC, LR
.endfunc // sub_800F656

.func
.thumb_func
sub_800F672:
	push {lr}
	bl battle_isBattleOver
	tst R0, R0
	bne loc_800F690
	bl battle_isTimeStop
	bne locret_800F6AA
	bl battle_isPaused
	bne locret_800F6AA
	ldrh R0, [R5,#0x20]
	sub R0, #1
	strh R0, [R5,#0x20]
	bne loc_800F69A
loc_800F690:
	bl sub_801A074 // () -> void
	mov R0, #0
	strh R0, [R5,#0x24]
	pop {pc}
loc_800F69A:
	cmp R0, #0xB4
	bhi locret_800F6AA
	lsr r0, r0, #2
	bcc locret_800F6AA
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
locret_800F6AA:
	pop {pc}
.endfunc // sub_800F672

	push {r5,lr}
	strb R2, [R0,#0x1C]
	strb R3, [R0,#0x1D]
	strb R4, [R0,#0x1E]
	str R6, [R0,#0x2C]
	add r5, r0, #0
	ldr R0, off_800F944 // =0x400 
	tst R1, R1
	beq loc_800F6C0
	ldr R0, off_800F948 // =0x800 
loc_800F6C0:
	bl sub_801A16C
	pop {r5,pc}
	push {r4,r6,r7,lr}
	sub sp, sp, #0x14
	mov R7, SP
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #3
	ldr R6, off_800F740 // =off_800F748 
	add r6, r6, r0
	ldr R2, [R6]
	ldr R3, [R6,#4]
	bl sub_800CEA0
	add r1, r0, #0
	beq loc_800F6F6
	push {r1}
	bl sub_8001532
	pop {r1}
	svc 6
	ldrb R0, [R7,R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	add sp, sp, #0x14
	pop {r4,r6,r7,pc}
loc_800F6F6:
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #3
	ldr R6, off_800F744 // =byte_800F758 
	add r6, r6, r0
	ldr R2, [R6]
	ldr R3, [R6,#4]
	bl object_getPanelsExceptCurrentFilterred
	add r1, r0, #0
	beq loc_800F720
	push {r1}
	bl sub_8001532
	pop {r1}
	svc 6
	ldrb R0, [R7,R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	add sp, sp, #0x14
	pop {r4,r6,r7,pc}
loc_800F720:
	mov R2, #0
	mov R3, #0
	bl sub_800CEA0
	push {r0}
	bl sub_8001532
	pop {r1}
	svc 6
	ldrb R0, [R7,R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	add sp, sp, #0x14
	pop {r4,r6,r7,pc}
	.byte 0, 0
off_800F740: .word off_800F748
off_800F744: .word byte_800F758
off_800F748: .word LCDControl
	.byte 0, 0, 0, 0
	.word start_
	.byte 0, 0, 0, 0
byte_800F758: .byte 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0
	.byte 0x0
.func
.thumb_func
sub_800F768:
	push {lr}
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	ldrh R2, [R5,#0x36]
	lsl r2, r2, #0x10
	ldrh R3, [R5,#0x3A]
	lsl r3, r3, #0x10
	sub r2, r0, r2
	sub r0, r1, r3
	add r1, r2, #0
	push {r0,r1}
	push {r5}
	bl calcAngle_800117C
	pop {r5}
	strb R0, [R5,#0xC]
	mov R1, #8
	lsl r1, r1, #0x10
	push {r1}
	bl sub_80011A0
	str R0, [R5,#0x40]
	str R1, [R5,#0x44]
	pop {r4}
	pop {r0,r1}
	lsr r0, r0, #8
	add r2, r0, #0
	mul R0, R2
	lsr r1, r1, #8
	add r2, r1, #0
	mul R1, R2
	add r0, r0, r1
	svc 8
	lsl r0, r0, #8
	add r1, r4, #0
	svc 6
	tst R0, R0
	beq loc_800F7C4
	push {r0}
	add r1, r0, #0
	mov r0, #0x40 
	lsl r0, r0, #0x10
	svc 6
	str R0, [R5,#0x48]
	pop {r0}
	pop {pc}
loc_800F7C4:
	mov R0, #8
	lsl r0, r0, #0x10
	str R0, [R5,#0x48]
	mov R0, #0
	str R0, [R5,#0x40]
	str R0, [R5,#0x44]
	mov R0, #8
	pop {pc}
.endfunc // sub_800F768

.func
.thumb_func
sub_800F7D4:
	mov R0, #1
	mov R1, R10
	ldr R1, [R1,#0x18]
	add R1, #0xA0
	mov R2, #0
loc_800F7DE:
	ldr R3, [R1]
	tst R3, R3
	beq loc_800F7FA
	ldrb R4, [R3,#2]
	cmp R4, #0x93
	bne loc_800F7F0
	ldrb R4, [R3,#1]
	beq loc_800F7FA
	b locret_800F804
loc_800F7F0:
	ldrb R4, [R3,#2]
	cmp R4, #0x84
	bne locret_800F804
	ldrb R4, [R3,#1]
	bne locret_800F804
loc_800F7FA:
	add R1, #4
	add R2, #1
	cmp R2, #8
	blt loc_800F7DE
	mov R0, #0
locret_800F804:
	mov PC, LR
.endfunc // sub_800F7D4

.func
.thumb_func
sub_800F806:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	add R0, #0xA0
	mov R1, #0
loc_800F810:
	ldr R2, [R0]
	cmp R2, R5
	beq loc_800F81E
	add R0, #4
	add R1, #1
	cmp R1, #6
	blt loc_800F810
loc_800F81E:
	ldr R0, off_800F824 // =byte_800F828 
	ldrb R0, [R0,R1]
	pop {pc}
off_800F824: .word byte_800F828
byte_800F828: .byte 0x0, 0x0, 0x1, 0x0, 0x0, 0x1, 0xFF, 0x0, 0x20, 0xB5, 0xAA, 0x7D
	.byte 0xEB, 0x6A, 0x5, 0x1C, 0x44, 0x48, 0x9, 0x42, 0x2, 0xD0, 0x44, 0x48
	.byte 0xAA, 0x75, 0xEB, 0x62, 0xA, 0xF0, 0x92, 0xFC, 0x20, 0xBD, 0x10, 0xB5
	.byte 0x6C, 0x6D, 0xA8, 0x7C, 0xE9, 0x7C, 0xFD, 0xF7, 0x5A, 0xF8, 0x0, 0x24
	.byte 0x81, 0x78, 0x5, 0x29, 0x0, 0xD1, 0x1, 0x24, 0x6B, 0x6D, 0x82, 0x33
	.byte 0x5, 0x21, 0x0, 0x20, 0x1A, 0x88, 0x12, 0x19, 0xE2, 0x40, 0x1A, 0x80
	.byte 0x80, 0x18, 0x2, 0x33, 0x1, 0x39, 0xF7, 0xDC, 0x1D, 0xF0, 0xCA, 0xFA
	.byte 0x6B, 0x6D, 0x80, 0x33, 0x18, 0x80, 0x10, 0xBD
.endfunc // sub_800F806

.func
.thumb_func
sub_800F884:
	push {r5,lr}
	add r5, r0, #0
	beq locret_800F896
	ldr R0, [R5,#0x54]
	tst R0, R0
	beq locret_800F896
	ldr R0, byte_800F954 // =0x0 
	bl sub_801A16C
locret_800F896:
	pop {r5,pc}
.endfunc // sub_800F884

.func
.thumb_func
sub_800F898:
	push {r5,lr}
	add r5, r0, #0
	beq locret_800F8AE
	bl sub_800F884
	ldr R0, [R5,#0x54]
	tst R0, R0
	beq locret_800F8AE
	ldr R0, byte_800F958 // =0x0 
	bl sub_801A16C
locret_800F8AE:
	pop {r5,pc}
.endfunc // sub_800F898

.func
.thumb_func
sub_800F8B0:
	push {r4,r5,lr}
	add r4, r5, #0
	add r5, r0, #0
	beq locret_800F8CC
	bl sub_800F884
	ldr R0, [R5,#0x54]
	tst R0, R0
	beq locret_800F8CC
	ldr R0, dword_800F95C // =0x100000 
	ldrb R1, [R4,#0x16]
	lsl R0, R1
	bl sub_801A16C
locret_800F8CC:
	pop {r4,r5,pc}
.endfunc // sub_800F8B0

.func
.thumb_func
sub_800F8CE:
	push {r4,lr}
	mov R4, #2
	ldr R1, byte_800F958 // =0x0 
	tst R0, R1
	beq loc_800F90A
	mov R4, #0
	ldrb R0, [R5,#0xB]
	cmp R0, #0
	bne loc_800F8E8
	mov R0, #1
	strb R0, [R5,#0xB]
	mov R0, #0x14
	strh R0, [R5,#0x20]
loc_800F8E8:
	ldrb R0, [R5]
	mov R1, #2
	orr R0, R1
	strb R0, [R5]
	ldrh R0, [R5,#0x20]
	mov R1, #2
	tst R0, R1
	bne loc_800F900
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
loc_800F900:
	ldrh R0, [R5,#0x20]
	sub R0, #1
	strh R0, [R5,#0x20]
	bgt loc_800F90A
	mov R4, #1
loc_800F90A:
	add r0, r4, #0
	pop {r4,pc}
.endfunc // sub_800F8CE

.func
.thumb_func
sub_800F90E:
	push {r4,r6,lr}
	add r4, r0, #0
	bl sub_801A180
	ldr R1, byte_800F960 // =0x0 
	tst R0, R1
	beq loc_800F922
	mov R0, #1
	lsl r0, r0, #8
	orr R4, R0
loc_800F922:
	ldrb R0, [R5,#0x10]
	lsl r0, r0, #0x10
	orr R4, R0
	add r0, r5, #0
	bl sprite_getPallete
	lsl r0, r0, #0x18
	orr R4, R0
	bl sub_8002FB2
	mov r6, #0x34 
	add r6, r6, r5
	ldmia R6!, {R1-R3}
	bl sub_80E996E
	pop {r4,r6,pc}
	.balign 4, 0x00
off_800F944: .word 0x400
off_800F948: .word 0x800
	.word 0x1000
	.word 0x2000
byte_800F954: .byte 0x0, 0x80, 0x0, 0x0
byte_800F958: .byte 0x0, 0x0, 0x4, 0x0
dword_800F95C: .word 0x100000
byte_800F960: .byte 0x0, 0x0, 0x20, 0x0
.endfunc // sub_800F90E

.func
.thumb_func
sub_800F964:
	push {r6,r7,lr}
	add r6, r0, #0
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0xc
	tst R0, R1
	bne loc_800F994
	add r0, r6, #0
	ldrb R1, [R5,#0x16]
	bl sub_800F9DE
	ldrb R6, [R5,#0x12]
	add r6, r6, r0
	ldrb R7, [R5,#0x13]
	add r7, r7, r1
	add r0, r6, #0
	add r1, r7, #0
	bl sub_800E618
	beq loc_800F994
	add r0, r6, #0
	add r1, r7, #0
	pop {r6,r7,pc}
loc_800F994:
	mov R0, #0
	pop {r6,r7,pc}
.endfunc // sub_800F964

.func
.thumb_func
sub_800F998:
	push {r4,r6,r7,lr}
	sub sp, sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	lsl r2, r2, #2
	ldr R3, off_800F9FC // =byte_800FA00 
	ldr R2, [R3,R2]
	str R2, [SP]
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0xc
	tst R0, R1
	bne loc_800F9D8
	mov R4, #0
loc_800F9B6:
	add r0, sp, #0
	ldrb R0, [R0,R4]
	ldrb R1, [R5,#0x16]
	bl sub_800F9DE
	add r0, r0, r6
	add r1, r1, r7
	str R0, [SP,#4]
	str R1, [SP,#8]
	bl sub_800E618
	ldr R0, [SP,#4]
	ldr R1, [SP,#8]
	bne loc_800F9DA
	add R4, #1
	cmp R4, #4
	blt loc_800F9B6
loc_800F9D8:
	mov R0, #0
loc_800F9DA:
	add sp, sp, #0xc
	pop {r4,r6,r7,pc}
.endfunc // sub_800F998

.func
.thumb_func
sub_800F9DE:
	push {r4,lr}
	add r0, r0, r0
	ldr R4, off_800F9F8 // =byte_800FA14 
	add r4, r4, r0
	add r0, r1, #0
	bl sub_800E2C2
	mov R1, #0
	ldrsb R1, [R4,R1]
	mul R0, R1
	mov R1, #1
	ldrsb R1, [R4,R1]
	pop {r4,pc}
off_800F9F8: .word byte_800FA14
off_800F9FC: .word byte_800FA00
byte_800FA00: .byte 0x0, 0x0, 0x0, 0x0, 0x1, 0x3, 0x2, 0x4, 0x2, 0x4, 0x1, 0x3, 0x3, 0x2, 0x4, 0x1, 0x4
	.byte 0x1, 0x3, 0x2
byte_800FA14: .byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x1, 0xFF, 0x0, 0x1, 0x0, 0x0, 0x0
.endfunc // sub_800F9DE

.func
.thumb_func
sub_800FA20:
	push {lr}
	sub sp, sp, #0x18
	ldrb R1, [R5,#0x16]
	bl sub_800F9DE
	str R0, [SP]
	str R1, [SP,#4]
	tst R1, R1
	bne loc_800FA42
	bl sub_8010368
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	ldr R4, [SP]
	bl sub_800D120
	b loc_800FA50
loc_800FA42:
	bl sub_8010368
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	ldr R4, [SP,#4]
	bl sub_800D15A
loc_800FA50:
	add sp, sp, #0x18
	pop {pc}
.endfunc // sub_800FA20

.func
.thumb_func
sub_800FA54:
	push {r6,r7,lr}
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0xc
	tst R0, R1
	bne loc_800FA9C
	ldr R0, [R5,#0x58]
	ldrh R1, [R0,#0x22]
	mov R6, #1
	mov r2, #0x40 
	tst R1, R2
	bne loc_800FA88
	mov R6, #2
	mov R2, #0x80
	tst R1, R2
	bne loc_800FA88
	mov R6, #4
	mov R2, #0x10
	tst R1, R2
	bne loc_800FA88
	mov R6, #3
	mov r2, #0x20 
	tst R1, R2
	bne loc_800FA88
	b loc_800FA9C
loc_800FA88:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0xf
	tst R0, R1
	beq loc_800FA98
	ldr R2, off_800FAA0 // =byte_800FAA4 
	ldrb R6, [R2,R6]
loc_800FA98:
	add r0, r6, #0
	pop {r6,r7,pc}
loc_800FA9C:
	mov R0, #0
	pop {r6,r7,pc}
off_800FAA0: .word byte_800FAA4
byte_800FAA4: .byte 0x0, 0x2, 0x1, 0x4, 0x3, 0x0, 0x0, 0x0
.endfunc // sub_800FA54

.func
.thumb_func
sub_800FAAC:
	push {r4,r6,r7,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r6, r1, #0
	add r7, r3, #0
	bl object_getFlipDirection_800E2CA // () -> int
	ldrb R1, [R5,#0x12]
	add r0, r0, r1
	ldrb R1, [R5,#0x13]
	str R0, [SP]
	str R1, [SP,#4]
	add r3, r7, #0
	bl sub_80C4FFE
	ldrb R0, [R5,#0x16]
	mov R1, #2
	bl sub_80136CC
	add r2, r0, #0
	ldr R0, [SP]
	ldr R1, [SP,#4]
	bl sub_800FAF6
	add sp, sp, #8
	pop {r4,r6,r7,pc}
.endfunc // sub_800FAAC

.func
.thumb_func
sub_800FAE0:
	push {r4,lr}
	mov R4, R10
	ldr R4, [R4,#0x18]
	ldrb R0, [R4,#0xD]
	bl sub_80103BC
	tst R0, R0
	beq locret_800FAF4
	ldrh R1, [R0,#0x24]
	strh R1, [R4,#0x34]
locret_800FAF4:
	pop {r4,pc}
.endfunc // sub_800FAE0

.func
.thumb_func
sub_800FAF6:
	push {r4,r6,r7,lr}
	sub sp, sp, #8
	str R2, [SP,#4]
	add r6, r0, #0
	add r7, r1, #0
	bl object_getFlipDirection_800E2CA // () -> int
	add r4, r0, #0
	mov R0, #0
	str R0, [SP]
loc_800FB0A:
	add r0, r6, #0
	add r1, r7, #0
	bl object_getPanelParameters
	tst R0, R0
	beq loc_800FB2C
	ldr R1, off_800FB48 // =byte_800FB4C 
	ldrb R2, [R5,#0x16]
	lsl r2, r2, #2
	ldr R1, [R1,R2]
	tst R0, R1
	bne loc_800FB2C
	ldr R0, [SP]
	add R0, #1
	str R0, [SP]
	add r6, r6, r4
	b loc_800FB0A
loc_800FB2C:
	ldr R0, [SP]
	cmp R0, #5
	ble loc_800FB34
	mov R0, #5
loc_800FB34:
	ldr R1, [SP,#4]
	mov R2, #6
	mul R1, R2
	add r1, r1, r0
	ldr R0, off_800FB44 // =dword_80209CC 
	ldrb R0, [R0,R1]
	add sp, sp, #8
	pop {r4,r6,r7,pc}
off_800FB44: .word dword_80209CC
off_800FB48: .word byte_800FB4C
byte_800FB4C: .byte 0x80, 0x0, 0x88, 0xD, 0x80, 0x0, 0x88, 0xE
.endfunc // sub_800FAF6

.func
.thumb_func
sub_800FB54:
	push {r4,r7,lr}
	ldr R7, [R5,#0x58]
	add R7, #0xA0
	bl object_getFlag // () -> int
	ldr R1, off_800FC28 // =0x1000 
	tst R0, R1
	bne loc_800FB70
	bl sub_800FFFE
	add r4, r0, #0
	ldr R1, dword_800FED4 // =0x1000C 
	and R4, R1
	bne loc_800FB74
loc_800FB70:
	ldr R0, dword_800FC2C // =0xFFFF 
	pop {r4,r7,pc}
loc_800FB74:
	mov R0, #0
	mov R1, #8
	tst R4, R1
	beq loc_800FBEE
	add r0, r5, #0
	bl sub_800EDD0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#6]
	ldr R1, [R5,#0x58]
	cmp R0, #0xA
	bne loc_800FB9A
	mov R2, #0xA0
	add r2, r2, r1
	mov R0, #0
	strh R0, [R2,#0x14]
	ldrb R1, [R1,#0x11]
	b loc_800FB9C
loc_800FB9A:
	ldrb R1, [R1,#5]
loc_800FB9C:
	cmp R1, #0x18
	beq loc_800FBE6
	cmp R1, #0xFF
	beq loc_800FBEE
	cmp R1, #0xD
	beq loc_800FBEC
	cmp R1, #0x1F
	beq loc_800FBEC
	cmp r1, #0x20 
	beq loc_800FBEC
	cmp r1, #0x29 
	beq loc_800FBEC
	cmp r1, #0x2d 
	beq loc_800FBEC
	cmp R1, #5
	beq loc_800FBEC
	mov R0, #0
	strb R0, [R7,#4]
	add r0, r1, #0
	bl loc_80117BA
	push {r0}
	bl sub_8011688
	pop {r0}
	cmp r0, #0x52 
	beq loc_800FBE0
	cmp r0, #0x41 
	bne loc_800FC18
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0xF
	bne loc_800FC18
loc_800FBE0:
	mov R0, #1
	strb R0, [R7,#0x1D]
	b loc_800FC18
loc_800FBE6:
	bl sub_8012CB2
	b loc_800FBEE
loc_800FBEC:
	mov R0, #1
loc_800FBEE:
	bl sub_80127C0
	bl sub_8011688
	ldrb R0, [R7,#0x1B]
	cmp R0, #0
	bne loc_800FC0C
	mov r1, #0x2c 
	bl sub_8013774
	mov R1, #0
	cmp R0, #0xB
	blt loc_800FC18
	cmp R0, #0x18
	bgt loc_800FC18
loc_800FC0C:
	// idx
	ldrh R0, [R7,#0x14]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#0xF]
	strb R0, [R7,#0x1D]
	b loc_800FC18
loc_800FC18:
	ldr R0, dword_800FED4 // =0x1000C 
	bl sub_800FFEE
	ldrh R0, [R7,#0x14]
	ldrh R1, [R7,#8]
	ldrh R2, [R7,#6]
	pop {r4,r7,pc}
	.balign 4, 0x00
off_800FC28: .word 0x1000
dword_800FC2C: .word 0xFFFF
.endfunc // sub_800FB54

.func
.thumb_func
sub_800FC30:
	push {r4,r7,lr}
	add r0, r5, #0
	mov R1, #0
	bl sub_800EDD0
	ldr R1, dword_800FED8 // =0xFFFF 
	cmp R0, R1
	beq locret_800FC7A
	mov r1, #0x52 
	cmp R0, R1
	beq loc_800FC58
	mov r1, #0x53 
	cmp R0, R1
	beq loc_800FC58
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#9]
	mov R1, #1
	tst R0, R1
	beq loc_800FC5C
loc_800FC58:
	ldr R0, dword_800FED8 // =0xFFFF 
	b locret_800FC7A
loc_800FC5C:
	ldr R7, [R5,#0x58]
	add R7, #0xA0
	mov R0, #0
	bl sub_80127C0
	ldr R1, off_800FCB8 // =byte_800FCD5 
	cmp R0, R1
	beq locret_800FC7A
	bl sub_8011688
	mov R0, #1
	strb R0, [R7,#0x1D]
	ldrh R0, [R7,#0x14]
	ldrh R1, [R7,#8]
	ldrh R2, [R7,#6]
locret_800FC7A:
	pop {r4,r7,pc}
.endfunc // sub_800FC30

.func
.thumb_func
sub_800FC7C:
	push {lr}
	ldrb R0, [R5,#0x16]
	bl sub_8010018
	add r3, r0, #0
	ldrb R0, [R3]
	cmp R0, #5
	bge locret_800FC9C
	lsl r1, r0, #1
	add R1, #2
	ldrh R1, [R3,R1]
	ldr R2, dword_800FED8 // =0xFFFF 
	cmp R1, R2
	beq locret_800FC9C
	add R0, #1
	strb R0, [R3]
locret_800FC9C:
	pop {pc}
.endfunc // sub_800FC7C

.func
.thumb_func
sub_800FC9E:
	cmp R0, #0
	bne loc_800FCAA
	ldr R0, off_800FCB4 // =byte_800FCBC 
	ldrb R2, [R0,R1]
	mov R1, #0
	mov PC, LR
loc_800FCAA:
	ldr R1, off_800FCB8 // =byte_800FCD5 
	ldrb R2, [R0,R1]
	mov R1, #8
	mov PC, LR
	.balign 4, 0x00
off_800FCB4: .word byte_800FCBC
off_800FCB8: .word byte_800FCD5
byte_800FCBC: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xB, 0xC, 0x1, 0x2, 0x3
	.byte 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0xC
byte_800FCD5: .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0x0, 0x0, 0x0
.endfunc // sub_800FC9E

.func
.thumb_func
sub_800FCE4:
	push {lr}
	mov r1, #0x2c 
	bl sub_8013774
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	pop {pc}
.endfunc // sub_800FCE4

.func
.thumb_func
sub_800FCFC:
	ldr R1, off_800FEDC // =byte_80212BB 
	ldrb R0, [R1,R0]
	ldrb R2, [R5,#4]
	ldr R1, off_800FD58 // =byte_800FD5C 
	ldrb R1, [R1,R2]
	mul R0, R1
	mov PC, LR
.endfunc // sub_800FCFC

.func
.thumb_func
sub_800FD0A:
	push {r4,r7,lr}
	ldr R4, [R5,#0x58]
	mov r1, #0x29 
	bl sub_8013774
	ldr R1, off_800FEE0 // =byte_80212BB 
	ldrb R7, [R1,R0]
	ldrb R0, [R5,#0x16]
	bl sub_8015B54
	cmp R0, #2
	bne loc_800FD26
	mov R0, #4
	b loc_800FD40
loc_800FD26:
	ldrb R0, [R4]
	cmp R0, #2
	bne loc_800FD3A
	bl sub_801032C
	ldr R1, byte_800FEE4 // =0x0 
	tst R0, R1
	beq loc_800FD3A
	mov R0, #1
	b loc_800FD40
loc_800FD3A:
	ldrb R2, [R4,#0x16]
	ldr R1, off_800FD58 // =byte_800FD5C 
	ldrb R0, [R1,R2]
loc_800FD40:
	mul R0, R7
	pop {r4,r7,pc}
.endfunc // sub_800FD0A

.func
.thumb_func
sub_800FD44:
	push {lr}
	mov r1, #0x29 
	bl sub_8013774
	ldr R1, off_800FEE8 // =byte_80212BB 
	ldrb R0, [R1,R0]
	mov R1, #1
	mul R0, R1
	pop {pc}
	.balign 4, 0x00
off_800FD58: .word byte_800FD5C
byte_800FD5C: .byte 0x0, 0x0, 0x0, 0x2, 0x3, 0x0, 0x0, 0x0, 0x0, 0xB5, 0x50, 0x46, 0x80
	.byte 0x69, 0x40, 0x7B, 0x29, 0x21, 0x3, 0xF0, 0xAD, 0xFC, 0x0, 0x18, 0x3, 0x4A
	.byte 0x12, 0x18, 0x0, 0x20, 0x10, 0x56, 0x1, 0x21, 0x51, 0x56, 0x0, 0xBD, 0x0
	.byte 0x0, 0x88, 0xFD, 0x0, 0x8, 0x0, 0xC9, 0x0, 0xBD, 0xF8, 0xC5, 0xF4, 0xAC
	.byte 0x0, 0xC0, 0x3, 0xB8, 0xFC, 0xB8, 0xFF, 0xC2, 0xFB, 0xBA, 0xFB, 0xB1, 0x4
	.byte 0xC4, 0x0, 0xC9, 0x20, 0xB5, 0x2, 0xB4, 0x0, 0xF0, 0xA, 0xFB, 0x5, 0x1C
	.byte 0x2, 0xBC, 0x2, 0xD0, 0x4, 0x20, 0x0, 0xF0, 0x18, 0xF9, 0x20, 0xBD
.endfunc // sub_800FD44

.func
.thumb_func
sub_800FDB6:
	push {lr}
	mov R0, #0x10
	bl object_setCounterTime
	pop {pc}
.endfunc // sub_800FDB6

.func
.thumb_func
sub_800FDC0:
	push {R4-R6,lr}
	mov R4, R10
	ldr R4, [R4,#0x18]
	add R4, #0x80
	mov R6, #0
loc_800FDCA:
	ldr R5, [R4]
	tst R5, R5
	beq loc_800FDE0
	ldr R0, [R5,#0x58]
	tst R0, R0
	beq loc_800FDE0
	ldrb R1, [R0]
	cmp R1, #2
	bne loc_800FDE0
	bl sub_800FDEA
loc_800FDE0:
	add R4, #4
	add R6, #1
	cmp R6, #8
	blt loc_800FDCA
	pop {R4-R6,pc}
.endfunc // sub_800FDC0

.func
.thumb_func
sub_800FDEA:
	push {r4,lr}
	ldrb R0, [R5,#0x16]
	bl sub_8010018
	ldrb R1, [R0]
	add r1, r1, r1
	add R1, #2
	add r1, r1, r0
	mov R0, #0
	ldr R3, dword_800FED8 // =0xFFFF 
	ldrh R4, [R1]
loc_800FE00:
	ldrh R2, [R1]
	cmp R2, R3
	beq loc_800FE0C
	add R0, #1
	add R1, #2
	b loc_800FE00
loc_800FE0C:
	strb R0, [R5,#0x1A]
	strh R4, [R5,#0x2A]
	pop {r4,pc}
.endfunc // sub_800FDEA

.func
.thumb_func
sub_800FE12:
	ldr R1, [R5,#0x58]
	ldrb R2, [R1,#0x16]
	cmp R2, #4
	beq loc_800FE20
	add r2, r2, r2
	ldrh R0, [R0,R2]
	mov PC, LR
loc_800FE20:
	ldrb R2, [R1,#0xC]
	ldrh R0, [R0,#8]
	mul R0, R2
	mov PC, LR
.endfunc // sub_800FE12

.func
.thumb_func
sub_800FE28:
	push {lr}
	push {r0}
	bl sub_800FE36
	pop {r1}
	ldrb R0, [R0,R1]
	pop {pc}
.endfunc // sub_800FE28

.func
.thumb_func
sub_800FE36:
	ldr R1, [R5,#0x58]
	ldrb R0, [R1,#0x16]
	cmp R0, #4
	beq loc_800FE40
	mov PC, LR
loc_800FE40:
	mov R0, #0
	ldrb R2, [R1,#0xC]
	cmp R2, #3
	ble locret_800FE50
	mov R0, #1
	cmp R2, #6
	ble locret_800FE50
	mov R0, #2
locret_800FE50:
	mov PC, LR
.endfunc // sub_800FE36

.func
.thumb_func
sub_800FE52:
	push {r4,lr}
	mov R4, #0
	mov r1, #0x31 
	bl sub_8013774
	cmp R0, #1
	bne loc_800FE62
	add R4, #1
loc_800FE62:
	mov R1, #0x13
	bl sub_8013774
	cmp R0, #0
	beq loc_800FE6E
	add R4, #1
loc_800FE6E:
	mov R1, #0x14
	bl sub_8013774
	cmp R0, #0
	beq loc_800FE7A
	add R4, #1
loc_800FE7A:
	mov R1, #0x16
	bl sub_8013774
	cmp R0, #0
	beq loc_800FE86
	add R4, #1
loc_800FE86:
	mov r1, #0x54 
	bl sub_8013790
	cmp R0, #0
	beq loc_800FE92
	add R4, #1
loc_800FE92:
	mov r1, #0x24 
	bl sub_8013774
	cmp R0, #0
	beq loc_800FE9E
	add R4, #1
loc_800FE9E:
	mov R1, #0x18
	bl sub_8013774
	cmp R0, #0
	beq loc_800FEAA
	add R4, #1
loc_800FEAA:
	mov R1, #0x19
	bl sub_8013774
	cmp R0, #0
	beq loc_800FEB6
	add R4, #1
loc_800FEB6:
	mov R1, #0x1A
	bl sub_8013774
	cmp R0, #0
	beq loc_800FEC2
	add R4, #1
loc_800FEC2:
	mov r1, #0x63 
	bl sub_8013774
	cmp R0, #0
	beq loc_800FECE
	add R4, #1
loc_800FECE:
	add r0, r4, #0
	pop {r4,pc}
	.balign 4, 0x00
dword_800FED4: .word 0x1000C
dword_800FED8: .word 0xFFFF
off_800FEDC: .word byte_80212BB
off_800FEE0: .word byte_80212BB
byte_800FEE4: .byte 0x0, 0x2, 0x0, 0x0
off_800FEE8: .word byte_80212BB
.endfunc // sub_800FE52

.func
.thumb_func
sub_800FEEC:
	push {r4,lr}
	ldr R4, [R5,#0x58]
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0
	bne loc_800FF36
	bl sub_802D234
	cmp R0, #9
	bne loc_800FF0A
	mov r1, #0x44 
	bl sub_8013774
	b loc_800FF0C
loc_800FF0A:
	mov R0, #0xFF
loc_800FF0C:
	strb R0, [R4,#4]
	mov R1, #4
	bl sub_8013774
	strb R0, [R4,#6]
	mov R1, #5
	bl sub_8013774
	bl sub_800FFAA
	mov r1, #0x39 
	bl sub_8013774
	strb R0, [R4,#5]
	mov R1, #7
	bl sub_8013774
	strb R0, [R4,#8]
	mov R0, #0xFF
	strb R0, [R4,#0x11]
	pop {r4,pc}
loc_800FF36:
	mov R2, #6
	mul R0, R2
	ldr R1, off_800FFE0 // =byte_8020354 
	add r0, r0, r1
	ldrb R1, [R0]
	strb R1, [R4,#4]
	ldrb R1, [R0,#1]
	strb R1, [R4,#5]
	ldrb R1, [R0,#2]
	strb R1, [R4,#6]
	push {r0}
	ldrb R0, [R0,#3]
	bl sub_800FFAA
	pop {r0}
	ldrb R1, [R0,#4]
	strb R1, [R4,#8]
	ldrb R1, [R0,#5]
	strb R1, [R4,#0x11]
	pop {r4,pc}
.endfunc // sub_800FEEC

.func
.thumb_func
sub_800FF5E:
	push {r4,lr}
	ldr R4, [R5,#0x58]
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0
	bne locret_800FFA8
	bl sub_802D234
	cmp R0, #9
	bne loc_800FF7C
	mov r1, #0x44 
	bl sub_8013774
	b loc_800FF7E
loc_800FF7C:
	mov R0, #0xFF
loc_800FF7E:
	strb R0, [R4,#4]
	mov R1, #4
	bl sub_8013774
	strb R0, [R4,#6]
	mov R1, #5
	bl sub_8013774
	bl sub_800FFAA
	mov r1, #0x39 
	bl sub_8013774
	strb R0, [R4,#5]
	mov R1, #7
	bl sub_8013774
	strb R0, [R4,#8]
	mov R0, #0xFF
	strb R0, [R4,#0x11]
	pop {r4,pc}
locret_800FFA8:
	pop {r4,pc}
.endfunc // sub_800FF5E

.func
.thumb_func
sub_800FFAA:
	push {lr}
	cmp r0, #0x21 
	blt loc_800FFB4
	cmp r0, #0x26 
	ble loc_800FFBE
loc_800FFB4:
	ldrb R1, [R4,#7]
	cmp r1, #0x21 
	blt loc_800FFBE
	cmp r1, #0x26 
	ble loc_800FFC0
loc_800FFBE:
	strb R0, [R4,#7]
loc_800FFC0:
	ldrb R0, [R4,#7]
	cmp r0, #0x21 
	blt locret_800FFDE
	cmp r0, #0x26 
	bgt locret_800FFDE
	ldrb R0, [R4,#6]
	mov R2, #0
	cmp R0, #4
	beq loc_800FFDC
	cmp R0, #3
	beq loc_800FFDC
	mov r2, #0x2b 
	cmp r0, #0x2c 
	bne locret_800FFDE
loc_800FFDC:
	strb R2, [R4,#6]
locret_800FFDE:
	pop {pc}
off_800FFE0: .word byte_8020354
.endfunc // sub_800FFAA

.func
.thumb_func
sub_800FFE4:
	ldr R3, [R5,#0x58]
	ldr R1, [R3,#0x44]
	orr R1, R0
	str R1, [R3,#0x44]
	mov PC, LR
.endfunc // sub_800FFE4

.func
.thumb_func
sub_800FFEE:
	ldr R3, [R5,#0x58]
	ldr R1, [R3,#0x44]
	bic R1, R0
	str R1, [R3,#0x44]
	mov PC, LR
.endfunc // sub_800FFEE

	ldr R3, [R5,#0x58]
	ldr R0, [R3,#0x44]
	mov PC, LR
.func
.thumb_func
sub_800FFFE:
	ldr R3, [R5,#0x58]
	ldr R0, [R3,#0x44]
	mov PC, LR
.endfunc // sub_800FFFE

.func
.thumb_func
sub_8010004:
	push {lr}
loc_8010006:
	ldrb R0, [R5,#0x16]
	bl sub_8010018
	add r2, r0, #0
	ldrb R1, [R2]
	add r1, r1, r1
	add R1, #2
	ldrh R0, [R2,R1]
	pop {pc}
.endfunc // sub_8010004

.func
.thumb_func
sub_8010018:
	mov r1, #0x50 
	mul R0, R1
	ldr R1, off_801021C // =byte_20349C0 
	add r0, r0, r1
	mov PC, LR
.endfunc // sub_8010018

.func
.thumb_func
sub_8010022:
	push {lr}
	bl sub_80103BC
	ldr R0, [R0,#0x58]
	pop {pc}
.endfunc // sub_8010022

.func
.thumb_func
sub_801002C:
	push {r4,r7,lr}
	ldr R7, [R5,#0x58]
	ldrb R0, [R7]
	cmp R0, #2
	bne loc_801009C
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0
	bne loc_8010096
	mov R4, #2
	bl sub_801032C
	ldr R1, off_8010220 // =0x200 
	tst R0, R1
	beq loc_8010050
	mov R4, #1
	b loc_8010082
loc_8010050:
	mov r1, #0x2c 
	bl sub_8013774
	mov R4, #0
	cmp R0, #0
	beq loc_801006A
	cmp R0, #0xB
	beq loc_801006A
	cmp R0, #0xC
	beq loc_801006A
	ldr R1, off_8010224 // =byte_80203EA 
	ldrb R4, [R1,R0]
	b loc_801009E
loc_801006A:
	mov R1, #0xE
	bl sub_8013774
	mov R4, #4
	cmp R0, #0xFF
	beq loc_8010078
	mov R4, #0
loc_8010078:
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0
	bne loc_801009E
loc_8010082:
	mov R1, #0x10
	bl sub_8013774
	cmp R0, #0
	beq loc_8010092
	mov R1, #5
	mul R0, R1
	add R0, #0x12
loc_8010092:
	add r4, r4, r0
	b loc_801009E
loc_8010096:
	bl sub_800FD0A
	pop {r4,r7,pc}
loc_801009C:
	mov R4, #0
loc_801009E:
	add r0, r4, #0
	pop {r4,r7,pc}
	.balign 4, 0x00
	.word byte_80100A8
byte_80100A8: .byte 0x0, 0x5, 0x14, 0xA, 0xF, 0x0, 0x0, 0x0, 0x10, 0xB5, 0x4, 0x24
	.byte 0xFA, 0x21, 0x89, 0x0, 0x88, 0x42, 0xA, 0xDA, 0x0, 0x24, 0xFA, 0x21
	.byte 0x49, 0x18, 0x88, 0x42, 0x5, 0xDA, 0x3, 0x24, 0xEB, 0x21, 0x49, 0x18
	.byte 0x88, 0x42, 0x0, 0xDA, 0x2, 0x24, 0x20, 0x1C, 0x10, 0xBD, 0x10, 0xB5
	.byte 0x29, 0x21, 0x3, 0xF0, 0x4B, 0xFB, 0x0, 0x28, 0x1, 0xD1, 0x1, 0x20
	.byte 0x10, 0xBD, 0xFF, 0xF7, 0x2D, 0xFE, 0x10, 0xBD
.endfunc // sub_801002C

.func
.thumb_func
sub_80100EC:
	push {lr}
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0x17
	blt loc_8010102
	cmp R0, #0x18
	bgt loc_8010102
	bl sub_8016A38
	b locret_801010A
loc_8010102:
	bl sub_801002C
	bl sprite_setPallete // (int pallete) -> void
locret_801010A:
	pop {pc}
.endfunc // sub_80100EC

.func
.thumb_func
sub_801010C:
	push {lr}
	ldrb R0, [R5,#0x16]
	bl sub_80103BC
	ldr R0, [R0,#0x58]
	str R0, [R5,#0x58]
	pop {pc}
.endfunc // sub_801010C

.func
.thumb_func
sub_801011A:
	push {lr}
	ldr R0, [R5,#0x58]
	add R0, #0xA0
	mov R1, #0
	strb R1, [R0,#0x1D]
	strh R1, [R0,#0x1E]
	bl sub_80E1662
	pop {pc}
.endfunc // sub_801011A

	push {r4,r7,lr}
	mov r7, #0x50 
	ldr R4, [R5,#0x54]
	bl object_getFlag // () -> int
	mov R1, #4
	tst R0, R1
	beq loc_8010152
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
	ldr R0, [R4,R7]
	tst R0, R0
	bne locret_8010160
	bl sub_80E4D8A
	str R0, [R4,R7]
	b locret_8010160
loc_8010152:
	ldr R0, [R4,R7]
	tst R0, R0
	beq locret_8010160
	bl sub_80E4DA2
	mov R0, #0
	str R0, [R4,R7]
locret_8010160:
	pop {r4,r7,pc}
.func
.thumb_func
sub_8010162:
	push {r4,lr}
	ldr R4, [R5,#0x54]
	ldrh R1, [R4,#0x26]
	ldr R2, dword_8010228 // =0xFFFF 
	cmp R1, R2
	beq loc_801017E
	sub R1, #1
	blt loc_8010190
	strh R1, [R4,#0x26]
	tst R1, R1
	bne loc_801017E
	mov R0, #0x94
	bl sound_play // () -> void
loc_801017E:
	bl object_getFlag // () -> int
	ldr R1, dword_801022C // =0x400000 
	tst R0, R1
	bne loc_8010190
	mov R0, #4
	bl object_setFlag // (int a1) -> void
	b locret_8010196
loc_8010190:
	mov R0, #4
	bl object_clearFlag // (int bitfield) -> void
locret_8010196:
	pop {r4,pc}
.endfunc // sub_8010162

.func
.thumb_func
sub_8010198:
	push {lr}
	ldr R3, [R5,#0x54]
	ldrh R1, [R3,#0x26]
	tst R1, R1
	beq locret_80101AC
	ldr R0, [R3,#0x70]
	tst R0, R0
	beq locret_80101AC
	mov R0, #0
	strh R0, [R3,#0x26]
locret_80101AC:
	pop {pc}
.endfunc // sub_8010198

.func
.thumb_func
sub_80101AE:
	push {lr}
	ldr R1, [R5,#0x54]
	strh R0, [R1,#0x26]
	mov R0, #4
	bl object_setFlag // (int a1) -> void
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
	pop {pc}
.endfunc // sub_80101AE

.func
.thumb_func
sub_80101C4:
	push {lr}
	ldr R1, [R5,#0x54]
	mov R0, #0
	strh R0, [R1,#0x26]
	mov R0, #4
	bl object_clearFlag // (int bitfield) -> void
	pop {pc}
.endfunc // sub_80101C4

.func
.thumb_func
sub_80101D4:
	push {r4,lr}
	add r4, r0, #0
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0xC
	beq loc_80101EE
	cmp R0, #0x12
	blt locret_80101F6
	cmp R0, #0x16
	ble loc_80101EE
	cmp R0, #0x18
	bne locret_80101F6
loc_80101EE:
	ldr R0, [R5,#0x50]
	strb R4, [R0,#0x10]
	mov R1, #0xFF
	strb R1, [R0,#0x11]
locret_80101F6:
	pop {r4,pc}
.endfunc // sub_80101D4

.func
.thumb_func
sub_80101F8:
	push {r4,lr}
	bl getPETNaviSelect // () -> u8
	add r4, r0, #0
	cmp R4, #0
	bne loc_8010216
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8010216
	bl sub_803F524
	beq loc_8010216
	mov R4, #0xD
loc_8010216:
	add r0, r4, #0
	pop {r4,pc}
	.balign 4, 0x00
off_801021C: .word byte_20349C0
off_8010220: .word 0x200
off_8010224: .word byte_80203EA
dword_8010228: .word 0xFFFF
dword_801022C: .word 0x400000
.endfunc // sub_80101F8

.func
.thumb_func
sub_8010230:
	push {r4,lr}
	bl battle_isTimeStop
	bne locret_8010268
	bl battle_isPaused
	bne locret_8010268
	ldr R4, [R5,#0x58]
	ldrh R0, [R5,#0x24]
	cmp R0, #1
	ble locret_8010268
	mov R1, #0x18
	bl sub_8013774
	ldr R1, off_80102A0 // =byte_80102A4 
	ldrb R0, [R1,R0]
	tst R0, R0
	beq loc_8010264
	ldrb R3, [R4,#9]
	add R3, #1
	strb R3, [R4,#9]
	cmp R3, R0
	blt locret_8010268
	mov R0, #1
	bl object_subtractHP
loc_8010264:
	mov R0, #0
	strb R0, [R4,#9]
locret_8010268:
	pop {r4,pc}
.endfunc // sub_8010230

.func
.thumb_func
sub_801026A:
	push {r4,lr}
	bl battle_isTimeStop
	bne locret_801029E
	bl battle_isPaused
	bne locret_801029E
	ldr R4, [R5,#0x58]
	ldrh R0, [R5,#0x24]
	cmp R0, #1
	ble locret_801029E
	ldrb R0, [R4,#0x12]
	ldr R1, off_80102A0 // =byte_80102A4 
	ldrb R0, [R1,R0]
	tst R0, R0
	beq loc_801029A
	ldrb R3, [R4,#9]
	add R3, #1
	strb R3, [R4,#9]
	cmp R3, R0
	blt locret_801029E
	mov R0, #1
	bl object_subtractHP
loc_801029A:
	mov R0, #0
	strb R0, [R4,#9]
locret_801029E:
	pop {r4,pc}
off_80102A0: .word byte_80102A4
byte_80102A4: .byte 0x0, 0x28, 0x23, 0x1E, 0x19, 0x14, 0xF, 0xA
.endfunc // sub_801026A

.func
.thumb_func
sub_80102AC:
	push {R4-R6,lr}
	add r4, r0, #0
	bl sub_800A9E2
	mov R1, #5
	tst R0, R1
	beq locret_80102F0
	add r0, r4, #0
	mov R1, #0x19
	bl sub_80136CC
	ldr R1, off_80102F4 // =byte_80102F8 
	ldrb R6, [R1,R0]
	tst R6, R6
	beq locret_80102F0
	add r0, r4, #0
	bl sub_80103BC
	add r5, r0, #0
	beq locret_80102F0
	ldr R4, [R5,#0x58]
	ldrh R0, [R5,#0x24]
	cmp R0, #1
	ble locret_80102F0
	ldrb R3, [R4,#0xA]
	add R3, #1
	strb R3, [R4,#0xA]
	cmp R3, R6
	blt locret_80102F0
	mov R0, #1
	bl object_subtractHP
	mov R0, #0
	strb R0, [R4,#0xA]
locret_80102F0:
	pop {R4-R6,pc}
	.balign 4, 0x00
off_80102F4: .word byte_80102F8
byte_80102F8: .byte 0x0, 0x28, 0x1E, 0x14, 0xA, 0x5, 0x3, 0x2
.endfunc // sub_80102AC

.func
.thumb_func
sub_8010300:
	mov R2, R10
	ldr R2, [R2,#0x18]
	lsl r1, r1, #2
	add R1, #0x80
	ldr R1, [R2,R1]
	ldr R1, [R1,#0x58]
	ldr R1, [R1,#0x48]
	and R0, R1
	mov PC, LR
.endfunc // sub_8010300

.func
.thumb_func
sub_8010312:
	ldr R3, [R5,#0x58]
	ldr R1, [R3,#0x48]
	orr R1, R0
	str R1, [R3,#0x48]
	mov PC, LR
.endfunc // sub_8010312

.func
.thumb_func
sub_801031C:
	ldr R3, [R5,#0x58]
	ldr R1, [R3,#0x48]
	bic R1, R0
	str R1, [R3,#0x48]
	mov PC, LR
.endfunc // sub_801031C

	ldr R3, [R5,#0x58]
	str R0, [R3,#0x48]
	mov PC, LR
.func
.thumb_func
sub_801032C:
	ldr R3, [R5,#0x58]
	ldr R0, [R3,#0x48]
	mov PC, LR
.endfunc // sub_801032C

.func
.thumb_func
sub_8010332:
	push {r4,lr}
	bl sub_802D234
	cmp R0, #9
	bne loc_8010340
	mov R0, #1
	b locret_8010360
loc_8010340:
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0
	bne loc_8010350
	mov R1, #4
	add r0, r1, #0
	pop {r4,pc}
loc_8010350:
	mov R4, #0xB
	mul R4, R0
	mov r1, #0x2b 
	bl sub_8013774
	ldr R1, off_8010364 // =byte_8020FE0 
	add r1, r1, r4
	ldrb R0, [R1,R0]
locret_8010360:
	pop {r4,pc}
	.balign 4, 0x00
off_8010364: .word byte_8020FE0
.endfunc // sub_8010332

.func
.thumb_func
sub_8010368:
	push {lr}
	bl object_getFlag // () -> int
	ldr R1, off_8010384 // =byte_8010388 
	mov R2, #0x10
	tst R0, R2
	beq loc_8010378
	add R1, #0x10
loc_8010378:
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #3
	add r1, r1, r0
	ldr R2, [R1]
	ldr R3, [R1,#4]
	pop {pc}
off_8010384: .word byte_8010388
byte_8010388: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF, 0x0, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x20, 0x0
	.byte 0x0, 0x0, 0x80, 0x0, 0x88, 0xF
.endfunc // sub_8010368

.func
.thumb_func
sub_80103A8:
	push {lr}
	mov r1, #0x31 
	bl sub_8013774
	mov R1, #0
	tst R0, R0
	beq loc_80103B8
	mov R1, #3
loc_80103B8:
	add r0, r1, #0
	pop {pc}
.endfunc // sub_80103A8

.func
.thumb_func
sub_80103BC:
	push {R4-R6,lr}
	mov R6, R10
	ldr R6, [R6,#0x18]
	mov R1, #0x10
	mul R0, R1
	add R0, #0xD0
	add r6, r6, r0
	mov R4, #0
loc_80103CC:
	ldr R5, [R6]
	tst R5, R5
	beq loc_80103DC
	ldrh R0, [R5,#0x28]
	bl sub_800F29C
	cmp R0, #2
	beq loc_80103E8
loc_80103DC:
	add R5, #3
	add R4, #1
	cmp R4, #4
	blt loc_80103CC
	mov R0, #0
	pop {R4-R6,pc}
loc_80103E8:
	add r0, r5, #0
	pop {R4-R6,pc}
.endfunc // sub_80103BC

.func
.thumb_func
sub_80103EC:
	push {lr}
	bl sub_800A7E2
	bl sub_80103BC
	pop {pc}
.endfunc // sub_80103EC

.func
.thumb_func
sub_80103F8:
	push {R4-R7,lr}
	sub sp, sp, #8
	ldrb R1, [R5,#0x12]
	str R1, [SP]
	ldrb R1, [R5,#0x13]
	str R1, [SP,#4]
	mov R6, R10
	ldr R6, [R6,#0x18]
	mov R1, #0x10
	mul R0, R1
	add R0, #0xD0
	add r6, r6, r0
	mov R4, #4
	mov R7, #0
loc_8010414:
	ldr R5, [R6]
	tst R5, R5
	beq loc_8010454
	ldrb R0, [R5,#8]
	cmp R0, #8
	beq loc_8010454
	ldrh R0, [R5,#0x28]
	bl sub_800F29C
	cmp R0, #2
	beq loc_8010432
	cmp R0, #0
	beq loc_8010432
	cmp R0, #1
	bne loc_8010454
loc_8010432:
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	add r3, sp, #0
	bl sub_8010460
	cmp R7, #0
	beq loc_8010452
	push {r0}
	ldrb R0, [R7,#0x12]
	ldrb R1, [R7,#0x13]
	add r3, sp, #4
	bl sub_8010460
	pop {r1}
	cmp R0, R1
	ble loc_8010454
loc_8010452:
	add r7, r5, #0
loc_8010454:
	add R6, #4
	sub R4, #1
	bne loc_8010414
	add r0, r7, #0
	add sp, sp, #8
	pop {R4-R7,pc}
.endfunc // sub_80103F8

.func
.thumb_func
sub_8010460:
	ldr R2, [R3]
	sub r0, r2, r0
	add r2, r0, #0
	mul R0, R2
	ldr R2, [R3,#4]
	sub r1, r2, r1
	add r2, r1, #0
	mul R1, R2
	add r0, r0, r1
	mov PC, LR
.endfunc // sub_8010460

.func
.thumb_func
sub_8010474:
	push {lr}
	ldr R2, [R5,#0x54]
	strh R4, [R2,#0x24]
	mov R0, #2
	bl object_setFlag // (int a1) -> void
	mov R0, #0x93
	bl sound_play // () -> void
	pop {pc}
.endfunc // sub_8010474

.func
.thumb_func
sub_8010488:
	push {r4,r7,lr}
	ldr R7, [R5,#0x58]
	add R7, #0xA0
	ldrb R0, [R7,#0x1B]
	cmp R0, #0
	beq loc_80104B6
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	ldrb R1, [R7,#0xC]
	add r1, r1, r1
	add r1, #0x36 
	ldrh R2, [R7,#8]
	ldrh R3, [R7,#0xE]
	add r2, r2, r3
	ldrh R3, [R0,R1]
	add r3, r3, r2
	strh R3, [R0,R1]
	mov r0, #0x58 
	add R0, #0xFF
	bl sound_play // () -> void
	pop {r4,r7,pc}
loc_80104B6:
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	add r2, r1, #0
	add r1, r0, #0
	push {r1,r2}
	bl sub_800E2C0
	pop {r1,r2}
	lsl r0, r0, #0x12
	add r1, r1, r0
	mov r3, #0x30 
	lsl r3, r3, #0x10
	mov R4, #0
	bl sub_80E1D7A
	mov R0, #0x90
	bl sound_play // () -> void
	pop {r4,r7,pc}
.endfunc // sub_8010488

.func
.thumb_func
sub_80104E0:
	push {r4,r7,lr}
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	add r2, r1, #0
	add r1, r0, #0
	push {r1,r2}
	bl sub_800E2C0
	pop {r1,r2}
	lsl r0, r0, #0x12
	add r1, r1, r0
	mov r3, #0x30 
	lsl r3, r3, #0x10
	mov R4, #0
	bl sub_80E1D7A
	mov R0, #0x90
	bl sound_play // () -> void
	pop {r4,r7,pc}
.endfunc // sub_80104E0

.func
.thumb_func
sub_801050C:
	push {r4,r6,r7,lr}
	ldrb R0, [R5,#0x16]
	mov R1, #0xC
	mul R0, R1
	add R0, #0xA0
	mov R7, R10
	ldr R7, [R7,#0x18]
	add r7, r7, r0
	mov R6, #0
loc_801051E:
	ldr R0, [R7]
	tst R0, R0
	beq loc_801053E
	ldrh R1, [R0,#0x24]
	tst R1, R1
	beq loc_801053E
	ldrh R1, [R0,#0x26]
	strh R1, [R0,#0x24]
	add r0, #0x34 
	ldmia R0!, {R1-R3}
	mov R4, #6
	bl sub_80E05F6
	mov R0, #0x8A
	bl sound_play // () -> void
loc_801053E:
	add R7, #4
	add R6, #1
	cmp R6, #3
	blt loc_801051E
	pop {r4,r6,r7,pc}
.endfunc // sub_801050C

.func
.thumb_func
sub_8010548:
	push {r4,lr}
	add r4, r0, #0
	ldr R0, [R5,#0x58]
	ldrh R1, [R0,#0x20]
	add r1, r1, r4
	ldr R2, dword_80108EC // =0xFFFF 
	cmp R1, R2
	ble loc_801055A
	add r1, r2, #0
loc_801055A:
	strh R1, [R0,#0x20]
	pop {r4,pc}
.endfunc // sub_8010548

.func
.thumb_func
sub_801055E:
	push {lr}
	bl sub_80103BC
	ldr R0, [R0,#0x58]
	ldrh R0, [R0,#0x20]
	pop {pc}
.endfunc // sub_801055E

.func
.thumb_func
sub_801056A:
	push {r7,lr}
	sub sp, sp, #0xc
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	ldr R7, [R5,#0x58]
	mov R0, #0
	str R0, [R5,#0x4C]
	str R0, [R7,#0x68]
	add R7, #0xA0
	ldr R0, off_80108F0 // =0x810 
	bl sub_801031C
	mov r0, #0x40 
	bl sub_801DACC
	bl sub_800E9FA
	ldrb R0, [R5,#0x16]
	bl sub_802CE78
	str R1, [R7,#8]
	strh R2, [R7,#6]
	strh R0, [R7,#0x14]
	mov R0, #0
	strb R0, [R7,#2]
	ldr R0, [SP,#4]
	strb R0, [R7,#5]
	ldr R0, [SP,#8]
	strb R0, [R7,#3]
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	tst R0, R0
	beq loc_80105BE
	ldrh R0, [R7,#0x14]
	tst R0, R0
	beq loc_80105BE
	ldrh R1, [R7,#8]
	ldrh R2, [R7,#6]
	bl sub_801EB18
loc_80105BE:
	ldr R1, [SP]
	ldr R2, off_80108F4 // =0x200 
	tst R1, R2
	beq loc_80105D2
	mov r0, #0x47 
	bl sub_8011680
	bl loc_80EE90C
	b loc_80105EE
loc_80105D2:
	ldr R2, off_80108F8 // =0x400 
	tst R1, R2
	beq loc_80105E4
	mov r0, #0x48 
	bl sub_8011680
	bl loc_80EEA3C
	b loc_80105EE
loc_80105E4:
	mov r0, #0x4b 
	bl sub_8011680
	bl loc_80EED56
loc_80105EE:
	add sp, sp, #0xc
	pop {r7,pc}
.endfunc // sub_801056A

.func
.thumb_func
sub_80105F2:
	push {r7,lr}
	sub sp, sp, #0x10
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	str R3, [SP,#0xC]
	ldr R7, [R5,#0x58]
	mov R0, #0
	str R0, [R5,#0x4C]
	str R0, [R7,#0x68]
	add R7, #0xA0
	ldr R0, off_80108F0 // =0x810 
	bl sub_801031C
	mov r0, #0x40 
	bl sub_801DACC
	bl sub_800E9FA
	ldr R0, [SP,#0xC]
	str R0, [R7,#8]
	mov R0, #0
	strh R0, [R7,#6]
	strh R0, [R7,#0x14]
	mov R0, #0
	strb R0, [R7,#2]
	ldr R0, [SP,#4]
	strb R0, [R7,#5]
	ldr R0, [SP,#8]
	strb R0, [R7,#3]
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	tst R0, R0
	beq loc_8010646
	ldrh R0, [R7,#0x14]
	tst R0, R0
	beq loc_8010646
	ldrh R1, [R7,#8]
	ldrh R2, [R7,#6]
	bl sub_801EB18
loc_8010646:
	ldr R1, [SP]
	ldr R2, off_80108F4 // =0x200 
	tst R1, R2
	beq loc_8010656
	mov r0, #0x47 
	bl sub_8011680
	b loc_801065C
loc_8010656:
	mov r0, #0x48 
	bl sub_8011680
loc_801065C:
	add sp, sp, #0x10
	pop {r7,pc}
.endfunc // sub_80105F2

.func
.thumb_func
sub_8010660:
	push {r4,r6,r7,lr}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_80106B8
	mov R1, #0xD
	bl sub_8013774
	cmp R0, #0xFF
	beq loc_80106B8
	mov R2, #4
	tst R0, R2
	beq loc_80106B8
	ldrh R0, [R5,#0x26]
	lsr r0, r0, #2
	ldrh R1, [R5,#0x24]
	cmp R0, R1
	bcc loc_80106B8
	mov R1, #0xD
	bl sub_8013774
	mov R2, #4
	bic R0, R2
	add r2, r0, #0
	mov R1, #0xD
	bl sub_8013754
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	mov R2, #0
	mov R3, #0
	mov R4, #2
	mov R6, #0
	ldr R7, dword_80106BC // =0x17B 
	bl sub_80E90FE
	add r2, r0, #0
	mov R1, #1
	ldrb R0, [R5,#0x16]
	bl sub_800BF16
	mov R0, #1
	pop {r4,r6,r7,pc}
loc_80106B8:
	mov R0, #0
	pop {r4,r6,r7,pc}
dword_80106BC: .word 0x17B
.endfunc // sub_8010660

.func
.thumb_func
sub_80106C0:
	push {r4,r6,r7,lr}
	add r4, r0, #0
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8010738
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	add r6, r0, #0
	mov R1, #0xD
	bl sub_80136CC
	cmp R0, #0xFF
	beq loc_8010738
	mov R2, #2
	tst R0, R2
	beq loc_8010738
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#7]
	cmp R1, #1
	beq loc_80106F6
	cmp R1, #2
	bne loc_8010738
loc_80106F6:
	add r0, r6, #0
	mov R1, #0xD
	bl sub_80136CC
	mov R2, #2
	bic R0, R2
	add r2, r0, #0
	mov R1, #0xD
	add r0, r6, #0
	bl sub_80136B0
	add r0, r6, #0
	bl sub_80103BC
	push {r5}
	add r5, r0, #0
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	mov R2, #0
	mov R3, #0
	mov R4, #1
	mov R6, #0
	ldr R7, dword_801073C // =0x17A 
	bl sub_80E90FE
	add r2, r0, #0
	mov R1, #1
	ldrb R0, [R5,#0x16]
	bl sub_800BF16
	pop {r5}
	mov R0, #1
	pop {r4,r6,r7,pc}
loc_8010738:
	mov R0, #0
	pop {r4,r6,r7,pc}
dword_801073C: .word 0x17A
.endfunc // sub_80106C0

.func
.thumb_func
sub_8010740:
	push {r4,r6,r7,lr}
	add r4, r0, #0
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_80107B6
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	add r6, r0, #0
	mov R1, #0xD
	bl sub_80136CC
	cmp R0, #0xFF
	beq loc_80107B6
	mov R2, #1
	tst R0, R2
	beq loc_80107B6
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#0x16]
	mov R2, #2
	tst R1, R2
	beq loc_80107B6
	add r0, r6, #0
	mov R1, #0xD
	bl sub_80136CC
	mov R2, #1
	bic R0, R2
	add r2, r0, #0
	mov R1, #0xD
	add r0, r6, #0
	bl sub_80136B0
	add r0, r6, #0
	bl sub_80103BC
	push {r5}
	add r5, r0, #0
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	mov R2, #0
	mov R3, #0
	lsl r4, r4, #0x10
	mov R6, #0
	ldr R7, off_80107BC // =0x179 
	bl sub_80E90FE
	add r2, r0, #0
	mov R1, #1
	ldrb R0, [R5,#0x16]
	bl sub_800BF16
	pop {r5}
	mov R0, #1
	pop {r4,r6,r7,pc}
loc_80107B6:
	mov R0, #0
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
off_80107BC: .word 0x179
.endfunc // sub_8010740

.func
.thumb_func
sub_80107C0:
	push {lr}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_80107D0
	mov R3, #0
	pop {pc}
loc_80107D0:
	mov R3, #3
	pop {pc}
.endfunc // sub_80107C0

.func
.thumb_func
sub_80107D4:
	push {r4,lr}
	bl battle_isTimeStop
	bne locret_801081E
	ldr R4, [R5,#0x58]
	ldrb R0, [R4,#0x19]
	tst R0, R0
	beq loc_80107E8
	sub R0, #1
	strb R0, [R4,#0x19]
loc_80107E8:
	ldrb R0, [R4,#0x15]
	tst R0, R0
	beq loc_80107F2
	sub R0, #1
	strb R0, [R4,#0x15]
loc_80107F2:
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	add r4, r0, #0
	ldrb R0, [R4]
	tst R0, R0
	beq locret_801081E
	ldrh R1, [R4,#0x2E]
	tst R1, R1
	beq loc_801080A
	sub R1, #1
	strh R1, [R4,#0x2E]
loc_801080A:
	ldrh R1, [R4,#0x3A]
	tst R1, R1
	beq loc_8010814
	sub R1, #1
	strh R1, [R4,#0x3A]
loc_8010814:
	ldrh R1, [R4,#0x3C]
	tst R1, R1
	beq locret_801081E
	sub R1, #1
	strh R1, [R4,#0x3C]
locret_801081E:
	pop {r4,pc}
.endfunc // sub_80107D4

.func
.thumb_func
sub_8010820:
	push {r4,lr}
	mov R0, #0xFF
	and R4, R0
	ldrb R0, [R5,#0x16]
	mov R1, #1
	bl sub_80136CC
	add r2, r0, r4
	cmp R2, #0xA
	blt loc_8010836
	mov R2, #9
loc_8010836:
	ldrb R0, [R5,#0x16]
	mov R1, #1
	bl sub_80136B0
loc_801083E:
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	push {R1-R3}
	ldrh R0, [R5,#0x28]
	mov r1, #0x20 
	ldrb R2, [R5,#0x16]
	ldrb R3, [R5,#0x17]
	bl sub_8018810
	lsl r0, r0, #0x10
	lsl r4, r1, #0x10
	pop {R1-R3}
	add r1, r1, r0
	add r3, r3, r4
	mov r4, #0x31 
	bl sub_80E05F6
	mov R0, #0x1A
	add R0, #0xFF
	bl sound_play // () -> void
	pop {r4,pc}
.endfunc // sub_8010820

.func
.thumb_func
sub_801086C:
	push {r4,lr}
	ldr R4, off_80108B0 // =byte_80108B8 
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0
	bne loc_8010890
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0
	beq loc_8010888
	ldrb R0, [R4,R0]
	b loc_8010892
loc_8010888:
	mov R1, #0x10
	bl sub_8013774
	b loc_8010892
loc_8010890:
	ldrb R0, [R4,R0]
loc_8010892:
	bl sub_8019F8C
	ldr R4, off_80108B4 // =byte_80108D1 
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0
	bne loc_80108A8
	mov r1, #0x29 
	bl sub_8013774
loc_80108A8:
	ldrb R0, [R4,R0]
	bl sub_8019F9E
	pop {r4,pc}
off_80108B0: .word byte_80108B8
off_80108B4: .word byte_80108D1
byte_80108B8: .byte 0x0, 0x1, 0x3, 0x0, 0x0, 0x1, 0x2, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x3, 0x0, 0x0
	.byte 0x1, 0x2, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0
byte_80108D1: .byte 0x0, 0x0, 0x0, 0x10, 0x20, 0x0, 0x0, 0x0, 0x80, 0x40, 0x40, 0x0
	.byte 0x0, 0x0, 0x0, 0x10, 0x20, 0x0, 0x0, 0x0, 0x80, 0x40, 0x40, 0x0
	.byte 0x0, 0x0, 0x0
dword_80108EC: .word 0xFFFF
off_80108F0: .word 0x810
off_80108F4: .word 0x200
off_80108F8: .word 0x400
.endfunc // sub_801086C

.func
.thumb_func
sub_80108FC:
	push {r4,r6,r7,lr}
	bl sub_8010018
	b loc_8010906
	push {r4,r6,r7,lr}
loc_8010906:
	add r7, r0, #0
	ldrb R4, [R7]
loc_801090A:
	add r0, r4, r4
	add R0, #2
	ldrh R1, [R7,R0]
	ldr R2, dword_801099C // =0xFFFF 
	cmp R1, R2
	beq locret_801092A
	ldr R2, off_80109A0 // =0x190 
	sub r1, r1, r2
	cmp R1, #0xA
	bhi loc_8010926
	add r0, r4, #0
	bl sub_801092C
	b loc_801090A
loc_8010926:
	add R4, #1
	b loc_801090A
locret_801092A:
	pop {r4,r6,r7,pc}
.endfunc // sub_80108FC

.func
.thumb_func
sub_801092C:
	push {lr}
loc_801092E:
	add r1, r0, #1
	push {r0,r1}
	bl sub_8010940
	pop {r0,r1}
	add R0, #1
	cmp R0, #5
	blt loc_801092E
	pop {pc}
.endfunc // sub_801092C

.func
.thumb_func
sub_8010940:
	push {R4-R6,lr}
	add r4, r0, r0
	add r5, r1, r1
	mov R2, #2
	add r2, r2, r4
	mov R3, #2
	add r3, r3, r5
	ldrh R6, [R7,R3]
	strh R6, [R7,R2]
	mov R2, #0xE
	add r2, r2, r4
	mov R3, #0xE
	add r3, r3, r5
	ldrh R6, [R7,R3]
	strh R6, [R7,R2]
	mov R2, #0x1A
	add r2, r2, r4
	mov R3, #0x1A
	add r3, r3, r5
	ldrh R6, [R7,R3]
	strh R6, [R7,R2]
	mov r2, #0x26 
	add r2, r2, r4
	mov r3, #0x26 
	add r3, r3, r5
	ldrh R6, [R7,R3]
	strh R6, [R7,R2]
	mov r2, #0x32 
	add r2, r2, r4
	mov r3, #0x32 
	add r3, r3, r5
	ldrh R6, [R7,R3]
	strh R6, [R7,R2]
	mov r2, #0x3e 
	add r2, r2, r0
	mov r3, #0x3e 
	add r3, r3, r1
	ldrb R6, [R7,R3]
	strb R6, [R7,R2]
	mov r2, #0x44 
	add r2, r2, r0
	mov r3, #0x44 
	add r3, r3, r1
	ldrb R6, [R7,R3]
	strb R6, [R7,R2]
	pop {R4-R6,pc}
dword_801099C: .word 0xFFFF
off_80109A0: .word 0x190
.endfunc // sub_8010940

.func
.thumb_func
sub_80109A4:
	push {r4,r7,lr}
	add r7, r0, #0
	add r4, r1, #0
	ldr R2, dword_80109D8 // =0xFFFF 
	cmp R0, R2
	beq loc_80109D0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrh R0, [R0,#0x1A]
	mov R2, #0xFA
	lsl r2, r2, #2
	cmp R0, R2
	blt locret_80109D2
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr R2, off_80109D4 // =off_80109DC 
	ldr R2, [R0,R2]
	add r0, r7, #0
	add r1, r4, #0
	mov LR, PC
	bx r2
	pop {r4,r7,pc}
loc_80109D0:
	mov R0, #0
locret_80109D2:
	pop {r4,r7,pc}
off_80109D4: .word off_80109DC
dword_80109D8: .word 0xFFFF
off_80109DC: .word sub_8010A90+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010B78+1
	.word sub_8010BD0+1
	.word sub_8010BF0+1
	.word sub_8010C06+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
.endfunc // sub_80109A4

.func
.thumb_func
sub_8010A90:
	push {r4,lr}
	add r4, r1, #0
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_8010ACE
	mov R0, R10
	ldr R0, [R0,#0x18]
	add R0, #0x90
	neg R1, R4
	add r1, r1, r1
	add R1, #3
	mov R3, #0
loc_8010AAC:
	ldr R2, [R0]
	tst R2, R2
	beq loc_8010ABA
	ldrh R2, [R2,#0x24]
	cmp R2, R3
	blt loc_8010ABA
	add r3, r2, #0
loc_8010ABA:
	add R0, #4
	sub R1, #1
	bgt loc_8010AAC
	mov R2, #0xFA
	add r2, r2, r2
	cmp R3, R2
	ble loc_8010ACA
	add r3, r2, #0
loc_8010ACA:
	add r0, r3, #0
	pop {r4,pc}
loc_8010ACE:
	mov R0, #1
	eor R0, R4
	bl sub_80103BC
	ldrh R0, [R0,#0x24]
	mov R1, #0xFA
	add r1, r1, r1
	cmp R0, R1
	ble locret_8010AE2
	add r0, r1, #0
locret_8010AE2:
	pop {r4,pc}
.endfunc // sub_8010A90

.func
.thumb_func
sub_8010AE4:
	push {r4,lr}
	add r4, r1, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrh R1, [R0,#0x1A]
	ldr R2, off_8010D28 // =0x3E9 
	sub r1, r1, r2
	mov r2, #0x28 
	mul R2, R4
	ldr R3, off_8010D2C // =byte_203EB00 
	add r3, r3, r2
	add r2, r1, r1
	ldrh R0, [R3,R2]
	add r4, r1, #0
	bl sub_8000D84
	mov R1, #0
	ldr R2, off_8010B24 // =byte_8010B2C 
loc_8010B08:
	ldr R3, [R2]
	cmp R0, R3
	ble loc_8010B16
	add R2, #4
	add R1, #1
	cmp R1, #0xA
	blt loc_8010B08
loc_8010B16:
	mov R0, #0x16
	mul R0, R4
	add r1, r1, r1
	ldr R2, off_8010D30 // =dword_8020E54 
	add r2, r2, r1
	ldrh R0, [R2,R0]
	pop {r4,pc}
off_8010B24: .word byte_8010B2C
	.word byte_8010B54
byte_8010B2C: .byte 0x0, 0x10, 0x0, 0x0, 0x0, 0x12, 0x0, 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x16
	.byte 0x0, 0x0, 0x0, 0x18, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x22, 0x0, 0x0
	.byte 0x0, 0x24, 0x0, 0x0, 0x0, 0x26, 0x0, 0x0, 0x0, 0x28, 0x0, 0x0
byte_8010B54: .byte 0xD2, 0x0, 0xD2, 0x0, 0x64, 0x0, 0xD2, 0x0, 0x64, 0x0, 0x5F
	.byte 0x0, 0xE6, 0x0, 0xAF, 0x0, 0x69, 0x0, 0x64, 0x0, 0xDC, 0x0
	.byte 0xB4, 0x0, 0xD2, 0x0, 0x20, 0x0, 0xA5, 0x0, 0x64, 0x0, 0x28
	.byte 0x0, 0x64, 0x0
.endfunc // sub_8010AE4

.func
.thumb_func
sub_8010B78:
	push {lr}
	push {r0,r1}
	bl sub_800A8F8
	pop {r0,r1}
	beq loc_8010B92
	add r0, r1, #0
	bl sub_802E070
	ldrh R0, [R0,#0x28]
	ldr R1, off_8010D34 // =0x1500 
	add r0, r0, r1
	b loc_8010B96
loc_8010B92:
	bl sub_801DFE4
loc_8010B96:
	add r1, r0, #0
	mov R0, #0xA
	lsr r1, r1, #7
	cmp R1, #0x80
	bge locret_8010BCE
	cmp r1, #0x40 
	bgt loc_8010BB0
	mov R0, #0x16
	mul R0, R1
	mov r1, #0x40 
	svc 6
	add R0, #0xA
	b locret_8010BCE
loc_8010BB0:
	cmp r1, #0x70 
	bgt loc_8010BC2
	sub r1, #0x40 
	mov r0, #0x60 
	mul R0, R1
	mov r1, #0x30 
	svc 6
	add r0, #0x20 
	b locret_8010BCE
loc_8010BC2:
	sub r1, #0x70 
	mov R0, #0x80
	mul R0, R1
	mov R1, #0xF
	svc 6
	add R0, #0x80
locret_8010BCE:
	pop {pc}
.endfunc // sub_8010B78

.func
.thumb_func
sub_8010BD0:
	push {r6,r7,lr}
	add r6, r0, #0
	add r7, r1, #0
	add r0, r1, #0
	bl sub_80103BC
	tst R0, R0
	beq locret_8010BEE
	ldrh R1, [R0,#0x24]
	ldrh R0, [R0,#0x26]
	sub r0, r0, r1
	ldr R1, off_8010D38 // =0x1F4 
	cmp R0, R1
	ble locret_8010BEE
	add r0, r1, #0
locret_8010BEE:
	pop {r6,r7,pc}
.endfunc // sub_8010BD0

.func
.thumb_func
sub_8010BF0:
	push {lr}
	add r0, r1, #0
	bl sub_80103BC
	tst R0, R0
	beq locret_8010C04
	ldrh R0, [R0,#0x24]
	mov r1, #0x64 
	svc 6
	add r0, r1, #0
locret_8010C04:
	pop {pc}
.endfunc // sub_8010BF0

.func
.thumb_func
sub_8010C06:
	push {r4,lr}
	add r4, r1, #0
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_8010C36
	mov R0, #0
	mov R1, #0
	mov R2, R10
	ldr R2, [R2,#0x18]
	add R2, #0x90
loc_8010C1E:
	ldr R3, [R2]
	tst R3, R3
	beq loc_8010C2C
	ldrh R3, [R3,#0x26]
	cmp R3, R0
	blt loc_8010C2C
	add r0, r3, #0
loc_8010C2C:
	add R2, #4
	add R1, #1
	cmp R1, #3
	blt loc_8010C1E
	b loc_8010C44
loc_8010C36:
	mov R0, #1
	eor R0, R4
	bl sub_80103BC
	tst R0, R0
	beq locret_8010C4E
	ldrh R0, [R0,#0x26]
loc_8010C44:
	lsr r0, r0, #1
	ldr R1, dword_8010D3C // =0x3E7 
	cmp R0, R1
	ble locret_8010C4E
	add r0, r1, #0
locret_8010C4E:
	pop {r4,pc}
.endfunc // sub_8010C06

.func
.thumb_func
sub_8010C50:
	push {R4-R6,lr}
	add r4, r0, #0
	add r6, r1, #0
	add r0, r1, #0
	bl sub_80103BC
	add r5, r0, #0
	tst R5, R5
	beq locret_8010C74
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrh R0, [R0,#0x1A]
	ldr R1, dword_8010D40 // =0x3FF 
	sub r0, r0, r1
	add r1, r6, #0
	bl sub_8010D04
locret_8010C74:
	pop {R4-R6,pc}
.endfunc // sub_8010C50

.func
.thumb_func
sub_8010C76:
	push {r4,lr}
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrh R1, [R0,#0x1A]
	ldr R2, off_8010D28 // =0x3E9 
	cmp R1, R2
	blt loc_8010CB0
	sub r1, r1, r2
	ldr R3, off_8010D44 // =unk_20018C0 
	add r4, r1, r1
	ldrh R0, [R3,R4]
	bl sub_8000D84
	mov R1, #0
	ldr R2, off_8010CB4 // =dword_8010CB8 
loc_8010C94:
	ldr R3, [R2]
	cmp R0, R3
	ble loc_8010CA2
	add R2, #4
	add R1, #1
	cmp R1, #0xA
	blt loc_8010C94
loc_8010CA2:
	mov R0, #0xB
	mul R0, R4
	add r1, r1, r1
	ldr R2, off_8010D48 // =dword_8020E54 
	add r2, r2, r1
	ldrh R0, [R2,R0]
	pop {r4,pc}
loc_8010CB0:
	add r0, r1, #0
	pop {r4,pc}
off_8010CB4: .word dword_8010CB8
dword_8010CB8: .word 0x1000
	.word 0x1200
	.word 0x1400
	.word 0x1600
	.word 0x1800
	.word 0x2000
	.word 0x2200
	.word 0x2400
	.word 0x2600
	.word 0x2800
.endfunc // sub_8010C76

.func
.thumb_func
sub_8010CE0:
	push {r4,lr}
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrh R1, [R0,#0x1A]
	ldr R2, off_8010D28 // =0x3E9 
	cmp R1, R2
	blt loc_8010D00
	sub r1, r1, r2
	add r4, r1, r1
	mov R0, #0xB
	mul R0, R4
	mov R1, #0xA
	ldr R2, off_8010D4C // =dword_8020E54 
	add r2, r2, r1
	ldrh R0, [R2,R0]
	pop {r4,pc}
loc_8010D00:
	add r0, r1, #0
	pop {r4,pc}
.endfunc // sub_8010CE0

.func
.thumb_func
sub_8010D04:
	push {lr}
	mov R2, #2
	mul R0, R2
	ldr R2, off_8010D50 // =dword_80212D4 
	add r2, r2, r0
	ldrb R0, [R2]
	ldrb R1, [R2,#1]
	bl sub_8012642
	pop {pc}
.endfunc // sub_8010D04

	lsl r0, r0, #2
	ldr R1, off_8010D54 // =dword_203CDF0 
	ldr R0, [R1,R0]
	mov PC, LR
.func
.thumb_func
sub_8010D20:
	push {r4,lr}
	mov R4, #0
	add r0, r4, #0
	pop {r4,pc}
off_8010D28: .word 0x3E9
off_8010D2C: .word byte_203EB00
off_8010D30: .word dword_8020E54
off_8010D34: .word 0x1500
off_8010D38: .word 0x1F4
dword_8010D3C: .word 0x3E7
dword_8010D40: .word 0x3FF
off_8010D44: .word unk_20018C0
off_8010D48: .word dword_8020E54
off_8010D4C: .word dword_8020E54
off_8010D50: .word dword_80212D4
off_8010D54: .word dword_203CDF0
.endfunc // sub_8010D20

.func
.thumb_func
sub_8010D58:
	push {r6,lr}
	lsl r6, r0, #2
	cmp R0, #0xFF
	beq loc_8010D7C
	bl sub_800F4A8
	cmp R0, #1
	blt loc_8010D70
	mov R0, #1
	bl sub_800F4B2
	b loc_8010D7C
loc_8010D70:
	ldr R1, off_8010D80 // =off_8010D84 
	ldr R0, [R1,R6]
	mov LR, PC
	bx r0
	mov R4, #0
	b locret_8010D7E
loc_8010D7C:
	ldr R0, dword_8010DCC // =0xFFFF 
locret_8010D7E:
	pop {r6,pc}
off_8010D80: .word off_8010D84
off_8010D84: .word sub_8010D98+1
	.word sub_8010DA2+1
	.word sub_8010DAC+1
	.word sub_8010DB6+1
	.word sub_8010DC0+1
.endfunc // sub_8010D58

.func
.thumb_func
sub_8010D98:
	push {lr}
	mov r0, #0x47 
	bl sub_800EF02
	pop {pc}
.endfunc // sub_8010D98

.func
.thumb_func
sub_8010DA2:
	push {lr}
	mov R0, #0x1E
	bl sub_800EF02
	pop {pc}
.endfunc // sub_8010DA2

.func
.thumb_func
sub_8010DAC:
	push {lr}
	mov R0, #0x9A
	bl sub_800EF02
	pop {pc}
.endfunc // sub_8010DAC

.func
.thumb_func
sub_8010DB6:
	push {lr}
	mov R0, #0xB1
	bl sub_800EF02
	pop {pc}
.endfunc // sub_8010DB6

.func
.thumb_func
sub_8010DC0:
	push {lr}
	mov R0, #0xC0
	bl sub_800EF02
	pop {pc}
	.balign 4, 0x00
dword_8010DCC: .word 0xFFFF
.endfunc // sub_8010DC0

.func
.thumb_func
sub_8010DD0:
	push {lr}
	ldrh R0, [R5,#0x28]
	bl loc_8010DDA
	pop {pc}
.endfunc // sub_8010DD0

loc_8010DDA:
	push {lr}
	bl sub_80182B4
	ldrb R1, [R0,#1]
	lsl r1, r1, #2
	ldrb R2, [R0,#2]
	lsl r2, r2, #2
	ldr R0, off_8010E08 // =off_8010E0C 
	ldr R0, [R0,R1]
	ldr R0, [R0,R2]
	mov R2, #0
	mov LR, PC
	bx r0
	pop {pc}
.func
.thumb_func
sub_8010DF6:
	push {lr}
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr R3, off_8010E08 // =off_8010E0C 
	ldr R3, [R3,R0]
	ldr R3, [R3,R1]
	mov LR, PC
	bx r3
	pop {pc}
off_8010E08: .word off_8010E0C
off_8010E0C: .word off_8010E18
	.word off_8010EA4
	.word off_8010EA4
off_8010E18: .word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
off_8010EA4: .word locret_8010F68+1
	.word sub_8010F6A+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_8010F7A+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_8010F86+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_8010F96+1
	.word sub_8010FD8+1
	.word locret_80114D4+1
	.word sub_8011004+1
	.word locret_80114D4+1
	.word sub_8010FAC+1
	.word sub_8010FC2+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word loc_8011366+1
off_8010F08: .word sub_80112E0+1
	.word sub_80112EA+1
	.word sub_80112F4+1
	.word sub_80112FE+1
	.word sub_8011308+1
	.word sub_8011312+1
	.word sub_8011330+1
	.word sub_801131C+1
	.word sub_8011326+1
	.word sub_801133A+1
	.word locret_80114D4+1
	.word loc_8011366+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_8011352+1
.endfunc // sub_8010DF6

	asr r7, r2, #0xd
	lsr r1, r0, #0x20
	asr r3, r3, #0xd
	lsr r1, r0, #0x20
	asr r7, r3, #0xd
	lsr r1, r0, #0x20
	asr r3, r4, #0xd
	lsr r1, r0, #0x20
	asr r5, r2, #0x13
	lsr r1, r0, #0x20
	asr r7, r4, #0xd
	lsr r1, r0, #0x20
locret_8010F68:
	mov PC, LR
.func
.thumb_func
sub_8010F6A:
	push {r4,lr}
	mov R4, #2
	lsl r2, r2, #0x10
	add r4, r4, r2
	bl sub_80C44A8
	str R0, [R5,#0x50]
	pop {r4,pc}
.endfunc // sub_8010F6A

.func
.thumb_func
sub_8010F7A:
	push {r4,lr}
	mov R4, #0
	bl sub_80C41D8
	str R0, [R5,#0x50]
	pop {r4,pc}
.endfunc // sub_8010F7A

.func
.thumb_func
sub_8010F86:
	push {r4,lr}
	mov R4, #0xB
	lsl r2, r2, #0x10
	add r4, r4, r2
	bl sub_80C44A8
	str R0, [R5,#0x50]
	pop {r4,pc}
.endfunc // sub_8010F86

.func
.thumb_func
sub_8010F96:
	push {r4,lr}
	mov R4, #3
	lsl r2, r2, #0x10
	add r4, r4, r2
	mov R2, #0xA
	lsl r2, r2, #0x18
	add r4, r4, r2
	bl sub_80C44A8
	str R0, [R5,#0x50]
	pop {r4,pc}
.endfunc // sub_8010F96

.func
.thumb_func
sub_8010FAC:
	push {r4,lr}
	mov R4, #0
	lsl r2, r2, #0x10
	add r4, r4, r2
	mov R2, #0xD
	lsl r2, r2, #0x18
	add r4, r4, r2
	bl sub_80C44A8
	str R0, [R5,#0x50]
	pop {r4,pc}
.endfunc // sub_8010FAC

.func
.thumb_func
sub_8010FC2:
	push {r4,lr}
	mov R4, #0x10
	lsl r2, r2, #0x10
	add r4, r4, r2
	mov R2, #0x14
	lsl r2, r2, #0x18
	add r4, r4, r2
	bl sub_80C44A8
	str R0, [R5,#0x50]
	pop {r4,pc}
.endfunc // sub_8010FC2

.func
.thumb_func
sub_8010FD8:
	push {r4,lr}
	push {r2}
	mov R4, #6
	lsl r2, r2, #0x10
	add r4, r4, r2
	mov R2, #0x14
	lsl r2, r2, #0x18
	add r4, r4, r2
	bl sub_80C44A8
	str R0, [R5,#0x50]
	pop {r2}
	mov R4, #7
	lsl r2, r2, #0x10
	add r4, r4, r2
	mov r2, #0x28 
	lsl r2, r2, #0x18
	add r4, r4, r2
	bl sub_80C44A8
	str R0, [R5,#0x60]
	pop {r4,pc}
.endfunc // sub_8010FD8

.func
.thumb_func
sub_8011004:
	push {r4,lr}
	mov R4, #0xF
	lsl r2, r2, #0x10
	add r4, r4, r2
	mov R2, #1
	lsl r2, r2, #8
	add r4, r4, r2
	mov R2, #9
	lsl r2, r2, #0x18
	add r4, r4, r2
	bl sub_80C44A8
	str R0, [R5,#0x50]
	pop {r4,pc}
.endfunc // sub_8011004

.func
.thumb_func
sub_8011020:
	push {lr}
	ldrh R0, [R5,#0x28]
	bl loc_801102A
	pop {pc}
.endfunc // sub_8011020

loc_801102A:
	push {lr}
	bl sub_80182B4
	ldrb R1, [R0,#1]
	lsl r1, r1, #2
	ldrb R2, [R0,#2]
	lsl r2, r2, #2
	ldr R0, off_8011058 // =off_801105C 
	ldr R0, [R0,R1]
	ldr R0, [R0,R2]
	mov LR, PC
	bx r0
	pop {pc}
loc_8011044:
	push {lr}
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr R2, off_8011058 // =off_801105C 
	ldr R2, [R2,R0]
	ldr R2, [R2,R1]
	mov LR, PC
	bx r2
	pop {pc}
	.balign 4, 0x00
off_8011058: .word off_801105C
off_801105C: .word off_8011068
	.word off_80110F4
	.word off_80110F4
off_8011068: .word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
off_80110F4: .word sub_80111B8+1
	.word sub_80111CA+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_80111DC+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_80111EE+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_8011200+1
	.word sub_8011236+1
	.word locret_80114D4+1
	.word sub_8011256+1
	.word locret_80114D4+1
	.word sub_8011212+1
	.word sub_8011224+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_801140E+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word locret_80114D4+1
	.word sub_801140E+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word locret_80114D4+1
	.word sub_801140E+1
.func
.thumb_func
sub_80111B8:
	push {lr}
	ldr R0, [R5,#0x50]
	tst R0, R0
	beq locret_80111C8
	bl sub_80C44C8
	mov R0, #0
	str R0, [R5,#0x50]
locret_80111C8:
	pop {pc}
.endfunc // sub_80111B8

.func
.thumb_func
sub_80111CA:
	push {lr}
	ldr R0, [R5,#0x50]
	tst R0, R0
	beq locret_80111DA
	bl sub_80C44C8
	mov R0, #0
	str R0, [R5,#0x50]
locret_80111DA:
	pop {pc}
.endfunc // sub_80111CA

.func
.thumb_func
sub_80111DC:
	push {lr}
	ldr R0, [R5,#0x50]
	tst R0, R0
	beq locret_80111EC
	bl sub_80C4204
	mov R0, #0
	str R0, [R5,#0x50]
locret_80111EC:
	pop {pc}
.endfunc // sub_80111DC

.func
.thumb_func
sub_80111EE:
	push {lr}
	ldr R0, [R5,#0x50]
	tst R0, R0
	beq locret_80111FE
	bl sub_80C44C8
	mov R0, #0
	str R0, [R5,#0x50]
locret_80111FE:
	pop {pc}
.endfunc // sub_80111EE

.func
.thumb_func
sub_8011200:
	push {lr}
	ldr R0, [R5,#0x50]
	tst R0, R0
	beq locret_8011210
	bl sub_80C44C8
	mov R0, #0
	str R0, [R5,#0x50]
locret_8011210:
	pop {pc}
.endfunc // sub_8011200

.func
.thumb_func
sub_8011212:
	push {lr}
	ldr R0, [R5,#0x50]
	tst R0, R0
	beq locret_8011222
	bl sub_80C44C8
	mov R0, #0
	str R0, [R5,#0x50]
locret_8011222:
	pop {pc}
.endfunc // sub_8011212

.func
.thumb_func
sub_8011224:
	push {lr}
	ldr R0, [R5,#0x50]
	tst R0, R0
	beq locret_8011234
	bl sub_80C44C8
	mov R0, #0
	str R0, [R5,#0x50]
locret_8011234:
	pop {pc}
.endfunc // sub_8011224

.func
.thumb_func
sub_8011236:
	push {lr}
	ldr R0, [R5,#0x50]
	tst R0, R0
	beq loc_8011246
	bl sub_80C44C8
	mov R0, #0
	str R0, [R5,#0x50]
loc_8011246:
	ldr R0, [R5,#0x60]
	tst R0, R0
	beq locret_8011254
	bl sub_80C44C8
	mov R0, #0
	str R0, [R5,#0x60]
locret_8011254:
	pop {pc}
.endfunc // sub_8011236

.func
.thumb_func
sub_8011256:
	push {lr}
	ldr R0, [R5,#0x50]
	tst R0, R0
	beq locret_8011266
	bl sub_80C44C8
	mov R0, #0
	str R0, [R5,#0x50]
locret_8011266:
	pop {pc}
.endfunc // sub_8011256

loc_8011268:
	push {lr}
	mov R2, #0
	lsl r0, r0, #2
	ldr R1, off_8011278 // =off_801127C 
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {pc}
off_8011278: .word off_801127C
off_801127C: .word locret_8010F68+1
	.word sub_80112E0+1
	.word sub_80112EA+1
	.word sub_80112F4+1
	.word sub_80112FE+1
	.word sub_8011308+1
	.word sub_8011312+1
	.word sub_8011330+1
	.word sub_801131C+1
	.word sub_8011326+1
	.word sub_801133A+1
	.word locret_80114D4+1
	.word loc_8011366+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_8011352+1
	.word loc_8011356+1
	.word loc_801135A+1
	.word loc_801135E+1
	.word loc_8011362+1
	.word locret_80114D4+1
	.word loc_8011366+1
.func
.thumb_func
sub_80112E0:
	push {lr}
	ldr R0, off_80114D8 // =0x104 
	bl sub_8011344
	pop {pc}
.endfunc // sub_80112E0

.func
.thumb_func
sub_80112EA:
	push {lr}
	ldr R0, off_80114DC // =0x108 
	bl sub_8011344
	pop {pc}
.endfunc // sub_80112EA

.func
.thumb_func
sub_80112F4:
	push {lr}
	ldr R0, dword_80114E0 // =0x10A 
	bl sub_8011344
	pop {pc}
.endfunc // sub_80112F4

.func
.thumb_func
sub_80112FE:
	push {lr}
	ldr R0, off_80114E4 // =0x10C 
	bl sub_8011344
	pop {pc}
.endfunc // sub_80112FE

.func
.thumb_func
sub_8011308:
	push {lr}
	ldr R0, off_80114E8 // =0x111 
	bl sub_8011344
	pop {pc}
.endfunc // sub_8011308

.func
.thumb_func
sub_8011312:
	push {lr}
	ldr R0, off_80114EC // =0x105 
	bl sub_8011344
	pop {pc}
.endfunc // sub_8011312

.func
.thumb_func
sub_801131C:
	push {lr}
	ldr R0, off_80114F0 // =0x109 
	bl sub_8011344
	pop {pc}
.endfunc // sub_801131C

.func
.thumb_func
sub_8011326:
	push {lr}
	ldr R0, off_80114F4 // =0x10D 
	bl sub_8011344
	pop {pc}
.endfunc // sub_8011326

.func
.thumb_func
sub_8011330:
	push {lr}
	ldr R0, dword_80114F8 // =0x10E 
	bl sub_8011344
	pop {pc}
.endfunc // sub_8011330

.func
.thumb_func
sub_801133A:
	push {lr}
	ldr R0, dword_80114FC // =0x112 
	bl sub_8011344
	pop {pc}
.endfunc // sub_801133A

.func
.thumb_func
sub_8011344:
	push {r4,lr}
	lsl r4, r2, #0x10
	add r4, r4, r0
	bl sub_80C44A8
	str R0, [R5,#0x50]
	pop {r4,pc}
.endfunc // sub_8011344

.func
.thumb_func
sub_8011352:
	mov R3, #2
	b loc_8011368
loc_8011356:
	mov R3, #4
	b loc_8011368
loc_801135A:
	mov R3, #6
	b loc_8011368
loc_801135E:
	mov R3, #8
	b loc_8011368
loc_8011362:
	mov R3, #0xA
	b loc_8011368
loc_8011366:
	mov R3, #0
loc_8011368:
	push {r4,r6,lr}
	add r6, r3, #0
	ldr R4, off_8011500 // =0xA0C 
	lsl r2, r2, #0x10
	orr R4, R2
	mov R2, #1
	bl sub_80C468C
	str R0, [R5,#0x50]
	cmp R6, #0
	bne locret_8011382
	bl sub_80C46C0
locret_8011382:
	pop {r4,r6,pc}
.endfunc // sub_8011352

loc_8011384:
	push {lr}
	lsl r0, r0, #2
	ldr R1, off_8011394 // =off_8011398 
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8011394: .word off_8011398
off_8011398: .word sub_80111B8+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word locret_80114D4+1
	.word sub_801140E+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word locret_80114D4+1
	.word sub_801140E+1
.func
.thumb_func
sub_80113FC:
	push {lr}
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq locret_801140C
	bl sub_80C44C8
	mov R0, #0
	str R0, [R5,#0x50]
locret_801140C:
	pop {pc}
.endfunc // sub_80113FC

.func
.thumb_func
sub_801140E:
	push {lr}
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq locret_801141E
	bl sub_80C46B0
	mov R0, #0
	str R0, [R5,#0x50]
locret_801141E:
	pop {pc}
.endfunc // sub_801140E

.func
.thumb_func
sub_8011420:
	push {lr}
	cmp R0, #0
	bne loc_801142E
	add r0, r1, #0
	bl loc_8011268
	pop {pc}
loc_801142E:
	add r1, r0, #0
	mov R0, #2
	bl sub_8010DF6
	pop {pc}
.endfunc // sub_8011420

	push {lr}
	cmp R0, #0
	bne loc_8011446
	add r0, r1, #0
	bl loc_8011384
	pop {pc}
loc_8011446:
	add r1, r0, #0
	mov R0, #2
	bl loc_8011044
	pop {pc}
.func
.thumb_func
sub_8011450:
	push {lr}
	ldr R2, [R5,#0x58]
	ldrb R0, [R2]
	ldrb R1, [R2,#1]
	cmp R0, #0
	beq locret_8011468
	lsl r1, r1, #2
	ldr R0, off_801146C // =off_8011470 
	ldr R1, [R1,R0]
	ldr R0, [R5,#0x50]
	mov LR, PC
	bx r1
locret_8011468:
	pop {pc}
	.balign 4, 0x00
off_801146C: .word off_8011470
off_8011470: .word sub_80C44D2+1
	.word sub_80C44D2+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_80C44D2+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_80C44D2+1
	.word sub_80FF668+1
	.word locret_80114D4+1
	.word sub_80C44D2+1
	.word locret_80114D4+1
	.word sub_80C44D2+1
	.word sub_80C44D2+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word locret_80114D4+1
	.word sub_80C46B6+1
.endfunc // sub_8011450

locret_80114D4:
	mov PC, LR
	.balign 4, 0x00
off_80114D8: .word 0x104
off_80114DC: .word 0x108
dword_80114E0: .word 0x10A
off_80114E4: .word 0x10C
off_80114E8: .word 0x111
off_80114EC: .word 0x105
off_80114F0: .word 0x109
off_80114F4: .word 0x10D
dword_80114F8: .word 0x10E
dword_80114FC: .word 0x112
off_8011500: .word 0xA0C
.func
.thumb_func
sub_8011504:
	push {r6,r7,lr}
	add r6, r0, #0
loc_8011508:
	add r7, r1, #0
	mov R0, #0x80
	lsl r1, r6, #0x10
	lsr r1, r1, #0x18
	lsl r2, r6, #0x18
	lsr r2, r2, #0x18
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	lsr r0, r6, #0x18
	tst R0, R0
	beq loc_8011528
	bl sub_8002E3C
	b loc_801152C
loc_8011528:
	bl sub_8002F90 // () -> void
loc_801152C:
	lsl r0, r6, #8
	lsr r0, r0, #0x18
	strb R0, [R5,#0x10]
	mov R0, #0xFF
	strb R0, [R5,#0x11]
	bl sub_8019892
	tst R0, R0
	bne loc_8011540
	pop {r6,r7,pc}
loc_8011540:
	lsr r1, r7, #0x18
	lsl r2, r7, #8
	lsr r2, r2, #0x18
	lsl r3, r7, #0x10
	lsr r3, r3, #0x18
	bl sub_8019FB4
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	mov R0, #1
	pop {r6,r7,pc}
.endfunc // sub_8011504

.func
.thumb_func
sub_801155A:
	strb R1, [R0,#0x12]
	strb R2, [R0,#0x13]
	strb R3, [R0,#0xE]
	str R6, [R0,#0x2C]
	ldrh R1, [R5,#0x16]
	strh R1, [R0,#0x16]
	str R5, [R0,#0x4C]
	mov PC, LR
.endfunc // sub_801155A

.func
.thumb_func
sub_801156A:
	push {lr}
	sub sp, sp, #0x10
	str R0, [SP,#8]
	mov R0, #0
	str R0, [SP,#4]
	bl object_spawnHiteffect
	bl sub_800E3BE
	str R0, [SP]
	ldr R2, [SP,#8]
	cmp R2, #1
	beq loc_8011594
	ldrh R1, [R5,#0x24]
	sub r1, r1, r0
	strh R1, [R5,#0x24]
	bgt loc_8011594
	mov R0, #0
	sub R0, #1
	str R0, [SP,#4]
	b loc_80115C2
loc_8011594:
	bl sub_8002DD8
	ldr R0, [SP]
	tst R0, R0
	beq loc_80115C2
	bl sprite_forceWhitePallete
	ldr R0, [SP,#8]
	cmp R0, #0
	beq loc_80115B0
	cmp R0, #2
	beq loc_80115B8
	mov R0, #1
	b loc_80115C0
loc_80115B0:
	mov R0, #0x85
	bl sound_play // () -> void
	b loc_80115BE
loc_80115B8:
	mov r0, #0x6d 
	bl sound_play // () -> void
loc_80115BE:
	mov R0, #0
loc_80115C0:
	str R0, [SP,#4]
loc_80115C2:
	ldr R0, [SP]
	tst R0, R0
	beq loc_80115C8
loc_80115C8:
	ldr R0, [SP,#4]
	add sp, sp, #0x10
	pop {pc}
.endfunc // sub_801156A

	push {lr}
	sub sp, sp, #0x10
	str R0, [SP,#8]
	mov R0, #0
	str R0, [SP,#4]
	bl object_spawnHiteffect
	bl sub_800E3BE
	str R0, [SP]
	str R1, [SP,#0xC]
	add r0, r0, r1
	ldr R2, [SP,#8]
	tst R2, R2
	bne loc_80115FC
	ldrh R1, [R5,#0x24]
	sub r1, r1, r0
	strh R1, [R5,#0x24]
	bgt loc_80115FC
	mov R0, #0
	sub R0, #1
	str R0, [SP,#4]
	b loc_801161E
loc_80115FC:
	bl sub_8002DD8
	ldr R0, [SP]
	tst R0, R0
	beq loc_801161E
	bl sprite_forceWhitePallete
	ldr R0, [SP,#8]
	tst R0, R0
	beq loc_8011614
	mov R0, #1
	b loc_801161C
loc_8011614:
	mov R0, #0x85
	bl sound_play // () -> void
	mov R0, #0
loc_801161C:
	str R0, [SP,#4]
loc_801161E:
	ldr R0, [SP]
	tst R0, R0
	beq loc_8011624
loc_8011624:
	ldr R0, [SP,#4]
	add sp, sp, #0x10
	pop {pc}
.func
.thumb_func
sub_801162A:
	push {r4,lr}
	bl sub_801156A
	cmp R0, #0
	beq locret_801164A
	push {r0}
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov R4, #0
	bl sub_80E05F6
	mov r0, #0x70 
	bl sound_play // () -> void
	pop {r0}
locret_801164A:
	pop {r4,pc}
.endfunc // sub_801162A

.func
.thumb_func
sub_801164C:
	push {lr}
	push {r0,r1}
	sub r2, r2, r0
	sub r3, r3, r1
	mul R2, R6
	mul R3, R6
	push {r3}
	add r0, r2, #0
	add r1, r7, #0
	svc 6
	pop {r3}
	push {r0}
	add r0, r3, #0
	add r1, r7, #0
	svc 6
	add r1, r0, #0
	pop {r0}
	add r2, r0, #0
	add r3, r1, #0
	pop {r0,r1}
	add r0, r0, r2
	add r1, r1, r3
	pop {pc}
	.word 0
	.byte 0, 0
.endfunc // sub_801164C

.func
.thumb_func
sub_8011680:
	mov R2, #0
	b loc_8011698
.endfunc // sub_8011680

.func
.thumb_func
sub_8011684:
	mov R2, #1
	b loc_8011698
.endfunc // sub_8011684

.func
.thumb_func
sub_8011688:
	mov R2, #2
	b loc_8011698
loc_801168C:
	mov R2, #3
	b loc_8011698
loc_8011690:
	mov R2, #4
	b loc_8011698
loc_8011694:
	mov R2, #5
	b loc_8011698
loc_8011698:
	push {lr}
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	ldr R1, [R5,#0x58]
	add R1, #0xA0
	strh R0, [R1]
	strb R2, [R1,#0x1C]
	bl sub_801011A
	pop {pc}
.endfunc // sub_8011688

.func
.thumb_func
sub_80116AE:
	push {r4,r7,lr}
	ldr R4, [R5,#0x58]
	mov R7, #0xA0
	add r7, r7, r4
	strb R0, [R7,#0xC]
	strh R1, [R7,#0x18]
	strb R2, [R7,#3]
	mov R0, #0
	str R0, [R7,#0x2C]
	mov R0, #0x10
	bl loc_8011690
	bl loc_80EB04C
	pop {r4,r7,pc}
.endfunc // sub_80116AE

	mov r0, #0x3f 
	bl loc_8011690
	bl loc_80EB234
	pop {r4,r7,pc}
.func
.thumb_func
sub_80116D8:
	push {r7,lr}
	ldr R7, [R5,#0x58]
	add R7, #0xA0
	strb R0, [R7,#0xC]
	strh R1, [R7,#0x18]
	mov R0, #1
	strb R0, [R7,#3]
	mov R0, #0
	str R0, [R7,#0x2C]
	mov R0, #0x10
	bl loc_8011690
	bl loc_80EB04C
	pop {r7,pc}
.endfunc // sub_80116D8

	push {r7,lr}
	ldr R7, [R5,#0x58]
	add R7, #0xA0
	strb R0, [R7,#0x16]
	strb R1, [R7,#0x17]
	strb R2, [R7,#0x18]
	mov R0, #2
	strb R0, [R7,#3]
	str R3, [R7,#0x2C]
	mov R0, #0x10
	bl loc_8011690
	bl loc_80EB04C
	pop {r7,pc}
.func
.thumb_func
sub_8011714:
	push {r6,r7,lr}
	mov R0, #0
	strb R0, [R5,#0x10]
	b loc_801171E
loc_801171C:
	push {r6,r7,lr}
loc_801171E:
	ldr R1, [R5,#0x58]
	mov R7, #0xA0
	add r7, r7, r1
	mov R0, #0
	strb R0, [R7,#0x1B]
	ldrb R6, [R7,#0x1C]
	cmp R6, #4
	beq loc_8011754
	cmp R6, #2
	bne loc_8011736
	ldrb R0, [R7,#5]
	strb R0, [R1,#0x19]
loc_8011736:
	cmp R6, #3
	bne loc_801173E
	ldrb R0, [R7,#5]
	strb R0, [R1,#0x15]
loc_801173E:
	mov R0, #0
	strb R0, [R1,#0x1A]
	ldr R0, dword_8011760 // =0x1000003F 
	bl sub_800FFEE
	bl sub_8012EA8
	mov R0, #1
	lsl r0, r0, #0x16
	bl object_clearFlag // (int bitfield) -> void
loc_8011754:
	mov R0, #8
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R7]
	pop {r6,r7,pc}
	.byte 0, 0
dword_8011760: .word 0x1000003F
.endfunc // sub_8011714

.func
.thumb_func
sub_8011764:
	push {r6,r7,lr}
	ldr R6, [R5,#0x58]
	mov R7, #0xA0
	add r7, r7, r6
	ldr R1, off_80117D0 // =off_80117D4 
	ldrb R0, [R6,#6]
	lsl r0, r0, #2
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {r6,r7,pc}
.endfunc // sub_8011764

.func
.thumb_func
sub_801177A:
	push {r6,r7,lr}
	ldr R6, [R5,#0x58]
	mov R7, #0xA0
	add r7, r7, r6
	ldr R1, off_80117D0 // =off_80117D4 
	ldrb R0, [R6,#4]
	lsl r0, r0, #2
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {r6,r7,pc}
.endfunc // sub_801177A

.func
.thumb_func
sub_8011790:
	push {r6,r7,lr}
	mov R7, #0xA0
	add r7, r7, r6
	ldr R1, off_80117D0 // =off_80117D4 
	ldrb R0, [R6,#8]
	lsl r0, r0, #2
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {r6,r7,pc}
.endfunc // sub_8011790

loc_80117A4:
	push {r6,r7,lr}
	ldr R6, [R5,#0x58]
	mov R7, #0xA0
	add r7, r7, r6
	ldr R1, off_80117D0 // =off_80117D4 
	ldrb R0, [R6,#7]
	lsl r0, r0, #2
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {r6,r7,pc}
loc_80117BA:
	push {r6,r7,lr}
	ldr R6, [R5,#0x58]
	mov R7, #0xA0
	add r7, r7, r6
	ldr R1, off_80117D0 // =off_80117D4 
	lsl r0, r0, #2
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {r6,r7,pc}
	.byte 0, 0
off_80117D0: .word off_80117D4
off_80117D4: .word sub_8011A26+1
	.word sub_8011A7E+1
	.word sub_8011ADA+1
	.word sub_8011AF2+1
	.word sub_8011B4A+1
	.word locret_8011A24+1
	.word sub_8011BA2+1
	.word sub_8011BD0+1
	.word sub_8011BE8+1
	.word sub_8011C00+1
	.word sub_8011C18+1
	.word sub_8011C38+1
	.word sub_8011C5E+1
	.word locret_8011A24+1
	.word locret_8011A24+1
	.word sub_8011C88+1
	.word sub_8011CA8+1
	.word sub_8011CB4+1
	.word sub_8011CD6+1
	.word locret_8011A24+1
	.word sub_8011CF8+1
	.word sub_8011D20+1
	.word sub_8011D38+1
	.word sub_8011D54+1
	.word locret_8011A24+1
	.word sub_8011D74+1
	.word sub_8011D9C+1
	.word sub_8011DBC+1
	.word sub_8011DDC+1
	.word sub_8011DFC+1
	.word sub_8011E1C+1
	.word locret_8011A24+1
	.word locret_8011A24+1
	.word sub_8011E40+1
	.word sub_8011E78+1
	.word sub_8011EAC+1
	.word sub_8011ED0+1
	.word sub_8011EF0+1
	.word sub_8011F10+1
	.word sub_8011F44+1
	.word sub_8011F64+1
	.word locret_8011A24+1
	.word sub_8011F84+1
	.word sub_8011F8C+1
	.word sub_8011FCE+1
	.word locret_8011A24+1
	.word sub_8011A26+1
	.word sub_8011A26+1
	.word sub_8012018+1
	.word sub_8012044+1
	.word sub_801206E+1
	.word sub_801208A+1
	.word sub_80120A6+1
	.word sub_80120CC+1
	.word sub_80120D6+1
	.word sub_80120FE+1
	.word locret_8011A24+1
	.word sub_8012124+1
	.word sub_8012144+1
	.word sub_801216E+1
	.word loc_8012194+1
	.word loc_80121BC+1
	.word sub_8011A26+1
	.word sub_8011A26+1
	.word sub_80121DC+1
	.word sub_80121F8+1
	.word sub_8012210+1
	.word sub_8012228+1
	.word sub_8012240+1
	.word sub_8012258+1
	.word sub_8012278+1
	.word sub_8012292+1
	.word sub_80122AA+1
	.word sub_80122C2+1
	.word sub_80122DA+1
	.word sub_80122F2+1
	.word sub_801230C+1
	.word sub_8011A26+1
	.word sub_8011A26+1
	.word sub_8011A26+1
	.word sub_8011A26+1
	.word sub_8011A26+1
	.word sub_8012326+1
	mov r3, #0x2b 
	lsr r1, r0, #0x20
	mov r3, #0x3d 
	lsr r1, r0, #0x20
	mov r3, #0x47 
	lsr r1, r0, #0x20
	mov r3, #0x51 
	lsr r1, r0, #0x20
	mov r3, #0x5b 
	lsr r1, r0, #0x20
	mov r3, #0x65 
	lsr r1, r0, #0x20
	mov r3, #0x6f 
	lsr r1, r0, #0x20
	mov r3, #0x79 
	lsr r1, r0, #0x20
	mov R3, #0x83
	lsr r1, r0, #0x20
	mov R3, #0x8D
	lsr r1, r0, #0x20
	mov R3, #0x97
	lsr r1, r0, #0x20
	mov R3, #0xA1
	lsr r1, r0, #0x20
	mov R3, #0xAB
	lsr r1, r0, #0x20
	mov R3, #0xC9
	lsr r1, r0, #0x20
	mov R3, #0xD3
	lsr r1, r0, #0x20
	mov R3, #0xDD
	lsr r1, r0, #0x20
	mov R3, #0xE7
	lsr r1, r0, #0x20
	mov R3, #0xF1
	lsr r1, r0, #0x20
	mov R3, #0xFB
	lsr r1, r0, #0x20
	mov R4, #5
	lsr r1, r0, #0x20
	mov R4, #0xF
	lsr r1, r0, #0x20
	mov R4, #0x19
	lsr r1, r0, #0x20
	mov r4, #0x23 
	lsr r1, r0, #0x20
	mov r4, #0x2d 
	lsr r1, r0, #0x20
	mov r4, #0x37 
	lsr r1, r0, #0x20
	mov r4, #0x41 
	lsr r1, r0, #0x20
	mov r4, #0x4b 
	lsr r1, r0, #0x20
	mov r4, #0x5b 
	lsr r1, r0, #0x20
	sub r7, r4, r0
	lsr r1, r0, #0x20
	sub r7, r4, r0
	lsr r1, r0, #0x20
	mov r4, #0x65 
	lsr r1, r0, #0x20
	mov R4, #0x85
	lsr r1, r0, #0x20
	mov R4, #0x8F
	lsr r1, r0, #0x20
	mov R4, #0x99
	lsr r1, r0, #0x20
	mov R4, #0xB9
	lsr r1, r0, #0x20
	mov R4, #0xC3
	lsr r1, r0, #0x20
	sub r7, r4, r0
	lsr r1, r0, #0x20
	mov R4, #0xCD
	lsr r1, r0, #0x20
	sub r7, r4, r0
	lsr r1, r0, #0x20
	mov R4, #0xD7
	lsr r1, r0, #0x20
	sub r7, r4, r0
	lsr r1, r0, #0x20
	mov R4, #0xE1
	lsr r1, r0, #0x20
	mov R4, #0xEB
	lsr r1, r0, #0x20
	sub r7, r4, r0
	lsr r1, r0, #0x20
	mov R4, #0xF5
	lsr r1, r0, #0x20
	mov R4, #0xFF
	lsr r1, r0, #0x20
	mov R5, #0x1D
	lsr r1, r0, #0x20
	sub r7, r4, r0
	lsr r1, r0, #0x20
	mov r5, #0x27 
	lsr r1, r0, #0x20
	mov r5, #0x37 
	lsr r1, r0, #0x20
	mov r5, #0x41 
	lsr r1, r0, #0x20
	mov r5, #0x4b 
	lsr r1, r0, #0x20
	mov r5, #0x53 
	lsr r1, r0, #0x20
	mov r5, #0x5d 
	lsr r1, r0, #0x20
	mov r5, #0x73 
	lsr r1, r0, #0x20
	mov r5, #0x7d 
	lsr r1, r0, #0x20
	mov R5, #0x87
	lsr r1, r0, #0x20
	mov R5, #0xAD
	lsr r1, r0, #0x20
	mov R5, #0xD1
	lsr r1, r0, #0x20
	mov R6, #9
	lsr r1, r0, #0x20
	mov R6, #0x13
	lsr r1, r0, #0x20
	mov R6, #0x1F
	lsr r1, r0, #0x20
	mov r6, #0x29 
	lsr r1, r0, #0x20
	mov r6, #0x33 
	lsr r1, r0, #0x20
	mov r6, #0x3b 
	lsr r1, r0, #0x20
locret_8011A24:
	mov PC, LR
.func
.thumb_func
sub_8011A26:
	push {r4,lr}
	bl sub_8013D5E
	cmp R0, #0
	beq loc_8011A44
	cmp R0, #1
	bne loc_8011A3A
	bl sub_8011ADA
	pop {r4,pc}
loc_8011A3A:
	cmp R0, #2
	bne loc_8011A44
	bl sub_8011A7E
	pop {r4,pc}
loc_8011A44:
	bl sub_801265A
	strh R0, [R7,#8]
	mov R0, #0
	strb R0, [R7,#2]
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	strb R0, [R7,#5]
	mov r1, #0x4d 
	bl sub_8013774
	add r4, r0, #0
	cmp R4, #0
	beq loc_8011A74
	bl sub_8001532
	mov R1, #1
	cmp R4, #0x1E
	blt loc_8011A6E
	mov R1, #7
loc_8011A6E:
	and R0, R1
	beq loc_8011A74
	mov R4, #0
loc_8011A74:
	strb R4, [R7,#0xC]
	mov R1, #0
	strb R1, [R7,#3]
	mov R0, #0x11
	pop {r4,pc}
.endfunc // sub_8011A26

.func
.thumb_func
sub_8011A7E:
	push {r4,lr}
	mov R1, #1
	bl sub_8013774
	add R0, #1
	push {r0}
	ldrb R0, [R5,#0x16]
	bl sub_8015B54
	cmp R0, #5
	pop {r0}
	bne loc_8011A98
	mov R0, #1
loc_8011A98:
	mov R1, #0xA
	mul R0, R1
	strh R0, [R7,#8]
	mov r1, #0x4f 
	bl sub_8013774
	add r4, r0, #0
	tst R4, R4
	beq loc_8011AC2
	cmp R4, #6
	beq loc_8011AC4
	bl sub_8001532
	mov R1, #1
	cmp R4, #9
	beq loc_8011ABC
	cmp r4, #0x23 
	bne loc_8011ABE
loc_8011ABC:
	mov R1, #7
loc_8011ABE:
	and R0, R1
	beq loc_8011AC4
loc_8011AC2:
	mov R4, #6
loc_8011AC4:
	str R4, [R7,#0xC]
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #0
	strb R0, [R7,#3]
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	strb R0, [R7,#5]
	mov R0, #0x16
	pop {r4,pc}
.endfunc // sub_8011A7E

.func
.thumb_func
sub_8011ADA:
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #0
	strb R0, [R7,#3]
	strb R0, [R7,#4]
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	strh R0, [R7,#8]
	str R0, [R7,#0xC]
	mov r0, #0x33 
	mov PC, LR
.endfunc // sub_8011ADA

.func
.thumb_func
sub_8011AF2:
	push {lr}
	bl sub_801265A
	cmp R0, #5
	ble loc_8011AFE
	mov R0, #5
loc_8011AFE:
	strh R0, [R7,#8]
	mov R0, #0
	strh R0, [R7,#0xA]
	mov R0, #0
	strb R0, [R7,#2]
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strb R0, [R7,#5]
	mov r1, #0x4d 
	bl sub_8013774
	str R0, [R7,#0xC]
	mov R1, #0
	strb R1, [R7,#3]
	mov R0, #0
	str R0, [R7,#0x30]
	bl sub_800A8F8
	beq loc_8011B2C
	bl sub_802E4B8
	cmp R0, #0xD
	beq loc_8011B38
loc_8011B2C:
	mov r1, #0x2c 
	bl sub_8013774
	mov R1, #0
	cmp R0, #0x18
	bne loc_8011B3E
loc_8011B38:
	mov R0, #1
	strb R0, [R7,#0xE]
	mov R1, #8
loc_8011B3E:
	strb R1, [R7,#0xD]
	mov R1, #0
	ldr R0, [R5,#0x58]
	str R1, [R0,#0x68]
	mov R0, #0x1E
	pop {pc}
.endfunc // sub_8011AF2

.func
.thumb_func
sub_8011B4A:
	push {lr}
	bl sub_801265A
	cmp R0, #5
	ble loc_8011B56
	mov R0, #5
loc_8011B56:
	strh R0, [R7,#8]
	mov R0, #0
	strh R0, [R7,#0xA]
	mov R0, #0
	strb R0, [R7,#2]
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strb R0, [R7,#5]
	mov r1, #0x4d 
	bl sub_8013774
	str R0, [R7,#0xC]
	mov R1, #0
	strb R1, [R7,#3]
	mov R0, #0
	str R0, [R7,#0x30]
	bl sub_800A8F8
	beq loc_8011B84
	bl sub_802E4B8
	cmp R0, #0xD
	beq loc_8011B90
loc_8011B84:
	mov r1, #0x2c 
	bl sub_8013774
	mov R1, #0
	cmp R0, #0x17
	bne loc_8011B96
loc_8011B90:
	mov R0, #1
	strb R0, [R7,#0xE]
	mov R1, #8
loc_8011B96:
	strb R1, [R7,#0xD]
	mov R1, #0
	ldr R0, [R5,#0x58]
	str R1, [R0,#0x68]
	mov R0, #0x1D
	pop {pc}
.endfunc // sub_8011B4A

.func
.thumb_func
sub_8011BA2:
	push {lr}
	mov R0, #0x1E
	mov R1, #0x14
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov R0, #1
	strb R0, [R7,#2]
	mov R0, #1
	strb R0, [R7,#3]
	mov R0, #0
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strb R0, [R7,#5]
	ldr R0, off_8011BCC // =0x23C 
	str R0, [R7,#0xC]
	mov r0, #0x27 
	pop {pc}
	.balign 4, 0x00
off_8011BCC: .word 0x23C
.endfunc // sub_8011BA2

.func
.thumb_func
sub_8011BD0:
	push {lr}
	mov r0, #0x32 
	mov R1, #0x1E
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov R0, #1
	strb R0, [R7,#2]
	mov r0, #0x35 
	pop {pc}
.endfunc // sub_8011BD0

.func
.thumb_func
sub_8011BE8:
	push {lr}
	mov R0, #0xA
	mov R1, #0xA
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x86
	strh R0, [R7,#0xA]
	mov R0, #2
	strb R0, [R7,#2]
	mov r0, #0x3a 
	pop {pc}
.endfunc // sub_8011BE8

.func
.thumb_func
sub_8011C00:
	push {lr}
	mov r0, #0x28 
	mov R1, #0x1E
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov R0, #3
	strb R0, [R7,#2]
	mov r0, #0x3c 
	pop {pc}
.endfunc // sub_8011C00

.func
.thumb_func
sub_8011C18:
	push {lr}
	mov R0, #0x1E
	mov R1, #0x14
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov r0, #0x20 
	strb R0, [R7,#2]
	ldr R0, dword_8011C34 // =0x2D3D00 
	str R0, [R7,#0xC]
	mov r0, #0x3d 
	pop {pc}
dword_8011C34: .word 0x2D3D00
.endfunc // sub_8011C18

.func
.thumb_func
sub_8011C38:
	push {lr}
	mov r0, #0x28 
	mov R1, #0x14
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0
	strh R0, [R7,#6]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov R0, #3
	strb R0, [R7,#2]
	mov R0, #1
	lsl r0, r0, #8
	add R0, #0xF
	lsl r0, r0, #8
	str R0, [R7,#0xC]
	mov r0, #0x3e 
	pop {pc}
.endfunc // sub_8011C38

.func
.thumb_func
sub_8011C5E:
	push {lr}
	mov R0, #0x14
	mov R1, #0xA
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0
	strh R0, [R7,#6]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov R0, #2
	strb R0, [R7,#3]
	ldr R0, dword_8011C84 // =0xD 
	str R0, [R7,#0xC]
	mov R0, #2
	strb R0, [R7,#2]
	mov r0, #0x25 
	pop {pc}
	.balign 4, 0x00
dword_8011C84: .word 0xD
.endfunc // sub_8011C5E

.func
.thumb_func
sub_8011C88:
	push {lr}
	mov r0, #0x28 
	mov R1, #0x14
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0
	strh R0, [R7,#6]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov R0, #1
	strb R0, [R7,#3]
	mov r0, #0x20 
	strb R0, [R7,#2]
	mov r0, #0x3f 
	pop {pc}
.endfunc // sub_8011C88

.func
.thumb_func
sub_8011CA8:
	mov R0, #0x14
	strb R0, [R7,#3]
	mov r0, #0x28 
	strb R0, [R7,#5]
	mov R0, #0x1C
	mov PC, LR
.endfunc // sub_8011CA8

.func
.thumb_func
sub_8011CB4:
	push {r4,lr}
	mov R0, #0
	bl sub_80127C0
	cmp r0, #0x53 
	beq loc_8011CC4
	cmp r0, #0x54 
	bne loc_8011CCA
loc_8011CC4:
	mov R1, #1
	strb R1, [R7,#4]
	b locret_8011CD4
loc_8011CCA:
	cmp r0, #0x40 
	bne loc_8011CD2
	mov R0, #0x11
	strb R0, [R7,#3]
loc_8011CD2:
	mov r0, #0x41 
locret_8011CD4:
	pop {r4,pc}
.endfunc // sub_8011CB4

.func
.thumb_func
sub_8011CD6:
	push {lr}
	mov r0, #0x3c 
	mov R1, #0x14
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov R0, #0x10
	strb R0, [R7,#3]
	mov R0, #0x80
	strb R0, [R7,#2]
	mov R0, #0
	str R0, [R7,#0xC]
	strh R0, [R7,#6]
	mov r0, #0x41 
	pop {pc}
.endfunc // sub_8011CD6

.func
.thumb_func
sub_8011CF8:
	push {lr}
	mov r0, #0x28 
	mov R1, #0x14
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov r1, #0x2c 
	bl sub_8013774
	mov R1, #0
	cmp R0, #4
	beq loc_8011D16
	mov R1, #1
loc_8011D16:
	strb R1, [R7,#3]
	mov R0, #0
	strb R0, [R7,#2]
	mov r0, #0x45 
	pop {pc}
.endfunc // sub_8011CF8

.func
.thumb_func
sub_8011D20:
	push {lr}
	mov r0, #0x46 
	mov R1, #0x1E
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x9E
	strh R0, [R7,#0xA]
	mov r0, #0x40 
	strb R0, [R7,#2]
	mov r0, #0x46 
	pop {pc}
.endfunc // sub_8011D20

.func
.thumb_func
sub_8011D38:
	push {lr}
	mov R0, #0
	strb R0, [R7,#4]
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	mov R0, #0x9E
	strh R0, [R7,#0xA]
	mov r0, #0x28 
	mov R1, #0x14
	bl sub_8012642
	strh R0, [R7,#8]
	mov r0, #0x4a 
	pop {pc}
.endfunc // sub_8011D38

.func
.thumb_func
sub_8011D54:
	push {lr}
	mov R0, #0
	strb R0, [R7,#4]
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov r0, #0x5a 
	mov R1, #0x14
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x10
	strb R0, [R7,#2]
	mov R0, #0x1A
	pop {pc}
.endfunc // sub_8011D54

.func
.thumb_func
sub_8011D74:
	push {lr}
	mov R0, #0xA
	mov R1, #0xA
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov R0, #0x10
	strb R0, [R7,#2]
	mov R0, #0
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strb R0, [R7,#5]
	ldr R0, off_8011D98 // =0x1800 
	str R0, [R7,#0xC]
	mov r0, #0x4d 
	pop {pc}
off_8011D98: .word 0x1800
.endfunc // sub_8011D74

.func
.thumb_func
sub_8011D9C:
	push {lr}
	mov R0, #0
	strb R0, [R7,#4]
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	mov R0, #0x9E
	strh R0, [R7,#0xA]
	mov r0, #0x32 
	mov R1, #0x1E
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x80
	strb R0, [R7,#2]
	mov r0, #0x4c 
	pop {pc}
.endfunc // sub_8011D9C

.func
.thumb_func
sub_8011DBC:
	push {lr}
	mov R0, #0
	strb R0, [R7,#4]
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	mov R0, #0x9E
	strh R0, [R7,#0xA]
	mov r0, #0x32 
	mov R1, #0x14
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #4
	strb R0, [R7,#2]
	mov r0, #0x4e 
	pop {pc}
.endfunc // sub_8011DBC

.func
.thumb_func
sub_8011DDC:
	push {lr}
	mov R0, #0
	strb R0, [R7,#4]
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	mov R0, #0x9E
	strh R0, [R7,#0xA]
	mov r0, #0x46 
	mov R1, #0x1E
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #1
	strb R0, [R7,#2]
	mov r0, #0x4f 
	pop {pc}
.endfunc // sub_8011DDC

.func
.thumb_func
sub_8011DFC:
	push {lr}
	mov R0, #0
	strb R0, [R7,#4]
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	mov R0, #0x9E
	strh R0, [R7,#0xA]
	mov r0, #0x50 
	mov R1, #0x14
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x10
	strb R0, [R7,#2]
	mov r0, #0x50 
	pop {pc}
.endfunc // sub_8011DFC

.func
.thumb_func
sub_8011E1C:
	push {lr}
	mov R0, #0
	strb R0, [R7,#4]
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	mov R0, #0x9E
	strh R0, [R7,#0xA]
	mov r0, #0x32 
	mov R1, #0xA
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #2
	strh R0, [R7,#0x12]
	mov r0, #0x52 
	pop {pc}
.endfunc // sub_8011E1C

.func
.thumb_func
sub_8011E40:
	push {lr}
	mov R0, #0
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	mov R0, #0x14
	strb R0, [R7,#5]
	mov R0, #0x14
	strh R0, [R7,#0xA]
	mov R0, #0x80
	strb R0, [R7,#2]
	bl sub_800F4A8
	cmp R0, #1
	blt loc_8011E68
	mov R0, #1
	bl sub_800F4B2
	mov R0, #0xC8
	mov R1, #6
	b loc_8011E6C
loc_8011E68:
	mov r0, #0x50 
	mov R1, #0
loc_8011E6C:
	strh R0, [R7,#8]
	strb R1, [R7,#3]
	mov R0, #0
	str R0, [R7,#0xC]
	mov R0, #0x13
	pop {pc}
.endfunc // sub_8011E40

.func
.thumb_func
sub_8011E78:
	push {lr}
	mov R0, #0
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	mov R0, #0x14
	strb R0, [R7,#5]
	mov R0, #0x14
	strh R0, [R7,#0xA]
	mov R0, #3
	strb R0, [R7,#2]
	bl sub_800F4A8
	cmp R0, #1
	blt loc_8011EA0
	mov R0, #1
	bl sub_800F4B2
	mov R0, #0xC8
	ldr R1, dword_8011F34 // =0x100C02 
	b loc_8011EA4
loc_8011EA0:
	mov r0, #0x28 
	ldr R1, dword_8011F38 // =0x100501 
loc_8011EA4:
	strh R0, [R7,#8]
	str R1, [R7,#0xC]
	mov R0, #0x1F
	pop {pc}
.endfunc // sub_8011E78

.func
.thumb_func
sub_8011EAC:
	push {lr}
	mov R0, #0
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	mov R0, #0x14
	strb R0, [R7,#5]
	mov R0, #0x14
	strh R0, [R7,#0xA]
	mov R0, #1
	strb R0, [R7,#2]
	mov r0, #0x64 
	strh R0, [R7,#8]
	mov R1, #8
	strb R1, [R7,#3]
	ldr R0, off_8011F3C // =0x300 
	str R0, [R7,#0xC]
	mov R0, #0x1C
	pop {pc}
.endfunc // sub_8011EAC

.func
.thumb_func
sub_8011ED0:
	push {lr}
	mov R0, #0
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	mov R0, #0x14
	strb R0, [R7,#5]
	mov R0, #0x14
	strh R0, [R7,#0xA]
	mov R0, #2
	strb R0, [R7,#2]
	mov r0, #0x28 
	strh R0, [R7,#8]
	mov R0, #0
	str R0, [R7,#0xC]
	mov r0, #0x32 
	pop {pc}
.endfunc // sub_8011ED0

.func
.thumb_func
sub_8011EF0:
	push {lr}
	mov R0, #0
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	mov R0, #0x14
	strb R0, [R7,#5]
	mov R0, #0x14
	strh R0, [R7,#0xA]
	mov R0, #3
	strb R0, [R7,#2]
	mov r0, #0x64 
	strh R0, [R7,#8]
	ldr R0, dword_8011F40 // =0x3C1000 
	str R0, [R7,#0xC]
	mov r0, #0x42 
	pop {pc}
.endfunc // sub_8011EF0

.func
.thumb_func
sub_8011F10:
	push {lr}
	mov R0, #0
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	mov R0, #0x14
	strb R0, [R7,#5]
	mov R0, #0x14
	strh R0, [R7,#0xA]
	mov R0, #4
	strb R0, [R7,#2]
	mov r0, #0x64 
	strh R0, [R7,#8]
	mov R1, #1
	strb R1, [R7,#3]
	mov R0, #0
	str R0, [R7,#0xC]
	mov R0, #0x1C
	pop {pc}
dword_8011F34: .word 0x100C02
dword_8011F38: .word 0x100501
off_8011F3C: .word 0x300
dword_8011F40: .word 0x3C1000
.endfunc // sub_8011F10

.func
.thumb_func
sub_8011F44:
	push {lr}
	mov R0, #0x1E
	mov R1, #0x14
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov R0, #1
	strb R0, [R7,#2]
	mov R0, #0
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strb R0, [R7,#5]
	mov r0, #0x56 
	pop {pc}
.endfunc // sub_8011F44

.func
.thumb_func
sub_8011F64:
	push {lr}
	mov r0, #0x32 
	mov R1, #0xA
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov R0, #0x10
	strb R0, [R7,#2]
	mov R0, #0
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strb R0, [R7,#5]
	mov r0, #0x57 
	pop {pc}
.endfunc // sub_8011F64

.func
.thumb_func
sub_8011F84:
	mov r0, #0x28 
	strb R0, [R7,#5]
	mov r0, #0x58 
	mov PC, LR
.endfunc // sub_8011F84

.func
.thumb_func
sub_8011F8C:
	push {lr}
	ldrb R0, [R6,#0xD]
	cmp R0, #0
	bne loc_8011F9A
	bl sub_8011A26
	b locret_8011FCC
loc_8011F9A:
	sub R0, #1
	strb R0, [R6,#0xD]
	add r0, #0x6c 
	ldrb R0, [R6,R0]
	ldr R2, off_8012010 // =dword_80E98C0 
	mov R1, #0xF
	and R1, R0
	lsl r1, r1, #1
	ldrh R1, [R2,R1]
	lsl r1, r1, #0x10
	orr R0, R1
	str R0, [R7,#0x30]
	mov R0, #0xC8
	strh R0, [R7,#8]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov R0, #0
	strb R0, [R7,#2]
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	strb R0, [R7,#5]
	mov R1, #2
	strb R1, [R7,#3]
	mov R0, #0x11
locret_8011FCC:
	pop {pc}
.endfunc // sub_8011F8C

.func
.thumb_func
sub_8011FCE:
	push {lr}
	ldrb R0, [R6,#0xD]
	cmp R0, #0
	bne loc_8011FDC
	bl sub_8011AF2
	b locret_801200E
loc_8011FDC:
	sub R0, #1
	strb R0, [R6,#0xD]
	add r0, #0x6c 
	ldrb R0, [R6,R0]
	ldr R2, off_8012014 // =dword_80E98C0 
	mov R1, #0xF
	and R1, R0
	lsl r1, r1, #1
	ldrh R1, [R2,R1]
	lsl r1, r1, #0x10
	orr R0, R1
	str R0, [R7,#0x30]
	mov R0, #0xC8
	strh R0, [R7,#8]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov R0, #0
	strb R0, [R7,#2]
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	strb R0, [R7,#5]
	mov R1, #2
	strb R1, [R7,#3]
	mov R0, #0x11
locret_801200E:
	pop {pc}
off_8012010: .word dword_80E98C0
off_8012014: .word dword_80E98C0
.endfunc // sub_8011FCE

.func
.thumb_func
sub_8012018:
	push {lr}
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #4
	strb R0, [R7,#3]
	mov R0, #0
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	mov r1, #0x48 
	bl sub_8013790
	strh R0, [R7,#8]
	ldr R0, off_8012040 // =0x114 
	str R0, [R7,#0xC]
	mov r0, #0x28 
	strb R0, [R7,#5]
	mov r0, #0x2b 
	pop {pc}
	.byte 0, 0
off_8012040: .word 0x114
.endfunc // sub_8012018

.func
.thumb_func
sub_8012044:
	push {lr}
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #1
	strb R0, [R7,#3]
	mov R0, #1
	strb R0, [R7,#4]
	mov R0, #0
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	mov R0, #0x14
	strh R0, [R7,#0xA]
	mov r0, #0x50 
	mov R1, #0xA
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0
	str R0, [R7,#0xC]
	mov R0, #0x13
	pop {pc}
.endfunc // sub_8012044

.func
.thumb_func
sub_801206E:
	push {lr}
	mov r0, #0x48 
	bl loc_80126EA
	push {r0}
	mov R0, #0x14
	ldrb R1, [R5,#0x16]
	bl sub_8010D04
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	pop {r0}
	pop {pc}
.endfunc // sub_801206E

.func
.thumb_func
sub_801208A:
	push {lr}
	mov r0, #0x49 
	bl loc_80126EA
	push {r0}
	mov R0, #0x14
	ldrb R1, [R5,#0x16]
	bl sub_8010D04
	strh R0, [R7,#8]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	pop {r0}
	pop {pc}
.endfunc // sub_801208A

.func
.thumb_func
sub_80120A6:
	push {lr}
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #3
	strb R0, [R7,#3]
	mov R0, #0
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	strh R0, [R7,#8]
	ldr R0, off_80120C8 // =0x114 
	str R0, [R7,#0xC]
	mov r0, #0x28 
	strb R0, [R7,#5]
	mov r0, #0x2b 
	pop {pc}
	.balign 4, 0x00
off_80120C8: .word 0x114
.endfunc // sub_80120A6

.func
.thumb_func
sub_80120CC:
	push {lr}
	mov r0, #0x2b 
	bl loc_80126EA
	pop {pc}
.endfunc // sub_80120CC

.func
.thumb_func
sub_80120D6:
	push {lr}
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #1
	strb R0, [R7,#3]
	mov R0, #0
	strb R0, [R7,#4]
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov r0, #0x50 
	mov R1, #0xA
	bl sub_8012642
	strh R0, [R7,#8]
	mov R0, #0
	str R0, [R7,#0xC]
	mov R0, #0x13
	pop {pc}
.endfunc // sub_80120D6

.func
.thumb_func
sub_80120FE:
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #4
	strb R0, [R7,#3]
	mov R0, #0
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	mov r0, #0x32 
	strh R0, [R7,#8]
	ldr R0, off_8012120 // =0x114 
	str R0, [R7,#0xC]
	mov r0, #0x28 
	strb R0, [R7,#5]
	mov r0, #0x2b 
	mov PC, LR
	.byte 0, 0
off_8012120: .word 0x114
.endfunc // sub_80120FE

.func
.thumb_func
sub_8012124:
	push {lr}
	mov R1, #1
	bl sub_8013774
	add R0, #1
	mov R1, #5
	mul R0, R1
	strh R0, [R7,#8]
	mov R0, #0x85
	strh R0, [R7,#0xA]
	mov R0, #6
	str R0, [R7,#0xC]
	mov R0, #0
	strh R0, [R7,#0x12]
	mov r0, #0x5d 
	pop {pc}
.endfunc // sub_8012124

.func
.thumb_func
sub_8012144:
	push {lr}
	mov R1, #1
	bl sub_8013774
	add R0, #1
	mov R1, #0xA
	mul R0, R1
	strh R0, [R7,#8]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov R0, #1
	strb R0, [R7,#3]
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #0
	strh R0, [R7,#6]
	mov R0, #6
	lsl r0, r0, #0x18
	str R0, [R7,#0xC]
	mov r0, #0x38 
	pop {pc}
.endfunc // sub_8012144

.func
.thumb_func
sub_801216E:
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #3
	strb R0, [R7,#3]
	mov R0, #0
	strb R0, [R7,#4]
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	strh R0, [R7,#8]
	ldr R0, off_8012190 // =0x214 
	str R0, [R7,#0xC]
	mov r0, #0x28 
	strb R0, [R7,#5]
	mov r0, #0x2b 
	mov PC, LR
	.byte 0, 0
off_8012190: .word 0x214
.endfunc // sub_801216E

loc_8012194:
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #4
	strb R0, [R7,#3]
	mov R0, #0
	strb R0, [R7,#4]
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	mov r0, #0x32 
	strh R0, [R7,#8]
	ldr R0, off_80121B8 // =0x114 
	str R0, [R7,#0xC]
	mov r0, #0x28 
	strb R0, [R7,#5]
	mov r0, #0x2b 
	mov PC, LR
	.balign 4, 0x00
off_80121B8: .word 0x114
loc_80121BC:
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #0
	strb R0, [R7,#3]
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	str R0, [R7,#0xC]
	mov r0, #0x32 
	strh R0, [R7,#8]
	mov R0, #0x1E
	strh R0, [R7,#0x10]
	mov r0, #0x46 
	strb R0, [R7,#5]
	mov r0, #0x5a 
	mov PC, LR
.func
.thumb_func
sub_80121DC:
	push {lr}
	mov R0, #0
	ldrb R1, [R5,#0x16]
	bl sub_8010D04
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov R0, #1
	strb R0, [R7,#2]
	mov R0, #0x1E
	strb R0, [R7,#0xC]
	mov R0, #9
	pop {pc}
.endfunc // sub_80121DC

.func
.thumb_func
sub_80121F8:
	push {lr}
	mov R0, #0xA
	ldrb R1, [R5,#0x16]
	bl sub_8010D04
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov R0, #2
	strb R0, [R7,#2]
	mov R0, #9
	pop {pc}
.endfunc // sub_80121F8

.func
.thumb_func
sub_8012210:
	push {lr}
	mov R0, #0xE
	ldrb R1, [R5,#0x16]
	bl sub_8010D04
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #9
	pop {pc}
.endfunc // sub_8012210

.func
.thumb_func
sub_8012228:
	push {lr}
	mov R0, #4
	ldrb R1, [R5,#0x16]
	bl sub_8010D04
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #9
	pop {pc}
.endfunc // sub_8012228

.func
.thumb_func
sub_8012240:
	push {lr}
	mov R0, #2
	ldrb R1, [R5,#0x16]
	bl sub_8010D04
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov R0, #3
	strb R0, [R7,#2]
	mov R0, #9
	pop {pc}
.endfunc // sub_8012240

.func
.thumb_func
sub_8012258:
	push {lr}
	mov R0, #0xC
	ldrb R1, [R5,#0x16]
	bl sub_8010D04
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov R0, #4
	strb R0, [R7,#2]
	mov R0, #0x1E
	strb R0, [R7,#0xC]
	mov R0, #0x1E
	strb R0, [R7,#0xD]
	mov R0, #9
	pop {pc}
.endfunc // sub_8012258

.func
.thumb_func
sub_8012278:
	push {lr}
	mov R0, #0xA
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov R0, #4
	strb R0, [R7,#2]
	mov R0, #6
	strb R0, [R7,#0xC]
	mov R0, #6
	strb R0, [R7,#0xD]
	mov R0, #9
	pop {pc}
.endfunc // sub_8012278

.func
.thumb_func
sub_8012292:
	push {lr}
	mov R0, #6
	ldrb R1, [R5,#0x16]
	bl sub_8010D04
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #9
	pop {pc}
.endfunc // sub_8012292

.func
.thumb_func
sub_80122AA:
	push {lr}
	mov R0, #8
	ldrb R1, [R5,#0x16]
	bl sub_8010D04
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov R0, #1
	strb R0, [R7,#2]
	mov R0, #9
	pop {pc}
.endfunc // sub_80122AA

.func
.thumb_func
sub_80122C2:
	push {lr}
	mov R0, #0x12
	ldrb R1, [R5,#0x16]
	bl sub_8010D04
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #9
	pop {pc}
.endfunc // sub_80122C2

.func
.thumb_func
sub_80122DA:
	push {lr}
	mov R0, #0x10
	ldrb R1, [R5,#0x16]
	bl sub_8010D04
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #9
	pop {pc}
.endfunc // sub_80122DA

.func
.thumb_func
sub_80122F2:
	push {lr}
	mov R0, #0xA
	strh R0, [R7,#8]
	mov R0, #0
	strh R0, [R7,#0xA]
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #6
	strb R0, [R7,#0xC]
	mov R0, #6
	strb R0, [R7,#0xD]
	mov R0, #0xB
	pop {pc}
.endfunc // sub_80122F2

.func
.thumb_func
sub_801230C:
	push {lr}
	mov R0, #0xA
	strh R0, [R7,#8]
	mov R0, #0
	strh R0, [R7,#0xA]
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #6
	strb R0, [R7,#0xC]
	mov R0, #6
	strb R0, [R7,#0xD]
	mov R0, #0xC
	pop {pc}
.endfunc // sub_801230C

.func
.thumb_func
sub_8012326:
	mov R0, #1
	b loc_801232C
	mov R0, #3
loc_801232C:
	lsl r0, r0, #8
	str R0, [R7,#0xC]
	mov R0, #0x1E
	strh R0, [R7,#8]
	mov R0, #0x94
	strh R0, [R7,#0xA]
	mov r0, #0x5c 
	mov PC, LR
.endfunc // sub_8012326

	push {lr}
	mov R0, #3
	bl loc_80126EA
	pop {pc}
	push {lr}
	ldr R0, off_80126D0 // =0x17C 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x44 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #0xA2
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x39 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #0x1F
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #9
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x45 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x51 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #0xC7
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #0x90
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x46 
	strh R0, [R7,#8]
	mov R0, #0xA
	strh R0, [R7,#0xA]
	mov R0, #2
	strb R0, [R7,#3]
	ldr R0, dword_80123C4 // =0x7 
	str R0, [R7,#0xC]
	mov R0, #2
	strb R0, [R7,#2]
	mov r0, #0x25 
	pop {pc}
dword_80123C4: .word 0x7
	push {lr}
	mov r0, #0x77 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #1
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x40 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x65 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x4e 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #0xCA
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #7
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #0x96
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x4f 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x50 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #0xA4
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #8
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #0xF
	bl loc_80126EA
	pop {pc}
	mov R0, #0x14
	strh R0, [R7,#8]
	mov R0, #0x8A
	strh R0, [R7,#0xA]
	ldr R0, dword_80126D4 // =0x33C00 
	str R0, [R7,#0xC]
	mov r0, #0x5e 
	mov PC, LR
	push {lr}
	ldr R0, off_80126D8 // =0x17D 
	bl loc_80126EA
	pop {pc}
	push {lr}
	ldr R0, dword_80126DC // =0x17E 
	bl sub_8010740
	tst R0, R0
	beq loc_8012478
	bl sub_8011714
	mov R0, #8
	b locret_8012482
loc_8012478:
	mov R0, #2
	strb R0, [R7,#3]
	mov r0, #0x78 
	strb R0, [R7,#0xC]
	mov R0, #0x1C
locret_8012482:
	pop {pc}
	push {lr}
	mov r0, #0x49 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #0x1E
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x28 
	strh R0, [R7,#8]
	mov R0, #0xA
	strh R0, [R7,#0xA]
	mov R0, #1
	strb R0, [R7,#3]
	ldr R0, dword_80124B4 // =0x8 
	str R0, [R7,#0xC]
	mov R0, #1
	strb R0, [R7,#2]
	mov r0, #0x25 
	pop {pc}
	.balign 4, 0x00
dword_80124B4: .word 0x8
	push {lr}
	mov R0, #0x13
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #0x83
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #0x14
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x22 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x48 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x36 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x34 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x32 
	strh R0, [R7,#8]
	mov R0, #0xA
	strh R0, [R7,#0xA]
	mov R0, #2
	strb R0, [R7,#3]
	ldr R0, dword_8012518 // =0x4 
	str R0, [R7,#0xC]
	mov R0, #2
	strb R0, [R7,#2]
	mov r0, #0x25 
	pop {pc}
dword_8012518: .word 0x4
	push {lr}
	mov r0, #0x59 
	bl loc_80126EA
	pop {pc}
	mov R0, #9
	strb R0, [R7,#3]
	mov r0, #0x78 
	strb R0, [R7,#5]
	mov R0, #0
	str R0, [R7,#8]
	mov R0, #0x1C
	mov PC, LR
	push {lr}
	mov R0, #0x8E
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x33 
	bl loc_80126EA
	pop {pc}
	mov R0, #0x14
	strb R0, [R7,#3]
	mov R0, #0x1C
	mov PC, LR
	push {lr}
	mov r0, #0x3c 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov r0, #0x25 
	bl loc_80126EA
	mov r1, #0x28 
	strb R1, [R7,#5]
	mov R1, #3
	strb R1, [R7,#0x1C]
	mov R1, #1
	strb R1, [R7,#0xD]
	pop {pc}
	push {lr}
	mov r0, #0x56 
	bl loc_80126EA
	pop {pc}
	push {lr}
	ldr R0, dword_80126E0 // =0x11E 
	bl loc_80126EA
	pop {pc}
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #4
	strb R0, [R7,#3]
	mov R0, #0
	strb R0, [R7,#4]
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	mov r0, #0x32 
	strh R0, [R7,#8]
	ldr R0, off_80125A8 // =0x114 
	str R0, [R7,#0xC]
	mov r0, #0x28 
	strb R0, [R7,#5]
	mov r0, #0x2b 
	mov PC, LR
off_80125A8: .word 0x114
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #3
	strb R0, [R7,#3]
	mov R0, #0
	strb R0, [R7,#4]
	strb R0, [R7,#5]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	strh R0, [R7,#8]
	ldr R0, off_80125CC // =0x214 
	str R0, [R7,#0xC]
	mov r0, #0x28 
	strb R0, [R7,#5]
	mov r0, #0x2b 
	mov PC, LR
off_80125CC: .word 0x214
	push {lr}
	mov R1, #1
	bl sub_8013774
	add R0, #1
	mov R1, #0xA
	mul R0, R1
	strh R0, [R7,#8]
	mov R0, #0
	strb R0, [R7,#2]
	mov R0, #0
	strb R0, [R7,#3]
	strb R0, [R7,#4]
	strh R0, [R7,#6]
	strh R0, [R7,#0xA]
	strb R0, [R7,#5]
	mov R0, #0
	str R0, [R7,#0xC]
	mov r1, #0x4f 
	bl sub_8013774
	mov R1, #6
	tst R0, R0
	beq loc_8012602
	add r1, r0, #0
loc_8012602:
	str R1, [R7,#0xC]
	mov R0, #0x16
	pop {pc}
	push {lr}
	mov r0, #0x47 
	bl loc_80126EA
	pop {pc}
	push {lr}
	bl sub_8011A26
	mov R1, #1
	strb R1, [R7,#3]
	pop {pc}
	push {lr}
	mov r0, #0x74 
	bl loc_80126EA
	pop {pc}
	push {lr}
	mov R0, #0x17
	bl loc_80126EA
	pop {pc}
	push {lr}
	bl sub_8012124
	pop {pc}
	push {lr}
	bl sub_8012144
	pop {pc}
.func
.thumb_func
sub_8012642:
	push {lr}
	push {r0,r1}
	bl sub_801265A
	add r2, r0, #0
	cmp R2, #5
	ble loc_8012652
	mov R2, #5
loc_8012652:
	pop {r0,r1}
	mul R1, R2
	add r0, r0, r1
	pop {pc}
.endfunc // sub_8012642

.func
.thumb_func
sub_801265A:
	push {lr}
	mov r1, #0x29 
	bl sub_8013774
	push {r0}
	mov R1, #1
	bl sub_8013774
	pop {r1}
	ldr R2, off_801269C // =dword_80126A4 
	ldrb R1, [R2,R1]
	add r0, r0, r1
	push {r0}
	ldrb R0, [R5,#0x16]
	bl sub_8015B54
	cmp R0, #5
	bne loc_8012684
	pop {r0}
	mov R0, #1
	b loc_8012692
loc_8012684:
	mov r1, #0x2c 
	bl sub_8013774
	ldr R1, off_80126A0 // =off_80126B0 
	ldrb R1, [R1,R0]
	pop {r0}
	add r0, r0, r1
loc_8012692:
	cmp R0, #0xA
	ble locret_8012698
	mov R0, #0xA
locret_8012698:
	pop {pc}
	.balign 4, 0x00
off_801269C: .word dword_80126A4
off_80126A0: .word off_80126B0
dword_80126A4: .word 0x1010101, 0x1010101, 0x1010101
off_80126B0: .word 0x100
	.word 0x0, 0x0
	.word 0x100
	.word 0x0, 0x0, 0x0, 0x0
off_80126D0: .word 0x17C
dword_80126D4: .word 0x33C00
off_80126D8: .word 0x17D
dword_80126DC: .word 0x17E
dword_80126E0: .word 0x11E
.endfunc // sub_801265A

.func
.thumb_func
sub_80126E4:
	push {r4,r6,r7,lr}
	mov R4, #1
	b loc_80126F6
loc_80126EA:
	push {r4,r6,r7,lr}
	mov R4, #0
	b loc_80126F6
	push {r4,r6,r7,lr}
	ldr R7, [R5,#0x58]
	add R7, #0xA0
loc_80126F6:
	strh R0, [R7,#0x14]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r6, r0, #0
	ldr R1, [R6,#0x10]
	str R1, [R7,#0xC]
	ldrh R0, [R7,#0x14]
	ldrb R1, [R5,#0x16]
	bl sub_80109A4
	ldrb R1, [R6,#0xA]
	lsl r1, r1, #0x10
	add r1, r1, r0
	str R1, [R7,#8]
	ldrb R1, [R6,#0x14]
	strb R1, [R7,#5]
	mov R1, #0
	strh R1, [R7,#6]
	ldrb R1, [R6,#0xC]
	strb R1, [R7,#3]
	ldrb R1, [R6,#4]
	ldrb R2, [R6,#6]
	ldr R0, off_80129E0 // =dword_80129E4 
	ldrb R0, [R0,R2]
	orr R1, R0
	strb R1, [R7,#2]
	mov R1, #0
	strb R1, [R7,#4]
	tst R4, R4
	beq loc_801273A
	ldrb R0, [R5,#0x16]
	ldrh R1, [R7,#0x14]
	bl sub_8021D14
loc_801273A:
	ldrb R0, [R6,#0xB]
	pop {r4,r6,r7,pc}
.endfunc // sub_80126E4

	push {r4,r6,r7,lr}
	ldrb R0, [R5,#0x16]
	push {r0}
	bl sub_800E2C2
	add r6, r0, #0
	pop {r0}
	lsl r1, r0, #3
	ldr R7, off_8012778 // =dword_8012780 
	add r7, r7, r1
	ldr R2, [R7]
	ldr R3, [R7,#4]
	ldr R7, off_801277C // =word_8012790 
	ldrb R0, [R7,R0]
loc_801275A:
	mov R1, #3
loc_801275C:
	push {R0-R3,r6}
	bl object_checkPanelParameters
	tst R0, R0
	pop {R0-R3,r6}
	bne locret_8012776
	sub R1, #1
	bne loc_801275C
	add r0, r0, r6
	sub r4, r0, #1
	cmp R4, #6
	bls loc_801275A
	mov R0, #0
locret_8012776:
	pop {r4,r6,r7,pc}
off_8012778: .word dword_8012780
off_801277C: .word word_8012790
dword_8012780: .word 0x200000, 0x20, 0x400020, 0x0
word_8012790: .hword 0x601
.func
.thumb_func
sub_8012792:
	push {r4,r6,r7,lr}
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
loc_801279A:
	sub R0, #4
	bmi loc_80127BC
	sub R7, #1
	ldr R2, [R6,R0]
	ldrb R1, [R7]
	ldrh R3, [R2,R1]
	tst R3, R3
	beq loc_80127B8
	cmp R4, R3
	bne loc_801279A
	add R1, #2
	strb R1, [R7]
	ldr R3, [R2,R1]
	tst R3, R3
	bne loc_801279A
loc_80127B8:
	lsr r0, r0, #2
	pop {r4,r6,r7,pc}
loc_80127BC:
	mov R0, #0xFF
	pop {r4,r6,r7,pc}
.endfunc // sub_8012792

.func
.thumb_func
sub_80127C0:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x1c
	str R0, [SP]
	bl sub_800FFFE
	ldr R1, dword_80128F4 // =0x10000 
	tst R1, R4
	bne loc_80127DA
	add r0, r5, #0
	ldr R1, [SP]
	bl sub_800EDD0
	b loc_80127E4
loc_80127DA:
	mov R0, #1
	strb R0, [R7,#0x1B]
	add r0, r5, #0
	bl sub_800EE26
loc_80127E4:
	str R0, [SP,#4]
	str R1, [SP,#8]
	str R2, [SP,#0xC]
	str R3, [SP,#0x10]
	mov R6, #0xFF
	and R6, R4
	str R6, [SP,#0x14]
	lsr r4, r4, #8
	str R4, [SP,#0x18]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r4, r0, #0
	ldrb R0, [R4,#0x1F]
	bl sub_8010D58
	ldr R3, dword_80128F8 // =0xFFFF 
	cmp R0, R3
	beq loc_8012822
	str R0, [SP,#4]
	str R1, [SP,#8]
	str R2, [SP,#0xC]
	mov R3, #0
	str R3, [SP,#0x10]
	mov R6, #0xFF
	and R6, R4
	str R6, [SP,#0x14]
	lsr r4, r4, #8
	str R4, [SP,#0x18]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r4, r0, #0
loc_8012822:
	ldr R0, [SP,#4]
	strh R0, [R7,#0x14]
	bl sub_80126E4
	ldr R0, [SP]
	strb R0, [R7,#4]
	ldr R0, [SP,#8]
	strh R0, [R7,#8]
	ldr R0, [SP]
	bl sub_8012C7C
	tst R0, R0
	beq loc_801284E
	ldrh R1, [R7,#8]
	cmp R0, #0xFF
	bne loc_8012844
	add r0, r1, #0
loc_8012844:
	add r1, r1, r0
	strh R1, [R7,#8]
	mov R0, #0x87
	bl sound_play // () -> void
loc_801284E:
	ldr R0, [SP,#0xC]
	strh R0, [R7,#6]
	add r0, r5, #0
	ldrh R1, [R7,#0x14]
	ldrh R2, [R7,#8]
	ldr R3, [SP]
	bl sub_8012A38
	strh R0, [R7,#8]
	tst R1, R1
	beq loc_8012880
	cmp R1, #1
	bne loc_8012872
	ldrb R0, [R5,#0x16]
	mov R1, #0x80
	bl sub_8015BEC
	b loc_801287A
loc_8012872:
	cmp R1, #2
	bne loc_8012880
	bl sub_80143A6
loc_801287A:
	mov R0, #0x87
	bl sound_play // () -> void
loc_8012880:
	ldrh R0, [R7,#8]
	ldr R1, [SP,#0x14]
	bl sub_8012C34
	strh R0, [R7,#8]
	ldrh R0, [R7,#0x14]
	ldrh R1, [R7,#8]
	bl sub_8012C4A
	strh R0, [R7,#8]
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #6
	beq loc_80128A2
	cmp R0, #0x12
	bne loc_80128C0
loc_80128A2:
	ldrb R0, [R4,#4]
	cmp R0, #2
	bne loc_80128C0
	ldrb R0, [R4,#9]
	mov R1, #1
	tst R0, R1
	bne loc_80128C0
	mov r1, #0x3e 
	bl sub_8013790
	add R0, #0x13
	mov R1, #0x14
	svc 6
	add r2, r0, #0
	b loc_80128C2
loc_80128C0:
	mov R2, #0
loc_80128C2:
	push {r2}
	mov r1, #0x50 
	bl sub_8013790
	pop {r2}
	add r0, r0, r2
	beq loc_80128D6
	mov R1, #0
	bl sub_800E2FC
loc_80128D6:
	ldrb R0, [R4,#9]
	mov R1, #4
	tst R0, R1
	beq loc_80128E8
	ldrb R0, [R5,#0x16]
	mov R1, #6
	mov R2, #1
	bl sub_800AB46
loc_80128E8:
	ldrh R0, [R7,#0x14]
	bl loc_800B79A
	ldrb R0, [R4,#0xB]
	add sp, sp, #0x1c
	pop {r4,r6,r7,pc}
dword_80128F4: .word 0x10000
dword_80128F8: .word 0xFFFF
.endfunc // sub_80127C0

	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str R1, [SP]
	add r4, r0, #0
	ldrb R6, [R5,#0x12]
	ldrb R7, [R5,#0x13]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_800C90A
	tst R0, R0
	beq loc_8012950
	ldrb R1, [R0,#2]
	cmp R1, #6
	bne loc_8012998
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #7
	beq loc_8012928
	cmp R0, #0x13
	bne loc_8012998
loc_8012928:
	ldr R0, [SP]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_8012998
	mov R2, #1
	tst R1, R2
	bne loc_8012998
	ldrb R1, [R0,#6]
	cmp R1, #3
	bne loc_8012998
	add r0, r6, #0
	add r1, r7, #0
	mov R2, #2
	bl object_setPanelType
	mov R0, #1
	b loc_8012952
loc_8012950:
	mov R0, #0
loc_8012952:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
.func
.thumb_func
sub_8012956:
	ldrb R3, [R0]
	tst R3, R3
	bne loc_8012998
	ldrb R3, [R0,#2]
	add R3, #1
	strb R3, [R0,#2]
	cmp R3, #0xC
	ble loc_801296C
	mov R3, #1
	strb R3, [R0]
	b loc_8012998
loc_801296C:
	ldrb R3, [R0,#1]
	add r2, r3, r3
	add R3, #1
	cmp R3, #3
	blt loc_8012978
	mov R3, #0
loc_8012978:
	strb R3, [R0,#1]
	add R2, #4
	strh R1, [R0,R2]
	ldrh R1, [R0,#4]
	ldrh R2, [R0,#6]
	orr R1, R2
	ldrh R2, [R0,#8]
	orr R1, R2
	mov r2, #0x22 
	and R1, R2
	cmp r1, #0x22 
	bne loc_8012998
	mov R3, #1
	strb R3, [R0]
	mov R0, #1
	mov PC, LR
loc_8012998:
	mov R0, #0
	mov PC, LR
.endfunc // sub_8012956

.func
.thumb_func
sub_801299C:
	push {lr}
	// size
	mov R1, #0x10
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
.endfunc // sub_801299C

	push {r7,lr}
	strh R0, [R7,#0x14]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldr R1, [R0,#0x10]
	str R1, [R7,#0xC]
	ldrb R1, [R0,#0xA]
	lsl r1, r1, #0x10
	ldrh R2, [R0,#0x1A]
	add r1, r1, r2
	str R1, [R7,#8]
	ldrb R1, [R0,#0x14]
	strb R1, [R7,#5]
	mov R1, #0
	strh R1, [R7,#6]
	ldrb R1, [R0,#0xC]
	strb R1, [R7,#3]
	ldrb R1, [R0,#4]
	ldrb R2, [R0,#6]
	ldr R3, off_80129E0 // =dword_80129E4 
	ldrb R2, [R3,R2]
	orr R1, R2
	strb R1, [R7,#2]
	ldrb R0, [R0,#0xB]
	pop {r7,pc}
	.word 0
	.byte 0, 0, 0, 0
off_80129E0: .word dword_80129E4
dword_80129E4: .word 0x0
	.word 0x408000, 0x1020, 0x0
	push {r7,lr}
	sub sp, sp, #0x18
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #3
	ldr R1, off_8012A24 // =off_8012A28 
	add r1, r1, r0
	ldr R2, [R1]
	ldr R3, [R1,#4]
	add r7, sp, #0
	bl sub_800CEA0
	add r7, r0, #0
	beq loc_8012A20
	bl sub_8001532
	add r1, r7, #0
	svc 6
	add r0, sp, #0
	ldrb R0, [R0,R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_8012A20:
	add sp, sp, #0x18
	pop {r7,pc}
off_8012A24: .word off_8012A28
off_8012A28: .word 0x30
	.word 0xF880080, 0x10, 0xF8800A0
.func
.thumb_func
sub_8012A38:
	push {R4-R7,lr}
	sub sp, sp, #0xc
	add r5, r0, #0
	str R1, [SP]
	str R2, [SP,#4]
	str R3, [SP,#8]
	mov R6, #0
	// idx
	add r0, r1, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r4, r0, #0
	ldrb R1, [R4,#9]
	mov R2, #2
	tst R1, R2
	beq loc_8012AB4
	ldrb R0, [R5,#0x16]
	bl sub_8015B54
	cmp R0, #2
	bne loc_8012A64
	mov R6, #1
	b loc_8012AAC
loc_8012A64:
	cmp R0, #3
	bne loc_8012A6C
	mov R6, #2
	b loc_8012AAC
loc_8012A6C:
	ldr R0, [SP]
	ldr R1, [SP,#8]
	bl sub_8012AFA
	tst R0, R0
	beq loc_8012A7C
	mov R6, #4
	b loc_8012AAC
loc_8012A7C:
	ldr R0, [SP]
	ldr R1, [SP,#8]
	bl sub_8012B4E
	tst R0, R0
	beq loc_8012A8C
	mov R6, #6
	b loc_8012AAC
loc_8012A8C:
	ldr R0, [SP]
	ldr R1, [SP,#8]
	bl sub_8012BA2
	tst R0, R0
	beq loc_8012A9C
	mov R6, #6
	b loc_8012AAC
loc_8012A9C:
	ldr R0, [SP]
	bl sub_8012ABC
	tst R0, R0
	beq loc_8012AAA
	mov R6, #4
	b loc_8012AAC
loc_8012AAA:
	b loc_8012AB4
loc_8012AAC:
	ldr R0, [SP,#4]
	ldr R1, dword_8012DE4 // =0x8000 
	orr R0, R1
	str R0, [SP,#4]
loc_8012AB4:
	ldr R0, [SP,#4]
	add r1, r6, #0
	add sp, sp, #0xc
	pop {R4-R7,pc}
.endfunc // sub_8012A38

.func
.thumb_func
sub_8012ABC:
	push {r6,r7,lr}
	mov R7, #0
	add r6, r0, #0
	bl sub_802D234
	cmp R0, #1
	beq loc_8012AF6
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0x17
	blt loc_8012AF6
	cmp R0, #0x18
	bgt loc_8012AF6
	mov R7, #0
	// idx
	add r0, r6, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_8012AF6
	mov R2, #1
	tst R1, R2
	bne loc_8012AF6
	ldrb R1, [R0,#6]
	cmp R1, #0xA
	bne loc_8012AF6
	mov R7, #1
loc_8012AF6:
	add r0, r7, #0
	pop {r6,r7,pc}
.endfunc // sub_8012ABC

.func
.thumb_func
sub_8012AFA:
	push {r6,r7,lr}
	add r6, r0, #0
	mov R7, #0
	add r4, r1, #0
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #7
	beq loc_8012B1A
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #7
	beq loc_8012B1A
	cmp R0, #0x13
	bne loc_8012B4A
loc_8012B1A:
	mov R7, #0
	// idx
	add r0, r6, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_8012B4A
	mov R2, #1
	tst R1, R2
	bne loc_8012B4A
	ldrb R1, [R0,#4]
	cmp R1, #4
	bne loc_8012B4A
	cmp R4, #0
	bne loc_8012B48
	ldr R1, [R5,#0x58]
	ldrb R0, [R1,#0x1D]
	cmp R0, #2
	bne loc_8012B4A
	ldrb R0, [R1,#0x1E]
	cmp R0, #1
	bne loc_8012B4A
loc_8012B48:
	mov R7, #1
loc_8012B4A:
	add r0, r7, #0
	pop {r6,r7,pc}
.endfunc // sub_8012AFA

.func
.thumb_func
sub_8012B4E:
	push {r6,r7,lr}
	add r6, r0, #0
	mov R7, #0
	add r4, r1, #0
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #6
	beq loc_8012B6E
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #6
	beq loc_8012B6E
	cmp R0, #0x12
	bne loc_8012B9E
loc_8012B6E:
	mov R7, #0
	// idx
	add r0, r6, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_8012B9E
	mov R2, #1
	tst R1, R2
	bne loc_8012B9E
	ldrb R1, [R0,#4]
	cmp R1, #2
	bne loc_8012B9E
	cmp R4, #0
	bne loc_8012B9C
	ldr R1, [R5,#0x58]
	ldrb R0, [R1,#0x1D]
	cmp R0, #2
	bne loc_8012B9E
	ldrb R0, [R1,#0x1E]
	cmp R0, #1
	bne loc_8012B9E
loc_8012B9C:
	mov R7, #1
loc_8012B9E:
	add r0, r7, #0
	pop {r6,r7,pc}
.endfunc // sub_8012B4E

.func
.thumb_func
sub_8012BA2:
	push {r6,r7,lr}
	add r6, r0, #0
	mov R7, #0
	add r4, r1, #0
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0xB
	bne loc_8012BE4
	mov R7, #0
	// idx
	add r0, r6, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_8012BE4
	mov R2, #1
	tst R1, R2
	bne loc_8012BE4
	ldrb R1, [R0,#6]
	cmp R1, #5
	bne loc_8012BE4
	cmp R4, #0
	bne loc_8012BE2
	ldr R1, [R5,#0x58]
	ldrb R0, [R1,#0x1D]
	cmp R0, #2
	bne loc_8012BE4
	ldrb R0, [R1,#0x1E]
	cmp R0, #1
	bne loc_8012BE4
loc_8012BE2:
	mov R7, #1
loc_8012BE4:
	add r0, r7, #0
	pop {r6,r7,pc}
.endfunc // sub_8012BA2

	push {r6,r7,lr}
	mov R7, #0
	add r6, r0, #0
	add r4, r1, #0
	bl sub_802D234
	cmp R0, #1
	beq loc_8012C30
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0xB
	blt loc_8012C30
	cmp R0, #0x16
	bgt loc_8012C30
	mov R7, #0
	add r0, r6, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_8012C30
	mov R2, #1
	tst R1, R2
	bne loc_8012C30
	ldrb R1, [R0,#6]
	cmp R1, #0xA
	bne loc_8012C30
	cmp R4, #0
	bne loc_8012C2E
	ldr R0, [R5,#0x58]
	ldrb R0, [R0,#0x1D]
	cmp R0, #2
	bne loc_8012C30
loc_8012C2E:
	mov R7, #1
loc_8012C30:
	add r0, r7, #0
	pop {r6,r7,pc}
.func
.thumb_func
sub_8012C34:
	ldr R2, dword_8012DE8 // =0x4000 
	mov R3, #2
	tst R1, R3
	beq loc_8012C3E
	orr R0, R2
loc_8012C3E:
	ldr R2, off_8012DEC // =0x2000 
	mov R3, #4
	tst R1, R3
	beq locret_8012C48
	orr R0, R2
locret_8012C48:
	mov PC, LR
.endfunc // sub_8012C34

.func
.thumb_func
sub_8012C4A:
	push {r4,lr}
	add r4, r1, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_8012C78
	mov R2, #1
	tst R1, R2
	bne loc_8012C78
	ldrb R1, [R0,#6]
	cmp R1, #0xA
	bne loc_8012C78
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #4
	beq loc_8012C74
	cmp R0, #0x10
	bne loc_8012C78
loc_8012C74:
	ldr R0, off_8012DF0 // =0x1000 
	orr R4, R0
loc_8012C78:
	add r0, r4, #0
	pop {r4,pc}
.endfunc // sub_8012C4A

.func
.thumb_func
sub_8012C7C:
	push {r4,lr}
	add r4, r0, #0
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #2
	beq loc_8012C8E
	cmp R0, #0xE
	bne loc_8012C94
loc_8012C8E:
	tst R4, R4
	bne loc_8012CAA
	b loc_8012CA2
loc_8012C94:
	cmp R0, #3
	beq loc_8012C9C
	cmp R0, #0xF
	bne loc_8012CA2
loc_8012C9C:
	tst R4, R4
	bne loc_8012CAE
	b loc_8012CA2
loc_8012CA2:
	mov R0, #0
	pop {r4,pc}
	mov R0, #0xFF
	pop {r4,pc}
loc_8012CAA:
	ldr R0, dword_8012DE8 // =0x4000 
	pop {r4,pc}
loc_8012CAE:
	mov r0, #0x28 
	pop {r4,pc}
.endfunc // sub_8012C7C

.func
.thumb_func
sub_8012CB2:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x14
	mov R6, SP
	ldrb R3, [R5,#0x16]
	mov R2, #1
	eor R3, R2
	mov R1, #0
	mov R2, #0xBA
	add r0, r6, #0
	bl object_getEnemyByNameRange
	add r4, r0, #0
	lsl r0, r0, #2
	add r0, r0, r6
	ldrb R3, [R5,#0x16]
	mov R2, #1
	eor R3, R2
	ldr R1, off_8012DF4 // =0x100 
	ldr R2, dword_8012DF8 // =0x1C3 
	bl object_getEnemyByNameRange
	add r4, r4, r0
	beq loc_8012D20
	mov R0, #0x10
	add r0, r0, r6
	bl sub_8012D24
	add R6, #0x10
	mov R4, #3
loc_8012CEC:
	push {r6,r7}
	ldrb R0, [R6]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov R2, #0x10
	push {R0-R3}
	mov R0, #0x1E
	mov R1, #0x14
	bl sub_8012642
	mov R6, #0x8A
	lsl r6, r6, #0x10
	orr R6, R0
	pop {R0-R3}
	mov R7, #0
	bl sub_80C7F20
	pop {r6,r7}
	add R6, #1
	sub R4, #1
	bne loc_8012CEC
	mov R0, #2
	mov R1, #0x14
	bl sub_80302A8
loc_8012D20:
	add sp, sp, #0x14
	pop {r4,r6,r7,pc}
.endfunc // sub_8012CB2

.func
.thumb_func
sub_8012D24:
	push {R4-R7,lr}
	add r7, r0, #0
	mov R0, #0
	str R0, [R7]
	add r3, r4, #0
loc_8012D2E:
	ldr R2, [R6]
	ldrb R0, [R2,#0x12]
	ldrb R1, [R2,#0x13]
	lsl r1, r1, #4
	orr R0, R1
	strb R0, [R7]
	add R7, #1
	add R6, #4
	sub R3, #1
	bne loc_8012D2E
	cmp R4, #3
	beq loc_8012D5C
	cmp R4, #2
	beq loc_8012D54
	sub R7, #1
	ldrb R0, [R7]
	strb R0, [R7,#1]
	strb R0, [R7,#2]
	b loc_8012D5E
loc_8012D54:
	sub R7, #2
	ldrb R0, [R7,#1]
	strb R0, [R7,#2]
	b loc_8012D5E
loc_8012D5C:
	sub R7, #3
loc_8012D5E:
	bl sub_8012D70
	pop {R4-R7,pc}
.endfunc // sub_8012D24

	push {lr}
	mov R0, #0
	mov R1, #1
	bl sub_8012D8C
	pop {pc}
.func
.thumb_func
sub_8012D70:
	push {lr}
	mov R0, #0
	mov R1, #1
	bl sub_8012D8C
	mov R0, #0
	mov R1, #2
	bl sub_8012D8C
	mov R0, #1
	mov R1, #2
	bl sub_8012D8C
	pop {pc}
.endfunc // sub_8012D70

.func
.thumb_func
sub_8012D8C:
	push {r4,r6,lr}
	add r4, r0, #0
	add r6, r1, #0
	ldrb R0, [R7,R4]
	ldrb R1, [R7,R6]
	cmp R0, R1
	bne locret_8012DB6
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bl sub_801BB1C
	bl sub_8012DB8
	strb R0, [R7,R6]
	ldrb R0, [R7,R4]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bl sub_801BB46
locret_8012DB6:
	pop {r4,r6,pc}
.endfunc // sub_8012D8C

.func
.thumb_func
sub_8012DB8:
	push {lr}
	ldr R3, off_8012DD0 // =dword_8012DD4 
	bl sub_81096FA
	bl sub_8015C94
.endfunc // sub_8012DB8

	cmp R0, #0
	beq locret_8012DCC
	lsl r1, r1, #4
	orr R0, R1
locret_8012DCC:
	pop {pc}
	.byte 0, 0
off_8012DD0: .word dword_8012DD4
dword_8012DD4: .word 0x20, 0x80, 0x0
	.word 0xA0
dword_8012DE4: .word 0x8000
dword_8012DE8: .word 0x4000
off_8012DEC: .word 0x2000
off_8012DF0: .word 0x1000
off_8012DF4: .word 0x100
dword_8012DF8: .word 0x1C3
.func
.thumb_func
sub_8012DFC:
	push {r4,r6,lr}
	add r7, r0, #0
	bl sub_8010022
	add r4, r0, #0
	bl battle_isBattleOver
	tst R0, R0
	bne loc_8012E64
	add r0, r7, #0
	mov r1, #0x2c 
	bl sub_80136CC
	cmp R0, #0x17
	blt loc_8012E1E
	cmp R0, #0x18
	ble locret_8012E62
loc_8012E1E:
	ldr R1, off_8012E70 // =dword_2036820 
	mov R3, #8
	mul R3, R7
	add r1, r1, r3
	ldrh R6, [R1,#2]
	add r3, r6, #0
	ldrh R2, [R4,#0x22]
	strh R2, [R4,#0x28]
	strh R3, [R4,#0x22]
	mvn R0, R2
	and R0, R3
	strh R0, [R4,#0x24]
	mvn R0, R3
	and R0, R2
	strh R0, [R4,#0x26]
	bl battle_isTimeStop
	bne loc_8012E4E
	mov R0, #0
	strh R0, [R4,#0x30]
	strh R0, [R4,#0x2A]
	strh R0, [R4,#0x2C]
	strh R0, [R4,#0x2E]
	b locret_8012E62
loc_8012E4E:
	add r3, r6, #0
	ldrh R2, [R4,#0x2A]
	strh R2, [R4,#0x30]
	strh R3, [R4,#0x2A]
	mvn R0, R2
	and R0, R3
	strh R0, [R4,#0x2C]
	mvn R0, R3
	and R0, R2
	strh R0, [R4,#0x2E]
locret_8012E62:
	pop {r4,r6,pc}
loc_8012E64:
	mov R1, #0
	strh R1, [R4,#0x22]
	strh R1, [R4,#0x28]
	strh R1, [R4,#0x24]
	strh R1, [R4,#0x26]
	pop {r4,r6,pc}
off_8012E70: .word dword_2036820
.endfunc // sub_8012DFC

.func
.thumb_func
sub_8012E74:
	push {r4,r6,lr}
	ldr R4, [R5,#0x58]
	bl battle_isBattleOver
	tst R0, R0
	bne loc_8012E90
	bl battle_isPaused
	bne locret_8012E8E
	bl sub_8012EA0
	bl sub_8012EBC
locret_8012E8E:
	pop {r4,r6,pc}
loc_8012E90:
	mov R1, #0
	strh R1, [R4,#0x22]
	strh R1, [R4,#0x28]
	strh R1, [R4,#0x24]
	strh R1, [R4,#0x26]
	pop {r4,r6,pc}
	.word dword_2036820
.endfunc // sub_8012E74

.func
.thumb_func
sub_8012EA0:
	push {lr}
	bl sub_8012FC8
	pop {pc}
.endfunc // sub_8012EA0

.func
.thumb_func
sub_8012EA8:
	push {lr}
	ldr R3, [R5,#0x58]
	mov R0, #0
	strb R0, [R3,#0x1D]
	strb R0, [R3,#0x1B]
	strb R0, [R3,#0x1E]
	ldr R0, dword_8012FAC // =0x60000 
	bl sub_800FFEE
	pop {pc}
.endfunc // sub_8012EA8

.func
.thumb_func
sub_8012EBC:
	push {r4,r6,r7,lr}
	ldr R4, [R5,#0x58]
	bl battle_isTimeStop
	bne locret_8012F3C
	bl sub_8012F3E
	beq loc_8012F34
	ldrb R0, [R4,#0x1E]
	bl sub_8012F62
	add r7, r0, #0
	bl sub_800FFFE
	mov R3, #0
	ldr R1, dword_8012FAC // =0x60000 
	tst R0, R1
	bne loc_8012EE2
	b loc_8012F34
loc_8012EE2:
	ldr R1, dword_8012FB0 // =0x20000 
	tst R0, R1
	beq loc_8012EF8
	ldrb R0, [R4,#0x1E]
	mov R1, #1
	strb R1, [R4,#0x1E]
	cmp R0, #1
	beq loc_8012F14
	cmp R0, #0
	bne loc_8012F0E
	b loc_8012F14
loc_8012EF8:
	ldr R1, dword_8012FB4 // =0x40000 
	tst R0, R1
	beq loc_8012F14
	ldrb R0, [R4,#0x1E]
	mov R1, #2
	strb R1, [R4,#0x1E]
	cmp R0, #2
	beq loc_8012F14
	cmp R0, #0
	bne loc_8012F0E
	b loc_8012F14
loc_8012F0E:
	mov R0, #0
	strb R0, [R4,#0x1B]
	strb R0, [R4,#0x1D]
loc_8012F14:
	ldrb R0, [R4,#0x1B]
	add R0, #1
	strb R0, [R4,#0x1B]
	cmp R0, #0xA
	blt loc_8012F30
	mov R3, #1
	cmp R0, R7
	blt loc_8012F30
	strb R7, [R4,#0x1B]
	mov R3, #2
	b loc_8012F30
	mov R0, #0
	strb R0, [R4,#0x1B]
	mov R3, #0
loc_8012F30:
	strb R3, [R4,#0x1D]
	pop {r4,r6,r7,pc}
loc_8012F34:
	mov R0, #0
	strb R0, [R4,#0x1E]
	strb R0, [R4,#0x1B]
	strb R0, [R4,#0x1D]
locret_8012F3C:
	pop {r4,r6,r7,pc}
.endfunc // sub_8012EBC

.func
.thumb_func
sub_8012F3E:
	push {lr}
	bl sub_800FFFE
	ldr R1, dword_8012FB8 // =0x1000002F 
	tst R0, R1
	bne loc_8012F5E
	bl sub_801032C
	ldr R1, off_8012FBC // =0x200 
	tst R0, R1
	bne loc_8012F5E
	mov R1, #0x10
	tst R0, R1
	beq loc_8012F5E
	mov R0, #1
	pop {pc}
loc_8012F5E:
	mov R0, #0
	pop {pc}
.endfunc // sub_8012F3E

.func
.thumb_func
sub_8012F62:
	push {r4,r7,lr}
	ldr R4, [R5,#0x58]
	mov R7, #7
	cmp R0, #2
	beq loc_8012F90
	mov R7, #5
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0xB
	blt loc_8012F90
	cmp R0, #0x18
	bgt loc_8012F90
	bl sub_8010004
	ldr R1, dword_8012FC0 // =0xFFFF 
	beq loc_8012F90
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#6]
	cmp R0, #0xA
	bne loc_8012F90
	mov R7, #0x11
loc_8012F90:
	mov R1, #3
	bl sub_8013774
	lsl r3, r0, #1
	mov R0, #0xFF
	ldrb R1, [R4,R7]
	cmp R1, #0xFF
	beq locret_8012FAA
	mov R2, #0xA
	mul R1, R2
	add r1, r1, r3
	ldr R2, off_8012FC4 // =byte_8020404 
	ldrh R0, [R2,R1]
locret_8012FAA:
	pop {r4,r7,pc}
dword_8012FAC: .word 0x60000
dword_8012FB0: .word 0x20000
dword_8012FB4: .word 0x40000
dword_8012FB8: .word 0x1000002F
off_8012FBC: .word 0x200
dword_8012FC0: .word 0xFFFF
off_8012FC4: .word byte_8020404
.endfunc // sub_8012F62

.func
.thumb_func
sub_8012FC8:
	push {r4,r6,r7,lr}
	ldr R4, [R5,#0x58]
	bl sub_800FFFE
	add r6, r0, #0
	bl battle_isTimeStop
	beq loc_8013008
	ldrb R0, [R5,#0x16]
	bl sub_800A772
	tst R0, R0
	bne loc_8012FE4
	pop {r4,r6,r7,pc}
loc_8012FE4:
	ldr R1, off_80133B0 // =0x800 
	tst R1, R6
	bne locret_8013006
	bl sub_8010004
	add r1, r0, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	beq locret_8013006
	ldrh R0, [R4,#0x2C]
	mov R1, #1
	tst R0, R1
	bne loc_8013000
	b locret_8013006
loc_8013000:
	ldr R0, off_80133B0 // =0x800 
	bl sub_800FFE4
locret_8013006:
	pop {r4,r6,r7,pc}
loc_8013008:
	bl sub_800A8F8
	beq loc_8013044
	ldrh R1, [R4,#0x24]
	mov R2, #4
	tst R1, R2
	beq loc_8013044
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	ldrh R0, [R0,#0x28]
	ldr R1, off_80133B4 // =0x1500 
	cmp R0, R1
	bge loc_801303C
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	ldrb R1, [R5,#0x16]
	cmp R0, R1
	bne loc_8013044
	mov r0, #0x69 
	bl sound_play // () -> void
	bl sub_801EC44
	b loc_8013044
loc_801303C:
	ldr R0, off_80133B8 // =timer_2000000 
	bl sub_800FFE4
	b locret_8013234
loc_8013044:
	bl sub_802D234
	cmp R0, #1
	beq loc_801309C
	ldrh R7, [R4,#0x22]
	bl sub_801032C
	ldr R1, off_80133BC // =0x400 
	tst R0, R1
	bne loc_8013072
	bl battle_getFlags
	mov R1, #2
	tst R0, R1
	beq loc_801309C
	ldrh R0, [R4,#0x24]
	ldr R1, off_80133C0 // =0x300 
	tst R0, R1
	beq loc_801309C
	mov R0, #0x10
	bl battle_setFlags
	b locret_8013234
loc_8013072:
	ldrh R7, [R4,#0x24]
	ldr R1, off_80133C0 // =0x300 
	tst R7, R1
	beq loc_801309C
	ldrb R0, [R5,#0x17]
	cmp R0, #0
	beq loc_801308E
	ldr R0, off_80133C4 // =0x1000 
	bl sub_800FFE4
	ldr R0, off_80133C8 // =0x2000 
	bl sub_800FFEE
	b loc_801309C
loc_801308E:
	ldr R0, off_80133C8 // =0x2000 
	bl sub_800FFE4
	ldr R0, off_80133C4 // =0x1000 
	bl sub_800FFEE
	b loc_801309C
loc_801309C:
	ldrh R7, [R4,#0x22]
	bl sub_800FFFE
	ldr R1, dword_80133CC // =0x60000 
	tst R0, R1
	bne loc_80130D0
	bl sub_801336C
	beq loc_80130BC
	mov R1, #1
	tst R7, R1
	beq loc_80130BC
	ldr R0, dword_80133D0 // =0x20000 
	bl sub_800FFE4
	b loc_8013130
loc_80130BC:
	bl sub_8013396
	beq loc_80130D0
	mov R1, #2
	tst R7, R1
	beq loc_8013130
	ldr R0, dword_80133D4 // =0x40000 
	bl sub_800FFE4
	b loc_8013130
loc_80130D0:
	ldr R1, dword_80133D0 // =0x20000 
	tst R0, R1
	beq loc_80130FA
	ldrh R0, [R4,#0x24]
	mov R1, #2
	tst R0, R1
	beq loc_80130EC
	ldr R0, dword_80133D0 // =0x20000 
	bl sub_800FFEE
	ldr R0, dword_80133D4 // =0x40000 
	bl sub_800FFE4
	b loc_8013130
loc_80130EC:
	bl sub_801336C
	beq loc_801312A
	mov R0, #1
	tst R7, R0
	beq loc_801312A
	b loc_8013130
loc_80130FA:
	ldr R1, dword_80133D4 // =0x40000 
	tst R0, R1
	beq loc_8013130
	bl sub_801336C
	beq loc_801311C
	ldrh R0, [R4,#0x24]
	mov R1, #1
	tst R0, R1
	beq loc_801311C
	ldr R0, dword_80133D4 // =0x40000 
	bl sub_800FFEE
	ldr R0, dword_80133D0 // =0x20000 
	bl sub_800FFE4
	b loc_8013130
loc_801311C:
	bl sub_8013396
	beq loc_801312A
	mov R0, #2
	tst R7, R0
	beq loc_801312A
	b loc_8013130
loc_801312A:
	ldr R0, dword_80133CC // =0x60000 
	bl sub_800FFEE
loc_8013130:
	ldrb R0, [R4,#8]
	cmp R0, #0xFF
	beq loc_8013176
	ldrb R0, [R4,#0x15]
	tst R0, R0
	bne loc_8013176
	ldrh R2, [R4,#0x24]
	ldrb R0, [R4,#0x13]
	tst R0, R0
	bne loc_801314E
	mov R1, #2
	tst R2, R1
	beq loc_8013176
	mov R0, #8
	strb R0, [R4,#0x13]
loc_801314E:
	mov r1, #0x20 
	ldrb R3, [R5,#0x17]
	tst R3, R3
	beq loc_8013158
	mov R1, #0x10
loc_8013158:
	tst R2, R1
	beq loc_801316C
	ldrh R2, [R4,#0x22]
	mov R1, #2
	tst R1, R2
	beq loc_801316C
	mov R0, #0x10
	bl sub_800FFE4
	b loc_8013172
loc_801316C:
	sub R0, #1
	strb R0, [R4,#0x13]
	b loc_8013176
loc_8013172:
	mov R0, #0
	strb R0, [R4,#0x13]
loc_8013176:
	ldrb R1, [R4,#6]
	cmp R1, #0xFF
	beq loc_80131D8
	mov R2, #3
	tst R2, R6
	bne loc_80131D8
	cmp R1, #4
	beq loc_801318E
	cmp r1, #0x2c 
	beq loc_801318E
	cmp R1, #3
	bne loc_80131B4
loc_801318E:
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0x14
	beq loc_801319C
	cmp R0, #0x16
	bne loc_80131A6
loc_801319C:
	bl sub_800FFFE
	mov R1, #0x10
	tst R0, R1
	bne loc_80131D8
loc_80131A6:
	bl sub_800FFFE
	ldr R1, dword_80133D8 // =0x10000 
	tst R0, R1
	bne loc_80131D8
	ldrh R0, [R4,#0x22]
	b loc_80131BE
loc_80131B4:
	ldrh R0, [R4,#0x24]
	ldrb R1, [R4,#7]
	cmp R1, #0xFF
	beq loc_80131BE
	ldrh R0, [R4,#0x26]
loc_80131BE:
	mov R1, #2
	tst R0, R1
	beq loc_80131D8
	mov R0, #1
	ldrb R1, [R4,#0x1E]
	cmp R1, #2
	bne loc_80131D4
	ldrb R1, [R4,#0x1D]
	cmp R1, #2
	bne loc_80131D4
	mov R0, #2
loc_80131D4:
	bl sub_800FFE4
loc_80131D8:
	bl sub_802D234
	cmp R0, #9
	bne loc_80131EE
	ldrh R0, [R4,#0x24]
	mov R1, #1
	tst R0, R1
	beq loc_80131EE
	ldr R0, dword_80133DC // =0x10000000 
	bl sub_800FFE4
loc_80131EE:
	ldrb R0, [R5,#0x16]
	bl sub_800A772
	tst R0, R0
	beq locret_8013234
	mov R1, #0xC
	tst R1, R6
	bne locret_8013234
	bl sub_8010004
	ldr R1, dword_80133E0 // =0xFFFF 
	cmp R0, R1
	beq locret_8013234
	bl sub_801336C
	bne loc_8013218
	ldrh R0, [R4,#0x24]
	mov R1, #1
	tst R0, R1
	bne loc_8013220
	b locret_8013234
loc_8013218:
	ldrh R0, [R4,#0x26]
	mov R1, #1
	tst R0, R1
	beq locret_8013234
loc_8013220:
	mov R0, #4
	ldrb R1, [R4,#0x1E]
	cmp R1, #1
	bne loc_8013230
	ldrb R1, [R4,#0x1D]
	cmp R1, #2
	bne loc_8013230
	mov R0, #8
loc_8013230:
	bl sub_800FFE4
locret_8013234:
	pop {r4,r6,r7,pc}
.endfunc // sub_8012FC8

.func
.thumb_func
sub_8013236:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str R0, [SP]
	ldr R1, off_80133E4 // =0x190 
	cmp R0, R1
	blt loc_8013244
	b loc_8013360
loc_8013244:
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r7, r0, #0
	ldrb R4, [R7,#6]
	mov r1, #0x2c 
	bl sub_8013774
	add r6, r0, #0
	ldrb R1, [R7,#9]
	cmp R6, #2
	bne loc_801326C
	cmp R4, #0xA
	bne loc_801326C
	mov R0, #2
	tst R0, R1
	beq loc_801326C
	mov R0, #1
	tst R0, R1
	bne loc_801326C
	b loc_8013366
loc_801326C:
	cmp R6, #3
	beq loc_8013274
	cmp R6, #0xF
	bne loc_8013290
loc_8013274:
	ldr R2, [SP]
	cmp r2, #0x4c 
	blt loc_801327E
	cmp r2, #0x4f 
	ble loc_8013282
loc_801327E:
	cmp R4, #5
	bne loc_8013290
loc_8013282:
	mov R0, #2
	tst R0, R1
	beq loc_8013290
	mov R0, #1
	tst R0, R1
	bne loc_8013290
	b loc_8013366
loc_8013290:
	cmp R6, #0xB
	blt loc_801329E
	cmp R6, #0x16
	bgt loc_801329E
	cmp R4, #0xA
	bne loc_801329E
	b loc_8013366
loc_801329E:
	cmp R6, #7
	beq loc_80132A6
	cmp R6, #0x13
	bne loc_80132BA
loc_80132A6:
	ldrb R3, [R7,#6]
	cmp R3, #3
	bne loc_80132BA
	mov R0, #2
	tst R0, R1
	beq loc_80132BA
	mov R0, #1
	tst R0, R1
	bne loc_80132BA
	b loc_8013366
loc_80132BA:
	cmp R6, #6
	beq loc_80132C2
	cmp R6, #0x12
	bne loc_80132D6
loc_80132C2:
	ldrb R3, [R7,#6]
	cmp R3, #1
	bne loc_80132D6
	mov R0, #2
	tst R0, R1
	beq loc_80132D6
	mov R0, #1
	tst R0, R1
	bne loc_80132D6
	b loc_8013366
loc_80132D6:
	cmp R6, #9
	beq loc_80132DE
	cmp R6, #0x15
	bne loc_80132F0
loc_80132DE:
	cmp R4, #9
	bne loc_80132F0
	mov R0, #2
	tst R0, R1
	beq loc_80132F0
	mov R0, #1
	tst R0, R1
	bne loc_80132F0
	b loc_8013366
loc_80132F0:
	cmp R6, #5
	beq loc_80132F8
	cmp R6, #0x11
	bne loc_801330C
loc_80132F8:
	ldrb R3, [R7,#6]
	cmp R3, #0
	bne loc_801330C
	mov R0, #2
	tst R0, R1
	beq loc_801330C
	mov R0, #1
	tst R0, R1
loc_8013308:
	bne loc_801330C
	b loc_8013366
loc_801330C:
	bl sub_800F49E
	cmp R0, #0xFF
	beq loc_8013360
	add r6, r0, #0
	ldr R4, off_80133E8 // =byte_8021369 
	ldrb R1, [R7,#9]
	mov R0, #2
	tst R0, R1
	beq loc_8013338
	mov R0, #1
	tst R0, R1
	bne loc_8013360
	mov r1, #0x29 
	bl sub_8013774
	ldrb R3, [R7,#6]
	cmp R0, #5
	bne loc_8013338
	cmp R3, #0
	bne loc_8013360
	b loc_801335A
loc_8013338:
	cmp R0, #6
	bne loc_8013344
	cmp R3, #1
	bne loc_8013360
	add R4, #1
	b loc_801335A
loc_8013344:
	cmp R0, #7
	bne loc_8013350
	cmp R3, #3
	bne loc_8013360
	add R4, #2
	b loc_801335A
loc_8013350:
	cmp R0, #0xB
	bne loc_8013360
	cmp R3, #5
	bne loc_8013360
	add R4, #3
loc_801335A:
	ldrb R0, [R4]
	cmp R6, R0
	bge loc_8013366
loc_8013360:
	mov R0, #0
	add sp, sp, #4
	pop {r4,r6,r7,pc}
loc_8013366:
	mov R0, #1
	add sp, sp, #4
	pop {r4,r6,r7,pc}
.endfunc // sub_8013236

.func
.thumb_func
sub_801336C:
	push {lr}
	ldr R1, [R5,#0x58]
	ldrb R0, [R1,#5]
	cmp R0, #0xFF
	bne loc_801337C
	ldrb R0, [R1,#0x11]
	cmp R0, #0xFF
	beq loc_8013392
loc_801337C:
	bl sub_8012F3E
	beq loc_8013392
	bl sub_8010004
	ldr R1, dword_80133E0 // =0xFFFF 
	cmp R0, R1
	beq loc_8013392
	bl sub_8013236
	pop {pc}
loc_8013392:
	mov R0, #0
	pop {pc}
.endfunc // sub_801336C

.func
.thumb_func
sub_8013396:
	push {lr}
	ldr R1, [R5,#0x58]
	ldrb R0, [R1,#7]
	cmp R0, #0xFF
	beq loc_80133AA
	bl sub_8012F3E
	beq loc_80133AA
	mov R0, #1
	pop {pc}
loc_80133AA:
	mov R0, #0
	pop {pc}
	.byte 0, 0
off_80133B0: .word 0x800
off_80133B4: .word 0x1500
off_80133B8: .word timer_2000000
off_80133BC: .word 0x400
off_80133C0: .word 0x300
off_80133C4: .word 0x1000
off_80133C8: .word 0x2000
dword_80133CC: .word 0x60000
dword_80133D0: .word 0x20000
dword_80133D4: .word 0x40000
dword_80133D8: .word 0x10000
dword_80133DC: .word 0x10000000
dword_80133E0: .word 0xFFFF
off_80133E4: .word 0x190
off_80133E8: .word byte_8021369
.endfunc // sub_8013396

.func
.thumb_func
sub_80133EC:
	push {r5,r6,lr}
	mov R0, #0x4 // (off_8013410 - 0x801340C)
	ldr R6, off_8013408 // =off_801340C 
	ldr R6, [R6,R0]
	mov R5, #0
loc_80133F6:
	add r0, r5, #0
	ldrb R1, [R6,R5]
	bl init_8013B4E // (bool a1, int a2) -> void
	add R5, #1
	cmp R5, #7
	blt loc_80133F6
	pop {r5,r6,pc}
	.balign 4, 0x00
off_8013408: .word off_801340C
off_801340C: .word byte_8013414
off_8013410: .word byte_801341B
byte_8013414: .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0xB
byte_801341B: .byte 0x0, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB
.endfunc // sub_80133EC

.func
.thumb_func
sub_8013422:
	push {lr}
	ldr R2, off_8013434 // =byte_203CE00 
	mov r1, #0x64 
	mul R0, R1
	add r0, r0, r2
	bl initStruct_8013438 // (void *struc) -> void
	pop {pc}
	.balign 4, 0x00
off_8013434: .word byte_203CE00
.endfunc // sub_8013422

.func
.thumb_func
// (void *struc) -> void
initStruct_8013438:
	push {r4,lr}
	add r4, r0, #0
	// memBlock
	add r0, r4, #0
	// size
	mov r1, #0x64 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov R0, #1
	mov r1, #0x20 
	strb R0, [R4,R1]
	mov R0, #1
	strb R0, [R4,#5]
	mov R0, #0xFF
	strb R0, [R4,#7]
	mov R0, #0
	strb R0, [R4,#0x18]
	mov R0, #0
	strb R0, [R4,#0x19]
	mov R0, #0
	strb R0, [R4,#8]
	mov R0, #4
	strb R0, [R4,#9]
	mov R0, #5
	strb R0, [R4,#0xA]
	mov R0, #5
	strb R0, [R4,#0xB]
	mov R0, #1
	strb R0, [R4,#0xC]
	mov R0, #0
	strb R0, [R4,#0xD]
	mov R0, #0
	mov r1, #0x26 
	strb R0, [R4,R1]
	mov R0, #0xFF
	strb R0, [R4,#0x12]
	mov R0, #0x1F
	mov r1, #0x27 
	strb R0, [R4,R1]
	mov R0, #0
	mov r1, #0x28 
	strb R0, [R4,R1]
	mov R0, #0x99
	mov R1, #0xE
	strb R0, [R4,R1]
	mov r0, #0x64 
	mov r1, #0x40 
	strh R0, [R4,R1]
	mov r1, #0x42 
	strh R0, [R4,R1]
	mov r1, #0x3e 
	strh R0, [R4,R1]
	mov R0, #0
	mov r1, #0x2c 
	strb R0, [R4,R1]
	mov R0, #0
	mov r1, #0x2d 
	strb R0, [R4,R1]
	mov R0, #0xFF
	mov r1, #0x2e 
loc_80134AC:
	strb R0, [R4,R1]
	add R1, #1
	cmp r1, #0x30 
	ble loc_80134AC
	mov R0, #0xFF
	mov r1, #0x56 
loc_80134B8:
	strb R0, [R4,R1]
	add R1, #1
	cmp r1, #0x5b 
	ble loc_80134B8
	mov R0, #3
	mov r1, #0x21 
	strb R0, [R4,R1]
	pop {r4,pc}
.endfunc // initStruct_8013438

.func
.thumb_func
sub_80134C8:
	push {r4,lr}
	add r4, r0, #0
	// memBlock
	add r0, r4, #0
	// size
	mov r1, #0x64 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov R0, #1
	mov r1, #0x20 
	strb R0, [R4,R1]
	mov R0, #1
	strb R0, [R4,#5]
	mov R0, #0xFF
	strb R0, [R4,#7]
	mov R0, #0
	strb R0, [R4,#0x18]
	mov R0, #0
	strb R0, [R4,#0x19]
	mov R0, #0
	strb R0, [R4,#8]
	mov R0, #4
	strb R0, [R4,#9]
	mov R0, #5
	strb R0, [R4,#0xA]
	mov R0, #5
	strb R0, [R4,#0xB]
	mov R0, #1
	strb R0, [R4,#0xC]
	mov R0, #0
	strb R0, [R4,#0xD]
	mov R0, #0
	mov r1, #0x26 
	strb R0, [R4,R1]
	mov R0, #0xFF
	strb R0, [R4,#0x12]
	mov R0, #0x1F
	mov r1, #0x27 
	strb R0, [R4,R1]
	mov R0, #0
	mov r1, #0x28 
	strb R0, [R4,R1]
	mov R0, #0x99
	mov R1, #0xE
	strb R0, [R4,R1]
	ldr R0, off_8013550 // =0x1F4 
	mov r1, #0x40 
	strh R0, [R4,R1]
	mov r1, #0x42 
	strh R0, [R4,R1]
	mov r1, #0x3e 
	strh R0, [R4,R1]
	mov R0, #2
	strb R0, [R4,#1]
	strb R0, [R4,#2]
	strb R0, [R4,#3]
	mov R0, #0
	mov r1, #0x2c 
	strb R0, [R4,R1]
	mov R0, #0xFF
	mov r1, #0x2e 
	strb R0, [R4,R1]
	mov r1, #0x2f 
	strb R0, [R4,R1]
	mov r1, #0x30 
	strb R0, [R4,R1]
	mov R0, #1
	mov r1, #0x21 
	strb R0, [R4,R1]
	pop {r4,pc}
off_8013550: .word 0x1F4
.endfunc // sub_80134C8

.func
.thumb_func
sub_8013554:
	push {r4,lr}
	add r4, r0, #0
	// memBlock
	add r0, r4, #0
	// size
	mov r1, #0x64 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov r0, #0x46 
	strb R0, [R4,#4]
	mov R0, #0xFF
	strb R0, [R4,#5]
	mov R0, #0xFF
	strb R0, [R4,#7]
	mov R0, #0
	strb R0, [R4,#0x18]
	mov R0, #0
	strb R0, [R4,#0x19]
	mov R0, #0
	strb R0, [R4,#8]
	mov R0, #4
	strb R0, [R4,#9]
	mov R0, #5
	strb R0, [R4,#0xA]
	mov R0, #5
	strb R0, [R4,#0xB]
	mov R0, #1
	strb R0, [R4,#0xC]
	mov R0, #0
	strb R0, [R4,#0xD]
	mov R0, #0
	mov r1, #0x26 
	strb R0, [R4,R1]
	mov R0, #0xFF
	strb R0, [R4,#0x12]
	mov R0, #0x1F
	mov r1, #0x27 
	strb R0, [R4,R1]
	mov R0, #0
	mov r1, #0x28 
	strb R0, [R4,R1]
	mov R0, #0x99
	mov R1, #0xE
	strb R0, [R4,R1]
	mov R0, #1
	mov r1, #0x42 
	bl sub_8013740
	mov r1, #0x40 
	strh R0, [R4,R1]
	mov r1, #0x42 
	strh R0, [R4,R1]
	mov r1, #0x3e 
	strh R0, [R4,R1]
	mov R0, #0
	mov r1, #0x2c 
	strb R0, [R4,R1]
	mov R0, #7
	mov r1, #0x29 
	strb R0, [R4,R1]
	mov R0, #0
	mov r1, #0x2d 
	strb R0, [R4,R1]
	mov R0, #0xFF
	mov r1, #0x2e 
loc_80135D2:
	strb R0, [R4,R1]
	add R1, #1
	cmp r1, #0x30 
	ble loc_80135D2
	mov R0, #0xFF
	mov r1, #0x56 
loc_80135DE:
	strb R0, [R4,R1]
	add R1, #1
	cmp r1, #0x5b 
	ble loc_80135DE
	pop {r4,pc}
.endfunc // sub_8013554

.func
.thumb_func
sub_80135E8:
	push {r4,lr}
	add r4, r0, #0
	// memBlock
	add r0, r4, #0
	// size
	mov r1, #0x64 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov r0, #0x4c 
	strb R0, [R4,#4]
	mov r0, #0x4b 
	mov r1, #0x44 
	strb R0, [R4,R1]
	mov R0, #0xFF
	strb R0, [R4,#5]
	mov R0, #0xFF
	strb R0, [R4,#7]
	mov R0, #0
	strb R0, [R4,#0x18]
	mov R0, #0
	strb R0, [R4,#0x19]
	mov R0, #0
	strb R0, [R4,#8]
	mov R0, #4
	strb R0, [R4,#9]
	mov R0, #5
	strb R0, [R4,#0xA]
	mov R0, #5
	strb R0, [R4,#0xB]
	mov R0, #1
	strb R0, [R4,#0xC]
	mov R0, #0
	strb R0, [R4,#0xD]
	mov R0, #0
	mov r1, #0x26 
	strb R0, [R4,R1]
	mov R0, #0xFF
	strb R0, [R4,#0x12]
	mov R0, #0x1F
	mov r1, #0x27 
	strb R0, [R4,R1]
	mov R0, #0
	mov r1, #0x28 
	strb R0, [R4,R1]
	mov R0, #0x99
	mov R1, #0xE
	strb R0, [R4,R1]
	mov R0, #1
	mov r1, #0x42 
	bl sub_8013740
	mov r1, #0x40 
	strh R0, [R4,R1]
	mov r1, #0x42 
	strh R0, [R4,R1]
	mov r1, #0x3e 
	strh R0, [R4,R1]
	mov R0, #0
	mov r1, #0x2c 
	strb R0, [R4,R1]
	mov R0, #0xA
	mov r1, #0x29 
	strb R0, [R4,R1]
	mov R0, #0
	mov r1, #0x2d 
	strb R0, [R4,R1]
	mov R0, #0xFF
	mov r1, #0x2e 
loc_801366C:
	strb R0, [R4,R1]
	add R1, #1
	cmp r1, #0x30 
	ble loc_801366C
	mov R0, #0xFF
	mov r1, #0x56 
loc_8013678:
	strb R0, [R4,R1]
	add R1, #1
	cmp r1, #0x5b 
	ble loc_8013678
	pop {r4,pc}
.endfunc // sub_80135E8

.func
.thumb_func
// (int idx) -> void*
sub_8013682:
	mov r1, #0x64 
	mul R0, R1
	ldr R1, off_801368C // =byte_203CE00 
	add r0, r0, r1
	mov PC, LR
off_801368C: .word byte_203CE00
.endfunc // sub_8013682

.func
.thumb_func
sub_8013690:
	mov r1, #0x64 
	mul R0, R1
	ldr R1, off_801369C // =byte_203CB10 
	add r0, r0, r1
	mov PC, LR
	.balign 4, 0x00
off_801369C: .word byte_203CB10
.endfunc // sub_8013690

.func
.thumb_func
sub_80136A0:
	mov r1, #0x64 
	mul R0, R1
	ldr R1, off_80136AC // =unk_2034A60 
	add r0, r0, r1
	mov PC, LR
	.balign 4, 0x00
off_80136AC: .word unk_2034A60
.endfunc // sub_80136A0

.func
.thumb_func
sub_80136B0:
	push {r6,r7,lr}
	add r6, r1, #0
	add r7, r2, #0
	bl sub_8013682 // (int idx) -> void*
	strb R7, [R0,R6]
	pop {r6,r7,pc}
.endfunc // sub_80136B0

	push {r6,r7,lr}
	add r6, r1, #0
	add r7, r2, #0
	bl sub_8013682 // (int idx) -> void*
	strh R7, [R0,R6]
	pop {r6,r7,pc}
.func
.thumb_func
sub_80136CC:
	push {r6,lr}
	add r6, r1, #0
	bl sub_8013682 // (int idx) -> void*
	ldrb R0, [R0,R6]
	pop {r6,pc}
.endfunc // sub_80136CC

.func
.thumb_func
sub_80136D8:
	push {r6,lr}
	add r6, r1, #0
	bl sub_8013682 // (int idx) -> void*
	ldrsb R0, [R0,R6]
	pop {r6,pc}
.endfunc // sub_80136D8

.func
.thumb_func
sub_80136E4:
	push {r6,lr}
	add r6, r1, #0
	bl sub_8013682 // (int idx) -> void*
	ldrh R0, [R0,R6]
	pop {r6,pc}
.endfunc // sub_80136E4

.func
.thumb_func
sub_80136F0:
	cmp R0, #0
	beq loc_80136F6
	mov R0, #1
loc_80136F6:
	mov r3, #0x64 
	mul R0, R3
	mov R3, R10
	ldr R3, [R3,#0x74]
	add r3, r3, r0
	strb R2, [R3,R1]
	mov PC, LR
.endfunc // sub_80136F0

.func
.thumb_func
sub_8013704:
	cmp R0, #0
	beq loc_801370A
	mov R0, #1
loc_801370A:
	mov r3, #0x64 
	mul R0, R3
	mov R3, R10
	ldr R3, [R3,#0x74]
	add r3, r3, r0
	ldrb R0, [R3,R1]
	mov PC, LR
.endfunc // sub_8013704

	cmp R0, #0
	beq loc_801371E
	mov R0, #1
loc_801371E:
	mov r3, #0x64 
	mul R0, R3
	mov R3, R10
	ldr R3, [R3,#0x74]
	add r3, r3, r0
	ldrb R0, [R3,R1]
	mov PC, LR
	cmp R0, #0
	beq loc_8013732
	mov R0, #1
loc_8013732:
	mov r3, #0x64 
	mul R0, R3
	mov R3, R10
	ldr R3, [R3,#0x74]
	add r3, r3, r0
	strh R2, [R3,R1]
	mov PC, LR
.func
.thumb_func
sub_8013740:
	cmp R0, #0
	beq loc_8013746
	mov R0, #1
loc_8013746:
	mov r3, #0x64 
	mul R0, R3
	mov R3, R10
	ldr R3, [R3,#0x74]
	add r3, r3, r0
	ldrh R0, [R3,R1]
	mov PC, LR
.endfunc // sub_8013740

.func
.thumb_func
sub_8013754:
	push {r6,r7,lr}
	ldrb R0, [R5,#0x16]
	add r6, r1, #0
	add r7, r2, #0
	bl sub_8013682 // (int idx) -> void*
	strb R7, [R0,R6]
	pop {r6,r7,pc}
.endfunc // sub_8013754

.func
.thumb_func
sub_8013764:
	push {r6,r7,lr}
	ldrb R0, [R5,#0x16]
	add r6, r1, #0
	add r7, r2, #0
	bl sub_8013682 // (int idx) -> void*
	strh R7, [R0,R6]
	pop {r6,r7,pc}
.endfunc // sub_8013764

.func
.thumb_func
sub_8013774:
	push {r6,lr}
	ldrb R0, [R5,#0x16]
	add r6, r1, #0
	bl sub_8013682 // (int idx) -> void*
	ldrb R0, [R0,R6]
	pop {r6,pc}
.endfunc // sub_8013774

	push {r6,lr}
	ldrb R0, [R5,#0x16]
	add r6, r1, #0
	bl sub_8013682 // (int idx) -> void*
	ldrb R0, [R0,R6]
	pop {r6,pc}
.func
.thumb_func
sub_8013790:
	push {r6,lr}
	ldrb R0, [R5,#0x16]
	add r6, r1, #0
	bl sub_8013682 // (int idx) -> void*
	ldrh R0, [R0,R6]
	pop {r6,pc}
.endfunc // sub_8013790

.func
.thumb_func
// (int a1, int a2, int a3) -> void
navicust_801379E:
	push {lr}
	push {r1,r2}
	bl navicust_8014018 // (int idx_8014034) -> bool
	pop {r1,r2}
	mov r3, #0x64 
	mul R0, R3
	mov R3, R10
	ldr R3, [R3,#0x74] // Toolkit.unk_20047CC
	add r3, r3, r0
	strb R2, [R3,R1]
	pop {pc}
.endfunc // navicust_801379E

.func
.thumb_func
// (int a1, int a2) -> u8
sub_80137B6:
	push {lr}
	push {r1}
	bl navicust_8014018 // (int idx_8014034) -> bool
	pop {r1}
	mov R3, #100
	mul R0, R3
	mov R3, R10
	ldr R3, [R3,#0x74] // Toolkit.unk_20047CC
	add r3, r3, r0
	ldrb R0, [R3,R1]
	pop {pc}
.endfunc // sub_80137B6

.func
.thumb_func
sub_80137CE:
	push {lr}
	push {r1}
	bl navicust_8014018 // (int idx_8014034) -> bool
	pop {r1}
	mov r3, #0x64 
	mul R0, R3
	mov R3, R10
	ldr R3, [R3,#0x74]
	add r3, r3, r0
	ldrsb R0, [R3,R1]
	pop {pc}
.endfunc // sub_80137CE

.func
.thumb_func
sub_80137E6:
	push {lr}
	push {r1,r2}
	bl navicust_8014018 // (int idx_8014034) -> bool
	pop {r1,r2}
	mov r3, #0x64 
	mul R0, R3
	mov R3, R10
	ldr R3, [R3,#0x74]
	add r3, r3, r0
	strh R2, [R3,R1]
	pop {pc}
.endfunc // sub_80137E6

.func
.thumb_func
sub_80137FE:
	push {lr}
	push {r1}
	bl navicust_8014018 // (int idx_8014034) -> bool
	pop {r1}
	mov r3, #0x64 
	mul R0, R3
	mov R3, R10
	ldr R3, [R3,#0x74]
	add r3, r3, r0
	ldrh R0, [R3,R1]
	pop {pc}
.endfunc // sub_80137FE

.func
.thumb_func
sub_8013816:
	push {r4,lr}
	add r4, r1, #0
	bl sub_8013690
	ldrb R0, [R0,R4]
	pop {r4,pc}
.endfunc // sub_8013816

	push {r4,lr}
	add r4, r1, #0
	bl sub_8013690
	ldrh R0, [R0,R4]
	pop {r4,pc}
.func
.thumb_func
sub_801382E:
	push {r6,lr}
	add r6, r1, #0
	bl sub_80136A0
	ldrb R0, [R0,R6]
	pop {r6,pc}
.endfunc // sub_801382E

	push {r6,lr}
	add r6, r1, #0
	bl sub_80136A0
	ldrh R0, [R0,R6]
	pop {r6,pc}
.func
.thumb_func
sub_8013846:
	push {r4,lr}
	mov R0, #0
	bl sub_8013854
	bl initStruct_8013438 // (void *struc) -> void
	pop {r4,pc}
.endfunc // sub_8013846

.func
.thumb_func
sub_8013854:
	mov r1, #0x64 
	mul R0, R1
	ldr R1, off_8013860 // =byte_203CCE0 
	add r0, r0, r1
	mov PC, LR
	.byte 0, 0
off_8013860: .word byte_203CCE0
.endfunc // sub_8013854

.func
.thumb_func
sub_8013864:
	push {r6,r7,lr}
	mov R0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_8013854
	strb R7, [R0,R6]
	pop {r6,r7,pc}
.endfunc // sub_8013864

.func
.thumb_func
sub_8013874:
	push {r6,r7,lr}
	mov R0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_8013854
	strh R7, [R0,R6]
	pop {r6,r7,pc}
.endfunc // sub_8013874

.func
.thumb_func
sub_8013884:
	push {r6,lr}
	mov R0, #0
	add r6, r1, #0
	bl sub_8013854
	ldrb R0, [R0,R6]
	pop {r6,pc}
.endfunc // sub_8013884

.func
.thumb_func
sub_8013892:
	push {r6,r7,lr}
	ldrb R0, [R5,#0x16]
	bl sub_8013682 // (int idx) -> void*
	add r6, r0, #0
	ldr R7, [R5,#0x58]
	mov R0, #0xA
	strh R0, [R5,#0x2E]
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_80138BC
	ldr R1, dword_8013908 // =0x10000 
	tst R0, R1
	bne loc_80138BC
	mov R1, #0xE
	bl sub_8013774
	cmp R0, #0xFF
	beq loc_80138D2
loc_80138BC:
	mov R1, #0xF
	bl sub_8013774
	add r1, r0, #0
	mov R1, #0
	bl sub_8015C2C
	mov R1, #0xE
	add r2, r0, #0
	bl sub_8013754
loc_80138D2:
	mov R1, #6
	bl sub_8013774
	cmp R0, #0
	beq loc_80138F2
	push {r0}
	bl sub_801A7CC
	pop {r4}
	push {r7}
	ldr R0, [R5,#0x58]
	mov r7, #0x60 
	add r7, r7, r0
	bl sub_80E0D98
	pop {r7}
loc_80138F2:
	mov r1, #0x21 
	bl sub_8013774
	cmp R0, #0
	bne loc_8013900
	bl sub_801443C
loc_8013900:
	b loc_8013918
	.balign 4, 0x00
	.word 0x20000
dword_8013908: .word 0x10000
.endfunc // sub_8013892

.func
.thumb_func
sub_801390C:
	push {r6,r7,lr}
	ldrb R0, [R5,#0x16]
	bl sub_8013682 // (int idx) -> void*
	add r6, r0, #0
	ldr R7, [R5,#0x58]
loc_8013918:
	ldrb R0, [R6,#5]
	strb R0, [R7,#7]
	ldrb R0, [R6,#7]
	strb R0, [R7,#8]
	ldr R0, off_8013CA8 // =start_+1 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_800EB08
	ldr R0, [R7,#0x50]
	tst R0, R0
	beq loc_8013938
	bl sub_80E5410
	mov R0, #0
	str R0, [R7,#0x50]
loc_8013938:
	b loc_8013956
.endfunc // sub_801390C

.func
.thumb_func
sub_801393A:
	push {r6,r7,lr}
	ldrb R0, [R5,#0x16]
	bl sub_8013682 // (int idx) -> void*
	add r6, r0, #0
	ldr R7, [R5,#0x58]
	mov r1, #0x2c 
	ldrb R0, [R6,R1]
	cmp R0, #0
	bne loc_8013956
	ldrb R0, [R6,#5]
	strb R0, [R7,#7]
	ldrb R0, [R6,#7]
	strb R0, [R7,#8]
loc_8013956:
	mov r0, #0x20 
	ldrb R1, [R6,#0x1B]
	tst R1, R1
	beq loc_8013970
	bl object_setFlag // (int a1) -> void
	bl sub_80107C0
	mov R1, #0x10
	mov R2, #2
	bl sub_801A082
	b loc_8013980
loc_8013970:
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80107C0
	mov R1, #1
	mov R2, #2
	bl sub_801A082
loc_8013980:
	mov R0, #0x10
	ldrb R1, [R6,#0x1C]
	tst R1, R1
	beq loc_801398E
	bl object_setFlag // (int a1) -> void
	b loc_8013992
loc_801398E:
	bl object_clearFlag // (int bitfield) -> void
loc_8013992:
	ldr R0, off_8013CAC // =timer_2000000 
	bl object_setFlag // (int a1) -> void
	mov R0, #1
	lsl r0, r0, #0x12
	ldrb R1, [R6,#0x1D]
	tst R1, R1
	beq loc_80139A8
	bl object_setFlag // (int a1) -> void
	b loc_80139AC
loc_80139A8:
	bl object_clearFlag // (int bitfield) -> void
loc_80139AC:
	mov R0, #1
	lsl r0, r0, #0x11
	mov r2, #0x23 
	ldrb R1, [R6,R2]
	tst R1, R1
	beq loc_80139BE
	bl object_setFlag // (int a1) -> void
	b locret_80139C2
loc_80139BE:
	bl object_clearFlag // (int bitfield) -> void
locret_80139C2:
	pop {r6,r7,pc}
.endfunc // sub_801393A

.func
.thumb_func
sub_80139C4:
	push {r7,lr}
	ldr R7, [R5,#0x58]
	ldrh R0, [R5,#0x24]
	tst R0, R0
	beq locret_80139F4
	ldrb R0, [R7]
	cmp R0, #2
	bne locret_80139F4
	ldrb R0, [R7,#1]
	cmp R0, #0xB
	bgt locret_80139F4
	ldrb R0, [R5,#0x16]
	bl sub_8015B54
	cmp R0, #2
	bne locret_80139F4
	add r7, #0x5c 
	ldr R0, [R7]
	tst R0, R0
	bne locret_80139F4
	mov R1, #4
	mov R3, #0x10
	bl sub_80C4C12
locret_80139F4:
	pop {r7,pc}
.endfunc // sub_80139C4

.func
.thumb_func
sub_80139F6:
	push {r4,lr}
	sub sp, sp, #8
	ldr R4, [R5,#0x54]
	mov R1, #0xA4
	ldrb R1, [R4,R1]
	str R1, [SP]
	tst R1, R1
	bne loc_8013A08
	b loc_8013ADC
loc_8013A08:
	mov R2, #0xA5
	ldrb R2, [R4,R2]
	str R2, [SP,#4]
	cmp R1, #0x18
	beq loc_8013A16
	cmp R1, #0x19
	bne loc_8013A26
loc_8013A16:
	bl sub_8013774
	ldr R2, [SP,#4]
	add r2, r2, r0
	cmp R2, #7
	ble loc_8013ACA
	mov R2, #7
	b loc_8013ACA
loc_8013A26:
	cmp r1, #0x54 
	bne loc_8013A34
	bl sub_8013790
	ldr R2, [SP,#4]
	add r2, r2, r0
	b loc_8013ACA
loc_8013A34:
	cmp R1, #0xFF
	bne loc_8013A48
	mov R1, #0x14
	str R1, [SP]
	bl sub_8013774
	add r2, r0, #4
	ble loc_8013A46
	mov R2, #4
loc_8013A46:
	b loc_8013ACA
loc_8013A48:
	cmp R1, #0xFE
	bne loc_8013A5E
	mov R1, #0x12
	mov R2, #4
	bl sub_8013754
	mov R1, #0x13
	mov R2, #4
	bl sub_8013754
	b loc_8013ADC
loc_8013A5E:
	cmp R1, #0xFB
	bne loc_8013A68
	bl sub_8014080
	b loc_8013ADC
loc_8013A68:
	cmp R1, #0xFA
	bne loc_8013A7E
	mov R1, #0x12
	mov R2, #4
	bl sub_8013754
	mov R1, #0x13
	mov R2, #2
	bl sub_8013754
	b loc_8013ADC
loc_8013A7E:
	cmp R1, #0xF9
	bne loc_8013A94
	mov R1, #0x12
	mov R2, #4
	bl sub_8013754
	mov R1, #0x13
	mov R2, #1
	bl sub_8013754
	b loc_8013ADC
loc_8013A94:
	cmp R1, #0xF8
	bne loc_8013AB4
	bl sub_80140EE
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	ldr R0, dword_8013CB0 // =0x100000 
	add r3, r3, r0
	mov R4, #0xE
	bl sub_80E08C4
	mov R0, #0x8E
	bl sound_play // () -> void
	b loc_8013ADC
loc_8013AB4:
	cmp R1, #0xF5
	bne loc_8013ACA
	mov R1, #0x12
	mov R2, #3
	bl sub_8013754
	mov R1, #0x13
	mov R2, #1
	bl sub_8013754
	b loc_8013ADC
loc_8013ACA:
	ldr R1, [SP]
	cmp r1, #0x64 
	bge loc_8013ADC
	bl sub_8013754
	bl sub_801393A
	bl sub_801469C
loc_8013ADC:
	bl sub_800FF5E
	add sp, sp, #8
	pop {r4,pc}
.endfunc // sub_80139F6

.func
.thumb_func
sub_8013AE4:
	push {lr}
	sub sp, sp, #8
	ldr R3, [R5,#0x54]
	mov R1, #0xA4
	ldrb R1, [R3,R1]
	str R1, [SP]
	tst R1, R1
	beq loc_8013B1C
	mov R2, #0xA5
	ldrb R2, [R3,R2]
	str R2, [SP,#4]
	cmp R1, #0x18
	beq loc_8013B02
	cmp R1, #0x19
	bne loc_8013B1C
loc_8013B02:
	bl sub_8013774
	ldr R2, [SP,#4]
	add r2, r2, r0
	cmp R2, #7
	ble loc_8013B12
	mov R2, #7
	b loc_8013B12
loc_8013B12:
	ldr R1, [SP]
	cmp r1, #0x64 
	bge loc_8013B1C
	bl sub_8013754
loc_8013B1C:
	add sp, sp, #8
	pop {pc}
.endfunc // sub_8013AE4

.func
.thumb_func
sub_8013B20:
	push {r4,lr}
	sub sp, sp, #8
	ldr R3, [R5,#0x54]
	ldr R4, [R5,#0x58]
	mov R1, #0xA4
	ldrb R1, [R3,R1]
	str R1, [SP]
	tst R1, R1
	beq loc_8013B4A
	mov R2, #0xA5
	ldrb R2, [R3,R2]
	str R2, [SP,#4]
	cmp R1, #0x18
	bne loc_8013B4A
	ldrb R0, [R4,#0x12]
	ldr R2, [SP,#4]
	add r2, r2, r0
	cmp R2, #7
	ble loc_8013B48
	mov R2, #7
loc_8013B48:
	strb R2, [R4,#0x12]
loc_8013B4A:
	add sp, sp, #8
	pop {r4,pc}
.endfunc // sub_8013B20

.func
.thumb_func
// (bool a1, int a2) -> void
init_8013B4E:
	push {r4,r6,r7,lr}
	cmp R0, #0
	beq loc_8013B56
	mov R0, #1
loc_8013B56:
	add r4, r1, #0
	mov R7, R10
	ldr R7, [R7,#0x74] // Toolkit.unk_20047CC
	mov r2, #0x64 
	mul R0, R2
	add r7, r7, r0
	b loc_8013B6E
.endfunc // init_8013B4E

.func
.thumb_func
// (int idx, int a2) -> void
init_8013B64:
	push {r4,r6,r7,lr}
	add r4, r1, #0
	bl sub_8013682 // (int idx) -> void*
	add r7, r0, #0
loc_8013B6E:
	add r0, r7, #0
	bl initStruct_8013438 // (void *struc) -> void
	mov R0, #0x10
	mul R0, R4
	ldr R6, off_8013CB4 // =byte_80210DD 
	add r6, r6, r0
	mov r1, #0x29 
	strb R4, [R7,R1]
	ldrb R0, [R6]
	add r0, r0, r0
	mov r1, #0x40 
	strh R0, [R7,R1]
	mov r1, #0x42 
	strh R0, [R7,R1]
	mov r1, #0x3e 
	strh R0, [R7,R1]
	ldrb R0, [R6,#1]
	mov r1, #0x23 
	strb R0, [R7,R1]
	ldrb R0, [R6,#2]
	strb R0, [R7,#0x1B]
	ldrb R0, [R6,#3]
	strb R0, [R7,#0x1C]
	ldrb R0, [R6,#4]
	mov R1, #0x1D
	strb R0, [R7,R1]
	ldrb R0, [R6,#5]
	strb R0, [R7,#6]
	ldrb R0, [R6,#6]
	strb R0, [R7,#0xB]
	ldrb R0, [R6,#7]
	strb R0, [R7,#0xC]
	ldrb R0, [R6,#8]
	strb R0, [R7,#4]
	ldrb R0, [R6,#9]
	strb R0, [R7,#5]
	ldrb R0, [R6,#0xA]
	strb R0, [R7,#7]
	ldrb R0, [R6,#0xB]
	mov r1, #0x46 
	strh R0, [R7,R1]
	ldrb R0, [R6,#0xC]
	mov r1, #0x4a 
	strh R0, [R7,R1]
	ldrb R0, [R6,#0xD]
	mov r1, #0x48 
	strh R0, [R7,R1]
	ldrb R0, [R6,#0xE]
	strb R0, [R7]
	ldrb R0, [R6,#0xF]
	mov r1, #0x39 
	strb R0, [R7,R1]
	pop {r4,r6,r7,pc}
.endfunc // init_8013B64

.func
.thumb_func
sub_8013BDA:
	push {r4,r6,r7,lr}
	add r7, r0, #0
	add r4, r1, #0
	add r0, r7, #0
	bl initStruct_8013438 // (void *struc) -> void
	mov R0, #0x10
	mul R0, R4
	ldr R6, off_8013CB8 // =byte_80210DD 
	add r6, r6, r0
	mov r1, #0x29 
	strb R4, [R7,R1]
	add r0, r4, r4
	ldr R1, off_8013CBC // =dword_802F0A8 
	ldrh R0, [R0,R1]
	mov r1, #0x40 
	strh R0, [R7,R1]
	mov r1, #0x42 
	strh R0, [R7,R1]
	mov r1, #0x3e 
	strh R0, [R7,R1]
	ldrb R0, [R6,#1]
	mov r1, #0x23 
	strb R0, [R7,R1]
	ldrb R0, [R6,#2]
	strb R0, [R7,#0x1B]
	ldrb R0, [R6,#3]
	strb R0, [R7,#0x1C]
	ldrb R0, [R6,#4]
	mov R1, #0x1D
	strb R0, [R7,R1]
	ldrb R0, [R6,#5]
	strb R0, [R7,#6]
	ldrb R0, [R6,#6]
	strb R0, [R7,#0xB]
	ldrb R0, [R6,#7]
	strb R0, [R7,#0xC]
	ldrb R0, [R6,#8]
	strb R0, [R7,#4]
	ldrb R0, [R6,#9]
	strb R0, [R7,#5]
	ldrb R0, [R6,#0xA]
	strb R0, [R7,#7]
	ldrb R0, [R6,#0xB]
	mov r1, #0x46 
	strh R0, [R7,R1]
	ldrb R0, [R6,#0xC]
	mov r1, #0x4a 
	strh R0, [R7,R1]
	ldrb R0, [R6,#0xD]
	mov r1, #0x48 
	strh R0, [R7,R1]
	ldrb R0, [R6,#0xE]
	strb R0, [R7]
	ldrb R0, [R6,#0xF]
	mov r1, #0x39 
	strb R0, [R7,R1]
	pop {r4,r6,r7,pc}
.endfunc // sub_8013BDA

.func
.thumb_func
sub_8013C4E:
	push {r4,r6,lr}
	ldr R0, dword_8013CC0 // =0x20000 
	bl object_clearFlag // (int bitfield) -> void
	mov r1, #0x29 
	bl sub_8013774
	add r6, r0, #0
	lsl r6, r6, #2
	ldr R1, off_8013C6C // =off_8013C70 
	ldr R1, [R6,R1]
	mov LR, PC
	bx r1
	pop {r4,r6,pc}
	.balign 4, 0x00
off_8013C6C: .word off_8013C70
off_8013C70: .word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
.endfunc // sub_8013C4E

.func
.thumb_func
nullsub_28:
	mov PC, LR
	.balign 4, 0x00
off_8013CA8: .word start_+1
off_8013CAC: .word timer_2000000
dword_8013CB0: .word 0x100000
off_8013CB4: .word byte_80210DD
off_8013CB8: .word byte_80210DD
off_8013CBC: .word dword_802F0A8
dword_8013CC0: .word 0x20000
.endfunc // nullsub_28

.func
.thumb_func
sub_8013CC4:
	push {R4-R7,lr}
	add r6, r0, #0
	add r7, r1, #0
	ldr R0, [R5,#0x58]
	ldrb R1, [R0]
	cmp R1, #2
	bne locret_8013D3C
	mov R1, #0x13
	bl sub_8013774
	add r4, r0, #0
	beq locret_8013D3C
	bl sub_8001532
	mov R1, #7
	and R0, R1
	sub R4, #1
	cmp R0, R4
	bgt locret_8013D3C
	mov R1, #0x12
	bl sub_8013774
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_800C90A
	ldrb R5, [R0,#2]
	cmp R5, #1
	beq locret_8013D3C
	cmp R5, #0
	beq locret_8013D3C
	cmp R4, #1
	bne loc_8013D12
	add r0, r6, #0
	add r1, r7, #0
	bl object_breakPanel_dup2
	b locret_8013D3C
loc_8013D12:
	cmp R4, #3
	bne loc_8013D20
	add r0, r6, #0
	add r1, r7, #0
	bl object_crackPanelDup1
	b locret_8013D3C
loc_8013D20:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl object_setPanelType
	cmp R4, R5
	beq locret_8013D3C
	add r1, r4, r4
	ldr R0, off_8013D40 // =byte_8013D44 
	ldrh R0, [R0,R1]
	tst R0, R0
	beq locret_8013D3C
	bl sound_play // () -> void
locret_8013D3C:
	pop {R4-R7,pc}
	.byte 0, 0
off_8013D40: .word byte_8013D44
byte_8013D44: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x90, 0x0, 0xA4, 0x0, 0x1B, 0x1
	.byte 0x18, 0x1, 0x1C, 0x1, 0xFC, 0x0, 0xFC, 0x0, 0xFC, 0x0, 0xFC, 0x0
.endfunc // sub_8013CC4

.func
.thumb_func
sub_8013D5E:
	push {R4-R7,lr}
	sub sp, sp, #0x10
	mov R4, #0
	add r7, sp, #0
	str R4, [SP]
	str R4, [SP,#4]
	str R4, [SP,#8]
	str R4, [SP,#0xC]
	mov R1, #0x14
	bl sub_8013774
	mov R1, #1
loc_8013D76:
	sub R0, #1
	blt loc_8013D80
	strb R1, [R7,R4]
	add R4, #1
	b loc_8013D76
loc_8013D80:
	mov R1, #0x15
	bl sub_8013774
	mov R1, #2
loc_8013D88:
	sub R0, #1
	blt loc_8013D92
	strb R1, [R7,R4]
	add R4, #1
	b loc_8013D88
loc_8013D92:
	bl change_20013F0_800151C // () -> int
	mov R1, #0xF
	and R0, R1
	ldrb R0, [R7,R0]
	add sp, sp, #0x10
	pop {R4-R7,pc}
.endfunc // sub_8013D5E

.func
.thumb_func
sub_8013DA0:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	bl battle_isPaused
	bne loc_8013E38
	mov r1, #0x24 
	bl sub_8013774
	tst R0, R0
	beq loc_8013E38
	mov r1, #0x21 
	bl sub_8013774
	tst R0, R0
	beq loc_8013E38
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0
	beq loc_8013DD2
	bl sub_80143A6
	bl sub_8014446
	b loc_8013E38
loc_8013DD2:
	ldr R4, [R5,#0x58]
	ldrh R0, [R4,#0x3A]
	add R0, #1
	strh R0, [R4,#0x3A]
	cmp r0, #0x3c 
	blt loc_8013E38
	mov R0, #0
	strh R0, [R4,#0x3A]
	bl sub_80143A6
	bl sub_8014446
	ldrb R6, [R4,#0xB]
	ldr R0, off_8013E3C // =dword_8013E44 
	mov R2, #0
	mov R7, #0
loc_8013DF2:
	ldrb R1, [R0,R2]
	cmp R1, R6
	bne loc_8013E00
	mov R1, #1
	cmp R6, #0
	beq loc_8013E00
	mov R1, #0
loc_8013E00:
	add r3, sp, #0
	strb R1, [R3,R7]
	add R7, #1
	add R2, #1
	cmp R2, #0x10
	blt loc_8013DF2
	bl sub_8001532
	add r1, r7, #0
	svc 6
	add r0, sp, #0
	ldrb R0, [R0,R1]
	strb R0, [R4,#0xB]
	cmp R0, #2
	beq loc_8013E2E
	cmp R0, #1
	beq loc_8013E34
	ldr R1, off_8013E40 // =byte_8013E54 
	ldrb R1, [R1,R0]
	ldrb R0, [R5,#0x16]
	bl sub_8015BEC
	b loc_8013E38
loc_8013E2E:
	bl sub_80143CE
	b loc_8013E38
loc_8013E34:
	bl sub_801443C
loc_8013E38:
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
off_8013E3C: .word dword_8013E44
off_8013E40: .word byte_8013E54
dword_8013E44: .word 0x0
	.word 0x1010000, 0x1010101, 0x3020101
byte_8013E54: .byte 0x99, 0x3C, 0x0, 0xFF
.endfunc // sub_8013DA0

.func
.thumb_func
sub_8013E58:
	push {r4,lr}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_8013E6C
	bl sub_802D234
	cmp R0, #1
	beq loc_8013E6C
loc_8013E6C:
	mov R1, #0x1A
	bl sub_8013774
	mov R4, #0
	cmp R0, #9
	beq loc_8013E7E
	mov R4, #4
	cmp R0, #0xA
	bne loc_8013E8A
loc_8013E7E:
	bl change_20013F0_800151C // () -> int
	mov R1, #3
	and R0, R1
	add r0, r0, r4
	add R0, #1
loc_8013E8A:
	lsl r0, r0, #2
	ldr R1, off_8013E98 // =off_8013E9C 
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {r4,pc}
	.balign 4, 0x00
off_8013E98: .word off_8013E9C
off_8013E9C: .word locret_8013EC0+1
	.word sub_8013EC2+1
	.word sub_8013ECC+1
	.word sub_8013ED6+1
	.word sub_8013EE6+1
	.word sub_8013EF0+1
	.word sub_8013EFA+1
	.word sub_8013F04+1
	.word sub_8013F14+1
.endfunc // sub_8013E58

locret_8013EC0:
	mov PC, LR
.func
.thumb_func
sub_8013EC2:
	push {r4,lr}
	ldr R4, off_80141BC // =0x12C 
	bl sub_8010474
	pop {r4,pc}
.endfunc // sub_8013EC2

.func
.thumb_func
sub_8013ECC:
	push {lr}
	ldr R0, off_80141BC // =0x12C 
	bl object_setInvulnerableTime
	pop {pc}
.endfunc // sub_8013ECC

.func
.thumb_func
sub_8013ED6:
	push {lr}
	ldr R0, off_80141BC // =0x12C 
	ldr R1, [R5,#0x54]
	strh R0, [R1,#0x20]
	mov r0, #0x20 
	bl sub_801A16C
	pop {pc}
.endfunc // sub_8013ED6

.func
.thumb_func
sub_8013EE6:
	push {lr}
	ldr R0, off_80141BC // =0x12C 
	ldr R1, [R5,#0x54]
	strh R0, [R1,#0x1E]
	pop {pc}
.endfunc // sub_8013EE6

.func
.thumb_func
sub_8013EF0:
	push {r4,lr}
	ldr R4, off_80141C0 // =0x258 
	bl sub_8010474
	pop {r4,pc}
.endfunc // sub_8013EF0

.func
.thumb_func
sub_8013EFA:
	push {lr}
	ldr R0, off_80141C0 // =0x258 
	bl object_setInvulnerableTime
	pop {pc}
.endfunc // sub_8013EFA

.func
.thumb_func
sub_8013F04:
	push {lr}
	ldr R0, off_80141C0 // =0x258 
	ldr R1, [R5,#0x54]
	strh R0, [R1,#0x20]
	mov r0, #0x20 
	bl sub_801A16C
	pop {pc}
.endfunc // sub_8013F04

.func
.thumb_func
sub_8013F14:
	push {lr}
	ldr R0, off_80141C0 // =0x258 
	ldr R1, [R5,#0x54]
	strh R0, [R1,#0x1E]
	pop {pc}
.endfunc // sub_8013F14

loc_8013F1E:
	push {lr}
	bl sub_801A180
	ldr R1, off_80141C4 // =0x104 
	tst R0, R1
	beq locret_8013F68
	ldr R1, [R5,#0x54]
	ldr R0, [R1,#0x70]
	cmp R0, #0
	beq locret_8013F68
	add R1, #0x82
	ldr R0, [R1]
	ldr R2, [R1,#4]
	add r0, r0, r2
	ldr R2, [R1,#8]
	add r0, r0, r2
	cmp R0, #0
	beq locret_8013F68
	ldr R0, [R5,#0x58]
	ldrb R1, [R5,#0x18]
	cmp R1, #0
	bne loc_8013F4E
	strb R1, [R0,#0x1C]
	b loc_8013F58
loc_8013F4E:
	ldrb R1, [R0,#0x1C]
	cmp R1, #0
	bne locret_8013F68
	mov R1, #1
	strb R1, [R0,#0x1C]
loc_8013F58:
	mov R1, #0x16
	bl sub_8013774
	lsl r0, r0, #2
	ldr R1, off_8013F6C // =off_8013F70 
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
locret_8013F68:
	pop {pc}
	.balign 4, 0x00
off_8013F6C: .word off_8013F70
off_8013F70: .word locret_8013F80+1
	.word sub_8013F82+1
	.word sub_8013F8C+1
	.word sub_8013F96+1
locret_8013F80:
	mov PC, LR
.func
.thumb_func
sub_8013F82:
	push {lr}
	mov r0, #0x32 
	bl sub_801A25E
	pop {pc}
.endfunc // sub_8013F82

.func
.thumb_func
sub_8013F8C:
	push {lr}
	mov r0, #0x22 
	bl sub_801A25E
	pop {pc}
.endfunc // sub_8013F8C

.func
.thumb_func
sub_8013F96:
	push {lr}
	mov R1, #0x18
	bl sub_8013774
	add R0, #1
	cmp R0, #7
	bgt locret_8013FAC
	add r2, r0, #0
	mov R1, #0x18
	bl sub_8013754
locret_8013FAC:
	pop {pc}
.endfunc // sub_8013F96

.func
.thumb_func
sub_8013FAE:
	push {r4,lr}
	mov R1, #0x11
	bl sub_8013774
	add r4, r0, #0
	beq locret_8013FCE
	bl change_20013F0_800151C // () -> int
	mov R1, #7
	and R0, R1
	sub r1, r4, #1
	cmp R0, R1
	bgt loc_8013FCC
	mov R0, #1
	pop {r4,pc}
loc_8013FCC:
	mov R0, #0
locret_8013FCE:
	pop {r4,pc}
.endfunc // sub_8013FAE

.func
.thumb_func
sub_8013FD0:
	push {r5,lr}
	bl sub_80103BC
	add r5, r0, #0
	beq locret_8013FF6
	mov r1, #0x54 
	bl sub_8013790
	tst R0, R0
	beq locret_8013FF6
	ldrh R1, [R5,#0x24]
	cmp R1, R0
	bgt loc_8013FEC
	sub r0, r1, #1
loc_8013FEC:
	bl object_subtractHP
	mov r0, #0x6b 
	bl sound_play // () -> void
locret_8013FF6:
	pop {r5,pc}
.endfunc // sub_8013FD0

.func
.thumb_func
sub_8013FF8:
	push {lr}
	mov r1, #0x3d 
	bl sub_8013774
	tst R0, R0
	beq locret_8014016
	sub r2, r0, #1
	ldrh R1, [R5,#0x24]
	cmp R1, #1
	beq locret_8014016
	cmp R1, R2
	bgt loc_8014012
	sub r0, r1, #1
loc_8014012:
	bl object_subtractHP
locret_8014016:
	pop {pc}
.endfunc // sub_8013FF8

.func
.thumb_func
// (int idx_8014034) -> bool
navicust_8014018:
	ldr R1, off_8014030 // =byte_8014034 
	ldrb R0, [R1,R0]
	mov PC, LR
.endfunc // navicust_8014018

.func
.thumb_func
sub_801401E:
	push {lr}
	bl navicust_8014018 // (int idx_8014034) -> bool
	mov r1, #0x64 
	mul R0, R1
	mov R1, R10
	ldr R1, [R1,#0x74]
	add r0, r0, r1
	pop {pc}
off_8014030: .word byte_8014034
byte_8014034: .byte 0x0, 0x1, 0x1, 0x1, 0x1
	.byte 0x1, 0x1, 0x1, 0x1, 0x1
	.byte 0x1, 0x1
.endfunc // sub_801401E

.func
.thumb_func
sub_8014040:
	push {r4,r5,lr}
	bl sub_80103BC
	add r5, r0, #0
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne locret_801407E
	mov r1, #0x36 
	bl sub_8013774
	cmp R0, #1
	bne locret_801407E
	mov r1, #0x3e 
	bl sub_8013790
	add R0, #9
	mov R1, #0xA
	svc 6
	bl object_addHP
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov R4, #6
	bl sub_80E05F6
	mov R0, #0x8A
	bl sound_play // () -> void
locret_801407E:
	pop {r4,r5,pc}
.endfunc // sub_8014040

.func
.thumb_func
sub_8014080:
	push {lr}
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0
	bne locret_80140EC
	mov R0, #1
	lsl r0, r0, #0x11
	bl object_clearFlag // (int bitfield) -> void
	mov r1, #0x23 
	mov R2, #0
	bl sub_8013754
	mov r0, #0x20 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80107C0
	mov R1, #1
	mov R2, #2
	bl sub_801A082
	mov R1, #0x1B
	mov R2, #0
	bl sub_8013754
	mov R0, #1
	lsl r0, r0, #0x12
	bl object_clearFlag // (int bitfield) -> void
	mov R1, #0x1D
	mov R2, #0
	bl sub_8013754
	mov R0, #0x10
	bl object_clearFlag // (int bitfield) -> void
	mov R1, #0x1C
	mov R2, #0
	bl sub_8013754
	mov R1, #7
	mov R2, #0xFF
	bl sub_8013754
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0
	bne locret_80140EC
	ldr R0, [R5,#0x58]
	mov R1, #0xFF
	strb R1, [R0,#8]
locret_80140EC:
	pop {pc}
.endfunc // sub_8014080

.func
.thumb_func
sub_80140EE:
	push {lr}
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0
	bne locret_801414E
	mov R0, #1
	lsl r0, r0, #0x11
	bl object_clearFlag // (int bitfield) -> void
	mov r1, #0x23 
	mov R2, #0
	bl sub_8013754
	mov r0, #0x20 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80107C0
	mov R1, #1
	mov R2, #2
	bl sub_801A082
	mov R1, #0x1B
	mov R2, #0
	bl sub_8013754
	mov R0, #0x10
	bl object_clearFlag // (int bitfield) -> void
	mov R1, #0x1C
	mov R2, #0
	bl sub_8013754
	mov R1, #7
	mov R2, #0xFF
	bl sub_8013754
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0
	bne loc_801414A
	ldr R0, [R5,#0x58]
	mov R1, #0xFF
	strb R1, [R0,#8]
loc_801414A:
	bl sub_801469C
locret_801414E:
	pop {pc}
.endfunc // sub_80140EE

.func
.thumb_func
sub_8014150:
	push {r4,lr}
	mov R4, #2
	bl getPETNaviSelect // () -> u8
	mov r1, #0x38 
	bl sub_80137B6 // (int a1, int a2) -> u8
	tst R0, R0
	bne loc_8014174
	mov R4, #1
	bl getPETNaviSelect // () -> u8
	mov r1, #0x37 
	bl sub_80137B6 // (int a1, int a2) -> u8
	tst R0, R0
	bne loc_8014174
	mov R4, #0
loc_8014174:
	add r0, r4, #0
	pop {r4,pc}
.endfunc // sub_8014150

.func
.thumb_func
sub_8014178:
	push {r4,lr}
	mov R0, #0
	mov R1, #8
	bl sub_80136CC
	add r4, r0, #0
	mov R0, #1
	mov R1, #8
	bl sub_80136CC
	mov R1, #3
	mul R0, R1
	add r0, r0, r4
	ldr R4, off_801419C // =byte_80141A0 
	ldrb R0, [R4,R0]
	bl sub_801DF8C
	pop {r4,pc}
off_801419C: .word byte_80141A0
byte_80141A0: .byte 0x20, 0x40, 0x10, 0x40, 0x40, 0x20, 0x10, 0x20, 0x10
	.byte 0x0, 0x0, 0x0
.endfunc // sub_8014178

.func
.thumb_func
sub_80141AC:
	push {lr}
	bl getPETNaviSelect // () -> u8
	mov r1, #0x21 
	mov R2, #3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
off_80141BC: .word 0x12C
off_80141C0: .word 0x258
off_80141C4: .word 0x104
.endfunc // sub_80141AC

.func
.thumb_func
sub_80141C8:
	push {lr}
	mov r1, #0x42 
	bl sub_8013790
	strh R0, [R5,#0x24]
	strh R0, [R5,#0x26]
	bl get_802D246 // () -> int
	mov R1, #4
	tst R0, R1
	bne loc_80141E6
	mov r1, #0x40 
	bl sub_8013790
	strh R0, [R5,#0x24]
loc_80141E6:
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	bne locret_80141F2
	bl sub_801E0BC
locret_80141F2:
	pop {pc}
.endfunc // sub_80141C8

.func
.thumb_func
sub_80141F4:
	push {lr}
	bl sub_802D26A
	cmp r0, #0x38 
	beq locret_8014214
	cmp r0, #0x30 
	beq locret_8014214
	cmp r0, #0x3c 
	beq locret_8014214
	bl sub_802D234
	cmp R0, #9
	beq locret_8014214
	ldr R0, dword_80142D8 // =0x400 
	bl sub_8010312
locret_8014214:
	pop {pc}
.endfunc // sub_80141F4

loc_8014216:
	push {lr}
	mov r0, #0x20 
	bl sub_801031C
	ldrb R0, [R5,#0x16]
	bl sub_8010018
	add r0, #0x26 
	mov R1, #0xC
	bl sub_80008C0
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8014256
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	tst R0, R0
	bne loc_8014256
	push {r5}
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_80103BC
	add r5, r0, #0
	beq loc_8014254
	bl sub_801DC36
loc_8014254:
	pop {r5}
loc_8014256:
	mov r1, #0x29 
	bl sub_8013774
	lsl r0, r0, #2
	ldr R1, off_8014268 // =off_801426C 
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {pc}
off_8014268: .word off_801426C
off_801426C: .word sub_801429C+1
	.word locret_80142AE+1
	.word locret_80142AE+1
	.word locret_80142AE+1
	.word locret_80142AE+1
	.word locret_80142AE+1
	.word locret_80142AE+1
	.word locret_80142AE+1
	.word locret_80142AE+1
	.word locret_80142AE+1
	.word locret_80142AE+1
	.word locret_80142AE+1
.func
.thumb_func
sub_801429C:
	push {lr}
	bl loc_80144CA
	pop {pc}
.endfunc // sub_801429C

	push {lr}
	mov r0, #0x20 
	bl sub_8010312
	pop {pc}
locret_80142AE:
	mov PC, LR
.func
.thumb_func
sub_80142B0:
	push {lr}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq locret_80142C0
	mov R0, #0xA
	strh R0, [R5,#0x2C]
locret_80142C0:
	pop {pc}
.endfunc // sub_80142B0

.func
.thumb_func
sub_80142C2:
	push {lr}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq locret_80142D4
	mov R0, #0xA
	ldr R1, [R5,#0x54]
	strh R0, [R1,#0x2E]
locret_80142D4:
	pop {pc}
	.balign 4, 0x00
dword_80142D8: .word 0x400
.endfunc // sub_80142C2

.func
.thumb_func
sub_80142DC:
	push {r4,lr}
	bl sub_802D234
	cmp R0, #1
	beq locret_8014324
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0
	bne locret_8014324
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0
	bne locret_8014324
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x15
	tst R0, R1
	bne locret_8014324
	bl sub_801442C
	cmp r0, #0x78 
	bge loc_801431C
	ldr R0, [R5,#0x54]
	add R0, #0x80
	ldrh R0, [R0]
	lsr r0, r0, #1
	cmp R0, #0x96
	bge loc_801431C
	b locret_8014324
loc_801431C:
	mov R0, #1
	lsl r0, r0, #9
	bl sub_801A16C
locret_8014324:
	pop {r4,pc}
.endfunc // sub_80142DC

.func
.thumb_func
sub_8014326:
	push {r4,lr}
	ldrh R0, [R5,#0x28]
	bl sub_800F29C
	cmp R0, #2
	bne locret_80143A4
	ldr R4, [R5,#0x58]
	ldrb R0, [R4,#1]
	ldrb R0, [R5,#0x16]
	bl sub_8015B54
	cmp R0, #5
	beq loc_8014394
	cmp R0, #1
	beq loc_8014394
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x15
	tst R0, R1
	bne loc_801437A
	bl sub_801A180
	mov R1, #1
	lsl r1, r1, #9
	tst R0, R1
	beq locret_80143A4
	add r0, r1, #0
	bl sub_801A176
	mov R0, #1
	lsl r0, r0, #0x15
	bl object_setFlag // (int a1) -> void
	mov R0, #0x96
	lsl r0, r0, #2
	strh R0, [R4,#0x34]
	ldrb R0, [R5,#0x16]
	mov R1, #0x80
	bl sub_8015BEC
	b locret_80143A4
loc_801437A:
	mov R0, #1
	lsl r0, r0, #9
	bl sub_801A176
	ldrh R0, [R4,#0x34]
	tst R0, R0
	beq loc_801438E
	sub R0, #1
	strh R0, [R4,#0x34]
	bgt locret_80143A4
loc_801438E:
	bl sub_80143A6
	b locret_80143A4
loc_8014394:
	mov R0, #1
	lsl r0, r0, #9
	bl sub_801A176
	mov R0, #1
	lsl r0, r0, #0x15
	bl object_clearFlag // (int bitfield) -> void
locret_80143A4:
	pop {r4,pc}
.endfunc // sub_8014326

.func
.thumb_func
sub_80143A6:
	push {lr}
	ldrb R0, [R5,#0x16]
	bl sub_8013682 // (int idx) -> void*
	mov R1, #0x80
	strb R1, [R0,#0xE]
	b loc_80143B6
loc_80143B4:
	push {lr}
loc_80143B6:
	mov R0, #1
	lsl r0, r0, #0x15
	bl object_clearFlag // (int bitfield) -> void
	ldr R0, off_80144B4 // =0x200 
	bl sub_801A176
	ldr R1, [R5,#0x58]
	mov R0, #0
	strh R0, [R1,#0x34]
	str R0, [R1,#0x4C]
	pop {pc}
.endfunc // sub_80143A6

.func
.thumb_func
sub_80143CE:
	push {lr}
	bl sub_801445C
	bne locret_80143E2
	bl sub_8014490
	bne locret_80143E2
	ldr R0, off_80144B4 // =0x200 
	bl sub_801A16C
locret_80143E2:
	pop {pc}
.endfunc // sub_80143CE

.func
.thumb_func
sub_80143E4:
	push {lr}
	ldr R0, [R5,#0x58]
	ldrh R0, [R0,#0x34]
	tst R0, R0
	beq locret_80143F4
	ldr R0, dword_80143F8 // =0xF 
	bl sub_8002ED0
locret_80143F4:
	pop {pc}
	.balign 4, 0x00
dword_80143F8: .word 0xF
.endfunc // sub_80143E4

.func
.thumb_func
sub_80143FC:
	push {lr}
	bl battle_isTimeStop
	bne locret_801441E
	bl battle_isPaused
	bne locret_801441E
	bl object_getFlag // () -> int
	ldr R1, off_8014420 // =0xC00 
	tst R0, R1
	beq loc_801441A
	bl sub_8014432
	b locret_801441E
loc_801441A:
	bl sub_8014424
locret_801441E:
	pop {pc}
off_8014420: .word 0xC00
.endfunc // sub_80143FC

.func
.thumb_func
sub_8014424:
	ldr R0, [R5,#0x58]
	mov R1, #0
	str R1, [R0,#0x4C]
	mov PC, LR
.endfunc // sub_8014424

.func
.thumb_func
sub_801442C:
	ldr R0, [R5,#0x58]
	ldr R0, [R0,#0x4C]
	mov PC, LR
.endfunc // sub_801442C

.func
.thumb_func
sub_8014432:
	ldr R0, [R5,#0x58]
	ldr R1, [R0,#0x4C]
	add R1, #1
	str R1, [R0,#0x4C]
	mov PC, LR
.endfunc // sub_8014432

.func
.thumb_func
sub_801443C:
	push {lr}
	ldr R3, [R5,#0x58]
	ldr R0, dword_80144B8 // =0xFFFF 
	strh R0, [R3,#0x32]
	pop {pc}
.endfunc // sub_801443C

.func
.thumb_func
sub_8014446:
	ldr R3, [R5,#0x58]
	mov R0, #0
	strh R0, [R3,#0x32]
	mov PC, LR
.endfunc // sub_8014446

	push {lr}
	bl sub_80103BC
	ldr R3, [R0,#0x58]
	mov R0, #0
	strh R0, [R3,#0x32]
	pop {pc}
.func
.thumb_func
sub_801445C:
	ldr R0, [R5,#0x58]
	ldrh R0, [R0,#0x32]
	cmp R0, #0
	mov PC, LR
.endfunc // sub_801445C

.func
.thumb_func
nullsub_6:
	mov PC, LR
.endfunc // nullsub_6

.func
.thumb_func
sub_8014466:
	push {lr}
	ldr R3, [R5,#0x58]
	ldr R0, off_80144BC // =0x3C0 
	strh R0, [R3,#0x36]
	ldrb R0, [R5,#0x16]
	mov R1, #0
	bl sub_8015BEC
	pop {pc}
.endfunc // sub_8014466

	push {lr}
	ldr R3, [R5,#0x58]
	mov R0, #0
	strh R0, [R3,#0x36]
	pop {pc}
	push {lr}
	bl sub_80103BC
	ldr R3, [R0,#0x58]
	mov R0, #0
	strh R0, [R3,#0x36]
	pop {pc}
.func
.thumb_func
sub_8014490:
	ldr R0, [R5,#0x58]
	ldrh R0, [R0,#0x36]
	cmp R0, #0
	mov PC, LR
.endfunc // sub_8014490

.func
.thumb_func
sub_8014498:
	push {lr}
	bl battle_isBattleOver
	tst R0, R0
	bne locret_80144B2
	ldr R3, [R5,#0x58]
	ldrh R0, [R3,#0x36]
	cmp R0, #0
	beq locret_80144B2
	ldrh R1, [R5,#0x24]
	sub R1, #1
	beq locret_80144B2
	strh R1, [R5,#0x24]
locret_80144B2:
	pop {pc}
off_80144B4: .word 0x200
dword_80144B8: .word 0xFFFF
off_80144BC: .word 0x3C0
.endfunc // sub_8014498

.func
.thumb_func
sub_80144C0:
	push {r4,r7,lr}
	mov R7, #0
	bl sub_801390C
	b loc_80144CE
loc_80144CA:
	push {r4,r7,lr}
	mov R7, #1
loc_80144CE:
	ldrb R0, [R5,#0x16]
	bl sub_8010018
	add r0, #0x26 
	mov R1, #0xC
	bl sub_80008C0
	mov r0, #0x20 
	bl sub_801031C
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_801450C
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	tst R0, R0
	bne loc_801450C
	push {r5}
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_80103BC
	add r5, r0, #0
	beq loc_801450A
	bl sub_801DC36
loc_801450A:
	pop {r5}
loc_801450C:
	bl sub_80107C0
	add r0, r3, #0
	bl sub_8019F86
	mov R0, #1
	bl sub_801A07C
	bl sub_8012EA8
	tst R7, R7
	bne loc_8014528
	bl sub_800FEEC
loc_8014528:
	bl loc_8014536
	bl sub_801086C
	bl sub_80142C2
	pop {r4,r7,pc}
.endfunc // sub_80144C0

loc_8014536:
	push {r6,lr}
	ldr R6, [R5,#0x58]
	mov r1, #0x2c 
	bl sub_8013774
	lsl r0, r0, #2
	ldr R1, off_801454C // =off_8014550 
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {r6,pc}
off_801454C: .word off_8014550
off_8014550: .word locret_80145B4+1
	.word locret_80145B8+1
	.word locret_80145B6+1
	.word locret_80145BA+1
	.word locret_80145BC+1
	.word locret_80145BE+1
	.word locret_80145C0+1
	.word sub_80145C2+1
	.word sub_80145D4+1
	.word sub_80145DE+1
	.word nullsub_4+1
	.word sub_80145EC+1
	.word sub_8014606+1
	.word sub_8014650+1
	.word sub_8014650+1
	.word sub_8014650+1
	.word sub_8014650+1
	.word sub_8014650+1
	.word sub_8014606+1
	.word sub_801462A+1
	.word sub_8014606+1
	.word sub_8014640+1
	.word sub_8014606+1
	.word sub_8014650+1
	.word sub_8014674+1
locret_80145B4:
	mov PC, LR
locret_80145B6:
	mov PC, LR
locret_80145B8:
	mov PC, LR
locret_80145BA:
	mov PC, LR
locret_80145BC:
	mov PC, LR
locret_80145BE:
	mov PC, LR
locret_80145C0:
	mov PC, LR
.func
.thumb_func
sub_80145C2:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#7]
	cmp R0, #1
	beq locret_80145D2
	bl sub_801A264
locret_80145D2:
	pop {pc}
.endfunc // sub_80145C2

.func
.thumb_func
sub_80145D4:
	push {lr}
	mov R0, #0x10
	bl object_setFlag // (int a1) -> void
	pop {pc}
.endfunc // sub_80145D4

.func
.thumb_func
sub_80145DE:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0x11
	bl object_setFlag // (int a1) -> void
	pop {pc}
.endfunc // sub_80145DE

.func
.thumb_func
nullsub_4:
	mov PC, LR
.endfunc // nullsub_4

.func
.thumb_func
sub_80145EC:
	push {r7,lr}
	mov R0, #1
	lsl r0, r0, #0x11
	bl object_setFlag // (int a1) -> void
	mov r7, #0x40 
	add r7, r7, r6
	ldr R0, [R7]
	cmp R0, #0
	bne locret_8014604
	bl sub_80E1620
locret_8014604:
	pop {r7,pc}
.endfunc // sub_80145EC

.func
.thumb_func
sub_8014606:
	push {r7,lr}
	mov r0, #0x30 
	bl object_setFlag // (int a1) -> void
	bl sub_80107C0
	mov R1, #0x10
	mov R2, #2
	bl sub_801A082
	mov r7, #0x40 
	add r7, r7, r6
	ldr R0, [R7]
	cmp R0, #0
	bne locret_8014628
	bl sub_80E1620
locret_8014628:
	pop {r7,pc}
.endfunc // sub_8014606

.func
.thumb_func
sub_801462A:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#7]
	cmp R0, #1
	beq loc_801463A
	bl sub_801A264
loc_801463A:
	bl sub_8014606
	pop {pc}
.endfunc // sub_801462A

.func
.thumb_func
sub_8014640:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0x11
	bl object_setFlag // (int a1) -> void
	bl sub_8014606
	pop {pc}
.endfunc // sub_8014640

.func
.thumb_func
sub_8014650:
	push {r7,lr}
	mov R0, #1
	lsl r0, r0, #0x11
	bl object_setFlag // (int a1) -> void
	mov r7, #0x40 
	add r7, r7, r6
	ldr R0, [R7]
	cmp R0, #0
	bne loc_8014668
	bl sub_80E1620
loc_8014668:
	ldr R0, dword_80147D8 // =0xFFFF 
	bl object_setInvulnerableTime
	bl sub_802D310
	pop {r7,pc}
.endfunc // sub_8014650

.func
.thumb_func
sub_8014674:
	push {r7,lr}
	ldr R0, dword_80147DC // = 
	bl object_setFlag // (int a1) -> void
	bl sub_80107C0
	mov R1, #0x10
	mov R2, #2
	bl sub_801A082
	mov r7, #0x40 
	add r7, r7, r6
	ldr R0, [R7]
	cmp R0, #0
	bne loc_8014696
	bl sub_80E1620
loc_8014696:
	bl sub_802D310
	pop {r7,pc}
.endfunc // sub_8014674

.func
.thumb_func
sub_801469C:
	push {r6,lr}
	ldr R6, [R5,#0x54]
	mov r1, #0x2c 
	bl sub_8013774
	lsl r0, r0, #2
	ldr R1, off_80146B4 // =off_80146B8 
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {r6,pc}
	.balign 4, 0x00
off_80146B4: .word off_80146B8
off_80146B8: .word byte_801471D
	.word byte_801471F
	.word byte_8014721
	.word byte_8014723
	.word byte_8014725
	.word byte_8014727
	.word byte_8014729
	.word sub_801472A+1
	.word sub_801473C+1
	.word sub_8014746+1
	.word nullsub_5+1
	.word sub_8014754+1
	.word sub_8014760+1
	.word sub_8014754+1
	.word sub_8014754+1
	.word sub_8014754+1
	.word sub_8014754+1
	.word sub_8014754+1
	.word sub_8014760+1
	.word sub_8014776+1
	.word sub_8014760+1
	.word sub_801478C+1
	.word sub_8014760+1
	.word sub_801479C+1
	.word sub_80147B2+1
byte_801471C: .byte 0xF7
byte_801471D: .byte 0x46, 0xF7
byte_801471F: .byte 0x46, 0xF7
byte_8014721: .byte 0x46, 0xF7
byte_8014723: .byte 0x46, 0xF7
byte_8014725: .byte 0x46, 0xF7
byte_8014727: .byte 0x46, 0xF7
byte_8014729: .byte 0x46
.endfunc // sub_801469C

.func
.thumb_func
sub_801472A:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#7]
	cmp R0, #1
	beq locret_801473A
	bl sub_801A264
locret_801473A:
	pop {pc}
.endfunc // sub_801472A

.func
.thumb_func
sub_801473C:
	push {lr}
	mov R0, #0x10
	bl object_setFlag // (int a1) -> void
	pop {pc}
.endfunc // sub_801473C

.func
.thumb_func
sub_8014746:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0x11
	bl object_setFlag // (int a1) -> void
	pop {pc}
.endfunc // sub_8014746

.func
.thumb_func
nullsub_5:
	mov PC, LR
.endfunc // nullsub_5

.func
.thumb_func
sub_8014754:
	push {r7,lr}
	mov R0, #1
	lsl r0, r0, #0x11
	bl object_setFlag // (int a1) -> void
	pop {r7,pc}
.endfunc // sub_8014754

.func
.thumb_func
sub_8014760:
	push {lr}
	mov r0, #0x30 
	bl object_setFlag // (int a1) -> void
	bl sub_80107C0
	mov R1, #0x10
	mov R2, #2
	bl sub_801A082
	pop {pc}
.endfunc // sub_8014760

.func
.thumb_func
sub_8014776:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#7]
	cmp R0, #1
	beq loc_8014786
	bl sub_801A264
loc_8014786:
	bl sub_8014760
	pop {pc}
.endfunc // sub_8014776

.func
.thumb_func
sub_801478C:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0x11
	bl object_setFlag // (int a1) -> void
	bl sub_8014760
	pop {pc}
.endfunc // sub_801478C

.func
.thumb_func
sub_801479C:
	push {r7,lr}
	mov R0, #1
	lsl r0, r0, #0x11
	bl object_setFlag // (int a1) -> void
	ldr R0, dword_80147D8 // =0xFFFF 
	bl object_setInvulnerableTime
	bl sub_802D310
	pop {r7,pc}
.endfunc // sub_801479C

.func
.thumb_func
sub_80147B2:
	push {lr}
	mov r0, #0x30 
	bl object_setFlag // (int a1) -> void
	bl sub_80107C0
	mov R1, #0x10
	mov R2, #2
	bl sub_801A082
	ldr R0, dword_80147E0 // =start_ 
	bl object_setFlag // (int a1) -> void
	ldr R0, dword_80147D8 // =0xFFFF 
	bl object_setInvulnerableTime
	bl sub_802D310
	pop {pc}
dword_80147D8: .word 0xFFFF
dword_80147DC: .word 0x8000030
dword_80147E0: .word 0x8000000
.endfunc // sub_80147B2

.func
.thumb_func
sub_80147E4:
	push {R5-R7,lr}
	ldr R5, off_8014820 // =dword_20367F0 
	add r6, r0, #0
	add r7, r1, #0
	mov R1, #8
	add r1, r1, r5
	mov R2, #0x10
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	add r0, r6, #0
	ldr R1, off_8014824 // =unk_203A980 
	mov R2, #0x10
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	add r0, r7, #0
	mov R1, #0x18
	add r1, r1, r5
	mov R2, #0x10
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	add r0, r7, #0
	ldr R1, off_8014828 // =unk_203A990 
	mov R2, #0x10
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	mov R0, #0
	str R0, [R5]
	mov R0, #1
	strb R0, [R5,#0x4] // (byte_20367F4 - 0x20367F0)
	pop {R5-R7,pc}
off_8014820: .word dword_20367F0
off_8014824: .word unk_203A980
off_8014828: .word unk_203A990
.endfunc // sub_80147E4

.func
.thumb_func
sub_801482C:
	ldr R1, off_8014838 // =dword_20367F0 
	mov R0, #0
	str R0, [R1]
	mov R0, #1
	strb R0, [R1,#0x4] // (byte_20367F4 - 0x20367F0)
	mov PC, LR
off_8014838: .word dword_20367F0
.endfunc // sub_801482C

loc_801483C:
	push {R5-R7,lr}
	ldr R5, off_801485C // =dword_20367F0 
	mov R6, #8
	add r6, r6, r5
	mov R7, #0x18
	add r7, r7, r5
	ldr R1, off_8014858 // =off_8014860 
	ldrb R0, [R5]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	ldrb R0, [R5,#0x4] // (byte_20367F4 - 0x20367F0)
	pop {R5-R7,pc}
	.balign 4, 0x00
off_8014858: .word off_8014860
off_801485C: .word dword_20367F0
off_8014860: .word sub_801486C+1
	.word sub_80148CC+1
	.word sub_8014A00+1
.func
.thumb_func
sub_801486C:
	push {r4,lr}
	mov R4, #0
	ldrb R0, [R6,#4]
	cmp R0, #0xFF
	beq loc_801487E
	ldr R0, [R6,#8]
	bl sub_802DCDE
	b loc_8014888
loc_801487E:
	ldrb R0, [R6]
	cmp R0, #0xFF
	beq loc_8014888
	mov R4, #1
	b loc_8014898
loc_8014888:
	ldr R0, [R6,#8]
	bl sub_80159C6
	beq loc_8014898
	ldr R0, [R6,#8]
	bl sub_8015994
	b loc_8014898
loc_8014898:
	ldrb R0, [R7,#4]
	cmp R0, #0xFF
	beq loc_80148A6
	ldr R0, [R7,#8]
	bl sub_802DCDE
	b loc_80148B0
loc_80148A6:
	ldrb R0, [R7]
	cmp R0, #0xFF
	beq loc_80148B0
	mov R4, #1
	b loc_80148C0
loc_80148B0:
	ldr R0, [R7,#8]
	bl sub_80159C6
	beq loc_80148C0
	ldr R0, [R7,#8]
	bl sub_8015994
	b loc_80148C0
loc_80148C0:
	mov R0, #8
	tst R4, R4
	beq loc_80148C8
	mov R0, #4
loc_80148C8:
	str R0, [R5]
	pop {r4,pc}
.endfunc // sub_801486C

.func
.thumb_func
sub_80148CC:
	push {lr}
	ldr R1, off_80148DC // =off_80148E0 
	ldrb R0, [R5,#1]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_80148DC: .word off_80148E0
off_80148E0: .word sub_80148EC+1
	.word sub_8014944+1
	.word sub_801498E+1
.endfunc // sub_80148CC

.func
.thumb_func
sub_80148EC:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8014912
	bl sub_802D234
	cmp R0, #1
	bne loc_8014900
	mov r0, #0x70 
	b loc_8014902
loc_8014900:
	mov r0, #0x44 
loc_8014902:
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	ldr R0, dword_8014940 // =0x4000 
	bl sub_801DACC
	mov R0, #4
	strb R0, [R5,#3]
loc_8014912:
	bl engine_isScreeneffectAnimating // () -> zf
	tst R0, R0
	bne locret_801493E
	bl sub_802D234
	cmp R0, #1
	bne loc_8014926
	mov R0, #0xA0
	b loc_8014932
loc_8014926:
	bl sub_802E09A
	bne loc_8014930
	mov R0, #0x90
	b loc_8014932
loc_8014930:
	ldr R0, dword_80149EC // =0x20080 
loc_8014932:
	bl sub_801DACC
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_801493E:
	pop {pc}
dword_8014940: .word 0x4000
.endfunc // sub_80148EC

.func
.thumb_func
sub_8014944:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_801496A
	ldrb R0, [R6]
	cmp R0, #0xFF
	beq loc_8014958
	ldr R0, [R6,#8]
	bl sub_801596E
loc_8014958:
	ldrb R0, [R7]
	cmp R0, #0xFF
	beq loc_8014964
	ldr R0, [R7,#8]
	bl sub_801596E
loc_8014964:
	mov R0, #4
	strb R0, [R5,#3]
	b locret_801498C
loc_801496A:
	ldr R0, [R6,#8]
	bl sub_801597C
	tst R0, R0
	bne locret_801498C
	ldr R0, [R7,#8]
	bl sub_801597C
	tst R0, R0
	bne locret_801498C
	mov R0, #0xFF
	strb R0, [R6]
	strb R0, [R7]
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_801498C:
	pop {pc}
.endfunc // sub_8014944

.func
.thumb_func
sub_801498E:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80149AE
	bl sub_802D234
	cmp R0, #1
	bne loc_80149A2
	mov r0, #0x6c 
	b loc_80149A4
loc_80149A2:
	mov r0, #0x40 
loc_80149A4:
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #4
	strb R0, [R5,#3]
loc_80149AE:
	bl engine_isScreeneffectAnimating // () -> zf
	tst R0, R0
	bne locret_80149EA
	bl sub_800A97A
	push {r0}
	bl sub_802D234
	cmp R0, #1
	pop {r0}
	bne loc_80149CA
	ldr R1, dword_80149F0 // =0x40A0 
	b loc_80149DA
loc_80149CA:
	push {r0}
	bl sub_802E09A
	pop {r0}
	bne loc_80149D8
	ldr R1, dword_80149F4 // =0x4090 
	b loc_80149DA
loc_80149D8:
	ldr R1, dword_80149F8 // =0x24080 
loc_80149DA:
	tst R0, R0
	beq loc_80149E0
	ldr R1, dword_80149FC // =0x4080 
loc_80149E0:
	add r0, r1, #0
	bl sub_801DA48
	mov R0, #8
	str R0, [R5]
locret_80149EA:
	pop {pc}
dword_80149EC: .word 0x20080
dword_80149F0: .word 0x40A0
dword_80149F4: .word 0x4090
dword_80149F8: .word 0x24080
dword_80149FC: .word 0x4080
.endfunc // sub_801498E

.func
.thumb_func
sub_8014A00:
	push {lr}
	ldr R0, [R6,#8]
	bl sub_80159A2
	tst R0, R0
	bne locret_8014A36
	ldr R0, [R7,#8]
	bl sub_80159A2
	tst R0, R0
	bne locret_8014A36
	ldr R0, [R6,#8]
	bl sub_802DCEC
	tst R0, R0
	bne locret_8014A36
	mov R0, #0xFF
	strb R0, [R6,#4]
	ldr R0, [R7,#8]
	bl sub_802DCEC
	tst R0, R0
	bne locret_8014A36
	mov R0, #0xFF
	strb R0, [R7,#4]
	mov R0, #0
	strb R0, [R5,#4]
locret_8014A36:
	pop {pc}
.endfunc // sub_8014A00

loc_8014A38:
	push {lr}
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	cmp R0, #1
	blt loc_8014AA8
	cmp R0, #0x18
	bgt loc_8014AA8
	cmp R0, #0x17
	blt loc_8014A58
	ldr R1, off_8014AEC // =off_8014AF0 
	ldrb R0, [R7]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	b loc_8014A98
loc_8014A58:
	cmp R0, #0xD
	blt loc_8014A72
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0xA
	bgt loc_8014A8E
	ldr R1, off_8014AD8 // =off_8014ADC 
	ldrb R0, [R7]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	b loc_8014A98
loc_8014A72:
	cmp R0, #0xB
	blt loc_8014A82
	ldr R1, off_8014AC4 // =off_8014AC8 
	ldrb R0, [R7]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	b loc_8014A98
loc_8014A82:
	ldr R1, off_8014AB0 // =off_8014AB4 
	ldrb R0, [R7]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	b loc_8014A98
loc_8014A8E:
	ldr R1, off_8014B00 // =off_8014B04 
	ldrb R0, [R7]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
loc_8014A98:
	bl sub_801032C
	ldr R1, dword_8014B14 // =0x80000 
	tst R0, R1
	bne locret_8014AA6
	bl sub_801BCD0
locret_8014AA6:
	pop {pc}
loc_8014AA8:
	mov R0, #0x80
	bl sub_801031C
	pop {pc}
off_8014AB0: .word off_8014AB4
off_8014AB4: .word sub_8014B18+1
	.word sub_8014B98+1
	.word sub_8014BEE+1
	.word sub_8014CC0+1
off_8014AC4: .word off_8014AC8
off_8014AC8: .word sub_8014D08+1
	.word sub_8014D70+1
	.word sub_8014E08+1
	.word sub_8014F04+1
off_8014AD8: .word off_8014ADC
off_8014ADC: .word sub_8014F40+1
	.word sub_8014FA8+1
	.word sub_8015040+1
	.word sub_8015128+1
off_8014AEC: .word off_8014AF0
off_8014AF0: .word sub_801516C+1
	.word sub_80151D4+1
	.word sub_80152C8+1
	.word sub_80153B0+1
off_8014B00: .word off_8014B04
off_8014B04: .word sub_80153EC+1
	.word sub_801544C+1
	.word sub_80154C8+1
	.word sub_80155CC+1
dword_8014B14: .word 0x80000
.func
.thumb_func
sub_8014B18:
	push {r4,lr}
	ldr R0, dword_8014B94 // =0x80000 
	bl sub_8010312
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
.endfunc // sub_8014B18

	bl sub_800E29C // () -> void
	bl sub_801A04C
	bl sub_800EB08
	bl sub_800F46C
	strb R0, [R5,#0x17]
	bl sub_800F2C6
	bl sub_8012EA8
	ldr R0, [R5,#0x58]
	ldr R0, [R0,#0x5C]
	bl sub_80C4C3A
	bl sub_80158FA
	mov R0, #6
	strh R0, [R7,#0x10]
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #9
	bne loc_8014B8A
	ldrb R0, [R5,#0x10]
	cmp R0, #0x16
	bne loc_8014B8A
	mov R0, #0
	strb R0, [R5,#0x10]
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	ldr R0, dword_8014B94 // =0x80000 
	bl sub_801031C
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_8014B8A
	mov R1, #1
	strb R1, [R0,#6]
	ldrb R1, [R0]
	mov R2, #0x14
	orr R1, R2
	strb R1, [R0]
loc_8014B8A:
	mov R0, #4
	strh R0, [R7]
	pop {r4,pc}
	.word 0x80111C40
dword_8014B94: .word 0x80000
.func
.thumb_func
sub_8014B98:
	push {r4,r6,lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_8014BCA
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bmi loc_8014BAA
	b locret_8014BEC
loc_8014BAA:
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	add r4, r0, #0
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	mov R3, #0x14
	bl sub_80BC844
	mov r0, #0x28 
	add R0, #8
	strh R0, [R7,#0x10]
	mov R0, #0
	str R0, [R7,#0x30]
	mov R0, #4
	strb R0, [R7,#1]
loc_8014BCA:
	ldr R0, [R7,#0x30]
	add R0, #1
	cmp R0, #6
	bgt loc_8014BD8
	str R0, [R7,#0x30]
	bl sprite_forceWhitePallete
loc_8014BD8:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bge locret_8014BEC
	mov R0, #6
	strh R0, [R7,#0x10]
	mov R0, #8
	strh R0, [R7]
	mov R0, #0
	str R0, [R7,#0x30]
locret_8014BEC:
	pop {r4,r6,pc}
.endfunc // sub_8014B98

.func
.thumb_func
sub_8014BEE:
	push {r4,lr}
	bl sprite_forceWhitePallete
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_8014C9E
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	mov r1, #0x2c 
	bl sub_8013774
	bl loc_8011384
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	mov R0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sub_8002E3C
	mov R0, #0
	bl sub_800F2B6
	ldrb R0, [R5,#0x10]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	bl sprite_forceWhitePallete
	bl sub_800E29C // () -> void
	mov R0, #0xA
	strh R0, [R7,#0x10]
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	mov r1, #0x2c 
	add r2, r0, #0
	bl sub_8013754
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #1
	blt loc_8014C72
	cmp R0, #0x18
	bgt loc_8014C72
	bl sub_8015B22
loc_8014C72:
	mov r1, #0x2c 
	bl sub_8013774
	mov R2, #0
	push {r0}
	bl loc_8011268
	pop {r0}
	mov R0, #3
	bl sub_8018856
	neg R1, R1
	bl sub_801DC06
	mov R0, #0x8D
	bl sound_play // () -> void
	mov r0, #0x77 
	bl sound_play // () -> void
	mov R0, #4
	strb R0, [R7,#1]
loc_8014C9E:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bgt locret_8014CBE
	bl sub_80144C0
	bl sub_80143A6
	ldrb R0, [R5,#0x16]
	mov R1, #0x80
	bl sub_8015BEC
	bl sub_800EB08
	mov R0, #0xC
	strh R0, [R7]
locret_8014CBE:
	pop {r4,pc}
.endfunc // sub_8014BEE

.func
.thumb_func
sub_8014CC0:
	push {r4,lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_8014CD0
	mov R0, #0x14
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_8014CD0:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bge locret_8014CFE
	ldrb R0, [R5,#0x16]
	mov R1, #0xB
	mov R2, #1
	bl sub_800AB2E
	mov R0, #0x80
	bl sub_801031C
	mov r0, #0x20 
	bl battle_clearFlags
	ldr R0, dword_8014D00 // =0x80000 
	bl sub_801031C
	ldr R0, dword_8014D04 // =0x80008600 
	bl sub_800FFEE
	bl sub_8011714
locret_8014CFE:
	pop {r4,pc}
dword_8014D00: .word 0x80000
dword_8014D04: .word 0x80008600
.endfunc // sub_8014CC0

.func
.thumb_func
sub_8014D08:
	push {r4,lr}
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
	bl sub_800E29C // () -> void
	bl sub_801A04C
	bl sub_800EB08
	bl sub_800F46C
	strb R0, [R5,#0x17]
	bl sub_800F2C6
	bl sub_8012EA8
	ldr R0, [R5,#0x58]
	ldr R0, [R0,#0x5C]
	bl sub_80C4C3A
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	bl sub_80158FA
	mov R0, #0x11
	strb R0, [R5,#0x10]
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_8014D5A
	mov R1, #1
	strb R1, [R0,#6]
	ldrb R1, [R0]
	mov R2, #0x14
	orr R1, R2
	strb R1, [R0]
loc_8014D5A:
	mov R0, #6
	strh R0, [R7,#0x10]
	mov R0, #0xC
	mov R1, #5
	bl sprite_decompress
	mov R0, #4
	strh R0, [R7]
	pop {r4,pc}
	.word 0x80111C40
.endfunc // sub_8014D08

.func
.thumb_func
sub_8014D70:
	push {r4,r6,lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_8014DE6
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bmi loc_8014D82
	b locret_8014DF2
loc_8014D82:
	ldr R0, dword_8014E04 // =0x80000 
	bl sub_8010312
	mov R0, #0xF7
	bl sound_play // () -> void
	mov r4, #0x2e 
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #8
	orr R4, R0
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	bl sub_80E05F6
	cmp R0, #0
	beq loc_8014DDE
	mov r1, #0x36 
	strh R1, [R0,#0x20]
	ldrb R1, [R0]
	mov R2, #4
	orr R1, R2
	strb R1, [R0]
	ldr R0, [R5,#0x38]
	ldr R1, dword_8014DF8 // =0xC00000 
	add r0, r0, r1
	str R0, [R5,#0x38]
	ldrb R0, [R5,#0x16]
	mov R1, #2
	mov R2, #1
	bl sub_800AB2E
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	ldr R1, off_8014DFC // =0x1CC 
	cmp R0, #0xB
	beq loc_8014DD0
	ldr R1, off_8014E00 // =0x1CD 
loc_8014DD0:
	add r0, r1, #0
	bl sound_play // () -> void
	mov R0, #2
	mov r1, #0x3c 
	bl sub_80302B6
loc_8014DDE:
	mov r0, #0x36 
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_8014DE6:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bge locret_8014DF2
	mov R0, #8
	strh R0, [R7]
locret_8014DF2:
	pop {r4,r6,pc}
	.word 0x200000
dword_8014DF8: .word 0xC00000
off_8014DFC: .word 0x1CC
off_8014E00: .word 0x1CD
dword_8014E04: .word 0x80000
.endfunc // sub_8014D70

.func
.thumb_func
sub_8014E08:
	push {r4,lr}
	bl sprite_forceWhitePallete
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_8014EB8
	mov r1, #0x2c 
	bl sub_8013774
	bl loc_8011384
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	mov R0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sub_8002E3C
	mov R0, #0
	bl sub_800F2B6
	ldrb R0, [R5,#0x10]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	bl sub_800E29C // () -> void
	mov R0, #0xA
	strh R0, [R7,#0x10]
	bl sprite_forceWhitePallete
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	mov r1, #0x2c 
	add r2, r0, #0
	bl sub_8013754
	ldr R4, dword_8014F00 // =0x30E00 
	bl sub_80E11E0
	mov R0, #1
	add R0, #0xFF
	bl sound_play // () -> void
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #1
	blt loc_8014E92
	cmp R0, #0x18
	bgt loc_8014E92
	bl sub_8015B22
loc_8014E92:
	mov r1, #0x2c 
	bl sub_8013774
	mov R2, #0
	bl loc_8011268
	ldr R0, [R5,#0x50]
	tst R0, R0
	beq loc_8014EA8
	mov R1, #0
	strb R1, [R0,#6]
loc_8014EA8:
	mov R0, #3
	bl sub_8018856
	neg R1, R1
	bl sub_801DC06
	mov R0, #4
	strb R0, [R7,#1]
loc_8014EB8:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bgt locret_8014EFE
	ldrb R0, [R5,#0x16]
	bl sub_8015B54
	mov R1, #0
	cmp R0, #2
	bne loc_8014ECE
	mov R1, #1
loc_8014ECE:
	push {r1}
	bl sub_80144C0
	bl sub_80143A6
	pop {r0}
	cmp R0, #0
	beq loc_8014EE6
	ldrb R0, [R5,#0x16]
	mov R1, #0xFF
	bl sub_8015BEC
loc_8014EE6:
	bl sub_800EB08
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_8014EFA
	push {r5}
	add r5, r0, #0
	bl sub_8002DD8
	pop {r5}
loc_8014EFA:
	mov R0, #0xC
	strh R0, [R7]
locret_8014EFE:
	pop {r4,pc}
dword_8014F00: .word 0x30E00
.endfunc // sub_8014E08

.func
.thumb_func
sub_8014F04:
	push {r4,lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_8014F14
	mov R0, #0x14
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_8014F14:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bge locret_8014F38
	mov R0, #0x80
	bl sub_801031C
	mov r0, #0x20 
	bl battle_clearFlags
	ldr R0, dword_8014F3C // =0x80000 
	bl sub_801031C
	ldr R0, dword_80152B4 // =0x80008600 
	bl sub_800FFEE
	bl sub_8011714
locret_8014F38:
	pop {r4,pc}
	.balign 4, 0x00
dword_8014F3C: .word 0x80000
.endfunc // sub_8014F04

.func
.thumb_func
sub_8014F40:
	push {r4,lr}
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
	bl sub_800E29C // () -> void
	bl sub_801A04C
	bl sub_800EB08
	bl sub_800F46C
	strb R0, [R5,#0x17]
	bl sub_800F2C6
	bl sub_8012EA8
	ldr R0, [R5,#0x58]
	ldr R0, [R0,#0x5C]
	bl sub_80C4C3A
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	bl sub_80158FA
	mov R0, #0x11
	strb R0, [R5,#0x10]
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_8014F92
	mov R1, #1
	strb R1, [R0,#6]
	ldrb R1, [R0]
	mov R2, #0x14
	orr R1, R2
	strb R1, [R0]
loc_8014F92:
	mov R0, #6
	strh R0, [R7,#0x10]
	mov R0, #0xC
	mov R1, #5
	bl sprite_decompress
	mov R0, #4
	strh R0, [R7]
	pop {r4,pc}
	.word 0x80111C40
.endfunc // sub_8014F40

.func
.thumb_func
sub_8014FA8:
	push {r4,r6,lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_801501E
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bmi loc_8014FBA
	b locret_801502A
loc_8014FBA:
	ldr R0, dword_801503C // =0x80000 
	bl sub_8010312
	mov R0, #0xF7
	bl sound_play // () -> void
	mov r4, #0x2e 
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #8
	orr R4, R0
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	bl sub_80E05F6
	cmp R0, #0
	beq loc_8015016
	mov r1, #0x36 
	strh R1, [R0,#0x20]
	ldrb R1, [R0]
	mov R2, #4
	orr R1, R2
	strb R1, [R0]
	ldr R0, [R5,#0x38]
	ldr R1, dword_8015030 // =0xC00000 
	add r0, r0, r1
	str R0, [R5,#0x38]
	ldrb R0, [R5,#0x16]
	mov R1, #2
	mov R2, #1
	bl sub_800AB2E
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	ldr R1, off_8015034 // =0x1CC 
	cmp R0, #0x12
	blt loc_8015008
	ldr R1, off_8015038 // =0x1CD 
loc_8015008:
	add r0, r1, #0
	bl sound_play // () -> void
	mov R0, #2
	mov r1, #0x3c 
	bl sub_80302B6
loc_8015016:
	mov r0, #0x36 
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_801501E:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bge locret_801502A
	mov R0, #8
	strh R0, [R7]
locret_801502A:
	pop {r4,r6,pc}
	.word 0x200000
dword_8015030: .word 0xC00000
off_8015034: .word 0x1CC
off_8015038: .word 0x1CD
dword_801503C: .word 0x80000
.endfunc // sub_8014FA8

.func
.thumb_func
sub_8015040:
	push {r4,lr}
	bl sprite_forceWhitePallete
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_8015100
	mov r1, #0x2c 
	bl sub_8013774
	bl loc_8011384
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	mov R0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sub_8002E3C
	mov R0, #0
	bl sub_800F2B6
	ldrb R0, [R5,#0x10]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	bl sub_800E29C // () -> void
	mov R0, #0xA
	strh R0, [R7,#0x10]
	bl sprite_forceWhitePallete
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	mov r1, #0x2c 
	add r2, r0, #0
	bl sub_8013754
	ldr R4, dword_8015124 // =0x30E00 
	bl sub_80E11E0
	mov R0, #1
	add R0, #0xFF
	bl sound_play // () -> void
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #1
	blt loc_80150CA
	cmp R0, #0x18
	bgt loc_80150CA
	bl sub_8015B22
loc_80150CA:
	mov r1, #0x2c 
	bl sub_8013774
	mov R2, #0
	push {r0}
	bl loc_8011268
	pop {r0}
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_80150F0
	mov R1, #0
	strb R1, [R0,#0x10]
	mov R1, #0
	strb R1, [R0,#6]
	ldrb R1, [R0]
	mov R2, #0x14
	orr R1, R2
	strb R1, [R0]
loc_80150F0:
	mov R0, #3
	bl sub_8018856
	neg R1, R1
	bl sub_801DC06
	mov R0, #4
	strb R0, [R7,#1]
loc_8015100:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bgt locret_8015120
	bl sub_80144C0
	bl sub_80143A6
	ldrb R0, [R5,#0x16]
	mov R1, #0x80
	bl sub_8015BEC
	bl sub_800EB08
	mov R0, #0xC
	strh R0, [R7]
locret_8015120:
	pop {r4,pc}
	.balign 4, 0x00
dword_8015124: .word 0x30E00
.endfunc // sub_8015040

.func
.thumb_func
sub_8015128:
	push {r4,lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_8015138
	mov R0, #0x14
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_8015138:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bge locret_8015166
	ldrb R0, [R5,#0x16]
	mov R1, #0xB
	mov R2, #1
	bl sub_800AB2E
	mov R0, #0x80
	bl sub_801031C
	ldr R0, dword_8015168 // =0x80000 
	bl sub_801031C
	mov r0, #0x20 
	bl battle_clearFlags
	ldr R0, dword_80152B4 // =0x80008600 
	bl sub_800FFEE
	bl sub_8011714
locret_8015166:
	pop {r4,pc}
dword_8015168: .word 0x80000
.endfunc // sub_8015128

.func
.thumb_func
sub_801516C:
	push {r4,lr}
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
	bl sub_800E29C // () -> void
	bl sub_801A04C
	bl sub_800EB08
	bl sub_800F46C
	strb R0, [R5,#0x17]
	bl sub_800F2C6
	bl sub_8012EA8
	ldr R0, [R5,#0x58]
	ldr R0, [R0,#0x5C]
	bl sub_80C4C3A
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	bl sub_80158FA
	mov R0, #0x11
	strb R0, [R5,#0x10]
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_80151BE
	mov R1, #1
	strb R1, [R0,#6]
	ldrb R1, [R0]
	mov R2, #0x14
	orr R1, R2
	strb R1, [R0]
loc_80151BE:
	mov R0, #6
	strh R0, [R7,#0x10]
	mov R0, #0xC
	mov R1, #5
	bl sprite_decompress
	mov R0, #4
	strh R0, [R7]
	pop {r4,pc}
	.word 0x80111C40
.endfunc // sub_801516C

.func
.thumb_func
sub_80151D4:
	push {r4,r6,lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_8015288
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bmi loc_80151E6
	b locret_80152A6
loc_80151E6:
	ldr R0, dword_80152B0 // =0x80000 
	bl sub_8010312
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	sub R0, #0x17
	lsl r6, r0, #0x11
	mov r4, #0x3f 
	add r4, r4, r0
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #8
	orr R4, R0
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	ldr R0, dword_80152B8 // =0x200000 
	add r3, r3, r0
	bl sub_80E05F6
	cmp R0, #0
	beq loc_801527C
	mov r1, #0x36 
	strh R1, [R0,#0x20]
	ldrb R1, [R0]
	mov R2, #4
	orr R1, R2
	strb R1, [R0]
	mov R0, #0x9B
	add R0, #0xFF
	bl sound_play // () -> void
	mov r4, #0x3e 
	orr R4, R6
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #8
	orr R4, R0
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	ldr R0, dword_80152B8 // =0x200000 
	add r3, r3, r0
	bl sub_80E05F6
	cmp R0, #0
	beq loc_801527C
	mov r1, #0x45 
	strh R1, [R0,#0x20]
	ldrb R1, [R0]
	mov R2, #4
	orr R1, R2
	strb R1, [R0]
	ldr R0, [R5,#0x38]
	ldr R1, dword_80152BC // =0xC00000 
	add r0, r0, r1
	str R0, [R5,#0x38]
	ldrb R0, [R5,#0x16]
	mov R1, #2
	mov R2, #1
	bl sub_800AB2E
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	ldr R1, off_80152C0 // =0x1CC 
	cmp R0, #0x17
	beq loc_801526E
	ldr R1, off_80152C4 // =0x1CD 
loc_801526E:
	add r0, r1, #0
	bl sound_play // () -> void
	mov R0, #2
	mov r1, #0x4b 
	bl sub_80302B6
loc_801527C:
	mov r0, #0x36 
	strh R0, [R7,#0x10]
	bl sub_80EA438
	mov R0, #4
	strb R0, [R7,#1]
loc_8015288:
	ldr R0, [R7,#0x10]
	cmp r0, #0x35 
	beq loc_8015292
	cmp r0, #0x25 
	bne loc_801529A
loc_8015292:
	mov R0, #0x9B
	add R0, #0xFF
	bl sound_play // () -> void
loc_801529A:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bge locret_80152A6
	mov R0, #8
	strh R0, [R7]
locret_80152A6:
	pop {r4,r6,pc}
	.word 0x200000, 0xC00000
dword_80152B0: .word 0x80000
dword_80152B4: .word 0x80008600
dword_80152B8: .word 0x200000
dword_80152BC: .word 0xC00000
off_80152C0: .word 0x1CC
off_80152C4: .word 0x1CD
.endfunc // sub_80151D4

.func
.thumb_func
sub_80152C8:
	push {r4,lr}
	bl sprite_forceWhitePallete
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_801537C
	mov r1, #0x2c 
	bl sub_8013774
	bl loc_8011384
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	mov R0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sub_8002E3C
	mov R0, #0
	bl sub_800F2B6
	ldrb R0, [R5,#0x10]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	bl sub_800E29C // () -> void
	mov R0, #0xA
	strh R0, [R7,#0x10]
	bl sub_801A264
	bl sprite_forceWhitePallete
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	mov r1, #0x2c 
	add r2, r0, #0
	bl sub_8013754
	ldr R4, dword_80153AC // =0x30E00 
	bl sub_80E11E0
	mov R0, #1
	add R0, #0xFF
	bl sound_play // () -> void
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #1
	blt loc_8015356
	cmp R0, #0x18
	bgt loc_8015356
	bl sub_8015B22
loc_8015356:
	mov r1, #0x2c 
	bl sub_8013774
	mov R2, #0
	bl loc_8011268
	ldr R0, [R5,#0x50]
	tst R0, R0
	beq loc_801536C
	mov R1, #0
	strb R1, [R0,#6]
loc_801536C:
	mov R0, #3
	bl sub_8018856
	neg R1, R1
	bl sub_801DC06
	mov R0, #4
	strb R0, [R7,#1]
loc_801537C:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bgt locret_80153A8
	bl sub_80144C0
	bl sub_80143A6
	ldrb R0, [R5,#0x16]
	mov R1, #0x80
	bl sub_8015BEC
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_80153A4
	push {r5}
	add r5, r0, #0
	bl sub_8002DD8
	pop {r5}
loc_80153A4:
	mov R0, #0xC
	strh R0, [R7]
locret_80153A8:
	pop {r4,pc}
	.balign 4, 0x00
dword_80153AC: .word 0x30E00
.endfunc // sub_80152C8

.func
.thumb_func
sub_80153B0:
	push {r4,lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_80153C0
	mov R0, #0x14
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_80153C0:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bge locret_80153E4
	mov R0, #0x80
	bl sub_801031C
	ldr R0, dword_80153E8 // =0x80000 
	bl sub_801031C
	mov r0, #0x20 
	bl battle_clearFlags
	ldr R0, dword_8015610 // =0x80008600 
	bl sub_800FFEE
	bl sub_8011714
locret_80153E4:
	pop {r4,pc}
	.balign 4, 0x00
dword_80153E8: .word 0x80000
.endfunc // sub_80153B0

.func
.thumb_func
sub_80153EC:
	push {r4,lr}
	ldr R0, dword_8015448 // =0x80000 
	bl sub_8010312
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
.endfunc // sub_80153EC

	bl sub_800E29C // () -> void
	bl sub_801A04C
	bl sub_800EB08
	bl sub_800F46C
	strb R0, [R5,#0x17]
	bl sub_800F2C6
	bl sub_8012EA8
	ldr R0, [R5,#0x58]
	ldr R0, [R0,#0x5C]
	bl sub_80C4C3A
	bl sub_80158FA
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_8015438
	mov R1, #1
	strb R1, [R0,#6]
	ldrb R1, [R0]
	mov R2, #0x14
	orr R1, R2
	strb R1, [R0]
loc_8015438:
	mov R0, #6
	strh R0, [R7,#0x10]
	mov R0, #4
	strh R0, [R7]
	pop {r4,pc}
	.balign 4, 0x00
	.word 0x80111C40
dword_8015448: .word 0x80000
.func
.thumb_func
sub_801544C:
	push {r4,r6,lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_8015480
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bmi loc_801545E
	b locret_80154C6
loc_801545E:
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	sub R0, #0xC
	add r4, r0, #0
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	mov R3, #0x14
	bl sub_80BC844
	mov r0, #0x28 
	add R0, #8
	strh R0, [R7,#0x10]
	mov R0, #0
	str R0, [R7,#0x30]
	mov R0, #4
	strb R0, [R7,#1]
loc_8015480:
	ldr R0, [R7,#0x30]
	add R0, #1
	cmp R0, #6
	bgt loc_801549E
	str R0, [R7,#0x30]
	bl sprite_forceWhitePallete
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_801549E
	push {r5}
	add r5, r0, #0
	bl sprite_forceWhitePallete
	pop {r5}
loc_801549E:
	cmp R0, #7
	bne loc_80154B2
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_80154B2
	push {r5}
	add r5, r0, #0
	bl sub_8002DD8
	pop {r5}
loc_80154B2:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bge locret_80154C6
	mov R0, #6
	strh R0, [R7,#0x10]
	mov R0, #8
	strh R0, [R7]
	mov R0, #0
	str R0, [R7,#0x30]
locret_80154C6:
	pop {r4,r6,pc}
.endfunc // sub_801544C

.func
.thumb_func
sub_80154C8:
	push {r4,lr}
	bl sprite_forceWhitePallete
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_8015594
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_80154E2
	ldrb R1, [R0]
	mov R2, #0x14
	orr R1, R2
	strb R1, [R0]
loc_80154E2:
	mov r1, #0x2c 
	bl sub_8013774
	bl loc_8011384
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	mov R0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sub_8002E3C
	mov R0, #0
	bl sub_800F2B6
	ldrb R0, [R5,#0x10]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	bl sub_800E29C // () -> void
	mov R0, #0xA
	strh R0, [R7,#0x10]
	bl sprite_forceWhitePallete
	ldrb R0, [R5,#0x16]
	bl sub_801595E
	mov r1, #0x2c 
	add r2, r0, #0
	bl sub_8013754
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #1
	blt loc_801555A
	cmp R0, #0x18
	bgt loc_801555A
	bl sub_8015B22
loc_801555A:
	mov r1, #0x2c 
	bl sub_8013774
	mov R2, #0
	push {r0}
	bl loc_8011268
	pop {r0}
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_8015578
	mov R1, #0
	strb R1, [R0,#0x10]
	mov R1, #0
	strb R1, [R0,#6]
loc_8015578:
	mov R0, #3
	bl sub_8018856
	neg R1, R1
	bl sub_801DC06
	mov R0, #0x8D
	bl sound_play // () -> void
	mov r0, #0x77 
	bl sound_play // () -> void
	mov R0, #4
	strb R0, [R7,#1]
loc_8015594:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bgt locret_80155C4
	bl sub_80144C0
	bl sub_80143A6
	ldrb R0, [R5,#0x16]
	mov R1, #0x80
	bl sub_8015BEC
	bl sub_800EB08
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_80155C0
	push {r5}
	add r5, r0, #0
	bl sub_8002DD8
	pop {r5}
loc_80155C0:
	mov R0, #0xC
	strh R0, [R7]
locret_80155C4:
	pop {r4,pc}
	.balign 4, 0x00
	.byte 0x0, 0x14, 0x3, 0x0
.endfunc // sub_80154C8

.func
.thumb_func
sub_80155CC:
	push {r4,lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_80155DC
	mov R0, #0x14
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_80155DC:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bge locret_801560A
	ldrb R0, [R5,#0x16]
	mov R1, #0xB
	mov R2, #1
	bl sub_800AB2E
	mov R0, #0x80
	bl sub_801031C
	ldr R0, dword_801560C // =0x80000 
	bl sub_801031C
	mov r0, #0x20 
	bl battle_clearFlags
	ldr R0, dword_8015610 // =0x80008600 
	bl sub_800FFEE
	bl sub_8011714
locret_801560A:
	pop {r4,pc}
dword_801560C: .word 0x80000
dword_8015610: .word 0x80008600
.endfunc // sub_80155CC

loc_8015614:
	push {lr}
	ldr R1, off_8015624 // =off_8015628 
	ldrb R0, [R7]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8015624: .word off_8015628
off_8015628: .word sub_801562C+1
.func
.thumb_func
sub_801562C:
	push {r4,lr}
	bl sprite_forceWhitePallete
	ldrb R0, [R7,#1]
	tst R0, R0
	beq loc_801563A
	b loc_801573C
loc_801563A:
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_8015648
	ldrb R1, [R0]
	mov R2, #0x14
	orr R1, R2
	strb R1, [R0]
loc_8015648:
	mov R0, #0
	ldr R1, [R5,#0x5C]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	cmp R1, #4
	beq loc_801565C
	cmp R1, #6
	beq loc_801565C
	cmp R1, #7
	bne loc_801565E
loc_801565C:
	mov R0, #1
loc_801565E:
	add R0, #1
	strb R0, [R7,#1]
	mov R0, #0x8E
	bl sound_play // () -> void
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
	bl sub_800E29C // () -> void
	bl sub_801A04C
	bl sub_800F46C
	strb R0, [R5,#0x17]
	bl sub_800F2C6
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov R0, #0x14
	lsl r0, r0, #0x10
	add r3, r3, r0
	mov R4, #3
	bl sub_80E05F6
	ldrb R1, [R0]
	mov R2, #4
	orr R1, R2
	strb R1, [R0]
	ldr R0, off_8015928 // =loc_8001440 
	bl object_clearFlag // (int bitfield) -> void
	mov R0, #0x10
	bl sub_801A176
	mov R0, #0
	strb R0, [R5,#0x1F]
	mov r1, #0x2c 
	bl sub_8013774
	bl loc_8011384
	mov R0, #0
	mov R1, #0
	bl sub_800FC9E
	mov R0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sub_8002E3C
	ldrb R0, [R7,#1]
	cmp R0, #2
	beq loc_80156DC
	mov R0, #0
	bl sub_800F2B6
loc_80156DC:
	ldrb R0, [R5,#0x10]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	bl sprite_forceWhitePallete
	bl sub_80158CC
	mov r1, #0x2c 
	mov R2, #0
	bl sub_8013754
	mov R0, #0
	bl sub_8015B22
	bl sub_80144C0
	bl loc_80143B4
	bl sub_800EB08
	mov r1, #0x2c 
	bl sub_8013774
	mov R2, #0
	bl loc_8011268
	mov R0, #3
	bl sub_8018856
	neg R1, R1
	bl sub_801DC06
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	str R0, [R1,#0x40]
	mov R0, #0xA1
	add R0, #0xFF
	strh R0, [R5,#0x28]
	mov R0, #0x1E
	strh R0, [R7,#0x10]
loc_801573C:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bgt locret_8015764
	ldr R0, dword_801592C // =0x1000863D 
	bl sub_800FFEE
	ldr R0, dword_8015930 // =0x200900 
	bl sub_801031C
	ldrb R0, [R7,#1]
	cmp R0, #2
	beq loc_801575C
	bl sub_8011714
	b locret_8015764
loc_801575C:
	ldr R0, [R5,#0x5C]
	str R0, [R5,#8]
	mov R0, #0
	str R0, [R5,#0x5C]
locret_8015764:
	pop {r4,pc}
.endfunc // sub_801562C

.func
.thumb_func
sub_8015766:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	mov R6, #1
	ldr R7, [R5,#0x58]
	add R7, #0xA0
	bl sprite_forceWhitePallete
	ldrb R0, [R7,#1]
	tst R0, R0
	beq loc_801577C
	b loc_801589C
loc_801577C:
	mov R0, #4
	bl battle_setFlags
	mov R0, #0x8E
	bl sound_play // () -> void
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
	bl sub_800E29C // () -> void
	bl sub_801A04C
	mov R0, #2
	strb R0, [R5,#0x10]
	mov R0, #0xFF
	strb R0, [R5,#0x11]
	bl sub_8011450
	bl sub_800F46C
	strb R0, [R5,#0x17]
	bl sub_800F2C6
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov R0, #0x14
	lsl r0, r0, #0x10
	add r3, r3, r0
	mov R4, #3
	bl sub_80E05F6
	ldrb R1, [R0]
	mov R2, #4
	orr R1, R2
	strb R1, [R0]
	ldr R0, dword_8015934 // =0x80111C40 
	bl object_clearFlag // (int bitfield) -> void
	mov R0, #0x10
	bl sub_801A176
	mov R0, #0
	strb R0, [R5,#0x1F]
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_80157EE
	mov R1, #1
	strb R1, [R0,#6]
	ldrb R1, [R0]
	mov R2, #0x14
	orr R1, R2
	strb R1, [R0]
loc_80157EE:
	mov r1, #0x2c 
	bl sub_8013774
	str R0, [SP]
	bl loc_8011384
	mov R1, #0
	ldr R0, [SP]
	cmp R0, #0xA
	ble loc_801580A
	mov R1, #0xB
	cmp R0, #0x11
	ble loc_801580A
	mov R1, #0xC
loc_801580A:
	str R1, [SP]
	mov R0, #0
	bl sub_800FC9E
	mov R0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sub_8002E3C
	mov R0, #0
	bl sub_800F2B6
	ldrb R0, [R5,#0x10]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	bl sprite_forceWhitePallete
	mov r1, #0x2c 
	ldr R2, [SP]
	bl sub_8013754
	ldr R0, [SP]
	bl sub_8015B22
	ldrb R0, [R5,#0x16]
	mov R1, #0x80
	bl sub_8015BEC
	bl sub_80144C0
	bl loc_80143B4
	mov r1, #0x2c 
	bl sub_8013774
	mov R2, #0
	bl loc_8011268
	ldr R0, [R5,#0x50]
	cmp R0, #0
	beq loc_8015878
	mov R1, #1
	strb R1, [R0,#6]
	ldrb R1, [R0]
	mov R2, #0x14
	orr R1, R2
	strb R1, [R0]
loc_8015878:
	mov R0, #3
	bl sub_8018856
	neg R1, R1
	bl sub_801DC06
	bl sub_800EB08
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	bl sub_801A074 // () -> void
	mov R0, #0x1E
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_801589C:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bgt loc_80158C6
	ldr R0, dword_8015938 // =0x240800 
	bl sub_801031C
	ldr R0, [R5,#0x50]
	tst R0, R0
	beq loc_80158B4
	mov R1, #0
	strb R1, [R0,#6]
loc_80158B4:
	mov R0, #4
	bl battle_clearFlags
	mov R0, #1
	bl sub_801A07C
	mov R0, #0
	strh R0, [R7]
	mov R6, #0
loc_80158C6:
	add r0, r6, #0
	add sp, sp, #4
	pop {r4,r6,r7,pc}
.endfunc // sub_8015766

.func
.thumb_func
sub_80158CC:
	push {lr}
	ldrb R0, [R5,#0x16]
	bl sub_8013682 // (int idx) -> void*
	mov R1, #0x80
	strb R1, [R0,#0xE]
	bl sub_802D234
	cmp R0, #1
	beq locret_80158F8
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0xB
	blt locret_80158F8
	cmp R0, #0x16
	bgt loc_80158F4
	bl sub_801443C
	b locret_80158F8
loc_80158F4:
	bl sub_8014466
locret_80158F8:
	pop {pc}
.endfunc // sub_80158CC

.func
.thumb_func
sub_80158FA:
	push {lr}
	ldr R0, dword_8015924 // =0x80111C40 
	bl object_clearFlag // (int bitfield) -> void
	mov R0, #0x10
	bl sub_801A176
	mov R0, #0
	strb R0, [R5,#0x1F]
	ldr R0, dword_801593C // =0x200800 
	bl sub_801031C
	ldr R0, [R5,#0x54]
	mov R1, #0
	strh R1, [R0,#0x2C]
	strh R1, [R0,#0x2A]
	strh R1, [R0,#0x1C]
	str R1, [R0,#0x58]
	str R1, [R0,#0x60]
	pop {pc}
	.balign 4, 0x00
dword_8015924: .word 0x80111C40
off_8015928: .word loc_8001440
dword_801592C: .word 0x1000863D
dword_8015930: .word 0x200900
dword_8015934: .word 0x80111C40
dword_8015938: .word 0x240800
dword_801593C: .word 0x200800
.endfunc // sub_80158FA

.func
.thumb_func
sub_8015940:
	push {r5,lr}
	ldr R5, off_8015B34 // =byte_203CED0 
	mov R1, #0xFF
	strb R1, [R5]
	strb R1, [R5,#0x4] // (dword_203CED4 - 0x203CED0)
	bl sub_80103EC
	str R0, [R5,#0x8] // (byte_203CED8 - 0x203CED0)
	pop {r5,pc}
.endfunc // sub_8015940

.func
.thumb_func
sub_8015952:
	push {r4,lr}
	ldr R4, off_8015B38 // =byte_203CED0 
	strb R0, [R4]
	strb R1, [R4,#0x1] // (byte_203CED1 - 0x203CED0)
	strb R2, [R4,#0x3] // (byte_203CED3 - 0x203CED0)
	pop {r4,pc}
.endfunc // sub_8015952

.func
.thumb_func
sub_801595E:
	mov R3, #0x10
	mul R3, R0
	ldr R0, off_8015B3C // =unk_203A980 
	add r3, r3, r0
	ldrb R0, [R3]
	ldrb R1, [R3,#1]
	ldrb R3, [R3,#3]
	mov PC, LR
.endfunc // sub_801595E

.func
.thumb_func
sub_801596E:
	push {r5,lr}
	add r5, r0, #0
	beq locret_801597A
	ldr R0, dword_8015B40 // =0x4000 
	bl sub_800FFE4
locret_801597A:
	pop {r5,pc}
.endfunc // sub_801596E

.func
.thumb_func
sub_801597C:
	push {r5,lr}
	add r5, r0, #0
	beq locret_8015992
	bl sub_801032C
	mov R2, #0
	mov R1, #0x80
	tst R0, R1
	beq loc_8015990
	mov R2, #1
loc_8015990:
	add r0, r2, #0
locret_8015992:
	pop {r5,pc}
.endfunc // sub_801597C

.func
.thumb_func
sub_8015994:
	push {r5,lr}
	add r5, r0, #0
	beq locret_80159A0
	mov r0, #0x40 
	bl sub_800FFE4
locret_80159A0:
	pop {r5,pc}
.endfunc // sub_8015994

.func
.thumb_func
sub_80159A2:
	push {r5,r7,lr}
	mov R7, #0
	add r5, r0, #0
	beq loc_80159C2
	mov R7, #1
	bl sub_801032C
	ldr R1, off_8015B44 // =0x100 
	tst R0, R1
	bne loc_80159C2
	bl sub_800FFFE
	mov r1, #0x40 
	tst R0, R1
	bne loc_80159C2
	mov R7, #0
loc_80159C2:
	add r0, r7, #0
	pop {r5,r7,pc}
.endfunc // sub_80159A2

.func
.thumb_func
sub_80159C6:
	push {r5,r6,lr}
	mov R6, #0
	add r5, r0, #0
	beq loc_8015A12
	bl sub_802D234
	cmp R0, #1
	beq loc_80159F0
	ldr R0, [R5,#0x58]
	ldrb R1, [R0,#0xF]
	tst R1, R1
	bne loc_8015A12
	mov R1, #2
	strb R1, [R0,#0xF]
	mov r1, #0x21 
	bl sub_8013774
	cmp R0, #0
	bne loc_8015A12
	bl sub_801443C
loc_80159F0:
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0xB
	blt loc_8015A12
	cmp R0, #0x18
	bgt loc_8015A12
	bl sub_802D234
	cmp R0, #1
	beq loc_8015A10
	mov r1, #0x21 
	bl sub_8013774
	cmp R0, #0
	bne loc_8015A12
loc_8015A10:
	mov R6, #1
loc_8015A12:
	add r0, r6, #0
	pop {r5,r6,pc}
.endfunc // sub_80159C6

.func
.thumb_func
sub_8015A16:
	push {r5,lr}
	add r5, r0, #0
	beq locret_8015A36
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0
	bne locret_8015A36
	ldr R1, [R5,#0x58]
	ldrb R2, [R1,#0xF]
	cmp R2, #0xFF
	beq locret_8015A36
	tst R2, R2
	beq locret_8015A36
	sub R2, #1
	strb R2, [R1,#0xF]
locret_8015A36:
	pop {r5,pc}
.endfunc // sub_8015A16

.func
.thumb_func
sub_8015A38:
	push {r5,r7,lr}
	mov R7, #0
	add r5, r0, #0
	beq loc_8015A7C
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0
	bne loc_8015A7C
	mov R1, #0x17
	bl sub_8013774
	cmp R0, #0xB
	beq loc_8015A7C
	cmp R0, #0xC
	beq loc_8015A7C
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0xB
	blt loc_8015A66
	cmp R0, #0x18
	ble loc_8015A68
loc_8015A66:
	b loc_8015A7C
loc_8015A68:
	mov r1, #0x21 
	bl sub_8013774
	cmp R0, #0
	beq loc_8015A7C
	sub R0, #1
	add r2, r0, #0
	mov r1, #0x21 
	bl sub_8013754
loc_8015A7C:
	add r0, r7, #0
	pop {r5,r7,pc}
.endfunc // sub_8015A38

	push {r5,lr}
	add r5, r0, #0
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0xB
	blt loc_8015A92
	cmp R0, #0x18
	ble locret_8015AA4
loc_8015A92:
	mov r1, #0x21 
	bl sub_8013774
	cmp R0, #3
	bge locret_8015AA4
	add r2, r0, #1
	mov r1, #0x21 
	bl sub_8013754
locret_8015AA4:
	pop {r5,pc}
.func
.thumb_func
sub_8015AA6:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	str R0, [SP]
	str R1, [SP,#4]
	bl object_getFlipDirection_800E2CA // () -> int
	str R0, [SP,#8]
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #2
	ldr R1, off_8015AF4 // =off_8015AF8 
	ldr R0, [R1,R0]
	str R0, [SP,#0xC]
loc_8015ABE:
	ldr R0, [SP]
	ldr R1, [SP,#4]
	bl object_isValidPanel
	beq loc_8015AEE
	ldr R0, [SP]
	ldr R1, [SP,#4]
	bl object_getPanelParameters
	ldr R1, [SP,#0xC]
	tst R0, R1
	beq loc_8015AE4
	ldr R0, [SP]
	ldr R1, [SP,#4]
	mov R2, #0
	mov R3, #0
	mov R6, #0
	bl sub_80CC0B2
loc_8015AE4:
	ldr R0, [SP]
	ldr R1, [SP,#8]
	add r0, r0, r1
	str R0, [SP]
	b loc_8015ABE
loc_8015AEE:
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
off_8015AF4: .word off_8015AF8
off_8015AF8: .word LCDControl
	.word start_
.endfunc // sub_8015AA6

.func
.thumb_func
sub_8015B00:
	push {lr}
	bl object_getFlipDirection_800E2CA // () -> int
	add r0, r0, r0
	ldrb R1, [R5,#0x12]
	add r0, r0, r1
	ldrb R1, [R5,#0x13]
	ldr R2, dword_8015B48 // =0x10000 
	ldr R3, dword_8015B4C // =0xF800000 
	push {r0,r1}
	bl object_checkPanelParameters
.endfunc // sub_8015B00

	tst R0, R0
	pop {r0,r1}
	bne locret_8015B20
	mov R0, #0
locret_8015B20:
	pop {pc}
.func
.thumb_func
sub_8015B22:
	ldr R1, off_8015B50 // =0x1A0 
	cmp R0, #0
	beq loc_8015B2E
	sub r1, r0, #1
	add R1, #0xAD
	add R1, #0xFF
loc_8015B2E:
	strh R1, [R5,#0x28]
	mov PC, LR
	.balign 4, 0x00
off_8015B34: .word byte_203CED0
off_8015B38: .word byte_203CED0
off_8015B3C: .word unk_203A980
dword_8015B40: .word 0x4000
off_8015B44: .word 0x100
dword_8015B48: .word 0x10000
dword_8015B4C: .word 0xF800000
off_8015B50: .word 0x1A0
.endfunc // sub_8015B22

.func
.thumb_func
sub_8015B54:
	push {lr}
	bl sub_8015B64
	pop {pc}
.endfunc // sub_8015B54

.func
.thumb_func
sub_8015B5C:
	push {lr}
	bl sub_8015BA8
	pop {pc}
.endfunc // sub_8015B5C

.func
.thumb_func
sub_8015B64:
	push {R4-R6,lr}
	add r4, r0, #0
	bl sub_8013682 // (int idx) -> void*
	add r6, r0, #0
	add r0, r4, #0
	bl sub_80103BC
	add r5, r0, #0
	ldr R4, [R5,#0x58]
	mov r1, #0x2c 
	ldrb R1, [R6,R1]
	ldrb R2, [R6,#0xE]
	mov R0, #5
	ldrh R3, [R4,#0x36]
	tst R3, R3
	bne loc_8015BA2
	cmp R2, #0
	beq loc_8015BA2
	mov R0, #3
	ldrh R3, [R4,#0x34]
	tst R3, R3
	bne loc_8015BA2
	mov R0, #1
	ldrh R3, [R4,#0x32]
	tst R3, R3
	bne loc_8015BA2
	mov R0, #2
	cmp R2, #0xFF
	beq loc_8015BA2
	mov R0, #0
loc_8015BA2:
	mov r3, #0x21 
	ldrb R3, [R6,R3]
	pop {R4-R6,pc}
.endfunc // sub_8015B64

.func
.thumb_func
sub_8015BA8:
	push {R4-R6,lr}
	add r4, r0, #0
	bl sub_80136A0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_80103BC
	add r5, r0, #0
	ldr R4, [R5,#0x58]
	mov r1, #0x2c 
	ldrb R1, [R6,R1]
	ldrb R2, [R6,#0xE]
	mov R0, #5
	ldrh R3, [R4,#0x36]
	tst R3, R3
	beq loc_8015BE6
	cmp R2, #0
	beq loc_8015BE6
	mov R0, #3
	ldrh R3, [R4,#0x34]
	tst R3, R3
	bne loc_8015BE6
	mov R0, #1
	ldrh R3, [R4,#0x32]
	tst R3, R3
	beq loc_8015BE6
	mov R0, #2
	cmp R2, #0xFF
	beq loc_8015BE6
	mov R0, #0
loc_8015BE6:
	mov r3, #0x21 
	ldrb R3, [R6,R3]
	pop {R4-R6,pc}
.endfunc // sub_8015BA8

.func
.thumb_func
sub_8015BEC:
	push {R4-R6,lr}
	add r6, r0, #0
	add r4, r1, #0
	bl sub_80103BC
	cmp R0, #0
	beq locret_8015C10
	add r5, r0, #0
	bl sub_801445C
	bne locret_8015C10
	bl sub_8014490
	bne locret_8015C10
	add r0, r6, #0
	bl sub_8013682 // (int idx) -> void*
	strb R4, [R0,#0xE]
locret_8015C10:
	pop {R4-R6,pc}
.endfunc // sub_8015BEC

.func
.thumb_func
sub_8015C12:
	push {r4,lr}
	add r4, r1, #0
	bl sub_8013682 // (int idx) -> void*
	ldrb R1, [R0,#0xE]
	tst R1, R1
	beq locret_8015C2A
	sub r1, r1, r4
	cmp R1, #1
	bge loc_8015C28
	mov R1, #1
loc_8015C28:
	strb R1, [R0,#0xE]
locret_8015C2A:
	pop {r4,pc}
.endfunc // sub_8015C12

.func
.thumb_func
sub_8015C2C:
	push {lr}
	mov R0, #0x80
	pop {pc}
.endfunc // sub_8015C2C

.func
.thumb_func
sub_8015C32:
	push {r4,lr}
	mov R4, #0
loc_8015C36:
	add r0, r4, #0
	mov R1, #0xE
	mov R2, #0
	bl sub_80136F0
	add R4, #1
	cmp R4, #7
	blt loc_8015C36
	pop {r4,pc}
.endfunc // sub_8015C32

.func
.thumb_func
sub_8015C48:
	push {r7,lr}
	sub sp, sp, #0x18
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #3
	ldr R1, off_8015C80 // =dword_8015C84 
	add r0, r0, r1
	ldr R2, [R0]
	ldr R3, [R0,#4]
	add r7, sp, #0
	bl object_getPanelsExceptCurrentFilterred
.endfunc // sub_8015C48

	tst R0, R0
	beq loc_8015C78
	add r7, r0, #0
	bl sub_8001532
	add r1, r7, #0
	svc 6
	add r0, sp, #0
	ldrb R0, [R0,R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	b loc_8015C7C
loc_8015C78:
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
loc_8015C7C:
	add sp, sp, #0x18
	pop {r7,pc}
off_8015C80: .word dword_8015C84
dword_8015C84: .word 0x10, 0xF8800A0, 0x30, 0xF880080
.func
.thumb_func
sub_8015C94:
	push {r7,lr}
	sub sp, sp, #0x18
	add r7, sp, #0
	bl object_getPanelsExceptCurrentFilterred
.endfunc // sub_8015C94

	tst R0, R0
	beq loc_8015CB8
	add r7, r0, #0
	bl sub_8001532
	add r1, r7, #0
	svc 6
	add r0, sp, #0
	ldrb R0, [R0,R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	b loc_8015CBC
loc_8015CB8:
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
loc_8015CBC:
	add sp, sp, #0x18
	pop {r7,pc}
.func
.thumb_func
sub_8015CC0:
	push {lr}
	sub sp, sp, #0x34
	str R0, [SP,#8]
	str R1, [SP,#0xC]
	str R2, [SP,#0x18]
	str R3, [SP,#0x1C]
	str R4, [SP,#0x28]
	mov R0, #0
	str R0, [SP,#0x20]
	str R0, [SP,#0x24]
	str R0, [SP,#0x2C]
	str R0, [SP,#0x30]
	ldrb R0, [R5,#0x16]
	ldrb R1, [R5,#0x17]
	bl sub_800E2C2
	neg R0, R0
	str R0, [SP,#0x10]
	ldr R1, [SP,#8]
	add r1, r1, r0
	str R1, [SP,#8]
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #2
	ldr R1, off_8015D74 // =byte_8015D78 
	ldr R0, [R1,R0]
	str R0, [SP,#0x14]
loc_8015CF4:
	ldr R0, [SP,#8]
	ldr R1, [SP,#0xC]
	bl object_getPanelParameters
	ldr R1, [SP,#0x14]
	tst R0, R1
	beq loc_8015D16
	ldr R2, [SP,#8]
	str R2, [SP,#0x2C]
	ldr R2, [SP,#0xC]
	str R2, [SP,#0x30]
	ldr R0, [SP,#0x24]
	add R0, #1
	str R0, [SP,#0x24]
	ldr R1, [SP,#0x28]
	cmp R0, R1
	bgt loc_8015D52
loc_8015D16:
	ldr R0, [SP,#0x24]
	ldr R1, [SP,#0x28]
	cmp R0, R1
	bne loc_8015D40
	ldr R0, [SP,#8]
	ldr R1, [SP,#0xC]
	ldr R2, [SP,#0x18]
	ldr R3, [SP,#0x1C]
	bl object_checkPanelParameters
	tst R0, R0
	beq loc_8015D40
	ldr R0, [SP,#8]
	ldr R1, [SP,#0xC]
	lsl r1, r1, #4
	orr R0, R1
	add r1, sp, #0
	ldr R2, [SP,#0x20]
	strb R0, [R1,R2]
	add R2, #1
	str R2, [SP,#0x20]
loc_8015D40:
	ldr R0, [SP,#8]
	ldr R1, [SP,#0x10]
	add r0, r0, r1
	str R0, [SP,#8]
	ldr R1, [SP,#0xC]
	bl object_isValidPanel
	tst R0, R0
	bne loc_8015CF4
loc_8015D52:
	ldr R0, [SP,#0x20]
	tst R0, R0
	beq loc_8015D6A
	bl sub_8001532
	ldr R1, [SP,#0x20]
	svc 6
	add r0, sp, #0
	ldrb R0, [R0,R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_8015D6A:
	ldr R2, [SP,#0x2C]
	ldr R3, [SP,#0x30]
	add sp, sp, #0x34
	pop {pc}
	.balign 4, 0x00
off_8015D74: .word byte_8015D78
byte_8015D78: .byte 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x80, 0x2
.endfunc // sub_8015CC0

.func
.thumb_func
sub_8015D80:
	push {r4,lr}
	sub sp, sp, #0x38
	str R0, [SP,#0x1C]
	str R1, [SP,#0x20]
	str R2, [SP,#0x24]
	str R3, [SP,#0x28]
	bl sub_800E2C0
	str R0, [SP,#0x18]
	mov R0, #0
	str R0, [SP,#0x2C]
loc_8015D96:
	mov R0, #0
	ldrsb R0, [R4,R0]
	cmp R0, #0x7F
	beq loc_8015DD4
	ldr R1, [SP,#0x18]
	mul R0, R1
	ldr R2, [SP,#0x1C]
	add r0, r0, r2
	mov R1, #1
	ldrsb R1, [R4,R1]
	ldr R2, [SP,#0x20]
	add r1, r1, r2
	str R0, [SP,#0x30]
	str R1, [SP,#0x34]
	ldr R2, [SP,#0x24]
	ldr R3, [SP,#0x28]
	bl object_checkPanelParameters
	tst R0, R0
	beq loc_8015DD0
	ldr R0, [SP,#0x30]
	ldr R1, [SP,#0x34]
	lsl r1, r1, #4
	orr R0, R1
	ldr R1, [SP,#0x2C]
	add r2, sp, #0
	strb R0, [R2,R1]
	add R1, #1
	str R1, [SP,#0x2C]
loc_8015DD0:
	add R4, #2
	b loc_8015D96
loc_8015DD4:
	ldr R0, [SP,#0x2C]
	tst R0, R0
	beq loc_8015DEC
	bl sub_8001532
	ldr R1, [SP,#0x2C]
	svc 6
	add r0, sp, #0
	ldrb R0, [R0,R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_8015DEC:
	add sp, sp, #0x38
	pop {r4,pc}
.endfunc // sub_8015D80

.func
.thumb_func
sub_8015DF0:
	push {r4,lr}
	sub sp, sp, #0x38
	str R2, [SP,#0x24]
	str R3, [SP,#0x28]
	mov R0, #0
	str R0, [SP,#0x2C]
loc_8015DFC:
	ldrb R0, [R4]
	cmp R0, #0x7F
	beq loc_8015E2A
	ldrb R1, [R4,#1]
	str R0, [SP,#0x30]
	str R1, [SP,#0x34]
	ldr R2, [SP,#0x24]
	ldr R3, [SP,#0x28]
	bl object_checkPanelParameters
	tst R0, R0
	beq loc_8015E26
	ldr R0, [SP,#0x30]
	ldr R1, [SP,#0x34]
	lsl r1, r1, #4
	orr R0, R1
	ldr R1, [SP,#0x2C]
	add r2, sp, #0
	strb R0, [R2,R1]
	add R1, #1
	str R1, [SP,#0x2C]
loc_8015E26:
	add R4, #2
	b loc_8015DFC
loc_8015E2A:
	ldr R0, [SP,#0x2C]
	tst R0, R0
	beq loc_8015E42
	bl sub_8001532
	ldr R1, [SP,#0x2C]
	svc 6
	add r0, sp, #0
	ldrb R0, [R0,R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_8015E42:
	add sp, sp, #0x38
	pop {r4,pc}
.endfunc // sub_8015DF0

.func
.thumb_func
sub_8015E46:
	push {r4,r7,lr}
	ldr R7, off_8015E54 // =off_8019B78 
	lsl r4, r4, #2
	ldr R4, [R7,R4]
	bl sub_8015E58
	pop {r4,r7,pc}
off_8015E54: .word off_8019B78
.endfunc // sub_8015E46

.func
.thumb_func
sub_8015E58:
	push {r4,r6,lr}
	sub sp, sp, #0x38
	str R0, [SP,#0x1C]
	str R1, [SP,#0x20]
	str R2, [SP,#0x24]
	str R3, [SP,#0x28]
	add r0, r6, #0
	bl sub_800E2C2
	str R0, [SP,#0x2C]
	mov R6, #0
loc_8015E6E:
	mov R0, #0
	ldrsb R0, [R4,R0]
	cmp R0, #0x7F
	beq loc_8015EA8
	mov R1, #1
	ldrsb R1, [R4,R1]
	ldr R2, [SP,#0x2C]
	mul R0, R2
	ldr R2, [SP,#0x1C]
	add r0, r0, r2
	str R0, [SP,#0x30]
	ldr R2, [SP,#0x20]
	add r1, r1, r2
	str R1, [SP,#0x34]
	ldr R2, [SP,#0x24]
	ldr R3, [SP,#0x28]
	bl object_checkPanelParameters
	tst R0, R0
	beq loc_8015EA4
	ldr R0, [SP,#0x30]
	ldr R1, [SP,#0x34]
	lsl r1, r1, #4
	orr R0, R1
	add r1, sp, #0
	strb R0, [R1,R6]
	add R6, #1
loc_8015EA4:
	add R4, #2
	b loc_8015E6E
loc_8015EA8:
	add r2, r6, #0
	add r0, r6, #0
	beq loc_8015EC2
	bl sub_8001532
	add r1, r6, #0
	svc 6
	add r0, sp, #0
	ldrb R0, [R0,R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	add r2, r6, #0
loc_8015EC2:
	add sp, sp, #0x38
	pop {r4,r6,pc}
.endfunc // sub_8015E58

.func
.thumb_func
sub_8015EC6:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #2
	ldr R1, off_8015F30 // =byte_8015F38 
	ldr R2, [R1,R0]
	mov R3, #0
	add r7, sp, #0
	bl object_getPanelsExceptCurrentFilterred
	add r4, r0, #0
	beq loc_8015F2A
	mov R6, #6
	add r7, sp, #0
loc_8015EE2:
	ldrb R0, [R7]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldrb R0, [R5,#0x13]
	sub r0, r0, r1
	cmp R0, #0
	bge loc_8015EF4
	neg R0, R0
loc_8015EF4:
	cmp R0, R6
	bge loc_8015EFC
	add r6, r0, #0
	str R1, [SP,#4]
loc_8015EFC:
	sub R4, #1
	bgt loc_8015EE2
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #3
	ldr R1, off_8015F34 // =unk_8015F40 
	add r1, r1, r0
	ldr R2, [R1]
	ldr R3, [R1,#4]
	ldr R0, [SP,#4]
	add r7, sp, #0
	bl sub_800D012
	add r4, r0, #0
	beq loc_8015F2A
	bl sub_8001532
	add r1, r4, #0
	svc 6
	add r0, sp, #0
	ldrb R0, [R0,R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_8015F2A:
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
off_8015F30: .word byte_8015F38
off_8015F34: .word unk_8015F40
byte_8015F38: .byte 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x8
unk_8015F40: .byte 0x10
	.byte  0
	.byte  0
	.byte  0
	.byte 0xA0
	.byte  0
	.byte 0x88
	.byte 0xF
	.byte 0x30 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x80
	.byte  0
	.byte 0x88
	.byte 0xF
	.byte 0x10
	.byte 0xB5
	.byte 0xA8
	.byte 0x7D 
	.byte 0xC0
	.byte  0
	.byte  6
	.byte 0x49 
	.byte 0x40 
	.byte 0x18
	.byte  2
	.byte 0x68 
	.byte 0x43 
	.byte 0x68 
	.byte  3
	.byte 0x4C 
	.byte 0xA8
	.byte 0x7C 
	.byte 0xE9
	.byte 0x7C 
	.byte 0xFF
	.byte 0xF7
	.byte 0xC
	.byte 0xFF
	.byte 0x10
	.byte 0xBD
	.byte  0
	.byte  0
	.word byte_8015F84
	.word byte_8015F74
byte_8015F74: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
byte_8015F84: .byte 0x0, 0xFF, 0x0, 0x1, 0x7F, 0x0, 0x0, 0x0, 0x80, 0xB5, 0x81, 0xB0
	.byte 0xA8, 0x7D, 0xE9, 0x7D, 0x0, 0xAF, 0xF7, 0xF7, 0x2B, 0xF9, 0x7, 0x1C
	.byte 0x8, 0xD0, 0xEB, 0xF7, 0xC8, 0xFA, 0x39, 0x1C, 0x6, 0xDF, 0x0, 0xA8
	.byte 0x40, 0x5C, 0x1, 0x9, 0x40, 0x7, 0x40, 0xF, 0x1, 0xB0, 0x80, 0xBD
	.byte 0x80, 0xB5, 0x81, 0xB0, 0xA8, 0x7D, 0xE9, 0x7D, 0x0, 0xAF, 0xF7, 0xF7
	.byte 0x57, 0xF9, 0x7, 0x1C, 0x8, 0xD0, 0xEB, 0xF7, 0xB4, 0xFA, 0x39, 0x1C
	.byte 0x6, 0xDF, 0x0, 0xA8, 0x40, 0x5C, 0x1, 0x9, 0x40, 0x7, 0x40, 0xF
	.byte 0x1, 0xB0, 0x80, 0xBD, 0x80, 0xB5, 0x81, 0xB0, 0xA8, 0x7D, 0xE9, 0x7D
	.byte 0x0, 0xAF, 0xF7, 0xF7, 0x8B, 0xF9, 0x7, 0x1C, 0x8, 0xD0, 0xEB, 0xF7
	.byte 0xA0, 0xFA, 0x39, 0x1C, 0x6, 0xDF, 0x0, 0xA8, 0x40, 0x5C, 0x1, 0x9
	.byte 0x40, 0x7, 0x40, 0xF, 0x1, 0xB0, 0x80, 0xBD
.endfunc // sub_8015EC6

.func
.thumb_func
sub_8016004:
	push {r7,lr}
	sub sp, sp, #0x18
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	add r7, sp, #0
	bl sub_801632C
	add r7, r0, #0
	beq loc_8016038
	bl sub_8001532
	add r1, r7, #0
	svc 6
	add r2, sp, #0
	ldrb R0, [R2,R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov R3, #1
	ldrb R2, [R5,#0x12]
	sub r2, r2, r0
	bge loc_8016034
	mov R3, #0
loc_8016034:
	ldrb R2, [R5,#0x16]
	eor R2, R3
loc_8016038:
	add sp, sp, #0x18
	pop {r7,pc}
	.word byte_8016040
byte_8016040: .byte 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0xD0, 0xB5, 0x8D, 0xB0, 0xA8, 0x7D, 0x7, 0x90, 0xE9, 0x7D, 0xC, 0x91, 0xC0, 0x0
	.byte 0x3D, 0x49, 0x9, 0x18, 0xA, 0x68, 0x4B, 0x68, 0x0, 0xAF, 0xF6, 0xF7, 0xFC, 0xFE, 0x7
	.byte 0x1C, 0x6E, 0xD0, 0x0, 0x24, 0x0, 0x26
loc_8016074:
	add r0, sp, #0
	ldrb R0, [R0,R6]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldrb R1, [R5,#0x12]
	ldr R2, [SP,#0x1C]
	ldr R3, [SP,#0x30]
	eor R2, R3
	tst R2, R2
	bne loc_8016090
	cmp R0, R1
	bgt loc_8016094
	b loc_801609E
loc_8016090:
	cmp R0, R1
	bge loc_801609E
loc_8016094:
	add r0, sp, #0
	ldrb R0, [R0,R6]
	add r1, sp, #0x18
	strb R0, [R1,R4]
	add R4, #1
loc_801609E:
	add R6, #1
	cmp R6, R7
	blt loc_8016074
	tst R4, R4
	beq loc_8016114
loc_80160A8:
	add r7, r4, #0
	add r1, sp, #0x18
	ldrb R0, [R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	str R0, [SP,#0x20]
	str R1, [SP,#0x24]
	ldrb R2, [R5,#0x12]
	sub r0, r0, r2
	cmp R0, #0
	bge loc_80160C2
	neg R0, R0
loc_80160C2:
	str R0, [SP,#0x28]
	ldrb R2, [R5,#0x13]
	sub r1, r1, r2
	cmp R1, #0
	bge loc_80160CE
	neg R1, R1
loc_80160CE:
	str R1, [SP,#0x2C]
	mov R6, #1
loc_80160D2:
	cmp R6, R7
	bge loc_801610E
	add r1, sp, #0x18
	ldrb R0, [R1,R6]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldrb R2, [R5,#0x12]
	sub r2, r2, r0
	cmp R2, #0
	bge loc_80160EA
	neg R2, R2
loc_80160EA:
	ldrb R3, [R5,#0x13]
	sub r3, r3, r1
	cmp R3, #0
	bge loc_80160F4
	neg R3, R3
loc_80160F4:
	ldr R4, [SP,#0x28]
	cmp R2, R4
	bgt loc_801610A
	blt loc_8016102
	ldr R4, [SP,#0x24]
	cmp R1, R4
	blt loc_8016102
loc_8016102:
	str R0, [SP,#0x20]
	str R1, [SP,#0x24]
	str R2, [SP,#0x28]
	str R3, [SP,#0x2C]
loc_801610A:
	add R6, #1
	b loc_80160D2
loc_801610E:
	ldr R0, [SP,#0x20]
	ldr R1, [SP,#0x24]
	b loc_801614E
loc_8016114:
	mov R4, #0
	mov R6, #0
loc_8016118:
	add r0, sp, #0
	ldrb R0, [R0,R6]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldrb R1, [R5,#0x12]
	ldr R2, [SP,#0x1C]
	ldr R3, [SP,#0x30]
	eor R2, R3
	tst R2, R2
	bne loc_8016134
	cmp R0, R1
	blt loc_8016138
	b loc_8016142
loc_8016134:
	cmp R0, R1
	ble loc_8016142
loc_8016138:
	add r0, sp, #0
	ldrb R0, [R0,R6]
	add r1, sp, #0x18
	strb R0, [R1,R4]
	add R4, #1
loc_8016142:
	add R6, #1
	cmp R6, R7
	blt loc_8016118
	tst R4, R4
	bne loc_80160A8
	mov R0, #0
loc_801614E:
	add sp, sp, #0x34
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
	.word dword_8016158
dword_8016158: .word 0x200000, 0x0
	.word 0x400000, 0x0
	push {lr}
	ldrb R0, [R5,#0x16]
	lsl r2, r0, #3
	ldr R1, off_801619C // =dword_80161A4 
	add r1, r1, r2
	ldr R2, [R1]
	ldr R3, [R1,#4]
	mov R1, #1
	eor R0, R1
	ldrb R1, [R5,#0x13]
	bl sub_800D086
	tst R0, R0
	bne locret_801619A
	ldrb R0, [R5,#0x16]
	lsl r2, r0, #3
	ldr R1, off_80161A0 // =dword_80161B4 
	add r1, r1, r2
	ldr R2, [R1]
	ldr R3, [R1,#4]
	mov R1, #1
	eor R0, R1
	ldrb R1, [R5,#0x13]
	bl sub_800D086
locret_801619A:
	pop {pc}
off_801619C: .word dword_80161A4
off_80161A0: .word dword_80161B4
dword_80161A4: .word 0x200020
	.word 0x0
	.word 0x400000, 0x20
dword_80161B4: .word 0x20, 0x0, 0x0, 0x20, 0xB088B580
	.word 0x93019200, 0x7CE97CA8, 0xFCA4F005, 0x9A007CE8, 0xAF029B01
	.word 0xFEE3F7F6, 0xD1074200, 0x9A007CE8, 0xAF029B01, 0xFF11F7F6
	.word 0xD0094200, 0xF7EB1C07, 0x1C39F99C, 0xA802DF06, 0x9015C40
	.word 0xF400740, 0x7CA8B403, 0xF0057CE9, 0xBC03FC9A, 0xBD80B008
.endfunc // sub_8016004

.func
.thumb_func
sub_8016218:
	push {r4,lr}
	sub sp, sp, #0x10
	bl object_getFlipDirection_800E2CA // () -> int
	str R0, [SP]
	ldrb R1, [R5,#0x12]
	add r0, r0, r1
	str R0, [SP,#4]
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #2
	ldr R1, off_8016288 // =byte_8016290 
	ldr R0, [R1,R0]
	str R0, [SP,#0xC]
loc_8016232:
	mov R4, #0
	str R1, [SP,#8]
	ldr R0, [SP,#4]
	mov R1, #2
	bl object_isValidPanel
	beq loc_801626C
loc_8016240:
	ldrb R0, [R5,#0x13]
	sub R0, #1
	mov R1, #3
	mul R0, R1
	ldr R1, off_801628C // =unk_8016298 
	add r1, r1, r0
	ldrb R1, [R1,R4]
	str R1, [SP,#8]
	ldr R0, [SP,#4]
	bl object_getPanelParameters
	ldr R1, [SP,#0xC]
	tst R0, R1
	bne loc_8016270
	add R4, #1
	cmp R4, #3
	blt loc_8016240
	ldr R0, [SP]
	ldr R1, [SP,#4]
	add r1, r1, r0
	str R1, [SP,#4]
	b loc_8016232
loc_801626C:
	mov R0, #0
	b loc_8016282
loc_8016270:
	ldr R0, [SP,#4]
	ldr R1, [SP,#8]
	mov R3, #1
	ldrb R2, [R5,#0x12]
	sub r2, r2, r0
	bge loc_801627E
	mov R3, #0
loc_801627E:
	ldrb R2, [R5,#0x16]
	eor R2, R3
loc_8016282:
	add sp, sp, #0x10
	pop {r4,pc}
	.byte  0
	.byte  0
off_8016288: .word byte_8016290
off_801628C: .word unk_8016298
byte_8016290: .byte 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x8
unk_8016298: .byte  1
	.byte  2
	.byte  3
	.byte  2
	.byte  1
	.byte  3
	.byte  3
	.byte  1
	.byte  2
	.byte  0
	.byte  0
	.byte  0
	.byte 0xB8
	.byte 0x7D 
	.byte 0xF9
	.byte 0x7D 
	.byte 0xF7
	.byte 0x46 
	.byte 0xC0
	.byte 0xB5
	.byte 0x86
	.byte 0xB0
	.byte  4
	.byte 0x90
	.byte  6
	.byte 0x91
	.byte  0
	.byte 0xAF
	.byte 0xF6
	.byte 0xF7
	.byte 0x9C
	.byte 0xFF
	.byte  0
	.byte 0x42 
	.byte 0x2C 
	.byte 0xD0
	.byte  5
	.byte 0x90
	.byte  0
	.byte 0x26 
	.byte  0
	.byte 0x27 
	.byte  4
	.byte 0x98
	.byte  6
	.byte 0x99
	.byte 0xF8
	.byte 0xF7
	.byte  2
	.byte 0xF8
	.byte  2
	.byte 0x1C
	.byte  0
	.byte 0xA9
	.byte 0x88
	.byte 0x5D 
	.byte  1
	.byte  9
	.byte 0x40 
	.byte  7
	.byte 0x40 
	.byte 0xF
	.byte 0x80
	.byte 0x18
	.byte 0xF6
	.byte 0xF7
	.byte 0xE
	.byte 0xFB
	.byte  4
	.byte 0x9A
	.byte 0x92
	.byte  0
	.byte 0xE
	.byte 0x49 
	.byte 0x89
	.byte 0x58 
	.byte  8
	.byte 0x42 
	.byte  7
	.byte 0xD1
	.byte 0xD
	.byte 0x49 
	.byte  8
	.byte 0x42 
	.byte  4
	.byte 0xD0
	.byte  0
	.byte 0xA9
	.byte  1
	.byte 0xAA
	.byte 0x88
	.byte 0x5D 
	.byte 0xD0
	.byte 0x55 
	.byte  1
	.byte 0x37 
	.byte  1
	.byte 0x36 
	.byte  5
	.byte 0x98
	.byte 0x86
	.byte 0x42 
	.byte 0xE0
	.byte 0xDB
	.byte 0x38 
	.byte 0x1C
	.byte  8
	.byte 0xD0
	.byte 0xEB
	.byte 0xF7
	.byte 0x15
	.byte 0xF9
	.byte 0x39 
	.byte 0x1C
	.byte  6
	.byte 0xDF
	.byte  1
	.byte 0xA8
	.byte 0x40 
	.byte 0x5C 
	.byte  1
	.byte  9
	.byte 0x40 
	.byte  7
	.byte 0x40 
	.byte 0xF
	.byte  6
	.byte 0xB0
	.byte 0xC0
	.byte 0xBD
	.byte  0
	.byte  0
	.word byte_8016324
	.byte  0
	.byte  0
	.byte  1
	.byte  0
byte_8016324: .byte 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x80, 0x2
.endfunc // sub_8016218

.func
.thumb_func
sub_801632C:
	push {R4-R7,lr}
	add r1, r0, #0
	mov R0, R10
	ldr R0, [R0,#0x18]
	lsl r1, r1, #2
	ldr R2, off_8016368 // =byte_801636C 
	ldr R1, [R2,R1]
	add r0, r0, r1
	mov R1, #0
	mov R6, #0
loc_8016340:
	push {r0,r1}
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	tst R0, R0
	beq loc_801635A
	ldrb R1, [R0,#0x12]
	ldrb R2, [R0,#0x13]
	add r0, r1, #0
	add r1, r2, #0
	lsl r1, r1, #4
	orr R0, R1
	strb R0, [R7,R6]
	add R6, #1
loc_801635A:
	pop {r0,r1}
	add R1, #1
	cmp R1, #4
	blt loc_8016340
	add r0, r6, #0
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8016368: .word byte_801636C
byte_801636C: .byte 0x80, 0x0, 0x0, 0x0, 0x90, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0
.endfunc // sub_801632C

.func
.thumb_func
sub_8016380:
	push {lr}
	ldr R0, [R5,#0x58]
	ldrb R0, [R0,#2]
	cmp R0, #0
	bne loc_8016390
	bl loc_8016396
	b locret_8016394
loc_8016390:
	bl loc_80164A0
locret_8016394:
	pop {pc}
.endfunc // sub_8016380

loc_8016396:
	push {lr}
	ldr R1, off_80163A4 // =off_80163A8 
	ldrb R0, [R5,#0xA]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
off_80163A4: .word off_80163A8
off_80163A8: .word sub_80163B4+1
	.word sub_801641A+1
	.word sub_8016460+1
.func
.thumb_func
sub_80163B4:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_80163E2
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R1, [R1,#0xD]
	ldrb R0, [R5,#0x16]
	eor R0, R1
	bne loc_80163D6
	ldrb R0, [R5]
	mov R1, #2
	orr R0, R1
	strb R0, [R5]
	mov R0, #8
	strh R0, [R5,#0xA]
	b locret_8016418
loc_80163D6:
	mov R0, #0
	bl sub_800AA1A
	mov R0, #4
	strb R0, [R5,#0xB]
	b loc_8016410
loc_80163E2:
	bl sub_800139A
	mov R1, #1
	tst R0, R1
	beq loc_8016410
	mov R0, #0
	bl sub_800AA06
	tst R0, R0
	beq loc_8016410
	mov R0, #0x94
	bl sound_play // () -> void
	mov R0, #2
	strh R0, [R5,#0x20]
	mov R0, #0x10
	strh R0, [R5,#0x22]
	mov R0, #0
	bl sub_8002C7A
	mov R0, #4
	strb R0, [R5,#0xA]
	pop {pc}
loc_8016410:
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
locret_8016418:
	pop {pc}
.endfunc // sub_80163B4

.func
.thumb_func
sub_801641A:
	push {lr}
	ldrh R0, [R5,#0x20]
	sub R0, #1
	strh R0, [R5,#0x20]
	bne locret_801645E
	mov R0, #2
	strh R0, [R5,#0x20]
	ldrh R0, [R5,#0x22]
	sub R0, #1
	strh R0, [R5,#0x22]
	beq loc_801644C
	push {r0}
	add r1, r0, #0
	bl sub_8002EF6
	pop {r0}
	sub R0, #0x10
	neg R0, R0
	bl sub_8002C7A
	ldrb R0, [R5]
	mov R1, #2
	orr R0, R1
	strb R0, [R5]
	b locret_801645E
loc_801644C:
	bl sub_8002CCE
	bl sub_8002F2C
	mov R0, #0
	bl sub_800AA40
	mov R0, #8
	strh R0, [R5,#0xA]
locret_801645E:
	pop {pc}
.endfunc // sub_801641A

.func
.thumb_func
sub_8016460:
	push {lr}
	bl sub_800139A
	lsr r0, r0, #2
	bcc locret_801649E
	bl sub_802D234
	cmp R0, #6
	beq loc_801647E
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R1, [R1,#0xD]
	ldrb R0, [R5,#0x16]
	eor R0, R1
	beq loc_8016496
loc_801647E:
	mov R0, #0
	mov R1, #0
	ldrh R2, [R5,#0x28]
	cmp r2, #0x49 
	blt loc_8016492
	cmp r2, #0x4e 
	bgt loc_8016492
	mov r0, #0x20 
	neg R0, R0
	mov R1, #3
loc_8016492:
	bl sub_801DC7C
loc_8016496:
	mov R0, #1
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
locret_801649E:
	pop {pc}
.endfunc // sub_8016460

loc_80164A0:
	push {lr}
	ldr R1, off_80164B0 // =off_80164B4 
	ldrb R0, [R5,#0xA]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.byte 0, 0
off_80164B0: .word off_80164B4
off_80164B4: .word sub_80164C0+1
	.word sub_8016520+1
	.word sub_801657E+1
.func
.thumb_func
sub_80164C0:
	push {lr}
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
	ldrb R0, [R5,#0x12]
	strb R0, [R5,#0x14]
	ldrb R1, [R5,#0x13]
	strb R1, [R5,#0x15]
	bl sub_801BB1C
.endfunc // sub_80164C0

	bl sub_801A074 // () -> void
	mov R0, #4
	strb R0, [R5,#0xB]
	mov R0, #0x94
	bl sound_play // () -> void
	mov R0, #0x14
	strh R0, [R5,#0x20]
	mov R0, #0x1E
	strh R0, [R5,#0x22]
	mov R1, #0x1F
	add r0, r1, #0
	lsl r0, r0, #5
	add r0, r0, r1
	lsl r0, r0, #5
	add r0, r0, r1
	bl sub_8002ED0
	ldr R0, dword_801651C // =0xFFFF 
	bl object_setInvulnerableTime
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov R4, #6
	bl sub_80E05F6
	ldrb R1, [R0]
	mov R2, #4
	orr R1, R2
	strb R1, [R0]
	mov R0, #4
	strb R0, [R5,#0xA]
	pop {pc}
dword_801651C: .word 0xFFFF
.func
.thumb_func
sub_8016520:
	push {lr}
	ldrh R0, [R5,#0x20]
	cmp R0, #0
	beq loc_8016552
	ldrh R0, [R5,#0x20]
	sub R0, #1
	strh R0, [R5,#0x20]
	bne loc_801655A
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov R4, #0x10
	lsl r4, r4, #0x10
	add r3, r3, r4
	mov R4, #3
	bl sub_80E05F6
	ldrb R1, [R0]
	mov R2, #4
	orr R1, R2
	strb R1, [R0]
	mov r0, #0x2a 
	add R0, #0xFF
	bl sound_play // () -> void
loc_8016552:
	ldrh R0, [R5,#0x22]
	sub R0, #1
	strh R0, [R5,#0x22]
	beq loc_8016574
loc_801655A:
	ldrh R0, [R5,#0x22]
	add r1, r0, #0
	lsl r1, r1, #5
	add r1, r1, r0
	lsl r1, r1, #5
	add r0, r0, r1
	bl sub_8002ED0
	ldrb R0, [R5]
	mov R1, #2
	orr R0, R1
	strb R0, [R5]
	b locret_801657C
loc_8016574:
	bl sub_8002EE8
	mov R0, #8
	strh R0, [R5,#0xA]
locret_801657C:
	pop {pc}
.endfunc // sub_8016520

.func
.thumb_func
sub_801657E:
	push {lr}
	bl sub_802D234
	cmp R0, #6
	beq loc_8016594
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R1, [R1,#0xD]
	ldrb R0, [R5,#0x16]
	eor R0, R1
	beq loc_801659C
loc_8016594:
	mov R0, #0
	mov R1, #0
	bl sub_801DC7C
loc_801659C:
	bl sub_800EB08
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
.endfunc // sub_801657E

	mov R0, #1
	bl sub_801A07C
	mov R0, #1
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	pop {pc}
.func
.thumb_func
sub_80165B8:
	mov R0, #8
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	mov PC, LR
.endfunc // sub_80165B8

.func
.thumb_func
sub_80165C2:
	push {lr}
	bl object_getFlag // () -> int
	ldr R1, dword_80165EC // =0x40000000 
	tst R0, R1
	bne loc_80165E0
	bl battle_isPaused
	bne locret_80165E4
	ldr R1, off_80165E8 // =off_80165F0 
	ldrb R0, [R5,#0xA]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
loc_80165E0:
	bl sub_8016EC4
locret_80165E4:
	pop {pc}
	.balign 4, 0x00
off_80165E8: .word off_80165F0
dword_80165EC: .word 0x40000000
off_80165F0: .word sub_80165F8+1
	.word sub_801664E+1
.endfunc // sub_80165C2

.func
.thumb_func
sub_80165F8:
	push {lr}
	bl sub_801A074 // () -> void
	bl sub_801A5E2
	bl sub_80101C4
	bl sub_801DC36
	mov R0, #0
	strb R0, [R5,#0x1A]
	sub R0, #1
	strh R0, [R5,#0x2A]
	mov R0, #0
	str R0, [R5,#0x4C]
	bl sub_801A7F4
	ldrh R0, [R5,#0x28]
	bl sub_80182B4
	ldrb R1, [R0,#1]
	cmp R1, #0
	bne loc_801663A
	ldrb R1, [R0]
	cmp R1, #4
	bge loc_8016634
	ldrb R0, [R0,#2]
	bl sub_802D644
	b loc_801663A
loc_8016634:
	ldrb R0, [R0,#2]
	bl sub_802D65E
loc_801663A:
	ldrb R0, [R5,#5]
	cmp R0, #1
	bge loc_8016644
	bl sub_800A11C
loc_8016644:
	bl sub_802EF5C
	mov R0, #4
	strh R0, [R5,#0xA]
	pop {pc}
.endfunc // sub_80165F8

.func
.thumb_func
sub_801664E:
	push {r4,r7,lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_8016672
	bl battle_isTimeStop
	bne locret_80166AC
	bl sub_800AE44
	mov R4, #0
	ldr R7, [R5,#0x58]
	add r7, #0x74 
	bl sub_80E1A6A
	mov r0, #0x20 
	strh R0, [R5,#0x20]
	mov R0, #4
	strb R0, [R5,#0xB]
loc_8016672:
	ldrh R0, [R5,#0x20]
	sub R0, #1
	strh R0, [R5,#0x20]
	bge loc_80166A4
	bl sub_802CDD0
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
	add r0, r5, #0
	bl sub_80077B4
	mov R1, #0
	ldr R0, [R5,#0x58]
	str R1, [R0,#0x74]
	bl sub_8011020
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
	mov R0, #8
	str R0, [R5,#8]
	b locret_80166AC
loc_80166A4:
	lsr r0, r0, #2
	bcc locret_80166AC
	bl sprite_forceWhitePallete
locret_80166AC:
	pop {r4,r7,pc}
.endfunc // sub_801664E

.func
.thumb_func
sub_80166AE:
	push {lr}
	bl sub_800F3E8
	pop {pc}
.endfunc // sub_80166AE

loc_80166B6:
	push {lr}
	ldr R1, off_80166C4 // =off_80166C8 
	ldrb R0, [R5,#0x1F]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
off_80166C4: .word off_80166C8
off_80166C8: .word sub_80166D0+1
	.word sub_8016730+1
.func
.thumb_func
sub_80166D0:
	push {r6,r7,lr}
	mov R0, #1
	lsl r0, r0, #0xc
	bl object_setFlag // (int a1) -> void
	ldrh R0, [R5,#0x14]
	strh R0, [R5,#0x12]
	bl sub_800E29C // () -> void
	bl sub_801A066
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
.endfunc // sub_80166D0

	bl sub_800E468
	strb R0, [R5,#0x1C]
	strb R1, [R5,#0x1D]
	strb R2, [R5,#0x1B]
	tst R2, R2
	beq loc_8016716
	ldrb R3, [R5,#0x12]
	add r0, r0, r3
	ldrb R3, [R5,#0x13]
	add r1, r1, r3
	strb R0, [R5,#0x14]
	strb R1, [R5,#0x15]
	bl sub_801BB1C
	mov R0, #4
	strb R0, [R5,#0x1E]
	mov R0, #4
	strb R0, [R5,#0x1F]
	pop {r6,r7,pc}
loc_8016716:
	ldrb R0, [R5,#0xF]
	cmp R0, #3
	bne loc_8016722
	mov R0, #5
	ldr R1, [R5,#0x58]
	strh R0, [R1,#0x38]
loc_8016722:
	mov R0, #0
	strb R0, [R5,#0xF]
	mov R0, #1
	lsl r0, r0, #0xc
	bl object_clearFlag // (int bitfield) -> void
	pop {r6,r7,pc}
.func
.thumb_func
sub_8016730:
	push {r4,r6,r7,lr}
	ldrb R0, [R5,#0x1E]
	sub R0, #1
	strb R0, [R5,#0x1E]
	bgt loc_801680E
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
	ldrh R0, [R5,#0x14]
	strh R0, [R5,#0x12]
	bl sub_800E29C // () -> void
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_800C90A
	ldrb R4, [R0,#2]
	cmp R4, #7
	bne loc_8016768
	ldr R0, [R5,#0x54]
	ldrb R0, [R0,#2]
	cmp R0, #2
	beq loc_8016768
	ldrb R0, [R5,#0x1B]
	add R0, #1
	strb R0, [R5,#0x1B]
	b loc_80167B2
loc_8016768:
	cmp R4, #9
	blt loc_80167B2
	cmp R4, #0xC
	bgt loc_80167B2
	bl object_getFlag // () -> int
	mov r1, #0x24 
	tst R0, R1
	bne loc_80167B2
	ldrb R0, [R5,#0xF]
	cmp R0, #3
	bne loc_8016788
	mov R0, #5
	ldr R1, [R5,#0x58]
	strh R0, [R1,#0x38]
	b loc_80167E6
loc_8016788:
	mov R0, #0x1C
	ldrsb R0, [R5,R0]
	mov R1, #0x1D
	ldrsb R1, [R5,R1]
	ldrb R2, [R5,#0x16]
	bl sub_801683C
	ldr R1, [R5,#0x54]
	strb R0, [R1,#0xC]
	mov R0, #3
	strb R0, [R5,#0xF]
	bl sub_800E468
	strb R0, [R5,#0x1C]
	strb R1, [R5,#0x1D]
	tst R2, R2
	beq loc_80167E6
	ldrb R0, [R5,#0x1B]
	add R0, #1
	strb R0, [R5,#0x1B]
	b loc_80167B2
loc_80167B2:
	ldrb R0, [R5,#0x1B]
	sub R0, #1
	strb R0, [R5,#0x1B]
	ble loc_80167E6
	mov R2, #0x1C
	ldrsb R2, [R5,R2]
	ldrb R0, [R5,#0x14]
	add r0, r0, r2
	mov R2, #0x1D
	ldrsb R2, [R5,R2]
	ldrb R1, [R5,#0x15]
	add r1, r1, r2
	add r6, r0, #0
	add r7, r1, #0
	bl sub_800E5AC
	beq loc_80167E6
	mov R0, #4
	strb R0, [R5,#0x1E]
	add r0, r6, #0
	add r1, r7, #0
	strb R0, [R5,#0x14]
	strb R1, [R5,#0x15]
	bl sub_801BB1C
	pop {r4,r6,r7,pc}
loc_80167E6:
	mov R0, #0x1C
	ldrsb R0, [R5,R0]
	mov R1, #0x1D
	ldrsb R1, [R5,R1]
	ldrb R2, [R5,#0x16]
	bl sub_801683C
	ldr R1, [R5,#0x54]
	strb R0, [R1,#0xC]
	mov R0, #0
	strb R0, [R5,#0x1F]
	mov R0, #1
	lsl r0, r0, #0xc
	bl object_clearFlag // (int bitfield) -> void
	mov R0, #0
	strb R0, [R5,#0xF]
	bl sub_801A066
	pop {r4,r6,r7,pc}
loc_801680E:
	mov R0, #0x1C
	ldrsb R0, [R5,R0]
	ldr R2, dword_8016834 // =0xA0000 
	mul R2, R0
	ldr R0, [R5,#0x34]
	add r0, r0, r2
	str R0, [R5,#0x34]
	mov R0, #0x1D
	ldrsb R0, [R5,R0]
	ldr R2, dword_8016838 // =0x60000 
	mul R2, R0
	ldr R0, [R5,#0x38]
	add r0, r0, r2
	str R0, [R5,#0x38]
	bl sub_800E2AC
	bl sub_801A066
	pop {r4,r6,r7,pc}
dword_8016834: .word 0xA0000
dword_8016838: .word 0x60000
.endfunc // sub_8016730

.func
.thumb_func
sub_801683C:
	tst R2, R2
	beq loc_8016842
	neg R0, R0
loc_8016842:
	mov R3, #4
	tst R0, R0
	beq loc_801684E
	bgt loc_801685C
	mov R3, #3
	b loc_801685C
loc_801684E:
	mov R3, #1
	tst R1, R1
	beq loc_801685A
	blt loc_801685C
	mov R3, #2
	b loc_801685C
loc_801685A:
	mov R3, #5
loc_801685C:
	add r0, r3, #0
	mov PC, LR
.endfunc // sub_801683C

.func
.thumb_func
sub_8016860:
	push {r4,lr}
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #0x17
	blt loc_8016870
	cmp R0, #0x18
	ble locret_80168A2
loc_8016870:
	ldrb R0, [R5,#9]
	cmp R0, #0
	beq locret_80168A2
	cmp r0, #0x56 
	beq locret_80168A2
	bl object_getFlag // () -> int
	mov R1, #8
	tst R0, R1
	beq locret_80168A2
	mov R4, #5
	bl sub_802D234
	cmp R0, #1
	bne loc_8016890
	mov R4, #0
loc_8016890:
	bl sub_800A704
	mov R1, #0x1F
	and R0, R1
	ldr R1, off_80168A4 // =unk_80168A8 
	ldrb R0, [R1,R0]
	lsl R0, R4
	bl sub_8002ED0
locret_80168A2:
	pop {r4,pc}
off_80168A4: .word unk_80168A8
unk_80168A8: .byte  0
	.byte  2
	.byte  4
	.byte  6
	.byte  8
	.byte 0xA
	.byte 0xC
	.byte 0xE
	.byte 0x10
	.byte 0x12
	.byte 0x14
	.byte 0x16
	.byte 0x18
	.byte 0x1A
	.byte 0x1C
	.byte 0x1E
	.byte 0x1E
	.byte 0x1C
	.byte 0x1A
	.byte 0x18
	.byte 0x16
	.byte 0x14
	.byte 0x12
	.byte 0x10
	.word byte_80A0C0E
	.byte  6
	.byte  4
	.byte  2
	.byte  0
.endfunc // sub_8016860

.func
.thumb_func
sub_80168C8:
	push {lr}
	bl object_getFlag // () -> int
	mov R1, #8
	lsl r1, r1, #8
	tst R0, R1
	beq locret_80168E6
	bl sub_800A704
	mov R1, #2
	and R0, R1
	ldr R1, off_80168E8 // =byte_80168EC 
	ldrh R0, [R1,R0]
	bl sub_8002ED0
locret_80168E6:
	pop {pc}
off_80168E8: .word byte_80168EC
byte_80168EC: .byte 0x0, 0x0, 0xFF, 0x3
.endfunc // sub_80168C8

.func
.thumb_func
sub_80168F0:
	push {lr}
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x10
	tst R0, R1
	beq locret_8016904
	ldr R0, byte_8016908 // =0x94 
	bl sub_8002ED0
locret_8016904:
	pop {pc}
	.balign 4, 0x00
byte_8016908: .byte 0x94, 0x7E
.endfunc // sub_80168F0

.func
.thumb_func
sub_801690A:
	push {lr}
	bl object_getFlag // () -> int
	mov r1, #0x40 
	lsl r1, r1, #8
	tst R0, R1
	beq locret_8016928
	bl sub_800A704
	mov R1, #2
	and R0, R1
	ldr R1, off_801692C // =byte_8016930 
	ldrh R0, [R1,R0]
	bl sub_8002ED0
locret_8016928:
	pop {pc}
	.balign 4, 0x00
off_801692C: .word byte_8016930
byte_8016930: .byte 0x0, 0x0, 0xFF, 0xFF
.endfunc // sub_801690A

.func
.thumb_func
sub_8016934:
	push {lr}
	bl battle_isTimeStop
	bne loc_8016944
	ldrb R0, [R5]
	mov R1, #2
	orr R0, R1
	strb R0, [R5]
loc_8016944:
	bl object_getFlag // () -> int
	ldr R1, off_8016A28 // =0x100 
	tst R0, R1
	bne locret_80169BC
	ldr R1, dword_8016A2C // =0x202 
	tst R0, R1
	beq loc_8016964
	ldr R0, [R5,#0x54]
	ldrh R0, [R0,#0x24]
	lsr r0, r0, #2
	bcc loc_8016964
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
loc_8016964:
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0xD]
	ldrb R1, [R5,#0x16]
	eor R0, R1
	beq loc_8016998
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_80103BC
	tst R0, R0
	beq locret_80169BC
	push {r5}
	add r5, r0, #0
	bl object_getFlag // () -> int
	ldr R1, off_8016A30 // =0x2000 
	tst R0, R1
	pop {r5}
	beq locret_80169BC
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
	b locret_80169BC
loc_8016998:
	ldrb R0, [R5,#9]
	cmp R0, #0
	beq locret_80169BC
	ldr R0, [R5,#0x58]
	ldrb R0, [R0]
	cmp R0, #2
	bne locret_80169BC
	mov R0, #5
	bl sub_801DA48
	bl object_getFlag // () -> int
	ldr R1, off_8016A34 // =0x2000 
	tst R0, R1
	beq locret_80169BC
	mov R0, #5
	bl sub_801DACC
locret_80169BC:
	pop {pc}
.endfunc // sub_8016934

.func
.thumb_func
sub_80169BE:
	push {lr}
	bl battle_isTimeStop
	bne loc_80169CE
	ldrb R0, [R5]
	mov R1, #2
	orr R0, R1
	strb R0, [R5]
loc_80169CE:
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0xD]
	ldrb R1, [R5,#0x16]
	eor R0, R1
	beq loc_8016A02
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_80103BC
	tst R0, R0
	beq locret_8016A26
	push {r5}
	add r5, r0, #0
	bl object_getFlag // () -> int
	ldr R1, off_8016A30 // =0x2000 
	tst R0, R1
	pop {r5}
	beq locret_8016A26
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
	b locret_8016A26
loc_8016A02:
	ldrb R0, [R5,#9]
	cmp R0, #0
	beq locret_8016A26
	ldr R0, [R5,#0x58]
	ldrb R0, [R0]
	cmp R0, #2
	bne locret_8016A26
	mov R0, #5
	bl sub_801DA48
	bl object_getFlag // () -> int
	ldr R1, off_8016A34 // =0x2000 
	tst R0, R1
	beq locret_8016A26
	mov R0, #5
	bl sub_801DACC
locret_8016A26:
	pop {pc}
off_8016A28: .word 0x100
dword_8016A2C: .word 0x202
off_8016A30: .word 0x2000
off_8016A34: .word 0x2000
.endfunc // sub_80169BE

.func
.thumb_func
sub_8016A38:
	push {r4,lr}
	ldr R4, off_8016A60 // =dword_8016A68 
	cmp R0, #0x18
	bne loc_8016A42
	ldr R4, off_8016A64 // =dword_8016A9C 
loc_8016A42:
	bl sub_800A704
	mov R1, #0x1A
	svc 6
	lsl r1, r1, #1
	ldrh R0, [R4,R1]
	bl sub_8002ED0
	pop {r4,pc}
	.word 0x0
	.word 0x0
	.word 0x0
off_8016A60: .word dword_8016A68
off_8016A64: .word dword_8016A9C
dword_8016A68: .word 0x0
	.word 0x4610041
	.word 0xCC20881
	.word 0x110210E2
	.word 0x19831543
	.word 0x21E41DC3
	.word 0x22042204
	.word 0x1DC321E4
	.word 0x15431983
	.word 0x10E21102
	.word 0xCA20CC2
	.word byte_8610881
	.word 0x4210441
dword_8016A9C: .word 0x0
	.word 0x4230402
	.word byte_8660444
	.word unk_8880887
	.word 0xCCC0CAA
	.word 0x110F0CEE
	.word 0x11101110
	.word 0xCEE110F
	.word 0xCAA0CCC
	.word unk_8870888
	.word unk_8650866
	.word 0x4430444
	.word 0x4210422
.endfunc // sub_8016A38

.func
.thumb_func
sub_8016AD0:
	push {lr}
	bl sub_800A704
	mov R1, #0x1A // (sub_8016B02 - 0x8016AE8)
	svc 6
	ldr R0, off_8016AE4 // =off_8016AE8 
	ldrb R0, [R0,R1]
	bl sprite_setPallete // (int pallete) -> void
	pop {pc}
off_8016AE4: .word off_8016AE8
off_8016AE8: .word unk_2020000
	.word 0x2020202, 0x3030303, 0x3030303, 0x2020303, 0x2020202
	.byte 0x2, 0x2
.endfunc // sub_8016AD0

.func
.thumb_func
sub_8016B02:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_8016B20
	ldr R0, dword_8016BD4 // =0x100000 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_800F394
	bl sub_80101C4
	mov R0, #0
	str R0, [R5,#0x4C]
	mov R0, #4
	strb R0, [R5,#0xB]
loc_8016B20:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0xb
	tst R0, R1
	bne locret_8016B34
	ldr R0, [R5,#0x5C]
	str R0, [R5,#8]
	mov R0, #0
	str R0, [R5,#0x5C]
locret_8016B34:
	pop {pc}
.endfunc // sub_8016B02

.func
.thumb_func
sub_8016B36:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_8016B5C
	ldr R0, dword_8016BD4 // =0x100000 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_800F3B0
	bl sub_80101C4
	mov R0, #0
	str R0, [R5,#0x4C]
	mov R0, #0x19
	add R0, #0xFF
	bl sound_play // () -> void
	mov R0, #4
	strb R0, [R5,#0xB]
loc_8016B5C:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x10
	tst R0, R1
	bne locret_8016B70
	ldr R0, [R5,#0x5C]
	str R0, [R5,#8]
	mov R0, #0
	str R0, [R5,#0x5C]
locret_8016B70:
	pop {pc}
.endfunc // sub_8016B36

.func
.thumb_func
sub_8016B72:
	push {r4,lr}
	ldr R4, [R5,#0x58]
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_8016B9A
	ldr R0, dword_8016BD4 // =0x100000 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_800F3CC
	bl sub_80101C4
	mov R0, #0
	str R0, [R5,#0x4C]
	mov r0, #0x2e 
	add R0, #0xFF
	bl sound_play // () -> void
	mov R0, #4
	strb R0, [R5,#0xB]
loc_8016B9A:
	ldr R0, [R5,#0x54]
	mov r2, #0x2c 
	ldrsh R1, [R0,R2]
	lsr r1, r1, #2
	mov R0, #0x1F
	and R0, R1
	ldr R1, off_8016BD8 // =byte_8016BDC 
	ldrsb R0, [R1,R0]
	ldrh R1, [R4,#0x3C]
	add r0, r0, r1
	strh R0, [R5,#0x3E]
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x1f
	tst R0, R1
	bne locret_8016BD0
	mov r0, #0x25 
	add R0, #0xFF
	bl sound_play // () -> void
	ldr R0, [R5,#0x5C]
	str R0, [R5,#8]
	mov R0, #0
	str R0, [R5,#0x5C]
	ldrh R0, [R4,#0x3C]
	strh R0, [R5,#0x3E]
locret_8016BD0:
	pop {r4,pc}
	.balign 4, 0x00
dword_8016BD4: .word 0x100000
off_8016BD8: .word byte_8016BDC
byte_8016BDC: .byte 0x1, 0x2, 0x3, 0x4, 0x4, 0x5, 0x5, 0x6, 0x6, 0x6, 0x5, 0x4, 0x3, 0x2, 0x1, 0x0, 0xFF
	.byte 0xFE, 0xFD, 0xFC, 0xFC, 0xFB, 0xFB, 0xFA, 0xFA, 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF, 0x0
.endfunc // sub_8016B72

.func
.thumb_func
sub_8016BFC:
	push {lr}
	ldrb R0, [R5,#0x18]
	tst R0, R0
	bne loc_8016C14
	ldrh R0, [R5,#0x36]
	strh R0, [R5,#0x30]
	ldrh R0, [R5,#0x3E]
	strh R0, [R5,#0x32]
	mov R0, #0
	strb R0, [R5,#0x19]
	mov R0, #4
	strb R0, [R5,#0x18]
loc_8016C14:
	ldr R0, [R5,#0x54]
	mov R1, #0x80
	ldrh R1, [R0,R1]
	tst R1, R1
	beq loc_8016C22
	mov R0, #0x1E
	strb R0, [R5,#0x19]
loc_8016C22:
	ldrb R0, [R5,#0x19]
	tst R0, R0
	beq loc_8016C44
	sub R0, #1
	strb R0, [R5,#0x19]
	ldrh R1, [R5,#0x30]
	lsl r1, r1, #0x10
	ldr R2, [R5,#0x38]
	ldrh R3, [R5,#0x32]
	lsl r3, r3, #0x10
	mov R0, #3
	bl sub_801BDDE
	mov r0, #0x34 
	add r0, r0, r5
	stmia R0!, {R1-R3}
	b locret_8016C4C
loc_8016C44:
	ldrh R0, [R5,#0x30]
	strh R0, [R5,#0x36]
	ldrh R0, [R5,#0x32]
	strh R0, [R5,#0x3E]
locret_8016C4C:
	pop {pc}
.endfunc // sub_8016BFC

.func
.thumb_func
sub_8016C4E:
	push {r4,lr}
	ldr R4, [R5,#0x58]
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne locret_8016C88
	bl sub_801BB78
	ldr R0, [R5,#0x54]
	bl sub_80198CE
	bl sub_800A104
	ldrb R0, [R4,#0xE]
	cmp R0, #0xFF
	beq loc_8016C72
	ldrh R1, [R5,#0x24]
	mov R0, #0xFF
	strb R0, [R4,#0xE]
loc_8016C72:
	mov R0, #4
	strb R0, [R5,#0xB]
	ldrb R1, [R4,#2]
	cmp R1, #0
	beq locret_8016C88
	add r0, r4, #0
	beq loc_8016C84
	bl sub_800ED80
loc_8016C84:
	bl object_freeMemory
locret_8016C88:
	pop {r4,pc}
.endfunc // sub_8016C4E

.func
.thumb_func
sub_8016C8A:
	push {lr}
	bl sub_801BB78
	ldr R0, [R5,#0x54]
	bl sub_80198CE
	bl object_freeMemory
	pop {pc}
.endfunc // sub_8016C8A

.func
.thumb_func
sub_8016C9C:
	push {lr}
	bl object_freeMemory
	pop {pc}
.endfunc // sub_8016C9C

.func
.thumb_func
sub_8016CA4:
	push {lr}
	bl battle_isBattleOver
	tst R0, R0
	bne locret_8016CDE
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R1, [R1,#0xD]
	ldrb R0, [R5,#0x16]
	eor R1, R0
	beq locret_8016CDE
	mov R1, #1
	eor R0, R1
	bl sub_8015B54
	cmp R0, #2
	bne locret_8016CDE
	ldr R3, [R5,#0x54]
	ldrb R0, [R3,#0xD]
	tst R0, R0
	beq locret_8016CDE
	bl sub_800A704
	mov R1, #2
	and R0, R1
	ldr R1, off_8016CE0 // =byte_8016CE4 
	ldrh R0, [R1,R0]
	bl sub_8002ED0
locret_8016CDE:
	pop {pc}
off_8016CE0: .word byte_8016CE4
byte_8016CE4: .byte 0x0, 0x0, 0x0, 0x7C
.endfunc // sub_8016CA4

.func
.thumb_func
sub_8016CE8:
	push {lr}
	ldr R1, off_8016CF8 // =off_8016CFC 
	ldrb R0, [R5,#0xD]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8016CF8: .word off_8016CFC
off_8016CFC: .word sub_8016D08+1
	.word sub_8016D8C+1
	.word sub_8016E3C+1
.endfunc // sub_8016CE8

.func
.thumb_func
sub_8016D08:
	push {r6,r7,lr}
	mov R0, #1
	lsl r0, r0, #0x14
	bl object_setFlag // (int a1) -> void
	bl sub_800F404
	mov R0, #0
	str R0, [R5,#0x4C]
	ldrh R0, [R5,#0x14]
	strh R0, [R5,#0x12]
	bl sub_800E29C // () -> void
	bl sub_801A04C
	ldr R0, dword_8016D80 // =0x1000 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80101C4
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
.endfunc // sub_8016D08

	bl sub_800E45E
	strb R0, [R5,#0x1C]
	strb R1, [R5,#0x1D]
	strb R2, [R5,#0xB]
	tst R2, R2
	beq loc_8016D74
	mov R1, #0x1C
	ldrsb R1, [R5,R1]
	ldr R0, dword_8016D84 // =0xA0000 
	mul R0, R1
	str R0, [R5,#0x40]
	ldrb R6, [R5,#0x12]
	add r6, r6, r1
	mov R1, #0x1D
	ldrsb R1, [R5,R1]
	ldr R0, dword_8016D88 // =0x60000 
	mul R0, R1
	str R0, [R5,#0x44]
	ldrb R7, [R5,#0x13]
	add r7, r7, r1
	add r0, r6, #0
	add r1, r7, #0
	strb R0, [R5,#0x14]
	strb R1, [R5,#0x15]
	bl sub_801BB1C
	mov R0, #4
	strb R0, [R5,#0xD]
	pop {r6,r7,pc}
loc_8016D74:
	mov R0, #0x18
	strb R0, [R5,#0xA]
	mov R0, #8
	strb R0, [R5,#0xD]
	pop {r6,r7,pc}
	.byte 0, 0
dword_8016D80: .word 0x1000
dword_8016D84: .word 0xA0000
dword_8016D88: .word 0x60000
.func
.thumb_func
sub_8016D8C:
	push {r4,lr}
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	add r2, r0, #0
	add r4, r1, #0
	ldr R1, [R5,#0x34]
	ldr R0, [R5,#0x40]
	add r0, r0, r1
	str R0, [R5,#0x34]
	bl sub_800E6E8
	tst R0, R0
	bne loc_8016DBC
	add r2, r4, #0
	ldr R1, [R5,#0x38]
	ldr R0, [R5,#0x44]
	add r0, r0, r1
	str R0, [R5,#0x38]
	bl sub_800E6E8
	tst R0, R0
	beq loc_8016E2A
loc_8016DBC:
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_800C90A
	ldrb R4, [R0,#2]
	cmp R4, #7
	bne loc_8016DE2
	ldr R0, [R5,#0x54]
	ldrb R0, [R0,#2]
	cmp R0, #2
	beq loc_8016DE2
	ldrb R0, [R5,#0xB]
	add R0, #1
	strb R0, [R5,#0xB]
	b loc_8016DE4
loc_8016DE2:
	b loc_8016DE4
loc_8016DE4:
	ldrb R0, [R5,#0xB]
	sub R0, #1
	strb R0, [R5,#0xB]
	ble loc_8016E14
	mov R2, #0x1C
	ldrsb R2, [R5,R2]
	ldrb R0, [R5,#0x14]
	add r0, r0, r2
	mov R2, #0x1D
	ldrsb R2, [R5,R2]
	ldrb R1, [R5,#0x15]
	add r1, r1, r2
	add r6, r0, #0
	add r7, r1, #0
	bl sub_800E5AC
	beq loc_8016E14
	add r0, r6, #0
	add r1, r7, #0
	strb R0, [R5,#0x14]
	strb R1, [R5,#0x15]
	bl sub_801BB1C
	pop {r4,pc}
loc_8016E14:
	ldrh R0, [R5,#0x14]
	strh R0, [R5,#0x12]
	bl sub_800E29C // () -> void
	bl sub_801A04C
	mov R0, #0x14
	strb R0, [R5,#0xA]
	mov R0, #8
	strb R0, [R5,#0xD]
	pop {r4,pc}
loc_8016E2A:
	bl sub_800E2AC
	bl sub_801A04C
	pop {r4,pc}
	.word 0xA0000, 0x60000
.endfunc // sub_8016D8C

.func
.thumb_func
sub_8016E3C:
	push {lr}
	ldrb R0, [R5,#0xA]
	sub R0, #1
	strb R0, [R5,#0xA]
	bge locret_8016E5E
	ldr R0, dword_8016E60 // =0x101000 
	bl object_clearFlag // (int bitfield) -> void
	mov R0, #0x10
	bl sub_801A176
	mov R0, #0
	strb R0, [R5,#0x1F]
	ldr R0, [R5,#0x5C]
	str R0, [R5,#8]
	mov R0, #0
	str R0, [R5,#0x5C]
locret_8016E5E:
	pop {pc}
dword_8016E60: .word 0x101000
.endfunc // sub_8016E3C

.func
.thumb_func
sub_8016E64:
	push {lr}
	ldrb R0, [R5]
	mov R1, #8
	tst R0, R1
	bne locret_8016EBE
	bl battle_isTimeStop
	bne locret_8016EBE
	ldrh R0, [R5,#0x28]
	cmp r0, #0x49 
	blt loc_8016E7E
	cmp r0, #0x4e 
	ble loc_8016E84
loc_8016E7E:
	ldrh R0, [R5,#0x24]
	tst R0, R0
	beq locret_8016EBE
loc_8016E84:
	bl sub_802D234
	cmp R0, #1
	beq loc_8016E92
	bl battle_isPaused
	bne locret_8016EBE
loc_8016E92:
	bl object_getFlag // () -> int
	ldr R1, dword_8016EC0 // =0x80110C00 
	tst R0, R1
	bne locret_8016EBE
	bl sub_801A180
	mov R1, #8
	tst R0, R1
	bne locret_8016EBE
	ldrb R0, [R5,#0x10]
	ldrb R1, [R5,#0x11]
	cmp R0, R1
	beq loc_8016EBA
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb R0, [R5,#0x10]
	strb R0, [R5,#0x11]
loc_8016EBA:
	bl sprite_update
locret_8016EBE:
	pop {pc}
dword_8016EC0: .word 0x80110C00
.endfunc // sub_8016E64

.func
.thumb_func
sub_8016EC4:
	push {lr}
	ldr R1, off_8016ED4 // =off_8016ED8 
	ldrb R0, [R5,#0xA]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8016ED4: .word off_8016ED8
off_8016ED8: .word sub_8016EE0+1
	.word sub_8016F1A+1
.endfunc // sub_8016EC4

.func
.thumb_func
sub_8016EE0:
	push {lr}
	bl sub_801A074 // () -> void
	bl sub_801A5E2
	bl sub_80101C4
	bl sub_801DC36
	mov R0, #0
	strb R0, [R5,#0x1A]
	sub R0, #1
	strh R0, [R5,#0x2A]
	mov R0, #0
	str R0, [R5,#0x4C]
	bl sub_801A7F4
	ldrb R0, [R5,#5]
	cmp R0, #1
	bge loc_8016F0C
	bl sub_800A11C
loc_8016F0C:
	bl sub_802EF5C
	mov R0, #0
	strh R0, [R5,#0x24]
	mov R0, #4
	strh R0, [R5,#0xA]
	pop {pc}
.endfunc // sub_8016EE0

.func
.thumb_func
sub_8016F1A:
	push {r4,lr}
	bl battle_isTimeStop
	bne locret_8016F54
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov R4, #0x14
	bl sub_80E05F6
	ldrb R1, [R0]
	mov R2, #4
	orr R1, R2
	strb R1, [R0]
	bl sub_802CDD0
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
	ldr R0, [R5,#0x58]
	ldr R0, [R0,#0x74]
	bl sub_80E1A86
	add r0, r5, #0
	bl sub_80077B4
	mov R0, #8
	str R0, [R5,#8]
locret_8016F54:
	pop {r4,pc}
.endfunc // sub_8016F1A

.func
.thumb_func
sub_8016F56:
	push {r4,r6,r7,lr}
	bl sub_800F35C
	ldr R6, [R5,#0x58]
	ldrh R0, [R5,#0x28]
	bl sub_800F214
	add r7, r0, #0
	mov R0, #0x80
	ldrb R1, [R7]
	ldrb R2, [R7,#1]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb R0, [R7,#7]
	cmp R0, #0
	bne loc_8016F7C
	bl sub_8002F90 // () -> void
	b loc_8016F80
loc_8016F7C:
	bl sub_8002E3C
loc_8016F80:
	mov R0, #0
	strb R0, [R5,#0x10]
	mov R1, #0xFF
	strb R1, [R5,#0x11]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
.endfunc // sub_8016F56

	bl sub_800F334
	bl sprite_setPallete // (int pallete) -> void
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	ldrb R0, [R7,#5]
	ldrb R1, [R5,#0xE]
	orr R1, R0
	strb R1, [R5,#0xE]
	bl sub_802D234
	cmp R0, #6
	bne loc_8016FBE
	ldrb R0, [R7,#4]
	ldr R1, off_80170A0 // =dword_80170A4 
	ldrb R0, [R1,R0]
	cmp R0, #0
	bne loc_8016FBE
	mov R0, #0
	str R0, [R5,#0x2C]
loc_8016FBE:
	bl sub_8019892
	tst R0, R0
	bne loc_8016FCC
	bl object_freeMemory
	b locret_8017092
loc_8016FCC:
	push {r0}
	ldrh R0, [R5,#0x28]
	bl sub_800F23C
	ldrb R4, [R0,#3]
	pop {r0}
	mov R1, #1
	mov R2, #2
	mov R3, #4
	tst R4, R3
	beq loc_8016FE6
	mov R1, #0x10
	mov R2, #2
loc_8016FE6:
	mov R3, #3
	bl sub_8019FB4
	ldrb R0, [R7,#6]
	bl sub_8019F9E
	mov R3, #0x10
	tst R4, R3
	beq loc_8017000
	mov R0, #1
	lsl r0, r0, #0x1b
	bl object_setFlag // (int a1) -> void
loc_8017000:
	mov R3, #8
	tst R4, R3
	beq loc_801700E
	mov R0, #1
	lsl r0, r0, #0x19
	bl object_setFlag // (int a1) -> void
loc_801700E:
	mov R3, #4
	tst R4, R3
	beq loc_801701A
	mov r0, #0x20 
	bl object_setFlag // (int a1) -> void
loc_801701A:
	mov R3, #2
	tst R4, R3
	beq loc_8017026
	mov R0, #0x10
	bl object_setFlag // (int a1) -> void
loc_8017026:
	mov R3, #1
	tst R4, R3
	beq loc_8017034
	mov R0, #1
	lsl r0, r0, #0x11
	bl object_setFlag // (int a1) -> void
loc_8017034:
	bl sub_801DB84
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_80103BC
	bl sub_800F318
	bl sub_802D26A
	cmp r0, #0x38 
	beq loc_801705C
	cmp r0, #0x30 
	beq loc_801705C
	cmp r0, #0x3c 
	beq loc_801705C
	bl sub_800F2F0
	b loc_8017064
loc_801705C:
	mov R0, #0
	strb R0, [R5,#0x17]
	bl sub_800F2C6
loc_8017064:
	bl sub_8010DD0
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	mov r1, #0x3e 
	bl sub_80136E4
	mov r1, #0x64 
	svc 6
	cmp R0, #0xA
	ble loc_8017080
	mov R0, #0xA
	b loc_8017086
loc_8017080:
	cmp R0, #0
	bgt loc_8017086
	mov R0, #1
loc_8017086:
	ldr R1, [R5,#0x58]
	strb R0, [R1,#0xC]
	bl sub_800F378
	mov R0, #4
	str R0, [R5,#8]
locret_8017092:
	pop {r4,r6,r7,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
off_80170A0: .word dword_80170A4
dword_80170A4: .word 0x1000000, 0x1000000, 0x0, 0x0
	.word 0x1, 0x0
	.word 0x1010001, 0x0
.func
.thumb_func
sub_80170C4:
	push {lr}
	bl battle_isPaused
	bne locret_80170D6
	ldr R1, off_80170D8 // =off_80170DC 
	ldrb R0, [R5,#0xA]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
locret_80170D6:
	pop {pc}
off_80170D8: .word off_80170DC
off_80170DC: .word sub_80170E4+1
	.word sub_8017122+1
.endfunc // sub_80170C4

.func
.thumb_func
sub_80170E4:
	push {lr}
	bl sub_801A074 // () -> void
	bl sub_801A5E2
	bl sub_80101C4
	bl sub_8012EA8
	bl sub_801DC36
	mov R0, #0
	strb R0, [R5,#0x1A]
	sub R0, #1
	strh R0, [R5,#0x2A]
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	bl sub_801A7F4
	ldrb R0, [R5,#5]
	cmp R0, #1
	bge loc_8017118
	bl sub_800A11C
loc_8017118:
	bl sub_802EF5C
	mov R0, #4
	strh R0, [R5,#0xA]
	pop {pc}
.endfunc // sub_80170E4

.func
.thumb_func
sub_8017122:
	push {r4,r7,lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_8017168
	bl battle_isTimeStop
	bne locret_80171A4
	mov R0, #0
	strb R0, [R5,#0x18]
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R2, [R5,#0x58]
	str R0, [R2,#0x68]
	mov R0, #2
	strb R0, [R5,#0x10]
	mov R4, #1
	ldr R7, [R5,#0x58]
	add r7, #0x74 
	bl sub_80E1A6A
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov r4, #0x20 
	lsl r4, r4, #0x10
	add r3, r3, r4
	mov R4, #3
	bl sub_80E05F6
	mov r1, #0x5a 
	strh R1, [R0,#0x20]
	mov r0, #0x5a 
	strh R0, [R5,#0x20]
	mov R0, #4
	strb R0, [R5,#0xB]
loc_8017168:
	ldrh R0, [R5,#0x20]
	sub R0, #1
	strh R0, [R5,#0x20]
	bge loc_801719C
	bl sub_802CDD0
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
	ldr R0, [R5,#0x58]
	ldr R0, [R0,#0x74]
	bl sub_80E1A86
	bl sub_8011020
	add r0, r5, #0
	bl sub_80077B4
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
	mov R0, #8
	str R0, [R5,#8]
	b locret_80171A4
loc_801719C:
	lsr r0, r0, #2
	bcc locret_80171A4
	bl sprite_forceWhitePallete
locret_80171A4:
	pop {r4,r7,pc}
.endfunc // sub_8017122

	push {lr}
	bl battle_isPaused
	bne locret_80171B8
	ldr R1, off_80171BC // =off_80171C0 
	ldrb R0, [R5,#0xA]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
locret_80171B8:
	pop {pc}
	.balign 4, 0x00
off_80171BC: .word off_80171C0
off_80171C0: .word sub_80171CC+1
	.word sub_80171D8+1
	.word sub_8017274+1
.func
.thumb_func
sub_80171CC:
	push {lr}
	bl sub_80170E4
	bl musicGameState_8000784 // () -> void
	pop {pc}
.endfunc // sub_80171CC

.func
.thumb_func
sub_80171D8:
	push {r4,r7,lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_801722C
	bl battle_isTimeStop
	bne locret_8017272
	mov R0, #0
	strb R0, [R5,#0x18]
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R2, [R5,#0x58]
	str R0, [R2,#0x68]
	ldrh R0, [R5,#0x28]
	ldr R1, dword_80172E8 // =0x173 
	cmp R0, R1
	blt loc_8017200
	ldr R1, dword_80172EC // =0x17E 
	cmp R0, R1
	ble loc_8017204
loc_8017200:
	mov R0, #2
	strb R0, [R5,#0x10]
loc_8017204:
	mov R4, #1
	ldr R7, [R5,#0x58]
	add r7, #0x74 
	bl sub_80E1A6A
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov r4, #0x20 
	lsl r4, r4, #0x10
	add r3, r3, r4
	mov R4, #3
	bl sub_80E05F6
	mov r1, #0x5a 
	strh R1, [R0,#0x20]
	mov r0, #0x5a 
	strh R0, [R5,#0x20]
	mov R0, #4
	strb R0, [R5,#0xB]
loc_801722C:
	ldrh R0, [R5,#0x20]
	sub R0, #1
	strh R0, [R5,#0x20]
	bge loc_801726A
	bl sub_802CDD0
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
	ldr R0, [R5,#0x58]
	ldr R0, [R0,#0x74]
	bl sub_80E1A86
	bl sub_8011020
	add r0, r5, #0
	bl sub_80077B4
	mov R0, #4
	mov R1, #4
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R4, #1
	ldr R7, [R5,#0x58]
	add r7, #0x74 
	bl sub_80E1A6A
	mov R0, #8
	strh R0, [R5,#0xA]
	b locret_8017272
loc_801726A:
	lsr r0, r0, #2
	bcc locret_8017272
	bl sprite_forceWhitePallete
locret_8017272:
	pop {r4,r7,pc}
.endfunc // sub_80171D8

.func
.thumb_func
sub_8017274:
	push {r4,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	tst R0, R0
	bne loc_8017284
	mov R0, #8
	str R0, [R5,#8]
	b locret_801728C
loc_8017284:
	lsr r0, r0, #2
	bcc locret_801728C
	bl sprite_forceWhitePallete
locret_801728C:
	pop {r4,pc}
.endfunc // sub_8017274

.func
.thumb_func
sub_801728E:
	push {lr}
	bl sub_800A8F8
	tst R0, R0
	beq locret_80172C0
	ldrb R0, [R5,#9]
	cmp R0, #0
	beq locret_80172C0
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	mov r1, #0x50 
	ldrb R1, [R0,R1]
	tst R1, R1
	beq locret_80172C0
	bl sub_800A704
	mov R1, #0x1F
	and R0, R1
	ldr R1, off_80172C4 // =dword_80172C8 
	ldrb R0, [R1,R0]
	lsl r1, r0, #5
	add r0, r0, r1
	bl sub_8002ED0
locret_80172C0:
	pop {pc}
	.balign 4, 0x00
off_80172C4: .word dword_80172C8
dword_80172C8: .word 0x6040200
	.word 0xE0C0A08
	.word 0x16141210
	.word 0x1E1C1A18
	.word 0x181A1C1E
	.word 0x10121416
	.word byte_80A0C0E
	.word 0x20406
dword_80172E8: .word 0x173
dword_80172EC: .word 0x17E
.endfunc // sub_801728E

.func
.thumb_func
sub_80172F0:
	push {r4,r7,lr}
	bl sub_800F35C
	ldrb R0, [R5,#0x16]
	mov R1, #0x17
	bl sub_80136CC
	add r2, r0, #0
	mov r1, #0x2c 
	bl sub_8013754
	ldr R4, [R5,#0x58]
	mov r1, #0x2c 
	bl sub_8013774
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	mov R0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
.endfunc // sub_80172F0

	bl sub_8002E3C
	mov R0, #0
	strb R0, [R5,#0x10]
	strb R0, [R5,#0x10]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_801002C
	bl sprite_setPallete // (int pallete) -> void
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	bl sub_80142B0
	bl sub_8019892
	tst R0, R0
	bne loc_801735A
	bl object_freeMemory
	b locret_80173F2
loc_801735A:
	push {r0}
	bl sub_80107C0
	pop {r0}
	mov R1, #1
	mov R2, #2
	bl sub_8019FB4
	bl sub_80141C8
	bl sub_8013892
	bl sub_801086C
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0
	bne loc_801738A
	mov r1, #0x2c 
	bl sub_8013774
	bl sub_8015B22
loc_801738A:
	ldrb R0, [R5,#0x16]
	mov r1, #0x2c 
	bl sub_80136CC
	bl loc_8011268
	bl sub_80144C0
	bl sub_8013E58
	bl sub_801DB84
	mov R0, #3
	bl sub_8018856
	neg R1, R1
	bl sub_801DC06
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_80173C6
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	tst R0, R0
	beq loc_80173C6
	bl sub_801DC36
loc_80173C6:
	bl sub_80141F4
	mov r7, #0x58 
	add r7, r7, r4
	bl sub_80E0F02
	bl sub_800F378
	ldrb R0, [R5,#0x16]
	mov r1, #0x2c 
	bl sub_80136CC
	cmp R0, #0
	bne loc_80173E6
	bl sub_8010DD0
loc_80173E6:
	bl sub_802DFC8
	bl sub_8013FF8
	mov R0, #4
	str R0, [R5,#8]
locret_80173F2:
	pop {r4,r7,pc}
.func
.thumb_func
sub_80173F4:
	push {lr}
	bl sprite_forceWhitePallete
	ldr R1, off_8017408 // =off_801740C 
	ldrb R0, [R5,#0xA]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8017408: .word off_801740C
off_801740C: .word sub_801741C+1
	.word sub_801746E+1
	.word sub_80174AA+1
	.word sub_80174BE+1
.endfunc // sub_80173F4

.func
.thumb_func
sub_801741C:
	push {lr}
	bl sub_801A074 // () -> void
	bl sub_801A5E2
	bl sub_80101C4
	bl sub_8012EA8
	bl sub_801DC36
	mov R0, #0
	strb R0, [R5,#0x1A]
	sub R0, #1
	strh R0, [R5,#0x2A]
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
.endfunc // sub_801741C

	bl sub_801A7F4
	ldr R2, [R5,#0x58]
	ldr R1, [R2,#0x58]
	tst R1, R1
	beq loc_801745A
	mov R1, #0
	str R1, [R2,#0x58]
loc_801745A:
	ldrb R0, [R5,#5]
	cmp R0, #1
	bge loc_8017464
	bl sub_800A11C
loc_8017464:
	bl sub_802EF5C
	mov R0, #4
	strh R0, [R5,#0xA]
	pop {pc}
.func
.thumb_func
sub_801746E:
	push {lr}
	bl battle_isTimeStop
	bne locret_80174A8
	mov R0, #2
	strb R0, [R5,#0x10]
	mov R0, #0
	str R0, [R5,#0x4C]
	mov R0, #0
	strb R0, [R5,#0x18]
	ldr R1, [R5,#0x58]
	mov R0, #0
	str R0, [R1,#0x5C]
	str R0, [R1,#0x68]
	mov r0, #0x6c 
	bl sound_play // () -> void
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov R4, #3
	bl sub_80E05F6
	bl sub_80E05F6
	mov R0, #0x15
	strh R0, [R5,#0x20]
	mov R0, #8
	strh R0, [R5,#0xA]
locret_80174A8:
	pop {pc}
.endfunc // sub_801746E

.func
.thumb_func
sub_80174AA:
	push {lr}
	ldrh R0, [R5,#0x20]
	sub R0, #1
	strh R0, [R5,#0x20]
	bne locret_80174BC
	mov R0, #0
	strh R0, [R5,#0x20]
	mov R0, #0xC
	strh R0, [R5,#0xA]
locret_80174BC:
	pop {pc}
.endfunc // sub_80174AA

.func
.thumb_func
sub_80174BE:
	push {lr}
	ldrh R0, [R5,#0x20]
	add R0, #1
	strh R0, [R5,#0x20]
	cmp r0, #0x20 
	beq loc_80174E0
	lsr r0, r0, #1
	push {r0}
	add r1, r0, #0
	bl sub_8002EF6
	pop {r0}
	sub R0, #0x10
	neg R0, R0
	bl sub_8002C7A
	pop {pc}
loc_80174E0:
	bl sub_8002F2C
	bl sub_8002CCE
	bl sub_802CDD0
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
	bl sub_8011020
	mov R0, #8
	str R0, [R5,#8]
	pop {pc}
.endfunc // sub_80174BE

.func
.thumb_func
sub_80174FE:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_8017582
	bl sub_800F3E8
	ldr R0, dword_80175B0 // =0x400400 
	bl object_setFlag // (int a1) -> void
	bl sub_801A284
	bl sub_801A29A
	bl sub_801A2B0
	bl sub_80101C4
	ldr R0, dword_80175B4 // =0x20005F 
	bl sub_801031C
	ldr R0, dword_80175A4 // =0x100041 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_8012EA8
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0xc
	tst R0, R1
	bne loc_8017554
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
	bl sub_800E29C // () -> void
	bl sub_801A04C
	mov R0, #0
	str R0, [R5,#0x3C]
loc_8017554:
	mov R0, #1
	strb R0, [R5,#0x10]
	mov R0, #0xFF
	strb R0, [R5,#0x11]
	bl sub_8011450
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	ldrb R0, [R5,#0x16]
	mov R1, #3
	mov R2, #1
	bl sub_800AB46
	mov R0, #0x17
	strh R0, [R5,#0x20]
	mov R0, #4
	strb R0, [R5,#0xB]
loc_8017582:
	ldrh R0, [R5,#0x20]
	sub R0, #1
	strh R0, [R5,#0x20]
	bge locret_80175A2
	ldr R0, dword_80175B0 // =0x400400 
	bl object_clearFlag // (int bitfield) -> void
	ldr R0, dword_80175A8 // =0x1000043F 
	bl sub_800FFEE
	mov R0, #0
	strb R0, [R5,#0x10]
	mov R0, #8
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
locret_80175A2:
	pop {pc}
dword_80175A4: .word 0x100041
dword_80175A8: .word 0x1000043F
	.word 0x400
dword_80175B0: .word 0x400400
dword_80175B4: .word 0x20005F
.endfunc // sub_80174FE

.func
.thumb_func
sub_80175B8:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_8017628
	bl sub_800F394
	ldr R0, dword_8017674 // =0x400000 
	bl object_setFlag // (int a1) -> void
	ldr R0, dword_801766C // =0x100441 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80101C4
	ldr R0, dword_8017684 // =0x20005F 
	bl sub_801031C
	bl sub_8012EA8
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0xc
	tst R0, R1
	bne loc_8017602
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
	bl sub_800E29C // () -> void
	bl sub_801A04C
	mov R0, #0
	str R0, [R5,#0x3C]
loc_8017602:
	mov R0, #2
	strb R0, [R5,#0x10]
	mov R0, #0xFF
	strb R0, [R5,#0x11]
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	ldrb R0, [R5,#0x16]
	mov R1, #3
	mov R2, #1
	bl sub_800AB46
	mov R0, #4
	strb R0, [R5,#0xB]
loc_8017628:
	ldr R0, [R5,#0x58]
	ldrh R1, [R0,#0x24]
	tst R1, R1
	beq loc_8017646
	ldr R0, [R5,#0x54]
	mov R2, #0x1C
	ldrsh R1, [R0,R2]
	sub R1, #1
	strh R1, [R0,R2]
	bgt loc_8017646
	mov R1, #0
	strh R1, [R0,R2]
	ldr R0, off_8017678 // =0x800 
	bl object_clearFlag // (int bitfield) -> void
loc_8017646:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0xb
	tst R0, R1
	bne locret_801766A
	ldr R0, dword_801767C // =0x1000003F 
	bl sub_800FFEE
	ldr R0, dword_8017680 // =0x400000 
	bl object_clearFlag // (int bitfield) -> void
	mov R0, #0
	strb R0, [R5,#0x10]
	mov R0, #8
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
locret_801766A:
	pop {pc}
dword_801766C: .word 0x100441
	.word 0x400
dword_8017674: .word 0x400000
off_8017678: .word 0x800
dword_801767C: .word 0x1000003F
dword_8017680: .word 0x400000
dword_8017684: .word 0x20005F
.endfunc // sub_80175B8

.func
.thumb_func
sub_8017688:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_8017708
	bl sub_800F3B0
	ldr R0, dword_8017754 // =0x400000 
	bl object_setFlag // (int a1) -> void
	ldr R0, dword_801774C // =0x100441 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_801A67E
	bl sub_80101C4
	bl sub_800EB08
	mov R0, #0x19
	add R0, #0xFF
	bl sound_play // () -> void
	ldr R0, dword_8017764 // =0x20005F 
	bl sub_801031C
	bl sub_8012EA8
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0xc
	tst R0, R1
	bne loc_80176E2
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
	bl sub_800E29C // () -> void
	bl sub_801A04C
	mov R0, #0
	str R0, [R5,#0x3C]
loc_80176E2:
	mov R0, #2
	strb R0, [R5,#0x10]
	mov R0, #0xFF
	strb R0, [R5,#0x11]
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	ldrb R0, [R5,#0x16]
	mov R1, #3
	mov R2, #1
	bl sub_800AB46
	mov R0, #4
	strb R0, [R5,#0xB]
loc_8017708:
	ldr R0, [R5,#0x58]
	ldrh R1, [R0,#0x24]
	tst R1, R1
	beq loc_8017726
	ldr R0, [R5,#0x54]
	mov r2, #0x2a 
	ldrsh R1, [R0,R2]
	sub R1, #1
	strh R1, [R0,R2]
	bgt loc_8017726
	mov R1, #0
	strh R1, [R0,R2]
	ldr R0, dword_8017758 // =0x10000 
	bl object_clearFlag // (int bitfield) -> void
loc_8017726:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x10
	tst R0, R1
	bne locret_801774A
	ldr R0, dword_801775C // =0x1000003F 
	bl sub_800FFEE
	ldr R0, dword_8017760 // =0x400000 
	bl object_clearFlag // (int bitfield) -> void
	mov R0, #0
	strb R0, [R5,#0x10]
	mov R0, #8
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
locret_801774A:
	pop {pc}
dword_801774C: .word 0x100441
	.word 0x400
dword_8017754: .word 0x400000
dword_8017758: .word 0x10000
dword_801775C: .word 0x1000003F
dword_8017760: .word 0x400000
dword_8017764: .word 0x20005F
.endfunc // sub_8017688

.func
.thumb_func
sub_8017768:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_80177E4
	bl sub_800F3CC
	ldr R0, dword_8017850 // =0x400000 
	bl object_setFlag // (int a1) -> void
	ldr R0, dword_8017848 // =0x100441 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80101C4
	bl sub_800EB08
	mov r0, #0x2e 
	add R0, #0xFF
	bl sound_play // () -> void
	ldr R0, dword_8017860 // =0x20005F 
	bl sub_801031C
	bl sub_8012EA8
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0xc
	tst R0, R1
	bne loc_80177BE
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
	bl sub_800E29C // () -> void
	bl sub_801A04C
	mov R0, #0
	str R0, [R5,#0x3C]
loc_80177BE:
	mov R0, #2
	strb R0, [R5,#0x10]
	mov R0, #0xFF
	strb R0, [R5,#0x11]
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	ldrb R0, [R5,#0x16]
	mov R1, #3
	mov R2, #1
	bl sub_800AB46
	mov R0, #4
	strb R0, [R5,#0xB]
loc_80177E4:
	ldr R0, [R5,#0x58]
	ldrh R1, [R0,#0x24]
	tst R1, R1
	beq loc_8017802
	ldr R0, [R5,#0x54]
	mov r2, #0x2c 
	ldrsh R1, [R0,R2]
	sub R1, #1
	strh R1, [R0,R2]
	bgt loc_8017802
	mov R1, #0
	strh R1, [R0,R2]
	ldr R0, dword_8017854 // =0x80000000 
	bl object_clearFlag // (int bitfield) -> void
loc_8017802:
	ldr R0, [R5,#0x54]
	mov r2, #0x2c 
	ldrsh R1, [R0,R2]
	lsr r1, r1, #2
	mov R0, #0x1F
	and R0, R1
	ldr R1, off_8017864 // =byte_8017868 
	ldrsb R0, [R1,R0]
	lsl r0, r0, #0x10
	str R0, [R5,#0x3C]
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x1f
	tst R0, R1
	bne locret_8017846
	ldr R0, dword_8017858 // =0x1000003F 
	bl sub_800FFEE
	ldr R0, dword_801785C // =0x400000 
	bl object_clearFlag // (int bitfield) -> void
	mov R0, #0
	str R0, [R5,#0x3C]
	mov r0, #0x25 
	add R0, #0xFF
	bl sound_play // () -> void
	mov R0, #0
	strb R0, [R5,#0x10]
	mov R0, #8
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
locret_8017846:
	pop {pc}
dword_8017848: .word 0x100441
	.word 0x400
dword_8017850: .word 0x400000
dword_8017854: .word 0x80000000
dword_8017858: .word 0x1000003F
dword_801785C: .word 0x400000
dword_8017860: .word 0x20005F
off_8017864: .word byte_8017868
byte_8017868: .byte 0x1, 0x2, 0x3, 0x4, 0x4, 0x5, 0x5, 0x6, 0x6, 0x6, 0x5, 0x4, 0x3, 0x2, 0x1, 0x0, 0xFF
	.byte 0xFE, 0xFD, 0xFC, 0xFC, 0xFB, 0xFB, 0xFA, 0xFA, 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF, 0x0
.endfunc // sub_8017768

.func
.thumb_func
sub_8017888:
	push {r4,r7,lr}
	bl sub_800A8F8
	beq loc_80178AC
	ldrh R0, [R5,#0x28]
	bl sub_80182B4
	ldrb R1, [R0,#1]
	cmp R1, #2
	bne loc_80178AC
	mov r7, #0x40 
	ldr R0, [R5,#0x58]
	add r7, r7, r0
	ldr R0, [R7]
	cmp R0, #0
	bne loc_80178AC
	bl sub_80E1620
loc_80178AC:
	mov R0, #8
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	pop {r4,r7,pc}
.endfunc // sub_8017888

.func
.thumb_func
sub_80178B6:
	push {lr}
	ldr R1, off_80178C4 // =off_80178C8 
	ldrb R0, [R5,#0xD]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
off_80178C4: .word off_80178C8
off_80178C8: .word sub_80178D4+1
	.word sub_8017992+1
	.word sub_8017A38+1
.endfunc // sub_80178B6

.func
.thumb_func
sub_80178D4:
	push {r6,r7,lr}
	bl sub_800F404
	ldr R0, dword_8017A90 // =0x500000 
	bl object_setFlag // (int a1) -> void
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	bl object_getFlag // () -> int
	mov R2, #2
	mov R1, #1
	lsl r1, r1, #0xb
	tst R0, R1
	bne loc_8017900
	mov R2, #1
	ldr R1, dword_8017A94 // =0x20000 
	tst R0, R1
	beq loc_8017900
	mov R2, #0
loc_8017900:
	strb R2, [R5,#0x10]
	mov R0, #0xFF
	strb R0, [R5,#0x11]
	bl sub_8011450
	bl sub_8012EA8
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	ldrh R0, [R5,#0x14]
	strh R0, [R5,#0x12]
	bl sub_800E29C // () -> void
	bl sub_801A04C
	mov R0, #0
	strh R0, [R5,#0x3C]
	ldr R0, dword_8017A98 // =0x1441 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80101C4
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
.endfunc // sub_80178D4

	ldrb R0, [R5,#0x16]
	mov R1, #3
	mov R2, #1
	bl sub_800AB46
	bl sub_800E45E
	strb R0, [R5,#0x1C]
	strb R1, [R5,#0x1D]
	strh R2, [R5,#0x22]
	tst R2, R2
	beq loc_8017988
	ldrb R3, [R5,#0x12]
	add r0, r0, r3
	ldrb R3, [R5,#0x13]
	add r1, r1, r3
	add r6, r0, #0
	add r7, r1, #0
	bl sub_800E5AC
	beq loc_8017988
	mov R1, #0x1C
	ldrsb R1, [R5,R1]
	ldr R0, dword_8017A9C // =0xA0000 
	mul R0, R1
	str R0, [R5,#0x40]
	mov R1, #0x1D
	ldrsb R1, [R5,R1]
	ldr R0, dword_8017AA0 // =0x60000 
	mul R0, R1
	str R0, [R5,#0x44]
	add r0, r6, #0
	add r1, r7, #0
	strb R0, [R5,#0x14]
	strb R1, [R5,#0x15]
	bl sub_801BB1C
	mov R0, #4
	strb R0, [R5,#0xD]
	pop {r6,r7,pc}
loc_8017988:
	mov R0, #0x18
	strh R0, [R5,#0x20]
	mov R0, #8
	strb R0, [R5,#0xD]
	pop {r6,r7,pc}
.func
.thumb_func
sub_8017992:
	push {r4,lr}
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	add r2, r0, #0
	add r4, r1, #0
	ldr R1, [R5,#0x34]
	ldr R0, [R5,#0x40]
	add r0, r0, r1
	str R0, [R5,#0x34]
	bl sub_800E6E8
	tst R0, R0
	bne loc_80179C2
	add r2, r4, #0
	ldr R1, [R5,#0x38]
	ldr R0, [R5,#0x44]
	add r0, r0, r1
	str R0, [R5,#0x38]
	bl sub_800E6E8
	tst R0, R0
	beq loc_8017A2E
loc_80179C2:
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_800C90A
	ldrb R4, [R0,#2]
	cmp R4, #7
	bne loc_80179E8
	ldr R0, [R5,#0x54]
	ldrb R0, [R0,#2]
	cmp R0, #2
	beq loc_80179E8
	ldrh R0, [R5,#0x22]
	add R0, #1
	strh R0, [R5,#0x22]
	b loc_80179E8
loc_80179E8:
	ldrh R0, [R5,#0x22]
	sub R0, #1
	strh R0, [R5,#0x22]
	ble loc_8017A18
	mov R2, #0x1C
	ldrsb R2, [R5,R2]
	ldrb R0, [R5,#0x14]
	add r0, r0, r2
	mov R2, #0x1D
	ldrsb R2, [R5,R2]
	ldrb R1, [R5,#0x15]
	add r1, r1, r2
	add r6, r0, #0
	add r7, r1, #0
	bl sub_800E5AC
	beq loc_8017A18
	add r0, r6, #0
	add r1, r7, #0
	strb R0, [R5,#0x14]
	strb R1, [R5,#0x15]
	bl sub_801BB1C
	pop {r4,pc}
loc_8017A18:
	ldrh R0, [R5,#0x14]
	strh R0, [R5,#0x12]
	bl sub_800E29C // () -> void
	bl sub_801A04C
	mov R0, #0x14
	strh R0, [R5,#0x20]
	mov R0, #8
	strb R0, [R5,#0xD]
	pop {r4,pc}
loc_8017A2E:
	bl sub_800E2AC
	bl sub_801A04C
	pop {r4,pc}
.endfunc // sub_8017992

.func
.thumb_func
sub_8017A38:
	push {lr}
	ldrh R0, [R5,#0x20]
	sub R0, #1
	strh R0, [R5,#0x20]
	bge locret_8017A8E
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0xb
	tst R0, R1
	beq loc_8017A5E
	ldr R0, dword_8017AA4 // =0x100000 
	bl object_clearFlag // (int bitfield) -> void
	mov R0, #4
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	b locret_8017A8E
loc_8017A5E:
	ldr R0, dword_8017AA8 // =0x501800 
	bl object_clearFlag // (int bitfield) -> void
	ldr R0, dword_8017AAC // =0x1000043F 
	bl sub_800FFEE
	ldr R0, dword_8017AB0 // =0x200000 
	bl sub_801031C
	mov R0, #0x10
	bl sub_801A176
	mov R0, #0
	strb R0, [R5,#0x1F]
	mov R0, #0
	strb R0, [R5,#0x10]
	mov R0, #0xFF
	strb R0, [R5,#0x11]
	bl sub_8011450
	mov R0, #8
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
locret_8017A8E:
	pop {pc}
dword_8017A90: .word 0x500000
dword_8017A94: .word 0x20000
dword_8017A98: .word 0x1441
dword_8017A9C: .word 0xA0000
dword_8017AA0: .word 0x60000
dword_8017AA4: .word 0x100000
dword_8017AA8: .word 0x501800
dword_8017AAC: .word 0x1000043F
dword_8017AB0: .word 0x200000
.endfunc // sub_8017A38

.func
.thumb_func
sub_8017AB4:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x50
	ldrh R0, [R5,#0x28]
	bl sub_800F29C
	cmp R0, #2
	bne loc_8017B64
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8017B64
	bl sub_800FFFE
	ldr R1, off_8017C94 // =0x800 
	tst R0, R1
	beq loc_8017B64
	bl sub_800BEDA
	tst R0, R0
	beq loc_8017B5E
	bl sub_8010004
	add r1, r0, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	beq loc_8017B5E
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#9]
	mov R1, #1
	tst R0, R1
	beq loc_8017B5E
	mov R0, #0
	add r7, sp, #0
	bl sub_80127C0
	cmp R0, #0x15
	bne loc_8017B26
	push {r7}
	ldr R6, [R7,#8]
	ldr R4, [R7,#0xC]
	ldrb R1, [R7,#3]
	lsl r1, r1, #2
	ldr R3, off_8017BB8 // =off_802CCB4 
	ldr R3, [R3,R1]
	ldrb R2, [R7,#2]
	ldrh R1, [R7,#6]
	lsl r1, r1, #0x10
	ldrh R7, [R7,#0x14]
	add r7, r7, r1
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	mov LR, PC
	bx r3
	pop {r7}
	b loc_8017B4A
loc_8017B26:
	cmp R0, #0x1B
	bne loc_8017B48
	push {r7}
	ldrb R2, [R7,#2]
	ldrb R3, [R7,#3]
	ldr R4, [R7,#0xC]
	ldr R6, [R7,#8]
	ldrh R1, [R7,#6]
	lsl r1, r1, #0x10
	ldrh R7, [R7,#0x14]
	add r7, r7, r1
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	bl sub_80E192C
	pop {r7}
	b loc_8017B4A
loc_8017B48:
	b loc_8017B5E
loc_8017B4A:
	add r2, r0, #0
	ldrb R0, [R5,#0x16]
	mov R1, #0
	bl loc_800BF30
	ldrb R0, [R5,#0x16]
	bl sub_800B8EE
	bl sub_800FC7C
loc_8017B5E:
	ldr R0, off_8017C98 // =0x80C 
	bl sub_800FFEE
loc_8017B64:
	ldrb R0, [R5,#0x18]
	tst R0, R0
	bne loc_8017B7A
	ldrh R0, [R5,#0x36]
	strh R0, [R5,#0x30]
	ldrh R0, [R5,#0x3E]
	strh R0, [R5,#0x32]
	mov R0, #0
	strb R0, [R5,#0x19]
	mov R0, #4
	strb R0, [R5,#0x18]
loc_8017B7A:
	ldr R0, [R5,#0x54]
	mov R1, #0x80
	ldrh R1, [R0,R1]
	tst R1, R1
	beq loc_8017B88
	mov R0, #0x1E
	strb R0, [R5,#0x19]
loc_8017B88:
	ldrb R0, [R5,#0x19]
	tst R0, R0
	beq loc_8017BAA
	sub R0, #1
	strb R0, [R5,#0x19]
	ldrh R1, [R5,#0x30]
	lsl r1, r1, #0x10
	ldr R2, [R5,#0x38]
	ldrh R3, [R5,#0x32]
	lsl r3, r3, #0x10
	mov R0, #3
	bl sub_801BDDE
	mov r0, #0x34 
	add r0, r0, r5
	stmia R0!, {R1-R3}
	b loc_8017BB2
loc_8017BAA:
	ldrh R0, [R5,#0x30]
	strh R0, [R5,#0x36]
	ldrh R0, [R5,#0x32]
	strh R0, [R5,#0x3E]
loc_8017BB2:
	add sp, sp, #0x50
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
off_8017BB8: .word off_802CCB4
	.word off_802CD5C
.endfunc // sub_8017AB4

.func
.thumb_func
sub_8017BC0:
	push {r4,r6,r7,lr}
	ldr R6, [R5,#0x58]
	mov R7, #0xA0
	add r7, r7, r6
	bl sub_801032C
	mov R1, #0x80
	tst R0, R1
	beq loc_8017BD8
	bl loc_8014A38
	pop {r4,r6,r7,pc}
loc_8017BD8:
	bl sub_801032C
	ldr R1, off_8017C9C // =0x100 
	tst R0, R1
	beq loc_8017BE8
	bl loc_8015614
	pop {r4,r6,r7,pc}
loc_8017BE8:
	bl sub_801032C
	ldr R1, off_8017CA0 // =0x1000 
	tst R0, R1
	beq loc_8017BF8
	bl loc_802D714
	pop {r4,r6,r7,pc}
loc_8017BF8:
	bl sub_801032C
	ldr R1, off_8017CA4 // =0x2000 
	tst R0, R1
	beq loc_8017C0C
	mov R0, #0
	strb R0, [R7,#3]
	bl loc_802D926
	pop {r4,r6,r7,pc}
loc_8017C0C:
	bl sub_800FFFE
	ldr R1, dword_8017CA8 // =0x4000 
	tst R0, R1
	beq loc_8017C2A
	add r0, r1, #0
	bl sub_800FFEE
	mov R0, #0x80
	bl sub_8010312
	mov R0, #0x1C
	bl sub_8011680
	pop {r4,r6,r7,pc}
loc_8017C2A:
	bl sub_800FFFE
	mov r1, #0x40 
	tst R0, R1
	beq loc_8017C56
	add r0, r1, #0
	bl sub_800FFEE
	ldr R0, off_8017C9C // =0x100 
	bl sub_8010312
	mov R0, #0
	str R0, [R5,#0x5C]
	ldr R0, [R5,#0x5C]
	tst R0, R0
	bne loc_8017C4E
	ldr R0, [R5,#8]
	str R0, [R5,#0x5C]
loc_8017C4E:
	mov R0, #0x1C
	bl sub_8011680
	pop {r4,r6,r7,pc}
loc_8017C56:
	bl sub_800FFFE
	ldr R1, off_8017CAC // =LCDControl 
	tst R0, R1
	beq loc_8017C74
	add r0, r1, #0
	bl sub_800FFEE
	ldr R0, off_8017CA0 // =0x1000 
	bl sub_8010312
	mov R0, #0x1C
	bl sub_8011680
	pop {r4,r6,r7,pc}
loc_8017C74:
	bl sub_800FFFE
	ldr R1, byte_8017CB0 // =0x0 
	tst R0, R1
	beq locret_8017C92
	add r0, r1, #0
	bl sub_800FFEE
	ldr R0, off_8017CA4 // =0x2000 
	bl sub_8010312
	mov R0, #0x1C
	bl sub_8011680
	pop {r4,r6,r7,pc}
locret_8017C92:
	pop {r4,r6,r7,pc}
off_8017C94: .word 0x800
off_8017C98: .word 0x80C
off_8017C9C: .word 0x100
off_8017CA0: .word 0x1000
off_8017CA4: .word 0x2000
dword_8017CA8: .word 0x4000
off_8017CAC: .word LCDControl
byte_8017CB0: .byte 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
.endfunc // sub_8017BC0

.func
.thumb_func
sub_8017CC0:
	push {lr}
	ldr R1, off_8017CD0 // =off_8017CD4 
	ldrb R0, [R5,#0xD]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.byte 0, 0
off_8017CD0: .word off_8017CD4
off_8017CD4: .word sub_8017CE0+1
	.word sub_8017D64+1
	.word sub_8017E0A+1
.endfunc // sub_8017CC0

.func
.thumb_func
sub_8017CE0:
	push {r6,r7,lr}
	mov R0, #1
	lsl r0, r0, #0x14
	bl object_setFlag // (int a1) -> void
	mov R0, #0
	str R0, [R5,#0x4C]
	ldrh R0, [R5,#0x14]
	strh R0, [R5,#0x12]
	bl sub_800E29C // () -> void
	bl sub_801A04C
	ldr R0, off_8017D58 // =0x1040 
	bl object_clearFlag // (int bitfield) -> void
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
.endfunc // sub_8017CE0

	bl sub_800F598
	strb R0, [R5,#0x1C]
	strb R1, [R5,#0x1D]
	strb R2, [R5,#0xB]
	tst R2, R2
	beq loc_8017D4E
	ldrb R3, [R5,#0x12]
	add r0, r0, r3
	ldrb R3, [R5,#0x13]
	add r1, r1, r3
	add r6, r0, #0
	add r7, r1, #0
	bl sub_800F50C
	beq loc_8017D4E
	mov R1, #0x1C
	ldrsb R1, [R5,R1]
	ldr R0, dword_8017D5C // =0xA0000 
	mul R0, R1
	str R0, [R5,#0x40]
	mov R1, #0x1D
	ldrsb R1, [R5,R1]
	ldr R0, dword_8017D60 // =0x60000 
	mul R0, R1
	str R0, [R5,#0x44]
	add r0, r6, #0
	add r1, r7, #0
	strb R0, [R5,#0x14]
	strb R1, [R5,#0x15]
	bl sub_801BB1C
	mov R0, #4
	strb R0, [R5,#0xD]
	pop {r6,r7,pc}
loc_8017D4E:
	mov R0, #0x18
	strb R0, [R5,#0xA]
	mov R0, #8
	strb R0, [R5,#0xD]
	pop {r6,r7,pc}
off_8017D58: .word 0x1040
dword_8017D5C: .word 0xA0000
dword_8017D60: .word 0x60000
.func
.thumb_func
sub_8017D64:
	push {r4,lr}
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	add r2, r0, #0
	add r4, r1, #0
	ldr R1, [R5,#0x34]
	ldr R0, [R5,#0x40]
	add r0, r0, r1
	str R0, [R5,#0x34]
	bl sub_800E6E8
	tst R0, R0
	bne loc_8017D94
	add r2, r4, #0
	ldr R1, [R5,#0x38]
	ldr R0, [R5,#0x44]
	add r0, r0, r1
	str R0, [R5,#0x38]
	bl sub_800E6E8
	tst R0, R0
	beq loc_8017E00
loc_8017D94:
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
	ldr R0, [R5,#0x54]
	ldrb R0, [R0,#2]
	cmp R0, #2
	beq loc_8017DBA
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_800C90A
	ldrb R0, [R0,#2]
	cmp R0, #7
	bne loc_8017DBA
	ldrb R0, [R5,#0xB]
	add R0, #1
	strb R0, [R5,#0xB]
	b loc_8017DBA
loc_8017DBA:
	ldrb R0, [R5,#0xB]
	sub R0, #1
	strb R0, [R5,#0xB]
	ble loc_8017DEA
	mov R2, #0x1C
	ldrsb R2, [R5,R2]
	ldrb R0, [R5,#0x14]
	add r0, r0, r2
	mov R2, #0x1D
	ldrsb R2, [R5,R2]
	ldrb R1, [R5,#0x15]
	add r1, r1, r2
	add r6, r0, #0
	add r7, r1, #0
	bl sub_800F50C
	beq loc_8017DEA
	add r0, r6, #0
	add r1, r7, #0
	strb R0, [R5,#0x14]
	strb R1, [R5,#0x15]
	bl sub_801BB1C
	pop {r4,pc}
loc_8017DEA:
	ldrh R0, [R5,#0x14]
	strh R0, [R5,#0x12]
	bl sub_800E29C // () -> void
	bl sub_801A04C
	mov R0, #0x14
	strb R0, [R5,#0xA]
	mov R0, #8
	strb R0, [R5,#0xD]
	pop {r4,pc}
loc_8017E00:
	bl sub_800E2AC
	bl sub_801A04C
	pop {r4,pc}
.endfunc // sub_8017D64

.func
.thumb_func
sub_8017E0A:
	push {lr}
	ldrb R0, [R5,#0xA]
	sub R0, #1
	strb R0, [R5,#0xA]
	bge locret_8017E24
	mov R0, #1
	lsl r0, r0, #0x14
	bl object_clearFlag // (int bitfield) -> void
	ldr R0, [R5,#0x5C]
	str R0, [R5,#8]
	mov R0, #0
	str R0, [R5,#0x5C]
locret_8017E24:
	pop {pc}
.endfunc // sub_8017E0A

loc_8017E26:
	push {lr}
	ldr R1, off_8017E34 // =off_8017E38 
	ldrb R0, [R5,#0xD]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
off_8017E34: .word off_8017E38
off_8017E38: .word sub_8017E44+1
	.word sub_8017F38+1
	.word sub_8017FE6+1
.func
.thumb_func
sub_8017E44:
	push {r4,r6,r7,lr}
	mov R0, #1
	lsl r0, r0, #0x14
	bl object_setFlag // (int a1) -> void
	mov R0, #0
	str R0, [R5,#0x4C]
	ldrh R0, [R5,#0x14]
	strh R0, [R5,#0x12]
	bl sub_800E29C // () -> void
	bl sub_801A04C
	ldr R0, off_8017F2C // =0x1040 
	bl object_clearFlag // (int bitfield) -> void
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
.endfunc // sub_8017E44

	bl sub_800F598
	strb R0, [R5,#0x1C]
	strb R1, [R5,#0x1D]
	strb R3, [R5,#0xC]
	mov R2, #6
	strb R2, [R5,#0xB]
	tst R2, R2
	beq loc_8017F08
	mov R4, #0
	ldrb R2, [R5,#0xC]
	cmp R2, #1
	beq loc_8017E88
	add R4, #4
loc_8017E88:
	ldrb R0, [R5,#0x1C]
	cmp R0, R2
	beq loc_8017E90
	add R4, #2
loc_8017E90:
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	bl object_getPanelParameters
	ldrb R2, [R5,#0xC]
	mov r1, #0x20 
	tst R0, R1
	beq loc_8017EA2
	add R4, #1
loc_8017EA2:
	ldr R0, off_8017F20 // =dword_8017F24 
	ldrb R0, [R0,R4]
	cmp R0, #0
	beq loc_8017EC8
	strb R0, [R5,#0xC]
	mov R0, #0x1C
	ldrsb R0, [R5,R0]
	mov R1, #0x1D
	ldrsb R1, [R5,R1]
	ldrb R3, [R5,#0x12]
	add r0, r0, r3
	ldrb R3, [R5,#0x13]
	add r1, r1, r3
	add r6, r0, #0
	add r7, r1, #0
	bl sub_800F55C
	beq loc_8017F08
	b loc_8017EE6
loc_8017EC8:
	mov R0, #0
	strb R0, [R5,#0xC]
	mov R0, #0x1C
	ldrsb R0, [R5,R0]
	mov R1, #0x1D
	ldrsb R1, [R5,R1]
	ldrb R3, [R5,#0x12]
	add r0, r0, r3
	ldrb R3, [R5,#0x13]
	add r1, r1, r3
	add r6, r0, #0
	add r7, r1, #0
	bl sub_800F534
	beq loc_8017F08
loc_8017EE6:
	mov R1, #0x1C
	ldrsb R1, [R5,R1]
	ldr R0, dword_8017F30 // =0xA0000 
	mul R0, R1
	str R0, [R5,#0x40]
	mov R1, #0x1D
	ldrsb R1, [R5,R1]
	ldr R0, dword_8017F34 // =0x60000 
	mul R0, R1
	str R0, [R5,#0x44]
	add r0, r6, #0
	add r1, r7, #0
	strb R0, [R5,#0x14]
	strb R1, [R5,#0x15]
	mov R0, #4
	strb R0, [R5,#0xD]
	pop {r4,r6,r7,pc}
loc_8017F08:
	mov R0, #0x18
	strb R0, [R5,#0xA]
	mov R0, #8
	strb R0, [R5,#0xD]
	pop {r4,r6,r7,pc}
	.word 0, 0, 0
	.byte 0, 0
off_8017F20: .word dword_8017F24
dword_8017F24: .word 0x1010000, 0x2020000
off_8017F2C: .word 0x1040
dword_8017F30: .word 0xA0000
dword_8017F34: .word 0x60000
.func
.thumb_func
sub_8017F38:
	push {r4,lr}
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	add r2, r0, #0
	add r4, r1, #0
	ldr R1, [R5,#0x34]
	ldr R0, [R5,#0x40]
	add r0, r0, r1
	str R0, [R5,#0x34]
	bl sub_800E6E8
	tst R0, R0
	bne loc_8017F68
	add r2, r4, #0
	ldr R1, [R5,#0x38]
	ldr R0, [R5,#0x44]
	add r0, r0, r1
	str R0, [R5,#0x38]
	bl sub_800E6E8
	tst R0, R0
	beq loc_8017FDC
loc_8017F68:
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
	ldr R0, [R5,#0x54]
	ldrb R0, [R0,#2]
	cmp R0, #2
	beq loc_8017F8E
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_800C90A
	ldrb R0, [R0,#2]
	cmp R0, #7
	bne loc_8017F8E
	ldrb R0, [R5,#0xB]
	add R0, #1
	strb R0, [R5,#0xB]
	b loc_8017F8E
loc_8017F8E:
	ldrb R0, [R5,#0xB]
	sub R0, #1
	strb R0, [R5,#0xB]
	ble loc_8017FC6
	mov R2, #0x1C
	ldrsb R2, [R5,R2]
	ldrb R0, [R5,#0x14]
	add r0, r0, r2
	mov R2, #0x1D
	ldrsb R2, [R5,R2]
	ldrb R1, [R5,#0x15]
	add r1, r1, r2
	add r6, r0, #0
	add r7, r1, #0
	ldrb R2, [R5,#0xC]
	cmp R2, #0
	bne loc_8017FB6
	bl sub_800F534
	b loc_8017FBA
loc_8017FB6:
	bl sub_800F55C
loc_8017FBA:
	beq loc_8017FC6
	add r0, r6, #0
	add r1, r7, #0
	strb R0, [R5,#0x14]
	strb R1, [R5,#0x15]
	pop {r4,pc}
loc_8017FC6:
	ldrh R0, [R5,#0x14]
	strh R0, [R5,#0x12]
	bl sub_800E29C // () -> void
	bl sub_801A04C
	mov R0, #0x14
	strb R0, [R5,#0xA]
	mov R0, #8
	strb R0, [R5,#0xD]
	pop {r4,pc}
loc_8017FDC:
	bl sub_800E2AC
	bl sub_801A04C
	pop {r4,pc}
.endfunc // sub_8017F38

.func
.thumb_func
sub_8017FE6:
	push {lr}
	ldrb R0, [R5,#0xA]
	sub R0, #1
	strb R0, [R5,#0xA]
	bge locret_8018000
	mov R0, #1
	lsl r0, r0, #0x14
	bl object_clearFlag // (int bitfield) -> void
	ldr R0, [R5,#0x5C]
	str R0, [R5,#8]
	mov R0, #0
	str R0, [R5,#0x5C]
locret_8018000:
	pop {pc}
.endfunc // sub_8017FE6

loc_8018002:
	push {lr}
	ldr R1, off_8018010 // =off_8018014 
	ldrb R0, [R5,#0x18]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
off_8018010: .word off_8018014
off_8018014: .word sub_801802C+1
	.word sub_8018076+1
	.word sub_8018094+1
	.word sub_80180A8+1
	.word sub_80180EC+1
	.word locret_8018138+1
.func
.thumb_func
sub_801802C:
	push {lr}
	bl sub_801A180
	mov R2, #0
	ldr R1, off_8018294 // =0x400 
	tst R0, R1
	bne loc_801803C
	mov R2, #1
loc_801803C:
	strb R2, [R5,#0x16]
	ldr R0, off_8018298 // =0xC00 
	bl sub_801A176
	ldr R0, off_801829C // =LCDControl 
	bl object_setFlag // (int a1) -> void
	mov r0, #0x40 
	lsl r0, r0, #0x10
	ldr R1, [R5,#0x3C]
	sub r0, r0, r1
	mov r1, #0x20 
	svc 6
	str R0, [R5,#0x48]
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
.endfunc // sub_801802C

	mov r0, #0x20 
	strb R0, [R5,#0x19]
	mov r0, #0x2b 
	add R0, #0xFF
	bl sound_play // () -> void
	bl sub_801A074 // () -> void
	mov R0, #4
	strb R0, [R5,#0x18]
	pop {pc}
.func
.thumb_func
sub_8018076:
	push {lr}
	ldr R0, [R5,#0x3C]
	ldr R1, [R5,#0x48]
	add r0, r0, r1
	str R0, [R5,#0x3C]
	ldrb R0, [R5,#0x19]
	sub R0, #1
	strb R0, [R5,#0x19]
	bne locret_8018092
	mov r0, #0x40 
	lsl r0, r0, #0x10
	str R0, [R5,#0x3C]
	mov R0, #8
	strb R0, [R5,#0x18]
locret_8018092:
	pop {pc}
.endfunc // sub_8018076

.func
.thumb_func
sub_8018094:
	push {lr}
	ldrh R0, [R5,#0x1E]
	strb R0, [R5,#0x19]
	ldrh R0, [R5,#0x36]
	strh R0, [R5,#0x30]
	ldrh R0, [R5,#0x3E]
	strh R0, [R5,#0x32]
	mov R0, #0xC
	strb R0, [R5,#0x18]
	pop {pc}
.endfunc // sub_8018094

.func
.thumb_func
sub_80180A8:
	push {r7,lr}
	ldrh R1, [R5,#0x30]
	lsl r1, r1, #0x10
	ldr R2, [R5,#0x38]
	ldrh R3, [R5,#0x32]
	lsl r3, r3, #0x10
	mov R0, #3
	bl sub_801BDDE
	mov r7, #0x34 
	add r7, r7, r5
	stmia R7!, {R1-R3}
	ldrb R0, [R5,#0x19]
	sub R0, #1
	strb R0, [R5,#0x19]
	bne locret_80180EA
	ldrh R0, [R5,#0x30]
	strh R0, [R5,#0x36]
	ldrh R0, [R5,#0x32]
	strh R0, [R5,#0x3E]
	ldrb R0, [R5,#0x1C]
	ldrb R1, [R5,#0x1D]
	strb R0, [R5,#0x14]
	strb R1, [R5,#0x15]
	bl sub_800F768
	strb R0, [R5,#0x19]
	mov R0, #0xD
	add R0, #0xFF
	bl sound_play // () -> void
	mov R0, #0x10
	strb R0, [R5,#0x18]
locret_80180EA:
	pop {r7,pc}
.endfunc // sub_80180A8

.func
.thumb_func
sub_80180EC:
	push {r4,r6,r7,lr}
	mov r7, #0x34 
	add r7, r7, r5
	ldmia R7!, {R0-R4,R6}
	add r0, r0, r3
	add r1, r1, r4
	sub r2, r2, r6
	mov r7, #0x34 
	add r7, r7, r5
	stmia R7!, {R0-R2}
	ldrb R0, [R5,#0x19]
	sub R0, #1
	strb R0, [R5,#0x19]
	bne locret_8018132
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	strb R0, [R5,#0x12]
	strb R1, [R5,#0x13]
	bl sub_800E29C // () -> void
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	ldrb R2, [R5,#0xE]
	mov R3, #0
	ldr R4, dword_8018134 // =0x6050001 
	ldr R6, [R5,#0x2C]
	mov R7, #3
	bl sub_80C53A6
	mov R0, #0
	strh R0, [R5,#0x24]
	mov R0, #2
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
locret_8018132:
	pop {r4,r6,r7,pc}
dword_8018134: .word 0x6050001
.endfunc // sub_80180EC

locret_8018138:
	mov PC, LR
loc_801813A:
	push {lr}
	ldr R1, off_8018148 // =off_801814C 
	ldrb R0, [R5,#0x18]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
off_8018148: .word off_801814C
off_801814C: .word sub_8018154+1
	.word sub_8018186+1
.func
.thumb_func
sub_8018154:
	push {lr}
	bl sub_801A180
	ldr R1, dword_80182A0 // =0x10000000 
	ldr R2, off_80182A4 // =0x1000 
	tst R0, R2
	bne loc_8018164
	ldr R1, dword_80182A8 // =0x20000000 
loc_8018164:
	add r0, r1, #0
	bl object_setFlag // (int a1) -> void
	ldr R0, off_80182AC // =0x3000 
	bl sub_801A176
	mov r0, #0x3c 
	strb R0, [R5,#0x19]
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
.endfunc // sub_8018154

	bl sub_801A074 // () -> void
	mov R0, #4
	strb R0, [R5,#0x18]
	pop {pc}
.func
.thumb_func
sub_8018186:
	push {r4,lr}
	ldrb R0, [R5]
	mov R1, #2
	orr R0, R1
	strb R0, [R5]
	ldrb R0, [R5,#0x19]
	lsr r0, r0, #2
	bcs loc_80181AA
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov r4, #0x42 
	bl sub_80E05F6
loc_80181AA:
	ldrb R0, [R5,#0x19]
	sub R0, #1
	strb R0, [R5,#0x19]
	bne locret_80181F4
	bl sub_800F806
	mov R4, #1
	lsl r4, r4, #8
	add r4, r4, r0
	lsl r4, r4, #8
	bl sub_800F656
	add r0, r5, #0
	bl sub_80E544C
	bl object_getFlag // () -> int
	ldr R1, dword_80182A0 // =0x10000000 
	tst R0, R1
	beq loc_80181E2
	add R4, #3
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	ldrb R2, [R5,#0x16]
	ldr R6, [R5,#0x2C]
	bl sub_80CFBC4
	b loc_80181F0
loc_80181E2:
	mov R4, #1
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	ldrb R2, [R5,#0x16]
	ldr R6, [R5,#0x2C]
	bl sub_80D99EC
loc_80181F0:
	mov R0, #8
	str R0, [R5,#8]
locret_80181F4:
	pop {r4,pc}
.endfunc // sub_8018186

.func
.thumb_func
sub_80181F6:
	push {lr}
	bl battle_isTimeStop
	bne loc_8018206
	ldrb R0, [R5]
	mov R1, #2
	orr R0, R1
	strb R0, [R5]
loc_8018206:
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0xD]
	ldrb R1, [R5,#0x16]
	eor R0, R1
	beq locret_801823A
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_80103BC
	tst R0, R0
	beq locret_801823A
	push {r5}
	add r5, r0, #0
	bl object_getFlag // () -> int
	ldr R1, off_80182B0 // =0x2000 
	tst R0, R1
	pop {r5}
	beq locret_801823A
	ldrb R0, [R5]
	mov R1, #2
	bic R0, R1
	strb R0, [R5]
	b locret_801823A
locret_801823A:
	pop {pc}
.endfunc // sub_80181F6

.func
.thumb_func
sub_801823C:
	push {lr}
	bl sub_80181F6
	ldrb R0, [R5,#0x18]
	tst R0, R0
	bne loc_8018258
	ldrh R0, [R5,#0x36]
	strh R0, [R5,#0x30]
	ldrh R0, [R5,#0x3E]
	strh R0, [R5,#0x32]
	mov R0, #0
	strb R0, [R5,#0x19]
	mov R0, #4
	strb R0, [R5,#0x18]
loc_8018258:
	ldr R0, [R5,#0x54]
	mov R1, #0x80
	ldrh R1, [R0,R1]
	tst R1, R1
	beq loc_8018266
	mov R0, #0x1E
	strb R0, [R5,#0x19]
loc_8018266:
	ldrb R0, [R5,#0x19]
	tst R0, R0
	beq loc_8018288
	sub R0, #1
	strb R0, [R5,#0x19]
	ldrh R1, [R5,#0x30]
	lsl r1, r1, #0x10
	ldr R2, [R5,#0x38]
	ldrh R3, [R5,#0x32]
	lsl r3, r3, #0x10
	mov R0, #3
	bl sub_801BDDE
	mov r0, #0x34 
	add r0, r0, r5
	stmia R0!, {R1-R3}
	b locret_8018290
loc_8018288:
	ldrh R0, [R5,#0x30]
	strh R0, [R5,#0x36]
	ldrh R0, [R5,#0x32]
	strh R0, [R5,#0x3E]
locret_8018290:
	pop {pc}
	.balign 4, 0x00
off_8018294: .word 0x400
off_8018298: .word 0xC00
off_801829C: .word LCDControl
dword_80182A0: .word 0x10000000
off_80182A4: .word 0x1000
dword_80182A8: .word 0x20000000
off_80182AC: .word 0x3000
off_80182B0: .word 0x2000
.endfunc // sub_801823C

.func
.thumb_func
sub_80182B4:
	mov R1, #3
	mul R1, R0
	ldr R0, off_80182C0 // =unk_80182C4 
	add r0, r0, r1
	mov PC, LR
	.byte 0, 0
off_80182C0: .word unk_80182C4
unk_80182C4: .byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  1
	.byte  1
	.byte  0
	.byte  1
	.byte  2
	.byte  0
	.byte  1
	.byte  3
	.byte  0
	.byte  1
	.byte  4
	.byte  0
	.byte  1
	.byte  5
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  2
	.byte  1
	.byte  0
	.byte  2
	.byte  2
	.byte  0
	.byte  2
	.byte  3
	.byte  0
	.byte  2
	.byte  4
	.byte  0
	.byte  2
	.byte  5
	.byte  0
	.byte  2
	.byte  0
	.byte  0
	.byte  3
	.byte  1
	.byte  0
	.byte  3
	.byte  2
	.byte  0
	.byte  3
	.byte  3
	.byte  0
	.byte  3
	.byte  4
	.byte  0
	.byte  3
	.byte  5
	.byte  0
	.byte  3
	.byte  0
	.byte  0
	.byte  4
	.byte  1
	.byte  0
	.byte  4
	.byte  2
	.byte  0
	.byte  4
	.byte  3
	.byte  0
	.byte  4
	.byte  4
	.byte  0
	.byte  4
	.byte  5
	.byte  0
	.byte  4
	.byte  0
	.byte  0
	.byte  5
	.byte  1
	.byte  0
	.byte  5
	.byte  2
	.byte  0
	.byte  5
	.byte  3
	.byte  0
	.byte  5
	.byte  4
	.byte  0
	.byte  5
	.byte  5
	.byte  0
	.byte  5
	.byte  0
	.byte  0
	.byte  6
	.byte  1
	.byte  0
	.byte  6
	.byte  2
	.byte  0
	.byte  6
	.byte  3
	.byte  0
	.byte  6
	.byte  4
	.byte  0
	.byte  6
	.byte  5
	.byte  0
	.byte  6
	.byte  0
	.byte  0
	.byte  7
	.byte  1
	.byte  0
	.byte  7
	.byte  2
	.byte  0
	.byte  7
	.byte  3
	.byte  0
	.byte  7
	.byte  4
	.byte  0
	.byte  7
	.byte  5
	.byte  0
	.byte  7
	.byte  0
	.byte  0
	.byte  8
	.byte  1
	.byte  0
	.byte  8
	.byte  2
	.byte  0
	.byte  8
	.byte  3
	.byte  0
	.byte  8
	.byte  4
	.byte  0
	.byte  8
	.byte  5
	.byte  0
	.byte  8
	.byte  0
	.byte  0
	.byte  9
	.byte  1
	.byte  0
	.byte  9
	.byte  2
	.byte  0
	.byte  9
	.byte  3
	.byte  0
	.byte  9
	.byte  4
	.byte  0
	.byte  9
	.byte  5
	.byte  0
	.byte  9
	.byte  0
	.byte  0
	.byte 0xA
	.byte  1
	.byte  0
	.byte 0xA
	.byte  2
	.byte  0
	.byte 0xA
	.byte  3
	.byte  0
	.byte 0xA
	.byte  4
	.byte  0
	.byte 0xA
	.byte  5
	.byte  0
	.byte 0xA
	.byte  0
	.byte  0
	.byte 0xB
	.byte  1
	.byte  0
	.byte 0xB
	.byte  2
	.byte  0
	.byte 0xB
	.byte  3
	.byte  0
	.byte 0xB
	.byte  4
	.byte  0
	.byte 0xB
	.byte  5
	.byte  0
	.byte 0xB
	.byte  0
	.byte  0
	.byte 0xC
	.byte  1
	.byte  0
	.byte 0xC
	.byte  2
	.byte  0
	.byte 0xC
	.byte  3
	.byte  0
	.byte 0xC
	.byte  4
	.byte  0
	.byte 0xC
	.byte  5
	.byte  0
	.byte 0xC
	.byte  0
	.byte  0
	.byte 0xD
	.byte  1
	.byte  0
	.byte 0xD
	.byte  2
	.byte  0
	.byte 0xD
	.byte  3
	.byte  0
	.byte 0xD
	.byte  4
	.byte  0
	.byte 0xD
	.byte  5
	.byte  0
	.byte 0xD
	.byte  0
	.byte  0
	.byte 0xE
	.byte  1
	.byte  0
	.byte 0xE
	.byte  2
	.byte  0
	.byte 0xE
	.byte  3
	.byte  0
	.byte 0xE
	.byte  4
	.byte  0
	.byte 0xE
	.byte  5
	.byte  0
	.byte 0xE
	.byte  0
	.byte  0
	.byte 0xF
	.byte  1
	.byte  0
	.byte 0xF
	.byte  2
	.byte  0
	.byte 0xF
	.byte  3
	.byte  0
	.byte 0xF
	.byte  4
	.byte  0
	.byte 0xF
	.byte  5
	.byte  0
	.byte 0xF
	.byte  0
	.byte  0
	.byte 0x10
	.byte  1
	.byte  0
	.byte 0x10
	.byte  2
	.byte  0
	.byte 0x10
	.byte  3
	.byte  0
	.byte 0x10
	.byte  4
	.byte  0
	.byte 0x10
	.byte  5
	.byte  0
	.byte 0x10
	.byte  0
	.byte  0
	.byte 0x11
	.byte  1
	.byte  0
	.byte 0x11
	.byte  2
	.byte  0
	.byte 0x11
	.byte  3
	.byte  0
	.byte 0x11
	.byte  4
	.byte  0
	.byte 0x11
	.byte  5
	.byte  0
	.byte 0x11
	.byte  0
	.byte  0
	.byte 0x12
	.byte  1
	.byte  0
	.byte 0x12
	.byte  2
	.byte  0
	.byte 0x12
	.byte  3
	.byte  0
	.byte 0x12
	.byte  4
	.byte  0
	.byte 0x12
	.byte  5
	.byte  0
	.byte 0x12
	.byte  0
	.byte  0
	.byte 0x13
	.byte  1
	.byte  0
	.byte 0x13
	.byte  2
	.byte  0
	.byte 0x13
	.byte  3
	.byte  0
	.byte 0x13
	.byte  4
	.byte  0
	.byte 0x13
	.byte  5
	.byte  0
	.byte 0x13
	.byte  0
	.byte  0
	.byte 0x14
	.byte  1
	.byte  0
	.byte 0x14
	.byte  2
	.byte  0
	.byte 0x14
	.byte  3
	.byte  0
	.byte 0x14
	.byte  4
	.byte  0
	.byte 0x14
	.byte  5
	.byte  0
	.byte 0x14
	.byte  0
	.byte  0
	.byte 0x15
	.byte  1
	.byte  0
	.byte 0x15
	.byte  2
	.byte  0
	.byte 0x15
	.byte  3
	.byte  0
	.byte 0x15
	.byte  4
	.byte  0
	.byte 0x15
	.byte  5
	.byte  0
	.byte 0x15
	.byte  0
	.byte  0
	.byte 0x16
	.byte  1
	.byte  0
	.byte 0x16
	.byte  2
	.byte  0
	.byte 0x16
	.byte  3
	.byte  0
	.byte 0x16
	.byte  4
	.byte  0
	.byte 0x16
	.byte  5
	.byte  0
	.byte 0x16
	.byte  0
	.byte  0
	.byte 0x17
	.byte  1
	.byte  0
	.byte 0x17
	.byte  2
	.byte  0
	.byte 0x17
	.byte  3
	.byte  0
	.byte 0x17
	.byte  4
	.byte  0
	.byte 0x17
	.byte  5
	.byte  0
	.byte 0x17
	.byte  0
	.byte  0
	.byte 0x18
	.byte  1
	.byte  0
	.byte 0x18
	.byte  2
	.byte  0
	.byte 0x18
	.byte  3
	.byte  0
	.byte 0x18
	.byte  4
	.byte  0
	.byte 0x18
	.byte  5
	.byte  0
	.byte 0x18
	.byte  0
	.byte  0
	.byte 0x19
	.byte  1
	.byte  0
	.byte 0x19
	.byte  2
	.byte  0
	.byte 0x19
	.byte  3
	.byte  0
	.byte 0x19
	.byte  4
	.byte  0
	.byte 0x19
	.byte  5
	.byte  0
	.byte 0x19
	.byte  0
	.byte  0
	.byte 0x1A
	.byte  1
	.byte  0
	.byte 0x1A
	.byte  2
	.byte  0
	.byte 0x1A
	.byte  3
	.byte  0
	.byte 0x1A
	.byte  4
	.byte  0
	.byte 0x1A
	.byte  5
	.byte  0
	.byte 0x1A
	.byte  0
	.byte  0
	.byte 0x1B
	.byte  1
	.byte  0
	.byte 0x1B
	.byte  2
	.byte  0
	.byte 0x1B
	.byte  3
	.byte  0
	.byte 0x1B
	.byte  4
	.byte  0
	.byte 0x1B
	.byte  5
	.byte  0
	.byte 0x1B
	.byte  0
	.byte  0
	.byte 0x1C
	.byte  1
	.byte  0
	.byte 0x1C
	.byte  2
	.byte  0
	.byte 0x1C
	.byte  3
	.byte  0
	.byte 0x1C
	.byte  4
	.byte  0
	.byte 0x1C
	.byte  5
	.byte  0
	.byte 0x1C
	.byte  0
	.byte  0
	.byte 0x1D
	.byte  1
	.byte  0
	.byte 0x1D
	.byte  2
	.byte  0
	.byte 0x1D
	.byte  3
	.byte  0
	.byte 0x1D
	.byte  4
	.byte  0
	.byte 0x1D
	.byte  5
	.byte  0
	.byte 0x1D
	.byte  0
	.byte  0
	.byte 0x1E
	.byte  1
	.byte  0
	.byte 0x1E
	.byte  2
	.byte  0
	.byte 0x1E
	.byte  3
	.byte  0
	.byte 0x1E
	.byte  4
	.byte  0
	.byte 0x1E
	.byte  5
	.byte  0
	.byte 0x1E
	.byte  0
	.byte  0
	.byte 0x1F
	.byte  1
	.byte  0
	.byte 0x1F
	.byte  2
	.byte  0
	.byte 0x1F
	.byte  3
	.byte  0
	.byte 0x1F
	.byte  4
	.byte  0
	.byte 0x1F
	.byte  5
	.byte  0
	.byte 0x1F
	.byte  0
	.byte  0
	.byte  1
	.byte  1
	.byte  0
	.byte  1
	.byte  2
	.byte  0
	.byte  1
	.byte  3
	.byte  0
	.byte  1
	.byte  4
	.byte  0
	.byte  1
	.byte  5
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  1
	.byte  0
	.byte  1
	.byte  2
	.byte  0
	.byte  1
	.byte  3
	.byte  0
	.byte  1
	.byte  4
	.byte  0
	.byte  1
	.byte  5
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  1
	.byte  0
	.byte  1
	.byte  2
	.byte  0
	.byte  1
	.byte  3
	.byte  0
	.byte  1
	.byte  4
	.byte  0
	.byte  1
	.byte  5
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  1
	.byte  0
	.byte  1
	.byte  2
	.byte  0
	.byte  1
	.byte  3
	.byte  0
	.byte  1
	.byte  4
	.byte  0
	.byte  1
	.byte  5
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  1
	.byte  0
	.byte  1
	.byte  2
	.byte  0
	.byte  1
	.byte  3
	.byte  0
	.byte  1
	.byte  4
	.byte  0
	.byte  1
	.byte  5
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  1
	.byte  0
	.byte  1
	.byte  2
	.byte  0
	.byte  1
	.byte  3
	.byte  0
	.byte  1
	.byte  4
	.byte  0
	.byte  1
	.byte  5
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  1
	.byte  0
	.byte  1
	.byte  2
	.byte  0
	.byte  1
	.byte  3
	.byte  0
	.byte  1
	.byte  4
	.byte  0
	.byte  1
	.byte  5
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  1
	.byte  0
	.byte  1
	.byte  2
	.byte  0
	.byte  1
	.byte  3
	.byte  0
	.byte  1
	.byte  4
	.byte  0
	.byte  1
	.byte  5
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  1
	.byte  0
	.byte  1
	.byte  2
	.byte  0
	.byte  1
	.byte  3
	.byte  0
	.byte  1
	.byte  4
	.byte  0
	.byte  1
	.byte  5
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  1
	.byte  0
	.byte  1
	.byte  2
	.byte  0
	.byte  1
	.byte  3
	.byte  0
	.byte  1
	.byte  4
	.byte  0
	.byte  1
	.byte  5
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  1
	.byte  0
	.byte  1
	.byte  2
	.byte  0
	.byte  1
	.byte  3
	.byte  0
	.byte  1
	.byte  4
	.byte  0
	.byte  1
	.byte  5
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  1
	.byte  1
	.byte  1
	.byte  1
	.byte  2
	.byte  1
	.byte  1
	.byte  3
	.byte  1
	.byte  1
	.byte  4
	.byte  1
	.byte  1
	.byte  5
	.byte  1
	.byte  1
	.byte  0
	.byte  1
	.byte  2
	.byte  1
	.byte  1
	.byte  2
	.byte  2
	.byte  1
	.byte  2
	.byte  3
	.byte  1
	.byte  2
	.byte  4
	.byte  1
	.byte  2
	.byte  5
	.byte  1
	.byte  2
	.byte  0
	.byte  1
	.byte  3
	.byte  1
	.byte  1
	.byte  3
	.byte  2
	.byte  1
	.byte  3
	.byte  3
	.byte  1
	.byte  3
	.byte  4
	.byte  1
	.byte  3
	.byte  5
	.byte  0
	.byte  3
	.byte  0
	.byte  1
	.byte  4
	.byte  1
	.byte  1
	.byte  4
	.byte  2
	.byte  1
	.byte  4
	.byte  3
	.byte  1
	.byte  4
	.byte  4
	.byte  1
	.byte  4
	.byte  5
	.byte  1
	.byte  4
	.byte  0
	.byte  1
	.byte  5
	.byte  1
	.byte  1
	.byte  5
	.byte  2
	.byte  1
	.byte  5
	.byte  3
	.byte  1
	.byte  5
	.byte  4
	.byte  1
	.byte  5
	.byte  5
	.byte  1
	.byte  5
	.byte  0
	.byte  1
	.byte  6
	.byte  1
	.byte  1
	.byte  6
	.byte  2
	.byte  1
	.byte  6
	.byte  3
	.byte  1
	.byte  6
	.byte  4
	.byte  1
	.byte  6
	.byte  5
	.byte  1
	.byte  6
	.byte  0
	.byte  1
	.byte  7
	.byte  1
	.byte  1
	.byte  7
	.byte  2
	.byte  1
	.byte  7
	.byte  3
	.byte  1
	.byte  7
	.byte  4
	.byte  1
	.byte  7
	.byte  5
	.byte  1
	.byte  7
	.byte  0
	.byte  1
	.byte  8
	.byte  1
	.byte  1
	.byte  8
	.byte  2
	.byte  1
	.byte  8
	.byte  3
	.byte  1
	.byte  8
	.byte  4
	.byte  1
	.byte  8
	.byte  5
	.byte  1
	.byte  8
	.byte  0
	.byte  1
	.byte  9
	.byte  1
	.byte  1
	.byte  9
	.byte  2
	.byte  1
	.byte  9
	.byte  3
	.byte  1
	.byte  9
	.byte  4
	.byte  1
	.byte  9
	.byte  5
	.byte  1
	.byte  9
	.byte  0
	.byte  1
	.byte 0xA
	.byte  1
	.byte  1
	.byte 0xA
	.byte  2
	.byte  1
	.byte 0xA
	.byte  3
	.byte  1
	.byte 0xA
	.byte  4
	.byte  1
	.byte 0xA
	.byte  5
	.byte  1
	.byte 0xA
	.byte  0
	.byte  1
	.byte 0xB
	.byte  1
	.byte  1
	.byte 0xB
	.byte  2
	.byte  1
	.byte 0xB
	.byte  3
	.byte  1
	.byte 0xB
	.byte  4
	.byte  1
	.byte 0xB
	.byte  5
	.byte  1
	.byte 0xB
	.byte  0
	.byte  1
	.byte 0xC
	.byte  1
	.byte  1
	.byte 0xC
	.byte  2
	.byte  1
	.byte 0xC
	.byte  3
	.byte  1
	.byte 0xC
	.byte  4
	.byte  1
	.byte 0xC
	.byte  5
	.byte  1
	.byte 0xC
	.byte  0
	.byte  1
	.byte 0xD
	.byte  1
	.byte  1
	.byte 0xD
	.byte  2
	.byte  1
	.byte 0xD
	.byte  3
	.byte  1
	.byte 0xD
	.byte  4
	.byte  1
	.byte 0xD
	.byte  5
	.byte  1
	.byte 0xD
	.byte  0
	.byte  1
	.byte 0xE
	.byte  1
	.byte  1
	.byte 0xE
	.byte  2
	.byte  1
	.byte 0xE
	.byte  3
	.byte  1
	.byte 0xE
	.byte  4
	.byte  1
	.byte 0xE
	.byte  5
	.byte  1
	.byte 0xE
	.byte  0
	.byte  1
	.byte 0xF
	.byte  1
	.byte  1
	.byte 0xF
	.byte  2
	.byte  1
	.byte 0xF
	.byte  3
	.byte  1
	.byte 0xF
	.byte  4
	.byte  1
	.byte 0xF
	.byte  5
	.byte  1
	.byte 0xF
	.byte  0
	.byte  1
	.byte 0x10
	.byte  1
	.byte  1
	.byte 0x10
	.byte  2
	.byte  1
	.byte 0x10
	.byte  3
	.byte  1
	.byte 0x10
	.byte  4
	.byte  1
	.byte 0x10
	.byte  5
	.byte  1
	.byte 0x10
	.byte  0
	.byte  1
	.byte 0x11
	.byte  1
	.byte  1
	.byte 0x11
	.byte  2
	.byte  1
	.byte 0x11
	.byte  3
	.byte  1
	.byte 0x11
	.byte  4
	.byte  1
	.byte 0x11
	.byte  5
	.byte  1
	.byte 0x11
	.byte  0
	.byte  1
	.byte 0x12
	.byte  1
	.byte  1
	.byte 0x12
	.byte  2
	.byte  1
	.byte 0x12
	.byte  3
	.byte  1
	.byte 0x12
	.byte  4
	.byte  1
	.byte 0x12
	.byte  5
	.byte  1
	.byte 0x12
	.byte  0
	.byte  1
	.byte 0x13
	.byte  1
	.byte  1
	.byte 0x13
	.byte  2
	.byte  1
	.byte 0x13
	.byte  3
	.byte  1
	.byte 0x13
	.byte  4
	.byte  1
	.byte 0x13
	.byte  5
	.byte  1
	.byte 0x13
	.byte  0
	.byte  1
	.byte 0x14
	.byte  1
	.byte  1
	.byte 0x14
	.byte  2
	.byte  1
	.byte 0x14
	.byte  3
	.byte  1
	.byte 0x14
	.byte  4
	.byte  1
	.byte 0x14
	.byte  5
	.byte  1
	.byte 0x14
	.byte  0
	.byte  1
	.byte 0x15
	.byte  1
	.byte  1
	.byte 0x15
	.byte  2
	.byte  1
	.byte 0x15
	.byte  3
	.byte  1
	.byte 0x15
	.byte  4
	.byte  1
	.byte 0x15
	.byte  5
	.byte  1
	.byte 0x15
	.byte  0
	.byte  1
	.byte 0x16
	.byte  1
	.byte  1
	.byte 0x16
	.byte  2
	.byte  1
	.byte 0x16
	.byte  3
	.byte  1
	.byte 0x16
	.byte  4
	.byte  1
	.byte 0x16
	.byte  5
	.byte  1
	.byte 0x16
	.byte  0
	.byte  1
	.byte 0x17
	.byte  1
	.byte  1
	.byte 0x17
	.byte  2
	.byte  1
	.byte 0x17
	.byte  3
	.byte  1
	.byte 0x17
	.byte  4
	.byte  1
	.byte 0x17
	.byte  5
	.byte  1
	.byte 0x17
	.byte  0
	.byte  1
	.byte 0x18
	.byte  1
	.byte  1
	.byte 0x18
	.byte  2
	.byte  1
	.byte 0x18
	.byte  3
	.byte  1
	.byte 0x18
	.byte  4
	.byte  1
	.byte 0x18
	.byte  5
	.byte  1
	.byte 0x18
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte  0
	.byte  2
	.byte  0
	.byte  0
	.byte  2
	.byte  1
	.byte  0
	.byte  2
	.byte  2
	.byte  0
	.byte  2
	.byte  3
	.byte  0
	.byte  2
	.byte  4
	.byte  0
	.byte  2
	.byte  5
	.byte  0
	.byte  2
	.byte  6
	.byte  0
	.byte  2
	.byte  7
	.byte  0
	.byte  2
	.byte  8
	.byte  0
	.byte  2
	.byte  9
	.byte  0
	.byte  2
	.byte 0xA
	.byte  0
	.byte  2
	.byte 0xB
	.byte  0
	.byte  2
	.byte 0x19
	.byte  0
	.byte  2
	.byte 0x1A
	.byte  0
	.byte  2
	.byte 0x1B
	.byte  0
	.byte  2
	.byte 0x1C
	.byte  0
	.byte  2
	.byte 0x1D
	.byte  0
	.byte  2
	.byte 0x1E
	.byte  0
	.byte  2
	.byte 0x1F
	.byte  0
	.byte  2
	.byte 0x20
	.byte  0
	.byte  2
	.byte 0x21 
	.byte  0
	.byte  2
	.byte 0x22 
	.byte  0
	.byte  2
	.byte 0x23 
	.byte  0
	.byte  2
	.byte 0x24 
	.byte  0
	.byte  2
	.byte 0x25 
	.byte  0
	.byte  2
	.byte 0x26 
	.byte  0
	.byte  2
	.byte 0x27 
	.byte  0
	.byte  2
	.byte 0x28 
	.byte  0
	.byte  2
	.byte 0x29 
	.byte  0
	.byte  2
	.byte 0x2A 
	.byte  0
	.byte  2
	.byte 0x2B 
	.byte  0
	.byte  2
	.byte 0x2C 
	.byte  0
	.byte  2
	.byte 0x2D 
	.byte  0
	.byte  2
	.byte 0x2E 
	.byte  0
	.byte  2
	.byte 0x2F 
	.byte  0
	.byte  2
	.byte 0x30 
.endfunc // sub_80182B4

.func
.thumb_func
sub_8018810:
	push {R4-R6,lr}
	cmp R0, #0xCD
	blt loc_801881A
	cmp R0, #0xFF
	ble loc_801883C
loc_801881A:
	add r4, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	bl sub_800F26C
	add r2, r4, #0
	bl sub_8018842
	push {r0,r1}
	add r0, r5, #0
	add r1, r6, #0
	bl object_getFlipDirection // (int a1, int a2) -> int
	add r2, r0, #0
	pop {r0,r1}
	mul R0, R2
	pop {R4-R6,pc}
loc_801883C:
	mov R0, #0
	mov R1, #7
	pop {R4-R6,pc}
.endfunc // sub_8018810

.func
.thumb_func
sub_8018842:
	push {r4,lr}
	add r4, r2, r2
	bl sub_8018886
	add r4, r4, r0
	mov R0, #0
	ldrsb R0, [R4,R0]
	mov R1, #1
	ldrsb R1, [R4,R1]
	pop {r4,pc}
.endfunc // sub_8018842

.func
.thumb_func
sub_8018856:
	push {lr}
	push {r0}
	mov r1, #0x2c 
	bl sub_8013774
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	add r0, r1, #0
	add r1, r2, #0
	pop {r2}
	bl sub_8018842
	push {r0,r1}
	bl object_getFlipDirection_800E2CA // () -> int
	add r2, r0, #0
	pop {r0,r1}
	mul R0, R2
	pop {pc}
.endfunc // sub_8018856

.func
.thumb_func
sub_8018886:
	cmp R0, #0
	bne loc_801888E
	ldr R2, off_80188AC // =dword_80188B0 
	ldrb R1, [R2,R1]
loc_801888E:
	ldr R2, off_801889C // =off_80188A0 
	ldr R0, [R2,R0]
	mov r3, #0x44 
	mul R1, R3
	add r0, r0, r1
	mov PC, LR
	.balign 4, 0x00
off_801889C: .word off_80188A0
off_80188A0: .word dword_80188C0
	.word dword_801898C
	.word dword_80191C8
off_80188AC: .word dword_80188B0
dword_80188B0: .word 0x1010100, 0x2020101, 0x1020202, 0x2
dword_80188C0: .word 0x20002
	.word 0x30080002
	.word 0x30083008
	.word 0x18100010
	.word 0x18181810
	.word 0x18121812
	.word 0x18181812
	.word 0x18181917
	.word 0xB051A28
	.word 0x1A28191F
	.word 0x10021914
	.word 0x19181818
	.word 0x19161718
	.word 0x1202191C
	.word 0xFC781058
	.word 0x104010F8
	.word 0x2
	.word 0x60006
	.word 0x2C100006
	.word 0x2C102C10
	.word 0x111B0018
	.word 0x12261118
	.word 0x121F121F
	.word 0x1123111D
	.word 0x11231323
	.word 0xA081433
	.word 0x13301429
	.word 0x10061320
	.word 0x12201223
	.word 0x13201020
	.word 0x10081124
	.word 0xF67C0868
	.word 0xE5018F8
	.word 0x4000006
	.word 0x18041004
	.word 0x40091004
	.word 0x40094009
	.word 0x25100010
	.word 0x26182610
	.word 0x26112611
	.word 0x26162612
	.word 0x25182716
	.word 0x17092728
	.word 0x2728281D
	.word 0x20042712
	.word 0x27162616
	.word 0x27142718
	.word 0x20042619
	.word byte_8721C58
	.word 0x22411CF8
	.word unk_8040A04
dword_801898C: .word 0x0, 0x0, 0x0, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x0
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1200191C, 0x14281918
	.word 0x14001000, 0x0, 0x0
	.word 0x1C000000, 0x18041800, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0xFE020000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x700191C, 0x14281918
	.word 0x14001000, 0x0, 0x0
	.word 0x30000000, 0x28032A00, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0xB040000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1300191C, 0x14281918
	.word 0x14001000, 0xB050000, 0x0
	.word 0x39000000, 0x31073400, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x18000000
	.word 0x0
	.word 0x18000000, 0x1A181719, 0x1A181718, 0xC00191C, 0x14281918
	.word 0x14001800, 0x18030000, 0x0
	.word 0x32000000, 0x28033000, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x8020000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1300191C, 0x14281918
	.word 0x14001000, 0x9000000, 0x0
	.word 0x2D000000, 0x28052B00, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0xE000000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1300191C, 0x14281918
	.word 0x14001000, 0xC000000, 0x0
	.word 0x2A000000, 0x28002800, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x3000000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1000191C, 0x14281918
	.word 0x14001000, 0x6000000, 0x0
	.word 0x28000000, 0x22042100, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x0
	.word 0x0
	.word 0xC000000, 0x1A181719, 0x1A181718, 0x1500191C, 0x14281918
	.word 0x14000C00, 0x0, 0x0
	.word 0x38000000, 0x24043300, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x8030000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1600191C, 0x14281918
	.word 0x14001000, 0xA000000, 0x0
	.word 0x2C000000, 0x1E002300, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x0
	.word 0x0
	.word 0xC000000, 0x1A181719, 0x1A181718, 0x1000191C, 0x14281918
	.word 0x14000C00, 0x0, 0x0
	.word 0x3A000000, 0x39023300, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x13000000
	.word 0x0
	.word 0x18000000, 0x1A181719, 0x1A181718, 0x800191C, 0x14281918
	.word 0x14001800, 0x10000000, 0x0
	.word 0x31000000, 0x25052800, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x3000000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1000191C, 0x14281918
	.word 0x14001000, 0x5000000, 0x0
	.word 0x2E000000, 0x1B192300, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x40000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0xC00191C, 0x14281918
	.word 0x14001000, 0x0, 0x0
	.word 0x26000000, 0x1B032600, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0xFE040000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1600191C, 0x14281918
	.word 0x14001000, 0x0, 0x0
	.word 0x2B000000, 0x30062B00, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x7000000
	.word 0x0
	.word 0x14000000, 0x1A181719, 0x1A181718, 0x1600191C, 0x14281918
	.word 0x14001400, 0x6020000, 0x0
	.word 0x38000000, 0x2B063800, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0xC050000
	.word 0x0
	.word 0x16000000, 0x1A181719, 0x1A181718, 0xC00191C, 0x14281918
	.word 0x14001600, 0x80000, 0x0
	.word 0x40080000, 0x280B4008, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x16080000
	.word 0x0
	.word 0x20040000, 0x1A181719, 0x1A181718, 0x1000191C, 0x14281918
	.word 0x14002004, 0x4000000, 0x0
	.word 0x3F000000, 0x2B033A00, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x6000000
	.word 0x0
	.word 0x17000000, 0x1A181719, 0x1A181718, 0x1B00191C, 0xFA4E1918
	.word 0x14001700, 0x2080000, 0x0
	.word 0x38000000, 0x30063000, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0xF010000
	.word 0x0
	.word 0x18000000, 0x1A181719, 0x1A181718, 0x1000191C, 0x1428144D
	.word 0x14001800, 0x12020000, 0x0
	.word 0x36000000, 0x1F003600, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x8000000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1400191C, 0x14281918
	.word 0x14001000, 0x8000000, 0x0
	.word 0x32000000, 0x2A033000, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x8020000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1800191C, 0x14281918
	.word 0x14001000, 0x8000000, 0x0
	.word 0x25000000, 0x1C072300, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x0
	.word 0x0
	.word 0x8000000
	.word 0x1A181719, 0x1A181718, 0x1600191C, 0x14281918, 0x14000800
	.word 0x30000, 0x0
	.word 0x41F80000, 0x3E023CFB, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x1BFE0000
	.word 0x0
	.word 0x14000000, 0x1A181719, 0x1A181718, 0x1000191C, 0x14281918
	.word 0x140028F8, 0x10000000, 0x0
	.word 0x39000000, 0x3A003200, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x14000000
	.word 0x0
	.word 0x16000000, 0x1A181719, 0x1A181718, 0x1002191C, 0x14281918
	.word 0x14001600, 0x4070000, 0x0
	.word 0x2E000000, 0x30002900, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0xA000000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1000191C, 0x14281918
	.word 0x14001000, 0xA000000, 0x0
	.word 0x30FD0000, 0x2C042800, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0xEFC0000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0xE00191C, 0x14281918
	.word 0x14001000, 0xC000000, 0x0
	.word 0x18000000, 0xDFC1800, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x0
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0xC00191C, 0x14281918
	.word 0x14001000, 0xF0000000, 0x0
	.word 0x26000000, 0x170D2600, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x2040000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0xE00191C, 0x14281918
	.word 0x14001000, 0x2070000, 0x0
	.word 0x40000000, 0x3B013D00, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x10000000
	.word 0x0
	.word 0x16FE0000, 0x1A181719, 0x1A181718, 0x1000191C, 0x14281918
	.word 0x140016FE, 0x0, 0x0
	.word 0x3F060000, 0x37093F05, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x10060000
	.word 0x0
	.word 0x20040000, 0x1A181719, 0x1A181718, 0x1406191C, 0x14281918
	.word 0x14002004, 0x80A0000, 0x0
	.word 0x38080000, 0x380A3808, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x0
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1404191C, 0x14281918
	.word 0x14001000, 0x0
dword_80191C8: .word 0x0, 0x0, 0x0, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x0
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1200191C, 0x14281918
	.word 0x14001000, 0x0
	.word 0x8000800, 0x35060800, 0x37083708, 0x16160018, 0x161A1610
	.word 0x17181712, 0x16181614, 0x1618171A, 0x1008193B, 0x18281821
	.word 0x18021816, 0x1718161A, 0x17181518, 0x1002161C, 0xFB780E5B
	.word 0x10431CFC, 0x806, 0x14001400, 0x46021400, 0x46024602
	.word 0x2B0C0010, 0x2C142B0C, 0x2D0E2C0E, 0x2C142C0E, 0x2C142D14
	.word 0x1E022E23, 0x2D242F1B, 0x20002E10, 0x2D122C14, 0x2E142B14
	.word 0x22022D17, 0x10701C58, 0x28401CF8, 0xA021002, 0x8030000
	.word 0x32080000, 0x30083008, 0x1A18001A, 0x18201910, 0x181C181A
	.word 0x18201A1E, 0x18201A22, 0xA041A30, 0x1A2C1A24, 0x12041A1C
	.word 0x19201820, 0x1A221818, 0x12001823, 0xFC7C1062, 0x164016F6
	.word 0xA000003, 0xE060A03, 0x3C0C0A03, 0x380E380C, 0x25170018
	.word 0x241E2410, 0x25182418, 0x241A2417, 0x2420251E, 0xE08252C
	.word 0x252A2623, 0x1A082618, 0x251C241E, 0x261C2618, 0xE082420
	.word 0x8781A5E, 0x204020F2, 0x10000804, 0xA000000, 0x30100000
	.word 0x24102E04, 0x110E001C, 0x10161110, 0x11121010, 0x11161110
	.word 0x10161216, 0x8001230, 0x12261220, 0x14001212, 0x11161016
	.word 0x12161014, 0x8001116, 0xF8700850, 0xE3C18FC, 0x8000000
	.word 0xFC00, 0x2A03FC00, 0x26042600, 0xE0E0010, 0xD161008
	.word 0xC100C10, 0xD140E10, 0xC160D15, 0x8000E20, 0x10200E1E
	.word 0x10000E12, 0xD140C16, 0xD141010, 0x8000D16, 0xF0780458
	.word 0x84010F8, 0x0
	.word 0x8040000
	.byte  0
	.byte  0
	.byte 0xA
	.byte 0x36 
	.byte 0xA
	.byte 0x32 
	.byte 0xA
	.byte 0x2E 
	.byte 0x18
	.byte  0
	.byte 0xD
	.byte 0x15
	.byte 0xD
	.byte 0x15
	.byte 0x16
	.byte 0x14
	.byte 0x10
	.byte 0x14
	.byte 0x12
	.byte 0x14
	.byte 0x12
	.byte 0x14
	.byte 0x16
	.byte 0x15
	.byte 0x16
	.byte 0x15
	.byte 0x14
	.byte 0x14
	.word unk_8061622
	.byte 0x1F
	.byte 0x15
	.byte 0x22 
	.byte 0x15
	.byte 0x12
	.byte 0x15
	.byte  4
	.byte 0x16
	.byte 0x16
	.byte 0x14
	.byte 0x16
	.byte 0x15
	.byte 0x10
	.byte 0x14
	.byte 0x16
	.byte 0x15
	.word byte_8061416
	.byte 0x58 
	.byte 0xB
	.byte 0x78 
	.byte 0xF8
	.byte  4
	.byte 0x16
	.byte 0x40 
	.byte 0x10
	.byte  0
	.byte  0
	.byte  8
	.byte  8
	.byte  2
	.byte 0x18
	.byte  0
	.byte 0x1E
	.byte  2
	.byte 0x18
	.byte  2
	.byte 0x4E 
	.byte  2
	.byte 0x48 
	.byte  6
	.byte 0x4E 
	.byte 0x14
	.byte  0
	.byte 0x10
	.byte 0x33 
	.byte 0x10
	.byte 0x32 
	.byte 0x14
	.byte 0x32 
	.byte 0xE
	.byte 0x32 
	.byte 0x10
	.byte 0x32 
	.byte 0xE
	.byte 0x32 
	.byte 0x13
	.byte 0x32 
	.byte 0x16
	.byte 0x33 
	.byte 0x15
	.byte 0x31 
	.byte 0x28 
	.byte 0x33 
	.byte  5
	.byte 0x20
	.byte 0x20
	.byte 0x30 
	.byte 0x20
	.byte 0x33 
	.byte 0x10
	.byte 0x33 
	.byte  0
	.byte 0x28 
	.byte 0x16
	.byte 0x32 
	.byte 0x13
	.byte 0x32 
	.byte 0x10
	.byte 0x30 
	.byte 0x13
	.byte 0x33 
	.byte 0x16
	.byte 0x32 
	.byte  5
	.byte 0x20
	.byte 0x58 
	.byte 0x1C
	.byte 0x78 
	.byte 0x10
	.byte 0xF8
	.byte 0x25 
	.byte 0x40 
	.byte 0x28 
	.byte  2
	.byte  8
	.byte  4
	.byte 0x18
	.byte 0xFC
	.byte  4
	.byte 0xFE
	.byte 0x16
	.byte 0xFC
	.byte  4
	.byte  0
	.byte 0x40 
	.byte  0
	.byte 0x40 
	.byte  0
	.byte 0x3A 
	.byte 0x16
	.byte  0
	.byte 0xC
	.byte 0x21 
	.byte 0xC
	.byte 0x21 
	.byte 0x10
	.byte 0x20
	.byte  8
	.byte 0x20
	.byte 0x10
	.byte 0x20
	.byte 0x10
	.byte 0x20
	.byte 0x10
	.byte 0x20
	.byte 0x10
	.byte 0x21 
	.byte 0xE
	.byte 0x1F
	.byte 0x28 
	.byte 0x21 
	.byte 0xFC
	.byte 0x10
	.byte 0x1E
	.byte 0x21 
	.byte 0x1E
	.byte 0x20
	.byte 0xE
	.byte 0x21 
	.byte 0xFE
	.byte 0x16
	.byte 0x10
	.byte 0x20
	.byte 0x10
	.byte 0x20
	.byte 0x10
	.byte 0x20
	.byte 0xE
	.byte 0x21 
	.byte 0x12
	.byte 0x1F
	.byte 0xFC
	.byte 0x10
	.byte 0x58 
	.byte 0x10
	.byte 0x78 
	.byte  0
	.byte 0xFE
	.byte 0x16
	.byte 0x40 
	.byte 0x16
	.byte 0xFC
	.byte  8
	.byte  0
	.byte  0
	.byte  2
	.byte  6
	.byte  2
	.byte  6
	.byte  2
	.byte  6
	.byte  0
	.byte 0x3F 
	.byte  0
	.byte 0x3C 
	.byte  8
	.byte 0x3D 
	.byte 0x1D
	.byte  0
	.byte 0x17
	.byte 0x1D
	.byte 0x10
	.byte 0x18
	.byte 0x1E
	.byte 0x1D
	.byte 0x18
	.byte 0x1D
	.byte 0x19
	.byte 0x1D
	.byte 0x1B
	.byte 0x1D
	.byte 0x1D
	.byte 0x1C
	.byte 0x20
	.byte 0x1D
	.byte 0x1B
	.byte 0x1C
	.byte 0x42 
	.byte 0x1F
	.byte  0
	.byte 0x19
	.byte 0x27 
	.byte 0x1E
	.byte 0x2B 
	.byte 0x1F
	.byte 0x1B
	.byte 0x1E
	.byte  0
	.byte 0x19
	.byte 0x20
	.byte 0x1D
	.byte 0x20
	.byte 0x1E
	.byte 0x1C
	.byte 0x1C
	.byte 0x1D
	.byte 0x1F
	.byte 0x1E
	.byte 0x1E
	.byte  0
	.byte 0x19
	.byte 0x6A 
	.byte 0x14
	.byte 0x76 
	.byte 0xFF
	.byte  0
	.byte 0x19
	.byte 0x4E 
	.byte 0x18
	.byte  0
	.byte  4
	.byte  0
	.byte  0
	.byte  4
	.byte  0
	.byte  4
	.byte  0
	.byte  4
	.byte  0
	.byte 0xA
	.byte 0x32 
	.byte 0xA
	.byte 0x32 
	.byte 0xA
	.byte 0x32 
	.byte 0x10
	.byte  0
	.byte 0x10
	.byte 0x18
	.byte 0x10
	.byte 0x18
	.byte 0x1B
	.byte 0x19
	.byte 0x14
	.byte 0x1A
	.byte 0x14
	.byte 0x1A
	.byte 0x14
	.byte 0x19
	.byte 0x18
	.byte 0x18
	.byte 0x18
	.byte 0x1B
	.byte 0x18
	.byte 0x19
	.byte 0x2B 
	.byte 0x1C
	.byte  6
	.byte 0xC
	.byte 0x1E
	.byte 0x1B
	.byte 0x28 
	.byte 0x1B
	.byte 0x14
	.byte 0x1B
	.byte  2
	.byte 0x14
	.byte 0x18
	.byte 0x1A
	.byte 0x18
	.byte 0x1B
	.byte 0x18
	.byte 0x17
	.byte 0x18
	.byte 0x1B
	.byte 0x1B
	.byte 0x19
	.byte  4
	.byte 0x16
	.byte 0x5A 
	.byte  8
	.byte 0x72 
	.byte 0xFC
	.byte 0xF8
	.byte 0x14
	.byte 0x44 
	.byte 0x16
	.byte  4
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.word 0x48080000, 0x48084808, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x20040000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1200191C, 0x14281918
	.word 0x14002300, 0x10080000, 0x0
	.word 0x40040000, 0x3D0A3D08, 0x10, 0x18181810, 0x18121812
	.word 0x18181812, 0x18181818, 0x100A0000, 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1200191C, 0x14281918
	.word 0x140018F8, 0x2FC0000, 0x0
	.word 0x40F90000, 0x39014000, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x9000000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1200191C, 0x14281918
	.word 0x140018F0, 0xFD000000, 0x0
	.word 0x4D000000, 0x48004800, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x1A000000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1200191C, 0x14281918
	.word 0x140026F6, 0x9000000, 0x0
	.word 0x48FC0000, 0x42FE46FC, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x1BFD0000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1200191C, 0x14281918
	.word 0x14001CF0, 0x4FE0000, 0x1EFC18FC, 0x500018FC, 0x48004800
	.word 0x10, 0x18181810, 0x18121812, 0x18181812, 0x18181818
	.word 0x20000000, 0x0
	.word 0x28FC0000, 0x1A181719, 0x1A181718, 0x2800191C, 0x14281918
	.word 0x140028F8, 0x16F80000, 0x0
	.word 0x3C080000, 0x38083A08, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0xD040000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1200191C, 0x14281918
	.word 0x14001EF4, 0x8060000, 0x1000, 0x460A0000, 0x400C400A
	.word 0x0
	.word 0x18182A0E, 0x18121812, 0x18181812, 0x18181818, 0x14040000
	.word 0x2A1A, 0x10002A0C, 0x1A181719, 0x1A182810, 0x1404191C
	.word 0x14281918, 0x140022FC, 0x10080000, 0x0, 0x0
	.word 0x0, 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x1B3C0000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1200191C, 0x14281918
	.word 0x14001000, 0x0, 0x0, 0x0, 0x0
	.word 0x0
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0xAF00000
	.word 0x0
	.word 0x10000000, 0x1A181719, 0x1A181718, 0x1200191C, 0x14281918
	.word 0x14001000, 0x0
	.word 0x1EFC18FC, 0x500018FC, 0x48004800
	.word 0x10
	.word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x20000000
	.word 0x0
	.word 0x28FC0000, 0x1A181719, 0x1A181718, 0x2800191C, 0x14281918
	.word 0x140028F8, 0x16F80000, 0x60006, 0x2A100006, 0x2C102C10
	.word 0x111B0018, 0x11231118, 0x111D111D, 0x1123111D, 0x11231123
	.word 0x10081330, 0x13301523, 0x10061AFF, 0x12201120, 0x12231020
	.word 0x10081224, 0x14301223, 0x140018F8, 0x0
	.word 0x18041004, 0x40081004, 0x40084008, 0x25100010, 0x26182610
	.word 0x26122611, 0x26182612, 0x25182618, 0x20042828, 0x27282718
	.word 0x20042712, 0x27162618, 0x27182718, 0x20042619, 0x26282718
	.word 0x14001CF8, 0x0
.endfunc // sub_8018886

.func
.thumb_func
sub_801986C:
	push {r4,r5,lr}
	ldr R1, off_80198E4 // =dword_2035310 
	mov R0, #0
	str R0, [R1]
	mov R5, #1
	lsl r5, r5, #0x1f
	mov R4, R10
	ldr R4, [R4,#0x30]
loc_801987C:
	// memBlock
	add r0, r4, #0
	// size
	mov R1, #0xA8
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	str R5, [R4,#0x44]
	add R4, #0xA8
	lsr r5, r5, #1
	bne loc_801987C
	bl sub_8019FA4
	pop {r4,r5,pc}
.endfunc // sub_801986C

.func
.thumb_func
sub_8019892:
	push {r4,lr}
	mov R0, R10
	// memBlock
	ldr R0, [R0,#0x30]
	ldr R3, off_80198E4 // =dword_2035310 
	ldr R2, [R3]
	mov R1, #1
	lsl r1, r1, #0x1f
loc_80198A0:
	tst R2, R1
	beq loc_80198AE
	add R0, #0xA8
	lsr r1, r1, #1
	bne loc_80198A0
	mov R0, #0
	pop {r4,pc}
loc_80198AE:
	orr R2, R1
	str R2, [R3]
	add r4, r0, #0
	// size
	mov r1, #0x44 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov r0, #0x48 
	// memBlock
	add r0, r0, r4
	// size
	mov r1, #0x60 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	add r0, r4, #0
	mov R1, #1
	strb R1, [R0]
	str R0, [R5,#0x54]
	pop {r4,pc}
.endfunc // sub_8019892

.func
.thumb_func
sub_80198CE:
	tst R0, R0
	beq locret_80198E0
	mov R1, #0
	strb R1, [R0]
	ldr R2, [R0,#0x44]
	ldr R3, off_80198E4 // =dword_2035310 
	ldr R1, [R3]
	bic R1, R2
	str R1, [R3]
locret_80198E0:
	mov PC, LR
	.balign 4, 0x00
off_80198E4: .word dword_2035310
byte_80198E8: .byte 0x7F
byte_80198E9: .byte 0x0, 0x0, 0x7F
byte_80198EC: .byte 0x0, 0x0, 0x1, 0x0, 0x7F
byte_80198F1: .byte 0x1, 0x0, 0x7F
byte_80198F4: .byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x1, 0x7F
byte_80198FB: .byte 0x0, 0xFF, 0x0, 0x1, 0x7F
byte_8019900: .byte 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x7F
byte_8019907: .byte 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x3, 0x0, 0x7F
byte_8019910: .byte 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x3, 0x0, 0x4, 0x0, 0x5, 0x0, 0x7F
byte_801991D: .byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0xFF, 0x0, 0x7F
byte_8019928: .byte 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0xFF, 0x0, 0x7F
byte_8019931: .byte 0x0, 0x0, 0x1, 0xFF, 0xFF, 0x1, 0x1, 0x1, 0xFF, 0xFF, 0x7F
byte_801993C: .byte 0x1, 0xFF, 0xFF, 0x1, 0x1, 0x1, 0xFF, 0xFF, 0x7F
byte_8019945: .byte 0x0, 0x0, 0x1, 0xFF, 0x1, 0x1, 0x7F
byte_801994C: .byte 0x1, 0xFF, 0x1, 0x1, 0x7F
byte_8019951: .byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0xFF, 0x0, 0x1, 0xFF, 0xFF
	.byte 0x1, 0x1, 0x1, 0xFF, 0xFF, 0x7F
byte_8019964: .byte 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0xFF, 0x0, 0x1, 0xFF, 0xFF, 0x1, 0x1
	.byte 0x1, 0xFF, 0xFF, 0x7F
byte_8019975: .byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0x1, 0xFF, 0x1, 0x1, 0x7F
byte_8019982: .byte 0x0, 0x0, 0x1, 0xFF, 0xFF, 0x1, 0x7F
byte_8019989: .byte 0x0, 0x0, 0xFF, 0xFF, 0x1, 0x1, 0x7F
byte_8019990: .byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0x7F
byte_8019999: .byte 0x0, 0x0, 0x1, 0xFF, 0x1, 0x1, 0x1, 0x0, 0x7F
byte_80199A2: .byte 0x0, 0x0, 0x1, 0xFF, 0x7F
byte_80199A7: .byte 0x0, 0x0, 0x1, 0x1, 0x7F
byte_80199AC: .byte 0x0, 0x0, 0x0, 0xFF, 0x7F
byte_80199B1: .byte 0x0, 0x0, 0x0, 0x1, 0x7F
byte_80199B6: .byte 0x0, 0x0, 0x1, 0xFF, 0x1, 0x0, 0x1, 0x1, 0x2, 0xFF, 0x2, 0x0, 0x2, 0x1, 0x7F
byte_80199C5: .byte 0x0, 0x0, 0x1, 0xFF, 0x1, 0x0, 0x1, 0x1, 0x2, 0xFF, 0x2, 0x0, 0x2, 0x1, 0x3
	.byte 0xFF, 0x3, 0x0, 0x3, 0x1, 0x7F
byte_80199DA: .byte 0x0, 0x0, 0x1, 0xFF, 0x1, 0x0, 0x1, 0x1, 0x2, 0xFF, 0x2, 0x0, 0x2, 0x1, 0x3
	.byte 0xFF, 0x3, 0x0, 0x3, 0x1, 0x4, 0xFF, 0x4, 0x0, 0x4, 0x1, 0x7F
byte_80199F5: .byte 0x0, 0x0, 0x1, 0x0, 0xFF, 0x0, 0x7F
byte_80199FC: .byte 0x1, 0x0, 0xFF, 0x0, 0x7F
byte_8019A01: .byte 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0x1, 0x7F
byte_8019A08: .byte 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x3, 0x0, 0x4, 0x0, 0x7F
byte_8019A13: .byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0x1, 0xFF, 0x1, 0x1, 0x2, 0x0, 0x2
	.byte 0xFF, 0x2, 0x1, 0x3, 0x0, 0x3, 0xFF, 0x3, 0x1, 0x7F
byte_8019A2C: .byte 0xFF, 0xFF, 0x0, 0xFF, 0x1, 0xFF, 0x0, 0x0, 0xFF, 0x1, 0x0, 0x1
	.byte 0x1, 0x1, 0x7F
byte_8019A3B: .byte 0x0, 0xFF, 0x1, 0xFF, 0x2, 0xFF, 0x3, 0xFF, 0x4, 0xFF, 0x5, 0xFF
	.byte 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x3, 0x0, 0x4, 0x0, 0x5, 0x0
	.byte 0x0, 0x1, 0x1, 0x1, 0x2, 0x1, 0x3, 0x1, 0x4, 0x1, 0x5, 0x1
	.byte 0x7F
byte_8019A60: .byte 0x0, 0xFF, 0x1, 0xFF, 0x2, 0xFF, 0xFF, 0x0, 0x0, 0x0, 0x1, 0x0, 0xFE
	.byte 0x1, 0xFF, 0x1, 0x0, 0x1, 0x7F
byte_8019A73: .byte 0xFE, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0xFF, 0x0, 0x0, 0x0, 0x1
	.byte 0x0, 0x0, 0x1, 0x1, 0x1, 0x2, 0x1, 0x7F
byte_8019A86: .byte 0xFE, 0xFE, 0xFF, 0xFE, 0x0, 0xFE, 0x1, 0xFE, 0x2, 0xFE
	.byte 0xFE, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x1, 0xFF, 0x2, 0xFF
	.byte 0xFE, 0x0, 0xFF, 0x0, 0x0, 0x0, 0x1, 0x0, 0x2, 0x0
	.byte 0xFE, 0x1, 0xFF, 0x1, 0x0, 0x1, 0x1, 0x1, 0x2, 0x1
	.byte 0xFE, 0x2, 0xFF, 0x2, 0x0, 0x2, 0x1, 0x2, 0x2, 0x2
	.byte 0x7F
byte_8019AB9: .byte 0x0, 0xFF, 0x1, 0xFF, 0x2, 0xFF, 0x3, 0xFF, 0x4, 0xFF, 0x5, 0xFF
	.byte 0x5, 0x0, 0x0, 0x1, 0x1, 0x1, 0x2, 0x1, 0x3, 0x1, 0x4, 0x1
	.byte 0x5, 0x1, 0x7F
byte_8019AD4: .byte 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x2, 0xFF, 0x2, 0x1, 0x7F
byte_8019ADF: .byte 0x0, 0xFF, 0x1, 0xFF, 0x2, 0xFF, 0x1, 0x0, 0x0, 0x1, 0x1, 0x1, 0x2, 0x1
	.byte 0x7F
byte_8019AEE: .byte 0x0, 0xFF, 0x0, 0x1, 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x3, 0x0, 0x4, 0x0, 0x5, 0x0
	.byte 0x7F
byte_8019AFF: .byte 0x0, 0x0, 0xFF, 0x0, 0xFE, 0x0, 0x7F
byte_8019B06: .byte 0x5, 0xFE, 0x4, 0xFE, 0x3, 0xFE, 0x2, 0xFE, 0x1, 0xFE, 0x0, 0xFE
	.byte 0xFF, 0xFE, 0xFE, 0xFE, 0xFD, 0xFE, 0xFC, 0xFE, 0xFB, 0xFE, 0x5, 0x2
	.byte 0x4, 0x2, 0x3, 0x2, 0x2, 0x2, 0x1, 0x2, 0x0, 0x2, 0xFF, 0x2
	.byte 0xFE, 0x2, 0xFD, 0x2, 0xFC, 0x2, 0xFB, 0x2, 0x5, 0xFF, 0x4, 0xFF
	.byte 0x3, 0xFF, 0x2, 0xFF, 0xFE, 0xFF, 0xFD, 0xFF, 0xFC, 0xFF, 0xFB, 0xFF
	.byte 0x5, 0x1, 0x4, 0x1, 0x3, 0x1, 0x2, 0x1, 0xFE, 0x1, 0xFD, 0x1
	.byte 0xFC, 0x1, 0xFB, 0x1, 0x5, 0x0, 0x4, 0x0, 0x3, 0x0, 0x2, 0x0
	.byte 0xFE, 0x0, 0xFD, 0x0, 0xFC, 0x0, 0xFB, 0x0, 0x7F
byte_8019B63: .byte 0x0, 0x0, 0x0, 0xFE, 0x0, 0xFF, 0x0, 0x1, 0x0, 0x2, 0x7F
byte_8019B6E: .byte 0x0, 0xFE, 0x0, 0xFF, 0x0, 0x1, 0x0, 0x2, 0x7F, 0x0
off_8019B78: .word byte_80198E8
	.word byte_80198E9
	.word byte_80198EC
off_8019B84: .word byte_80198F1
	.word byte_80198F4
	.word byte_80198FB
	.word byte_8019900
	.word byte_8019907
	.word byte_8019910
	.word byte_801991D
	.word byte_8019928
	.word byte_8019931
	.word byte_801993C
	.word byte_8019945
	.word byte_801994C
	.word byte_8019951
	.word byte_8019964
	.word byte_8019975
	.word byte_8019982
	.word byte_8019989
	.word byte_8019990
	.word byte_8019999
	.word byte_80199A2
	.word byte_80199A7
	.word byte_80199AC
	.word byte_80199B1
off_8019BE0: .word byte_80199B6
	.word byte_80199C5
	.word byte_80199DA
	.word byte_80199F5
	.word byte_80199FC
	.word byte_8019A01
	.word byte_8019A08
	.word byte_8019A13
	.word byte_8019A2C
	.word byte_8019A3B
	.word byte_8019A60
	.word byte_8019A73
	.word byte_8019A86
	.word byte_8019AB9
	.word byte_8019AD4
	.word byte_8019ADF
	.word byte_8019AEE
	.word byte_8019AFF
	.word byte_8019B06
	.word byte_8019B63
	.word byte_8019B6E
dword_8019C34: .word 0x0, 0x0, 0x0
	.word 0x20, 0x20, 0x0
	.word 0x10, 0x0
	.word 0x400000, 0x0
	.word 0x200000, 0x0, 0x0
	.word 0x600000, 0x10, 0x20, 0x30, 0x0
dword_8019C7C: .word 0x0, 0x0
	.word 0x8410080, 0x4210080, 0x55800200, 0xAA800200, 0x51800100
	.word 0xA2800100, 0x80000080, 0x40000080, 0x15800000, 0x2A800000
	.word 0x80000082, 0x40000082, 0x80002080, 0x40002080, 0x80000090
	.word 0x40000090, 0x80000180, 0x40000180, 0x80000088, 0x40000088
	.word 0x80000084, 0x40000084, 0x20010080, 0x10010080, 0x55840000
	.word 0xAA840000, 0x810082, 0x810082, 0xFF800002, 0xFF800002
	.word 0x8510080, 0x4310080, 0x80002480, 0x40002480, 0x80000880
	.word 0x40000880, 0x2010080, 0x1010080, 0x55800000, 0xAA800000
	.word 0x8000008A, 0x4000008A, 0x80000086, 0x40000086, 0x8000008E
	.word 0x4000008E, 0x50000000, 0xA0000000, 0x8000008C, 0x4000008C
	.word 0x8000009E, 0x4000009E, 0x800040A0, 0x400040A0, 0x80002088
	.word 0x40002088, 0x8000009C, 0x4000009C, 0x4280, 0x4280
	.word 0x80040082, 0x40040082, 0x80000888, 0x40000888, 0x8004008A
	.word 0x4004008A, 0xC004808E, 0xC004808E, 0x80000, 0x80000
	.word 0x80000C88, 0x40000C88, 0x80000480, 0x40000480, 0xC0040088
	.word 0xC0040088, 0xC0048082, 0xC0048082, 0x80002086, 0x40002086
	.word 0x2010082, 0x1010082, 0x3D800000, 0x3E800000, 0x80000488
	.word 0x40000488, 0x8000408C, 0x4000408C, 0x8000408A, 0x4000408A
	.word 0x80004086, 0x40004086, 0x80004088, 0x40004088, 0x8000408E
	.word 0x4000408E, 0x80005084, 0x40005084, 0x80005080, 0x40005080
	.word 0xC004000E, 0xC004000E, 0x80004084, 0x40004084, 0x8410082
	.word 0x4210082, 0x80004082, 0x40004082, 0x201008A, 0x101008A
	.word 0xF800000, 0xF800000, 0x8510082, 0x4310082, 0x841008A
	.word 0x421008A, 0x20010082, 0x10010082, 0x8000408A, 0x4000408A
	.word 0x80, 0x80, 0x2110080, 0x1110080, 0x851008A
	.word 0x431008A, 0x20012080, 0x10012080, 0x4000000, 0x8000000
	.word 0x80002090, 0x40002090, 0x40080, 0x40080, 0x20050080
	.word 0x10050080, 0x8000208A, 0x4000208A, 0x800140A0, 0x400140A0
	.word 0x800000A0, 0x400000A0, 0xC0040080, 0xC0040080, 0x3F800000
	.word 0x3F800000, 0x80000482, 0x40000482, 0x80000C88, 0x40000C88
	.word 0x2014082, 0x1014082, 0x55000200, 0xAA000200, 0x2010088
	.word 0x1010088, 0x81008A, 0x81008A, 0x8412080, 0x4212080
	.word 0x8410092, 0x4210092, 0x80001080, 0x40001080, 0x8412082
	.word 0x4212082, 0x80002092, 0x40002092, 0x841009A, 0x421009A
	.word 0x80000884, 0x40000884, 0x800000B2, 0x400000B2, 0xC0044080
	.word 0xC0044080
.endfunc // sub_80198CE

.func
.thumb_func
sub_8019F44:
	push {r4,r6,r7,lr}
	add r7, r0, #0
	ldrh R4, [R7,#0x2E]
	add r0, r4, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	strh R0, [R7,#0x2E]
	lsl r4, r4, #0x11
	bcc loc_8019F5C
	ldrh R0, [R7,#0x2E]
	add r0, r0, r0
	strh R0, [R7,#0x2E]
loc_8019F5C:
	lsl r4, r4, #1
	bcc loc_8019F68
	mov R0, #0x10
	strb R0, [R7,#0x10]
	mov R0, #1
	strb R0, [R7,#0xE]
loc_8019F68:
	lsl r4, r4, #1
	bcc loc_8019F74
	mov R0, #0xF8
	bl sub_801A4D0
	pop {r4,r6,r7,pc}
loc_8019F74:
	lsl r4, r4, #1
	bcc loc_8019F80
	mov R0, #0xF7
	bl sub_801A4D0
	bcc loc_8019F80
loc_8019F80:
	lsl r4, r4, #1
	bcc locret_8019F84
locret_8019F84:
	pop {r4,r6,r7,pc}
.endfunc // sub_8019F44

.func
.thumb_func
sub_8019F86:
	ldr R1, [R5,#0x54]
	strb R0, [R1,#0xE]
	mov PC, LR
.endfunc // sub_8019F86

.func
.thumb_func
sub_8019F8C:
	ldr R1, [R5,#0x54]
	strb R0, [R5,#0xE]
	mov R2, #0xF
	and R2, R0
	strb R2, [R1,#2]
	mov R2, #0xF0
	and R0, R2
	strb R0, [R1,#0x19]
	mov PC, LR
.endfunc // sub_8019F8C

.func
.thumb_func
sub_8019F9E:
	ldr R1, [R5,#0x54]
	strb R0, [R1,#0x18]
	mov PC, LR
.endfunc // sub_8019F9E

.func
.thumb_func
sub_8019FA4:
	push {lr}
	// memBlock
	ldr R0, off_8019FB0 // =unk_2034F60 
	// size
	mov R1, #0xA0
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
off_8019FB0: .word unk_2034F60
.endfunc // sub_8019FA4

.func
.thumb_func
sub_8019FB4:
	push {r4,r7,lr}
	add r7, r0, #0
	str R5, [R7,#0x38]
	strb R3, [R7,#0xE]
	ldrb R3, [R5,#0xE]
	mov R4, #0xF
	and R4, R3
	strb R4, [R7,#2]
	mov R4, #0xF0
	and R3, R4
	strb R3, [R7,#0x19]
	ldrh R4, [R5,#0x16]
	strh R4, [R7,#4]
	lsl r4, r4, #2
	ldrh R3, [R5,#0x12]
	strh R3, [R7,#0xA]
	mov R3, #1
	strb R3, [R7,#1]
	ldrh R3, [R5,#0x2E]
	strb R3, [R7,#7]
	ldrh R3, [R5,#0x2C]
	strh R3, [R7,#0x2E]
	ldrb R0, [R5,#0x16]
	add r4, r2, #0
	bl sub_801A0BA
	str R0, [R7,#0x30]
	bl battle_isTimeStop
	tst R0, R0
	beq loc_8019FFC
	mov R1, #1
	lsl r1, r1, #0x10
	ldr R2, [R7,#0x30]
	orr R2, R1
	str R2, [R7,#0x30]
loc_8019FFC:
	ldrb R0, [R5,#0x16]
	add r1, r4, #0
	bl sub_801A0BA
	str R0, [R7,#0x34]
	add r0, r7, #0
	bl sub_8019F44
	pop {r4,r7,pc}
.endfunc // sub_8019FB4

.func
.thumb_func
sub_801A00E:
	push {R4-R7,lr}
	ldr R0, off_801A0C8 // =sub_3007550+1 
	mov LR, PC
	bx r0
	pop {R4-R7,pc}
.endfunc // sub_801A00E

.func
.thumb_func
sub_801A018:
	push {r4,lr}
	ldr R4, [R5,#0x54]
	ldr R2, [R4,#0x70]
	ldr R0, [R4,#0x54]
	orr R0, R2
	str R1, [R4,#0x54]
	bl battle_isTimeStop
	tst R0, R0
	bne loc_801A034
	mov R0, #0
	strb R0, [R4,#0xF]
	strb R0, [R4,#3]
	str R0, [R4,#0x54]
loc_801A034:
	mov R1, #0
	strb R1, [R4,#0x11]
	mov r0, #0x68 
	add r0, r0, r4
	mov r1, #0x40 
	bl sub_80008C0
	ldr R0, [R5,#0x54]
	ldr R3, off_801A0CC // =sub_300777C+1 
	mov LR, PC
	bx r3
	pop {r4,pc}
.endfunc // sub_801A018

.func
.thumb_func
sub_801A04C:
	push {r4,r6,lr}
	ldr R6, [R5,#0x54]
	ldrb R2, [R6,#0xA]
	ldrb R3, [R6,#0xB]
	ldrb R0, [R5,#0x12]
	strb R0, [R6,#0xA]
	ldrb R1, [R5,#0x13]
	strb R1, [R6,#0xB]
	ldrb R4, [R5,#0x16]
	bl sub_800E994
	strb R0, [R6,#0xC]
	pop {r4,r6,pc}
.endfunc // sub_801A04C

.func
.thumb_func
sub_801A066:
	push {r4,lr}
	ldr R2, [R5,#0x54]
	ldrb R0, [R5,#0x12]
	strb R0, [R2,#0xA]
	ldrb R1, [R5,#0x13]
	strb R1, [R2,#0xB]
	pop {r4,pc}
.endfunc // sub_801A066

.func
.thumb_func
// () -> void
sub_801A074:
	ldr R0, [R5,#0x54]
	mov R1, #0
	strb R1, [R0,#1]
	mov PC, LR
.endfunc // sub_801A074

.func
.thumb_func
sub_801A07C:
	ldr R1, [R5,#0x54]
	strb R0, [R1,#1]
	mov PC, LR
.endfunc // sub_801A07C

.func
.thumb_func
sub_801A082:
	push {r4,r7,lr}
	ldr R7, [R5,#0x54]
	strb R3, [R7,#0xE]
	ldrh R3, [R5,#0x2C]
	strh R3, [R7,#0x2E]
	ldrb R0, [R5,#0x16]
	add r4, r2, #0
	bl sub_801A0BA
	str R0, [R7,#0x30]
	ldrb R0, [R5,#0x16]
	add r1, r4, #0
	bl sub_801A0BA
	str R0, [R7,#0x34]
	bl battle_isTimeStop
	tst R0, R0
	beq loc_801A0B2
	mov R1, #1
	lsl r1, r1, #0x10
	ldr R2, [R7,#0x30]
	orr R2, R1
	str R2, [R7,#0x30]
loc_801A0B2:
	add r0, r7, #0
	bl sub_8019F44
	pop {r4,r7,pc}
.endfunc // sub_801A082

.func
.thumb_func
sub_801A0BA:
	lsl r0, r0, #2
	ldr R3, off_801A0D0 // =dword_8019C7C 
	lsl r1, r1, #3
	add r1, r1, r0
	ldr R0, [R3,R1]
	mov PC, LR
	.balign 4, 0x00
off_801A0C8: .word sub_3007550+1
off_801A0CC: .word sub_300777C+1
off_801A0D0: .word dword_8019C7C
.endfunc // sub_801A0BA

.func
.thumb_func
sub_801A0D4:
	push {r4,r6,lr}
	ldr R3, [R5,#0x54]
	ldr R6, [R3,#0x70]
	ldr R1, dword_801A13C // =0x3F800000 
	tst R6, R1
	beq locret_801A0FE
	mov R1, #1
	tst R6, R1
	bne locret_801A0FE
	ldrb R0, [R3,#9]
	cmp R0, #0xFF
	beq locret_801A0FE
	add r4, r0, #0
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov R0, #0xF
	bl sub_801BDDE
	bl sub_80E08C4
locret_801A0FE:
	pop {r4,r6,pc}
.endfunc // sub_801A0D4

.func
.thumb_func
sub_801A100:
	push {r4,r6,lr}
	ldr R3, [R5,#0x54]
	ldr R6, [R3,#0x70]
	ldr R1, dword_801A13C // =0x3F800000 
	tst R6, R1
	beq locret_801A138
	mov R1, #1
	tst R6, R1
	bne locret_801A138
	ldrb R0, [R3,#9]
	cmp R0, #0xFF
	beq locret_801A138
	add r4, r0, #0
	ldr R0, [R5,#0x34]
	ldr R1, [R5,#0x38]
	bl sub_800E258
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	add r2, r1, #0
	add r1, r0, #0
	mov R3, #0x10
	lsl r3, r3, #0x10
	mov R0, #0xF
	bl sub_801BDDE
	bl sub_80E08C4
locret_801A138:
	pop {r4,r6,pc}
	.balign 4, 0x00
dword_801A13C: .word 0x3F800000
.endfunc // sub_801A100

.func
.thumb_func
sub_801A140:
	ldr R3, [R5,#0x54]
	strb R0, [R3,#9]
	mov PC, LR
.endfunc // sub_801A140

.func
.thumb_func
sub_801A146:
	ldrb R0, [R5,#0xE]
	mov R3, #0xF
	and R0, R3
	ldr R3, [R5,#0x54]
	strb R0, [R3,#9]
	mov PC, LR
.endfunc // sub_801A146

.func
.thumb_func
// (int a1) -> void
object_setFlag:
	ldr R1, [R5,#0x54]
	ldr R2, [R1,#0x3C]
	orr R2, R0
	str R2, [R1,#0x3C]
	mov PC, LR
.endfunc // object_setFlag

.func
.thumb_func
// (int bitfield) -> void
object_clearFlag:
	ldr R1, [R5,#0x54]
	ldr R2, [R1,#0x3C]
	bic R2, R0
	str R2, [R1,#0x3C]
	mov PC, LR
.endfunc // object_clearFlag

.func
.thumb_func
// () -> int
object_getFlag:
	ldr R1, [R5,#0x54]
	ldr R0, [R1,#0x3C]
	mov PC, LR
.endfunc // object_getFlag

.func
.thumb_func
sub_801A16C:
	ldr R1, [R5,#0x54]
	ldr R2, [R1,#0x40]
	orr R2, R0
	str R2, [R1,#0x40]
	mov PC, LR
.endfunc // sub_801A16C

.func
.thumb_func
sub_801A176:
	ldr R1, [R5,#0x54]
	ldr R2, [R1,#0x40]
	bic R2, R0
	str R2, [R1,#0x40]
	mov PC, LR
.endfunc // sub_801A176

.func
.thumb_func
sub_801A180:
	ldr R1, [R5,#0x54]
	ldr R0, [R1,#0x40]
	mov PC, LR
.endfunc // sub_801A180

.func
.thumb_func
sub_801A186:
	push {r7,lr}
	bl battle_isTimeStop
	bne locret_801A1FA
	bl battle_isPaused
	bne locret_801A1FA
	ldr R7, [R5,#0x54]
	ldrb R0, [R7,#1]
	cmp R0, #0
	beq locret_801A1FA
	ldrb R0, [R7,#0xA]
	ldrb R1, [R7,#0xB]
	bl sub_800C90A
	tst R0, R0
	beq locret_801A1FA
	ldrb R0, [R0,#2]
	cmp R0, #4
	bne loc_801A1CE
	bl object_getFlag // () -> int
	ldr R1, dword_801A1FC // = 
	tst R0, R1
	bne loc_801A1CE
	ldrb R0, [R7,#8]
	sub R0, #1
	strb R0, [R7,#8]
	bge locret_801A1FA
	mov R0, #6
	strb R0, [R7,#8]
	mov R1, #0x8C
	ldrh R0, [R7,R1]
	add R0, #1
	strh R0, [R7,R1]
	pop {r7,pc}
loc_801A1CE:
	mov R1, #0
	strb R1, [R7,#8]
	cmp R0, #6
	bne locret_801A1FA
	ldrb R0, [R5,#0xE]
	mov R1, #0xF
	and R0, R1
	cmp R0, #4
	bne locret_801A1FA
	mov R2, R10
	ldr R2, [R2,#0x18]
	ldrb R0, [R2,#0xE]
	ldrh R1, [R5,#0x24]
	cmp R1, #9
	bgt loc_801A1EE
	ldrb R0, [R2,#0x16]
loc_801A1EE:
	tst R0, R0
	bne locret_801A1FA
	mov R0, #1
	bl object_addHP
	pop {r7,pc}
locret_801A1FA:
	pop {r7,pc}
dword_801A1FC: .word 0x8000028
.endfunc // sub_801A186

.func
.thumb_func
sub_801A200:
	push {r4,r6,lr}
	bl battle_isBattleOver
	tst R0, R0
	bne locret_801A256
	ldr R4, [R5,#0x54]
	mov R2, #0x90
	ldrh R1, [R4,R2]
	tst R1, R1
	beq loc_801A24C
	ldr R2, dword_801A524 // =0x8000 
	tst R1, R2
	beq loc_801A24C
	ldrb R0, [R5,#0x16]
	mov R2, #1
	eor R0, R2
	add r6, r0, #0
	mov r1, #0x2c 
	bl sub_80136CC
	add r2, r0, #0
	cmp R2, #0
	beq loc_801A236
	cmp R2, #0xB
	beq loc_801A236
	cmp R2, #0xC
	bne loc_801A24C
loc_801A236:
	bl sub_801445C
	bne loc_801A24C
	bl sub_8014490
	bne loc_801A24C
	add r0, r6, #0
	mov R1, #0xFF
	bl sub_8015BEC
	b loc_801A24C
loc_801A24C:
	mov R1, #0x8E
	ldrh R1, [R4,R1]
	ldrb R0, [R5,#0x16]
	bl sub_8015C12
locret_801A256:
	pop {r4,r6,pc}
.endfunc // sub_801A200

.func
.thumb_func
sub_801A258:
	ldr R3, [R5,#0x54]
	strb R0, [R3,#0x10]
	mov PC, LR
.endfunc // sub_801A258

.func
.thumb_func
sub_801A25E:
	ldr R3, [R5,#0x54]
	strb R0, [R3,#0x11]
	mov PC, LR
.endfunc // sub_801A25E

.func
.thumb_func
sub_801A264:
	push {lr}
	ldr R0, dword_801A528 // =0x8001E800 
	bl object_clearFlag // (int bitfield) -> void
	ldr R0, dword_801A52C // =0x300E8 
	bl sub_801A176
	mov R0, #0
	ldr R3, [R5,#0x54]
	strh R0, [R3,#0x1C]
	strh R0, [R3,#0x1E]
	strh R0, [R3,#0x20]
	strh R0, [R3,#0x22]
	strh R0, [R3,#0x2A]
	strh R0, [R3,#0x2C]
	pop {pc}
.endfunc // sub_801A264

.func
.thumb_func
sub_801A284:
	push {lr}
	ldr R0, off_801A530 // =0x800 
	bl object_clearFlag // (int bitfield) -> void
	mov R0, #8
	bl sub_801A176
	mov R0, #0
	ldr R3, [R5,#0x54]
	strh R0, [R3,#0x1C]
	pop {pc}
.endfunc // sub_801A284

.func
.thumb_func
sub_801A29A:
	push {lr}
	ldr R0, dword_801A534 // =0x10000 
	bl object_clearFlag // (int bitfield) -> void
	ldr R0, dword_801A534 // =0x10000 
	bl sub_801A176
	mov R0, #0
	ldr R3, [R5,#0x54]
	strh R0, [R3,#0x2A]
	pop {pc}
.endfunc // sub_801A29A

.func
.thumb_func
sub_801A2B0:
	push {lr}
	ldr R0, dword_801A538 // =0x80000000 
	bl object_clearFlag // (int bitfield) -> void
	ldr R0, dword_801A53C // =0x20000 
	bl sub_801A176
	mov R0, #0
	ldr R3, [R5,#0x54]
	strh R0, [R3,#0x2C]
	ldr R0, [R5,#0x58]
	ldrh R0, [R0,#0x3C]
	strh R0, [R5,#0x3E]
	pop {pc}
.endfunc // sub_801A2B0

.func
.thumb_func
sub_801A2CC:
	push {lr}
	ldr R3, [R5,#0x54]
	ldr R0, [R3,#0x70]
	mov R1, #0x10
	tst R0, R1
	beq locret_801A306
	ldr R0, [R5,#0x58]
	ldrb R1, [R0]
	cmp R1, #2
	beq loc_801A2EA
	ldr R0, dword_801A540 // =0xFFFF 
	strh R0, [R5,#0x2A]
	mov R0, #0
	strb R0, [R5,#0x1A]
	pop {pc}
loc_801A2EA:
	ldr R0, dword_801A540 // =0xFFFF 
	strh R0, [R5,#0x2A]
	ldrb R0, [R5,#0x16]
	bl sub_8010018
	ldrb R1, [R0]
	lsl r2, r1, #1
	add R2, #2
	ldrh R2, [R0,R2]
	ldr R3, dword_801A540 // =0xFFFF 
	cmp R2, R3
	beq locret_801A306
	add R1, #1
	strb R1, [R0]
locret_801A306:
	pop {pc}
.endfunc // sub_801A2CC

.func
.thumb_func
sub_801A308:
	push {r4,lr}
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_8010022
	add r4, r0, #0
	ldr R3, [R5,#0x54]
	mov R2, #0x92
	ldrh R0, [R3,R2]
	ldrb R1, [R4,#0x10]
	add r1, r1, r0
	strb R1, [R4,#0x10]
	pop {r4,pc}
.endfunc // sub_801A308

.func
.thumb_func
sub_801A324:
	push {r4,lr}
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_8010022
	add r4, r0, #0
	ldr R3, [R5,#0x54]
	mov R2, #0x92
	ldrh R0, [R3,R2]
	ldrb R1, [R4,#0x10]
	add r1, r1, r0
	strb R1, [R4,#0x10]
	ldr R3, [R5,#0x58]
	ldrb R4, [R3,#0x10]
	mov R0, #0
	strb R0, [R3,#0x10]
	ldrh R0, [R5,#0x26]
	mov R1, #0xA
	svc 6
	mul R0, R4
	tst R0, R0
	beq locret_801A368
	bl object_addHP
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov R4, #6
	bl sub_80E05F6
	mov R0, #0x8A
	bl sound_play // () -> void
locret_801A368:
	pop {r4,pc}
.endfunc // sub_801A324

.func
.thumb_func
sub_801A36A:
	push {r4,r7,lr}
	ldr R7, [R5,#0x54]
	bl battle_isPaused
	bne loc_801A38A
	bl battle_isTimeStop
	bne loc_801A38A
	ldr R1, [R5,#0x58]
	ldrh R0, [R1,#0x38]
	tst R0, R0
	beq loc_801A38A
	sub R0, #1
	strh R0, [R1,#0x38]
	bgt loc_801A38A
	b loc_801A3B8
loc_801A38A:
	bl object_getFlag // () -> int
	ldr R1, dword_801A544 // =0x100040 
	tst R0, R1
	bne locret_801A3D8
	ldrb R0, [R7,#0xA]
	ldrb R1, [R7,#0xB]
	bl sub_800C90A
	ldrb R1, [R0,#2]
	cmp R1, #9
	blt loc_801A3AC
	cmp R1, #0xC
	bgt loc_801A3AC
	bl sub_801A400
	pop {r4,r7,pc}
loc_801A3AC:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x13
	tst R0, R1
	beq locret_801A3D8
loc_801A3B8:
	mov R0, #1
	lsl r0, r0, #0x13
	bl object_clearFlag // (int bitfield) -> void
	ldrb R0, [R7,#0xA]
	ldrb R1, [R7,#0xB]
	bl sub_800C90A
	tst R0, R0
	beq locret_801A3D8
	ldrb R1, [R0,#2]
	cmp R1, #7
	bne locret_801A3D8
	bl sub_801A3DA
	pop {r4,r7,pc}
locret_801A3D8:
	pop {r4,r7,pc}
.endfunc // sub_801A36A

.func
.thumb_func
sub_801A3DA:
	push {r7,lr}
	ldr R7, [R5,#0x54]
	ldrb R0, [R7,#2]
	cmp R0, #2
	beq locret_801A3FE
	bl object_getFlag // () -> int
	mov r1, #0x24 
	tst R0, R1
	bne locret_801A3FE
	ldr R1, off_801A548 // =timer_2000000 
	tst R0, R1
	beq locret_801A3FE
	mov R0, #0x10
	bl sub_801A16C
	mov R0, #2
	strb R0, [R5,#0xF]
locret_801A3FE:
	pop {r7,pc}
.endfunc // sub_801A3DA

.func
.thumb_func
sub_801A400:
	push {r7,lr}
	ldr R7, [R5,#0x58]
	ldrh R1, [R7,#0x38]
	tst R1, R1
	bne locret_801A41E
	bl object_getFlag // () -> int
	mov r1, #0x24 
	tst R0, R1
	bne locret_801A41E
	mov R0, #0x10
	bl sub_801A16C
	mov R0, #3
	strb R0, [R5,#0xF]
locret_801A41E:
	pop {r7,pc}
.endfunc // sub_801A400

.func
.thumb_func
sub_801A420:
	ldr R3, [R5,#0x54]
	ldrb R0, [R3,#0xD]
	tst R0, R0
	beq locret_801A42C
	sub R0, #1
	strb R0, [R3,#0xD]
locret_801A42C:
	mov PC, LR
.endfunc // sub_801A420

.func
.thumb_func
sub_801A42E:
	push {r4,lr}
	ldr R0, [R5,#0x54]
	mov r1, #0x74 
	ldrb R1, [R0,R1]
	cmp R1, #0
	beq locret_801A45A
	mov R1, #0x80
	ldrh R1, [R0,R1]
	cmp R1, #0
	beq locret_801A45A
	ldrh R0, [R5,#0x28]
	mov R1, #5
	ldrb R2, [R5,#0x16]
	ldrb R3, [R5,#0x17]
	bl sub_8018810
	lsl r3, r1, #0x10
	lsl r1, r0, #0x10
	mov R2, #0
	mov R4, #0
	bl sub_80E8124
locret_801A45A:
	pop {r4,pc}
.endfunc // sub_801A42E

.func
.thumb_func
sub_801A45C:
	push {r4,r6,lr}
	ldr R4, [R5,#0x54]
	ldr R6, [R4,#0x70]
	mov r2, #0x40 
	tst R6, R2
	beq locret_801A4A4
	bl sub_800A8F8
	tst R0, R0
	beq loc_801A47C
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	ldr R1, off_801A54C // =0x1500 
	bl sub_802E032
loc_801A47C:
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	mov R1, #8
	mov R2, #1
	bl sub_800AB46
	mov R0, #0
	strb R0, [R4,#0xD]
	bl battle_isBattleOver
	tst R0, R0
	bne locret_801A4A4
	bl sub_801E270
	push {r0}
	mov R0, #0x86
	bl sound_play // () -> void
	pop {r0}
locret_801A4A4:
	pop {r4,r6,pc}
.endfunc // sub_801A45C

.func
.thumb_func
sub_801A4A6:
	push {r4,lr}
	ldr R0, [R5,#0x54]
	mov R1, #0xA4
	ldrb R1, [R0,R1]
	cmp R1, #0xF4
	beq loc_801A4B6
	cmp R1, #0xF7
	bne locret_801A4CE
loc_801A4B6:
	ldrh R0, [R5,#0x28]
	mov R1, #5
	ldrb R2, [R5,#0x16]
	ldrb R3, [R5,#0x17]
	bl sub_8018810
	lsl r3, r1, #0x10
	lsl r1, r0, #0x10
	mov R2, #0
	mov R4, #3
	bl sub_80E8124
locret_801A4CE:
	pop {r4,pc}
.endfunc // sub_801A4A6

.func
.thumb_func
sub_801A4D0:
	ldr R3, [R5,#0x54]
	lsl r1, r1, #8
	add r1, r1, r0
	mov R0, #0x12
	strh R1, [R3,R0]
	mov PC, LR
.endfunc // sub_801A4D0

.func
.thumb_func
sub_801A4DC:
	push {r4,r5,lr}
	ldr R2, [R5,#0x54]
	add r5, r1, #0
	ldr R1, [R2,#0x7C]
	ldr R2, off_801A550 // =unk_20384F0 
	mov R3, #0
loc_801A4E8:
	cmp R5, #4
	blt loc_801A502
	tst R1, R1
	beq loc_801A502
	lsl r1, r1, #1
	bcc loc_801A4FE
	ldr R4, [R2,#0x38]
	str R4, [R0]
	add R0, #4
	add R3, #1
	sub R5, #4
loc_801A4FE:
	add R2, #0xA8
	b loc_801A4E8
loc_801A502:
	add r0, r3, #0
	pop {r4,r5,pc}
.endfunc // sub_801A4DC

.func
.thumb_func
sub_801A506:
	push {lr}
	ldr R3, [R5,#0x54]
	mov r0, #0x75 
	ldrb R0, [R3,R0]
	cmp R0, #0
	beq locret_801A520
	mov R0, #0x80
	ldrh R0, [R3,R0]
	cmp R0, #0
	beq locret_801A520
	ldr R0, dword_801A538 // =0x80000000 
	bl sub_800FFE4
locret_801A520:
	pop {pc}
	.balign 4, 0x00
dword_801A524: .word 0x8000
dword_801A528: .word 0x8001E800
dword_801A52C: .word 0x300E8
off_801A530: .word 0x800
dword_801A534: .word 0x10000
dword_801A538: .word 0x80000000
dword_801A53C: .word 0x20000
dword_801A540: .word 0xFFFF
dword_801A544: .word 0x100040
off_801A548: .word timer_2000000
off_801A54C: .word 0x1500
off_801A550: .word unk_20384F0
.endfunc // sub_801A506

.func
.thumb_func
sub_801A554:
	push {lr}
	ldr R3, [R5,#0x54]
	ldrb R0, [R3,#0x11]
	cmp R0, #0
	beq locret_801A58C
	push {r0}
	lsr r1, r0, #4
	sub R1, #1
	lsl r1, r1, #2
	ldr R2, off_801A7B0 // =off_80209EC 
	ldr R2, [R2,R1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x19
	add r2, r2, r0
	ldrh R1, [R2,#4]
	ldrb R0, [R2,#6]
	strh R1, [R3,R0]
	ldr R0, [R2]
	bl sub_801A16C
	pop {r0}
	cmp r0, #0x50 
	blt locret_801A58C
	cmp r0, #0x55 
	bgt locret_801A58C
	mov R0, #6
	bl sub_801A176
locret_801A58C:
	pop {pc}
.endfunc // sub_801A554

.func
.thumb_func
sub_801A58E:
	push {lr}
	ldr R3, [R5,#0x54]
	ldrb R0, [R3,#0x11]
	cmp R0, #0
	beq locret_801A5B8
	lsr r1, r0, #4
	cmp R1, #1
	bne locret_801A5B8
	sub R1, #1
	lsl r1, r1, #2
	ldr R2, off_801A7B4 // =off_80209EC 
	ldr R2, [R2,R1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x19
	add r2, r2, r0
	ldrh R1, [R2,#4]
	ldrb R0, [R2,#6]
	strh R1, [R3,R0]
	ldr R0, [R2]
	bl sub_801A16C
locret_801A5B8:
	pop {pc}
.endfunc // sub_801A58E

	push {lr}
	ldr R3, [R0,#0x54]
	cmp R1, #0
	beq locret_801A5E0
	add r0, r1, #0
	lsr r1, r1, #4
	sub R1, #1
	lsl r1, r1, #2
	ldr R2, off_801A7B8 // =off_80209EC 
	ldr R2, [R2,R1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x19
	add r2, r2, r0
	ldrh R1, [R2,#4]
	ldrb R0, [R2,#6]
	strh R1, [R3,R0]
	ldr R0, [R2]
	bl sub_801A16C
locret_801A5E0:
	pop {pc}
.func
.thumb_func
sub_801A5E2:
	ldr R0, [R5,#0x54]
	mov R1, #0
	str R1, [R0,#0x48]
	mov r2, #0x4c 
	str R1, [R0,R2]
	mov PC, LR
.endfunc // sub_801A5E2

.func
.thumb_func
sub_801A5EE:
	push {r6,lr}
	bl battle_getFlags
	mov R1, #1
	tst R0, R1
	beq locret_801A642
	ldr R6, [R5,#0x54]
	ldrh R0, [R6,#0x24]
	tst R0, R0
	bne loc_801A610
	bl sub_801A180
	mov R1, #2
	tst R0, R1
	beq loc_801A610
	mov r0, #0x78 
	strh R0, [R6,#0x24]
loc_801A610:
	mov R0, #2
	bl sub_801A176
	ldrh R0, [R6,#0x24]
	tst R0, R0
	beq loc_801A632
	sub R0, #1
	strh R0, [R6,#0x24]
	bgt loc_801A63A
	bl object_getFlag // () -> int
	mov R1, #2
	tst R0, R1
	beq loc_801A632
	mov R0, #0x94
	bl sound_play // () -> void
loc_801A632:
	ldr R0, dword_801A644 // =0x202 
	bl object_clearFlag // (int bitfield) -> void
	b locret_801A642
loc_801A63A:
	mov R0, #1
	lsl r0, r0, #9
	bl object_setFlag // (int a1) -> void
locret_801A642:
	pop {r6,pc}
dword_801A644: .word 0x202
.endfunc // sub_801A5EE

.func
.thumb_func
sub_801A648:
	push {lr}
	bl battle_isPaused
	bne locret_801A66A
	ldr R3, [R5,#0x54]
	ldrh R1, [R3,#0x24]
	tst R1, R1
	beq locret_801A66A
	ldr R0, [R3,#0x70]
	mov R1, #4
	tst R0, R1
	beq locret_801A66A
	ldr R1, off_801A7BC // =0x1000 
	tst R0, R1
	bne locret_801A66A
	mov R0, #0
	strh R0, [R3,#0x24]
locret_801A66A:
	pop {pc}
.endfunc // sub_801A648

.func
.thumb_func
sub_801A66C:
	push {lr}
	ldr R1, [R5,#0x54]
	mov r0, #0x78 
	strh R0, [R1,#0x24]
	mov R0, #1
	lsl r0, r0, #9
	bl object_setFlag // (int a1) -> void
	pop {pc}
.endfunc // sub_801A66C

.func
.thumb_func
sub_801A67E:
	ldr R3, [R5,#0x54]
	mov R0, #0
	strh R0, [R3,#0x24]
	mov PC, LR
.endfunc // sub_801A67E

	push {r4,lr}
	ldr R4, [R5,#0x54]
	mov R0, #0
	strb R0, [R4,#0xF]
	strb R0, [R4,#0x11]
	mov R1, #0xA4
	strh R0, [R4,R1]
	mov R0, #0x80
	add r0, r0, r4
	mov R1, #0x14
	bl sub_80008C0
	ldr R0, dword_801A7C0 // =0x106 
	bl sub_801A176
	pop {r4,pc}
.func
.thumb_func
sub_801A6A6:
	push {r4,lr}
	ldr R0, [R5,#0x54]
	add R0, #0x80
	mov R1, #0x14
	bl sub_80008C0
	pop {r4,pc}
.endfunc // sub_801A6A6

.func
.thumb_func
sub_801A6B4:
	push {r4,lr}
	ldr R4, [R5,#0x54]
	bl sub_801A6E8
	cmp R0, #0
	beq locret_801A6D4
	mov R1, #0x18
	bl sub_8013774
	add r2, r0, #1
	cmp R2, #7
	ble loc_801A6CE
	mov R2, #7
loc_801A6CE:
	mov R1, #0x18
	bl sub_8013754
locret_801A6D4:
	pop {r4,pc}
.endfunc // sub_801A6B4

.func
.thumb_func
sub_801A6D6:
	push {r4,lr}
	ldr R4, [R5,#0x54]
	bl sub_801A6E8
	cmp R0, #0
	beq locret_801A6E6
	mov R0, #0
	strh R0, [R5,#0x24]
locret_801A6E6:
	pop {r4,pc}
.endfunc // sub_801A6D6

.func
.thumb_func
sub_801A6E8:
	push {lr}
	mov R0, #0
	mov R1, #0xA4
	ldrb R1, [R4,R1]
	cmp R1, #0xF7
	beq loc_801A6FC
	cmp R1, #0xF4
	bne locret_801A71E
	mov R0, #1
	b locret_801A71E
loc_801A6FC:
	ldrh R0, [R5,#0x24]
	bl sub_8000C00
	mov R3, #0
loc_801A704:
	mov R1, #0xF
	and R1, R0
	cmp R1, #4
	bne loc_801A70E
	mov R3, #1
loc_801A70E:
	lsr r0, r0, #4
	cmp R0, #0
	bne loc_801A704
	add r0, r3, #0
	cmp R0, #0
	bne locret_801A71E
	mov R1, #0xA4
	strb R0, [R4,R1]
locret_801A71E:
	pop {pc}
.endfunc // sub_801A6E8

.func
.thumb_func
sub_801A720:
	push {r4,lr}
	ldr R4, [R5,#0x54]
	mov R1, #0xA4
	ldrb R1, [R4,R1]
	cmp R1, #0xF6
	bne locret_801A758
	mov R1, #0x18
	bl sub_8013774
	add r2, r0, #2
	cmp R2, #7
	ble loc_801A73A
	mov R2, #7
loc_801A73A:
	mov R1, #0x18
	bl sub_8013754
	mov R1, #0x19
	bl sub_8013774
	add r2, r0, #2
	cmp R2, #7
	ble loc_801A74E
	mov R2, #7
loc_801A74E:
	mov R1, #0x19
	bl sub_8013754
	bl sub_801A77A
locret_801A758:
	pop {r4,pc}
.endfunc // sub_801A720

.func
.thumb_func
sub_801A75A:
	push {r4,lr}
	ldr R4, [R5,#0x54]
	mov R1, #0xA4
	ldrb R1, [R4,R1]
	cmp R1, #0xF6
	bne locret_801A778
	ldr R3, [R5,#0x58]
	ldrb R0, [R3,#0x12]
	add r0, r2, #2
	cmp R0, #7
	ble loc_801A772
	mov R0, #7
loc_801A772:
	strb R0, [R3,#0x12]
	bl sub_801A77A
locret_801A778:
	pop {r4,pc}
.endfunc // sub_801A75A

.func
.thumb_func
sub_801A77A:
	push {r4,lr}
	ldr R4, [R5,#0x54]
	mov R1, #0xA4
	ldrb R1, [R4,R1]
	cmp R1, #0xF6
	bne locret_801A7AC
	mov R0, #8
	bl sub_801A16C
	mov R0, #0x96
	strh R0, [R4,#0x1C]
	ldrh R0, [R5,#0x28]
	ldr R1, dword_801A7C4 // =0x173 
	sub r0, r0, r1
	bmi loc_801A79C
	cmp R0, #0xB
	ble loc_801A7A6
loc_801A79C:
	mov r0, #0x20 
	bl sub_801A16C
	ldr R0, off_801A7C8 // =0x4B0 
	strh R0, [R4,#0x20]
loc_801A7A6:
	mov R0, #0
	mov R1, #0xA4
	strb R0, [R4,R1]
locret_801A7AC:
	pop {r4,pc}
	.byte 0, 0
off_801A7B0: .word off_80209EC
off_801A7B4: .word off_80209EC
off_801A7B8: .word off_80209EC
off_801A7BC: .word 0x1000
dword_801A7C0: .word 0x106
dword_801A7C4: .word 0x173
off_801A7C8: .word 0x4B0
.endfunc // sub_801A77A

.func
.thumb_func
sub_801A7CC:
	ldr R3, [R5,#0x54]
	strb R0, [R3,#6]
	ldr R1, off_801A7F0 // =byte_8020B8C 
	ldrb R1, [R1,R0]
	strb R1, [R3,#0x14]
	mov R1, #6
	mul R0, R1
	ldr R1, off_801A7EC // =byte_8020B2C 
	add r0, r0, r1
	ldrh R1, [R0]
	strb R1, [R3,#0x16]
	ldrh R1, [R0,#2]
	strb R1, [R3,#0x17]
	ldrh R1, [R0,#4]
	strh R1, [R3,#0x1A]
	mov PC, LR
off_801A7EC: .word byte_8020B2C
off_801A7F0: .word byte_8020B8C
.endfunc // sub_801A7CC

.func
.thumb_func
sub_801A7F4:
	mov R0, #0
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x60]
	ldr R0, [R5,#0x54]
	mov R1, #0
	strb R1, [R0,#6]
	mov PC, LR
.endfunc // sub_801A7F4

.func
.thumb_func
sub_801A802:
	push {r4,r6,lr}
	bl battle_isPaused
	beq loc_801A80C
	pop {r4,r6,pc}
loc_801A80C:
	ldr R4, [R5,#0x54]
	ldrb R6, [R4,#6]
	cmp R6, #0
	bne loc_801A816
	b locret_801A9A2
loc_801A816:
	cmp R6, #0xA
	bne loc_801A822
	ldrh R0, [R4,#0x16]
	tst R0, R0
	beq loc_801A860
	b loc_801A82C
loc_801A822:
	cmp R6, #8
	bne loc_801A82C
	ldrh R0, [R4,#0x16]
	tst R0, R0
	beq loc_801A860
loc_801A82C:
	mov r0, #0x77 
	ldrb R0, [R4,R0]
	mov r1, #0x20 
	tst R0, R1
	bne loc_801A83E
	ldr R0, [R4,#0x6C]
	ldr R1, off_801A9B0 // =0xA20 
	tst R0, R1
	beq loc_801A860
loc_801A83E:
	cmp R6, #8
	bne loc_801A84A
	ldrh R0, [R4,#0x16]
	tst R0, R0
	beq loc_801A860
	b loc_801A854
loc_801A84A:
	cmp R6, #0xA
	bne loc_801A854
	ldrh R0, [R4,#0x16]
	tst R0, R0
	beq loc_801A860
loc_801A854:
	mov R6, #0x10
	strb R6, [R4,#6]
	mov R0, #0
	strh R0, [R4,#0x16]
	ldrb R0, [R4,#0xF]
	strb R0, [R4,#0x15]
loc_801A860:
	cmp R6, #8
	beq loc_801A888
	cmp R6, #0xA
	beq loc_801A8AE
	ldrb R0, [R4,#6]
	cmp R0, #0x10
	beq loc_801A874
	bl battle_isTimeStop
	bne loc_801A8E0
loc_801A874:
	ldrh R0, [R4,#0x1A]
	ldr R1, dword_801A9B4 // =0xFFFF 
	cmp R0, R1
	beq loc_801A8E0
	sub R0, #1
	strh R0, [R4,#0x1A]
	bgt loc_801A8E0
	mov R0, #0
	strb R0, [R4,#6]
	b loc_801A8E0
loc_801A888:
	ldrh R1, [R4,#0x16]
	tst R1, R1
	bne loc_801A8E0
	bl battle_isTimeStop
	bne loc_801A8AC
	ldrb R0, [R5,#9]
	cmp R0, #7
	beq loc_801A8AC
	cmp R0, #6
	beq loc_801A8AC
	ldrh R0, [R4,#0x1A]
	add R0, #1
	strh R0, [R4,#0x1A]
	cmp R0, #0xF0
	blt loc_801A8AC
	mov R0, #1
	strh R0, [R4,#0x16]
loc_801A8AC:
	b locret_801A9A2
loc_801A8AE:
	ldrh R1, [R4,#0x16]
	tst R1, R1
	beq loc_801A8CA
	cmp R1, #0xC8
	bge loc_801A8C6
	ldrb R0, [R4,#0x1A]
	add R0, #1
	cmp R0, #6
	blt loc_801A8C6
	add R1, #1
	strh R1, [R4,#0x16]
	mov R0, #0
loc_801A8C6:
	strb R0, [R4,#0x1A]
	b loc_801A8E0
loc_801A8CA:
	bl battle_isTimeStop
	bne locret_801A9A2
	ldrb R0, [R4,#0x1B]
	add R0, #1
	strb R0, [R4,#0x1B]
	cmp r0, #0x78 
	blt locret_801A9A2
	mov R0, #0xC8
	strh R0, [R4,#0x16]
	b locret_801A9A2
loc_801A8E0:
	cmp R6, #8
	bne loc_801A8FA
	mov R1, #0x9A
	ldrh R1, [R4,R1]
	tst R1, R1
	beq loc_801A8FA
	mov r2, #0x78 
	ldrh R2, [R4,R2]
	mov R1, #0x88
	ldrh R0, [R4,R1]
	add r0, r0, r2
	strh R0, [R4,R1]
	b loc_801A90A
loc_801A8FA:
	ldrb R0, [R4,#0x14]
	cmp R0, #0
	beq loc_801A916
	lsl r0, r0, #1
	add R0, #0x94
	ldrh R0, [R4,R0]
	cmp R0, #0
	beq loc_801A916
loc_801A90A:
	mov R0, #0
	strb R0, [R4,#6]
	mov R0, #0
	strh R0, [R4,#0x1A]
	strb R0, [R4,#0x16]
	b locret_801A9A2
loc_801A916:
	mov R0, #0x94
	ldrh R0, [R4,R0]
	mov R1, #0x96
	ldrh R1, [R4,R1]
	add r0, r0, r1
	mov R1, #0x98
	ldrh R1, [R4,R1]
	add r0, r0, r1
	mov R1, #0x9A
	ldrh R1, [R4,R1]
	add r0, r0, r1
	mov R1, #0x9C
	ldrh R1, [R4,R1]
	add r0, r0, r1
	push {r0,r4}
	ldrb R0, [R4,#0xA]
	ldrb R1, [R4,#0xB]
	bl sub_800C90A
	ldrb R0, [R0,#2]
	cmp R0, #5
	pop {r0,r4}
	bne loc_801A948
	add R0, #1
	lsr r0, r0, #1
loc_801A948:
	ldrb R1, [R4,#0x17]
	cmp R0, R1
	blt loc_801A96E
	ldrb R1, [R4,#0x16]
	sub r1, r1, r0
	strb R1, [R4,#0x16]
	bgt loc_801A96E
	cmp R6, #8
	beq loc_801A968
	cmp R6, #0xA
	beq loc_801A968
	ldrb R0, [R4,#6]
	cmp R0, #0x10
	beq loc_801A968
	mov R0, #0
	strb R0, [R4,#6]
loc_801A968:
	mov R0, #0
	strh R0, [R4,#0x1A]
	strb R0, [R4,#0x16]
loc_801A96E:
	mov R0, #0
	mov R1, #0x82
	add r1, r1, r4
	strh R0, [R1]
	strh R0, [R1,#2]
	strh R0, [R1,#4]
	strh R0, [R1,#6]
	strh R0, [R1,#8]
	mov R1, #0x8E
	strh R0, [R4,R1]
	mov R1, #0x90
	strh R0, [R4,R1]
	mov R1, #0x92
	strh R0, [R4,R1]
	strb R0, [R4,#0xF]
	strb R0, [R4,#0x11]
	mov R1, #0xA4
	strh R0, [R4,R1]
	mov r1, #0x74 
	strh R0, [R4,R1]
	mov r1, #0x76 
	strb R0, [R4,R1]
	mov r0, #0x50 
	ldr R1, [R4,#0x70]
	bic R1, R0
	str R1, [R4,#0x70]
locret_801A9A2:
	pop {r4,r6,pc}
.endfunc // sub_801A802

	ldr R0, [R5,#0x54]
	ldrb R0, [R0,#0x16]
	mov PC, LR
	ldr R1, [R5,#0x54]
	strb R0, [R1,#0x16]
	mov PC, LR
off_801A9B0: .word 0xA20
dword_801A9B4: .word 0xFFFF
.func
.thumb_func
sub_801A9B8:
	push {r4,r7,lr}
	bl sub_8002DD8
	ldr R7, [R5,#0x54]
	bl battle_getFlags
	mov R1, #1
	tst R0, R1
	beq locret_801AA3C
	bl sub_801A00E
	bl battle_isBattleOver
	tst R0, R0
	bne locret_801AA3C
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne locret_801AA3C
	bl sub_801A802
	bl sub_801A186
	bl sub_801A36A
	bl sub_8010230
	bl sub_802CFF8
	bl sub_802CEF4
	bl sub_801A6B4
	bl sub_801A720
	bl sub_8013AE4
	bl sub_801AEB0
	bl sub_800EB26
	ldrh R0, [R5,#0x28]
	ldr R1, dword_801AA40 // =0x125 
	cmp R0, R1
	blt loc_801AA1C
	ldr R1, dword_801AA44 // =0x12A 
	cmp R0, R1
	ble loc_801AA20
loc_801AA1C:
	bl sub_801A554
loc_801AA20:
	bl sub_801A2CC
	bl sub_801A308
	bl sub_800E3DE
	bl sub_801A420
	bl sub_8010198
	bl sub_801A648
	bl object_spawnHiteffect
locret_801AA3C:
	pop {r4,r7,pc}
	.byte 0, 0
dword_801AA40: .word 0x125
dword_801AA44: .word 0x12A
.endfunc // sub_801A9B8

.func
.thumb_func
sub_801AA48:
	push {r4,r7,lr}
	bl sub_8002DD8
	ldr R7, [R5,#0x54]
	bl battle_getFlags
	mov R1, #1
	tst R0, R1
	beq locret_801AABE
	bl sub_801A00E
	bl battle_isBattleOver
	tst R0, R0
	bne locret_801AABE
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne locret_801AABE
	bl sub_801A802
	bl sub_801A186
	bl sub_801A36A
	bl sub_8010230
	bl sub_802CFF8
	bl sub_802CEF4
	bl sub_801A6B4
	bl sub_801A720
	bl sub_8013AE4
	bl sub_801AF0E
	bl sub_800EB26
	bl sub_801A554
	bl sub_801A2CC
	bl sub_801A308
	bl sub_800E3DE
	bl sub_801A420
	bl sub_8010198
	bl sub_801A648
	bl object_spawnHiteffect
locret_801AABE:
	pop {r4,r7,pc}
.endfunc // sub_801AA48

.func
.thumb_func
sub_801AAC0:
	push {r4,r7,lr}
	bl sub_8002DD8
	ldr R7, [R5,#0x54]
	bl battle_getFlags
	mov R1, #1
	tst R0, R1
	beq locret_801AB3E
	bl sub_801A00E
	bl battle_isBattleOver
	tst R0, R0
	bne locret_801AB3E
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne locret_801AB3E
	bl sub_801A802
	bl sub_801A186
	bl sub_801A36A
	bl sub_802D234
	cmp R0, #0xA
	beq loc_801AB02
	bl sub_8010230
loc_801AB02:
	bl sub_802CFF8
	bl sub_802CEF4
	bl sub_801A6B4
	bl sub_801A720
	bl sub_8013AE4
	bl sub_801AEB0
	bl sub_800EB26
	bl sub_801A554
	bl sub_801A2CC
	bl sub_801A308
	bl sub_800E3DE
	bl sub_801A420
	bl sub_8010198
	bl sub_801A648
	bl object_spawnHiteffect
locret_801AB3E:
	pop {r4,r7,pc}
.endfunc // sub_801AAC0

.func
.thumb_func
sub_801AB40:
	push {r4,r7,lr}
	bl sub_8002DD8
	ldr R7, [R5,#0x54]
	bl battle_getFlags
	mov R1, #1
	tst R0, R1
	beq locret_801ABB6
	bl sub_801A00E
	bl battle_isBattleOver
	tst R0, R0
	bne locret_801ABB6
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne locret_801ABB6
	bl sub_801A802
	bl sub_801A186
	bl sub_801A36A
	bl sub_8010230
	bl sub_802CFF8
	bl sub_802CEF4
	bl sub_801A6B4
	bl sub_801A720
	bl sub_8013AE4
	bl sub_801AF0E
	bl sub_800EB26
	bl sub_801A58E
	bl sub_801A2CC
	bl sub_801A308
	bl sub_800E3DE
	bl sub_801A420
	bl sub_8010198
	bl sub_801A648
	bl object_spawnHiteffect
locret_801ABB6:
	pop {r4,r7,pc}
.endfunc // sub_801AB40

.func
.thumb_func
sub_801ABB8:
	push {r4,r7,lr}
	bl sub_8002DD8
	ldr R7, [R5,#0x54]
	bl battle_getFlags
	mov R1, #1
	tst R0, R1
	beq locret_801AC6A
	bl sub_801A00E
	bl battle_isBattleOver
	tst R0, R0
	bne locret_801AC6A
	bl battle_isPaused
	tst R0, R0
	bne locret_801AC6A
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne locret_801AC6A
	bl sub_801A802
	bl sub_801A186
	bl sub_801A36A
	bl sub_801A6D6
	bl sub_801A75A
	bl sub_8013B20
	bl sub_801026A
	ldrb R4, [R7,#0xF]
	mov r1, #0x3c 
	tst R4, R1
	beq loc_801AC46
	mov r1, #0x40 
	tst R4, R1
	beq loc_801AC32
	bl object_getFlag // () -> int
	mov r1, #0x40 
	tst R0, R1
	bne loc_801AC46
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801A16C
	mov R0, #4
	bl sub_801A176
	mov R0, #1
	strb R0, [R5,#0xF]
	b loc_801AC46
loc_801AC32:
	bl object_getFlag // () -> int
	ldr R1, dword_801AF38 // =0x100040 
	tst R0, R1
	bne loc_801AC46
	mov R0, #0x10
	bl sub_801A16C
	mov R0, #1
	strb R0, [R5,#0xF]
loc_801AC46:
	bl sub_800EB26
	bl sub_801A554
	bl sub_801A2CC
	bl sub_801A308
	bl sub_800E3DE
	bl sub_801A420
	bl sub_8010198
	bl sub_801A648
	bl object_spawnHiteffect
locret_801AC6A:
	pop {r4,r7,pc}
.endfunc // sub_801ABB8

.func
.thumb_func
sub_801AC6C:
	push {r4,r7,lr}
	bl sub_8002DD8
	ldr R7, [R5,#0x54]
	bl battle_getFlags
	mov R1, #1
	tst R0, R1
	beq locret_801AD10
	bl sub_801A00E
	bl battle_isBattleOver
	tst R0, R0
	bne locret_801AD10
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne locret_801AD10
	bl sub_801A802
	bl sub_801A186
	bl sub_801A36A
	bl sub_8010230
	bl sub_802CFF8
	bl sub_802CEF4
	bl sub_801A6B4
	bl sub_801A720
	bl sub_80139F6
	bl sub_801AEB0
	bl sub_800EB26
	bl loc_8013F1E
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #7
	beq loc_801ACEC
	mov r1, #0x2c 
	bl sub_8013774
	cmp R0, #7
	beq loc_801ACEC
	cmp R0, #0x13
	beq loc_801ACEC
	mov r1, #0x52 
	bl sub_8013774
	tst R0, R0
	bne loc_801ACEC
	bl sub_801A554
loc_801ACEC:
	bl sub_801A2CC
	bl sub_801A324
	bl sub_800E3DE
	bl sub_801A420
	bl sub_80143FC
	bl sub_80142DC
	bl sub_8010198
	bl sub_801A648
	bl object_spawnHiteffect
locret_801AD10:
	pop {r4,r7,pc}
.endfunc // sub_801AC6C

.func
.thumb_func
sub_801AD12:
	push {r4,r7,lr}
	bl sub_8002DD8
	ldr R7, [R5,#0x54]
	bl battle_getFlags
	mov R1, #1
	tst R0, R1
	beq locret_801AD68
	bl sub_801A00E
	bl battle_isBattleOver
	tst R0, R0
	bne locret_801AD68
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne locret_801AD68
	ldrb R4, [R7,#0xF]
	bl object_getFlag // () -> int
	mov r1, #0x40 
	tst R0, R1
	bne loc_801AD60
	mov r1, #0x40 
	tst R4, R1
	beq loc_801AD60
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801A16C
	mov R0, #4
	bl sub_801A176
	mov R0, #1
	strb R0, [R5,#0xF]
loc_801AD60:
	bl object_calculateFinalDamage2
	bl object_spawnHiteffect
locret_801AD68:
	pop {r4,r7,pc}
.endfunc // sub_801AD12

.func
.thumb_func
sub_801AD6A:
	push {r4,r7,lr}
	bl sub_8002DD8
	ldr R7, [R5,#0x54]
	bl battle_getFlags
	mov R1, #1
	tst R0, R1
	beq locret_801AD9C
	bl sub_801A00E
	bl battle_isBattleOver
	tst R0, R0
	bne locret_801AD9C
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne locret_801AD9C
	bl object_calculateFinalDamage2
	bl object_spawnHiteffect
locret_801AD9C:
	pop {r4,r7,pc}
.endfunc // sub_801AD6A

.func
.thumb_func
sub_801AD9E:
	push {r4,r7,lr}
	bl sub_8002DD8
	ldr R7, [R5,#0x54]
	bl battle_getFlags
	mov R1, #1
	tst R0, R1
	beq locret_801ADF8
	bl sub_801A00E
	bl battle_isBattleOver
	tst R0, R0
	bne locret_801ADF8
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne locret_801ADF8
	ldrb R4, [R7,#0xF]
	bl object_getFlag // () -> int
	mov r1, #0x40 
	tst R0, R1
	bne loc_801ADF0
	mov r1, #0x40 
	tst R4, R1
	beq loc_801ADF0
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801A16C
	mov R0, #4
	bl sub_801A176
	bl sub_801A6A6
	mov R0, #1
	strb R0, [R5,#0xF]
loc_801ADF0:
	bl object_calculateFinalDamage2
	bl object_spawnHiteffect
locret_801ADF8:
	pop {r4,r7,pc}
.endfunc // sub_801AD9E

.func
.thumb_func
sub_801ADFA:
	push {r4,r7,lr}
	bl sub_8002DD8
	ldr R7, [R5,#0x54]
	bl battle_getFlags
	mov R1, #1
	tst R0, R1
	beq locret_801AE54
	bl sub_801A00E
	bl battle_isBattleOver
	tst R0, R0
	bne locret_801AE54
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne locret_801AE54
	bl sub_801AE56
	ldrb R4, [R7,#0xF]
	bl object_getFlag // () -> int
	mov r1, #0x40 
	tst R0, R1
	bne loc_801AE4C
	mov r1, #0x40 
	tst R4, R1
	beq loc_801AE4C
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801A16C
	mov R0, #4
	bl sub_801A176
	mov R0, #1
	strb R0, [R5,#0xF]
loc_801AE4C:
	bl object_calculateFinalDamage2
	bl object_spawnHiteffect
locret_801AE54:
	pop {r4,r7,pc}
.endfunc // sub_801ADFA

.func
.thumb_func
sub_801AE56:
	ldr R0, [R7,#0x70]
	ldr R1, off_801AF3C // =0x1000 
	tst R0, R1
	bne locret_801AE90
	ldrb R0, [R7,#0xF]
	mov r1, #0x40 
	tst R0, R1
	bne locret_801AE90
	mov R1, #0
	ldr R0, [R7,#0x70]
	ldr R3, dword_801AE98 // =0xA2000000 
	tst R3, R0
	beq loc_801AE72
	add R1, #1
loc_801AE72:
	ldr R3, dword_801AE9C // =0x51000000 
	tst R3, R0
	beq loc_801AE7A
	add R1, #2
loc_801AE7A:
	ldr R2, off_801AE94 // =dword_801AEA0 
	ldrb R1, [R2,R1]
	cmp R1, #0xFF
	beq locret_801AE90
	mov r2, #0x61 
	ldrb R3, [R7,R1]
	orr R3, R2
	strb R3, [R7,R1]
	ldrb R1, [R7,#0xF]
	orr R1, R2
	strb R1, [R7,#0xF]
locret_801AE90:
	mov PC, LR
	.balign 4, 0x00
off_801AE94: .word dword_801AEA0
dword_801AE98: .word 0xA2000000
dword_801AE9C: .word 0x51000000
dword_801AEA0: .word 0xFF0F0FFF, 0xFFFFFF0F, 0xFFFFFF0F, 0xFFFFFFFF
.endfunc // sub_801AE56

.func
.thumb_func
sub_801AEB0:
	push {r4,r7,lr}
	ldrb R4, [R7,#0xF]
	bl object_getFlag // () -> int
	ldr R1, dword_801AF40 // =0x220000 
	tst R0, R1
	bne loc_801AECA
	mov R1, #1
	tst R4, R1
	beq loc_801AECA
	mov R0, #4
	bl sub_801A16C
loc_801AECA:
	mov R1, #2
	tst R4, R1
	beq loc_801AED6
	mov R0, #2
	bl sub_801A16C
loc_801AED6:
	mov r1, #0x3c 
	tst R4, R1
	beq locret_801AF0C
	mov r1, #0x40 
	tst R4, R1
	beq loc_801AEF8
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801A16C
	mov R0, #4
	bl sub_801A176
	mov R0, #1
	strb R0, [R5,#0xF]
	strb R0, [R5,#0xF]
	b locret_801AF0C
loc_801AEF8:
	bl object_getFlag // () -> int
	ldr R1, dword_801AF38 // =0x100040 
	tst R0, R1
	bne locret_801AF0C
	mov R0, #0x10
	bl sub_801A16C
	mov R0, #1
	strb R0, [R5,#0xF]
locret_801AF0C:
	pop {r4,r7,pc}
.endfunc // sub_801AEB0

.func
.thumb_func
sub_801AF0E:
	push {r4,r7,lr}
	ldrb R4, [R7,#0xF]
	bl object_getFlag // () -> int
	ldr R1, dword_801AF40 // =0x220000 
	tst R0, R1
	bne loc_801AF28
	mov R1, #1
	tst R4, R1
	beq loc_801AF28
	mov R0, #4
	bl sub_801A16C
loc_801AF28:
	mov R1, #2
	tst R4, R1
	beq locret_801AF34
	mov R0, #2
	bl sub_801A16C
locret_801AF34:
	pop {r4,r7,pc}
	.balign 4, 0x00
dword_801AF38: .word 0x100040
off_801AF3C: .word 0x1000
dword_801AF40: .word 0x220000
.endfunc // sub_801AF0E

.func
.thumb_func
sub_801AF44:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str R0, [SP]
	ldr R6, [R5,#0x54]
	ldr R7, [R5,#0x58]
	bl battle_isPaused
	tst R0, R0
	beq loc_801AF5E
	ldrb R0, [R5,#9]
	cmp R0, #0
	beq loc_801AF5E
	b loc_801B142
loc_801AF5E:
	bl sub_801A42E
	bl sub_801A4A6
	bl sub_801A45C
	bl sub_801A506
	bl sub_801BA12
	bl sub_801BADE
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	beq loc_801AF84
	b loc_801B142
loc_801AF84:
	bl sub_801A180
	mov R1, #1
	tst R0, R1
	beq loc_801AFA4
	add r0, r1, #0
	bl sub_801A176
	mov R0, #1
	lsl r0, r0, #8
	bl object_setFlag // (int a1) -> void
	mov R0, #2
	bl sub_8011680
	b loc_801B142
loc_801AFA4:
	bl sub_801032C
	ldr R1, off_801B1AC // =0x2000 
	tst R0, R1
	beq loc_801AFB0
	b loc_801B18E
loc_801AFB0:
	bl sub_801032C
	ldr R1, dword_801B1B4 // =0x10000 
	tst R0, R1
	beq loc_801AFBC
	b loc_801B18E
loc_801AFBC:
	bl sub_801032C
	ldr R1, dword_801B1B8 // =0x20000 
	tst R0, R1
	beq loc_801AFC8
	b loc_801B18E
loc_801AFC8:
	bl sub_801032C
	ldr R1, dword_801B1BC // =0x40000 
	tst R0, R1
	beq loc_801AFDC
	bl sub_8015766
	tst R0, R0
	beq loc_801AFDC
	b loc_801B1A0
loc_801AFDC:
	bl battle_isTimeStop
	beq loc_801AFE4
	b loc_801B142
loc_801AFE4:
	mov R0, #0
	strb R0, [R5,#0x18]
	bl sub_800FFFE
	ldr R1, off_801B1A8 // =start_ 
	tst R0, R1
	beq loc_801B006
	add r0, r1, #0
	bl sub_800FFEE
	ldr R0, off_801B1AC // =0x2000 
	bl sub_8010312
	mov r0, #0x4c 
	bl sub_8011680
	b loc_801B18E
loc_801B006:
	bl sub_800FFFE
	ldr R1, dword_801B1B0 // =0x40000000 
	tst R0, R1
	beq loc_801B024
	add r0, r1, #0
	bl sub_800FFEE
	ldr R0, dword_801B1B4 // =0x10000 
	bl sub_8010312
	mov r0, #0x30 
	bl sub_8011680
	b loc_801B18E
loc_801B024:
	bl sub_800FFFE
	ldr R1, dword_801B1C0 // =0x80000000 
	tst R0, R1
	beq loc_801B052
	add r0, r1, #0
	bl sub_800FFEE
	ldrh R0, [R5,#0x28]
	ldr R1, off_801B38C // =0x1AC 
	cmp R0, R1
	blt loc_801B052
	add R1, #0x15
	cmp R0, R1
	bgt loc_801B052
	ldr R0, dword_801B1BC // =0x40000 
	bl sub_8010312
	bl sub_8011714
	bl sub_8015766
	b loc_801B1A0
loc_801B052:
	bl sub_801A180
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	beq loc_801B0AA
	add r0, r1, #0
	bl sub_801A176
	ldr R0, [R5,#0x5C]
	tst R0, R0
	bne loc_801B06E
	ldr R0, [R5,#8]
	str R0, [R5,#0x5C]
loc_801B06E:
	bl sub_801011A
	bl sub_801A29A
	bl sub_801A2B0
	bl sub_801A180
	mov R1, #1
	lsl r1, r1, #0xe
	tst R0, R1
	bne loc_801B096
	mov R1, #2
	tst R0, R1
	bne loc_801B092
	ldrb R0, [R5,#9]
	cmp R0, #4
	beq loc_801B096
loc_801B092:
	bl sub_801A284
loc_801B096:
	mov R0, #1
	lsl r0, r0, #0xe
	bl sub_801A176
	mov R0, #5
	strb R0, [R5,#9]
	mov R0, #0
	strb R0, [R5,#0xA]
	strb R0, [R5,#0xD]
	b loc_801B142
loc_801B0AA:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x14
	tst R0, R1
	beq loc_801B0BC
	mov R0, #5
	strb R0, [R5,#9]
	b loc_801B142
loc_801B0BC:
	mov R0, #0
	strb R0, [R5,#0xD]
	bl sub_801A180
	mov R1, #0x10
	tst R0, R1
	beq loc_801B0D6
	add r0, r1, #0
	bl sub_801A176
	bl loc_80166B6
	b loc_801B0EC
loc_801B0D6:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0xc
	tst R0, R1
	beq loc_801B0E8
	bl loc_80166B6
	b loc_801B0EC
loc_801B0E8:
	mov R0, #0
	strb R0, [R5,#0x1F]
loc_801B0EC:
	bl sub_801A180
	mov R1, #4
	tst R0, R1
	beq loc_801B126
	add r0, r1, #0
	bl sub_801A176
	bl sub_801011A
	bl sub_801BA92
	push {r0}
	bl sub_801BABE
	pop {r1}
	orr R0, R1
	beq loc_801B118
	mov R1, #2
	tst R0, R1
	bne loc_801B118
	b loc_801B11E
loc_801B118:
	mov R0, #3
	bl sub_8011680
loc_801B11E:
	mov R0, #1
	lsl r0, r0, #0xe
	bl sub_801A176
loc_801B126:
	bl sub_801A5EE
	bl sub_800E730
	bl sub_8010162
	bl sub_8014326
	bl nullsub_6
	bl sub_8014498
	bl sub_802E1D8
loc_801B142:
	bl sub_8002EE8
	mov R0, #1
	lsl r0, r0, #0xe
	bl sub_801A176
	bl sub_80143E4
	bl sub_801690A
	bl sub_8016860
	bl sub_80168C8
	bl sub_80168F0
	bl sub_8016934
	bl sub_8016CA4
	bl sub_801728E
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne loc_801B18E
	bl battle_isPaused
	beq loc_801B188
	ldrb R0, [R5,#9]
	cmp R0, #0
	beq loc_801B188
	b loc_801B19C
loc_801B188:
	bl battle_isTimeStop
	bne loc_801B196
loc_801B18E:
	ldr R0, [SP]
	bl sub_801B9E6
	b loc_801B1A0
loc_801B196:
	bl sub_8017AB4
	b loc_801B1A0
loc_801B19C:
	bl sub_8017BC0
loc_801B1A0:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	.word 0x40000
off_801B1A8: .word start_
off_801B1AC: .word 0x2000
dword_801B1B0: .word 0x40000000
dword_801B1B4: .word 0x10000
dword_801B1B8: .word 0x20000
dword_801B1BC: .word 0x40000
dword_801B1C0: .word 0x80000000
.endfunc // sub_801AF44

.func
.thumb_func
sub_801B1C4:
	push {r6,r7,lr}
	sub sp, sp, #4
	str R0, [SP]
	ldr R6, [R5,#0x54]
	bl battle_isPaused
	tst R0, R0
	beq loc_801B21C
	bl sub_801A180
	ldr R1, dword_801B390 // =0x80000 
	tst R0, R1
	beq loc_801B1E8
	bl sub_801A04C
	ldr R0, dword_801B390 // =0x80000 
	bl sub_801A176
loc_801B1E8:
	ldrb R0, [R5,#9]
	cmp R0, #0
	beq loc_801B21C
	bl object_getFlag // () -> int
	ldr R1, dword_801B384 // =0x40000100 
	tst R0, R1
	beq loc_801B1FA
	b loc_801B338
loc_801B1FA:
	bl sub_801A180
	ldr R1, dword_801B388 // =0x8000 
	tst R0, R1
	beq loc_801B21A
	add r0, r1, #0
	bl sub_801A176
	ldr R0, dword_801B384 // =0x40000100 
	bl object_setFlag // (int a1) -> void
	mov R0, #2
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	b loc_801B338
loc_801B21A:
	b loc_801B37A
loc_801B21C:
	bl sub_801A42E
	bl sub_801A4A6
	bl sub_801A45C
	bl sub_801BADE
	mov R0, #0x80
	ldrh R0, [R6,R0]
	tst R0, R0
	beq loc_801B24E
	push {r0}
	bl sprite_forceWhitePallete
	mov r0, #0x6d 
	bl sound_play // () -> void
	bl sub_801A67E
	pop {r0}
	bl object_subtractHP
	tst R1, R1
	beq loc_801B260
loc_801B24E:
	mov R0, #0x8C
	ldrh R0, [R6,R0]
	bl object_subtractHP
	bl sub_801B9BC
	ldrh R0, [R5,#0x24]
	tst R0, R0
	bne loc_801B266
loc_801B260:
	mov R0, #1
	bl sub_801A16C
loc_801B266:
	bl sub_801A200
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne loc_801B338
	bl sub_801A180
	mov R1, #1
	tst R0, R1
	beq loc_801B298
	add r0, r1, #0
	bl sub_801A176
	mov R0, #1
	lsl r0, r0, #8
	bl object_setFlag // (int a1) -> void
	mov R0, #2
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	b loc_801B338
loc_801B298:
	bl battle_isTimeStop
	bne loc_801B338
	mov R0, #0
	strb R0, [R5,#0x18]
	bl sub_801A180
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	beq loc_801B2D6
	add r0, r1, #0
	bl sub_801A176
	bl sub_801A29A
	bl sub_801A2B0
	bl sub_801BA92
	ldr R0, [R5,#0x5C]
	tst R0, R0
	bne loc_801B2CA
	ldr R0, [R5,#8]
	str R0, [R5,#0x5C]
loc_801B2CA:
	mov R0, #5
	strb R0, [R5,#9]
	mov R0, #0
	strb R0, [R5,#0xA]
	strb R0, [R5,#0xD]
	b loc_801B338
loc_801B2D6:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x14
	tst R0, R1
	beq loc_801B2E8
	mov R0, #5
	strb R0, [R5,#9]
	b loc_801B338
loc_801B2E8:
	mov R0, #0
	strb R0, [R5,#0xD]
	bl sub_801A180
	mov R1, #0x10
	tst R0, R1
	beq loc_801B302
	add r0, r1, #0
	bl sub_801A176
	bl loc_80166B6
	b loc_801B318
loc_801B302:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0xc
	tst R0, R1
	beq loc_801B314
	bl loc_80166B6
	b loc_801B318
loc_801B314:
	mov R0, #0
	strb R0, [R5,#0x1F]
loc_801B318:
	ldrh R0, [R6,#0x24]
	tst R0, R0
	beq loc_801B324
	sub R0, #1
	strh R0, [R6,#0x24]
	bgt loc_801B32C
loc_801B324:
	ldr R0, dword_801B380 // =0x202 
	bl object_clearFlag // (int bitfield) -> void
	b loc_801B334
loc_801B32C:
	mov R0, #1
	lsl r0, r0, #9
	bl object_setFlag // (int a1) -> void
loc_801B334:
	bl sub_800E730
loc_801B338:
	bl sub_8002EE8
	mov R0, #1
	lsl r0, r0, #0xe
	bl sub_801A176
	bl sub_801690A
	bl sub_8016860
	bl sub_80168C8
	bl sub_80168F0
	bl sub_8016934
	bl sub_8016CA4
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne loc_801B36E
	bl battle_isTimeStop
	bne loc_801B376
loc_801B36E:
	ldr R0, [SP]
	bl sub_801B9E6
	b loc_801B37A
loc_801B376:
	bl sub_8016BFC
loc_801B37A:
	add sp, sp, #4
	pop {r6,r7,pc}
	.byte 0, 0
dword_801B380: .word 0x202
dword_801B384: .word 0x40000100
dword_801B388: .word 0x8000
off_801B38C: .word 0x1AC
dword_801B390: .word 0x80000
.endfunc // sub_801B1C4

.func
.thumb_func
sub_801B394:
	push {r6,r7,lr}
	sub sp, sp, #4
	str R0, [SP]
	ldr R6, [R5,#0x54]
	ldr R7, [R5,#0x58]
	mov R0, #0x80
	ldrh R0, [R6,R0]
	tst R0, R0
	beq loc_801B3BC
	push {r0}
	bl sprite_forceWhitePallete
	mov R0, #0x85
	bl sound_play // () -> void
	pop {r0}
	bl object_subtractHP
	tst R1, R1
	beq loc_801B3DA
loc_801B3BC:
	ldr R0, [R6,#0x70]
	ldr R1, dword_801B4BC // =0xC800002 
	tst R0, R1
	beq loc_801B3CA
	mov R0, #0
	strh R0, [R5,#0x24]
	b loc_801B3DA
loc_801B3CA:
	bl sub_801A180
	ldr R1, dword_801B4D0 // =0x8000 
	tst R0, R1
	bne loc_801B3DA
	ldrh R0, [R5,#0x24]
	tst R0, R0
	bne loc_801B3E0
loc_801B3DA:
	mov R0, #1
	bl sub_801A16C
loc_801B3E0:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne loc_801B4A2
	bl sub_801A180
	mov R1, #1
	tst R0, R1
	beq loc_801B40E
	add r0, r1, #0
	bl sub_801A176
	mov R0, #1
	lsl r0, r0, #8
	bl object_setFlag // (int a1) -> void
	mov R0, #2
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	b loc_801B4A2
loc_801B40E:
	bl sub_801A180
	ldr R1, off_801B4C0 // =0xC00 
	tst R0, R1
	beq loc_801B41E
	mov R0, #0
	strb R0, [R5,#0x18]
	b loc_801B428
loc_801B41E:
	bl object_getFlag // () -> int
	ldr R1, off_801B4C4 // =LCDControl 
	tst R0, R1
	beq loc_801B42E
loc_801B428:
	bl loc_8018002
	b loc_801B4B6
loc_801B42E:
	bl sub_801A180
	ldr R1, off_801B4C8 // =0x3000 
	tst R0, R1
	beq loc_801B43E
	mov R0, #0
	strb R0, [R5,#0x18]
	b loc_801B448
loc_801B43E:
	bl object_getFlag // () -> int
	ldr R1, dword_801B4CC // =0x30000000 
	tst R0, R1
	beq loc_801B44E
loc_801B448:
	bl loc_801813A
	b loc_801B4B6
loc_801B44E:
	bl battle_isTimeStop
	beq loc_801B460
	ldrb R0, [R5,#9]
	cmp R0, #0
	beq loc_801B4A2
	bl sub_801823C
	b loc_801B4B6
loc_801B460:
	mov R0, #0
	strb R0, [R5,#0x18]
	bl sub_801A180
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	beq loc_801B48C
	add r0, r1, #0
	bl sub_801A176
	ldr R0, [R5,#0x5C]
	tst R0, R0
	bne loc_801B480
	ldr R0, [R5,#8]
	str R0, [R5,#0x5C]
loc_801B480:
	mov R0, #5
	strb R0, [R5,#9]
	mov R0, #0
	strb R0, [R5,#0xA]
	strb R0, [R5,#0xD]
	b loc_801B4A2
loc_801B48C:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x14
	tst R0, R1
	beq loc_801B49E
	mov R0, #5
	strb R0, [R5,#9]
	b loc_801B4A2
loc_801B49E:
	mov R0, #0
	strb R0, [R5,#0xD]
loc_801B4A2:
	bl sub_8002EE8
	bl sub_80181F6
	ldrb R0, [R5,#9]
	lsl r0, r0, #2
	ldr R1, [SP]
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
loc_801B4B6:
	add sp, sp, #4
	pop {r6,r7,pc}
	.balign 4, 0x00
dword_801B4BC: .word 0xC800002
off_801B4C0: .word 0xC00
off_801B4C4: .word LCDControl
off_801B4C8: .word 0x3000
dword_801B4CC: .word 0x30000000
dword_801B4D0: .word 0x8000
.endfunc // sub_801B394

.func
.thumb_func
sub_801B4D4:
	push {r6,r7,lr}
	sub sp, sp, #4
	str R0, [SP]
	ldr R6, [R5,#0x54]
	ldr R7, [R5,#0x58]
	mov R0, #0x80
	ldrh R0, [R6,R0]
	tst R0, R0
	beq loc_801B4FC
	push {r0}
	bl sprite_forceWhitePallete
	mov R0, #0x85
	bl sound_play // () -> void
	pop {r0}
	bl object_subtractHP
	tst R1, R1
	beq loc_801B516
loc_801B4FC:
	ldr R0, [R6,#0x70]
	ldr R1, dword_801B5F8 // =0xC800002 
	tst R0, R1
	beq loc_801B506
	b loc_801B516
loc_801B506:
	bl sub_801A180
	ldr R1, dword_801B60C // =0x8000 
	tst R0, R1
	bne loc_801B516
	ldrh R0, [R5,#0x24]
	tst R0, R0
	bne loc_801B51C
loc_801B516:
	mov R0, #1
	bl sub_801A16C
loc_801B51C:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne loc_801B5DE
	bl sub_801A180
	mov R1, #1
	tst R0, R1
	beq loc_801B54A
	add r0, r1, #0
	bl sub_801A176
	mov R0, #1
	lsl r0, r0, #8
	bl object_setFlag // (int a1) -> void
	mov R0, #2
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	b loc_801B5DE
loc_801B54A:
	bl sub_801A180
	ldr R1, off_801B5FC // =0xC00 
	tst R0, R1
	beq loc_801B55A
	mov R0, #0
	strb R0, [R5,#0x18]
	b loc_801B564
loc_801B55A:
	bl object_getFlag // () -> int
	ldr R1, off_801B600 // =LCDControl 
	tst R0, R1
	beq loc_801B56A
loc_801B564:
	bl loc_8018002
	b loc_801B5F2
loc_801B56A:
	bl sub_801A180
	ldr R1, off_801B604 // =0x3000 
	tst R0, R1
	beq loc_801B57A
	mov R0, #0
	strb R0, [R5,#0x18]
	b loc_801B584
loc_801B57A:
	bl object_getFlag // () -> int
	ldr R1, dword_801B608 // =0x30000000 
	tst R0, R1
	beq loc_801B58A
loc_801B584:
	bl loc_801813A
	b loc_801B5F2
loc_801B58A:
	bl battle_isTimeStop
	beq loc_801B59C
	ldrb R0, [R5,#9]
	cmp R0, #0
	beq loc_801B5DE
	bl sub_801823C
	b loc_801B5F2
loc_801B59C:
	mov R0, #0
	strb R0, [R5,#0x18]
	bl sub_801A180
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	beq loc_801B5C8
	add r0, r1, #0
	bl sub_801A176
	ldr R0, [R5,#0x5C]
	tst R0, R0
	bne loc_801B5BC
	ldr R0, [R5,#8]
	str R0, [R5,#0x5C]
loc_801B5BC:
	mov R0, #5
	strb R0, [R5,#9]
	mov R0, #0
	strb R0, [R5,#0xA]
	strb R0, [R5,#0xD]
	b loc_801B5DE
loc_801B5C8:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x14
	tst R0, R1
	beq loc_801B5DA
	mov R0, #5
	strb R0, [R5,#9]
	b loc_801B5DE
loc_801B5DA:
	mov R0, #0
	strb R0, [R5,#0xD]
loc_801B5DE:
	bl sub_8002EE8
	bl sub_80181F6
	ldrb R0, [R5,#9]
	lsl r0, r0, #2
	ldr R1, [SP]
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
loc_801B5F2:
	add sp, sp, #4
	pop {r6,r7,pc}
	.balign 4, 0x00
dword_801B5F8: .word 0xC800002
off_801B5FC: .word 0xC00
off_801B600: .word LCDControl
off_801B604: .word 0x3000
dword_801B608: .word 0x30000000
dword_801B60C: .word 0x8000
.endfunc // sub_801B4D4

.func
.thumb_func
sub_801B610:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str R0, [SP]
	ldr R6, [R5,#0x54]
	ldr R7, [R5,#0x58]
	mov R0, #0x80
	ldrh R0, [R6,R0]
	tst R0, R0
	beq loc_801B638
	push {r0}
	bl sprite_forceWhitePallete
	mov R0, #0x85
	bl sound_play // () -> void
	pop {r0}
	bl object_subtractHP
	tst R1, R1
	beq loc_801B656
loc_801B638:
	ldr R0, [R6,#0x70]
	ldr R1, dword_801B738 // =0x800002 
	tst R0, R1
	beq loc_801B646
	mov R0, #0
	strh R0, [R5,#0x24]
	b loc_801B656
loc_801B646:
	bl sub_801A180
	ldr R1, dword_801B73C // =0x8000 
	tst R0, R1
	bne loc_801B656
	ldrh R0, [R5,#0x24]
	tst R0, R0
	bne loc_801B65C
loc_801B656:
	mov R0, #1
	bl sub_801A16C
loc_801B65C:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne loc_801B71E
	bl sub_801A180
	mov R1, #1
	tst R0, R1
	beq loc_801B68A
	add r0, r1, #0
	bl sub_801A176
	mov R0, #1
	lsl r0, r0, #8
	bl object_setFlag // (int a1) -> void
	mov R0, #2
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	b loc_801B71E
loc_801B68A:
	bl sub_801A180
	ldr R1, off_801B740 // =0xC00 
	tst R0, R1
	beq loc_801B69A
	mov R0, #0
	strb R0, [R5,#0x18]
	b loc_801B6A4
loc_801B69A:
	bl object_getFlag // () -> int
	ldr R1, off_801B744 // =LCDControl 
	tst R0, R1
	beq loc_801B6AA
loc_801B6A4:
	bl loc_8018002
	b loc_801B732
loc_801B6AA:
	bl sub_801A180
	ldr R1, off_801B748 // =0x3000 
	tst R0, R1
	beq loc_801B6BA
	mov R0, #0
	strb R0, [R5,#0x18]
	b loc_801B6C4
loc_801B6BA:
	bl object_getFlag // () -> int
	ldr R1, dword_801B74C // =0x30000000 
	tst R0, R1
	beq loc_801B6CA
loc_801B6C4:
	bl loc_801813A
	b loc_801B732
loc_801B6CA:
	bl battle_isTimeStop
	beq loc_801B6DC
	ldrb R0, [R5,#9]
	cmp R0, #0
	beq loc_801B71E
	bl sub_801823C
	b loc_801B732
loc_801B6DC:
	mov R0, #0
	strb R0, [R5,#0x18]
	bl sub_801A180
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	beq loc_801B708
	add r0, r1, #0
	bl sub_801A176
	ldr R0, [R5,#0x5C]
	tst R0, R0
	bne loc_801B6FC
	ldr R0, [R5,#8]
	str R0, [R5,#0x5C]
loc_801B6FC:
	mov R0, #5
	strb R0, [R5,#9]
	mov R0, #0
	strb R0, [R5,#0xA]
	strb R0, [R5,#0xD]
	b loc_801B71E
loc_801B708:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x14
	tst R0, R1
	beq loc_801B71A
	mov R0, #5
	strb R0, [R5,#9]
	b loc_801B71E
loc_801B71A:
	mov R0, #0
	strb R0, [R5,#0xD]
loc_801B71E:
	bl sub_8002EE8
	bl sub_80181F6
	ldrb R0, [R5,#9]
	lsl r0, r0, #2
	ldr R1, [SP]
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
loc_801B732:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
dword_801B738: .word 0x800002
dword_801B73C: .word 0x8000
off_801B740: .word 0xC00
off_801B744: .word LCDControl
off_801B748: .word 0x3000
dword_801B74C: .word 0x30000000
.endfunc // sub_801B610

loc_801B750:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str R0, [SP]
	ldr R6, [R5,#0x54]
	ldr R7, [R5,#0x58]
	mov R0, #0x80
	ldrh R0, [R6,R0]
	tst R0, R0
	beq loc_801B778
	push {r0}
	bl sprite_forceWhitePallete
	mov R0, #0x85
	bl sound_play // () -> void
	pop {r0}
	bl object_subtractHP
	tst R1, R1
	beq loc_801B796
loc_801B778:
	ldr R0, [R6,#0x70]
	ldr R1, dword_801B870 // =0xC800002 
	tst R0, R1
	beq loc_801B786
	mov R0, #0
	strh R0, [R5,#0x24]
	b loc_801B796
loc_801B786:
	bl sub_801A180
	ldr R1, dword_801B874 // =0x8000 
	tst R0, R1
	bne loc_801B796
	ldrh R0, [R5,#0x24]
	tst R0, R0
	bne loc_801B79C
loc_801B796:
	mov R0, #1
	bl sub_801A16C
loc_801B79C:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne loc_801B858
	bl sub_801A180
	mov R1, #1
	tst R0, R1
	beq loc_801B7CA
	add r0, r1, #0
	bl sub_801A176
	mov R0, #1
	lsl r0, r0, #8
	bl object_setFlag // (int a1) -> void
	mov R0, #2
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	b loc_801B858
loc_801B7CA:
	bl sub_801A180
	ldr R1, off_801BAFC // =0xC00 
	tst R0, R1
	beq loc_801B7DA
	mov R0, #0
	strb R0, [R5,#0x18]
	b loc_801B7E4
loc_801B7DA:
	bl object_getFlag // () -> int
	ldr R1, off_801BB00 // =LCDControl 
	tst R0, R1
	beq loc_801B7EA
loc_801B7E4:
	bl loc_8018002
	b loc_801B86C
loc_801B7EA:
	bl sub_801A180
	ldr R1, off_801BB04 // =0x3000 
	tst R0, R1
	beq loc_801B7FA
	mov R0, #0
	strb R0, [R5,#0x18]
	b loc_801B804
loc_801B7FA:
	bl object_getFlag // () -> int
	ldr R1, dword_801BB08 // =0x30000000 
	tst R0, R1
	beq loc_801B80A
loc_801B804:
	bl loc_801813A
	b loc_801B86C
loc_801B80A:
	bl battle_isTimeStop
	beq loc_801B816
	bl sub_801823C
	b loc_801B86C
loc_801B816:
	mov R0, #0
	strb R0, [R5,#0x18]
	bl sub_801A180
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	beq loc_801B842
	add r0, r1, #0
	bl sub_801A176
	ldr R0, [R5,#0x5C]
	tst R0, R0
	bne loc_801B836
	ldr R0, [R5,#8]
	str R0, [R5,#0x5C]
loc_801B836:
	mov R0, #5
	strb R0, [R5,#9]
	mov R0, #0
	strb R0, [R5,#0xA]
	strb R0, [R5,#0xD]
	b loc_801B858
loc_801B842:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x14
	tst R0, R1
	beq loc_801B854
	mov R0, #5
	strb R0, [R5,#9]
	b loc_801B858
loc_801B854:
	mov R0, #0
	strb R0, [R5,#0xD]
loc_801B858:
	bl sub_8002EE8
	bl sub_80181F6
	ldrb R0, [R5,#9]
	lsl r0, r0, #2
	ldr R1, [SP]
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
loc_801B86C:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
dword_801B870: .word 0xC800002
dword_801B874: .word 0x8000
loc_801B878:
	push {r6,r7,lr}
	sub sp, sp, #4
	str R0, [SP]
	ldr R6, [R5,#0x54]
	ldr R7, [R5,#0x58]
	mov R0, #0x80
	ldrh R0, [R6,R0]
	tst R0, R0
	beq loc_801B8A0
	push {r0}
	bl sprite_forceWhitePallete
	mov R0, #0x85
	bl sound_play // () -> void
	pop {r0}
	bl object_subtractHP
	tst R1, R1
	beq loc_801B8C4
loc_801B8A0:
	ldr R0, [R6,#0x70]
	ldr R1, dword_801B9A4 // =0xC800002 
	tst R0, R1
	beq loc_801B8B4
	ldr R0, [R5,#0x64]
	cmp R0, #0
	bne loc_801B8B4
	mov R0, #0
	strh R0, [R5,#0x24]
	b loc_801B8C4
loc_801B8B4:
	bl sub_801A180
	ldr R1, dword_801B9B8 // =0x8000 
	tst R0, R1
	bne loc_801B8C4
	ldrh R0, [R5,#0x24]
	tst R0, R0
	bne loc_801B8CA
loc_801B8C4:
	mov R0, #1
	bl sub_801A16C
loc_801B8CA:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	bne loc_801B98C
	bl sub_801A180
	mov R1, #1
	tst R0, R1
	beq loc_801B8F8
	add r0, r1, #0
	bl sub_801A176
	mov R0, #1
	lsl r0, r0, #8
	bl object_setFlag // (int a1) -> void
	mov R0, #2
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	b loc_801B98C
loc_801B8F8:
	bl sub_801A180
	ldr R1, off_801B9A8 // =0xC00 
	tst R0, R1
	beq loc_801B908
	mov R0, #0
	strb R0, [R5,#0x18]
	b loc_801B912
loc_801B908:
	bl object_getFlag // () -> int
	ldr R1, off_801B9AC // =LCDControl 
	tst R0, R1
	beq loc_801B918
loc_801B912:
	bl loc_8018002
	b loc_801B9A0
loc_801B918:
	bl sub_801A180
	ldr R1, off_801B9B0 // =0x3000 
	tst R0, R1
	beq loc_801B928
	mov R0, #0
	strb R0, [R5,#0x18]
	b loc_801B932
loc_801B928:
	bl object_getFlag // () -> int
	ldr R1, dword_801B9B4 // =0x30000000 
	tst R0, R1
	beq loc_801B938
loc_801B932:
	bl loc_801813A
	b loc_801B9A0
loc_801B938:
	bl battle_isTimeStop
	beq loc_801B94A
	ldrb R0, [R5,#9]
	cmp R0, #0
	beq loc_801B98C
	bl sub_801823C
	b loc_801B9A0
loc_801B94A:
	mov R0, #0
	strb R0, [R5,#0x18]
	bl sub_801A180
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	beq loc_801B976
	add r0, r1, #0
	bl sub_801A176
	ldr R0, [R5,#0x5C]
	tst R0, R0
	bne loc_801B96A
	ldr R0, [R5,#8]
	str R0, [R5,#0x5C]
loc_801B96A:
	mov R0, #5
	strb R0, [R5,#9]
	mov R0, #0
	strb R0, [R5,#0xA]
	strb R0, [R5,#0xD]
	b loc_801B98C
loc_801B976:
	bl object_getFlag // () -> int
	mov R1, #1
	lsl r1, r1, #0x14
	tst R0, R1
	beq loc_801B988
	mov R0, #5
	strb R0, [R5,#9]
	b loc_801B98C
loc_801B988:
	mov R0, #0
	strb R0, [R5,#0xD]
loc_801B98C:
	bl sub_8002EE8
	bl sub_80181F6
	ldrb R0, [R5,#9]
	lsl r0, r0, #2
	ldr R1, [SP]
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
loc_801B9A0:
	add sp, sp, #4
	pop {r6,r7,pc}
dword_801B9A4: .word 0xC800002
off_801B9A8: .word 0xC00
off_801B9AC: .word LCDControl
off_801B9B0: .word 0x3000
dword_801B9B4: .word 0x30000000
dword_801B9B8: .word 0x8000
.func
.thumb_func
sub_801B9BC:
	push {r5,lr}
	ldr R3, [R5,#0x58]
	tst R3, R3
	beq locret_801B9E4
	ldrb R0, [R3,#2]
	cmp R0, #1
	bne locret_801B9E4
	ldr R0, [R3,#0x54]
	tst R0, R0
	beq locret_801B9E4
	push {r5}
	add r5, r0, #0
	bl object_getFlag // () -> int
	pop {r5}
	ldr R1, off_801BB0C // =0x100 
	tst R0, R1
	beq locret_801B9E4
	mov R0, #0
	strh R0, [R5,#0x24]
locret_801B9E4:
	pop {r5,pc}
.endfunc // sub_801B9BC

.func
.thumb_func
sub_801B9E6:
	push {r4,r6,r7,lr}
	ldr R4, [R5,#0x58]
	mov R6, #0x80
	add r6, r6, r4
	mov R7, #0xA0
	add r7, r7, r4
	ldrb R1, [R5,#9]
	cmp R1, #0x10
	blt loc_801BA08
	sub R1, #0x10
	ldr R0, off_801BB10 // =off_80EAC60 
	ldrb R2, [R7,#0x1D]
	cmp R2, #1
	bne loc_801BA08
	bl loc_80EAD9C
	b locret_801BA10
loc_801BA08:
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
locret_801BA10:
	pop {r4,r6,r7,pc}
.endfunc // sub_801B9E6

.func
.thumb_func
sub_801BA12:
	push {r4,lr}
	mov R0, #0x80
	ldrh R4, [R6,R0]
	tst R4, R4
	beq loc_801BA68
	add r0, r4, #0
	bl sub_8010548
	ldrh R1, [R5,#0x24]
	cmp R1, #1
	ble loc_801BA3A
	bl object_getFlag // () -> int
	ldr R1, dword_801BB14 // =0x40000 
	tst R0, R1
	beq loc_801BA3A
	ldrh R1, [R5,#0x24]
	cmp R1, R4
	bgt loc_801BA3A
	sub r4, r1, #1
loc_801BA3A:
	add r0, r4, #0
	bl object_subtractHP
	push {r1}
	mov r4, #0x6d 
	ldrh R0, [R5,#0x28]
	bl sub_800F29C
	cmp R0, #2
	bne loc_801BA58
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	bne loc_801BA58
	mov r4, #0x6b 
loc_801BA58:
	add r0, r4, #0
	bl sound_play // () -> void
	pop {r1}
	tst R1, R1
	beq loc_801BA76
	bl sprite_forceWhitePallete
loc_801BA68:
	mov R0, #0x8C
	ldrh R0, [R6,R0]
	bl object_subtractHP
	ldrh R0, [R5,#0x24]
	tst R0, R0
	bne loc_801BA8C
loc_801BA76:
	bl sub_802DD2A
	tst R0, R0
	beq loc_801BA86
	ldr R0, off_801BB18 // =start_ 
	bl sub_800FFE4
	b loc_801BA8C
loc_801BA86:
	mov R0, #1
	bl sub_801A16C
loc_801BA8C:
	bl sub_801A200
	pop {r4,pc}
.endfunc // sub_801BA12

.func
.thumb_func
sub_801BA92:
	push {r4,lr}
	mov R4, #0
	ldrb R0, [R5,#9]
	cmp R0, #4
	bne loc_801BABA
	mov R4, #1
	bl sub_801A180
	mov R1, #1
	lsl r1, r1, #0xe
	tst R0, R1
	bne loc_801BABA
	bl sub_801A180
	mov R1, #2
	tst R0, R1
	beq loc_801BABA
	bl sub_801A284
	mov R4, #2
loc_801BABA:
	add r0, r4, #0
	pop {r4,pc}
.endfunc // sub_801BA92

.func
.thumb_func
sub_801BABE:
	push {r4,lr}
	mov R4, #0
	ldrb R0, [R5,#9]
	cmp R0, #6
	bne loc_801BADA
	mov R4, #1
	bl sub_801A180
	mov R1, #2
	tst R0, R1
	beq loc_801BADA
	bl sub_801A29A
	mov R4, #2
loc_801BADA:
	add r0, r4, #0
	pop {r4,pc}
.endfunc // sub_801BABE

.func
.thumb_func
sub_801BADE:
	push {r4,lr}
	mov R4, #0
	ldrb R0, [R5,#9]
	cmp R0, #7
	bne loc_801BAF6
	mov R0, #0x80
	ldrh R0, [R6,R0]
	cmp R0, #0
	beq loc_801BAF6
	bl sub_801A2B0
	mov R4, #1
loc_801BAF6:
	add r0, r4, #0
	pop {r4,pc}
	.balign 4, 0x00
off_801BAFC: .word 0xC00
off_801BB00: .word LCDControl
off_801BB04: .word 0x3000
dword_801BB08: .word 0x30000000
off_801BB0C: .word 0x100
off_801BB10: .word off_80EAC60
dword_801BB14: .word 0x40000
off_801BB18: .word start_
.endfunc // sub_801BADE

.func
.thumb_func
sub_801BB1C:
	push {lr}
	bl sub_800C90A
.endfunc // sub_801BB1C

	tst R0, R0
	beq loc_801BB42
	ldr R2, [R0,#0x1C]
	tst R2, R2
	bne loc_801BB42
	str R5, [R0,#0x1C]
	ldr R1, [R0,#0x14]
	mov R2, #0x80
	orr R1, R2
	str R1, [R0,#0x14]
	ldrb R0, [R5]
	mov r1, #0x20 
	orr R0, R1
	strb R0, [R5]
	mov R0, #1
	pop {pc}
loc_801BB42:
	mov R0, #0
	pop {pc}
.func
.thumb_func
sub_801BB46:
	push {lr}
	bl sub_800C90A
.endfunc // sub_801BB46

	tst R0, R0
	beq loc_801BB66
	ldr R1, [R0,#0x1C]
	cmp R1, R5
	bne loc_801BB66
	mov R1, #0
	str R1, [R0,#0x1C]
	ldr R1, [R0,#0x14]
	mov R2, #0x80
	bic R1, R2
	str R1, [R0,#0x14]
	mov R0, #1
	pop {pc}
loc_801BB66:
	mov R0, #0
	pop {pc}
	push {lr}
	bl sub_800C90A
	tst R0, R0
	beq locret_801BB76
	ldr R0, [R0,#0x1C]
locret_801BB76:
	pop {pc}
.func
.thumb_func
sub_801BB78:
	push {r6,r7,lr}
	ldrb R0, [R5]
	mov r1, #0x20 
	tst R0, R1
	beq locret_801BBA8
	mov R7, #4
loc_801BB84:
	mov R6, #7
loc_801BB86:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_800C90A
	cmp R0, #0
	beq loc_801BBA0
	ldr R1, [R0,#0x1C]
	cmp R1, R5
	bne loc_801BBA0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_801BB46
loc_801BBA0:
	sub R6, #1
	bne loc_801BB86
	sub R7, #1
	bne loc_801BB84
locret_801BBA8:
	pop {r6,r7,pc}
	.balign 4, 0x00
.endfunc // sub_801BB78

.func
.thumb_func
sub_801BBAC:
	push {lr}
	bl battle_isPaused
	bne locret_801BBF2
	ldrb R0, [R5]
	mov R1, #1
	tst R0, R1
	beq locret_801BBF2
	mov R1, #8
	tst R0, R1
	bne locret_801BBF2
	mov R1, #0x10
	tst R0, R1
	bne loc_801BBCE
	bl battle_isTimeStop
	bne locret_801BBF2
loc_801BBCE:
	ldr R0, [R5,#0x54]
	tst R0, R0
	beq loc_801BBDA
	ldrb R0, [R5,#0x18]
	tst R0, R0
	bne locret_801BBF2
loc_801BBDA:
	ldrb R0, [R5,#0x10]
	ldrb R1, [R5,#0x11]
	cmp R0, R1
	beq loc_801BBEE
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb R0, [R5,#0x10]
	strb R0, [R5,#0x11]
loc_801BBEE:
	bl sprite_update
locret_801BBF2:
	pop {pc}
.endfunc // sub_801BBAC

.func
.thumb_func
sub_801BBF4:
	push {lr}
	bl battle_isPaused
	bne locret_801BC22
	ldrb R0, [R5]
	mov R1, #1
	tst R0, R1
	beq locret_801BC22
	mov R1, #8
	tst R0, R1
	bne locret_801BC22
	ldrb R0, [R5,#0x10]
	ldrb R1, [R5,#0x11]
	cmp R0, R1
	beq loc_801BC1E
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb R0, [R5,#0x10]
	strb R0, [R5,#0x11]
loc_801BC1E:
	bl sprite_update
locret_801BC22:
	pop {pc}
.endfunc // sub_801BBF4

.func
.thumb_func
sub_801BC24:
	push {lr}
	bl battle_isPaused
	bne locret_801BC62
	ldrb R0, [R5]
	mov R1, #1
	tst R0, R1
	beq locret_801BC62
	mov R1, #8
	tst R0, R1
	bne locret_801BC62
	ldrb R0, [R5]
	mov R1, #0x10
	tst R0, R1
	bne loc_801BC48
	bl battle_isTimeStop
	bne locret_801BC62
loc_801BC48:
	ldrb R0, [R5,#0x10]
	ldrb R1, [R5,#0x11]
	cmp R0, R1
	beq loc_801BC5E
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb R0, [R5,#0x10]
	strb R0, [R5,#0x11]
	pop {pc}
loc_801BC5E:
	bl sprite_update
locret_801BC62:
	pop {pc}
.endfunc // sub_801BC24

.func
.thumb_func
sub_801BC64:
	push {lr}
	ldrb R0, [R5]
	mov R1, #1
	tst R0, R1
	beq locret_801BCA4
	mov R1, #8
	tst R0, R1
	bne locret_801BCA4
	mov R1, #0x10
	tst R0, R1
	bne loc_801BC80
	bl battle_isTimeStop
	bne locret_801BCA4
loc_801BC80:
	ldr R0, [R5,#0x54]
	tst R0, R0
	beq loc_801BC8C
	ldrb R0, [R5,#0x18]
	tst R0, R0
	bne locret_801BCA4
loc_801BC8C:
	ldrb R0, [R5,#0x10]
	ldrb R1, [R5,#0x11]
	cmp R0, R1
	beq loc_801BCA0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb R0, [R5,#0x10]
	strb R0, [R5,#0x11]
loc_801BCA0:
	bl sprite_update
locret_801BCA4:
	pop {pc}
.endfunc // sub_801BC64

.func
.thumb_func
sub_801BCA6:
	push {lr}
	ldrb R0, [R5]
	mov R1, #1
	tst R0, R1
	beq locret_801BCCE
	bl battle_isTimeStop
	bne locret_801BCCE
	ldrb R0, [R5,#0x10]
	ldrb R1, [R5,#0x11]
	cmp R0, R1
	beq loc_801BCCA
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb R0, [R5,#0x10]
	strb R0, [R5,#0x11]
loc_801BCCA:
	bl sprite_update
locret_801BCCE:
	pop {pc}
.endfunc // sub_801BCA6

.func
.thumb_func
sub_801BCD0:
	push {lr}
	ldrb R0, [R5]
	mov R1, #8
	tst R0, R1
	bne locret_801BCF2
	ldrb R0, [R5,#0x10]
	ldrb R1, [R5,#0x11]
	cmp R0, R1
	beq loc_801BCEE
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb R0, [R5,#0x10]
	strb R0, [R5,#0x11]
loc_801BCEE:
	bl sprite_update
locret_801BCF2:
	pop {pc}
.endfunc // sub_801BCD0

.func
.thumb_func
sub_801BCF4:
	push {lr}
	bl battle_isPaused
	bne locret_801BD3A
	ldrb R0, [R5]
	mov R1, #1
	tst R0, R1
	beq locret_801BD3A
	mov R1, #8
	tst R0, R1
	bne locret_801BD3A
	mov R1, #0x10
	tst R0, R1
	bne loc_801BD16
	bl battle_isTimeStop
	bne locret_801BD3A
loc_801BD16:
	ldr R0, [R5,#0x54]
	tst R0, R0
	beq loc_801BD22
	ldrb R0, [R5,#0x18]
	tst R0, R0
	bne locret_801BD3A
loc_801BD22:
	ldrb R0, [R5,#0x10]
	ldrb R1, [R5,#0x11]
	cmp R0, R1
	beq loc_801BD36
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb R0, [R5,#0x10]
	strb R0, [R5,#0x11]
loc_801BD36:
	bl sprite_update
locret_801BD3A:
	pop {pc}
.endfunc // sub_801BCF4

.func
.thumb_func
sub_801BD3C:
	push {r4,r6,r7,lr}
	mov R6, R8
	push {r6}
	mov R8, R7
	push {R0-R3}
	add r0, r4, #0
	bl sub_800E2C2
	add r6, r0, #0
	pop {R0-R3}
	lsl r3, r3, #0x19
	bcs loc_801BDA2
	beq loc_801BD9C
	lsr r3, r3, #0x17
	ldr R7, off_801BE68 // =off_8019B78 
	ldr R7, [R7,R3]
	mov R3, #0
loc_801BD5E:
	push {r0,r1}
	ldrsb R4, [R7,R3]
	cmp R4, #0x7F
	beq loc_801BD9A
	mul R4, R6
	add r0, r0, r4
	add R3, #1
	ldrsb R4, [R7,R3]
	add r1, r1, r4
	add R3, #1
	push {R0-R3}
	bl object_isValidPanel
	tst R0, R0
	pop {R0-R3}
	beq loc_801BD96
	push {R0-R3}
	push {r2}
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	pop {r2}
	add r4, r2, #0
	add r2, r1, #0
	add r1, r0, #0
	mov R3, R8
	bl sub_80E05F6
	pop {R0-R3}
loc_801BD96:
	pop {r0,r1}
	b loc_801BD5E
loc_801BD9A:
	pop {r0,r1}
loc_801BD9C:
	pop {r0}
	mov R8, R0
	pop {r4,r6,r7,pc}
loc_801BDA2:
	lsr r3, r3, #0x16
	add r4, r2, #0
	mov R1, #3
	ldr R7, off_801BE6C // =dword_8019C34 
	add r7, r7, r3
	ldr R2, [R7]
	ldr R3, [R7,#4]
loc_801BDB0:
	mov R0, #6
loc_801BDB2:
	push {R0-R3}
	bl object_checkPanelParameters
.endfunc // sub_801BD3C

	tst R0, R0
	pop {R0-R3}
	beq loc_801BDD0
	push {R0-R3}
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	add r2, r1, #0
	add r1, r0, #0
	mov R3, #0
	bl sub_80E05F6
	pop {R0-R3}
loc_801BDD0:
	sub R0, #1
	bne loc_801BDB2
	sub R1, #1
	bne loc_801BDB0
	pop {r0}
	mov R8, R0
	pop {r4,r6,r7,pc}
.func
.thumb_func
sub_801BDDE:
	push {r4,r6,r7,lr}
	push {R0-R3}
	bl change_20013F0_800151C // () -> int
	add r7, r0, #0
	pop {R0-R3}
	add r4, r7, #0
	and R4, R0
	lsr r6, r0, #1
	sub r4, r4, r6
	lsl r4, r4, #0x10
	add r1, r1, r4
	lsr r7, r7, #0x10
	and R7, R0
	lsr r0, r0, #1
	sub r7, r7, r0
	lsl r7, r7, #0x10
	add r3, r3, r7
	pop {r4,r6,r7,pc}
.endfunc // sub_801BDDE

.func
.thumb_func
sub_801BE04:
	sub r0, r0, r2
	bgt loc_801BE0E
	blt loc_801BE12
	mov R0, #0
	b loc_801BE14
loc_801BE0E:
	mov R0, #8
	b loc_801BE14
loc_801BE12:
	mov R0, #4
loc_801BE14:
	sub r1, r1, r3
	bgt loc_801BE22
	blt loc_801BE1E
	mov R1, #0
	b loc_801BE24
loc_801BE1E:
	mov R1, #1
	b loc_801BE24
loc_801BE22:
	mov R1, #2
loc_801BE24:
	orr R0, R1
	mov PC, LR
.endfunc // sub_801BE04

.func
.thumb_func
nullsub_10:
	mov PC, LR
.endfunc // nullsub_10

.func
.thumb_func
sub_801BE2A:
	push {r6,r7,lr}
	add r6, r0, #0
	mov R0, #0x80
	lsl r1, r6, #0x10
	lsr r1, r1, #0x18
	lsl r2, r6, #0x18
	lsr r2, r2, #0x18
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
.endfunc // sub_801BE2A

	lsr r0, r6, #0x18
	tst R0, R0
	beq loc_801BE4C
	bl sub_8002E3C
	b loc_801BE50
loc_801BE4C:
	bl sub_8002F90 // () -> void
loc_801BE50:
	lsl r0, r6, #8
	lsr r0, r0, #0x18
	strb R0, [R5,#0x10]
	mov R0, #0xFF
	strb R0, [R5,#0x11]
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	mov R0, #1
	pop {r6,r7,pc}
	.balign 4, 0x00
off_801BE68: .word off_8019B78
off_801BE6C: .word dword_8019C34
.func
.thumb_func
sub_801BE70:
	push {lr}
	// memBlock
	ldr R0, off_801BFE8 // =byte_2035280 
	// size
	mov r1, #0x60 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov r2, #0x20 
	ldr R1, off_801BFE8 // =byte_2035280 
	strh R2, [R1,#0x22] // (word_20352A2 - 0x2035280)
	mov R2, #0
	sub R2, #1
	strh R2, [R1,#0x26] // (word_20352A6 - 0x2035280)
	// memBlock
	ldr R0, off_801BEA8 // =dword_20352E0 
	// size
	mov r1, #0x30 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	// memBlock
	ldr R0, off_801BEAC // =byte_203EB50 
	// size
	mov r1, #0x50 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	ldr R0, off_801BEB0 // =dword_203CA48 
	mov R1, #0
	str R1, [R0]
	str R1, [R0,#0x4] // (dword_203CA4C - 0x203CA48)
	ldr R1, off_801BEB4 // =dword_20367E0 
	mov R0, #0
	str R0, [R1]
	pop {pc}
	.balign 4, 0x00
off_801BEA8: .word dword_20352E0
off_801BEAC: .word byte_203EB50
off_801BEB0: .word dword_203CA48
off_801BEB4: .word dword_20367E0
.endfunc // sub_801BE70

.func
.thumb_func
sub_801BEB8:
	ldr R1, off_801BFE8 // =byte_2035280 
	ldr R2, [R1,#0x44] // (dword_20352C4 - 0x2035280)
	orr R2, R0
	str R2, [R1,#0x44] // (dword_20352C4 - 0x2035280)
	mov PC, LR
.endfunc // sub_801BEB8

.func
.thumb_func
sub_801BEC2:
	ldr R1, off_801BFE8 // =byte_2035280 
	ldr R2, [R1,#0x44] // (dword_20352C4 - 0x2035280)
	bic R2, R0
	str R2, [R1,#0x44] // (dword_20352C4 - 0x2035280)
	mov PC, LR
.endfunc // sub_801BEC2

.func
.thumb_func
sub_801BECC:
	ldr R1, off_801BFE8 // =byte_2035280 
	ldr R2, [R1,#0x40] // (dword_20352C0 - 0x2035280)
	orr R2, R0
	str R2, [R1,#0x40] // (dword_20352C0 - 0x2035280)
	mov PC, LR
.endfunc // sub_801BECC

.func
.thumb_func
sub_801BED6:
	ldr R1, off_801BFE8 // =byte_2035280 
	ldr R2, [R1,#0x40] // (dword_20352C0 - 0x2035280)
	bic R2, R0
	str R2, [R1,#0x40] // (dword_20352C0 - 0x2035280)
	mov PC, LR
.endfunc // sub_801BED6

.func
.thumb_func
sub_801BEE0:
	push {R5-R7,lr}
	ldr R5, off_801BFE8 // =byte_2035280 
	ldr R6, off_801BF00 // =off_801BF04 
	ldr R7, [R5,#0x40] // (dword_20352C0 - 0x2035280)
loc_801BEE8:
	lsr r7, r7, #1
	bcs loc_801BEF2
	beq locret_801BEFC
	add R6, #4
	b loc_801BEE8
loc_801BEF2:
	ldr R0, [R6]
	mov LR, PC
	bx r0
	add R6, #4
	b loc_801BEE8
locret_801BEFC:
	pop {R5-R7,pc}
	.byte 0, 0
off_801BF00: .word off_801BF04
off_801BF04: .word sub_801BFEE+1
	.word sub_801BFF8+1
	.word loc_801C168+1
	.word sub_801C368+1
	.word sub_801C470+1
	.word sub_801C4AE+1
	.word locret_801BFEC+1
	.word sub_801C840+1
	.word sub_801CA0C+1
	.word locret_801BFEC+1
	.word sub_801C984+1
	.word locret_801BFEC+1
	.word sub_801CA28+1
	.word locret_801BFEC+1
	.word sub_801CADC+1
	.word sub_801CE28+1
	.word sub_801D1D8+1
	.word sub_801C5F4+1
	.word sub_801D2A0+1
	.word sub_801D450+1
	.word sub_801D514+1
	.word sub_801D548+1
	.word sub_801D590+1
	.word sub_801D71A+1
.endfunc // sub_801BEE0

.func
.thumb_func
sub_801BF64:
	push {R5-R7,lr}
	ldr R5, off_801BFE8 // =byte_2035280 
	ldr R6, off_801BF84 // =off_801BF88 
	ldr R7, [R5,#0x44] // (dword_20352C4 - 0x2035280)
loc_801BF6C:
	lsr r7, r7, #1
	bcs loc_801BF76
	beq locret_801BF80
	add R6, #4
	b loc_801BF6C
loc_801BF76:
	ldr R0, [R6]
	mov LR, PC
	bx r0
	add R6, #4
	b loc_801BF6C
locret_801BF80:
	pop {R5-R7,pc}
	.balign 4, 0x00
off_801BF84: .word off_801BF88
off_801BF88: .word sub_801C06E+1
	.word sub_801C078+1
	.word sub_801C202+1
	.word sub_801C416+1
	.word sub_801C4E4+1
	.word sub_801C576+1
	.word sub_801C6EE+1
	.word sub_801C906+1
	.word locret_801BFEC+1
	.word sub_801C9E4+1
	.word sub_801C9A4+1
	.word locret_801BFEC+1
	.word sub_801CA34+1
	.word sub_801CA80+1
	.word sub_801CDEC+1
	.word loc_801CF0E+1
	.word sub_801D1F6+1
	.word sub_801C640+1
	.word sub_801D2A4+1
	.word sub_801D47A+1
	.word locret_801BFEC+1
	.word sub_801D564+1
	.word sub_801D65C+1
	.word sub_801D792+1
off_801BFE8: .word byte_2035280
.endfunc // sub_801BF64

locret_801BFEC:
	mov PC, LR
.func
.thumb_func
sub_801BFEE:
	push {lr}
	mov R0, #1
	bl sub_801C002
	pop {pc}
.endfunc // sub_801BFEE

.func
.thumb_func
sub_801BFF8:
	push {lr}
	mov R0, #0
	bl sub_801C002
	pop {pc}
.endfunc // sub_801BFF8

.func
.thumb_func
sub_801C002:
	push {r4,r6,r7,lr}
	push {r0}
	ldr R4, off_801C148 // =dword_20352E0 
	mov R6, #6
	ldr R7, dword_801C14C // =0x6016A00 
loc_801C00C:
	ldrb R0, [R4]
	cmp R0, #0
	beq loc_801C062
	ldrb R0, [R4,#3]
	ldr R1, [SP]
	cmp R0, R1
	bne loc_801C062
	ldr R0, [R4,#4]
	bl sub_800ED90
	cmp R3, #0
	beq loc_801C062
	ldr R1, [SP]
	cmp R1, #1
	bne loc_801C048
	push {r0}
	bl sub_802D234
	cmp R0, #1
	pop {r0}
	beq loc_801C048
	push {r0}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	pop {r0}
	beq loc_801C048
	ldr R0, off_801C160 // =dword_872CE94 
	b loc_801C05A
loc_801C048:
	ldr R2, dword_801C150 // =0xFFFF 
	cmp R0, R2
	bne loc_801C050
	mov R0, #0
loc_801C050:
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldr R0, [R0,#0x20]
loc_801C05A:
	add r1, r7, #0
	mov R2, #0x80
	bl loc_8000AC8
loc_801C062:
	add R4, #8
	add R7, #0x80
	sub R6, #1
	bne loc_801C00C
	add sp, sp, #4
	pop {r4,r6,r7,pc}
.endfunc // sub_801C002

.func
.thumb_func
sub_801C06E:
	push {lr}
	mov R0, #1
	bl sub_801C082
	pop {pc}
.endfunc // sub_801C06E

.func
.thumb_func
sub_801C078:
	push {lr}
	mov R0, #0
	bl sub_801C082
	pop {pc}
.endfunc // sub_801C078

.func
.thumb_func
sub_801C082:
	push {R4-R7,lr}
	push {r0}
	ldr R4, off_801C148 // =dword_20352E0 
	mov R6, #6
	ldr R7, dword_801C158 // =0xAB50 
loc_801C08C:
	ldrb R0, [R4]
	cmp R0, #0
	beq loc_801C13A
	ldrb R0, [R4,#3]
	ldr R1, [SP]
	cmp R0, R1
	bne loc_801C13A
	push {r5}
	ldr R5, [R4,#4]
	bl sub_801032C
	ldr R1, dword_801C164 // =0x100000 
	tst R0, R1
	pop {r5}
	bne loc_801C13A
	ldr R0, [R4,#4]
	bl sub_800ED90
	cmp R3, #0
	beq loc_801C13A
	push {r6}
	add r5, r3, #0
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	bl sub_800E2C2
	push {r0}
	ldr R0, [R4,#4]
	ldrb R1, [R0,#0x17]
	ldrb R0, [R0,#0x16]
	bl object_getFlipDirection // (int a1, int a2) -> int
	push {r0}
	ldr R0, [R4,#4]
	add r0, #0x34 
	bl sub_800362C
	cmp R2, #0
	beq loc_801C136
	ldr R2, [SP]
	ldr R3, [SP,#4]
	mul R3, R2
	lsl r3, r3, #3
	push {r0}
	mov R2, #1
	ldrsb R2, [R4,R2]
	ldr R3, [SP,#8]
	mul R2, R3
	pop {r0}
	sub r2, r2, r3
	add r0, r0, r2
	sub R0, #8
	ldr R2, dword_801C15C // =0x1FF 
	and R0, R2
	mov R2, #2
	ldrsb R2, [R4,R2]
	add r1, r1, r2
	mov R2, #0xFF
	and R1, R2
	lsl r0, r0, #0x10
	add r6, r0, r1
loc_801C108:
	ldr R0, dword_801C154 // =0x40000000 
	add r1, r7, #0
	add r0, r0, r6
	mov R2, #2
	add r3, r5, #0
	add R3, #0xD0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	ldr R0, [SP,#4]
	ldr R1, [SP]
	mul R0, R1
	mov R1, #2
	lsl r1, r1, #0x10
	mul R1, R0
	sub r6, r6, r1
	lsr r0, r6, #8
	lsl r0, r0, #8
	sub R6, #2
	mov R1, #0xFF
	and R6, R1
	orr R6, R0
	sub R5, #1
	bne loc_801C108
loc_801C136:
	add sp, sp, #8
	pop {r6}
loc_801C13A:
	add R4, #8
	add R7, #4
	sub R6, #1
	bne loc_801C08C
	add sp, sp, #4
	pop {R4-R7,pc}
	.balign 4, 0x00
off_801C148: .word dword_20352E0
dword_801C14C: .word 0x6016A00
dword_801C150: .word 0xFFFF
dword_801C154: .word 0x40000000
dword_801C158: .word 0xAB50
dword_801C15C: .word 0x1FF
off_801C160: .word dword_872CE94
dword_801C164: .word 0x100000
.endfunc // sub_801C082

loc_801C168:
	push {r4,r6,lr}
	ldr R4, off_801C334 // =byte_203EB50 
	mov R6, #4
loc_801C16E:
	ldrb R1, [R4]
	mov R0, #1
	tst R1, R0
	beq loc_801C1C8
	ldr R2, [R4,#0xC]
	ldrh R0, [R4,#2]
	ldrh R1, [R2,#0x24]
	cmp R1, #0
	bne loc_801C186
	mov R0, #0
	strb R0, [R4]
	b loc_801C1C6
loc_801C186:
	mov R2, #0
	cmp R0, R1
	beq loc_801C19E
	blt loc_801C190
	mov R2, #4
loc_801C190:
	ldr R3, off_801C338 // =off_801C33C 
	ldr R2, [R3,R2]
	mov LR, PC
	bx r2
	ldr R2, dword_801C364 // =0xB0B0B0B 
	str R2, [R4,#0x10]
	b loc_801C1C6
loc_801C19E:
	ldr R2, [R4,#0xC]
	ldr R2, [R2,#0x54]
	ldrb R2, [R2,#8]
	cmp R2, #0
	beq loc_801C1B2
	mov R2, #1
	strb R2, [R4,#8]
	mov R2, #2
	strb R2, [R4,#9]
	b loc_801C1C6
loc_801C1B2:
	ldrb R1, [R4,#9]
	cmp R1, #0
	beq loc_801C1C8
	sub R1, #1
	strb R1, [R4,#9]
	bne loc_801C1C6
	mov R1, #0
	strb R1, [R4,#8]
	ldr R1, dword_801C364 // =0xB0B0B0B 
	str R1, [R4,#0x10]
loc_801C1C6:
	strh R0, [R4,#2]
loc_801C1C8:
	add R4, #0x14
	sub R6, #1
	bne loc_801C16E
	pop {r4,r6,pc}
loc_801C1D0:
	mov R2, #2
	strb R2, [R4,#8]
	mov R2, #0xA
	strb R2, [R4,#9]
	add r2, r1, #0
	sub r2, r2, r0
	asr r2, r2, #3
	add R2, #2
	add r0, r0, r2
	cmp R0, R1
	ble locret_801C1E8
	add r0, r1, #0
locret_801C1E8:
	mov PC, LR
.func
.thumb_func
sub_801C1EA:
	mov R2, #1
	strb R2, [R4,#8]
	strb R2, [R4,#9]
	add r2, r0, #0
	sub r2, r2, r1
	asr r2, r2, #3
	add R2, #2
	sub r0, r0, r2
	cmp R0, R1
	bge locret_801C200
	add r0, r1, #0
locret_801C200:
	mov PC, LR
.endfunc // sub_801C1EA

.func
.thumb_func
sub_801C202:
	push {R4-R7,lr}
	sub sp, sp, #8
	mov R7, SP
	ldr R4, off_801C334 // =byte_203EB50 
	ldr R5, dword_801C344 // =0x6016600 
	mov R6, #4
	mov R3, #0
loc_801C210:
	ldrb R1, [R4]
	mov R0, #2
	tst R1, R0
	beq loc_801C286
	bl sub_801C296
	bl sub_801C304
	ldrb R0, [R4]
	mov R1, #8
	tst R0, R1
	beq loc_801C22C
	mov R0, #0
	str R0, [R7,#4]
loc_801C22C:
	push {r3}
	mov R0, #0
	mov R1, R10
	ldr R1, [R1,#0xC]
	ldr R1, [R1,#0x34]
	asr r1, r1, #0x10
	neg R1, R1
	ldrb R2, [R4]
	mov R3, #4
	tst R2, R3
	beq loc_801C24E
	ldrb R0, [R4,#4]
	ldr R2, [R7,#4]
	add r0, r0, r2
	ldrb R2, [R4,#5]
	add r1, r1, r2
	b loc_801C26A
loc_801C24E:
	ldr R0, [R4,#0xC]
	add r0, #0x34 
	bl sub_800362C
	cmp R2, #0
	beq loc_801C284
	mov R2, #4
	ldrsb R2, [R4,R2]
	add r0, r0, r2
	ldr R2, [R7,#4]
	add r0, r0, r2
	mov R2, #5
	ldrsb R2, [R4,R2]
	add r1, r1, r2
loc_801C26A:
	lsl r0, r0, #0x10
	orr R0, R1
	ldr R2, dword_801C360 // =0x1FF00FF 
	and R0, R2
	ldr R2, dword_801C358 // =0x80004000 
	orr R0, R2
	ldr R1, dword_801C35C // =0xEB30 
	ldr R2, [SP]
	add r1, r1, r2
	mov R2, #2
	mov R3, #0xDF
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
loc_801C284:
	pop {r3}
loc_801C286:
	add R4, #0x14
	add R3, #8
	add R5, #0x80
	add R5, #0x80
	sub R6, #1
	bne loc_801C210
	add sp, sp, #8
	pop {R4-R7,pc}
.endfunc // sub_801C202

.func
.thumb_func
sub_801C296:
	push {r3,r6,lr}
	ldrh R0, [R4,#2]
	ldrb R1, [R4]
	mov R2, #0x10
	tst R1, R2
	beq loc_801C2A8
	ldr R1, [R4,#0xC]
	ldrh R1, [R1,#0x26]
	sub r0, r1, r0
loc_801C2A8:
	bl sub_8000C00
	mov R2, #0xF
	add r1, r0, #0
	and R1, R2
	strb R1, [R7]
	lsr r1, r0, #4
	and R1, R2
	strb R1, [R7,#1]
	lsr r1, r0, #8
	and R1, R2
	strb R1, [R7,#2]
	lsr r1, r0, #0xc
	and R1, R2
	strb R1, [R7,#3]
	bl sub_8000C5C
	lsl r1, r0, #2
	mov r2, #0x20 
	sub r2, r2, r1
	neg R2, R2
	str R2, [R7,#4]
	mov R1, #0xA
loc_801C2D6:
	cmp R0, #4
	bge loc_801C2E0
	strb R1, [R7,R0]
	add R0, #1
	b loc_801C2D6
loc_801C2E0:
	ldr R1, [R4,#0x10]
	ldr R0, [R7]
	str R0, [R4,#0x10]
	mov R3, #0
loc_801C2E8:
	mov R2, #0xF
	and R2, R0
	mov R6, #0xF
	and R6, R1
	cmp R2, R6
	bne loc_801C2F6
	mov R2, #0xB
loc_801C2F6:
	strb R2, [R7,R3]
	lsr r0, r0, #8
	lsr r1, r1, #8
	add R3, #1
	cmp R3, #4
	blt loc_801C2E8
	pop {r3,r6,pc}
.endfunc // sub_801C296

.func
.thumb_func
sub_801C304:
	push {R3-R6,lr}
	ldrb R0, [R4,#8]
	lsl r0, r0, #2
	ldr R4, off_801C348 // =off_801C34C 
	ldr R4, [R4,R0]
	mov R6, #3
loc_801C310:
	ldrb R0, [R7,R6]
	cmp R0, #0xB
	beq loc_801C32A
	lsl r0, r0, #2
	ldr R0, [R4,R0]
	add r1, r5, #0
	mov r2, #0x20 
	bl loc_8000AC8
	add r0, r0, r2
	add R1, #0x80
	bl loc_8000AC8
loc_801C32A:
	add r5, #0x20 
	sub R6, #1
	bpl loc_801C310
	pop {R3-R6,pc}
	.balign 4, 0x00
off_801C334: .word byte_203EB50
off_801C338: .word off_801C33C
off_801C33C: .word loc_801C1D0+1
	.word sub_801C1EA+1
dword_801C344: .word 0x6016600
off_801C348: .word off_801C34C
off_801C34C: .word off_801D854
	.word off_801D880
	.word off_801D8AC
dword_801C358: .word 0x80004000
dword_801C35C: .word 0xEB30
dword_801C360: .word 0x1FF00FF
dword_801C364: .word 0xB0B0B0B
.endfunc // sub_801C304

.func
.thumb_func
sub_801C368:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	bl sub_802D1B4
	ldr R1, dword_801C444 // =0x600C980 
	push {r0}
	bl sub_801C3A4
	pop {r0}
	ldr R1, off_801C454 // =byte_3001670 
	mov R2, #0
	bl sub_801C3EE
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	bl sub_802D1BE
	ldr R1, dword_801C448 // =0x600CA40 
	push {r0}
	bl sub_801C3A4
	pop {r0}
	ldr R1, off_801C458 // =word_3001684 
	mov R2, #1
	bl sub_801C3EE
	pop {pc}
.endfunc // sub_801C368

.func
.thumb_func
sub_801C3A4:
	push {r4,r6,r7,lr}
	add r6, r1, #0
	cmp r0, #0x64 
	bne loc_801C3B2
	mov R0, #1
	lsl r0, r0, #8
	b loc_801C3C8
loc_801C3B2:
	cmp R0, #0xA
	bge loc_801C3BE
	mov R1, #0xAA
	lsl r1, r1, #4
	orr R0, R1
	b loc_801C3C8
loc_801C3BE:
	bl sub_8000C00
	mov R1, #0xA
	lsl r1, r1, #8
	orr R0, R1
loc_801C3C8:
	add r4, r0, #0
	mov R7, #3
loc_801C3CC:
	sub r1, r7, #1
	lsl r1, r1, #2
	add r0, r4, #0
	lsr R0, R1
	mov R1, #0xF
	and R0, R1
	ldr R1, off_801C44C // =off_801D8D8 
	lsl r0, r0, #2
	ldr R0, [R1,R0]
	add r1, r6, #0
	mov r2, #0x40 
	bl loc_8000AC8
.endfunc // sub_801C3A4

	add r6, #0x40 
	sub R7, #1
	bne loc_801C3CC
	pop {r4,r6,r7,pc}
.func
.thumb_func
sub_801C3EE:
	push {r4,r6,r7,lr}
	mov R3, #0
	cmp r0, #0x3c 
	bgt loc_801C3FE
	add R3, #4
	cmp R0, #0x19
	bgt loc_801C3FE
	add R3, #4
loc_801C3FE:
	mov R0, #0xC
	mul R0, R2
	add r3, r3, r0
	ldr R0, off_801C46C // =off_801D92C 
	ldr R0, [R0,R3]
	mov R2, #0x14
	cmp R3, #0xC
	blt loc_801C410
	sub R2, #8
loc_801C410:
	bl loc_8000AC4
.endfunc // sub_801C3EE

	pop {r4,r6,r7,pc}
.func
.thumb_func
sub_801C416:
	push {r4,r5,lr}
	// j
	mov R0, #0x11
	// i
	mov R1, #0x12
	// cpyOff
	mov R2, #0
	// tileRefs
	ldr R3, tileRefs // =dword_801D904 
	mov R4, #0xA
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr R0, dword_801C45C // =0x40780090 
	ldr R1, dword_801C460 // =0x9768 
	mov R2, #1
	mov R3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	ldr R0, dword_801C464 // =0x40A80090 
	ldr R1, dword_801C468 // =0x976C 
	mov R2, #1
	mov R3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r4,r5,pc}
	.balign 4, 0x00
dword_801C444: .word 0x600C980
dword_801C448: .word 0x600CA40
off_801C44C: .word off_801D8D8
tileRefs: .word dword_801D904
off_801C454: .word byte_3001670
off_801C458: .word word_3001684
dword_801C45C: .word 0x40780090
dword_801C460: .word 0x9768
dword_801C464: .word 0x40A80090
dword_801C468: .word 0x976C
off_801C46C: .word off_801D92C
.endfunc // sub_801C416

.func
.thumb_func
sub_801C470:
	push {lr}
	bl battle_isPaused
	bne locret_801C4AC
	bl battle_isTimeStop
	bne locret_801C4AC
	bl battle_getFlags
	mov R1, #2
	tst R0, R1
	bne locret_801C4AC
	ldrh R0, [R5,#0x22]
	ldrh R1, [R5,#0x20]
	ldr R2, dword_801C4DC // =0x4000 
	add r0, r0, r1
	strh R0, [R5,#0x20]
	cmp R0, R2
	blt locret_801C4AC
	strh R2, [R5,#0x20]
	bl sub_800A97A
	cmp R0, #0
	bne locret_801C4AC
	mov R0, #2
	bl battle_setFlags
	mov R0, #0x8F
	bl sound_play // () -> void
locret_801C4AC:
	pop {pc}
.endfunc // sub_801C470

.func
.thumb_func
sub_801C4AE:
	push {lr}
	bl battle_getFlags
	mov R1, #2
	tst R0, R1
	bne locret_801C4DA
	bl sub_800A70C
	ldr R1, dword_801C4DC // =0x4000 
	mul R0, R1
	ldr R1, off_801C4E0 // =0x2D0 
	svc 6
	strh R0, [R5,#0x20]
	ldr R1, dword_801C4DC // =0x4000 
	cmp R0, R1
	bne locret_801C4DA
	mov R0, #2
	bl battle_setFlags
	mov R0, #0x8F
	bl sound_play // () -> void
locret_801C4DA:
	pop {pc}
dword_801C4DC: .word 0x4000
off_801C4E0: .word 0x2D0
.endfunc // sub_801C4AE

.func
.thumb_func
sub_801C4E4:
	push {R4-R6,lr}
	bl sub_800A97A
	cmp R0, #0
	bne locret_801C574
	ldrh R6, [R5,#0x20]
	ldr R2, dword_801C6D8 // =0x4000 
	cmp R6, R2
	blt loc_801C534
	ldrb R6, [R5]
	add R6, #1
	cmp r6, #0x70 
	blt loc_801C500
	mov R6, #0
loc_801C500:
	strb R6, [R5]
	add r0, r6, #0
	mov R1, #7
	svc 6
	mov R1, #3
	and R0, R1
	ldr R3, dword_801C6B8 // =0x9232 
	add r3, r3, r0
	mov R0, #7
	mov R1, #1
	mov R2, #3
	mov R4, #0x10
	mov R5, #1
	bl sub_80018D0
	mov R0, #8
	and R0, R6
	ldr R3, off_801C6BC // =dword_801C6C0 
	add r3, r3, r0
	mov R0, #0xD
	mov R1, #1
	mov R2, #3
	mov R4, #4
	bl sub_80018E0
	b locret_801C574
loc_801C534:
	mov R0, #7
	mov R1, #1
	mov R2, #3
	ldr R3, dword_801C6B4 // =0x9222 
	mov R4, #0x10
	push {r5}
	mov R5, #1
	bl sub_80018D0
	pop {r5}
	lsr r4, r6, #0xa
	cmp R4, #0
	beq loc_801C55C
	mov R0, #7
	mov R1, #1
	mov R2, #3
	ldr R3, dword_801C6B0 // =0x922A 
	mov R5, #1
	bl sub_80018D0
loc_801C55C:
	lsr r6, r6, #7
	mov R0, #7
	and R0, R6
	ldr R3, dword_801C6B4 // =0x9222 
	add r3, r3, r0
	lsr r6, r6, #3
	mov R0, #7
	add r0, r0, r6
	mov R1, #1
	mov R2, #3
	bl sub_800187C
locret_801C574:
	pop {R4-R6,pc}
.endfunc // sub_801C4E4

.func
.thumb_func
sub_801C576:
	push {R4-R6,lr}
	bl sub_800A97A
	cmp R0, #0
	bne locret_801C5F2
	ldrh R6, [R5,#0x20]
	ldr R2, dword_801C6D8 // =0x4000 
	cmp R6, R2
	blt loc_801C5B2
	ldrb R6, [R5]
	add R6, #1
	cmp r6, #0x70 
	blt loc_801C592
	mov R6, #0
loc_801C592:
	strb R6, [R5]
	add r0, r6, #0
	mov R1, #7
	svc 6
	mov R1, #3
	and R0, R1
	ldr R3, dword_801C6B8 // =0x9232 
	add r3, r3, r0
	mov R0, #7
	mov R1, #1
	mov R2, #3
	mov R4, #0x10
	mov R5, #1
	bl sub_80018D0
	b locret_801C5F2
loc_801C5B2:
	mov R0, #7
	mov R1, #1
	mov R2, #3
	ldr R3, dword_801C6B4 // =0x9222 
	mov R4, #0x10
	push {r5}
	mov R5, #1
	bl sub_80018D0
	pop {r5}
	lsr r4, r6, #0xa
	cmp R4, #0
	beq loc_801C5DA
	mov R0, #7
	mov R1, #1
	mov R2, #3
	ldr R3, dword_801C6B0 // =0x922A 
	mov R5, #1
	bl sub_80018D0
loc_801C5DA:
	lsr r6, r6, #7
	mov R0, #7
	and R0, R6
	ldr R3, dword_801C6B4 // =0x9222 
	add r3, r3, r0
	lsr r6, r6, #3
	mov R0, #7
	add r0, r0, r6
	mov R1, #1
	mov R2, #3
	bl sub_800187C
locret_801C5F2:
	pop {R4-R6,pc}
.endfunc // sub_801C576

.func
.thumb_func
sub_801C5F4:
	push {lr}
	mov R0, R10
	ldr R0, [R0]
	ldrb R1, [R0]
	cmp r1, #0x50 
	beq locret_801C63E
	ldrb R0, [R5,#0x18]
	strb R0, [R5,#0x19]
	mov R2, #0
	ldrh R0, [R5,#0x20]
	ldr R1, off_801C6D0 // =0x1500 
	cmp R0, R1
	blt loc_801C620
	add R2, #1
	ldr R1, off_801C6D4 // =0x2A00 
	cmp R0, R1
	blt loc_801C620
	add R2, #1
	ldr R1, dword_801C6D8 // =0x4000 
	cmp R0, R1
	bne loc_801C620
	add R2, #1
loc_801C620:
	strb R2, [R5,#0x18]
	bl sub_800A8F8
	cmp R0, #1
	bne locret_801C63E
	ldrb R0, [R5,#0x18]
	ldrb R1, [R5,#0x19]
	cmp R0, R1
	ble locret_801C63E
	sub R0, #1
	lsl r0, r0, #1
	ldr R1, off_801C6E4 // =dword_801C6E8 
	ldrh R0, [R1,R0]
	bl sound_play // () -> void
locret_801C63E:
	pop {pc}
.endfunc // sub_801C5F4

.func
.thumb_func
sub_801C640:
	push {R4-R6,lr}
	bl sub_800A97A
	cmp R0, #0
	bne locret_801C6AE
	mov R0, #7
	mov R1, #1
	mov R2, #3
	ldr R3, dword_801C6B4 // =0x9222 
	mov R4, #0x10
	push {r5}
	mov R5, #1
	bl sub_80018D0
	pop {r5}
	ldrh R6, [R5,#0x20]
	lsr r4, r6, #0xa
	cmp R4, #0
	beq loc_801C678
	mov R0, #7
	mov R1, #1
	mov R2, #3
	ldr R3, dword_801C6B0 // =0x922A 
	push {r5}
	mov R5, #1
	bl sub_80018D0
	pop {r5}
loc_801C678:
	ldr R0, dword_801C6D8 // =0x4000 
	cmp R0, R6
	beq loc_801C696
	lsr r6, r6, #7
	mov R0, #7
	and R0, R6
	ldr R3, dword_801C6B4 // =0x9222 
	add r3, r3, r0
	lsr r6, r6, #3
	mov R0, #7
	add r0, r0, r6
	mov R1, #1
	mov R2, #3
	bl sub_800187C
loc_801C696:
	ldrb R3, [R5,#0x18]
	cmp R3, #0
	bne loc_801C69E
	sub R3, #2
loc_801C69E:
	mov r2, #0x20 
	sub R3, #1
	mul R3, R2
	ldr R0, off_801C6DC // =byte_86E1CD8 
	add r0, r0, r3
	ldr R1, off_801C6E0 // =unk_3001A80 
	bl loc_8000AC8
locret_801C6AE:
	pop {R4-R6,pc}
dword_801C6B0: .word 0x922A
dword_801C6B4: .word 0x9222
dword_801C6B8: .word 0x9232
off_801C6BC: .word dword_801C6C0
dword_801C6C0: .word 0x92379236, 0x92399238, 0x923B923A, 0x923D923C
off_801C6D0: .word 0x1500
off_801C6D4: .word 0x2A00
dword_801C6D8: .word 0x4000
off_801C6DC: .word byte_86E1CD8
off_801C6E0: .word unk_3001A80
off_801C6E4: .word dword_801C6E8
dword_801C6E8: .word 0x169016A
	.hword 0x8F
.endfunc // sub_801C640

.func
.thumb_func
sub_801C6EE:
	push {R4-R7,lr}
	mov R0, #0
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	mov R0, #0
	mov R1, #0x12
	mov R2, #3
	mov R3, #0
	mov R4, #0x11
	mov R5, #2
	bl sub_80018D0
	ldr R0, off_801C83C // =byte_2035280 
	ldr R0, [R0,#0x48] // (dword_20352C8 - 0x2035280)
	bl sub_800ED90
	cmp R3, #0
	beq loc_801C818
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	bl sub_8027D10
	ldr R2, off_801C81C // =byte_203EBA0 
	ldr R3, dword_801C820 // =0x600CB00 
	mov R4, #8
	mov R5, #1
	ldr R6, off_801C824 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
	add r7, r0, #0
	add r4, r0, #0
	mov R0, #0
	mov R1, #0x12
	mov R2, #3
	ldr R3, off_801C828 // =dword_801D944 
	bl sub_80018E0
	mov R0, #0
	mov R1, #0x13
	mov R2, #3
	ldr R3, off_801C82C // =byte_801D954 
	add r4, r7, #0
	bl sub_80018E0
	// idx
	ldr R0, [SP]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #2
	tst R1, R2
	beq loc_801C818
	ldr R0, [SP,#4]
	bl sub_8000C00
	add r4, r0, #0
	bl sub_8000C5C
	add r3, r0, #0
	add r6, r3, #0
	add r2, sp, #0xc
	lsl r0, r0, #1
	add r2, r2, r0
	sub R2, #2
	ldr R1, dword_801C830 // =0xD1B8 
loc_801C786:
	mov R0, #0xF
	and R0, R4
	lsl r0, r0, #1
	add r0, r0, r1
	strh R0, [R2]
	add R0, #1
	strh R0, [R2,#0x12]
	sub R2, #2
	lsr r4, r4, #4
	sub R3, #1
	bne loc_801C786
	ldr R0, [SP,#8]
	cmp R0, #0
	beq loc_801C7DE
	bl sub_8000C00
	add r4, r0, #0
	bl sub_8000C5C
	add r3, r0, #0
	add r2, r6, #0
	lsl r2, r2, #1
	add R2, #0xC
	add R2, SP
	ldr R1, dword_801C834 // =0xD1CE 
	strh R1, [R2]
	add R1, #1
	strh R1, [R2,#0x12]
	lsl r0, r0, #1
	add r2, r2, r0
	add r6, r6, r3
	add R6, #1
	ldr R1, dword_801C830 // =0xD1B8 
loc_801C7C8:
	mov R0, #0xF
	and R0, R4
	lsl r0, r0, #1
	add r0, r0, r1
	strh R0, [R2]
	add R0, #1
	strh R0, [R2,#0x12]
	sub R2, #2
	lsr r4, r4, #4
	sub R3, #1
	bne loc_801C7C8
loc_801C7DE:
	ldr R0, off_801C83C // =byte_2035280 
	ldr R0, [R0,#0x48] // (dword_20352C8 - 0x2035280)
	ldr R1, [SP]
	mov R3, #0
	bl sub_8012A38
	tst R1, R1
	beq loc_801C806
	add r2, r6, #0
	lsl r2, r2, #1
	add R2, #0xC
	add R2, SP
	ldr R1, dword_801C838 // =0xD1D2 
	strh R1, [R2]
	add R1, #1
	strh R1, [R2,#0x12]
	add R1, #1
	strh R1, [R2,#2]
	add R1, #1
	strh R1, [R2,#0x14]
loc_801C806:
	add r0, r7, #0
	// j
	add R0, #0
	// i
	mov R1, #0x12
	// cpyOff
	mov R2, #3
	// tileRefs
	add r3, sp, #0xc
	mov R4, #9
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
loc_801C818:
	add sp, sp, #0x30
	pop {R4-R7,pc}
off_801C81C: .word byte_203EBA0
dword_801C820: .word 0x600CB00
off_801C824: .word dword_86B7AE0
off_801C828: .word dword_801D944
off_801C82C: .word byte_801D954
dword_801C830: .word 0xD1B8
dword_801C834: .word 0xD1CE
dword_801C838: .word 0xD1D2
off_801C83C: .word byte_2035280
.endfunc // sub_801C6EE

.func
.thumb_func
sub_801C840:
	push {r7,lr}
	ldr R7, [R5,#0x48]
	bl sub_802D234
	cmp R0, #6
	bne loc_801C85A
	mov R0, #0x80
	mov R7, R10
	ldr R7, [R7,#0x18]
	add r7, r7, r0
	ldr R7, [R7]
	tst R7, R7
	beq locret_801C904
loc_801C85A:
	bl battle_isBattleOver
	tst R0, R0
	bne loc_801C886
	bl battle_isPaused
	bne loc_801C886
	ldrh R1, [R7,#0x24]
	ldrh R2, [R7,#0x26]
	lsr r2, r2, #2
	cmp R1, R2
	bgt loc_801C886
	ldrb R0, [R5,#6]
	add R0, #1
	strb R0, [R5,#6]
	cmp r0, #0x2d 
	blt loc_801C886
	mov R0, #0
	strb R0, [R5,#6]
	mov R0, #0x84
	bl sound_play // () -> void
loc_801C886:
	ldrb R0, [R5,#0x1C]
	cmp R0, #0
	beq loc_801C890
	ldrh R0, [R7,#0x24]
	strh R0, [R5,#0x24]
loc_801C890:
	ldrh R1, [R5,#0x26]
	mov R2, #0xFF
	lsl r2, r2, #8
	add R2, #0xFF
	cmp R1, R2
	beq loc_801C8A2
	ldrh R3, [R5,#0x26]
	strh R3, [R5,#0x24]
	b loc_801C8A6
loc_801C8A2:
	ldrh R1, [R7,#0x24]
	ldrh R3, [R5,#0x24]
loc_801C8A6:
	cmp R1, R3
	beq loc_801C8DE
	bgt loc_801C8C2
	mov R0, #2
	strb R0, [R5,#3]
	add r2, r3, #0
	sub r2, r2, r1
	asr r2, r2, #3
	add R2, #4
	sub r3, r3, r2
	cmp R3, R1
	bge loc_801C8D6
	add r3, r1, #0
	b loc_801C8D6
loc_801C8C2:
	mov R0, #1
	strb R0, [R5,#3]
	add r2, r1, #0
	sub r2, r2, r3
	asr r2, r2, #3
	add R2, #4
	add r3, r3, r2
	cmp R3, R1
	ble loc_801C8D6
	add r3, r1, #0
loc_801C8D6:
	strh R3, [R5,#0x24]
	mov R0, #0xF
	strb R0, [R5,#5]
	pop {r7,pc}
loc_801C8DE:
	ldrb R0, [R5,#5]
	cmp R0, #0
	beq loc_801C8EA
	sub R0, #1
	strb R0, [R5,#5]
	bne locret_801C904
loc_801C8EA:
	ldrh R0, [R5,#0x26]
	mov R2, #0xFF
	lsl r2, r2, #8
	add R2, #0xFF
	cmp R0, R2
	bne loc_801C900
	mov R0, #2
	ldrh R2, [R7,#0x26]
	lsr r2, r2, #2
	cmp R1, R2
	ble loc_801C902
loc_801C900:
	mov R0, #0
loc_801C902:
	strb R0, [R5,#3]
locret_801C904:
	pop {r7,pc}
.endfunc // sub_801C840

.func
.thumb_func
sub_801C906:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	mov R6, SP
	ldrh R0, [R5,#0x24]
	bl sub_8000C00
	add r2, r0, #0
	bl sub_8000C5C
	lsl r0, r0, #2
	ldr R1, dword_801C980 // =0xAAAA 
	lsl R1, R0
	orr R2, R1
	push {r5}
	ldr R5, dword_801C97C // =0xD1A0 
	add r1, r6, #0
	add R1, #8
	mov R3, #6
loc_801C92A:
	mov R0, #0xF
	and R0, R2
	lsl r0, r0, #1
	add r0, r0, r5
	strh R0, [R6,R3]
	add R0, #1
	strh R0, [R1,R3]
	lsr r2, r2, #4
	sub R3, #2
	bpl loc_801C92A
	ldr R5, [SP]
	ldrb R0, [R5,#1]
	// j
	add R0, #1
	// i
	ldrb R1, [R5,#2]
	// cpyOff
	mov R2, #3
	// tileRefs
	add r3, r6, #0
	mov R4, #4
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r5}
	ldrb R0, [R5,#3]
	lsl r0, r0, #5
	ldr R3, off_801C96C // =off_801C970 
	ldr R1, [R3]
	add r0, r0, r1
	ldr R1, [R3,#0x4] // (off_801C974 - 0x801C970)
	ldr R2, [R3,#0x8] // (dword_801C978 - 0x801C970)
	bl loc_8000AC8
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
off_801C96C: .word off_801C970
off_801C970: .word dword_86E1C78
off_801C974: .word byte_3001B00
dword_801C978: .word 0x20
dword_801C97C: .word 0xD1A0
dword_801C980: .word 0xAAAA
.endfunc // sub_801C906

.func
.thumb_func
sub_801C984:
	push {lr}
	mov R0, #0
	bl sub_802CE60
	cmp R0, #0
	beq loc_801C992
	mov R0, #1
loc_801C992:
	strb R0, [R5,#7]
	mov R0, #1
	bl sub_802CE60
	cmp R0, #0
	beq loc_801C9A0
	mov R0, #1
loc_801C9A0:
	strb R0, [R5,#9]
	pop {pc}
.endfunc // sub_801C984

.func
.thumb_func
sub_801C9A4:
	push {lr}
	ldrb R1, [R5,#7]
	ldrb R0, [R5,#8]
	cmp R0, R1
	beq loc_801C9B6
	strb R1, [R5,#8]
	mov R0, #6
	bl sub_801C9C8
loc_801C9B6:
	ldrb R1, [R5,#9]
	ldrb R0, [R5,#0xA]
	cmp R0, R1
	beq locret_801C9C6
	strb R1, [R5,#0xA]
	mov R0, #0x1A
	bl sub_801C9C8
locret_801C9C6:
	pop {pc}
.endfunc // sub_801C9A4

.func
.thumb_func
sub_801C9C8:
	push {r4,r5,lr}
	lsl r1, r1, #4
	ldr R3, off_801C9E0 // =byte_801D964 
	// tileRefs
	add r3, r3, r1
	// i
	mov R1, #2
	// cpyOff
	mov R2, #3
	mov R4, #4
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4,r5,pc}
	.byte 0, 0
off_801C9E0: .word byte_801D964
.endfunc // sub_801C9C8

.func
.thumb_func
sub_801C9E4:
	push {lr}
	ldr R0, dword_801C9FC // =0x8064403F 
	ldr R1, dword_801CA00 // =0xE370 
	mov R2, #0
	mov R3, #6
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	ldr R0, dword_801CA04 // =0x84803F 
	ldr R1, dword_801CA08 // =0xE378 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {pc}
dword_801C9FC: .word 0x8064403F
dword_801CA00: .word 0xE370
dword_801CA04: .word 0x84803F
dword_801CA08: .word 0xE378
.endfunc // sub_801C9E4

.func
.thumb_func
sub_801CA0C:
	push {lr}
	ldrb R0, [R5,#0xB]
	sub R0, #1
	strb R0, [R5,#0xB]
	bne locret_801CA26
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801BED6
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801DACC
locret_801CA26:
	pop {pc}
.endfunc // sub_801CA0C

.func
.thumb_func
sub_801CA28:
	ldrb R0, [R5]
	add R0, #1
	mov r1, #0x3f 
	and R0, R1
	strb R0, [R5]
	mov PC, LR
.endfunc // sub_801CA28

.func
.thumb_func
sub_801CA34:
	push {R4-R6,lr}
	ldrb R6, [R5,#0xB]
	ldr R0, off_801CA78 // =dword_801CA7C 
	ldrb R6, [R0,R6]
	ldrb R0, [R5]
	mov R1, #0x1F
	and R1, R0
	bne locret_801CA72
	cmp r0, #0x20 
	bge loc_801CA5E
	mov R0, #0x16
	// j
	sub r0, r0, r6
	// i
	mov R1, #4
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_801CA74 // =dword_801D984 
	mov R4, #8
	add r4, r4, r6
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	b locret_801CA72
loc_801CA5E:
	mov R0, #0x16
	sub r0, r0, r6
	mov R1, #4
	mov R2, #3
	mov R3, #0
	mov R4, #8
	add r4, r4, r6
	mov R5, #2
	bl sub_80018D0
locret_801CA72:
	pop {R4-R6,pc}
off_801CA74: .word dword_801D984
off_801CA78: .word dword_801CA7C
dword_801CA7C: .word 0x30200
.endfunc // sub_801CA34

.func
.thumb_func
sub_801CA80:
	push {R4-R7,lr}
	sub sp, sp, #0x24
	// i
	mov R1, #0
	add r6, r5, #0
	add r6, #0x28 
loc_801CA8A:
	mov R7, SP
	ldrh R2, [R6]
	cmp R2, #0xFF
	beq loc_801CAD4
	ldr R0, dword_801CAD8 // =0xD1DA 
	mov R3, #9
	mul R3, R1
	add r0, r0, r3
	add r5, r0, #1
	mov R3, #0
loc_801CA9E:
	strh R0, [R7,R3]
	add R0, #2
	add R3, #2
	cmp R3, #0x12
	bne loc_801CA9E
	add R7, #0x12
	add r0, r5, #0
	mov R3, #0
loc_801CAAE:
	strh R0, [R7,R3]
	add R0, #2
	add R3, #2
	cmp R3, #0x12
	bne loc_801CAAE
	mov R0, #0x1E
	// j
	sub r0, r0, r2
	// cpyOff
	mov R2, #0
	// tileRefs
	mov R3, SP
	mov R4, #9
	mov R5, #2
	push {r1}
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r1}
	add R1, #2
	add R6, #2
	cmp R1, #8
	bne loc_801CA8A
loc_801CAD4:
	add sp, sp, #0x24
	pop {R4-R7,pc}
dword_801CAD8: .word 0xD1DA
.endfunc // sub_801CA80

.func
.thumb_func
sub_801CADC:
	push {lr}
	ldrb R0, [R5,#0x17]
	cmp R0, #0xFF
	bne loc_801CAF0
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	mov r1, #0x29 
	bl sub_80136CC
loc_801CAF0:
	ldrb R1, [R5,#0x14]
	cmp R1, #0
	beq loc_801CB10
	sub R1, #1
	strb R1, [R5,#0x14]
	bne loc_801CB02
	strb R0, [R5,#0x15]
	cmp R0, #0
	beq loc_801CB2C
loc_801CB02:
	mov R2, #2
	tst R1, R2
	beq loc_801CB22
	ldrb R0, [R5,#0x1F]
	cmp R0, #0
	bne loc_801CB26
	b loc_801CB2C
loc_801CB10:
	ldrb R1, [R5,#0x15]
	cmp R0, R1
	beq loc_801CB1E
	cmp R1, #0xFF
	beq loc_801CB1E
	mov R1, #0xA
	strb R1, [R5,#0x14]
loc_801CB1E:
	cmp R0, #0
	beq loc_801CB2C
loc_801CB22:
	cmp R0, #0
	beq loc_801CB2C
loc_801CB26:
	bl sub_801CC34
	b loc_801CB30
loc_801CB2C:
	bl sub_801CB38
loc_801CB30:
	strb R0, [R5,#0x15]
	bl sub_801CC94
	pop {pc}
.endfunc // sub_801CADC

.func
.thumb_func
sub_801CB38:
	push {r0,r4,r6,r7,lr}
	mov R7, #0
	ldrb R0, [R5,#0x13]
	cmp R0, #0xFF
	bne loc_801CB54
	mov R0, #0
	strb R0, [R5,#0x13]
	bl sub_801E6A8
	strb R0, [R5,#0x10]
	strb R0, [R5,#0x11]
	strb R1, [R5,#0xE]
	strb R1, [R5,#0xD]
	b loc_801CBA2
loc_801CB54:
	mov r1, #0x4c 
	ldrb R0, [R5,R1]
	cmp R0, #0
	beq loc_801CB60
	ldrb R1, [R5,#0xE]
	b loc_801CBA2
loc_801CB60:
	ldrb R0, [R5,#0x17]
	cmp R0, #0
	beq loc_801CB72
	ldrb R0, [R5,#0x16]
	cmp R0, #0
	bne loc_801CB72
	bl sub_801E6A8
	b loc_801CB76
loc_801CB72:
	bl sub_801E69C
loc_801CB76:
	ldrb R2, [R5,#0x14]
	cmp R2, #0
	beq loc_801CB80
	strb R0, [R5,#0x10]
	b loc_801CBA2
loc_801CB80:
	ldrb R2, [R5,#0x10]
	cmp R0, R2
	bne loc_801CB94
	ldrb R2, [R5,#0xE]
	cmp R1, R2
	beq loc_801CBA2
	ldrb R3, [R5,#0xE]
	strb R3, [R5,#0xD]
	strb R1, [R5,#0xE]
	b loc_801CBA2
loc_801CB94:
	strb R2, [R5,#0x11]
	ldrb R3, [R5,#0xE]
	strb R3, [R5,#0xD]
	strb R0, [R5,#0x10]
	strb R1, [R5,#0xE]
	mov R1, #0xC
	strb R1, [R5,#0x13]
loc_801CBA2:
	cmp R0, #5
	bge loc_801CBBE
	cmp R0, #3
	beq loc_801CBBE
	ldrb R1, [R5,#0x13]
	add r7, r1, #0
	cmp R1, #0
	beq loc_801CBBE
	sub r2, r1, #1
	strb R2, [R5,#0x13]
	mov R2, #2
	and R2, R1
	beq loc_801CBBE
	ldrb R0, [R5,#0x11]
loc_801CBBE:
	add r4, r0, #0
	add r6, r1, #0
	lsl r0, r0, #2
	ldr R1, off_801CD04 // =off_801CD08 
	ldr R0, [R1,R0]
	ldr R1, dword_801CD68 // =0x6017680 
	ldr R2, off_801CD6C // =0x100 
	bl loc_8000AC8
.endfunc // sub_801CB38

	push {R0-R3}
	bl sub_801D814
	tst R0, R0
	pop {R0-R3}
	bne loc_801CBEC
	ldr R0, off_801CD64 // =dword_872D914 
	ldr R1, dword_801CD68 // =0x6017680 
	ldr R2, off_801CD6C // =0x100 
	add r1, r1, r2
	ldr R2, off_801CD70 // =0x80 
	bl loc_8000AC8
	b loc_801CC0A
loc_801CBEC:
	ldrb R1, [R5,#0xE]
	mov R2, #2
	and R2, R7
	beq loc_801CBF6
	ldrb R1, [R5,#0xD]
loc_801CBF6:
	mov R0, #0xA
	sub r0, r0, r1
	mov R1, #0x80
	mul R0, R1
	ldr R1, off_801CDC4 // =dword_872E994 
	add r0, r0, r1
	ldr R1, dword_801CDC8 // =0x6017780 
	mov R2, #0x80
	bl loc_8000AC8
loc_801CC0A:
	ldrb R1, [R5,#0x10]
	cmp R1, #3
	bne loc_801CC24
	ldrb R1, [R5,#0x13]
	cmp R1, #0
	beq loc_801CC24
	sub r2, r1, #1
	strb R2, [R5,#0x13]
	mov R2, #2
	and R2, R1
	beq loc_801CC24
	ldr R0, off_801CD7C // =dword_801CD80 
	b loc_801CC2A
loc_801CC24:
	lsl r0, r4, #5
	ldr R1, off_801CD74 // =dword_872F114 
	add r0, r0, r1
loc_801CC2A:
	ldr R1, off_801CD78 // =byte_30016D0 
	mov r2, #0x20 
	bl loc_8000AC8
	pop {r0,r4,r6,r7,pc}
.func
.thumb_func
sub_801CC34:
	push {r0,r4,r7,lr}
	sub sp, sp, #0x30
	add r2, r0, #0
	sub R0, #1
	ldr R1, off_801CDD8 // =dword_801CDDC 
	ldrb R0, [R1,R0]
	str R0, [SP]
	ldrb R1, [R5,#0x15]
	cmp R2, R1
	beq loc_801CC64
	ldr R2, off_801CD6C // =0x100 
	mul R0, R2
	ldr R1, off_801CDCC // =unk_872D094 
	add r0, r0, r1
	ldr R1, dword_801CD68 // =0x6017680 
	bl loc_8000AC8
	ldr R0, off_801CDD4 // =byte_872D014 
	add r1, r1, r2
	mov R2, #0x80
	bl loc_8000AC8
	mov R0, #0xFF
	strb R0, [R5,#0x10]
loc_801CC64:
	bl sub_801E6A8
	mov R1, #0
	ldrb R2, [R5,#0x17]
	cmp R2, #0xFF
	bne loc_801CC76
	cmp R0, #3
	bne loc_801CC76
	mov R1, #1
loc_801CC76:
	ldrb R0, [R5,#0x10]
	strb R1, [R5,#0x10]
	ldr R0, [SP]
	mov r2, #0x40 
	mul R0, R2
	ldr R2, off_801CDD0 // =dword_872D694 
	add r0, r0, r2
	mov r2, #0x20 
	mul R1, R2
	add r0, r0, r1
	ldr R1, off_801CD78 // =byte_30016D0 
	bl loc_8000AC8
.endfunc // sub_801CC34

	add sp, sp, #0x30
	pop {r0,r4,r7,pc}
.func
.thumb_func
sub_801CC94:
	push {lr}
	ldrb R0, [R5,#0x1D]
	cmp R0, #0
	bne loc_801CCDE
	ldrh R1, [R5,#0x38]
	sub R1, #1
	bne loc_801CCDA
	ldrb R0, [R5,#0x15]
	cmp R0, #0
	beq loc_801CCB0
	ldrb R0, [R5,#0x17]
	cmp R0, #0xFF
	beq loc_801CCB6
	b loc_801CCD8
loc_801CCB0:
	ldrb R0, [R5,#0x1E]
	cmp R0, #0
	bne loc_801CCC8
loc_801CCB6:
	push {r5}
	bl sub_80103EC
	add r5, r0, #0
	bl sub_800FE52
	pop {r5}
	cmp R0, #0
	beq loc_801CCD8
loc_801CCC8:
	bl rng_8001562
	mov R1, #1
	and R1, R0
	add R1, #1
	strb R1, [R5,#0x1D]
	mov R0, #0xC
	strb R0, [R5,#0xF]
loc_801CCD8:
	mov R1, #0x14
loc_801CCDA:
	strh R1, [R5,#0x38]
	b locret_801CD00
loc_801CCDE:
	ldrb R1, [R5,#0xF]
	sub r2, r1, #1
	strb R2, [R5,#0xF]
	bne loc_801CCF0
	ldrb R0, [R5,#0x1D]
	sub R0, #1
	strb R0, [R5,#0x1D]
	mov R0, #0xC
	strb R0, [R5,#0xF]
loc_801CCF0:
	mov R0, #2
	tst R0, R1
	beq locret_801CD00
	ldr R0, off_801CDA0 // =dword_801CDA4 
	ldr R1, off_801CD78 // =byte_30016D0 
	mov r2, #0x20 
	bl loc_8000AC8
locret_801CD00:
	pop {pc}
	.balign 4, 0x00
off_801CD04: .word off_801CD08
off_801CD08: .word dword_872D814
	.word dword_872D994
	.word dword_872DB14
	.word unk_872DC94
	.word dword_872DE14
	.word unk_872DF94
	.word dword_872E094
	.word dword_872E194
	.word dword_872E294
	.word dword_872E394
	.word dword_872E494
	.word dword_872E594
	.word dword_872E694
	.word dword_872E794
	.word dword_872E894
	.word unk_872DF94
	.word dword_872E094
	.word dword_872E194
	.word dword_872E294
	.word dword_872E394
	.word dword_872EF14
	.word dword_872EF14
	.word dword_872F014
off_801CD64: .word dword_872D914
dword_801CD68: .word 0x6017680
off_801CD6C: .word 0x100
off_801CD70: .word 0x80
off_801CD74: .word dword_872F114
off_801CD78: .word byte_30016D0
off_801CD7C: .word dword_801CD80
dword_801CD80: .word 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF
	.word 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF
off_801CDA0: .word dword_801CDA4
dword_801CDA4: .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_801CDC4: .word dword_872E994
dword_801CDC8: .word 0x6017780
off_801CDCC: .word unk_872D094
off_801CDD0: .word dword_872D694
off_801CDD4: .word byte_872D014
off_801CDD8: .word dword_801CDDC
dword_801CDDC: .word 0x3020100, 0x2010004, 0x50403, 0x2035280
.endfunc // sub_801CC94

.func
.thumb_func
sub_801CDEC:
	push {R4-R6,lr}
	ldrb R0, [R5,#0xF]
	cmp R0, #6
	beq locret_801CE14
	cmp R0, #5
	beq locret_801CE14
	ldrb R4, [R5,#0x12]
	lsl r4, r4, #0x10
	mov R2, #0
	mov R3, #0
	ldr R0, dword_801CE18 // =0x80004012 
	add r0, r0, r4
	ldr R1, dword_801CE1C // =0xCBB4 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	ldr R0, dword_801CE20 // =0x40200012 
	add r0, r0, r4
	ldr R1, dword_801CE24 // =0xCBBC 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
locret_801CE14:
	pop {R4-R6,pc}
	.balign 4, 0x00
dword_801CE18: .word 0x80004012
dword_801CE1C: .word 0xCBB4
dword_801CE20: .word 0x40200012
dword_801CE24: .word 0xCBBC
.endfunc // sub_801CDEC

.func
.thumb_func
sub_801CE28:
	push {r5,lr}
	ldr R5, off_801CE54 // =byte_2036840 
	ldrb R0, [R5,#0x7] // (byte_2036847 - 0x2036840)
	add R0, #1
	cmp R0, #5
	bne loc_801CE44
	ldrb R1, [R5]
	cmp R1, #4
	bne loc_801CE44
	ldrb R1, [R5,#0x8] // (byte_2036848 - 0x2036840)
	cmp R1, #2
	beq loc_801CE46
	cmp R1, #4
	beq loc_801CE46
loc_801CE44:
	strb R0, [R5,#0x7] // (byte_2036847 - 0x2036840)
loc_801CE46:
	ldr R1, off_801CE58 // =off_801CE5C 
	ldrb R0, [R5]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {r5,pc}
	.balign 4, 0x00
off_801CE54: .word byte_2036840
off_801CE58: .word off_801CE5C
off_801CE5C: .word sub_801CE6C+1
	.word sub_801CE92+1
	.word sub_801CED2+1
	.word sub_801CEFA+1
.endfunc // sub_801CE28

.func
.thumb_func
sub_801CE6C:
	push {lr}
	ldrb R0, [R5,#7]
	mov r1, #0x20 
	mul R0, R1
	mov R2, #0xE0
	sub r2, r2, r0
	ldrb R3, [R5,#6]
	mov R0, #0
	mov r1, #0x40 
	bl sub_802FE7A
	ldrb R0, [R5,#7]
	cmp R0, #5
	blt locret_801CE90
	mov R0, #4
	strb R0, [R5]
	mov R0, #0
	strb R0, [R5,#7]
locret_801CE90:
	pop {pc}
.endfunc // sub_801CE6C

.func
.thumb_func
sub_801CE92:
	push {lr}
	ldrb R0, [R5,#7]
	cmp R0, #1
	beq loc_801CEB2
	cmp R0, #2
	beq loc_801CEB6
	cmp R0, #3
	beq loc_801CEAE
	cmp r0, #0x2e 
	beq loc_801CEB6
	cmp r0, #0x2f 
	beq loc_801CEB2
	cmp r0, #0x30 
	bne loc_801CEC2
loc_801CEAE:
	mov r2, #0x40 
	b loc_801CEB8
loc_801CEB2:
	mov r2, #0x34 
	b loc_801CEB8
loc_801CEB6:
	mov r2, #0x38 
loc_801CEB8:
	mov R0, #0
	mov r1, #0x40 
	ldrb R3, [R5,#6]
	bl sub_802FE7A
loc_801CEC2:
	ldrb R0, [R5,#7]
	cmp r0, #0x30 
	blt locret_801CED0
	mov R0, #8
	strb R0, [R5]
	mov R0, #0
	strb R0, [R5,#7]
locret_801CED0:
	pop {pc}
.endfunc // sub_801CE92

.func
.thumb_func
sub_801CED2:
	push {lr}
	ldrb R0, [R5,#7]
	mov r1, #0x20 
	mul R0, R1
	mov r2, #0x40 
	add r2, r2, r0
	ldrb R3, [R5,#6]
	mov R0, #0
	mov r1, #0x40 
	bl sub_802FE7A
	ldrb R0, [R5,#7]
	cmp R0, #5
	blt locret_801CEF8
	ldrb R0, [R5,#6]
	bl sub_802FE6A
	mov R0, #0xC
	strb R0, [R5]
locret_801CEF8:
	pop {pc}
.endfunc // sub_801CED2

.func
.thumb_func
sub_801CEFA:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0xf
	bl sub_801BED6
	mov R0, #1
	lsl r0, r0, #0xf
	bl sub_801DACC
	pop {pc}
.endfunc // sub_801CEFA

loc_801CF0E:
	push {r7,lr}
	ldr R7, off_801CF20 // =byte_2036840 
	ldrb R0, [R7,#0x8] // (byte_2036848 - 0x2036840)
	lsl r0, r0, #2
	ldr R1, off_801CF24 // =off_801CF28 
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {r7,pc}
off_801CF20: .word byte_2036840
off_801CF24: .word off_801CF28
off_801CF28: .word sub_801CF3C+1
	.word sub_801CF3C+1
	.word sub_801CF3C+1
	.word dword_801CF9C+3
	.word sub_801D048+1
.func
.thumb_func
// () -> void
sub_801CF3C:
	// :param r7:
	push {R4-R7,lr}
	ldrb R0, [R7,#2]
	lsl r0, r0, #0x10
	ldrb R1, [R7,#3]
	add r1, r1, r0
	ldr R0, dword_801CF90 // =0x80004100 
	add r0, r0, r1
	ldrb R1, [R7,#6]
	lsl r1, r1, #0x19
	orr R0, R1
	ldr R1, dword_801CF94 // =0xB370 
	mov R2, #0
	mov R3, #0
	mov r5, #0x20 
	lsl r5, r5, #0x10
	mov R4, #5
loc_801CF5C:
	add r6, r0, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r0, r6, #0
	add r0, r0, r5
	add R1, #8
	sub R4, #1
	bne loc_801CF5C
	ldrb R0, [R7,#8]
	cmp R0, #1
	bne locret_801CF8E
	ldrb R0, [R7,#4]
	lsl r0, r0, #0x10
	ldrb R1, [R7,#5]
	add r1, r1, r0
	ldr R0, dword_801CF98 // =0x40000100 
	add r0, r0, r1
	ldrb R1, [R7,#6]
	lsl r1, r1, #0x19
	orr R0, R1
	ldr R1, dword_801CF9C // =0xB570B398 
	mov R2, #0
	mov R3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
locret_801CF8E:
	pop {R4-R7,pc}
dword_801CF90: .word 0x80004100
dword_801CF94: .word 0xB370
dword_801CF98: .word 0x40000100
dword_801CF9C: .word 0xB570B398
.endfunc // sub_801CF3C

	ldrb R0, [R7,#2]
	lsl r0, r0, #0x10
	ldrb R1, [R7,#3]
	add r1, r1, r0
	ldr R0, dword_801D028 // =0x8100 
	add r0, r0, r1
	ldrb R1, [R7,#6]
	lsl r1, r1, #0x19
	orr R0, R1
	ldr R1, dword_801D02C // =0xB370 
	mov R2, #0
	mov R3, #6
	mov R5, #8
	lsl r5, r5, #0x10
	ldrb R4, [R7,#9]
loc_801CFBE:
	add r6, r0, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r0, r6, #0
	add r0, r0, r5
	add R1, #2
	sub R4, #1
	bne loc_801CFBE
	ldrb R1, [R7,#0xA]
	cmp R1, #0
	beq locret_801D026
	mov R4, #4
	sub r4, r4, r1
	lsl r4, r4, #0x13
	ldr R6, dword_801D028 // =0x8100 
	sub r0, r0, r6
	sub r0, r0, r4
	ldr R6, dword_801D030 // =0x80004100 
	add r0, r0, r6
	ldr R1, dword_801D034 // =0xB380 
	add r6, r0, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r0, r6, #0
	mov r5, #0x20 
	lsl r5, r5, #0x10
	add r0, r0, r5
	ldrb R1, [R7,#0xB]
	cmp R1, #0
	beq loc_801D012
	mov R4, #4
	sub r4, r4, r1
	lsl r4, r4, #0x13
	sub r0, r0, r4
	ldr R1, dword_801D038 // =0xB388 
	add r6, r0, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r0, r6, #0
	mov r5, #0x20 
	lsl r5, r5, #0x10
	add r0, r0, r5
loc_801D012:
	ldrb R1, [R7,#0xC]
	cmp R1, #0
	beq locret_801D026
	ldr R1, dword_801D040 // =0xC000C000 
	bic R0, R1
	ldr R1, dword_801D03C // =0x40000100 
	orr R0, R1
	ldr R1, dword_801D044 // =0xB390 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
locret_801D026:
	pop {R4-R6,pc}
dword_801D028: .word 0x8100
dword_801D02C: .word 0xB370
dword_801D030: .word 0x80004100
dword_801D034: .word 0xB380
dword_801D038: .word 0xB388
dword_801D03C: .word 0x40000100
dword_801D040: .word 0xC000C000
dword_801D044: .word 0xB390
.func
.thumb_func
sub_801D048:
	push {R4-R7,lr}
	bl sub_801CF3C // () -> void
	ldrb R0, [R7]
	cmp R0, #8
	blt loc_801D070
	ldrb R0, [R7,#0xE]
	cmp R0, #0
	bne locret_801D128
	mov R0, #1
	strb R0, [R7,#0xE]
	mov R0, #9
	mov R1, #5
	mov R2, #3
	mov R3, #0
	mov R4, #0xC
	mov R5, #2
	bl sub_80018D0
	b locret_801D128
loc_801D070:
	push {R4-R7}
	ldr R0, off_801D1C4 // =byte_86F0374 
	mov R1, #2
	ldr R2, off_801D1C8 // =byte_203C4E0 
	ldr R3, dword_801D1CC // =0x6009360 
	mov R4, #2
	mov R5, #1
	ldr R6, off_801D1D0 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
	// j
	mov R0, #0xE
	// i
	mov R1, #5
	// tileRefs
	ldr R3, off_801D18C // =dword_801D190 
	// cpyOff
	mov R2, #3
	mov R4, #2
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7}
	ldrh R0, [R7,#0xC]
	bl sub_801D12A
	ldr R7, off_801D1D4 // =byte_2036840 
	ldrh R0, [R7,#0xC] // (word_203684C - 0x2036840)
	bl sub_8000C5C
	cmp R0, #4
	beq loc_801D0FE
	cmp R0, #3
	beq loc_801D0DA
	cmp R0, #2
	beq loc_801D0C8
	ldr R1, [SP,#4]
	lsr r1, r1, #0x10
	str R1, [SP]
	mov R0, #0
	str R0, [SP,#4]
	ldr R1, [SP,#0xC]
	lsr r1, r1, #0x10
	str R1, [SP,#8]
	mov R0, #0
	str R0, [SP,#0xC]
	b loc_801D0FE
loc_801D0C8:
	ldr R2, [SP,#4]
	str R2, [SP]
	mov R0, #0
	str R0, [SP,#4]
	ldr R2, [SP,#0xC]
	str R2, [SP,#8]
	mov R0, #0
	str R0, [SP,#0xC]
	b loc_801D0FE
loc_801D0DA:
	ldr R1, [SP]
	ldr R2, [SP,#4]
	add r0, r2, #0
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	orr R1, R2
	str R1, [SP]
	lsr r0, r0, #0x10
	str R0, [SP,#4]
	ldr R1, [SP,#8]
	ldr R2, [SP,#0xC]
	add r0, r2, #0
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	orr R1, R2
	str R1, [SP,#8]
	lsr r0, r0, #0x10
	str R0, [SP,#0xC]
loc_801D0FE:
	ldrh R0, [R7,#0xA] // (word_203684A - 0x2036840)
	bl sub_801D12A
	// j
	mov R0, #9
	// i
	mov R1, #5
	// cpyOff
	mov R2, #3
	// tileRefs
	mov R3, SP
	mov R4, #4
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R0-R3}
	// j
	mov R0, #0x11
	// i
	mov R1, #5
	// cpyOff
	mov R2, #3
	// tileRefs
	mov R3, SP
	mov R4, #4
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R0-R3}
locret_801D128:
	pop {R4-R7,pc}
.endfunc // sub_801D048

.func
.thumb_func
sub_801D12A:
	add r4, r0, #0
	mov R7, LR
	bl sub_8000C5C
	add r2, r4, #0
	mov R6, #4
	sub r6, r6, r0
	ldr R1, dword_801D198 // =0xD1B9 
	mov R3, #2
loc_801D13C:
	mov R0, #0xF
	and R0, R2
	lsl r0, r0, #1
	add r0, r0, r1
	lsl r4, r0, #0x10
	lsr r2, r2, #4
	mov R0, #0xF
	and R0, R2
	lsl r0, r0, #1
	add r0, r0, r1
	orr R0, R4
	push {r0}
	lsr r2, r2, #4
	sub R3, #1
	bne loc_801D13C
	ldr R0, [SP]
	ldr R1, [SP,#4]
	ldr R2, dword_801D19C // =0x10001 
	sub r0, r0, r2
	sub r1, r1, r2
	push {r0,r1}
	lsl r6, r6, #3
	ldr R3, off_801D1A0 // =dword_801D1A4 
	ldr R2, [R3,R6]
	add R6, #4
	ldr R3, [R3,R6]
	mov R6, SP
	mov R1, #0
loc_801D174:
	ldr R0, [R6,R1]
	and R0, R2
	str R0, [R6,R1]
	add R1, #4
	ldr R0, [R6,R1]
	and R0, R3
	str R0, [R6,R1]
	add R1, #4
	cmp R1, #0x10
	bne loc_801D174
	mov PC, R7
	.balign 4, 0x00
off_801D18C: .word dword_801D190
dword_801D190: .word 0xD09DD09B, 0xD09ED09C
dword_801D198: .word 0xD1B9
dword_801D19C: .word 0x10001
off_801D1A0: .word dword_801D1A4
dword_801D1A4: .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF0000, 0xFFFFFFFF, 0x0
	.word 0xFFFFFFFF, 0x0
	.word 0xFFFF0000
off_801D1C4: .word byte_86F0374
off_801D1C8: .word byte_203C4E0
dword_801D1CC: .word 0x6009360
off_801D1D0: .word dword_86B7AE0
off_801D1D4: .word byte_2036840
.endfunc // sub_801D12A

.func
.thumb_func
sub_801D1D8:
	push {lr}
	ldr R3, off_801D27C // =unk_2036850 
	ldrb R0, [R3,#0x7] // (byte_2036857 - 0x2036850)
	sub R0, #1
	strb R0, [R3,#0x7] // (byte_2036857 - 0x2036850)
	bne locret_801D1F4
	mov R0, #1
	lsl r0, r0, #0x10
	bl sub_801BED6
	mov R0, #1
	lsl r0, r0, #0x10
	bl sub_801DACC
locret_801D1F4:
	pop {pc}
.endfunc // sub_801D1D8

.func
.thumb_func
sub_801D1F6:
	push {R4-R7,lr}
	ldr R7, off_801D27C // =unk_2036850 
	ldrb R0, [R7,#0x2] // (word_2036852 - 0x2036850)
	lsl r0, r0, #0x10
	ldrb R1, [R7,#0x3] // (word_2036852+1 - 0x2036850)
	add r1, r1, r0
	ldr R0, dword_801D280 // =0x8000 
	add r0, r0, r1
	ldr R1, dword_801D284 // =0xB394 
	mov R2, #0
	mov R3, #6
	mov R5, #8
	lsl r5, r5, #0x10
	ldrb R4, [R7,#0x9] // (byte_2036859 - 0x2036850)
loc_801D212:
	add r6, r0, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
.endfunc // sub_801D1F6

	add r0, r6, #0
	add r0, r0, r5
	add R1, #2
	sub R4, #1
	bne loc_801D212
	ldrb R1, [R7,#0xA]
	cmp R1, #0
	beq locret_801D27A
	mov R4, #4
	sub r4, r4, r1
	lsl r4, r4, #0x13
	ldr R6, dword_801D280 // =0x8000 
	sub r0, r0, r6
	sub r0, r0, r4
	ldr R6, dword_801D288 // =0x80004000 
	add r0, r0, r6
	ldr R1, dword_801D28C // =0xB3A4 
	add r6, r0, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r0, r6, #0
	mov r5, #0x20 
	lsl r5, r5, #0x10
	add r0, r0, r5
	ldrb R1, [R7,#0xB]
	cmp R1, #0
	beq loc_801D266
	mov R4, #4
	sub r4, r4, r1
	lsl r4, r4, #0x13
	sub r0, r0, r4
	ldr R1, dword_801D290 // =0xB3AC 
	add r6, r0, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r0, r6, #0
	mov r5, #0x20 
	lsl r5, r5, #0x10
	add r0, r0, r5
loc_801D266:
	ldrb R1, [R7,#0xC]
	cmp R1, #0
	beq locret_801D27A
	ldr R1, dword_801D298 // =0xC000C000 
	bic R0, R1
	ldr R1, dword_801D294 // =0x40000000 
	orr R0, R1
	ldr R1, dword_801D29C // =0xB390 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
locret_801D27A:
	pop {R4-R7,pc}
off_801D27C: .word unk_2036850
dword_801D280: .word 0x8000
dword_801D284: .word 0xB394
dword_801D288: .word 0x80004000
dword_801D28C: .word 0xB3A4
dword_801D290: .word 0xB3AC
dword_801D294: .word 0x40000000
dword_801D298: .word 0xC000C000
dword_801D29C: .word 0xB390
.func
.thumb_func
sub_801D2A0:
	push {lr}
	pop {pc}
.endfunc // sub_801D2A0

.func
.thumb_func
sub_801D2A4:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	push {r5}
	// j
	mov R0, #1
	// i
	mov R1, #0x12
	// cpyOff
	mov R2, #0
	// tileRefs
	ldr R3, off_801D340 // =dword_801D9B4 
	mov R4, #0x1C
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r5}
	ldr R0, [R5,#0x48]
	ldrb R0, [R0,#0x16]
	bl sub_802E066
	str R0, [SP]
	ldr R0, [R5,#0x48]
	ldrb R0, [R0,#0x16]
	bl sub_802E440
	mov R1, #0
	mov R2, #0
	ldr R3, [SP]
	bl sub_801D344
	ldr R0, [R5,#0x48]
	ldrb R0, [R0,#0x16]
	bl sub_802E44A
	ldr R1, off_801D330 // =0x280 
	ldr R2, off_801D334 // =0x200 
	ldr R3, [SP]
	bl sub_801D344
	ldr R0, [R5,#0x48]
	ldrb R0, [R0,#0x16]
	bl sub_802E454
	ldr R1, off_801D338 // =0x500 
	ldr R2, off_801D33C // =0x400 
	ldr R3, [SP]
	bl sub_801D344
	ldrb R0, [R5,#0x1A]
	cmp R0, #0
	beq loc_801D32A
	ldrh R0, [R5,#0x30]
	add R0, #1
	strh R0, [R5,#0x30]
	mov r1, #0x20 
	and R0, R1
	beq loc_801D32A
	push {r5}
	ldrb R0, [R5,#0x1A]
	sub R0, #1
	mov R1, #0xA
	mul R0, R1
	add R0, #1
	mov R1, #0x12
	mov R2, #0
	mov R3, #0
	mov R4, #9
	mov R5, #2
	bl sub_80018D0
	pop {r5}
loc_801D32A:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	.byte 0, 0
off_801D330: .word 0x280
off_801D334: .word 0x200
off_801D338: .word 0x500
off_801D33C: .word 0x400
off_801D340: .word dword_801D9B4
.endfunc // sub_801D2A4

.func
.thumb_func
sub_801D344:
	push {R4-R7,lr}
	sub sp, sp, #0x10
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	str R3, [SP,#0xC]
	ldr R1, dword_801D3E4 // =0x1FF 
	cmp R0, R1
	bne loc_801D36C
	ldr R1, dword_801D3D0 // =0x600C940 
	ldr R2, [SP,#4]
	add r1, r1, r2
	mov R3, #0xA
	bl sub_801D3F8
	ldr R0, off_801D3F4 // =byte_86F0300 
	mov R1, #0x1C
	b loc_801D3A2
loc_801D36C:
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R3, [R0,#7]
	cmp R3, #2
	ble loc_801D378
	mov R3, #0
loc_801D378:
	lsl r3, r3, #2
	ldr R0, off_801D3BC // =off_801D3C0 
	ldr R0, [R0,R3]
	ldr R1, off_801D3D4 // =off_801D3D8 
	ldr R1, [R1,R3]
	ldr R2, [SP,#0xC]
	cmp R2, R1
	bge loc_801D390
	mov r1, #0x20 
	mov R2, #0x14
	mul R1, R2
	add r0, r0, r1
loc_801D390:
	ldr R1, dword_801D3D0 // =0x600C940 
	ldr R2, [SP,#4]
	add r1, r1, r2
	ldr R2, off_801D3CC // =0x280 
	bl loc_8000AC8
	ldr R0, [SP]
	bl sub_8027D10
loc_801D3A2:
	ldr R2, off_801D3E8 // =unk_203A380 
	ldr R3, dword_801D3EC // =0x600D0C0 
	ldr R4, [SP,#8]
	add r2, r2, r4
	add r3, r3, r4
	mov R4, #8
	mov R5, #1
	ldr R6, off_801D3F0 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
.endfunc // sub_801D344

	add sp, sp, #0x10
	pop {R4-R7,pc}
off_801D3BC: .word off_801D3C0
off_801D3C0: .word dword_86E9A2C
	.word dword_86E9F2C
	.word byte_86EA42C
off_801D3CC: .word 0x280
dword_801D3D0: .word 0x600C940
off_801D3D4: .word off_801D3D8
off_801D3D8: .word 0x1500
	.word 0x2A00
	.word 0x4000
dword_801D3E4: .word 0x1FF
off_801D3E8: .word unk_203A380
dword_801D3EC: .word 0x600D0C0
off_801D3F0: .word dword_86B7AE0
off_801D3F4: .word byte_86F0300
.func
.thumb_func
sub_801D3F8:
	push {R0-R4,lr}
	ldr R0, off_801D40C // =dword_801D410 
	add r4, r3, #0
	mov r2, #0x40 
loc_801D400:
	bl loc_8000AC8
.endfunc // sub_801D3F8

	add r1, r1, r2
	sub R4, #1
	bne loc_801D400
	pop {R0-R4,pc}
off_801D40C: .word dword_801D410
dword_801D410: .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
.func
.thumb_func
sub_801D450:
	push {lr}
	bl battle_isPaused
	tst R0, R0
	bne locret_801D478
	bl battle_isTimeStop
	bne locret_801D478
	ldrh R0, [R5,#0x34]
	add R0, #1
	cmp R0, #6
	blt loc_801D476
	ldrh R1, [R5,#0x36]
	add R1, #1
	cmp R1, #6
	blt loc_801D472
	mov R1, #0
loc_801D472:
	strh R1, [R5,#0x36]
	mov R0, #0
loc_801D476:
	strh R0, [R5,#0x34]
locret_801D478:
	pop {pc}
.endfunc // sub_801D450

.func
.thumb_func
sub_801D47A:
	push {R4-R6,lr}
	ldrh R0, [R5,#0x36]
	mov R1, #1
	and R1, R0
	ldr R2, off_801D508 // =0x40 
	mul R1, R2
	ldr R0, off_801D500 // =dword_86E98CC 
	add r0, r0, r1
	ldr R1, dword_801D504 // =0x6017900 
	bl loc_8000AC8
.endfunc // sub_801D47A

	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	bl sub_802E070
	ldrh R1, [R0,#0x3E]
	mov r4, #0x50 
	mul R4, R1
	lsl r4, r4, #0x10
	ldrh R1, [R5,#0x36]
	cmp R1, #3
	blt loc_801D4AA
	sub R1, #3
loc_801D4AA:
	ldr R0, off_801D50C // =loc_801D510 
	ldrb R0, [R0,R1]
	mov R2, #3
	mov R3, #0
	ldr R1, dword_801D4F0 // =0x80044080 
	add r0, r0, r1
	add r0, r0, r4
	mov R1, #0x14
	lsl r1, r1, #0x10
	add r0, r0, r1
	ldr R1, dword_801D4F4 // =0xC3C0 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov R2, #3
	mov R3, #0
	ldr R0, dword_801D4F8 // =0x8090 
	add r0, r0, r4
	ldr R1, dword_801D4FC // =0xC3C8 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov R2, #3
	mov R3, #0
	ldr R0, dword_801D4F8 // =0x8090 
	add r0, r0, r4
	mov r1, #0x48 
	lsl r1, r1, #0x10
	add r0, r0, r1
	mov R1, #1
	lsl r1, r1, #0x1c
	orr R0, R1
	ldr R1, dword_801D4FC // =0xC3C8 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {R4-R6,pc}
	.byte 0, 0
dword_801D4F0: .word 0x80044080
dword_801D4F4: .word 0xC3C0
dword_801D4F8: .word 0x8090
dword_801D4FC: .word 0xC3C8
off_801D500: .word dword_86E98CC
dword_801D504: .word 0x6017900
off_801D508: .word 0x40
off_801D50C: .word loc_801D510
loc_801D510:
	lsl r0, r0, #0xc
	// <mkdata>
	.hword 0x1 // MOV R1, R0
.func
.thumb_func
sub_801D514:
	push {lr}
	ldrh R0, [R5,#0x32]
	sub R0, #1
	strh R0, [R5,#0x32]
	bne loc_801D526
	ldr R0, dword_801D544 // =0x100000 
	bl sub_801BED6
	b loc_801D53A
loc_801D526:
	mov R1, #0xF
	and R1, R0
	bne locret_801D540
	mov R1, #0x10
	tst R1, R0
	beq loc_801D53A
	ldr R0, dword_801D544 // =0x100000 
	bl sub_801DA48
	b locret_801D540
loc_801D53A:
	ldr R0, dword_801D544 // =0x100000 
	bl sub_801DACC
locret_801D540:
	pop {pc}
	.balign 4, 0x00
dword_801D544: .word 0x100000
.endfunc // sub_801D514

.func
.thumb_func
sub_801D548:
	push {lr}
	ldrb R0, [R5,#0x1B]
	sub R0, #1
	strb R0, [R5,#0x1B]
	bne locret_801D562
	mov R0, #1
	lsl r0, r0, #0x15
	bl sub_801BED6
	mov R0, #1
	lsl r0, r0, #0x15
	bl sub_801DACC
locret_801D562:
	pop {pc}
.endfunc // sub_801D548

.func
.thumb_func
sub_801D564:
	push {R4-R7,lr}
	ldr R0, dword_801D580 // =0x406C0000 
	ldr R1, dword_801D584 // =0xD368 
	mov R2, #0
	mov R3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
.endfunc // sub_801D564

	ldr R0, dword_801D588 // =0x7C8000 
	ldr R1, dword_801D58C // =0xD36C 
	mov R2, #0
	mov R3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {R4-R7,pc}
dword_801D580: .word 0x406C0000
dword_801D584: .word 0xD368
dword_801D588: .word 0x7C8000
dword_801D58C: .word 0xD36C
.func
.thumb_func
sub_801D590:
	push {r4,r6,r7,lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	bl sub_802E070
	ldrh R1, [R0,#0x36]
	cmp R1, #0
	bne loc_801D5AC
	ldrh R1, [R0,#0x38]
	cmp R1, #0
	beq locret_801D618
	ldr R0, off_801D630 // =dword_86E960C 
	b loc_801D5BA
loc_801D5AC:
	ldr R0, off_801D62C // =dword_86E958C 
	push {r1}
	ldr R1, dword_801D638 // =0x6017680 
	mov R2, #0x80
	bl loc_8000AC8
	b loc_801D5CE
loc_801D5BA:
	push {r1}
	ldr R1, dword_801D638 // =0x6017680 
	mov r2, #0x60 
	bl loc_8000AC8
	ldr R0, off_801D650 // =dword_86A5D60 
	ldr R1, dword_801D63C // =0x60176E0 
	mov r2, #0x20 
	bl loc_8000AC8
loc_801D5CE:
	ldr R0, off_801D654 // =dword_86E966C 
	ldr R1, dword_801D640 // =0x6017700 
	mov r2, #0x20 
	bl loc_8000AC8
	mov R4, #0
	pop {r0}
	bl sub_8000C00
	mov R7, #0xF
	and R7, R0
	lsr r0, r0, #4
	mov R6, #0xF
	and R6, R0
	lsr r0, r0, #4
	ldr R1, dword_801D644 // =0x6017720 
	cmp R0, #0
	beq loc_801D5FA
	add R4, #1
	bl sub_801D61A
	add r1, #0x20 
loc_801D5FA:
	add r0, r6, #0
	bl sub_801D61A
	add r1, #0x20 
	add r0, r7, #0
	bl sub_801D61A
	add r1, #0x20 
	cmp R4, #0
	bne locret_801D618
	ldr R0, off_801D650 // =dword_86A5D60 
	ldr R1, dword_801D64C // =0x6017760 
	mov r2, #0x20 
	bl loc_8000AC8
locret_801D618:
	pop {r4,r6,r7,pc}
.endfunc // sub_801D590

.func
.thumb_func
sub_801D61A:
	push {r1,lr}
	mov r2, #0x20 
	mul R0, R2
	ldr R3, off_801D634 // =off_86E968C 
	add r0, r0, r3
	bl loc_8000AC8
.endfunc // sub_801D61A

	pop {r1,pc}
	.balign 4, 0x00
off_801D62C: .word dword_86E958C
off_801D630: .word dword_86E960C
off_801D634: .word off_86E968C
dword_801D638: .word 0x6017680
dword_801D63C: .word 0x60176E0
dword_801D640: .word 0x6017700
dword_801D644: .word 0x6017720
	.word 0x6017740
dword_801D64C: .word 0x6017760
off_801D650: .word dword_86A5D60
off_801D654: .word dword_86E966C
	.word off_86E968C
.func
.thumb_func
sub_801D65C:
	push {R4-R7,lr}
	ldr R0, [R5,#0x48]
	ldrb R0, [R0,#0x16]
	bl sub_8010018
	ldrb R1, [R0]
	add R1, #1
	lsl r1, r1, #1
	ldrh R0, [R0,R1]
	ldr R1, dword_801D6D4 // =0xFFFF 
	cmp R0, R1
	bne locret_801D6C8
	ldr R0, [R5,#0x48]
	ldrb R0, [R0,#0x16]
	bl sub_802E070
	ldrh R1, [R0,#0x36]
	cmp R1, #0
	bne loc_801D688
	ldrh R1, [R0,#0x38]
	cmp R1, #0
	beq locret_801D6C8
loc_801D688:
	ldr R1, [R5,#0x48]
	mov r0, #0x34 
	add r0, r0, r1
	bl sub_800362C
	cmp R2, #0
	beq locret_801D6C8
	bl sub_801D6D8
	mov R2, #0xFF
	add r2, r2, r2
	add R2, #1
	and R0, R2
	lsl r0, r0, #0x10
	mov R2, #0xFF
	and R1, R2
	add r6, r0, r1
	ldr R1, dword_801D6D0 // =0xC7B4 
	ldr R0, dword_801D6CC // =0x40004000 
	add r0, r0, r6
	mov R2, #2
	mov R3, #0
	push {r0,r1}
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r0,r1}
	add R0, #9
	add R1, #4
	mov R2, #2
	mov R3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
locret_801D6C8:
	pop {R4-R7,pc}
	.balign 4, 0x00
dword_801D6CC: .word 0x40004000
dword_801D6D0: .word 0xC7B4
dword_801D6D4: .word 0xFFFF
.endfunc // sub_801D65C

.func
.thumb_func
sub_801D6D8:
	push {lr}
	push {r0,r1}
	ldr R0, [R5,#0x48]
	ldrb R0, [R0,#0x16]
	mov r1, #0x29 
	bl sub_80136CC
	add r0, r0, r0
	ldr R3, off_801D6FC // =loc_801D700 
	add r3, r3, r0
	pop {r0,r1}
	mov R2, #0
	ldrsb R2, [R3,R2]
	add r0, r0, r2
	mov R2, #1
	ldrsb R2, [R3,R2]
	add r1, r1, r2
	pop {pc}
off_801D6FC: .word loc_801D700
.endfunc // sub_801D6D8

loc_801D700:
	ldmia R1!, {R3-R7}
	pop {R3-R7,pc}
	.byte 0xF8, 0xC5, 0xF4, 0xAC, 0x0, 0xC0, 0xFB, 0xB8, 0xFC
	.byte 0xB8, 0xFF, 0xC2, 0xFB, 0xBA, 0xF7, 0xB1, 0xFC, 0xC4
	.byte 0xFA, 0xC4, 0xF7, 0xB3
.func
.thumb_func
sub_801D71A:
	push {r4,r7,lr}
	mov R0, #0x90
	mov R7, R10
	ldr R7, [R7,#0x18]
	add r7, r7, r0
	ldr R7, [R7]
	tst R7, R7
	beq locret_801D790
	ldrh R1, [R7,#0x24]
	mov r3, #0x50 
	ldrh R3, [R5,R3]
	cmp R1, R3
	beq loc_801D770
	bgt loc_801D74E
	mov R0, #2
	mov r4, #0x52 
	strb R0, [R5,R4]
	add r2, r3, #0
	sub r2, r2, r1
	asr r2, r2, #3
	add R2, #4
	sub r3, r3, r2
	cmp R3, R1
	bge loc_801D764
	add r3, r1, #0
	b loc_801D764
loc_801D74E:
	mov R0, #1
	mov r4, #0x52 
	strb R0, [R5,R4]
	add r2, r1, #0
	sub r2, r2, r3
	asr r2, r2, #3
	add R2, #4
	add r3, r3, r2
	cmp R3, R1
	ble loc_801D764
	add r3, r1, #0
loc_801D764:
	mov r4, #0x50 
	strh R3, [R5,R4]
	mov R0, #0xF
	mov r4, #0x54 
	strb R0, [R5,R4]
	pop {r4,r7,pc}
loc_801D770:
	mov r4, #0x54 
	ldrb R0, [R5,R4]
	cmp R0, #0
	beq loc_801D780
	sub R0, #1
	mov r4, #0x54 
	strb R0, [R5,R4]
	bne locret_801D790
loc_801D780:
	mov R0, #2
	ldrh R2, [R7,#0x26]
	lsr r2, r2, #2
	cmp R1, R2
	ble loc_801D78C
	mov R0, #0
loc_801D78C:
	mov r4, #0x52 
	strb R0, [R5,R4]
locret_801D790:
	pop {r4,r7,pc}
.endfunc // sub_801D71A

.func
.thumb_func
sub_801D792:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	mov R6, SP
	mov r4, #0x50 
	ldrh R0, [R5,R4]
	bl sub_8000C00
	add r2, r0, #0
	bl sub_8000C5C
	lsl r0, r0, #2
	ldr R1, dword_801D810 // =0xAAAA 
	lsl R1, R0
	orr R2, R1
	push {r5}
	ldr R5, dword_801D80C // =0xC1A0 
	add r1, r6, #0
	add R1, #8
	mov R3, #6
loc_801D7B8:
	mov R0, #0xF
	and R0, R2
	lsl r0, r0, #1
	add r0, r0, r5
	strh R0, [R6,R3]
	add R0, #1
	strh R0, [R1,R3]
	lsr r2, r2, #4
	sub R3, #2
	bpl loc_801D7B8
	ldr R5, [SP]
	mov R0, #0x18
	// j
	add R0, #1
	// i
	mov R1, #0
	// cpyOff
	mov R2, #3
	// tileRefs
	add r3, r6, #0
	mov R4, #4
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r5}
	mov r4, #0x52 
	ldrb R0, [R5,R4]
	lsl r0, r0, #5
	ldr R3, off_801D7FC // =off_801D800 
	ldr R1, [R3]
	add r0, r0, r1
	ldr R1, [R3,#0x4] // (off_801D804 - 0x801D800)
	ldr R2, [R3,#0x8] // (dword_801D808 - 0x801D800)
	bl loc_8000AC8
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
off_801D7FC: .word off_801D800
off_801D800: .word dword_86E1C78
off_801D804: .word unk_3001AE0
dword_801D808: .word 0x20
dword_801D80C: .word 0xC1A0
dword_801D810: .word 0xAAAA
.endfunc // sub_801D792

.func
.thumb_func
sub_801D814:
	push {r4,lr}
	mov R4, #0
	bl sub_802D234
	cmp R0, #1
	beq loc_801D84A
	cmp R0, #5
	beq loc_801D848
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_801D84A
	bl sub_802E09A
	bne loc_801D84A
	bl get_802D246 // () -> int
	ldr R1, dword_801D850 // =0x200000 
	tst R0, R1
	bne loc_801D84A
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0xE0
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_801D84A
loc_801D848:
	mov R4, #1
loc_801D84A:
	add r0, r4, #0
	pop {r4,pc}
	.byte 0, 0
dword_801D850: .word 0x200000
off_801D854: .word dword_86E0AB8
	.word dword_86E0AF8
	.word dword_86E0B38
	.word dword_86E0B78
	.word dword_86E0BB8
	.word dword_86E0BF8
	.word dword_86E0C38
	.word dword_86E0C78
	.word dword_86E0CB8
	.word dword_86E0CF8
	.word dword_86B7AE0
off_801D880: .word dword_86E0D38
	.word dword_86E0D78
	.word dword_86E0DB8
	.word dword_86E0DF8
	.word dword_86E0E38
	.word dword_86E0E78
	.word dword_86E0EB8
	.word dword_86E0EF8
	.word dword_86E0F38
	.word dword_86E0F78
	.word dword_86B7AE0
off_801D8AC: .word dword_86E0FB8
	.word dword_86E0FF8
	.word dword_86E1038
	.word dword_86E1078
	.word dword_86E10B8
	.word dword_86E10F8
	.word dword_86E1138
	.word dword_86E1178
	.word dword_86E11B8
	.word dword_86E11F8
	.word dword_86B7AE0
off_801D8D8: .word dword_86B7B20
	.word dword_86B7B60
	.word dword_86B7BA0
	.word dword_86B7BE0
	.word dword_86B7C20
	.word dword_86B7C60
	.word dword_86B7CA0
	.word dword_86B7CE0
	.word dword_86B7D20
	.word dword_86B7D60
	.word dword_86B7AE0
dword_801D904: .word 0xD24ED24C, 0xD24AD250, 0x0
	.word 0xD254D252, 0xD24AD256, 0xD24FD24D, 0xD24BD251, 0x0
	.word 0xD255D253, 0xD24BD257
off_801D92C: .word dword_86F2E00
	.word dword_86F2E20
	.word dword_86F2E40
	.word dword_86F2E14
	.word dword_86F2E34
	.word dword_86F2E54
dword_801D944: .word 0xD25AD258, 0xD25ED25C, 0xD262D260, 0xD266D264
byte_801D954: .byte 0x59, 0xD2, 0x5B, 0xD2, 0x5D, 0xD2, 0x5F, 0xD2, 0x61
	.byte 0xD2, 0x63, 0xD2, 0x65, 0xD2, 0x67, 0xD2
byte_801D964: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xCC
	.byte 0xD1, 0xCC, 0xD1, 0xCC, 0xD1, 0xCC, 0xD1, 0xCD, 0xD1, 0xCD, 0xD1, 0xCD, 0xD1, 0xCD, 0xD1
dword_801D984: .word 0xA0ACA0AB, 0xA0AEA0AD, 0xA0B0A0AF, 0xA0B2A0B1, 0xA0B4A0B3
	.word 0xA0B6A0B5, 0xA0B8A0B7, 0xA0BAA0B9, 0xA0BCA0BB, 0xA0BEA0BD
	.word 0xA0C0A0BF, 0xA0C2A0C1
dword_801D9B4: .word 0xD288D286, 0xD28CD28A, 0xD290D28E, 0xD294D292, 0x0
	.word 0xD298D296, 0xD29CD29A, 0xD2A0D29E, 0xD2A4D2A2, 0x0
	.word 0xD2A8D2A6, 0xD2ACD2AA, 0xD2B0D2AE, 0xD2B4D2B2, 0xD289D287
	.word 0xD28DD28B, 0xD291D28F, 0xD295D293, 0x0
	.word 0xD299D297, 0xD29DD29B, 0xD2A1D29F, 0xD2A5D2A3, 0x0
	.word 0xD2A9D2A7, 0xD2ADD2AB, 0xD2B1D2AF, 0xD2B5D2B3
.endfunc // sub_801D814

.func
.thumb_func
sub_801DA24:
	push {lr}
	mov R1, R10
	ldr R1, [R1,#8]
	ldr R0, dword_801DA44 // =0x1F09 
	strh R0, [R1,#0xA]
	// dataList
	ldr R0, off_801DA40 // =off_801ECB4 
	bl decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
	bl sub_80103EC
	ldr R1, off_801DB50 // =byte_2035280 
	str R0, [R1,#0x48] // (dword_20352C8 - 0x2035280)
	pop {pc}
	.byte 0, 0
off_801DA40: .word off_801ECB4
dword_801DA44: .word 0x1F09
.endfunc // sub_801DA24

.func
.thumb_func
sub_801DA48:
	push {R5-R7,lr}
	ldr R5, off_801DB50 // =byte_2035280 
	ldr R6, off_801DA68 // =off_801DA6C 
	add r7, r0, #0
loc_801DA50:
	lsr r7, r7, #1
	bcs loc_801DA5A
	beq locret_801DA64
	add R6, #4
	b loc_801DA50
loc_801DA5A:
	ldr R0, [R6]
	mov LR, PC
	bx r0
	add R6, #4
	b loc_801DA50
locret_801DA64:
	pop {R5-R7,pc}
	.balign 4, 0x00
off_801DA68: .word off_801DA6C
off_801DA6C: .word sub_801DB60+1
	.word sub_801DB78+1
	.word sub_801DC6E+1
	.word sub_801DD7C+1
	.word sub_801DDF6+1
	.word sub_801DE3C+1
	.word sub_801E006+1
	.word sub_801E03E+1
	.word sub_801E1E4+1
	.word sub_801E144+1
	.word sub_801E10E+1
	.word sub_801E376+1
	.word sub_801E468+1
	.word sub_801E4F4+1
	.word sub_801E5EC+1
	.word sub_801E748+1
	.word sub_801EB0C+1
	.word sub_801DE82+1
	.word sub_801EB7C+1
	.word sub_801EBDE+1
	.word sub_801E3E4+1
	.word sub_801EC38+1
	.word sub_801EC90+1
	.word sub_801E07C+1
.endfunc // sub_801DA48

.func
.thumb_func
sub_801DACC:
	push {R5-R7,lr}
	ldr R5, off_801DB50 // =byte_2035280 
	ldr R6, off_801DAEC // =off_801DAF0 
	ldr R7, [R5,#0x44] // (dword_20352C4 - 0x2035280)
	and R7, R0
loc_801DAD6:
	lsr r7, r7, #1
	bcs loc_801DAE0
	beq locret_801DAEA
	add R6, #4
	b loc_801DAD6
loc_801DAE0:
	ldr R0, [R6]
	mov LR, PC
	bx r0
	add R6, #4
	b loc_801DAD6
locret_801DAEA:
	pop {R5-R7,pc}
off_801DAEC: .word off_801DAF0
off_801DAF0: .word sub_801DB54+1
	.word sub_801DB6C+1
	.word sub_801DC60+1
	.word sub_801DD60+1
	.word sub_801DDD8+1
	.word sub_801DE1E+1
	.word sub_801DFEA+1
	.word sub_801E022+1
	.word sub_801E1A4+1
	.word sub_801E138+1
	.word sub_801E0DC+1
	.word sub_801E35A+1
	.word sub_801E44C+1
	.word sub_801E4B0+1
	.word sub_801E5E0+1
	.word sub_801E73C+1
	.word sub_801EB00+1
	.word sub_801DE64+1
	.word sub_801EB50+1
	.word sub_801EBD2+1
	.word sub_801E3C4+1
	.word sub_801EC2C+1
	.word sub_801EC84+1
	.word sub_801E060+1
off_801DB50: .word byte_2035280
.endfunc // sub_801DACC

.func
.thumb_func
sub_801DB54:
	push {lr}
	mov R0, #1
	// <mkdata>
	.hword 0x0 // MOV R0, R0
	bl sub_801BEC2
	pop {pc}
.endfunc // sub_801DB54

.func
.thumb_func
sub_801DB60:
	push {lr}
	mov R0, #1
	// <mkdata>
	.hword 0x0 // MOV R0, R0
	bl sub_801BEB8
	pop {pc}
.endfunc // sub_801DB60

.func
.thumb_func
sub_801DB6C:
	push {lr}
	mov R0, #1
	lsl r0, r0, #1
	bl sub_801BEC2
	pop {pc}
.endfunc // sub_801DB6C

.func
.thumb_func
sub_801DB78:
	push {lr}
	mov R0, #1
	lsl r0, r0, #1
	bl sub_801BEB8
	pop {pc}
.endfunc // sub_801DB78

.func
.thumb_func
sub_801DB84:
	push {r4,r6,r7,lr}
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	ldr R4, off_801DC5C // =dword_20352E0 
	mov R3, #6
loc_801DB90:
	ldrb R2, [R4]
	cmp R2, #0
	beq loc_801DB9C
	ldr R1, [R4,#4]
	cmp R1, R5
	beq locret_801DBD2
loc_801DB9C:
	add R4, #8
	sub R3, #1
	bne loc_801DB90
	ldr R4, off_801DC5C // =dword_20352E0 
	mov R3, #6
loc_801DBA6:
	ldrb R2, [R4]
	cmp R2, #0
	beq loc_801DBB6
	add R4, #8
	sub R3, #1
	bne loc_801DBA6
	mov R0, #1
	b locret_801DBD2
loc_801DBB6:
	strb R0, [R4,#3]
	ldrh R0, [R5,#0x28]
	mov R1, #3
	ldrb R2, [R5,#0x16]
	ldrb R3, [R5,#0x17]
	bl sub_8018810
	neg R1, R1
	sub R1, #8
	strb R0, [R4,#1]
	strb R1, [R4,#2]
	str R5, [R4,#4]
	mov R0, #1
	strb R0, [R4]
locret_801DBD2:
	pop {r4,r6,r7,pc}
.endfunc // sub_801DB84

.func
.thumb_func
sub_801DBD4:
	push {r4,r6,r7,lr}
	ldr R4, off_801DC5C // =dword_20352E0 
	mov R3, #6
loc_801DBDA:
	ldrb R2, [R4]
	cmp R2, #0
	beq loc_801DBE6
	ldr R0, [R4,#4]
	cmp R0, R5
	beq loc_801DBF0
loc_801DBE6:
	add R4, #8
	sub R3, #1
	bne loc_801DBDA
	mov R0, #1
	b locret_801DC04
loc_801DBF0:
	ldrh R0, [R5,#0x28]
	mov R1, #3
	ldrb R2, [R5,#0x16]
	ldrb R3, [R5,#0x17]
	bl sub_8018810
	neg R1, R1
	sub R1, #8
	strb R0, [R4,#1]
	strb R1, [R4,#2]
locret_801DC04:
	pop {r4,r6,r7,pc}
.endfunc // sub_801DBD4

.func
.thumb_func
sub_801DC06:
	push {r4,r6,r7,lr}
	sub sp, sp, #8
	str R0, [SP]
	str R1, [SP,#4]
	ldr R4, off_801DC5C // =dword_20352E0 
	mov R3, #6
loc_801DC12:
	ldrb R2, [R4]
	cmp R2, #0
	beq loc_801DC1E
	ldr R0, [R4,#4]
	cmp R0, R5
	beq loc_801DC28
loc_801DC1E:
	add R4, #8
	sub R3, #1
	bne loc_801DC12
	mov R0, #1
	b loc_801DC32
loc_801DC28:
	ldr R0, [SP]
	ldr R1, [SP,#4]
	sub R1, #8
	strb R0, [R4,#1]
	strb R1, [R4,#2]
loc_801DC32:
	add sp, sp, #8
	pop {r4,r6,r7,pc}
.endfunc // sub_801DC06

.func
.thumb_func
sub_801DC36:
	push {r4,r6,r7,lr}
	ldr R4, off_801DC5C // =dword_20352E0 
	mov R3, #6
loc_801DC3C:
	ldrb R2, [R4]
	cmp R2, #0
	beq loc_801DC48
	ldr R0, [R4,#4]
	cmp R0, R5
	beq loc_801DC52
loc_801DC48:
	add R4, #8
	sub R3, #1
	bne loc_801DC3C
	mov R0, #1
	b locret_801DC58
loc_801DC52:
	mov R0, #0
	str R0, [R4]
	str R0, [R4,#4]
locret_801DC58:
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
off_801DC5C: .word dword_20352E0
.endfunc // sub_801DC36

.func
.thumb_func
sub_801DC60:
	push {lr}
	mov R0, #1
	mov R1, #2
	lsl R0, R1
	bl sub_801BEC2
	pop {pc}
.endfunc // sub_801DC60

.func
.thumb_func
sub_801DC6E:
	push {lr}
	mov R0, #1
	mov R1, #2
	lsl R0, R1
	bl sub_801BEB8
	pop {pc}
.endfunc // sub_801DC6E

.func
.thumb_func
sub_801DC7C:
	push {r4,r6,r7,lr}
	ldr R6, off_801DD58 // =byte_203EB50 
	mov R3, #4
loc_801DC82:
	ldrb R2, [R6]
	cmp R2, #0
	beq loc_801DC98
	ldr R2, [R6,#0xC]
	cmp R2, R5
	beq loc_801DC94
	add R6, #0x14
	sub R3, #1
	bne loc_801DC82
loc_801DC94:
	mov R0, #1
	b locret_801DCCA
loc_801DC98:
	ldrh R2, [R5,#0x28]
	strh R2, [R6,#6]
	mov R3, #3
	cmp R2, #0xEB
	beq loc_801DCAA
	cmp r2, #0x49 
	blt loc_801DCAC
	cmp r2, #0x4e 
	bgt loc_801DCAC
loc_801DCAA:
	mov R3, #0x1B
loc_801DCAC:
	strb R3, [R6]
	strb R0, [R6,#4]
	strb R1, [R6,#5]
	ldrh R2, [R5,#0x24]
	strh R2, [R6,#2]
	ldr R0, dword_801DD5C // =0xB0B0B0B 
	str R0, [R6,#0x10]
	str R5, [R6,#0xC]
	mov R0, #0
	strb R0, [R6,#8]
	strb R0, [R6,#9]
	mov R0, #4
	bl sub_801BECC
	mov R0, #0
locret_801DCCA:
	pop {r4,r6,r7,pc}
.endfunc // sub_801DC7C

.func
.thumb_func
sub_801DCCC:
	sub sp, sp, #8
	str R0, [SP]
	str R1, [SP,#4]
	ldr R2, off_801DD58 // =byte_203EB50 
	mov R3, #4
	mov R1, #1
loc_801DCD8:
	ldrb R0, [R2]
	tst R0, R1
	beq loc_801DCF0
	ldr R0, [R2,#0xC]
	cmp R0, R5
	bne loc_801DCF0
	ldr R0, [SP]
	strb R0, [R2,#4]
	ldr R0, [SP,#4]
	strb R0, [R2,#5]
	mov R0, #0
	b loc_801DCF8
loc_801DCF0:
	add R2, #0x14
	sub R3, #1
	bne loc_801DCD8
	mov R0, #1
loc_801DCF8:
	add sp, sp, #8
	mov PC, LR
.endfunc // sub_801DCCC

	sub sp, sp, #8
	str R0, [SP]
	str R1, [SP,#4]
	ldr R2, off_801DD58 // =byte_203EB50 
	mov R3, #4
	mov R1, #1
loc_801DD08:
	ldrb R0, [R2]
	tst R0, R1
	beq loc_801DD28
	ldr R0, [R2,#0xC]
	cmp R0, R5
	bne loc_801DD28
	ldr R0, [SP]
	strb R0, [R2,#4]
	ldr R0, [SP,#4]
	strb R0, [R2,#5]
	ldrb R0, [R2]
	mov R1, #4
	orr R0, R1
	strb R0, [R2]
	mov R0, #0
	b loc_801DD30
loc_801DD28:
	add R2, #0x14
	sub R3, #1
	bne loc_801DD08
	mov R0, #1
loc_801DD30:
	add sp, sp, #8
	mov PC, LR
.func
.thumb_func
sub_801DD34:
	ldr R2, off_801DD58 // =byte_203EB50 
	mov R3, #4
	mov R1, #1
loc_801DD3A:
	ldrb R0, [R2]
	tst R0, R1
	beq loc_801DD4C
	ldr R0, [R2,#0xC]
	cmp R0, R5
	bne loc_801DD4C
	mov R0, #0
	strb R0, [R2]
	b locret_801DD54
loc_801DD4C:
	add R2, #0x14
	sub R3, #1
	bne loc_801DD3A
	mov R0, #1
locret_801DD54:
	mov PC, LR
	.balign 4, 0x00
off_801DD58: .word byte_203EB50
dword_801DD5C: .word 0xB0B0B0B
.endfunc // sub_801DD34

.func
.thumb_func
sub_801DD60:
	push {r4,r5,lr}
	mov R0, #1
	lsl r0, r0, #3
	bl sub_801BEC2
	mov R0, #0x11
	mov R1, #0x12
	mov R2, #0
	mov R3, #0
	mov R4, #0xC
	mov R5, #2
	bl sub_80018D0
.endfunc // sub_801DD60

	pop {r4,r5,pc}
.func
.thumb_func
sub_801DD7C:
	push {lr}
	mov R0, #1
	lsl r0, r0, #3
	bl sub_801BEB8
	pop {pc}
.endfunc // sub_801DD7C

	push {lr}
	ldr R0, off_801DDA0 // =off_801DDA4 
	bl decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
	mov R0, #8
	bl sub_801BECC
	mov R0, #8
	bl sub_801DA48
	pop {pc}
	.byte 0, 0
off_801DDA0: .word off_801DDA4
off_801DDA4: .word dword_86BA0A0
	.word 0x600C940
	.word 0x40
	.word dword_86F2E00
	.word 0x3001670
	.word 0x20
	.word byte_86F2D00
	.word 0x6016D00
	.word 0x80
	.word byte_86F2D80
	.word 0x6016D80
	.word 0x80
	.word 0x0
.func
.thumb_func
sub_801DDD8:
	push {r4,r5,lr}
	mov R0, #6
	mov R1, #0
	mov R2, #3
	mov R3, #0
	mov R4, #0x12
	mov R5, #2
	bl sub_80018D0
	mov R0, #1
	mov R1, #4
	lsl R0, R1
	bl sub_801BEC2
	pop {r4,r5,pc}
.endfunc // sub_801DDD8

.func
.thumb_func
sub_801DDF6:
	push {r4,r5,lr}
	ldr R0, off_801DEC4 // =dword_86E1C78 
	ldr R1, off_801DEC8 // =unk_3001A80 
	mov r2, #0x20 
	bl loc_8000AC8
	// j
	mov R0, #6
	// i
	mov R1, #0
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_801DEBC // =word_801ED6C 
	mov R4, #0x12
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov R0, #1
	mov R1, #4
	lsl R0, R1
	bl sub_801BEB8
	pop {r4,r5,pc}
.endfunc // sub_801DDF6

.func
.thumb_func
sub_801DE1E:
	push {r4,r5,lr}
	mov R0, #6
	mov R1, #0
	mov R2, #3
	mov R3, #0
	mov R4, #0x12
	mov R5, #2
	bl sub_80018D0
	mov R0, #1
	mov R1, #5
	lsl R0, R1
	bl sub_801BEC2
	pop {r4,r5,pc}
.endfunc // sub_801DE1E

.func
.thumb_func
sub_801DE3C:
	push {r4,r5,lr}
	ldr R0, off_801DEC4 // =dword_86E1C78 
	ldr R1, off_801DEC8 // =unk_3001A80 
	mov r2, #0x20 
	bl loc_8000AC8
	// j
	mov R0, #6
	// i
	mov R1, #0
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_801DEBC // =word_801ED6C 
	mov R4, #0x12
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov R0, #1
	mov R1, #5
	lsl R0, R1
	bl sub_801BEB8
	pop {r4,r5,pc}
.endfunc // sub_801DE3C

.func
.thumb_func
sub_801DE64:
	push {r4,r5,lr}
	mov R0, #6
	mov R1, #0
	mov R2, #3
	mov R3, #0
	mov R4, #0x12
	mov R5, #2
	bl sub_80018D0
	mov R0, #1
	mov R1, #0x11
	lsl R0, R1
	bl sub_801BEC2
	pop {r4,r5,pc}
.endfunc // sub_801DE64

.func
.thumb_func
sub_801DE82:
	push {r4,r5,lr}
	ldrb R0, [R5,#0x18]
	cmp R0, #0
	bne loc_801DE8C
	sub R0, #2
loc_801DE8C:
	mov r2, #0x20 
	sub R0, #1
	mul R0, R2
	ldr R1, off_801DECC // =byte_86E1CD8 
	add r0, r0, r1
	ldr R1, off_801DEC8 // =unk_3001A80 
	mov r2, #0x20 
	bl loc_8000AC8
	// j
	mov R0, #6
	// i
	mov R1, #0
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_801DEC0 // =word_801EDB4 
	mov R4, #0x12
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov R0, #1
	mov R1, #0x11
	lsl R0, R1
	bl sub_801BEB8
	pop {r4,r5,pc}
	.balign 4, 0x00
off_801DEBC: .word word_801ED6C
off_801DEC0: .word word_801EDB4
off_801DEC4: .word dword_86E1C78
off_801DEC8: .word unk_3001A80
off_801DECC: .word byte_86E1CD8
.endfunc // sub_801DE82

.func
.thumb_func
sub_801DED0:
	push {lr}
	bl sub_801DF92
	ldr R0, off_801DF6C // =dword_86E489C 
	ldr R1, dword_801DF70 // =0x600C440 
	ldr R2, off_801DF74 // =0x380 
	bl loc_8000AC8
	mov R0, #0x10
	bl sub_801BECC
	mov R0, #0x10
	bl sub_801DA48
	pop {pc}
.endfunc // sub_801DED0

.func
.thumb_func
sub_801DEEE:
	push {lr}
	bl sub_801DF92
	ldr R0, off_801DF6C // =dword_86E489C 
	ldr R1, dword_801DF70 // =0x600C440 
	ldr R2, off_801DF74 // =0x380 
	bl loc_8000AC8
	mov r0, #0x20 
	bl sub_801BECC
	mov r0, #0x20 
	bl sub_801DA48
	pop {pc}
.endfunc // sub_801DEEE

.func
.thumb_func
sub_801DF0C:
	push {lr}
	bl sub_801DF92
	// dataList
	ldr R0, off_801DF5C // =off_801DF60 
	bl decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
	mov R0, #1
	lsl r0, r0, #0x11
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #0x11
	bl sub_801DA48
	ldr R1, off_801E0D8 // =byte_2035280 
	mov R0, #0
	strb R0, [R1,#0x18] // (byte_2035298 - 0x2035280)
	strb R0, [R1,#0x19] // (byte_2035299 - 0x2035280)
	pop {pc}
.endfunc // sub_801DF0C

.func
.thumb_func
sub_801DF32:
	push {lr}
	bl sub_801DF92
	// dataList
	ldr R0, off_801DF5C // =off_801DF60 
	bl decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
	ldr R0, off_801DF80 // =dword_86E1C78 
	ldr R1, off_801DF84 // =byte_3001B00 
	ldr R2, dword_801DF88 // =0x20 
	bl loc_8000AC8
	mov R0, #1
	lsl r0, r0, #0x11
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #0x11
	bl sub_801DA48
	pop {pc}
	.balign 4, 0x00
off_801DF5C: .word off_801DF60
off_801DF60: .word dword_86E4C1C
	.word 0x600C7C0, 0x180
off_801DF6C: .word dword_86E489C
dword_801DF70: .word 0x600C440
off_801DF74: .word 0x380
	.word 0x0
	.word 0x1500
off_801DF80: .word dword_86E1C78
off_801DF84: .word byte_3001B00
dword_801DF88: .word 0x20
.endfunc // sub_801DF32

.func
.thumb_func
sub_801DF8C:
	ldr R1, off_801E0D8 // =byte_2035280 
	strh R0, [R1,#0x22] // (word_20352A2 - 0x2035280)
	mov PC, LR
.endfunc // sub_801DF8C

.func
.thumb_func
sub_801DF92:
	push {lr}
	ldr R1, off_801E0D8 // =byte_2035280 
	mov R0, #0
	strh R0, [R1,#0x20] // (word_20352A0 - 0x2035280)
	mov R0, #0x12
	bl battle_clearFlags
	pop {pc}
.endfunc // sub_801DF92

.func
.thumb_func
sub_801DFA2:
	push {r1,lr}
	ldr R1, dword_801DFB4 // =0x4000 
	cmp R0, R1
	ble loc_801DFAC
	add r0, r1, #0
loc_801DFAC:
	ldr R1, off_801E0D8 // =byte_2035280 
	strh R0, [R1,#0x20] // (word_20352A0 - 0x2035280)
	pop {r1,pc}
	.balign 4, 0x00
dword_801DFB4: .word 0x4000
.endfunc // sub_801DFA2

.func
.thumb_func
sub_801DFB8:
	push {lr}
	ldr R2, off_801E0D8 // =byte_2035280 
	ldrh R1, [R2,#0x20] // (word_20352A0 - 0x2035280)
	add r0, r0, r1
	ldr R1, dword_801DFCC // =0x4000 
	cmp R0, R1
	ble loc_801DFC8
	add r0, r1, #0
loc_801DFC8:
	strh R0, [R2,#0x20] // (word_20352A0 - 0x2035280)
	pop {pc}
dword_801DFCC: .word 0x4000
.endfunc // sub_801DFB8

	push {lr}
	ldr R2, off_801E0D8 // =byte_2035280 
	ldrh R1, [R2,#0x20] // (word_20352A0 - 0x2035280)
	sub r1, r1, r0
	bge loc_801DFDC
	mov R1, #0
loc_801DFDC:
	strh R1, [R2,#0x20] // (word_20352A0 - 0x2035280)
	pop {pc}
	.word 0x4000
.func
.thumb_func
sub_801DFE4:
	ldr R0, off_801E0D8 // =byte_2035280 
	ldrh R0, [R0,#0x20] // (word_20352A0 - 0x2035280)
	mov PC, LR
.endfunc // sub_801DFE4

.func
.thumb_func
sub_801DFEA:
	push {r4,r5,lr}
	mov R0, #0
	mov R1, #0x12
	mov R2, #3
	mov R3, #0
	mov R4, #0x11
	mov R5, #2
	bl sub_80018D0
.endfunc // sub_801DFEA

	mov R0, #1
	lsl r0, r0, #6
	bl sub_801BEC2
	pop {r4,r5,pc}
.func
.thumb_func
sub_801E006:
	push {lr}
	mov R0, #1
	lsl r0, r0, #6
	bl sub_801BEB8
	pop {pc}
.endfunc // sub_801E006

	push {r4,r6,r7,lr}
	mov r0, #0x40 
	bl sub_801BECC
	mov r0, #0x40 
	bl sub_801DA48
	pop {r4,r6,r7,pc}
.func
.thumb_func
sub_801E022:
	push {r4,r5,lr}
	ldrb R0, [R5,#1]
	ldrb R1, [R5,#2]
	mov R2, #3
	mov R3, #0
	mov R4, #6
	mov R5, #2
	bl sub_80018D0
.endfunc // sub_801E022

	mov R0, #1
	lsl r0, r0, #7
	bl sub_801BEC2
	pop {r4,r5,pc}
.func
.thumb_func
sub_801E03E:
	push {r4,r5,lr}
	ldr R3, off_801E0D8 // =byte_2035280 
	// j
	ldrb R0, [R3,#0x1] // (byte_2035281 - 0x2035280)
	// i
	ldrb R1, [R3,#0x2] // (byte_2035282 - 0x2035280)
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_801E05C // =dword_801EDFC 
	mov R4, #6
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov R0, #1
	lsl r0, r0, #7
	bl sub_801BEB8
	pop {r4,r5,pc}
off_801E05C: .word dword_801EDFC
.endfunc // sub_801E03E

.func
.thumb_func
sub_801E060:
	push {r4,r5,lr}
	mov R0, #0x18
	mov R1, #0
	mov R2, #3
	mov R3, #0
	mov R4, #6
	mov R5, #2
	bl sub_80018D0
.endfunc // sub_801E060

	mov R0, #1
	lsl r0, r0, #0x17
	bl sub_801BEC2
	pop {r4,r5,pc}
.func
.thumb_func
sub_801E07C:
	push {r4,r5,lr}
	ldr R3, off_801E0D8 // =byte_2035280 
	// j
	mov R0, #0x18
	// i
	mov R1, #0
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_801E09C // =dword_801EDFC 
	mov R4, #6
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov R0, #1
	lsl r0, r0, #0x17
	bl sub_801BEB8
	pop {r4,r5,pc}
	.balign 4, 0x00
off_801E09C: .word dword_801EDFC
.endfunc // sub_801E07C

.func
.thumb_func
sub_801E0A0:
	push {lr}
	ldr R3, off_801E0D8 // =byte_2035280 
	ldr R2, [R3,#0x48] // (dword_20352C8 - 0x2035280)
	ldrh R2, [R2,#0x24]
	strh R2, [R3,#0x24] // (word_20352A4 - 0x2035280)
	strb R0, [R3,#0x1] // (byte_2035281 - 0x2035280)
	strb R1, [R3,#0x2] // (byte_2035282 - 0x2035280)
	mov R0, #0x80
	bl sub_801BECC
	mov R0, #0x80
	bl sub_801DA48
	pop {pc}
.endfunc // sub_801E0A0

.func
.thumb_func
sub_801E0BC:
	push {lr}
	ldr R1, off_801E0D8 // =byte_2035280 
	ldr R0, [R1,#0x48] // (dword_20352C8 - 0x2035280)
	ldrh R0, [R0,#0x24]
	strh R0, [R1,#0x24] // (word_20352A4 - 0x2035280)
	pop {pc}
.endfunc // sub_801E0BC

.func
.thumb_func
sub_801E0C8:
	push {r5,lr}
	ldr R5, off_801E0D8 // =byte_2035280 
	strh R0, [R5,#0x26] // (word_20352A6 - 0x2035280)
	pop {r5,pc}
.endfunc // sub_801E0C8

.func
.thumb_func
sub_801E0D0:
	push {lr}
	ldr R3, off_801E0D8 // =byte_2035280 
	strb R0, [R3,#0x1C] // (byte_203529C - 0x2035280)
	pop {pc}
off_801E0D8: .word byte_2035280
.endfunc // sub_801E0D0

.func
.thumb_func
sub_801E0DC:
	push {r4,r5,lr}
	mov R0, #0xFF
	strb R0, [R5,#8]
	strb R0, [R5,#0xA]
	mov R0, #6
	mov R1, #2
	mov R2, #3
	mov R3, #0
	mov R4, #4
	mov R5, #2
	bl sub_80018D0
.endfunc // sub_801E0DC

	mov R0, #0x1A
	mov R1, #2
	mov R2, #3
	mov R3, #0
	mov R4, #4
	mov R5, #2
	bl sub_80018D0
	mov R0, #1
	lsl r0, r0, #0xa
	bl sub_801BEC2
	pop {r4,r5,pc}
.func
.thumb_func
sub_801E10E:
	push {lr}
	bl sub_802D234
	cmp R0, #6
	beq loc_801E122
	ldr R0, off_801E12C // =dword_86E1C78 
	ldr R1, off_801E130 // =unk_3001A80 
	mov r2, #0x20 
	bl loc_8000AC8
loc_801E122:
	mov R0, #1
	lsl r0, r0, #0xa
	bl sub_801BEB8
	pop {pc}
off_801E12C: .word dword_86E1C78
off_801E130: .word unk_3001A80
	.word dword_86E1C78
.endfunc // sub_801E10E

.func
.thumb_func
sub_801E138:
	push {lr}
	mov R0, #1
	lsl r0, r0, #9
	bl sub_801BEC2
	pop {pc}
.endfunc // sub_801E138

.func
.thumb_func
sub_801E144:
	push {lr}
	mov R0, #1
	lsl r0, r0, #9
	bl sub_801BEB8
	pop {pc}
	.word dword_86E1C78
	.word unk_3001A80
	.word dword_86E1C78
.endfunc // sub_801E144

.func
.thumb_func
sub_801E15C:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0x10
	bl sub_801BED6
	mov R0, #1
	lsl r0, r0, #0x10
	bl sub_801DACC
	// dataList
	ldr R0, off_801E184 // =off_801E188 
	bl decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
	mov R0, #1
	lsl r0, r0, #9
	bl sub_801DA48
	mov R0, #0x9F
	bl sound_play // () -> void
	pop {pc}
off_801E184: .word off_801E188
off_801E188: .word dword_86E611C
	.word 0x6016E00
	.word 0x140
	.word byte_86F2900
	.word 0x30016B0
	.word 0x20
	.word 0x0
.endfunc // sub_801E15C

.func
.thumb_func
sub_801E1A4:
	push {R4-R6,lr}
	mov R6, #6
	ldrb R0, [R5,#0xC]
	cmp R0, #2
	beq loc_801E1B0
	mov R6, #0
loc_801E1B0:
	mov R0, #7
	lsr r1, r6, #1
	add r0, r0, r1
	mov R1, #2
	mov R2, #3
	mov R3, #0
	mov R4, #0x11
	sub r4, r4, r6
	mov R5, #2
	bl sub_80018D0
.endfunc // sub_801E1A4

	mov R0, #1
	lsl r0, r0, #8
	bl sub_801BEC2
	bl battle_isBattleOver
	cmp R0, #1
	beq locret_801E1E2
	cmp R6, #0
	bne locret_801E1E2
	mov R0, #1
	lsl r0, r0, #0xa
	bl sub_801DA48
locret_801E1E2:
	pop {R4-R6,pc}
.func
.thumb_func
sub_801E1E4:
	push {R4-R6,lr}
	mov R6, #9
	ldrb R0, [R5,#0xC]
	cmp R0, #2
	beq loc_801E1F8
	mov R6, #0
	mov R0, #1
	lsl r0, r0, #0xa
	bl sub_801DACC
loc_801E1F8:
	mov R0, #7
	lsr r1, r6, #1
	// j
	add r0, r0, r1
	// i
	mov R1, #2
	// cpyOff
	mov R2, #3
	ldr R3, off_801E220 // =word_801EE14 
	cmp R6, #9
	bne loc_801E20A
	// tileRefs
	ldr R3, off_801E224 // =word_801EE58 
loc_801E20A:
	mov R4, #0x11
	sub r4, r4, r6
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801BEB8
	pop {R4-R6,pc}
	.byte 0, 0
off_801E220: .word word_801EE14
off_801E224: .word word_801EE58
.endfunc // sub_801E1E4

.func
.thumb_func
sub_801E228:
	push {R4-R7,lr}
	cmp R0, #2
	bne loc_801E230
	mov R0, #0x13
loc_801E230:
	add r7, r0, #0
	ldr R6, off_801E4AC // =byte_2035280 
	ldr R1, [R6,#0x40] // (dword_20352C0 - 0x2035280)
	mov R0, #1
	lsl r0, r0, #8
	tst R1, R0
	beq loc_801E242
	bl sub_801DACC
loc_801E242:
	mov r0, #0x3c 
	strb R0, [R6,#0xB] // (byte_203528B - 0x2035280)
	mov R0, #0
	strb R0, [R6,#0xC] // (byte_203528C - 0x2035280)
	ldr R0, off_801E438 // =byte_86F0374 
	add r1, r7, #0
	ldr R2, off_801E43C // =byte_203C4E0 
	ldr R3, dword_801E440 // =0x6009560 
	mov R4, #0x11
	mov R5, #1
	ldr R6, off_801E444 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
.endfunc // sub_801E228

	mov R0, #1
	lsl r0, r0, #8
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801DA48
	pop {R4-R7,pc}
.func
.thumb_func
sub_801E270:
	push {R4-R7,lr}
	ldr R6, off_801E4AC // =byte_2035280 
	ldr R0, [R6,#0x40] // (dword_20352C0 - 0x2035280)
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	beq loc_801E28C
	ldrb R0, [R6,#0xC] // (byte_203528C - 0x2035280)
	cmp R0, #0
	beq locret_801E2B8
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801DACC
loc_801E28C:
	mov r0, #0x3c 
	strb R0, [R6,#0xB] // (byte_203528B - 0x2035280)
	mov R0, #1
	strb R0, [R6,#0xC] // (byte_203528C - 0x2035280)
	ldr R0, off_801E438 // =byte_86F0374 
	mov R1, #0xE
	ldr R2, off_801E43C // =byte_203C4E0 
	ldr R3, dword_801E440 // =0x6009560 
	mov R4, #0x11
	mov R5, #1
	ldr R6, off_801E444 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801DA48
locret_801E2B8:
	pop {R4-R7,pc}
.endfunc // sub_801E270

.func
.thumb_func
sub_801E2BA:
	push {R4-R7,lr}
	push {r0}
	ldr R6, off_801E4AC // =byte_2035280 
	ldr R0, [R6,#0x40] // (dword_20352C0 - 0x2035280)
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	beq loc_801E2D8
	ldrb R0, [R6,#0xC] // (byte_203528C - 0x2035280)
	cmp R0, #0
	beq loc_801E312
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801DACC
loc_801E2D8:
	mov r0, #0x3c 
	strb R0, [R6,#0xB] // (byte_203528B - 0x2035280)
	mov R0, #2
	strb R0, [R6,#0xC] // (byte_203528C - 0x2035280)
	mov R1, R10
	ldr R1, [R1,#0x38]
	ldr R0, [SP]
	str R0, [R1,#8]
	mov R1, #0xF
	cmp R0, #0
	bne loc_801E2F0
	mov R1, #0x10
loc_801E2F0:
	ldr R0, off_801E438 // =byte_86F0374 
	ldr R2, off_801E43C // =byte_203C4E0 
	ldr R3, dword_801E440 // =0x6009560 
	mov R4, #0xA
	mov R5, #1
	ldr R6, off_801E444 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801DA48
loc_801E312:
	pop {r0}
	pop {R4-R7,pc}
	push {R4-R7,lr}
	ldr R6, off_801E4AC // =byte_2035280 
	ldr R0, [R6,#0x40] // (dword_20352C0 - 0x2035280)
	mov R1, #1
	lsl r1, r1, #8
	tst R0, R1
	beq loc_801E32C
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801DACC
loc_801E32C:
	mov r0, #0x3c 
	strb R0, [R6,#0xB] // (byte_203528B - 0x2035280)
	mov R0, #3
	strb R0, [R6,#0xC] // (byte_203528C - 0x2035280)
	ldr R0, off_801E438 // =byte_86F0374 
	mov R1, #0x11
	ldr R2, off_801E43C // =byte_203C4E0 
	ldr R3, dword_801E440 // =0x6009560 
	mov R4, #0x11
	mov R5, #1
	ldr R6, off_801E444 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
.endfunc // sub_801E2BA

	mov R0, #1
	lsl r0, r0, #8
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801DA48
	pop {R4-R7,pc}
.func
.thumb_func
sub_801E35A:
	push {r4,r5,lr}
	mov R0, #0xB
	mov R1, #0
	mov R2, #3
	mov R3, #0
	mov R4, #8
	mov R5, #2
	bl sub_80018D0
	mov R0, #1
	lsl r0, r0, #0xb
	bl sub_801BED6
	pop {r4,r5,pc}
.endfunc // sub_801E35A

.func
.thumb_func
sub_801E376:
	push {r4,r5,lr}
	// j
	mov R0, #0xB
	// i
	mov R1, #0
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_801E394 // =dword_801EE78 
	mov R4, #8
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov R0, #1
	lsl r0, r0, #0xb
	bl sub_801BEB8
	pop {r4,r5,pc}
	.balign 4, 0x00
off_801E394: .word dword_801EE78
.endfunc // sub_801E376

.func
.thumb_func
sub_801E398:
	push {R4-R7,lr}
	add r7, r0, #0
	ldr R0, off_801E438 // =byte_86F0374 
	add r1, r7, #0
	add R1, #3
	ldr R2, off_801E43C // =byte_203C4E0 
	ldr R3, dword_801E440 // =0x6009560 
	mov R4, #8
	mov R5, #1
	ldr R6, off_801E444 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
.endfunc // sub_801E398

	mov R0, #1
	lsl r0, r0, #0xb
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #0xb
	bl sub_801DA48
	pop {R4-R7,pc}
.func
.thumb_func
sub_801E3C4:
	push {r4,r5,lr}
	mov R0, #0xB
	mov R1, #0x10
	mov R2, #3
	mov R3, #0
	mov R4, #8
	mov R5, #2
	bl sub_80018D0
	ldr R0, dword_801E3E0 // =0x100000 
	bl sub_801BEC2
	pop {r4,r5,pc}
	.byte 0, 0
dword_801E3E0: .word 0x100000
.endfunc // sub_801E3C4

.func
.thumb_func
sub_801E3E4:
	push {r4,r5,lr}
	// j
	mov R0, #0xB
	// i
	mov R1, #0x10
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_801E404 // =dword_801EF10 
	mov R4, #8
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr R0, dword_801E400 // =0x100000 
	bl sub_801BEB8
	pop {r4,r5,pc}
	.byte 0, 0
dword_801E400: .word 0x100000
off_801E404: .word dword_801EF10
.endfunc // sub_801E3E4

.func
.thumb_func
sub_801E408:
	push {R4-R7,lr}
	ldr R1, off_801E4AC // =byte_2035280 
	mov r0, #0x32 
	strh R0, [R1,#0x32] // (word_20352B2 - 0x2035280)
	ldr R0, off_801E438 // =byte_86F0374 
	mov R1, #0x12
	ldr R2, off_801E43C // =byte_203C4E0 
	ldr R3, dword_801E448 // =0x60098E0 
	mov R4, #0xA
	mov R5, #1
	ldr R6, off_801E444 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
.endfunc // sub_801E408

	mov R0, #1
	lsl r0, r0, #0x14
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #0x14
	bl sub_801DA48
	pop {R4-R7,pc}
	.balign 4, 0x00
off_801E438: .word byte_86F0374
off_801E43C: .word byte_203C4E0
dword_801E440: .word 0x6009560
off_801E444: .word dword_86B7AE0
dword_801E448: .word 0x60098E0
.func
.thumb_func
sub_801E44C:
	push {r4,r5,lr}
	mov R0, #0x13
	mov R1, #4
	mov R2, #3
	mov R3, #0
	mov R4, #0xB
	mov R5, #2
	bl sub_80018D0
	mov R0, #1
	lsl r0, r0, #0xc
	bl sub_801BEC2
	pop {r4,r5,pc}
.endfunc // sub_801E44C

.func
.thumb_func
sub_801E468:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0xc
	bl sub_801BEB8
	pop {pc}
.endfunc // sub_801E468

.func
.thumb_func
sub_801E474:
	push {lr}
	ldr R1, off_801E4AC // =byte_2035280 
	strb R0, [R1,#0xB] // (byte_203528B - 0x2035280)
	ldr R1, off_801E49C // =off_801E4A0 
	lsl r0, r0, #2
	// dataList
	ldr R0, [R1,R0]
	bl decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
	ldr R1, off_801E4AC // =byte_2035280 
	mov r0, #0x3f 
	strb R0, [R1]
	mov R0, #1
	lsl r0, r0, #0xc
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #0xc
	bl sub_801DA48
	pop {pc}
off_801E49C: .word off_801E4A0
off_801E4A0: .word off_801EF30
	.word off_801EF4C
	.word off_801EF68
off_801E4AC: .word byte_2035280
.endfunc // sub_801E474

.func
.thumb_func
sub_801E4B0:
	push {R4-R6,lr}
	mov R1, #0
	add r6, r5, #0
	add r6, #0x28 
loc_801E4B8:
	ldrh R2, [R6]
	cmp R2, #0xFF
	beq loc_801E4EA
	cmp R2, #9
	blt loc_801E4C4
	mov R2, #8
loc_801E4C4:
	mov R0, #0x1D
	sub r0, r0, r2
	add r4, r2, #1
	mov R5, #2
	mov R2, #0
	mov R3, #0
	push {r1}
	push {r0,r1,R3-R5}
	bl sub_80018D0
	pop {r0,r1,R3-R5}
	mov R2, #3
	bl sub_80018D0
	pop {r1}
	add R1, #2
	add R6, #2
	cmp R1, #8
	bne loc_801E4B8
loc_801E4EA:
	mov R0, #1
	lsl r0, r0, #0xd
	bl sub_801BEC2
	pop {R4-R6,pc}
.endfunc // sub_801E4B0

.func
.thumb_func
sub_801E4F4:
	push {R4-R7,lr}
	sub sp, sp, #0x28
	mov r7, #0x28 
	add r7, r7, r5
	mov R4, #0
loc_801E4FE:
	ldrh R6, [R7]
	cmp R6, #0xFF
	beq loc_801E568
	cmp R6, #0
	beq loc_801E560
	cmp R6, #9
	blt loc_801E51C
	mov R6, #9
	mov R3, SP
	add r2, r3, r6
	add r2, r2, r6
	ldr R0, dword_801E5D8 // =0xD1D6 
	add R0, #2
	add r1, r0, #1
	b loc_801E536
loc_801E51C:
	mov R3, SP
	add r2, r3, r6
	add r2, r2, r6
	add R2, #2
	ldr R0, dword_801E5D8 // =0xD1D6 
	strh R0, [R3]
	add R0, #1
	strh R0, [R2]
	add R3, #2
	add R2, #2
	add R0, #1
	add r1, r0, #1
	beq loc_801E542
loc_801E536:
	strh R0, [R3]
	strh R1, [R2]
	add R2, #2
	add R3, #2
	sub R6, #1
	bne loc_801E536
loc_801E542:
	// i
	add r1, r4, #0
	// cpyOff
	mov R2, #3
	// tileRefs
	mov R3, SP
	push {r4}
	mov R0, #0x1D
	ldrb R4, [R7]
	cmp R4, #9
	blt loc_801E554
	mov R4, #8
loc_801E554:
	// j
	sub r0, r0, r4
	add R4, #1
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4}
loc_801E560:
	add R7, #2
	add R4, #2
	cmp R4, #8
	blt loc_801E4FE
loc_801E568:
	mov R0, #1
	lsl r0, r0, #0xd
	bl sub_801BEB8
	add sp, sp, #0x28
	pop {R4-R7,pc}
.endfunc // sub_801E4F4

.func
.thumb_func
sub_801E574:
	push {r4,r5,r7,lr}
	mov R1, #0xFF
	ldr R0, off_801E77C // =byte_2035280 
	add r0, #0x28 
	strh R1, [R0]
	strh R1, [R0,#0x2] // (word_20352AA - 0x20352A8)
	strh R1, [R0,#0x4] // (word_20352AC - 0x20352A8)
	strh R1, [R0,#0x6] // (word_20352AE - 0x20352A8)
	add r4, r0, #0
	bl sub_800A998
	push {r0}
	pop {r0}
	ldr R2, off_801E5C8 // =byte_203EBA0 
	ldr R3, dword_801E5CC // =0x600BB40 
	ldr R6, off_801E5D0 // =dword_86B7AE0 
loc_801E594:
	push {r0,R2-R4,r6}
	ldrh R0, [R4]
	push {r2,r3}
	bl sub_800EC56
	pop {r2,r3}
	mov R4, #9
	mov R5, #1
	mov R7, #0
	bl render_graphicalText_8045F8C
.endfunc // sub_801E574

	add r7, r0, #0
	pop {r0,R2-R4,r6}
	ldr R1, off_801E5D4 // =0x240 
	add r2, r2, r1
	add r3, r3, r1
	strh R7, [R4]
	add R4, #2
	sub R0, #1
	bne loc_801E594
	mov R0, #1
	lsl r0, r0, #0xd
	bl sub_801DA48
	pop {r4,r5,r7,pc}
	.balign 4, 0x00
off_801E5C8: .word byte_203EBA0
dword_801E5CC: .word 0x600BB40
off_801E5D0: .word dword_86B7AE0
off_801E5D4: .word 0x240
dword_801E5D8: .word 0xD1D6
	.word 0x1A0
.func
.thumb_func
sub_801E5E0:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0xe
	bl sub_801BEC2
	pop {pc}
.endfunc // sub_801E5E0

.func
.thumb_func
sub_801E5EC:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0xe
	bl sub_801BEB8
	pop {pc}
.endfunc // sub_801E5EC

.func
.thumb_func
sub_801E5F8:
	push {r4,r5,lr}
	ldr R5, off_801E77C // =byte_2035280 
	mov R0, #0
	strb R0, [R5,#0x12] // (byte_2035292 - 0x2035280)
	mov R0, #0xFF
	strb R0, [R5,#0x13] // (byte_2035293 - 0x2035280)
	strb R0, [R5,#0x17] // (byte_2035297 - 0x2035280)
	mov R0, #0xFF
	strb R0, [R5,#0x15] // (byte_2035295 - 0x2035280)
	mov r1, #0x78 
	strh R1, [R5,#0x38] // (word_20352B8 - 0x2035280)
	mov R4, #0
	bl get_802D246 // () -> int
	ldr R1, dword_801E654 // =0x200000 
	tst R0, R1
	bne loc_801E63E
	bl sub_802D234
	cmp R0, #1
	beq loc_801E63E
	cmp R0, #2
	beq loc_801E63E
	cmp R0, #3
	beq loc_801E63E
	cmp R0, #4
	beq loc_801E63E
	cmp R0, #5
	beq loc_801E63E
	cmp R0, #8
	beq loc_801E63E
	bl sub_813BF1C
	beq loc_801E63E
	mov R4, #1
loc_801E63E:
	strb R4, [R5,#0x1E] // (byte_203529E - 0x2035280)
	mov R0, #1
	lsl r0, r0, #0xe
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #0xe
	bl sub_801DA48
	pop {r4,r5,pc}
	.balign 4, 0x00
dword_801E654: .word 0x200000
.endfunc // sub_801E5F8

.func
.thumb_func
sub_801E658:
	mov R0, #0
	ldr R1, off_801E77C // =byte_2035280 
	strb R0, [R1,#0x1E] // (byte_203529E - 0x2035280)
	mov PC, LR
.endfunc // sub_801E658

.func
.thumb_func
sub_801E660:
	push {r4,r6,lr}
	add r4, r0, #0
	ldr R2, off_801E6FC // =word_801E700 
	ldrb R6, [R2,R4]
	ldr R0, [R5,#0x48]
	ldrb R0, [R0,#0x16]
	bl sub_8015B54
	cmp R4, #0xB
	beq loc_801E678
	cmp R4, #0xC
	bne loc_801E684
loc_801E678:
	ldr R2, off_801E6F0 // =dword_801E6F4 
	ldrb R0, [R2,R0]
	cmp R0, #3
	bne loc_801E696
	add R6, #1
	b loc_801E696
loc_801E684:
	cmp R4, #1
	blt loc_801E696
	cmp R4, #0xA
	bgt loc_801E696
	ldr R2, off_801E6F0 // =dword_801E6F4 
	ldrb R0, [R2,R0]
	cmp R0, #2
	bne loc_801E696
	add R6, #5
loc_801E696:
	add r0, r6, #0
	add r1, r3, #0
	pop {r4,r6,pc}
.endfunc // sub_801E660

.func
.thumb_func
sub_801E69C:
	push {r4,r6,lr}
	ldr R0, [R5,#0x48]
	ldrb R0, [R0,#0x16]
	bl sub_8015B5C
	b loc_801E6B2
.endfunc // sub_801E69C

.func
.thumb_func
sub_801E6A8:
	push {r4,r6,lr}
	ldr R0, [R5,#0x48]
	ldrb R0, [R0,#0x16]
	bl sub_8015B54
loc_801E6B2:
	cmp R1, #0
	bne loc_801E6BE
	ldr R2, off_801E6F0 // =dword_801E6F4 
	ldrb R0, [R2,R0]
	add r1, r3, #0
	b locret_801E6EE
loc_801E6BE:
	add r4, r1, #0
	ldr R2, off_801E6FC // =word_801E700 
	ldrb R6, [R2,R4]
	cmp R4, #0xB
	beq loc_801E6CC
	cmp R4, #0xC
	bne loc_801E6D8
loc_801E6CC:
	ldr R2, off_801E6F0 // =dword_801E6F4 
	ldrb R0, [R2,R0]
	cmp R0, #3
	bne loc_801E6EA
	add R6, #1
	b loc_801E6EA
loc_801E6D8:
	cmp R4, #1
	blt loc_801E6EA
	cmp R4, #0xA
	bgt loc_801E6EA
	ldr R2, off_801E6F0 // =dword_801E6F4 
	ldrb R0, [R2,R0]
	cmp R0, #2
	bne loc_801E6EA
	add R6, #5
loc_801E6EA:
	add r0, r6, #0
	add r1, r3, #0
locret_801E6EE:
	pop {r4,r6,pc}
off_801E6F0: .word dword_801E6F4
dword_801E6F4: .word 0x1030200, 0x405
off_801E6FC: .word word_801E700
word_801E700: .hword 0x500, 0x706, 0x908, 0x605, 0x807
	.hword 0x1409, 0xF14, 0x1110, 0x1312, 0x100F
	.hword 0x1211, 0x1613, 0x16, 0x0
.endfunc // sub_801E6A8

.func
.thumb_func
sub_801E71C:
	push {r1,lr}
	ldr R1, off_801E77C // =byte_2035280 
	strb R0, [R1,#0x12] // (byte_2035292 - 0x2035280)
	pop {r1,pc}
.endfunc // sub_801E71C

.func
.thumb_func
sub_801E724:
	push {r5,lr}
	ldr R5, off_801E77C // =byte_2035280 
	ldrb R2, [R5,#0x17] // (byte_2035297 - 0x2035280)
	cmp R2, #0xFF
	bne loc_801E730
	ldrb R2, [R5,#0x15] // (byte_2035295 - 0x2035280)
loc_801E730:
	strb R2, [R5,#0x1F] // (byte_203529F - 0x2035280)
	strb R1, [R5,#0x16] // (byte_2035296 - 0x2035280)
	strb R0, [R5,#0x17] // (byte_2035297 - 0x2035280)
	mov R0, #0xFF
	strb R0, [R5,#0x13] // (byte_2035293 - 0x2035280)
	pop {r5,pc}
.endfunc // sub_801E724

.func
.thumb_func
sub_801E73C:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0xf
	bl sub_801BEC2
	pop {pc}
.endfunc // sub_801E73C

.func
.thumb_func
sub_801E748:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0xf
	bl sub_801BEB8
	pop {pc}
.endfunc // sub_801E748

.func
.thumb_func
sub_801E754:
	push {r1,r2,lr}
	ldr R2, off_801E77C // =byte_2035280 
	ldr R1, [R2,#0x40] // (dword_20352C0 - 0x2035280)
	mov R0, #1
	lsl r0, r0, #0xf
	and R0, R1
	beq locret_801E778
	mov R0, #1
	ldr R2, off_801E924 // =byte_2036840 
	ldrb R1, [R2,#0x8] // (byte_2036848 - 0x2036840)
	cmp R1, #4
	beq loc_801E770
	cmp R1, #2
	bne locret_801E778
loc_801E770:
	ldrb R1, [R2]
	cmp R1, #4
	bne locret_801E778
	mov R0, #2
locret_801E778:
	pop {r1,r2,pc}
	.balign 4, 0x00
off_801E77C: .word byte_2035280
.endfunc // sub_801E754

.func
.thumb_func
sub_801E780:
	ldr R2, off_801E924 // =byte_2036840 
	ldrb R1, [R2,#0x8] // (byte_2036848 - 0x2036840)
	cmp R1, #4
	beq loc_801E78C
	cmp R1, #2
	bne locret_801E790
loc_801E78C:
	mov r0, #0x2d 
	strb R0, [R2,#0x7] // (byte_2036847 - 0x2036840)
locret_801E790:
	mov PC, LR
loc_801E792:
	push {R4-R7,lr}
	sub sp, sp, #0xc
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	str R3, [SP,#0xC]
	ldr R3, off_801E824 // =byte_2035280 
	ldr R3, [R3,#0x40] // (dword_20352C0 - 0x2035280)
	mov R0, #1
	lsl r0, r0, #0xf
	tst R0, R3
	bne loc_801E81C
	ldr R5, off_801E924 // =byte_2036840 
	mov R2, #0
	strb R2, [R5,#0x7] // (byte_2036847 - 0x2036840)
	strb R2, [R5]
	bl sub_802FE48
	cmp R0, #0xFF
	beq loc_801E81C
	strb R0, [R5,#0x6] // (byte_2036846 - 0x2036840)
	add r3, r0, #0
	mov R0, #0
	mov r1, #0x40 
	mov R2, #0xE0
	bl sub_802FE7A
	ldr R0, [SP]
	cmp R0, #0
	bne loc_801E7D8
	ldr R1, [SP,#4]
	cmp R1, #0
	beq loc_801E7D8
	mov r0, #0x30 
	str R0, [SP]
loc_801E7D8:
	strb R0, [R5,#0x1] // (byte_2036841 - 0x2036840)
	ldr R1, off_801E928 // =pt_801EF84 
	ldr R4, [R1,R0]
	ldrh R0, [R4]
	strh R0, [R5,#0x2] // (word_2036842 - 0x2036840)
	ldrb R0, [R4,#2]
	strb R0, [R5,#0x8] // (byte_2036848 - 0x2036840)
	lsl r0, r0, #2
	ldr R6, off_801E940 // =off_801E944 
	ldr R6, [R6,R0]
	ldr R0, [SP]
	ldr R1, [SP,#4]
	ldr R2, [SP,#8]
	ldr R3, [SP,#0xC]
	mov LR, PC
	bx r6
	mov R0, #1
	lsl r0, r0, #0xf
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #0xf
	bl sub_801DA48
	ldrb R0, [R5,#0x1] // (byte_2036841 - 0x2036840)
	cmp r0, #0x24 
	bne loc_801E816
	mov R0, #1
	lsl r0, r0, #8
	bl sub_801DACC
loc_801E816:
	mov R0, #0
	add sp, sp, #0xc
	pop {R4-R7,pc}
loc_801E81C:
	mov R0, #1
	add sp, sp, #0xc
	pop {R4-R7,pc}
	.balign 4, 0x00
off_801E824: .word byte_2035280
.endfunc // sub_801E780

.func
.thumb_func
sub_801E828:
	push {lr}
	cmp r1, #0x63 
	ble loc_801E830
	mov r1, #0x63 
loc_801E830:
	strb R1, [R5,#9]
	bl sub_801E838
	pop {pc}
.endfunc // sub_801E828

.func
.thumb_func
sub_801E838:
	push {R4-R7,lr}
	add r7, r4, #4
	mov R4, #5
	ldr R1, dword_801E92C // =0x6016E00 
	mov r2, #0x20 
loc_801E842:
	mov R6, #4
loc_801E844:
	ldr R0, [R7]
	ldr R3, off_801E958 // =dword_801FDC0 
	cmp R0, R3
	beq loc_801E84E
	add R7, #4
loc_801E84E:
	bl loc_8000AC8
	add r0, #0x20 
	add R1, #0x80
	bl loc_8000AC8
	sub r1, #0x60 
	sub R6, #1
	bne loc_801E844
	add R1, #0x80
	sub R4, #1
	bne loc_801E842
	ldrb R0, [R5,#8]
	cmp R0, #1
	bne loc_801E8C0
	ldr R0, [R7]
	ldr R1, off_801E958 // =dword_801FDC0 
	cmp R0, R1
	bne loc_801E876
	add R7, #4
loc_801E876:
	ldrh R0, [R7]
	strh R0, [R5,#4]
	ldrb R0, [R5,#9]
	bl sub_8000C00
	mov R7, #0xF
	and R7, R0
	lsr r6, r0, #4
	bne loc_801E890
	mov R6, #0xA
	ldrb R0, [R5,#4]
	sub R0, #4
	strb R0, [R5,#4]
loc_801E890:
	ldr R3, off_801E930 // =off_801FD64 
	lsl r6, r6, #2
	ldr R6, [R3,R6]
	lsl r7, r7, #2
	ldr R7, [R3,R7]
	mov r2, #0x20 
	ldr R1, dword_801E934 // =0x6017300 
	add r0, r6, #0
	bl loc_8000AC8
	add r1, #0x20 
	add r0, r7, #0
	bl loc_8000AC8
	add r0, r6, #0
	add r0, #0x20 
	add r1, #0x20 
	bl loc_8000AC8
	add r0, r7, #0
	add r0, #0x20 
	add r1, #0x20 
	bl loc_8000AC8
loc_801E8C0:
	ldr R0, off_801E938 // =byte_86F2900 
	ldr R1, off_801E93C // =byte_30016B0 
	mov r2, #0x20 
	bl loc_8000AC8
	pop {R4-R7,pc}
.endfunc // sub_801E838

.func
.thumb_func
sub_801E8CC:
	push {r4,lr}
	mov R4, #0
	push {r0}
	bl sub_801E95C
	pop {r0}
	cmp r0, #0x50 
	bne locret_801E8E8
	ldrb R0, [R5,#0xC]
	cmp R0, #0
	beq locret_801E8E8
	ldrb R0, [R5,#2]
	sub R0, #0x10
	strb R0, [R5,#2]
locret_801E8E8:
	pop {r4,pc}
.endfunc // sub_801E8CC

.func
.thumb_func
sub_801E8EA:
	push {lr}
	mov R3, #0
	strb R3, [R5,#0xE]
	bl sub_801E8FA
	bl sub_801E838
	pop {pc}
.endfunc // sub_801E8EA

.func
.thumb_func
sub_801E8FA:
	push {r4,lr}
	bl sub_801EAEC
	add r4, r2, #0
	add r0, r1, #0
	bl sub_8000C00
	strh R0, [R5,#0xA]
	add r0, r4, #0
	bl sub_8000C00
	strh R2, [R5,#0xC]
	pop {r4,pc}
.endfunc // sub_801E8FA

.func
.thumb_func
sub_801E914:
	push {r4,r5,lr}
	ldr R5, off_801E924 // =byte_2036840 
	add r2, r1, #0
	add r1, r0, #0
	bl sub_801E8FA
	pop {r4,r5,pc}
	.balign 4, 0x00
off_801E924: .word byte_2036840
off_801E928: .word pt_801EF84
dword_801E92C: .word 0x6016E00
off_801E930: .word off_801FD64
dword_801E934: .word 0x6017300
off_801E938: .word byte_86F2900
off_801E93C: .word byte_30016B0
off_801E940: .word off_801E944
off_801E944: .word sub_801E828+1
	.word sub_801E828+1
	.word sub_801E828+1
	.word sub_801E8CC+1
	.word sub_801E8EA+1
off_801E958: .word dword_801FDC0
.endfunc // sub_801E914

.func
.thumb_func
sub_801E95C:
	push {R4-R7,lr}
	mov R6, #0
	strb R6, [R5,#7]
	strb R6, [R5]
	strb R6, [R5,#1]
	strh R6, [R5,#0xA]
	strb R6, [R5,#0xC]
	strh R3, [R5,#4]
	push {r1,r2,r4,r5}
	ldrh R0, [R5,#4]
	bl sub_8027D10
	bl sub_801EA5A
	mov R4, #8
	mov R5, #1
	ldr R6, off_801EAA0 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
	pop {R2-R5}
	strb R0, [R5,#9]
	push {r2,r3}
	// idx
	ldrh R0, [R5,#4]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#9]
	mov R1, #2
	tst R0, R1
	pop {r2,r3}
	beq loc_801E9FC
	ldr R0, dword_801EAE4 // =0x8000 
	tst R0, R2
	beq loc_801E9A6
	bic R2, R0
	mov R0, #1
	strb R0, [R5,#0xC]
loc_801E9A6:
	ldr R0, dword_801EAE8 // =0x7800 
	bic R2, R0
	cmp R2, #0
	beq loc_801E9FC
	push {R3-R5}
	lsl r6, r4, #2
	add r0, r2, #0
	bl sub_8000C00
	add r4, r0, #0
	bl sub_8000C5C
	strb R0, [R5,#0xA]
	ldr R1, dword_801EA6C // =0xAAAA 
	lsl r0, r0, #2
	lsl R1, R0
	orr R4, R1
	ldr R1, off_801EA78 // =dword_801EA7C 
	ldr R1, [R1,R6]
	bl sub_801EA34
	pop {r0,r4,r5}
	ldr R1, dword_801EAE8 // =0x7800 
	bic R0, R1
	cmp R0, #0
	beq loc_801E9FC
	push {r4}
	bl sub_8000C00
	add r4, r0, #0
	bl sub_8000C5C
	add r1, r0, #1
	strb R1, [R5,#0xB]
	ldr R1, dword_801EA70 // =0xAAAB 
	lsl r0, r0, #2
	lsl R1, R0
	orr R4, R1
	ldr R1, off_801EA84 // =dword_801EA88 
	ldr R1, [R1,R6]
	bl sub_801EA34
	pop {r4}
loc_801E9FC:
	ldrb R1, [R5,#9]
	ldrb R0, [R5,#0xA]
	add r1, r1, r0
	ldrb R0, [R5,#0xB]
	add r1, r1, r0
	mov R0, #0xF
	sub r0, r0, r1
	lsl r0, r0, #2
	ldrb R1, [R5,#0xC]
	lsl r1, r1, #4
	mul R1, R4
	sub r0, r0, r1
	ldrb R1, [R5,#2]
	add r0, r0, r1
	strb R0, [R5,#2]
	ldr R0, off_801EA90 // =dword_86E1C78 
	ldr R1, off_801EA94 // =byte_30016B0 
	mov r2, #0x20 
	bl loc_8000AC8
	// dataList
	ldr R0, off_801EAAC // =off_801EAB0 
	bl decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
	mov R0, #0
	pop {R4-R7,pc}
	pop {R1-R3,r5}
	mov R0, #1
	pop {R4-R7,pc}
.endfunc // sub_801E95C

.func
.thumb_func
sub_801EA34:
	push {r6,lr}
	ldr R6, off_801EA74 // =off_801FD90 
	mov R7, #4
	mov r2, #0x20 
loc_801EA3C:
	mov R0, #0xF
	and R0, R4
	lsl r0, r0, #2
	ldr R0, [R6,R0]
	bl loc_8000AC8
	add r0, r0, r2
	add R1, #0x80
	bl loc_8000AC8
	sub R1, #0xA0
	lsr r4, r4, #4
	sub R7, #1
	bne loc_801EA3C
	pop {r6,pc}
.endfunc // sub_801EA34

.func
.thumb_func
sub_801EA5A:
	ldr R2, [SP,#8]
	cmp R2, #1
	beq loc_801EA66
	ldr R2, off_801EA98 // =byte_203EDA0 
	ldr R3, dword_801EA9C // =0x6016E00 
	mov PC, LR
loc_801EA66:
	ldr R2, off_801EAA4 // =byte_203EFA0 
	ldr R3, dword_801EAA8 // =0x6017280 
	mov PC, LR
dword_801EA6C: .word 0xAAAA
dword_801EA70: .word 0xAAAB
off_801EA74: .word off_801FD90
off_801EA78: .word dword_801EA7C
dword_801EA7C: .word 0x6017060, 0x60174E0
off_801EA84: .word dword_801EA88
dword_801EA88: .word 0x6017160, 0x60175E0
off_801EA90: .word dword_86E1C78
off_801EA94: .word byte_30016B0
off_801EA98: .word byte_203EDA0
dword_801EA9C: .word 0x6016E00
off_801EAA0: .word dword_86B7AE0
off_801EAA4: .word byte_203EFA0
dword_801EAA8: .word 0x6017280
off_801EAAC: .word off_801EAB0
off_801EAB0: .word dword_86BA120
	.word 0x6017200
	.word 0x20
	.word unk_86BA140
	.word 0x6017240
	.word 0x20
	.word dword_86B7BA0
	.word 0x6017220
	.word 0x20
	.word byte_86B7BC0
	.word 0x6017260
	.word 0x20
	.word 0x0
dword_801EAE4: .word 0x8000
dword_801EAE8: .word 0x7800
.endfunc // sub_801EA5A

.func
.thumb_func
sub_801EAEC:
	ldr R3, dword_801EAFC // =0x270F 
	cmp R1, R3
	ble loc_801EAF4
	add r1, r3, #0
loc_801EAF4:
	cmp R2, R3
	ble locret_801EAFA
	add r2, r3, #0
locret_801EAFA:
	mov PC, LR
dword_801EAFC: .word 0x270F
.endfunc // sub_801EAEC

.func
.thumb_func
sub_801EB00:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0x10
	bl sub_801BEC2
	pop {pc}
.endfunc // sub_801EB00

.func
.thumb_func
sub_801EB0C:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0x10
	bl sub_801BEB8
	pop {pc}
.endfunc // sub_801EB0C

.func
.thumb_func
sub_801EB18:
	push {r4,r5,lr}
	mov R4, #0x50 // (pt_801EFD4 - 0x801EF84)
	ldr R3, off_801EB4C // =pt_801EF84 
	ldr R3, [R3,R4]
	ldr R5, off_801EB48 // =unk_2036850 
	ldrh R4, [R3]
	strh R4, [R5,#0x2] // (word_2036852 - 0x2036850)
	ldrb R4, [R3,#0x2] // (byte_801F556 - 0x801F554)
	strb R4, [R5,#0x8] // (byte_2036858 - 0x2036850)
	mov R4, #1
	add r3, r0, #0
	bl sub_801E95C
	mov r4, #0x3c 
	strb R4, [R5,#0x7] // (byte_2036857 - 0x2036850)
	mov R0, #1
	lsl r0, r0, #0x10
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #0x10
	bl sub_801DA48
	pop {r4,r5,pc}
off_801EB48: .word unk_2036850
off_801EB4C: .word pt_801EF84
.endfunc // sub_801EB18

.func
.thumb_func
sub_801EB50:
	push {r4,r5,lr}
	mov R0, #0
	mov R1, #0x12
	mov R2, #3
	mov R3, #0
	mov R4, #0x1E
	mov R5, #2
	bl sub_80018D0
	mov R0, #0
	mov R1, #0x12
	mov R2, #0
	mov R3, #0
	mov R4, #0x1E
	mov R5, #2
	bl sub_80018D0
	mov R0, #1
	lsl r0, r0, #0x12
	bl sub_801BEC2
	pop {r4,r5,pc}
.endfunc // sub_801EB50

.func
.thumb_func
sub_801EB7C:
	push {lr}
	// j
	mov R0, #0
	// i
	mov R1, #0x12
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_801EB98 // =dword_801EE98 
	mov R4, #0x1E
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov R0, #1
	lsl r0, r0, #0x12
	bl sub_801BEB8
	pop {pc}
off_801EB98: .word dword_801EE98
	push {r4,r6,r7,lr}
	ldr R0, off_801EBC0 // =dword_86EA92C 
	ldr R1, off_801EBC4 // =unk_3001AC0 
	mov r2, #0x20 
	bl loc_8000AC8
	mov R0, #1
	lsl r0, r0, #0x12
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #0x12
	bl sub_801DA48
	mov R0, #0
	ldr R1, off_801ECB0 // =byte_2035280 
	strb R0, [R1,#0x1A] // (byte_203529A - 0x2035280)
	pop {r4,r6,r7,pc}
off_801EBC0: .word dword_86EA92C
off_801EBC4: .word unk_3001AC0
.endfunc // sub_801EB7C

.func
.thumb_func
sub_801EBC8:
	ldr R1, off_801ECB0 // =byte_2035280 
	strb R0, [R1,#0x1A] // (byte_203529A - 0x2035280)
	mov R0, #0
	strh R0, [R1,#0x30] // (word_20352B0 - 0x2035280)
	mov PC, LR
.endfunc // sub_801EBC8

.func
.thumb_func
sub_801EBD2:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0x13
	bl sub_801BEC2
	pop {pc}
.endfunc // sub_801EBD2

.func
.thumb_func
sub_801EBDE:
	push {lr}
	ldr R0, off_801EBF4 // =dword_86E97CC 
	ldr R1, dword_801EBF8 // =0x6017800 
	ldr R2, off_801EBFC // =0x100 
	bl loc_8000AC8
	mov R0, #1
	lsl r0, r0, #0x13
	bl sub_801BEB8
	pop {pc}
off_801EBF4: .word dword_86E97CC
dword_801EBF8: .word 0x6017800
off_801EBFC: .word 0x100
	push {lr}
	ldr R0, off_801EC24 // =dword_86E9A0C 
	ldr R1, off_801EC28 // =byte_30016D0 
	mov r2, #0x20 
	bl loc_8000AC8
	ldr R0, dword_801EC20 // =0x80000 
	bl sub_801BECC
	ldr R0, dword_801EC20 // =0x80000 
	bl sub_801DA48
	mov R0, #0
	ldr R1, off_801ECB0 // =byte_2035280 
	strh R0, [R1,#0x34] // (word_20352B4 - 0x2035280)
	pop {pc}
dword_801EC20: .word 0x80000
off_801EC24: .word dword_86E9A0C
off_801EC28: .word byte_30016D0
.endfunc // sub_801EBDE

.func
.thumb_func
sub_801EC2C:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0x15
	bl sub_801BEC2
	pop {pc}
.endfunc // sub_801EC2C

.func
.thumb_func
sub_801EC38:
	push {lr}
	mov R0, #1
	lsl r0, r0, #0x15
	bl sub_801BEB8
	pop {pc}
.endfunc // sub_801EC38

.func
.thumb_func
sub_801EC44:
	push {r4,r6,r7,lr}
	ldr R0, off_801EC74 // =dword_86E994C 
	ldr R1, dword_801EC78 // =0x6016D00 
	mov R2, #0xC0
	bl loc_8000AC8
	ldr R0, off_801EC7C // =dword_86E9A0C 
	ldr R1, off_801EC80 // =byte_30016F0 
	mov r2, #0x20 
	bl loc_8000AC8
	mov R0, #1
	lsl r0, r0, #0x15
	bl sub_801BECC
	mov R0, #1
	lsl r0, r0, #0x15
	bl sub_801DA48
	ldr R1, off_801ECB0 // =byte_2035280 
	mov r0, #0x3c 
	strb R0, [R1,#0x1B] // (byte_203529B - 0x2035280)
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
off_801EC74: .word dword_86E994C
dword_801EC78: .word 0x6016D00
off_801EC7C: .word dword_86E9A0C
off_801EC80: .word byte_30016F0
.endfunc // sub_801EC44

.func
.thumb_func
sub_801EC84:
	push {r4,r5,lr}
	mov R0, #1
	lsl r0, r0, #0x16
	bl sub_801BEC2
	pop {r4,r5,pc}
.endfunc // sub_801EC84

.func
.thumb_func
sub_801EC90:
	push {r4,r5,lr}
	ldr R0, off_801ECA8 // =dword_86E9A0C 
	ldr R1, off_801ECAC // =byte_30016D0 
	mov r2, #0x20 
	bl loc_8000AC8
	mov R0, #1
	lsl r0, r0, #0x16
	bl sub_801BEB8
	pop {r4,r5,pc}
	.balign 4, 0x00
off_801ECA8: .word dword_86E9A0C
off_801ECAC:
	// <endpool>
	.word byte_30016D0
.endfunc // sub_801EC90

off_801ECB0: .word byte_2035280
/*For debugging purposes, connect comment at any range!*/
