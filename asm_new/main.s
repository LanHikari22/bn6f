	.include "include/macros.inc"
	.include "constants/constants.inc"

    .text
	.syntax divided

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
    ldr
    pop {pc}
    .pool
    thumb_func_end creative_main
