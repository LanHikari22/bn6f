.include "asm/asm14.inc"

.func
.thumb_func
sub_8071B50:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_8071BA8 // =off_8071584 
	ldr r1, [r7,#0x14]
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
	bl sub_802FF4C
	bl loc_8030472
	ldr r0, off_8071BAC // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_8071BB0 // =off_8071BB4 
	ldr r0, [r0,r1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_8071CEE
	bl sub_8034FB8
	pop {r4-r7,pc}
off_8071BA8: .word off_8071584
off_8071BAC: .word unk_2037800
off_8071BB0: .word off_8071BB4
off_8071BB4: .word dword_8071BC0
	.word 0x8071BCA, 0x8071BD2
dword_8071BC0: .word 0xE1C2B1C, 0x821C7C1C, 0xE1CFFFF, 0x821C7C1C, 0x271CFFFF
	.word 0x1D1C281C, 0x1F1C1E1C, 0xE1C201C, 0xFFFF951C
.endfunc // sub_8071B50

.func
.thumb_func
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
off_8071C04: .word dword_8071670+0x10
	.word dword_8071670+0x300
	.word dword_8071670+0x350
	.word dword_8071670+0x3A0
	.word 0xFFFFFFFF
off_8071C18: .word dword_8071670+0x10
	.word dword_8071670+0x3F0
	.word 0xFFFFFFFF
off_8071C24: .word dword_8071670+0x10
	.word dword_8071670+0x440
	.word 0xFFFFFFFF
.endfunc // sub_8071BE4

.func
.thumb_func
sub_8071C30:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldrb r1, [r5,#5]
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
	bl sub_8001778
	ldr r0, off_8071C98 // =off_8071C9C 
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_80304E8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8071C64: .word off_8071C68
off_8071C68: .word locret_8001AB4+1
	.word sub_80019D0+1
	.word 0x3005CD9, 0x800, 0x8001AB5, 0x80019D1, 0x3005CD9
	.word 0x800, 0x8001AB5, 0x80019D1, 0x3005CD9, 0x800
off_8071C98: .word off_8071C9C
off_8071C9C: .word off_8071CA8
	.word off_8071CA8
	.word off_8071CA8
off_8071CA8: .word off_8617068
	.word 0x6008020, 0x8617190, 0x1800, 0x86172E4, 0x3001960
	.word 0x20
.endfunc // sub_8071C30

.func
.thumb_func
sub_8071CC4:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldrb r6, [r5,#5]
	lsl r6, r6, #2
	ldr r7, off_8071CD8 // =off_8071CDC 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_8071CD8: .word off_8071CDC
off_8071CDC: .word locret_8071CE8+1
	.word locret_8071CEA+1
	.word locret_8071CEC+1
.endfunc // sub_8071CC4

locret_8071CE8:
	mov pc, lr
locret_8071CEA:
	mov pc, lr
locret_8071CEC:
	mov pc, lr
.func
.thumb_func
sub_8071CEE:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r0, [r0,#5]
	lsl r0, r0, #2
	ldr r1, off_8071D04 // =off_8071D08 
	ldr r0, [r1,r0]
	bl sub_8003570
	pop {pc}
	.balign 4, 0x00
off_8071D04: .word off_8071D08
off_8071D08: .word dword_8071D14
	.word dword_8071D7C
	.word dword_8071DF8
dword_8071D14: .word 0x305, 0xD40000, 0x8A0000, 0xFFF40000, 0x9, 0x305, 0x640000
	.word 0xBC0000, 0x0
	.word 0xA, 0x305, 0x1A20000, 0xFF800000, 0x0
	.word 0x2, 0x5, 0xF20000, 0xE0000, 0x0
	.word 0x3E, 0x305, 0x18C0000, 0xFF8C0000, 0x0
	.word 0x16, 0xFF
dword_8071D7C: .word 0x5, 0xFFEA0000, 0xFEF60000, 0xFFC00000, 0xD5, 0x5, 0xFFEA0000
	.word 0xFEDA0000, 0xFFC00000, 0xD5, 0x305, 0xFFDA0000, 0xFE840000, 0x0
	.word 0x3, 0x305, 0xFFCC0000, 0xFE660000, 0x0
	.word 0x17, 0x2505, 0xFFE80000, 0xFEF80000, 0xFFC00000, 0x0
	.word 0x2505, 0xFFE80000, 0xFED80000, 0xFFC00000, 0x1, 0xFF
dword_8071DF8: .word 0x5, 0x580000, 0xFF160000, 0x0
	.word 0xC5, 0x5, 0x140000, 0xFEA00000, 0x100000, 0x82, 0x5, 0x300000
	.word 0xFEA20000, 0x100000, 0x83, 0x5, 0x1600000, 0x7E0000, 0x0
	.word 0x17, 0x5, 0x1600000, 0x9E0000, 0x0
	.word 0x17, 0x5, 0x17C0000, 0x640000, 0xFFC00000, 0x18, 0x5
	.word 0xFC0000, 0xFF840000, 0x0
	.word 0x19, 0x5, 0xFED80000, 0xFF480000, 0x900000, 0x1A, 0x305
	.word 0xF40000, 0x680000, 0x0
	.word 0x18, 0xFF
off_8071EB0: .word dword_8071F18
	.word dword_80723D0
	.word dword_80726C0
dword_8071EBC: .word 0x8072221, 0x807254C, 0x80728DC
off_8071EC8: .word off_8072BC8
	.word off_807360C
	.word off_8073F1C
off_8071ED4: .word dword_8071EE0
	.word dword_8071EF0
	.word byte_8071F00
dword_8071EE0: .word 0x402FF00, 0xFF0C0605, 0xFFFFFFFF, 0xFFFFFFFF
dword_8071EF0: .word 0x302FF00, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
byte_8071F00: .byte 0x0, 0x1, 0x2, 0x3, 0xFF, 0x5, 0x8, 0x9, 0xC, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
byte_8071F10: .byte 0x13, 0x13, 0x13
byte_8071F13: .byte 0x21, 0x21, 0x21, 0x0, 0x0
dword_8071F18: .word 0x16501821, 0x16703021, 0x16F6FF1F, 0x451F1002, 0x208071F
	.word 0x1F6B2F20, 0x50020807, 0x71FD35F, 0x8F600208, 0x8072015
	.word 0x7207201, 0x11110208, 0x8071F51, 0x7207201, 0x40FF0308
	.word 0x7207205, 0x1EB02908, 0x20201, 0xFF1F0805, 0x720116F4
	.word 0x5080720, 0x88002BFF, 0x3A08071F, 0x723C600, 0x88011608
	.word 0x2508071F, 0x8072BA5, 0x0
	.word 0x9B212102, 0x208071F, 0x1FA02422, 0x72010807, 0x1080720
	.word 0x8072072, 0x741FF05, 0x8072072, 0x14251125, 0x8
	.word 0x18FF0500, 0x7207206, 0x86FF0308, 0x7207206, 0x1EB82908
	.word 0x3B010201, 0xFF1F0805, 0x720116F6, 0x2080720, 0x1FDF5656
	.word 0x72010807, 0x5080720, 0xF00D31FF, 0x2508071F, 0x8143979
	.word 0x0
	.word 0xC68FF05, 0x8072072, 0xC69FF03, 0x8072072, 0xC69FF1F
	.word 0x26FF0C1E, 0x8092B24, 0x0
	.word 0x7207201, 0x64630208, 0x8072028, 0x28808002, 0x1080720
	.word 0x8072072, 0xEA9FF05, 0x807204D, 0xEAAFF03, 0x807204D
	.word 0xEAAFF1F, 0x26FF0C1E, 0x8099CEC, 0x73, 0x7207201
	.word 0xABFF0508, 0x720720E, 0xACFF0308, 0x720720E, 0xACFF1F08
	.word 0xFF0C1E0E, 0x99CEC26, 0x7408, 0x20720100, 0xFF050807
	.word 0x209711BD, 0xFF030807, 0x209711C2, 0xFF1F0807, 0xC1E11C2
	.word 0x9CEC26FF, 0x350809, 0xBC010000, 0x5080720, 0xBC11BEFF
	.word 0x3080720, 0xBC11C3FF, 0x1F080720, 0x1E11C3FF, 0xEC26FF0C
	.word 0x3608099C, 0x1000000, 0x80720BC, 0x1E1FF05, 0x8072220
	.word 0x2207010B, 0xFF030807, 0x20EA0209, 0xFF1F0807, 0xC1E0209
	.word 0x63042BFF, 0x990B826, 0xFF003208, 0x22200100, 0xFF030807
	.word 0x210A020A, 0xFF1F0807, 0xC1E020A, 0x63042BFF, 0x990B826
	.word 0xFF003308, 0x22200100, 0xFF030807, 0x212A020B, 0xFF1F0807
	.word 0xC1E020B, 0x63042BFF, 0x990B826, 0xFF003408, 0x22200100
	.word 0xFF030807, 0x214A020C, 0xFF1F0807, 0xC1E020C, 0x63042BFF
	.word 0x990B826, 0xFF003508, 0x22200100, 0xFF030807, 0x216A020D
	.word 0xFF1F0807, 0xC1E020D, 0x63042BFF, 0x990B826, 0xFF003608
	.word 0x22200100, 0xFF030807, 0x218A020E, 0xFF1F0807, 0xC1E020E
	.word 0x63042BFF, 0x990B826, 0xFF003708, 0x22200100, 0xFF030807
	.word 0x21AA020F, 0xFF1F0807, 0xC1E020F, 0x63042BFF, 0x990B826
	.word 0xFF003808, 0x22200100, 0xFF030807, 0x21CA0210, 0xFF1F0807
	.word 0xC1E0210, 0x63042BFF, 0x990B826, 0xFF003908, 0x22200100
	.word 0xFF030807, 0x21EA0211, 0xFF1F0807, 0xC1E0211, 0x63042BFF
	.word 0x990B826, 0xFF003A08, 0x22200100, 0xFF200807, 0xA2201E1
	.word 0xFF1F0208, 0xC1E01E2, 0x9CEC26FF, 0x560809, 0x20010000
	.word 0x20080722, 0x2201E1FF, 0x1E02080A, 0xEC26FF0C, 0x5708099C
	.word 0x1000000, 0x8072220, 0x1F100200, 0x8072242, 0x792F2002
	.word 0x2080722, 0x23025F50, 0x60020807, 0x723248F, 0x23730108
	.word 0x11020807, 0x7224E11, 0x23730108, 0xFF030807, 0x225F1CA1
	.word 0xB8260807, 0x1408098B, 0x5000102, 0x730540FF, 0x29080723
	.word 0x2011EB0, 0x0
	.word 0x16F4FF20, 0x7237301, 0x21210208, 0x8072293, 0xB1222202
	.word 0x2080722, 0x22D32423, 0x73010807, 0x3080723, 0x73063FFF
	.word 0x5080723, 0x73063BFF, 0x26080723, 0x80990B8, 0x1FF0049
	.word 0x7237301, 0x13FF0508, 0x722D306, 0x14FF0308, 0x722D306
	.word 0x14FF1F08, 0x80842606, 0x808, 0x73010000, 0x5080723
	.word 0x730741FF, 0x25080723, 0x8142619, 0x0
	.word 0x686FF05, 0x8072373, 0x11EB829, 0x2, 0xF6FF2000, 0xF6FF1F16
	.word 0x23730116, 0x56020807, 0x7230E56, 0x23730108, 0xFF050807, 0x23730D31
	.word 0x55250807, 0x8143A, 0x1000000, 0x8072373, 0x37646302, 0x2080723
	.word 0x23378080, 0x73010807, 0x5080723, 0x550EA9FF, 0x3080723, 0x550EAAFF
	.word 0x26080723, 0x80990B8, 0x1FF00AF, 0x7237301, 0xABFF0508, 0x723730E
	.word 0xACFF0308, 0x723730E, 0x90B82608, 0xB00809, 0x730101FF, 0x3080723
	.word 0x9111C2FF, 0x5080723, 0x9111BDFF, 0x26080723, 0x80990B8, 0x1FF00EE
	.word 0x723AF01, 0xC3FF0308, 0x723AF11, 0xBEFF0508, 0x723AF11, 0x90B82608
	.word 0xEF0809, 0xAF0101FF, 0x5080723, 0xC501E1FF, 0x26080723, 0x80990B8
	.word 0x1FF0031, 0x723C501, 0x71250008, 0x8072B, 0x0
dword_80723D0: .word 0x16501821, 0x16703021, 0xF22F2002, 0x2080723, 0x243D5F50
	.word 0x60020807, 0x7247F8F, 0x24B70108, 0xFF050807, 0x240F002B
	.word 0x3A0807, 0x80726B6, 0x240F0116, 0xA5250807, 0x108072B
	.word 0x2000000, 0x24222121, 0x22020807, 0x7242724, 0x24B70108
	.word 0xB7010807, 0x5080724, 0xB70741FF, 0x25080724, 0x8142511
	.word 0x0
	.word 0x724B701, 0x56560208, 0x8072449, 0x724B701, 0x31FF0508
	.word 0x7245A0D, 0x39792508, 0x814, 0xFF050000, 0x24B70C64
	.word 0xFF030807, 0x24B70C65, 0xFF1F0807, 0xC1E0C65, 0x294026FF
	.word 0x809, 0xB7010000, 0x2080724, 0x24926463, 0x80020807
	.word 0x7249280, 0x24B70108, 0xFF050807, 0x24B70EAD, 0xFF030807
	.word 0x24B70EAE, 0xFF1F0807, 0xC1E0EAE, 0x9CEC26FF, 0x750809
	.word 0xB7010000, 0x5080724, 0xDC117CFF, 0x3080724, 0xDC117DFF
	.word 0x1F080724, 0x1E117DFF, 0xEC26FF0C, 0x1208099C, 0x1000000
	.word 0x807254B, 0x11BAFF05, 0x8072501, 0x1216FF03, 0x8072501
	.word 0x1216FF1F, 0x26FF0C1E, 0x8099CEC, 0x17, 0x7254B01
	.word 0x32FF0508, 0x7252611, 0x33FF0308, 0x7252611, 0x33FF1F08
	.word 0xFF0C1E11, 0x99CEC26, 0x2408, 0x254B0100, 0xFF050807
	.word 0x254B11BF, 0xFF030807, 0x254B11C4, 0xFF1F0807, 0xC1E11C4
	.word 0x9CEC26FF, 0x370809, 0x4B010000, 0x80725, 0x6D0F0002
	.word 0x2080725, 0x25A32F20, 0x50020807, 0x725EA5F, 0x8F600208
	.word 0x807260C, 0x7263D01, 0x1010208, 0x8072579, 0x7263D01
	.word 0x19FF0508, 0x7263D04, 0x6E030608, 0x7263D04, 0x1AFF0308
	.word 0x7263D04, 0x1AFF1F08, 0x1D502604, 0x808, 0x3D010000
	.word 0x2080726, 0x25B62121, 0x22020807, 0x725D424, 0x263D0108
	.word 0xFF030807, 0x263D0640, 0xFF050807, 0x263D063C, 0xB8260807
	.word 0x4A080990, 0x101FF00, 0x807263D, 0x741FF05, 0x807263D
	.word 0x14261925, 0x8, 0x263D0100, 0x56020807, 0x725F656
	.word 0x263D0108, 0xFF050807, 0x263D0D31, 0x55250807, 0x8143A
	.word 0x1000000, 0x807263D, 0x1F646302, 0x2080726, 0x261F8080
	.word 0x3D010807, 0x5080726, 0x3D0EADFF, 0x3080726, 0x3D0EAEFF
	.word 0x26080726, 0x80990B8, 0x1FF00B1, 0x7263D01, 0x7DFF0308
	.word 0x7265B11, 0x7CFF0508, 0x7265B11, 0x90B82608, 0xCA0809
	.word 0xB50101FF, 0x3080726, 0x791216FF, 0x5080726, 0x7911BAFF
	.word 0x26080726, 0x80990B8, 0x1FF00CE, 0x726B501, 0x33FF0308
	.word 0x7269711, 0x32FF0508, 0x7269711, 0x90B82608, 0xDD0809
	.word 0xB50101FF, 0x3080726, 0xB511C4FF, 0x5080726, 0xB511BFFF
	.word 0x26080726, 0x80990B8, 0x1FF00F0, 0x726B501, 0x71250008
	.word 0x108072B, 0x0
dword_80726C0: .word 0x16501821, 0x16F7FF1F, 0x16F8FF1F, 0x126FF03, 0x80726D8
	.word 0x16F6FF1F, 0xCDBFF03, 0x80726FA, 0x11EBC29, 0x10A0202
	.word 0xF7FF1F08, 0x1EC02916, 0xA020201, 0xFF1F0807, 0x200216F8
	.word 0x7270D2F, 0x5F500208, 0x8072867, 0x7289101, 0x2BFF0508
	.word 0x7272F00, 0x3E003A08, 0x2C08072B, 0x8071B00, 0x272F0116
	.word 0xA5250807, 0x208072B, 0x2000000, 0x275E2020, 0x21020807
	.word 0x7278621, 0x22220208, 0x807278B, 0xEC232302, 0x2080727
	.word 0x28292424, 0x25020807, 0x7283F25, 0x28910108, 0xFF050807
	.word 0x28910601, 0xFF030807, 0x28910602, 0xFF1F0807, 0x1C1E0602
	.word 0x63042BFF, 0x872A426, 0x8, 0x28910100, 0x91010807
	.word 0x5080728, 0x9C0741FF, 0x25080727, 0x8142511, 0x0
	.word 0x60FFF05, 0x80727C4, 0x610FF03, 0x80727C4, 0x610FF1F
	.word 0x2BFF0C1E, 0x8266304, 0x8087A, 0x1000000, 0x8072891
	.word 0x62DFF05, 0x8072891, 0x62EFF03, 0x8072891, 0x62EFF1F
	.word 0x2BFF0C1E, 0x7C266304, 0x80890, 0x1000000, 0x8072891
	.word 0x616FF03, 0x8072802, 0x3545125, 0x8, 0x28130100
	.word 0xFF030807, 0x2813061A, 0x51250807, 0x1080354, 0x5000000
	.word 0x910741FF, 0x25080728, 0x8142511, 0x0
	.word 0x7289101, 0x41FF0508, 0x7289107, 0x25112508, 0x814
	.word 0x91010000, 0x5080728, 0x910629FF, 0x3080728, 0x91062AFF
	.word 0x1F080728, 0x1E062AFF, 0x42BFF0C, 0x8B402663, 0x808
	.word 0x91010000, 0x2080728, 0x287A5656, 0x57020807, 0x7288C57
	.word 0x28910108, 0xB8290807, 0x202011E, 0x1F080501, 0x116F6FF
	.word 0x8072891, 0x7289101, 0xC0FF0508, 0x728B611, 0xC5FF0308
	.word 0x728B611, 0xC5FF1F08, 0xFF0C1E11, 0x99CEC26, 0x3808
	.word 0x28DB0100, 0xFF050807, 0x28DB11C1, 0xFF030807, 0x28DB11C6
	.word 0xFF1F0807, 0xC1E11C6, 0x9CEC26FF, 0x390809, 0xDB010000
	.word 0x80728, 0xFD0F0002, 0x2080728, 0x29331F10, 0x20020807
	.word 0x729692F, 0x5F500208, 0x8072A8A, 0x72B0101, 0x5050208
	.word 0x8072909, 0x72B0101, 0x82FF0508, 0x72B0104, 0x41FF0508
	.word 0x72B0104, 0x42FF0308, 0x72B0104, 0x42FF1F08, 0x34542604
	.word 0x808, 0x1010000, 0x208072B, 0x293F1111, 0x1010807
	.word 0x508072B, 0x10545FF, 0x508072B, 0x10509FF, 0x308072B
	.word 0x1050AFF, 0x1F08072B, 0x26050AFF, 0x80847A8, 0x0
	.word 0x72B0101, 0x21210208, 0x8072991, 0xCD222202, 0x2080729
	.word 0x29E32323, 0x24020807, 0x72A4B24, 0x25250208, 0x8072A61
	.word 0x72B0101, 0x41FF0308, 0x729AF06, 0x3DFF0508, 0x729AF06
	.word 0x90B82608, 0x4B0809, 0x10101FF, 0x308072B, 0x10642FF
	.word 0x508072B, 0x1063EFF, 0x2608072B, 0x80990B8, 0x1FF004C
	.word 0x72B0101, 0x41FF0508, 0x72B0107, 0x26192508, 0x814
	.word 0x1010000, 0xD08072B, 0x2A0C0012, 0xFF050807, 0x2A0C0615
	.word 0xFF030807, 0x2A0C0616, 0xFF1F0807, 0x14260616, 0x80881
	.word 0x1000000, 0x8072B01, 0x3500110D, 0x508072A
	.word 0x350619FF
	.word 0x308072A, 0x35061AFF, 0x1F08072A, 0x26061AFF, 0x8088324
	.word 0x0
	.word 0x72B0101, 0x41FF0508, 0x72B0107, 0x26192508, 0x814
	.word 0x1010000, 0x508072B, 0x10741FF, 0x2508072B, 0x8142619
	.word 0x0
	.word 0x72B0101, 0x100D08, 0x8072B01, 0x627FF05, 0x8072B01
	.word 0x628FF03, 0x8072B01, 0x628FF1F, 0x88AD426, 0x8
	.word 0x2B010100, 0x51020807, 0x72AA451, 0x52520208, 0x8072AD3
	.word 0xFC575702, 0x108072A, 0x8072B01, 0xCDBFF05, 0x8072B01
	.word 0x11EBC29, 0x2, 0xF7FF2000, 0x1EC02916, 0x201
	.word 0xFF200000, 0xFF1F16F8, 0xFF1F16F7, 0x10116F8, 0xD08072B
	.word 0x2B010012, 0xFF050807, 0x2B010C25, 0xFF030807, 0x2B010C26
	.word 0xFF1F0807, 0x8260C26, 0x8091D, 0x1000000, 0x8072B01
	.word 0x72B0101, 0xC5FF0308, 0x72B1F11, 0xC0FF0508, 0x72B1F11
	.word 0x90B82608, 0xF10809, 0x3D0101FF, 0x308072B, 0x3D11C6FF
	.word 0x508072B, 0x3D11C1FF, 0x2608072B, 0x80990B8, 0x1FF00F2
	.word 0x72B3D01, 0x55250008, 0x8072B, 0x25000000, 0x8072B71
	.word 0x2, 0x0
.endfunc // sub_8071CEE

.func
.thumb_func
sub_8072B54:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#0x40]
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
.endfunc // sub_8072B54

.func
.thumb_func
sub_8072B70:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#0x40]
	add r4, r0, #0
	bl sub_8034C36
	beq locret_8072BA0
	ldr r0, [r5,#0x3c]
	sub r0, #1
	blt loc_8072B88
	str r0, [r5,#0x3c]
	b locret_8072BA0
loc_8072B88:
	lsl r4, r4, #1
	bl change_20013F0_800151C // () -> int
	ldr r1, dword_8072BB4 // =0x1ff 
	and r0, r1
	ldr r1, off_8072BB8 // =0x258 
	add r0, r0, r1
	str r0, [r5,#0x3c]
	ldr r0, off_8072BBC // =dword_8072BC0 
	ldrh r0, [r0,r4]
	bl sound_play // () -> void
locret_8072BA0:
	pop {r4-r7,pc}
	.balign 4, 0x00
.endfunc // sub_8072B70

.func
.thumb_func
sub_8072BA4:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#0x40]
	mov r0, #0x10
	str r0, [r5,#0x3c]
	mov r0, #0
	str r0, [r5,#0x38]
	// <endpool>
	pop {r4-r7,pc}
.endfunc // sub_8072BA4

dword_8072BB4: .word 0x1FF
off_8072BB8: .word 0x258
off_8072BBC: .word dword_8072BC0
dword_8072BC0: .word 0x1D501D6, 0x193
off_8072BC8:
	// <endfile>
	.word dword_8072C3C
/*For debugging purposes, connect comment at any range!*/
