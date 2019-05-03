
	thumb_func_start sub_8071B50
sub_8071B50:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_8071BA8 // =off_8071584 
	ldr r1, [r7,#oToolkit_Unk2011bb0_Ptr]
	ldrb r2, [r5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#0x14]
	bl sub_8071C30
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_803037C
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_8030AA4
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	ldr r2, [r5,#0x2c]
	ldrb r3, [r5,#4]
	ldrb r4, [r5,#5]
	bl camera_802FF4C
	bl sub_8030472
	ldr r0, off_8071BAC // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_8071BB0 // =off_8071BB4 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl sub_8071CEE
	bl sub_8034FB8
	pop {r4-r7,pc}
off_8071BA8: .word off_8071584
off_8071BAC: .word unk_2037800
off_8071BB0: .word off_8071BB4
off_8071BB4: .word byte_8071BC0
	.word byte_8071BCA
	.word byte_8071BD2
byte_8071BC0: .byte 0x1C, 0x2B, 0x1C, 0xE, 0x1C, 0x7C, 0x1C, 0x82, 0xFF
	.byte 0xFF
byte_8071BCA: .byte 0x1C, 0xE, 0x1C, 0x7C, 0x1C, 0x82, 0xFF, 0xFF
byte_8071BD2: .byte 0x1C, 0x27, 0x1C, 0x28, 0x1C, 0x1D, 0x1C, 0x1E, 0x1C
	.byte 0x1F, 0x1C, 0x20, 0x1C, 0xE, 0x1C, 0x95, 0xFF, 0xFF
	thumb_func_end sub_8071B50

	thumb_func_start sub_8071BE4
sub_8071BE4:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_8071BF4 // =off_8071BF8 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
	.balign 4, 0x00
off_8071BF4: .word off_8071BF8
off_8071BF8: .word off_8071C04
	.word off_8071C18
	.word off_8071C24
off_8071C04: .word off_8071680
	.word byte_8071970
	.word byte_80719C0
	.word byte_8071A10
	.word 0xFFFFFFFF
off_8071C18: .word off_8071680
	.word byte_8071A60
	.word 0xFFFFFFFF
off_8071C24: .word off_8071680
	.word byte_8071AB0
	.word 0xFFFFFFFF
	thumb_func_end sub_8071BE4

	thumb_func_start sub_8071C30
sub_8071C30:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_8071C64 // =off_8071C68 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl sRender_08_setRenderingState
	ldr r0, off_8071C98 // =off_8071C9C 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_80304E8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8071C64: .word off_8071C68
off_8071C68: .word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
off_8071C98: .word off_8071C9C
off_8071C9C: .word off_8071CA8
	.word off_8071CA8
	.word off_8071CA8
off_8071CA8: .word off_8617068
	.word 0x6008020
	.word dword_8617190
	.word 0x1800
	.word byte_86172E4
	.byte 0x60, 0x19, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0
	thumb_func_end sub_8071C30

	thumb_func_start sub_8071CC4
sub_8071CC4:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_8071CD8 // =off_8071CDC 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_8071CD8: .word off_8071CDC
off_8071CDC: .word nullsub_71+1
	.word nullsub_72+1
	.word nullsub_73+1
	thumb_func_end sub_8071CC4

	thumb_local_start
nullsub_71:
	mov pc, lr
	thumb_func_end nullsub_71

	thumb_local_start
nullsub_72:
	mov pc, lr
	thumb_func_end nullsub_72

	thumb_local_start
nullsub_73:
	mov pc, lr
	thumb_func_end nullsub_73

	thumb_func_start sub_8071CEE
sub_8071CEE:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_8071D04 // =off_8071D08 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
	.balign 4, 0x00
off_8071D04: .word off_8071D08
off_8071D08: .word byte_8071D14
	.word byte_8071D7C
	.word byte_8071DF8
byte_8071D14: .byte 0x5, 0x3, 0x0, 0x0, 0x0, 0x0, 0xD4, 0x0, 0x0, 0x0, 0x8A, 0x0, 0x0, 0x0, 0xF4
	.byte 0xFF, 0x9, 0x0, 0x0, 0x0, 0x5, 0x3, 0x0, 0x0, 0x0, 0x0, 0x64, 0x0, 0x0, 0x0
	.byte 0xBC, 0x0, 0x0, 0x0, 0x0, 0x0, 0xA, 0x0, 0x0, 0x0, 0x5, 0x3, 0x0, 0x0, 0x0
	.byte 0x0, 0xA2, 0x1, 0x0, 0x0, 0x80, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0
	.byte 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0xF2, 0x0, 0x0, 0x0, 0xE, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x3E, 0x0, 0x0, 0x0, 0x5, 0x3, 0x0, 0x0, 0x0, 0x0, 0x8C, 0x1, 0x0, 0x0
	.byte 0x8C, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x16, 0x0, 0x0, 0x0, 0xFF, 0x0, 0x0, 0x0
byte_8071D7C: .byte 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0xEA, 0xFF, 0x0, 0x0, 0xF6, 0xFE, 0x0
	.byte 0x0, 0xC0, 0xFF, 0xD5, 0x0, 0x0, 0x0, 0x5, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0xEA, 0xFF, 0x0, 0x0, 0xDA, 0xFE, 0x0, 0x0, 0xC0, 0xFF, 0xD5, 0x0, 0x0
	.byte 0x0, 0x5, 0x3, 0x0, 0x0, 0x0, 0x0, 0xDA, 0xFF, 0x0, 0x0, 0x84, 0xFE
	.byte 0x0, 0x0, 0x0, 0x0, 0x3, 0x0, 0x0, 0x0, 0x5, 0x3, 0x0, 0x0, 0x0
	.byte 0x0, 0xCC, 0xFF, 0x0, 0x0, 0x66, 0xFE, 0x0, 0x0, 0x0, 0x0, 0x17, 0x0
	.byte 0x0, 0x0, 0x5, 0x25, 0x0, 0x0, 0x0, 0x0, 0xE8, 0xFF, 0x0, 0x0, 0xF8
	.byte 0xFE, 0x0, 0x0, 0xC0, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x5, 0x25, 0x0, 0x0
	.byte 0x0, 0x0, 0xE8, 0xFF, 0x0, 0x0, 0xD8, 0xFE, 0x0, 0x0, 0xC0, 0xFF, 0x1
	.byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x0, 0x0
byte_8071DF8: .byte 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x58, 0x0, 0x0, 0x0, 0x16, 0xFF, 0x0, 0x0
	.byte 0x0, 0x0, 0xC5, 0x0, 0x0, 0x0, 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x14, 0x0
	.byte 0x0, 0x0, 0xA0, 0xFE, 0x0, 0x0, 0x10, 0x0, 0x82, 0x0, 0x0, 0x0, 0x5, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x30, 0x0, 0x0, 0x0, 0xA2, 0xFE, 0x0, 0x0, 0x10, 0x0
	.byte 0x83, 0x0, 0x0, 0x0, 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x60, 0x1, 0x0, 0x0
	.byte 0x7E, 0x0, 0x0, 0x0, 0x0, 0x0, 0x17, 0x0, 0x0, 0x0, 0x5, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x60, 0x1, 0x0, 0x0, 0x9E, 0x0, 0x0, 0x0, 0x0, 0x0, 0x17, 0x0
	.byte 0x0, 0x0, 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7C, 0x1, 0x0, 0x0, 0x64, 0x0
	.byte 0x0, 0x0, 0xC0, 0xFF, 0x18, 0x0, 0x0, 0x0, 0x5, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0xFC, 0x0, 0x0, 0x0, 0x84, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x19, 0x0, 0x0, 0x0
	.byte 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0xD8, 0xFE, 0x0, 0x0, 0x48, 0xFF, 0x0, 0x0
	.byte 0x90, 0x0, 0x1A, 0x0, 0x0, 0x0, 0x5, 0x3, 0x0, 0x0, 0x0, 0x0, 0xF4, 0x0
	.byte 0x0, 0x0, 0x68, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0x0, 0x0, 0x0, 0xFF, 0x0
	.byte 0x0, 0x0
off_8071EB0: .word byte_8071F18
	.word byte_80723D0
	.word byte_80726C0
off_8071EBC: .word byte_8072221
	.word byte_807254C
	.word byte_80728DC
off_8071EC8: .word off_8072BC8
	.word off_807360C
	.word off_8073F1C
off_8071ED4: .word byte_8071EE0
	.word byte_8071EF0
	.word byte_8071F00
byte_8071EE0: .byte 0x0, 0xFF, 0x2, 0x4, 0x5, 0x6, 0xC, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF
byte_8071EF0: .byte 0x0, 0xFF, 0x2, 0x3, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_8071F00: .byte 0x0, 0x1, 0x2, 0x3, 0xFF, 0x5, 0x8, 0x9, 0xC, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
byte_8071F10: .byte 0x13, 0x13, 0x13
byte_8071F13: .byte 0x21, 0x21, 0x21, 0x0, 0x0
byte_8071F18: .byte 0x21, 0x18, 0x50, 0x16, 0x21, 0x30, 0x70, 0x16, 0x1F
	.byte 0xFF, 0xF6, 0x16, 0x2, 0x10, 0x1F, 0x45, 0x1F, 0x7
	.byte 0x8, 0x2, 0x20, 0x2F, 0x6B, 0x1F, 0x7, 0x8, 0x2
	.byte 0x50, 0x5F, 0xD3, 0x1F, 0x7, 0x8, 0x2, 0x60, 0x8F
	.word byte_8072015
	.byte 0x1, 0x72, 0x20, 0x7, 0x8, 0x2, 0x11, 0x11
	.word byte_8071F51
	.byte 0x1, 0x72, 0x20, 0x7, 0x8
byte_8071F51: .byte 0x3, 0xFF, 0x40, 0x5, 0x72, 0x20, 0x7, 0x8, 0x29, 0xB0, 0x1E
	.byte 0x1, 0x2, 0x2, 0x0, 0x5, 0x8, 0x1F, 0xFF, 0xF4, 0x16, 0x1
	.byte 0x72, 0x20, 0x7, 0x8, 0x5, 0xFF, 0x2B, 0x0, 0x88, 0x1F, 0x7
	.byte 0x8, 0x3A, 0x0, 0xC6, 0x23, 0x7, 0x8, 0x16, 0x1, 0x88, 0x1F
	.byte 0x7, 0x8, 0x25
	.word sub_8072BA4+1
	.byte 0x0, 0x0, 0x0, 0x0, 0x2, 0x21, 0x21, 0x9B, 0x1F, 0x7, 0x8, 0x2, 0x22
	.byte 0x24, 0xA0, 0x1F, 0x7, 0x8, 0x1, 0x72, 0x20, 0x7, 0x8, 0x1
	.word byte_8072072
	.word 0x741FF05
	.word byte_8072072
	.byte 0x25, 0x11, 0x25, 0x14, 0x8, 0x0, 0x0, 0x0, 0x0, 0x5, 0xFF, 0x18
	.byte 0x6, 0x72, 0x20, 0x7, 0x8, 0x3, 0xFF, 0x86, 0x6, 0x72, 0x20, 0x7
	.byte 0x8, 0x29, 0xB8, 0x1E, 0x1, 0x2, 0x1, 0x3B, 0x5, 0x8, 0x1F, 0xFF
	.byte 0xF6, 0x16, 0x1, 0x72, 0x20, 0x7, 0x8, 0x2, 0x56, 0x56, 0xDF, 0x1F
	.byte 0x7, 0x8, 0x1, 0x72, 0x20, 0x7, 0x8, 0x5, 0xFF, 0x31, 0xD, 0xF0
	.byte 0x1F, 0x7, 0x8, 0x25, 0x79, 0x39, 0x14, 0x8, 0x0, 0x0, 0x0, 0x0
	.byte 0x5, 0xFF, 0x68, 0xC
	.word byte_8072072
	.word 0xC69FF03
	.word byte_8072072
	.byte 0x1F, 0xFF, 0x69, 0xC, 0x1E, 0xC, 0xFF, 0x26, 0x24
	.byte 0x2B, 0x9, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0x72
	.byte 0x20, 0x7, 0x8
byte_8072015: .byte 0x2, 0x63, 0x64
	.word dword_8072028
	.byte 0x2, 0x80, 0x80, 0x28, 0x20, 0x7, 0x8, 0x1
	.word byte_8072072
dword_8072028: .word 0xEA9FF05
	.word byte_807204D
	.word 0xEAAFF03
	.word byte_807204D
	.byte 0x1F, 0xFF, 0xAA, 0xE, 0x1E, 0xC, 0xFF, 0x26, 0xEC
	.byte 0x9C, 0x9, 0x8, 0x73, 0x0, 0x0, 0x0, 0x1, 0x72
	.byte 0x20, 0x7, 0x8
byte_807204D: .byte 0x5, 0xFF, 0xAB, 0xE, 0x72, 0x20, 0x7, 0x8, 0x3, 0xFF, 0xAC
	.byte 0xE, 0x72, 0x20, 0x7, 0x8, 0x1F, 0xFF, 0xAC, 0xE, 0x1E, 0xC
	.byte 0xFF, 0x26, 0xEC, 0x9C, 0x9, 0x8, 0x74, 0x0, 0x0, 0x0, 0x1
	.byte 0x72, 0x20, 0x7, 0x8
byte_8072072: .byte 0x5, 0xFF, 0xBD, 0x11, 0x97, 0x20, 0x7, 0x8, 0x3, 0xFF, 0xC2
	.byte 0x11, 0x97, 0x20, 0x7, 0x8, 0x1F, 0xFF, 0xC2, 0x11, 0x1E, 0xC
	.byte 0xFF, 0x26, 0xEC, 0x9C, 0x9, 0x8, 0x35, 0x0, 0x0, 0x0, 0x1
	.byte 0xBC, 0x20, 0x7, 0x8, 0x5, 0xFF, 0xBE, 0x11, 0xBC, 0x20, 0x7
	.byte 0x8, 0x3, 0xFF, 0xC3, 0x11, 0xBC, 0x20, 0x7, 0x8, 0x1F, 0xFF
	.byte 0xC3, 0x11, 0x1E, 0xC, 0xFF, 0x26, 0xEC, 0x9C, 0x9, 0x8, 0x36
	.byte 0x0, 0x0, 0x0, 0x1
	.word dword_80720BC
dword_80720BC: .word 0x1E1FF05
	.word byte_8072220
	.byte 0xB, 0x1, 0x7, 0x22, 0x7, 0x8, 0x3, 0xFF, 0x9, 0x2, 0xEA, 0x20, 0x7
	.byte 0x8, 0x1F, 0xFF, 0x9, 0x2, 0x1E, 0xC, 0xFF, 0x2B, 0x4, 0x63, 0x26, 0xB8
	.byte 0x90, 0x9, 0x8, 0x32, 0x0, 0xFF, 0x0, 0x1, 0x20, 0x22, 0x7, 0x8, 0x3
	.byte 0xFF, 0xA, 0x2, 0xA, 0x21, 0x7, 0x8, 0x1F, 0xFF, 0xA, 0x2, 0x1E, 0xC
	.byte 0xFF, 0x2B, 0x4, 0x63, 0x26, 0xB8, 0x90, 0x9, 0x8, 0x33, 0x0, 0xFF, 0x0
	.byte 0x1, 0x20, 0x22, 0x7, 0x8, 0x3, 0xFF, 0xB, 0x2, 0x2A, 0x21, 0x7, 0x8
	.byte 0x1F, 0xFF, 0xB, 0x2, 0x1E, 0xC, 0xFF, 0x2B, 0x4, 0x63, 0x26, 0xB8, 0x90
	.byte 0x9, 0x8, 0x34, 0x0, 0xFF, 0x0, 0x1, 0x20, 0x22, 0x7, 0x8, 0x3, 0xFF
	.byte 0xC, 0x2, 0x4A, 0x21, 0x7, 0x8, 0x1F, 0xFF, 0xC, 0x2, 0x1E, 0xC, 0xFF
	.byte 0x2B, 0x4, 0x63, 0x26, 0xB8, 0x90, 0x9, 0x8, 0x35, 0x0, 0xFF, 0x0, 0x1
	.byte 0x20, 0x22, 0x7, 0x8, 0x3, 0xFF, 0xD, 0x2, 0x6A, 0x21, 0x7, 0x8, 0x1F
	.byte 0xFF, 0xD, 0x2, 0x1E, 0xC, 0xFF, 0x2B, 0x4, 0x63, 0x26, 0xB8, 0x90, 0x9
	.byte 0x8, 0x36, 0x0, 0xFF, 0x0, 0x1, 0x20, 0x22, 0x7, 0x8, 0x3, 0xFF, 0xE
	.byte 0x2, 0x8A, 0x21, 0x7, 0x8, 0x1F, 0xFF, 0xE, 0x2, 0x1E, 0xC, 0xFF, 0x2B
	.byte 0x4, 0x63, 0x26, 0xB8, 0x90, 0x9, 0x8, 0x37, 0x0, 0xFF, 0x0, 0x1, 0x20
	.byte 0x22, 0x7, 0x8, 0x3, 0xFF, 0xF, 0x2, 0xAA, 0x21, 0x7, 0x8, 0x1F, 0xFF
	.byte 0xF, 0x2, 0x1E, 0xC, 0xFF, 0x2B, 0x4, 0x63, 0x26, 0xB8, 0x90, 0x9, 0x8
	.byte 0x38, 0x0, 0xFF, 0x0, 0x1, 0x20, 0x22, 0x7, 0x8, 0x3, 0xFF, 0x10, 0x2
	.byte 0xCA, 0x21, 0x7, 0x8, 0x1F, 0xFF, 0x10, 0x2, 0x1E, 0xC, 0xFF, 0x2B, 0x4
	.byte 0x63, 0x26, 0xB8, 0x90, 0x9, 0x8, 0x39, 0x0, 0xFF, 0x0, 0x1, 0x20, 0x22
	.byte 0x7, 0x8, 0x3, 0xFF, 0x11, 0x2, 0xEA, 0x21, 0x7, 0x8, 0x1F, 0xFF, 0x11
	.byte 0x2, 0x1E, 0xC, 0xFF, 0x2B, 0x4, 0x63, 0x26, 0xB8, 0x90, 0x9, 0x8, 0x3A
	.byte 0x0, 0xFF, 0x0, 0x1, 0x20, 0x22, 0x7, 0x8, 0x20, 0xFF, 0xE1, 0x1, 0x22
	.byte 0xA, 0x8, 0x2, 0x1F, 0xFF, 0xE2, 0x1, 0x1E, 0xC, 0xFF, 0x26, 0xEC, 0x9C
	.byte 0x9, 0x8, 0x56, 0x0, 0x0, 0x0, 0x1, 0x20, 0x22, 0x7, 0x8, 0x20, 0xFF
	.byte 0xE1, 0x1, 0x22, 0xA, 0x8, 0x2, 0x1E, 0xC, 0xFF, 0x26, 0xEC, 0x9C, 0x9
	.byte 0x8, 0x57, 0x0, 0x0, 0x0, 0x1
	.word byte_8072220
byte_8072220: .byte 0x0
byte_8072221: .byte 0x2, 0x10, 0x1F
	.word byte_8072242
	.byte 0x2, 0x20, 0x2F, 0x79, 0x22, 0x7, 0x8, 0x2, 0x50, 0x5F, 0x2
	.byte 0x23, 0x7, 0x8, 0x2, 0x60, 0x8F, 0x24, 0x23, 0x7, 0x8, 0x1
	.byte 0x73, 0x23, 0x7, 0x8
byte_8072242: .byte 0x2, 0x11, 0x11, 0x4E, 0x22, 0x7, 0x8, 0x1, 0x73, 0x23, 0x7
	.byte 0x8, 0x3, 0xFF, 0xA1, 0x1C, 0x5F, 0x22, 0x7, 0x8, 0x26, 0xB8
	.byte 0x8B, 0x9, 0x8, 0x14, 0x2, 0x1, 0x0, 0x5, 0xFF, 0x40, 0x5
	.byte 0x73, 0x23, 0x7, 0x8, 0x29, 0xB0, 0x1E, 0x1, 0x2, 0x0, 0x0
	.byte 0x0, 0x0, 0x20, 0xFF, 0xF4, 0x16, 0x1, 0x73, 0x23, 0x7, 0x8
	.byte 0x2, 0x21, 0x21
	.word byte_8072293
	.byte 0x2, 0x22, 0x22, 0xB1, 0x22, 0x7, 0x8, 0x2, 0x23, 0x24, 0xD3
	.byte 0x22, 0x7, 0x8, 0x1, 0x73, 0x23, 0x7, 0x8
byte_8072293: .byte 0x3, 0xFF, 0x3F, 0x6, 0x73, 0x23, 0x7, 0x8, 0x5, 0xFF, 0x3B
	.byte 0x6, 0x73, 0x23, 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0x49
	.byte 0x0, 0xFF, 0x1, 0x1, 0x73, 0x23, 0x7, 0x8, 0x5, 0xFF, 0x13
	.byte 0x6, 0xD3, 0x22, 0x7, 0x8, 0x3, 0xFF, 0x14, 0x6, 0xD3, 0x22
	.byte 0x7, 0x8, 0x1F, 0xFF, 0x14, 0x6, 0x26, 0x84, 0x80, 0x8, 0x8
	.byte 0x0, 0x0, 0x0, 0x0, 0x1, 0x73, 0x23, 0x7, 0x8, 0x5, 0xFF
	.byte 0x41, 0x7, 0x73, 0x23, 0x7, 0x8, 0x25, 0x19, 0x26, 0x14, 0x8
	.byte 0x0, 0x0, 0x0, 0x0, 0x5, 0xFF, 0x86, 0x6
	.word byte_8072373
	.byte 0x29, 0xB8, 0x1E, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x20, 0xFF, 0xF6
	.byte 0x16, 0x1F, 0xFF, 0xF6, 0x16, 0x1, 0x73, 0x23, 0x7, 0x8, 0x2, 0x56
	.byte 0x56, 0xE, 0x23, 0x7, 0x8, 0x1, 0x73, 0x23, 0x7, 0x8, 0x5, 0xFF
	.byte 0x31, 0xD, 0x73, 0x23, 0x7, 0x8, 0x25, 0x55, 0x3A, 0x14, 0x8, 0x0
	.byte 0x0, 0x0, 0x0, 0x1
	.word byte_8072373
	.byte 0x2, 0x63, 0x64, 0x37, 0x23, 0x7, 0x8, 0x2, 0x80, 0x80, 0x37
	.byte 0x23, 0x7, 0x8, 0x1, 0x73, 0x23, 0x7, 0x8, 0x5, 0xFF, 0xA9
	.byte 0xE, 0x55, 0x23, 0x7, 0x8, 0x3, 0xFF, 0xAA, 0xE, 0x55, 0x23
	.byte 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0xAF, 0x0, 0xFF, 0x1
	.byte 0x1, 0x73, 0x23, 0x7, 0x8, 0x5, 0xFF, 0xAB, 0xE, 0x73, 0x23
	.byte 0x7, 0x8, 0x3, 0xFF, 0xAC, 0xE, 0x73, 0x23, 0x7, 0x8, 0x26
	.byte 0xB8, 0x90, 0x9, 0x8, 0xB0, 0x0, 0xFF, 0x1, 0x1, 0x73, 0x23
	.byte 0x7, 0x8
byte_8072373: .byte 0x3, 0xFF, 0xC2, 0x11, 0x91, 0x23, 0x7, 0x8, 0x5, 0xFF, 0xBD
	.byte 0x11, 0x91, 0x23, 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0xEE
	.byte 0x0, 0xFF, 0x1, 0x1, 0xAF, 0x23, 0x7, 0x8, 0x3, 0xFF, 0xC3
	.byte 0x11, 0xAF, 0x23, 0x7, 0x8, 0x5, 0xFF, 0xBE, 0x11, 0xAF, 0x23
	.byte 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0xEF, 0x0, 0xFF, 0x1
	.byte 0x1, 0xAF, 0x23, 0x7, 0x8, 0x5, 0xFF, 0xE1, 0x1, 0xC5, 0x23
	.byte 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0x31, 0x0, 0xFF, 0x1
	.byte 0x1, 0xC5, 0x23, 0x7, 0x8, 0x0, 0x25, 0x71, 0x2B, 0x7, 0x8
	.byte 0x0, 0x0, 0x0, 0x0, 0x0
byte_80723D0: .byte 0x21, 0x18, 0x50, 0x16, 0x21, 0x30, 0x70, 0x16, 0x2
	.byte 0x20, 0x2F, 0xF2, 0x23, 0x7, 0x8, 0x2, 0x50, 0x5F
	.byte 0x3D, 0x24, 0x7, 0x8, 0x2, 0x60, 0x8F, 0x7F, 0x24
	.byte 0x7, 0x8, 0x1, 0xB7, 0x24, 0x7, 0x8, 0x5, 0xFF
	.byte 0x2B, 0x0, 0xF, 0x24, 0x7, 0x8, 0x3A, 0x0
	.word byte_80726B6
	.byte 0x16, 0x1, 0xF, 0x24, 0x7, 0x8, 0x25, 0xA5, 0x2B, 0x7, 0x8, 0x1
	.byte 0x0, 0x0, 0x0, 0x2, 0x21, 0x21, 0x22, 0x24, 0x7, 0x8, 0x2, 0x22
	.byte 0x24, 0x27, 0x24, 0x7, 0x8, 0x1, 0xB7, 0x24, 0x7, 0x8, 0x1, 0xB7
	.byte 0x24, 0x7, 0x8, 0x5, 0xFF, 0x41, 0x7, 0xB7, 0x24, 0x7, 0x8, 0x25
	.byte 0x11, 0x25, 0x14, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0xB7, 0x24, 0x7
	.byte 0x8, 0x2, 0x56, 0x56
	.word byte_8072449
	.byte 0x1, 0xB7, 0x24, 0x7, 0x8
byte_8072449: .byte 0x5, 0xFF, 0x31, 0xD, 0x5A, 0x24, 0x7, 0x8, 0x25, 0x79, 0x39
	.byte 0x14, 0x8, 0x0, 0x0, 0x0, 0x0, 0x5, 0xFF, 0x64, 0xC, 0xB7
	.byte 0x24, 0x7, 0x8, 0x3, 0xFF, 0x65, 0xC, 0xB7, 0x24, 0x7, 0x8
	.byte 0x1F, 0xFF, 0x65, 0xC, 0x1E, 0xC, 0xFF, 0x26, 0x40, 0x29, 0x9
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0xB7, 0x24, 0x7, 0x8, 0x2
	.byte 0x63, 0x64, 0x92, 0x24, 0x7, 0x8, 0x2, 0x80, 0x80, 0x92, 0x24
	.byte 0x7, 0x8, 0x1, 0xB7, 0x24, 0x7, 0x8, 0x5, 0xFF, 0xAD, 0xE
	.byte 0xB7, 0x24, 0x7, 0x8, 0x3, 0xFF, 0xAE, 0xE, 0xB7, 0x24, 0x7
	.byte 0x8, 0x1F, 0xFF, 0xAE, 0xE, 0x1E, 0xC, 0xFF, 0x26, 0xEC, 0x9C
	.byte 0x9, 0x8, 0x75, 0x0, 0x0, 0x0, 0x1, 0xB7, 0x24, 0x7, 0x8
	.byte 0x5, 0xFF, 0x7C, 0x11, 0xDC, 0x24, 0x7, 0x8, 0x3, 0xFF, 0x7D
	.byte 0x11, 0xDC, 0x24, 0x7, 0x8, 0x1F, 0xFF, 0x7D, 0x11, 0x1E, 0xC
	.byte 0xFF, 0x26, 0xEC, 0x9C, 0x9, 0x8, 0x12, 0x0, 0x0, 0x0, 0x1
	.word byte_807254B
	.word 0x11BAFF05
	.word byte_8072501
	.word 0x1216FF03
	.word byte_8072501
	.byte 0x1F, 0xFF, 0x16, 0x12, 0x1E, 0xC, 0xFF, 0x26, 0xEC
	.byte 0x9C, 0x9, 0x8, 0x17, 0x0, 0x0, 0x0, 0x1, 0x4B
	.byte 0x25, 0x7, 0x8
byte_8072501: .byte 0x5, 0xFF, 0x32, 0x11, 0x26, 0x25, 0x7, 0x8, 0x3, 0xFF, 0x33
	.byte 0x11, 0x26, 0x25, 0x7, 0x8, 0x1F, 0xFF, 0x33, 0x11, 0x1E, 0xC
	.byte 0xFF, 0x26, 0xEC, 0x9C, 0x9, 0x8, 0x24, 0x0, 0x0, 0x0, 0x1
	.byte 0x4B, 0x25, 0x7, 0x8, 0x5, 0xFF, 0xBF, 0x11, 0x4B, 0x25, 0x7
	.byte 0x8, 0x3, 0xFF, 0xC4, 0x11, 0x4B, 0x25, 0x7, 0x8, 0x1F, 0xFF
	.byte 0xC4, 0x11, 0x1E, 0xC, 0xFF, 0x26, 0xEC, 0x9C, 0x9, 0x8, 0x37
	.byte 0x0, 0x0, 0x0, 0x1, 0x4B, 0x25, 0x7, 0x8
byte_807254B: .byte 0x0
byte_807254C: .byte 0x2, 0x0, 0xF, 0x6D, 0x25, 0x7, 0x8, 0x2, 0x20, 0x2F, 0xA3, 0x25
	.byte 0x7, 0x8, 0x2, 0x50, 0x5F, 0xEA, 0x25, 0x7, 0x8, 0x2, 0x60, 0x8F
	.word byte_807260C
	.byte 0x1, 0x3D, 0x26, 0x7, 0x8, 0x2, 0x1, 0x1
	.word byte_8072579
	.byte 0x1, 0x3D, 0x26, 0x7, 0x8
byte_8072579: .byte 0x5, 0xFF, 0x19, 0x4, 0x3D, 0x26, 0x7, 0x8, 0x6, 0x3, 0x6E, 0x4
	.byte 0x3D, 0x26, 0x7, 0x8, 0x3, 0xFF, 0x1A, 0x4, 0x3D, 0x26, 0x7, 0x8
	.byte 0x1F, 0xFF, 0x1A, 0x4, 0x26, 0x50, 0x1D, 0x8, 0x8, 0x0, 0x0, 0x0
	.byte 0x0, 0x1, 0x3D, 0x26, 0x7, 0x8, 0x2, 0x21, 0x21, 0xB6, 0x25, 0x7
	.byte 0x8, 0x2, 0x22, 0x24, 0xD4, 0x25, 0x7, 0x8, 0x1, 0x3D, 0x26, 0x7
	.byte 0x8, 0x3, 0xFF, 0x40, 0x6, 0x3D, 0x26, 0x7, 0x8, 0x5, 0xFF, 0x3C
	.byte 0x6, 0x3D, 0x26, 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0x4A, 0x0
	.byte 0xFF, 0x1, 0x1
	.word byte_807263D
	.word 0x741FF05
	.word byte_807263D
	.byte 0x25, 0x19, 0x26, 0x14, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0x3D, 0x26
	.byte 0x7, 0x8, 0x2, 0x56, 0x56, 0xF6, 0x25, 0x7, 0x8, 0x1, 0x3D, 0x26
	.byte 0x7, 0x8, 0x5, 0xFF, 0x31, 0xD, 0x3D, 0x26, 0x7, 0x8, 0x25, 0x55
	.byte 0x3A, 0x14, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1
	.word byte_807263D
byte_807260C: .byte 0x2, 0x63, 0x64, 0x1F, 0x26, 0x7, 0x8, 0x2, 0x80, 0x80, 0x1F
	.byte 0x26, 0x7, 0x8, 0x1, 0x3D, 0x26, 0x7, 0x8, 0x5, 0xFF, 0xAD
	.byte 0xE, 0x3D, 0x26, 0x7, 0x8, 0x3, 0xFF, 0xAE, 0xE, 0x3D, 0x26
	.byte 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0xB1, 0x0, 0xFF, 0x1
	.byte 0x1, 0x3D, 0x26, 0x7, 0x8
byte_807263D: .byte 0x3, 0xFF, 0x7D, 0x11, 0x5B, 0x26, 0x7, 0x8, 0x5, 0xFF, 0x7C
	.byte 0x11, 0x5B, 0x26, 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0xCA
	.byte 0x0, 0xFF, 0x1, 0x1, 0xB5, 0x26, 0x7, 0x8, 0x3, 0xFF, 0x16
	.byte 0x12, 0x79, 0x26, 0x7, 0x8, 0x5, 0xFF, 0xBA, 0x11, 0x79, 0x26
	.byte 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0xCE, 0x0, 0xFF, 0x1
	.byte 0x1, 0xB5, 0x26, 0x7, 0x8, 0x3, 0xFF, 0x33, 0x11, 0x97, 0x26
	.byte 0x7, 0x8, 0x5, 0xFF, 0x32, 0x11, 0x97, 0x26, 0x7, 0x8, 0x26
	.byte 0xB8, 0x90, 0x9, 0x8, 0xDD, 0x0, 0xFF, 0x1, 0x1, 0xB5, 0x26
	.byte 0x7, 0x8, 0x3, 0xFF, 0xC4, 0x11, 0xB5, 0x26, 0x7, 0x8, 0x5
	.byte 0xFF, 0xBF, 0x11, 0xB5, 0x26, 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9
	.byte 0x8, 0xF0, 0x0, 0xFF, 0x1, 0x1, 0xB5, 0x26, 0x7, 0x8, 0x0
byte_80726B6: .byte 0x25, 0x71, 0x2B, 0x7, 0x8, 0x1, 0x0, 0x0, 0x0, 0x0
byte_80726C0: .byte 0x21, 0x18, 0x50, 0x16, 0x1F, 0xFF, 0xF7, 0x16, 0x1F
	.byte 0xFF, 0xF8, 0x16, 0x3, 0xFF, 0x26, 0x1
	.word dword_80726D8
	.word 0x16F6FF1F
dword_80726D8: .word 0xCDBFF03
	.word byte_80726FA
	.byte 0x29, 0xBC, 0x1E, 0x1, 0x2, 0x2, 0xA, 0x1, 0x8, 0x1F, 0xFF, 0xF7
	.byte 0x16, 0x29, 0xC0, 0x1E, 0x1, 0x2, 0x2, 0xA, 0x7, 0x8, 0x1F, 0xFF
	.byte 0xF8, 0x16
byte_80726FA: .byte 0x2, 0x20, 0x2F, 0xD, 0x27, 0x7, 0x8, 0x2, 0x50, 0x5F
	.word byte_8072867
	.byte 0x1, 0x91, 0x28, 0x7, 0x8, 0x5, 0xFF, 0x2B, 0x0, 0x2F, 0x27
	.byte 0x7, 0x8, 0x3A, 0x0, 0x3E, 0x2B, 0x7, 0x8, 0x2C
	.word byte_8071B00
	.byte 0x16, 0x1, 0x2F, 0x27, 0x7, 0x8, 0x25, 0xA5, 0x2B, 0x7, 0x8
	.byte 0x2, 0x0, 0x0, 0x0, 0x2, 0x20, 0x20, 0x5E, 0x27, 0x7, 0x8
	.byte 0x2, 0x21, 0x21, 0x86, 0x27, 0x7, 0x8, 0x2, 0x22, 0x22
	.word byte_807278B
	.byte 0x2, 0x23, 0x23, 0xEC, 0x27, 0x7, 0x8, 0x2, 0x24, 0x24, 0x29
	.byte 0x28, 0x7, 0x8, 0x2, 0x25, 0x25, 0x3F, 0x28, 0x7, 0x8, 0x1
	.byte 0x91, 0x28, 0x7, 0x8, 0x5, 0xFF, 0x1, 0x6, 0x91, 0x28, 0x7
	.byte 0x8, 0x3, 0xFF, 0x2, 0x6, 0x91, 0x28, 0x7, 0x8, 0x1F, 0xFF
	.byte 0x2, 0x6, 0x1E, 0x1C, 0xFF, 0x2B, 0x4, 0x63, 0x26, 0xA4, 0x72
	.byte 0x8, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0x91, 0x28, 0x7, 0x8
	.byte 0x1, 0x91, 0x28, 0x7, 0x8
byte_807278B: .byte 0x5, 0xFF, 0x41, 0x7, 0x9C, 0x27, 0x7, 0x8, 0x25, 0x11, 0x25
	.byte 0x14, 0x8, 0x0, 0x0, 0x0, 0x0, 0x5, 0xFF, 0xF, 0x6
	.word dword_80727C4
	.word 0x610FF03
	.word dword_80727C4
	.byte 0x1F, 0xFF, 0x10, 0x6, 0x1E, 0xC, 0xFF, 0x2B, 0x4, 0x63
	.byte 0x26, 0x8, 0x7A, 0x8, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1
	.word byte_8072891
dword_80727C4: .word 0x62DFF05
	.word byte_8072891
	.word 0x62EFF03
	.word byte_8072891
	.byte 0x1F, 0xFF, 0x2E, 0x6, 0x1E, 0xC, 0xFF, 0x2B, 0x4, 0x63
	.byte 0x26, 0x7C, 0x90, 0x8, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1
	.word byte_8072891
	.word 0x616FF03
	.word byte_8072802
	.byte 0x25, 0x51, 0x54, 0x3, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0x13, 0x28
	.byte 0x7, 0x8
byte_8072802: .byte 0x3, 0xFF, 0x1A, 0x6, 0x13, 0x28, 0x7, 0x8, 0x25, 0x51, 0x54
	.byte 0x3, 0x8, 0x1, 0x0, 0x0, 0x0, 0x5, 0xFF, 0x41, 0x7, 0x91
	.byte 0x28, 0x7, 0x8, 0x25, 0x11, 0x25, 0x14, 0x8, 0x0, 0x0, 0x0
	.byte 0x0, 0x1, 0x91, 0x28, 0x7, 0x8, 0x5, 0xFF, 0x41, 0x7, 0x91
	.byte 0x28, 0x7, 0x8, 0x25, 0x11, 0x25, 0x14, 0x8, 0x0, 0x0, 0x0
	.byte 0x0, 0x1, 0x91, 0x28, 0x7, 0x8, 0x5, 0xFF, 0x29, 0x6, 0x91
	.byte 0x28, 0x7, 0x8, 0x3, 0xFF, 0x2A, 0x6, 0x91, 0x28, 0x7, 0x8
	.byte 0x1F, 0xFF, 0x2A, 0x6, 0x1E, 0xC, 0xFF, 0x2B, 0x4, 0x63, 0x26
	.byte 0x40, 0x8B, 0x8, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0x91, 0x28
	.byte 0x7, 0x8
byte_8072867: .byte 0x2, 0x56, 0x56, 0x7A, 0x28, 0x7, 0x8, 0x2, 0x57, 0x57, 0x8C
	.byte 0x28, 0x7, 0x8, 0x1, 0x91, 0x28, 0x7, 0x8, 0x29, 0xB8, 0x1E
	.byte 0x1, 0x2, 0x2, 0x1, 0x5, 0x8, 0x1F, 0xFF, 0xF6, 0x16, 0x1
	.word byte_8072891
	.byte 0x1, 0x91, 0x28, 0x7, 0x8
byte_8072891: .byte 0x5, 0xFF, 0xC0, 0x11, 0xB6, 0x28, 0x7, 0x8, 0x3, 0xFF, 0xC5
	.byte 0x11, 0xB6, 0x28, 0x7, 0x8, 0x1F, 0xFF, 0xC5, 0x11, 0x1E, 0xC
	.byte 0xFF, 0x26, 0xEC, 0x9C, 0x9, 0x8, 0x38, 0x0, 0x0, 0x0, 0x1
	.byte 0xDB, 0x28, 0x7, 0x8, 0x5, 0xFF, 0xC1, 0x11, 0xDB, 0x28, 0x7
	.byte 0x8, 0x3, 0xFF, 0xC6, 0x11, 0xDB, 0x28, 0x7, 0x8, 0x1F, 0xFF
	.byte 0xC6, 0x11, 0x1E, 0xC, 0xFF, 0x26, 0xEC, 0x9C, 0x9, 0x8, 0x39
	.byte 0x0, 0x0, 0x0, 0x1, 0xDB, 0x28, 0x7, 0x8, 0x0
byte_80728DC: .byte 0x2, 0x0, 0xF, 0xFD, 0x28, 0x7, 0x8, 0x2, 0x10, 0x1F, 0x33, 0x29
	.byte 0x7, 0x8, 0x2, 0x20, 0x2F, 0x69, 0x29, 0x7, 0x8, 0x2, 0x50, 0x5F
	.word byte_8072A8A
	.byte 0x1, 0x1, 0x2B, 0x7, 0x8, 0x2, 0x5, 0x5
	.word byte_8072909
	.byte 0x1, 0x1, 0x2B, 0x7, 0x8
byte_8072909: .byte 0x5, 0xFF, 0x82, 0x4, 0x1, 0x2B, 0x7, 0x8, 0x5, 0xFF, 0x41, 0x4
	.byte 0x1, 0x2B, 0x7, 0x8, 0x3, 0xFF, 0x42, 0x4, 0x1, 0x2B, 0x7, 0x8
	.byte 0x1F, 0xFF, 0x42, 0x4, 0x26, 0x54, 0x34, 0x8, 0x8, 0x0, 0x0, 0x0
	.byte 0x0, 0x1, 0x1, 0x2B, 0x7, 0x8, 0x2, 0x11, 0x11, 0x3F, 0x29, 0x7
	.byte 0x8, 0x1, 0x1, 0x2B, 0x7, 0x8, 0x5, 0xFF, 0x45, 0x5, 0x1, 0x2B
	.byte 0x7, 0x8, 0x5, 0xFF, 0x9, 0x5, 0x1, 0x2B, 0x7, 0x8, 0x3, 0xFF
	.byte 0xA, 0x5, 0x1, 0x2B, 0x7, 0x8, 0x1F, 0xFF, 0xA, 0x5, 0x26, 0xA8
	.byte 0x47, 0x8, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x2B, 0x7, 0x8
	.byte 0x2, 0x21, 0x21
	.word byte_8072991
	.byte 0x2, 0x22, 0x22, 0xCD, 0x29, 0x7, 0x8, 0x2, 0x23, 0x23, 0xE3
	.byte 0x29, 0x7, 0x8, 0x2, 0x24, 0x24, 0x4B, 0x2A, 0x7, 0x8, 0x2
	.byte 0x25, 0x25
	.word byte_8072A61
	.byte 0x1, 0x1, 0x2B, 0x7, 0x8
byte_8072991: .byte 0x3, 0xFF, 0x41, 0x6, 0xAF, 0x29, 0x7, 0x8, 0x5, 0xFF, 0x3D
	.byte 0x6, 0xAF, 0x29, 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0x4B
	.byte 0x0, 0xFF, 0x1, 0x1, 0x1, 0x2B, 0x7, 0x8, 0x3, 0xFF, 0x42
	.byte 0x6, 0x1, 0x2B, 0x7, 0x8, 0x5, 0xFF, 0x3E, 0x6, 0x1, 0x2B
	.byte 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0x4C, 0x0, 0xFF, 0x1
	.byte 0x1, 0x1, 0x2B, 0x7, 0x8, 0x5, 0xFF, 0x41, 0x7, 0x1, 0x2B
	.byte 0x7, 0x8, 0x25, 0x19, 0x26, 0x14, 0x8, 0x0, 0x0, 0x0, 0x0
	.byte 0x1, 0x1, 0x2B, 0x7, 0x8, 0xD, 0x12, 0x0, 0xC, 0x2A, 0x7
	.byte 0x8, 0x5, 0xFF, 0x15, 0x6, 0xC, 0x2A, 0x7, 0x8, 0x3, 0xFF
	.byte 0x16, 0x6, 0xC, 0x2A, 0x7, 0x8, 0x1F, 0xFF, 0x16, 0x6, 0x26
	.byte 0x14, 0x81, 0x8, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1
	.word byte_8072B01
	.byte 0xD, 0x11, 0x0, 0x35, 0x2A, 0x7, 0x8, 0x5, 0xFF, 0x19, 0x6, 0x35
	.byte 0x2A, 0x7, 0x8, 0x3, 0xFF, 0x1A, 0x6, 0x35, 0x2A, 0x7, 0x8, 0x1F
	.byte 0xFF, 0x1A, 0x6, 0x26, 0x24, 0x83, 0x8, 0x8, 0x0, 0x0, 0x0, 0x0
	.byte 0x1, 0x1, 0x2B, 0x7, 0x8, 0x5, 0xFF, 0x41, 0x7, 0x1, 0x2B, 0x7
	.byte 0x8, 0x25, 0x19, 0x26, 0x14, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1
	.byte 0x2B, 0x7, 0x8, 0x5, 0xFF, 0x41, 0x7, 0x1, 0x2B, 0x7, 0x8, 0x25
	.byte 0x19, 0x26, 0x14, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x2B, 0x7
	.byte 0x8
byte_8072A61: .byte 0xD, 0x10, 0x0
	.word byte_8072B01
	.word 0x627FF05
	.word byte_8072B01
	.word 0x628FF03
	.word byte_8072B01
	.byte 0x1F, 0xFF, 0x28, 0x6, 0x26, 0xD4, 0x8A, 0x8, 0x8, 0x0, 0x0
	.byte 0x0, 0x0, 0x1, 0x1, 0x2B, 0x7, 0x8
byte_8072A8A: .byte 0x2, 0x51, 0x51, 0xA4, 0x2A, 0x7, 0x8, 0x2, 0x52, 0x52
	.word byte_8072AD3
	.byte 0x2, 0x57, 0x57, 0xFC, 0x2A, 0x7, 0x8, 0x1
	.word byte_8072B01
	.word 0xCDBFF05
	.word byte_8072B01
	.byte 0x29, 0xBC, 0x1E, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x20, 0xFF, 0xF7
	.byte 0x16, 0x29, 0xC0, 0x1E, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x20, 0xFF
	.byte 0xF8, 0x16, 0x1F, 0xFF, 0xF7, 0x16, 0x1F, 0xFF, 0xF8, 0x16, 0x1, 0x1
	.byte 0x2B, 0x7, 0x8
byte_8072AD3: .byte 0xD, 0x12, 0x0, 0x1, 0x2B, 0x7, 0x8, 0x5, 0xFF, 0x25, 0xC, 0x1
	.byte 0x2B, 0x7, 0x8, 0x3, 0xFF, 0x26, 0xC, 0x1, 0x2B, 0x7, 0x8, 0x1F
	.byte 0xFF, 0x26, 0xC, 0x26, 0x8, 0x1D, 0x9, 0x8, 0x0, 0x0, 0x0, 0x0
	.byte 0x1
	.word byte_8072B01
	.byte 0x1, 0x1, 0x2B, 0x7, 0x8
byte_8072B01: .byte 0x3, 0xFF, 0xC5, 0x11, 0x1F, 0x2B, 0x7, 0x8, 0x5, 0xFF, 0xC0
	.byte 0x11, 0x1F, 0x2B, 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0xF1
	.byte 0x0, 0xFF, 0x1, 0x1, 0x3D, 0x2B, 0x7, 0x8, 0x3, 0xFF, 0xC6
	.byte 0x11, 0x3D, 0x2B, 0x7, 0x8, 0x5, 0xFF, 0xC1, 0x11, 0x3D, 0x2B
	.byte 0x7, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0xF2, 0x0, 0xFF, 0x1
	.byte 0x1, 0x3D, 0x2B, 0x7, 0x8, 0x0, 0x25, 0x55, 0x2B, 0x7, 0x8
	.byte 0x0, 0x0, 0x0, 0x0, 0x25
	.word sub_8072B70+1
	.byte 0x2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_8071CEE

	thumb_local_start
sub_8072B54:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_S2001c04_Ptr]
	ldr r0, [r5,#0x38]
	add r0, #1
	cmp r0, #0xa
	blt loc_8072B6C
	mov r0, #0
	mov r1, #4
	bl sub_80302C0
	mov r0, #0
loc_8072B6C:
	str r0, [r5,#0x38]
	pop {r4-r7,pc}
	thumb_func_end sub_8072B54

	thumb_local_start
sub_8072B70:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_S2001c04_Ptr]
	mov r4, r0
	bl sub_8034C36
	beq locret_8072BA0
	ldr r0, [r5,#0x3c]
	sub r0, #1
	blt loc_8072B88
	str r0, [r5,#0x3c]
	b locret_8072BA0
loc_8072B88:
	lsl r4, r4, #1
	bl GetRNG2 // () -> int
	ldr r1, dword_8072BB4 // =0x1ff 
	and r0, r1
	ldr r1, off_8072BB8 // =0x258 
	add r0, r0, r1
	str r0, [r5,#0x3c]
	ldr r0, off_8072BBC // =byte_8072BC0 
	ldrh r0, [r0,r4]
	bl PlaySoundEffect
locret_8072BA0:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8072B70

	thumb_local_start
sub_8072BA4:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_S2001c04_Ptr]
	mov r0, #0x10
	str r0, [r5,#0x3c]
	mov r0, #0
	str r0, [r5,#0x38]
	// <endpool>
	pop {r4-r7,pc}
	thumb_func_end sub_8072BA4

dword_8072BB4: .word 0x1FF
off_8072BB8: .word 0x258
off_8072BBC: .word byte_8072BC0
byte_8072BC0: .byte 0xD6, 0x1, 0xD5, 0x1, 0x93, 0x1, 0x0, 0x0
off_8072BC8:
	// <endfile>
	.word byte_8072C3C
/*For debugging purposes, connect comment at any range!*/
