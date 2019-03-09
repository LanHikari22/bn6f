	.include "include/macros.inc"
	.include "constants/constants.inc"

    .text
	.syntax divided

    .macro blx func, reg
        ldr \reg, =\func\()+1
        mov lr, pc
        bx \reg
    .endm

// 87FE36C
    thumb_func_start creative_hook
creative_hook:
        push {lr}
        bl creative_main
        // redo replaced logic
        ldr r0, =main_subsystemJumpTable
        mov r1, r10
        ldr r1, [r1,#oToolkit_MainJumptableIndexPtr]
        ldrb r1, [r1]
        ldr r0, [r0,r1]
        mov lr, pc
        bx r0

    	pop {pc}
    	.pool
    thumb_func_end creative_hook

    thumb_func_start creative_main
creative_main:
    push {lr}
    mov r7, r10
    ldr r5, [r7, #oToolkit_JoypadPtr]
    ldrh r0, [r5, #oJoypad_Pressed]
    ldr r1, =#JOYPAD_SELECT
    tst r0, r1
    bne .key_held
    b .return
.key_held:
    // ldr r0, =TextScriptShukoCrossTut
    // mov r1, #3
    // blx chatbox_runScript, r3
.test_function
    ldr r6, =byte_200CDBC // looks like some free 100 bytes
    ldr r4, [r6, #0]
    ldr r0, [r6, #4]
    ldr r1, [r6, #8]
    ldr r2, [r6, #0xC]
    ldr r3, [r6, #0x10]
    ldr r5, [r6, #0x14]
    mov lr, pc
    bx r4
.return:
    pop {pc}
    .pool
    thumb_func_end creative_main
