.include "asm00.inc"

.thumb
sub_80005AC:
    push {lr}
    bl sub_814E918
    pop {pc}
    .word unk_2006840
    .word dword_80005BC
dword_80005BC:    .word 0x4425121C, 0x0
// end of function sub_80005AC

.thumb
sub_80005C4:
    push {lr}
    bl sub_814F00C
    pop {pc}
// end of function sub_80005C4

.thumb
sound_play:
    push {r1-r7,lr}
    bl sub_800061E
    pop {r1-r7,pc}
// end of function sound_play

.thumb
sub_80005D4:
    push {r1-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r1, [r7,#0xf]
    cmp r0, r1
    beq locret_80005F0
    strb r0, [r7,#0xf]
    cmp r0, #0x63 
    bne loc_80005EC
    bl sub_8000630
    b locret_80005F0
loc_80005EC:
    bl sub_800061E
locret_80005F0:
    pop {r1-r7,pc}
// end of function sub_80005D4

.thumb
sub_80005F2:
    push {r1-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x3c]
    strb r0, [r7,#0xf]
    cmp r0, #0x63 
    bne loc_8000604
    bl sub_8000630
    b locret_8000608
loc_8000604:
    bl sub_800061E
locret_8000608:
    pop {r1-r7,pc}
// end of function sub_80005F2

.thumb
sub_800060A:
    push {r1-r7,lr}
    ldr r1, [pc, #0x8000864-0x800060c-4] // =byte_2010B90
    ldrb r1, [r1]
    cmp r1, #0
    bne loc_8000616
    mov r1, #0xff
loc_8000616:
    ldr r3, [pc, #0x8000868-0x8000616-2] // =sub_8000822+1
    bl sub_8000808
    pop {r1-r7,pc}
// end of function sub_800060A

.thumb
sub_800061E:
    push {lr}
    mov r1, r10
    push {r1}
    ldr r3, [pc, #0x800086c-0x8000624-4] // =m4a_SongNumStart+1
    bl sub_8000808
    pop {r1}
    mov r10, r1
    pop {pc}
// end of function sub_800061E

.thumb
sub_8000630:
    push {lr}
    mov r1, r10
    push {r1}
    ldr r3, [pc, #0x8000870-0x8000636-2] // =sub_814EA58+1
    bl sub_8000808
    pop {r1}
    mov r10, r1
    pop {pc}
// end of function sub_8000630

.thumb
sub_8000642:
    push {r4-r7,lr}
    lsl r0, r0, #2
    ldr r7, [pc, #0x8000700-0x8000646-2] // =off_8000704
    ldr r0, [r7,r0]
    mov r3, r10
    push {r3}
    ldr r3, [pc, #0x8000874-0x800064e-2] // =sub_814F9AC+1
    bl sub_8000808
    pop {r3}
    mov r10, r3
    pop {r4-r7,pc}
// end of function sub_8000642

.thumb
sub_800065A:
    push {r4-r7,lr}
    lsl r0, r0, #2
    ldr r7, [pc, #0x8000700-0x800065e-2] // =off_8000704
    ldr r0, [r7,r0]
    mov r3, r10
    push {r3}
    ldr r3, [pc, #0x8000878-0x8000666-2] // =sub_814FA14+1
    bl sub_8000808
    pop {r3}
    mov r10, r3
    pop {r4-r7,pc}
// end of function sub_800065A

.thumb
sub_8000672:
    push {r4-r7,lr}
    lsl r0, r0, #2
    ldr r7, [pc, #0x8000700-0x8000676-2] // =off_8000704
    ldr r0, [r7,r0]
    mov r3, r10
    push {r3}
    ldr r3, [pc, #0x800087c-0x800067e-2] // =sub_814F988+1
    bl sub_8000808
    pop {r3}
    mov r10, r3
    pop {r4-r7,pc}
// end of function sub_8000672

.thumb
sub_800068A:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8000700-0x800068c-4] // =off_8000704
    lsl r0, r0, #2
    ldr r0, [r7,r0]
    mov r2, r10
    push {r2}
    ldr r3, [pc, #0x8000880-0x8000696-2] // =sub_814E87C+1
    bl sub_8000808
    pop {r2}
    mov r10, r2
    pop {r4-r7,pc}
// end of function sub_800068A

.thumb
sub_80006A2:
    push {r4-r7,lr}
    cmp r0, #0x25 
    bgt loc_80006B0
    mov r7, r10
    ldr r7, [r7,#0x3c]
    strb r0, [r7,#0xf]
    b loc_80006B0
loc_80006B0:
    mov r4, r12
    mov r5, r8
    mov r6, r9
    mov r7, r10
    push {r4-r7}
    ldr r7, [pc, #0x8000700-0x80006ba-2] // =off_8000704
    lsl r2, r2, #2
    ldr r7, [r7,r2]
    add r4, r0, #0
    add r5, r1, #0
    ldr r3, [pc, #0x8000884-0x80006c4-4] // =m4a_SongNumStart+1
    bl sub_8000808
    add r0, r7, #0
    ldr r3, [pc, #0x8000888-0x80006cc-4] // =sub_814EB1C+1
    bl sub_8000808
    add r0, r7, #0
    mov r1, #0xff
    mov r2, #0
    ldr r3, [pc, #0x800088c-0x80006d8-4] // =sub_814F9AC+1
    bl sub_8000808
    add r0, r4, #0
    ldr r3, [pc, #0x8000890-0x80006e0-4] // =sub_814E9F0+1
    bl sub_8000808
    add r0, r7, #0
    add r1, r5, #0
    ldr r3, [pc, #0x8000894-0x80006ea-2] // =sub_814EAF0+1
    bl sub_8000808
    pop {r4-r7}
    mov r12, r4
    mov r8, r5
    mov r9, r6
    mov r10, r7
    pop {r4-r7,pc}
    .word unk_2010890
off_8000700:    .word off_8000704
off_8000704:    .word unk_2010690
    .word unk_2010910
    .word unk_2010950
    .word unk_2010C20
    .word unk_2010B50
    .word unk_2010550
    .word unk_2010650
    .word unk_20108D0
    .word unk_2010BE0
    .word unk_2010610
    .word unk_2010990
    .word unk_2010C60
    .word unk_2010AD0
    .word unk_2010510
    .word unk_2010810
    .word unk_2010A90
    .word unk_20105D0
    .word unk_2010B10
    .word unk_20107D0
    .word unk_2010490
    .word unk_2010710
    .word unk_2010790
    .word unk_2010A50
    .word unk_20104D0
    .word unk_2010750
    .word unk_20109D0
    .word unk_20106D0
    .word unk_2010BA0
    .word unk_2010850
    .word unk_2010A10
    .word unk_2010590
    .word unk_2010890
// end of function sub_80006A2

.thumb
sub_8000784:
    push {r7,lr}
    mov r1, r10
    push {r1}
    ldr r3, [pc, #0x8000898-0x800078a-2] // =sub_814EA58+1
    bl sub_8000808
    pop {r1}
    mov r10, r1
    mov r7, r10
    ldr r7, [r7,#0x3c]
    mov r0, #0xff
    strb r0, [r7,#0xf]
    pop {r7,pc}
    .byte 0, 0
// end of function sub_8000784

    push {r1-r7,lr}
    mov r1, r10
    push {r1}
    ldr r3, [pc, #0x800089c-0x80007a6-2] // =sub_814E9F0+1
    bl sub_8000808
    pop {r1}
    mov r10, r1
    pop {r1-r7,pc}
.thumb
sub_80007B2:
    push {lr}
    ldr r0, [pc, #0x800085c-0x80007b4-4] // =dword_200A490  // memBlock
    ldr r1, [pc, #0x80008a0-0x80007b6-2] // =0x20C  // numWords
    bl CpuSet_ZeroFillWord
    pop {pc}
// end of function sub_80007B2

.thumb
sub_80007BE:
    push {r4-r7,lr}
    ldr r5, [pc, #0x800085c-0x80007c0-4] // =dword_200A490
    ldr r7, [r5]
    cmp r7, #0
    beq loc_80007F0
    ldrb r0, [r5,#0x4] // (byte_200A494 - 0x200a490)
    add r0, #1
    cmp r0, #0x1a
    blt loc_80007D2
    mov r0, #0
loc_80007D2:
    strb r0, [r5,#0x4] // (byte_200A494 - 0x200a490)
    mov r0, #0
    str r0, [r5,#0x8] // (dword_200A498 - 0x200a490)
    mov r6, #0xc
    add r6, r6, r5
loc_80007DC:
    ldmia r6!, {r0-r3}
    mov r4, r10
    push {r4}
    ldr r4, [pc, #0x8000804-0x80007e2-2] // =loc_80007E8+1
    mov lr, r4
    bx r3
loc_80007E8:
    pop {r4}
    mov r10, r4
    sub r7, #1
    bne loc_80007DC
loc_80007F0:
    mov r0, #0
    str r0, [r5]
    ldr r6, [r5,#0x8] // (dword_200A498 - 0x200a490)
    cmp r6, #0
    beq locret_8000800
    ldmia r6!, {r0-r3}
    bl sub_8000808
locret_8000800:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8000804:    .word loc_80007E8+1
// end of function sub_80007BE

.thumb
sub_8000808:
    push {r4-r7,lr}
    ldr r5, [pc, #0x800085c-0x800080a-2] // =dword_200A490
    ldr r7, [r5]
    cmp r7, #0x20 
    blt loc_8000814
    b locret_8000820
loc_8000814:
    add r6, r7, #1
    str r6, [r5]
    lsl r7, r7, #4
    add r7, #0xc
    add r7, r7, r5
    stmia r7!, {r0-r3}
locret_8000820:
    pop {r4-r7,pc}
// end of function sub_8000808

.thumb
sub_8000822:
    push {r4-r7,lr}
    ldr r3, [pc, #0x80008a4-0x8000824-4] // =byte_2010B90
    ldrb r2, [r3]
    cmp r1, r2
    beq loc_8000854
    mov r2, #0
    strb r2, [r3]
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r1, [r7,#0xf]
    cmp r0, r1
    beq locret_800085A
    strb r0, [r7,#0xf]
    cmp r0, #0x63 
    bne loc_8000844
    ldr r3, [pc, #0x80008a8-0x8000840-4] // =sub_814EA58+1
    b loc_8000846
loc_8000844:
    ldr r3, [pc, #0x80008ac-0x8000844-4] // =m4a_SongNumStart+1
loc_8000846:
    push {r4}
    ldr r4, [pc, #0x80008b0-0x8000848-4] // =loc_800084E+1
    mov lr, r4
    bx r3
loc_800084E:
    pop {r4}
    mov r10, r4
    b locret_800085A
loc_8000854:
    add r0, r6, #0
    sub r0, #0x10
    str r0, [r5,#8]
locret_800085A:
    pop {r4-r7,pc}
memBlock:    .word dword_200A490
    .word unk_200F390
off_8000864:    .word byte_2010B90
off_8000868:    .word sub_8000822+1
off_800086C:    .word m4a_SongNumStart+1
off_8000870:    .word sub_814EA58+1
off_8000874:    .word sub_814F9AC+1
off_8000878:    .word sub_814FA14+1
off_800087C:    .word sub_814F988+1
off_8000880:    .word sub_814E87C+1
off_8000884:    .word m4a_SongNumStart+1
off_8000888:    .word sub_814EB1C+1
off_800088C:    .word sub_814F9AC+1
off_8000890:    .word sub_814E9F0+1
off_8000894:    .word sub_814EAF0+1
off_8000898:    .word sub_814EA58+1
off_800089C:    .word sub_814E9F0+1
numWords:    .word 0x20C
off_80008A4:    .word byte_2010B90
off_80008A8:    .word sub_814EA58+1
off_80008AC:    .word m4a_SongNumStart+1
off_80008B0:    .word loc_800084E+1
// end of function sub_8000822

.thumb
sub_80008B4:
    push {r0-r2,lr}
    mov r2, #0
loc_80008B8:
    sub r1, #1
    strb r2, [r0,r1]
    bne loc_80008B8
    pop {r0-r2,pc}
// end of function sub_80008B4

.thumb
sub_80008C0:
    push {r0-r3,lr}
    ldr r2, [pc, #0x80008dc-0x80008c2-2] // =0x1000000
    lsr r1, r1, #1
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    mov r0, #0
    str r0, [sp]
    mov r0, sp
    bl SWI_CpuSet
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_80008DC:    .word 0x1000000
// end of function sub_80008C0

.thumb
CpuSet_ZeroFillWord:
    push {r0-r3,lr}
    ldr r2, [pc, #0x80008fc-0x80008e2-2] // =0x5000000
    lsr r1, r1, #2
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    mov r0, #0
    str r0, [sp]
    mov r0, sp
    bl SWI_CpuSet
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_80008FC:    .word 0x5000000
// end of function CpuSet_ZeroFillWord

.thumb
sub_8000900:
    push {r0-r3,lr}
    ldr r2, [pc, #0x800091c-0x8000902-2] // =0x1000000
    lsr r1, r1, #2
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    mov r0, #0
    str r0, [sp]
    mov r0, sp
    bl SWI_CpuFastSet
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_800091C:    .word 0x1000000
// end of function sub_8000900

.thumb
sub_8000920:
    sub r2, #1
    ldrb r3, [r0,r2]
    strb r3, [r1,r2]
    bne sub_8000920
    mov pc, lr
// end of function sub_8000920

.thumb
sub_800092A:
    push {r0-r3,lr}
    ldr r3, [pc, #0x8000938-0x800092c-4] // =0x0
    lsr r2, r2, #1
    orr r2, r3
    bl SWI_CpuSet
    pop {r0-r3,pc}
dword_8000938:    .word 0x0
// end of function sub_800092A

.thumb
sub_800093C:
    push {r0-r3,lr}
    ldr r3, [pc, #0x800094c-0x800093e-2] // =LCDControl
    lsr r2, r2, #2
    orr r2, r3
    bl SWI_CpuSet
    pop {r0-r3,pc}
    .balign 4, 0x00
off_800094C:    .word LCDControl
// end of function sub_800093C

.thumb
sub_8000950:
    push {r0-r3,lr}
    ldr r3, [pc, #0x8000960-0x8000952-2] // =0x0
    lsr r2, r2, #2
    orr r2, r3
    bl SWI_CpuFastSet
    pop {r0-r3,pc}
    .byte 0, 0
dword_8000960:    .word 0x0
// end of function sub_8000950

.thumb
initMemblockToByte:
    sub r1, #1
    strb r2, [r0,r1]
    bne initMemblockToByte
    mov pc, lr
// end of function initMemblockToByte

.thumb
sub_800096C:
    push {r0-r3,lr}
    add r3, r2, #0
    ldr r2, [pc, #0x8000988-0x8000970-4] // =0x1000000
    lsr r1, r1, #1
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    str r3, [sp]
    mov r0, sp
    bl SWI_CpuSet
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_8000988:    .word 0x1000000
// end of function sub_800096C

.thumb
sub_800098C:
    push {r0-r3,lr}
    add r3, r2, #0
    ldr r2, [pc, #0x80009a8-0x8000990-4] // =0x5000000
    lsr r1, r1, #2
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    str r3, [sp]
    mov r0, sp
    bl SWI_CpuSet
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_80009A8:    .word 0x5000000
// end of function sub_800098C

.thumb
sub_80009AC:
    push {r0-r3,lr}
    add r3, r2, #0
    ldr r2, [pc, #0x80009c8-0x80009b0-4] // =0x1000000
    lsr r1, r1, #2
    orr r2, r1
    add r1, r0, #0
    sub sp, sp, #4
    str r3, [sp]
    mov r0, sp
    bl SWI_CpuFastSet
    add sp, sp, #4
    pop {r0-r3,pc}
    .balign 4, 0x00
dword_80009C8:    .word 0x1000000
// end of function sub_80009AC

.thumb
sub_80009CC:
    push {r4-r7,lr}
    lsl r3, r3, #2
    ldr r5, [pc, #0x80009e8-0x80009d0-4] // =off_80009EC
    ldr r5, [r5,r3]
    mov r3, #8
    ldr r7, [pc, #0x8000a38-0x80009d6-2] // =0x80000000
loc_80009D8:
    ldr r6, [r5,r3]
    and r6, r7
    bne loc_80009D8
    str r0, [r5]
    str r1, [r5,#4]
    orr r4, r2
    str r4, [r5,#8]
    pop {r4-r7,pc}
off_80009E8:    .word off_80009EC
off_80009EC:    .word DMA0SourceAddress
    .word DMA1SourceAddress
    .word DMA2SourceAddress
    .word DMA3SourceAddress
// end of function sub_80009CC

.thumb
sub_80009FC:
    push {r4,lr}
    ldr r3, [pc, #0x8000a34-0x80009fe-2] // =DMA0SourceAddress
loc_8000A00:
    mov r1, #0
    mov r4, #1
    tst r0, r4
    beq loc_8000A0C
    ldr r2, [r3,#0x8] // (DMA0WordCount - 0x40000b0)
    orr r1, r2
loc_8000A0C:
    mov r4, #2
    tst r0, r4
    beq loc_8000A16
    ldr r2, [r3,#0x14] // (DMA1WordCount - 0x40000b0)
    orr r1, r2
loc_8000A16:
    mov r4, #4
    tst r0, r4
    beq loc_8000A20
    ldr r2, [r3,#0x20] // (DMA2WordCount - 0x40000b0)
    orr r1, r2
loc_8000A20:
    mov r4, #8
    tst r0, r4
    beq loc_8000A2A
    ldr r2, [r3,#0x2c] // (DMA3WordCount - 0x40000b0)
    orr r1, r2
loc_8000A2A:
    ldr r2, [pc, #0x8000a38-0x8000a2a-2] // =0x80000000
    and r1, r2
    bne loc_8000A00
    pop {r4,pc}
    .balign 4, 0x00
off_8000A34:    .word DMA0SourceAddress
dword_8000A38:    .word 0x80000000
// end of function sub_80009FC

.thumb
sub_8000A3C:
    ldr r0, [pc, #0x8000b10-0x8000a3c-4] // =dword_200AC1C
    mov r1, #0
    str r1, [r0]
    mov pc, lr
// end of function sub_8000A3C

objRender_8000A44:
    push {lr}
    mov r0, r8
    mov r1, r9
    push {r0,r1,r4-r7}
    ldr r0, [pc, #0x8000b10-0x8000a4c-4] // =dword_200AC1C
    ldr r1, [r0]
    ldr r2, [pc, #0x8000b14-0x8000a50-4] // =unk_200B4B0
loc_8000A52:
    sub r1, #1
    blt loc_8000A96
    mov r8, r1
    mov r9, r2
    ldr r4, [r2,#0x10]
    cmp r4, #1
    bge loc_8000A7C
    ldr r4, [r2,#0xc]
    ldr r0, [r2]
    ldr r1, [r2,#4]
    ldr r2, [r2,#8]
    lsr r2, r2, #2
    mov r3, #3
    bl sub_80009CC
    mov r0, #8
    bl sub_80009FC
    mov r1, r8
    mov r2, r9
    b loc_8000A92
loc_8000A7C:
    sub r4, #1
    lsl r4, r4, #2
    ldr r0, [r2]
    ldr r1, [r2,#4]
    ldr r2, [r2,#8]
    ldr r3, [pc, #0x8000aa4-0x8000a86-2] // =off_8000AA8
    ldr r3, [r3,r4]
    mov lr, pc
    bx r3
    mov r1, r8
    mov r2, r9
loc_8000A92:
    add r2, #0x14
    b loc_8000A52
loc_8000A96:
    bl sub_8000A3C
    pop {r0,r1,r4-r7}
    mov r8, r0
    mov r9, r1
    pop {pc}
    .balign 4, 0x00
off_8000AA4:    .word off_8000AA8
off_8000AA8:    .word sub_8000920+1
    .word sub_800092A+1
    .word sub_800093C+1
    .word sub_8000950+1
.thumb
sub_8000AB8:
    mov r3, #0
    b loc_8000ACA
loc_8000ABC:
    mov r3, #1
    b loc_8000ACA
loc_8000AC0:
    mov r3, #2
    b loc_8000ACA
loc_8000AC4:
    mov r3, #3
    b loc_8000ACA
loc_8000AC8:
    mov r3, #4
loc_8000ACA:
    push {r4-r7}
    add r7, r3, #0
    ldr r3, [pc, #0x8000b10-0x8000ace-2] // =dword_200AC1C
    ldr r4, [r3]
    cmp r4, #0x60 
    bge loc_8000AF4
    add r5, r4, #0
    add r4, #1
    str r4, [r3]
    ldr r4, [pc, #0x8000b14-0x8000adc-4] // =unk_200B4B0
    mov r6, #0x14
    mul r5, r6
    add r4, r4, r5
    str r0, [r4]
    str r1, [r4,#4]
    str r2, [r4,#8]
    str r7, [r4,#0x10]
    ldr r3, [pc, #0x8000af8-0x8000aec-4] // =off_8000AF8+4
    lsl r7, r7, #2
    ldr r3, [r3,r7]
    str r3, [r4,#0xc]
loc_8000AF4:
    pop {r4-r7}
    mov pc, lr
off_8000AF8:    .word off_8000AF8+4, 0x84000000, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF
off_8000B10:    .word dword_200AC1C
off_8000B14:    .word unk_200B4B0
// end of function sub_8000AB8

.thumb
sub_8000B18:
    push {r4-r7,lr}
    add r7, r0, #0
loc_8000B1C:
    ldr r0, [r7]
    tst r0, r0
    beq locret_8000B2E
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_8000AB8
    add r7, #0xc
    b loc_8000B1C
locret_8000B2E:
    pop {r4-r7,pc}
// end of function sub_8000B18

.thumb
sub_8000B30:
    push {r4-r7,lr}
    add r7, r0, #0
loc_8000B34:
    ldr r0, [r7]
    tst r0, r0
    beq locret_8000B8C
    lsl r0, r0, #1
    bcs loc_8000B46
    lsr r0, r0, #1
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    b loc_8000B5E
loc_8000B46:
    lsr r0, r0, #1
    ldr r1, [r7,#8]
    add r4, r1, #0
    bl SWI_LZ77UnCompReadNormalWrite8bit
    ldr r1, [r7,#4]
    tst r1, r1
    beq loc_8000B88
    add r0, r4, #4
    ldr r2, [r4]
    lsr r2, r2, #8
    sub r2, #4
loc_8000B5E:
    mov r3, #1
    tst r3, r2
    bne loc_8000B72
    mov r3, #3
    tst r3, r2
    bne loc_8000B78
    mov r3, #0x1f
    tst r3, r2
    bne loc_8000B7E
    b loc_8000B84
loc_8000B72:
    bl sub_8000920
    b loc_8000B88
loc_8000B78:
    bl sub_800092A
    b loc_8000B88
loc_8000B7E:
    bl sub_800093C
    b loc_8000B88
loc_8000B84:
    bl sub_8000950
loc_8000B88:
    add r7, #0xc
    b loc_8000B34
locret_8000B8C:
    pop {r4-r7,pc}
// end of function sub_8000B30

.thumb
sub_8000B8E:
    push {r4-r7,lr}
    add r7, r0, #0
loc_8000B92:
    ldr r0, [r7]
    tst r0, r0
    beq locret_8000BEA
    lsl r0, r0, #1
    bcs loc_8000BA4
    lsr r0, r0, #1
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    b loc_8000BBC
loc_8000BA4:
    lsr r0, r0, #1
    ldr r1, [r7,#8]
    add r4, r1, #0
    bl SWI_LZ77UnCompReadNormalWrite8bit
    ldr r1, [r7,#4]
    tst r1, r1
    beq loc_8000BE6
    add r0, r4, #4
    ldr r2, [r4]
    lsr r2, r2, #8
    sub r2, #4
loc_8000BBC:
    mov r3, #1
    tst r3, r2
    bne loc_8000BD0
    mov r3, #3
    tst r3, r2
    bne loc_8000BD6
    mov r3, #0x1f
    tst r3, r2
    bne loc_8000BDC
    b loc_8000BE2
loc_8000BD0:
    bl loc_8000ABC
    b loc_8000BE6
loc_8000BD6:
    bl loc_8000AC0
    b loc_8000BE6
loc_8000BDC:
    bl loc_8000AC4
    b loc_8000BE6
loc_8000BE2:
    bl loc_8000AC8
loc_8000BE6:
    add r7, #0xc
    b loc_8000B92
locret_8000BEA:
    pop {r4-r7,pc}
// end of function sub_8000B8E

    ldr r0, [pc, #0x8000bf8-0x8000bec-4] // =VerticalCounter_LY_
    ldrh r0, [r0]
    ldr r1, [pc, #0x8000bfc-0x8000bf0-4] // =dword_2009CC0
    ldr r1, [r1]
    add r0, r0, r1
    mov pc, lr
off_8000BF8:    .word VerticalCounter_LY_
off_8000BFC:    .word dword_2009CC0
.thumb
sub_8000C00:
    push {r4,r7,lr}
    ldr r1, [pc, #0x8000c54-0x8000c02-2] // =0x5F5E0FF
    cmp r0, r1
    bmi loc_8000C0C
    ldr r0, [pc, #0x8000c58-0x8000c08-4] // =0x99999999
    b locret_8000C2C
loc_8000C0C:
    ldr r7, [pc, #0x8000c30-0x8000c0c-4] // =dword_8000C34
    mov r2, #0
    mov r3, #8
loc_8000C12:
    lsl r2, r2, #4
    ldr r1, [r7]
    mov r4, #0
loc_8000C18:
    cmp r0, r1
    bmi loc_8000C22
    sub r0, r0, r1
    add r4, #1
    b loc_8000C18
loc_8000C22:
    orr r2, r4
    add r7, #4
    sub r3, #1
    bne loc_8000C12
    add r0, r2, #0
locret_8000C2C:
    pop {r4,r7,pc}
    .byte 0, 0
off_8000C30:    .word dword_8000C34
dword_8000C34:    .word 0x989680
    .word 0xF4240, 0x186A0, 0x2710, 0x3E8, 0x64, 0xA, 0x1
dword_8000C54:    .word 0x5F5E0FF
dword_8000C58:    .word 0x99999999
// end of function sub_8000C00

.thumb
sub_8000C5C:
    mov r1, #1
    tst r0, r0
    beq loc_8000C6E
    mov r1, #0
loc_8000C64:
    tst r0, r0
    beq loc_8000C6E
    add r1, #1
    lsr r0, r0, #4
    b loc_8000C64
loc_8000C6E:
    add r0, r1, #0
    mov pc, lr
// end of function sub_8000C5C

.thumb
sub_8000C72:
    push {r4-r6,lr}
loc_8000C74:
    push {r0,r2}
    push {r1}
    bl sub_8001532
    pop {r1}
    push {r1}
    svc 6
    add r3, r1, #0
    pop {r1}
    push {r1,r3}
    bl sub_8001532
    pop {r1}
    push {r1}
    svc 6
    add r4, r1, #0
    pop {r1,r3}
    pop {r0,r2}
    ldrb r5, [r0,r3]
    ldrb r6, [r0,r4]
    strb r6, [r0,r3]
    strb r5, [r0,r4]
    sub r2, #1
    bne loc_8000C74
    pop {r4-r6,pc}
// end of function sub_8000C72

    push {r4-r6,lr}
loc_8000CA8:
    push {r0,r2}
    push {r1}
    bl sub_8001562
    pop {r1}
    push {r1}
    svc 6
    add r3, r1, #0
    pop {r1}
    push {r1,r3}
    bl sub_8001562
    pop {r1}
    push {r1}
    svc 6
    add r4, r1, #0
    pop {r1,r3}
    pop {r0,r2}
    ldrb r5, [r0,r3]
    ldrb r6, [r0,r4]
    strb r6, [r0,r3]
    strb r5, [r0,r4]
    sub r2, #1
    bne loc_8000CA8
    pop {r4-r6,pc}
.thumb
sub_8000CDA:
    push {r4-r6,lr}
loc_8000CDC:
    push {r0,r2}
    push {r1}
    bl sub_8001532
    pop {r1}
    push {r1}
    svc 6
    add r3, r1, #0
    pop {r1}
    push {r1,r3}
    bl sub_8001532
    pop {r1}
    push {r1}
    svc 6
    add r4, r1, #0
    pop {r1,r3}
    pop {r0,r2}
    add r3, r3, r3
    add r4, r4, r4
    ldrh r5, [r0,r3]
    ldrh r6, [r0,r4]
    strh r6, [r0,r3]
    strh r5, [r0,r4]
    sub r2, #1
    bne loc_8000CDC
    pop {r4-r6,pc}
// end of function sub_8000CDA

.thumb
sub_8000D12:
    push {r4-r6,lr}
loc_8000D14:
    push {r0,r2}
    push {r1}
    bl sub_8001562
    pop {r1}
    push {r1}
    svc 6
    add r3, r1, #0
    pop {r1}
    push {r1,r3}
    bl sub_8001562
    pop {r1}
    push {r1}
    svc 6
    add r4, r1, #0
    pop {r1,r3}
    pop {r0,r2}
    add r3, r3, r3
    add r4, r4, r4
    ldrh r5, [r0,r3]
    ldrh r6, [r0,r4]
    strh r6, [r0,r3]
    strh r5, [r0,r4]
    sub r2, #1
    bne loc_8000D14
    pop {r4-r6,pc}
// end of function sub_8000D12

    push {r7,lr}
    add r7, r0, #0
    push {r1,r7}
    bl sub_8001532
    pop {r1,r7}
    bl SWI_Div
    ldrb r0, [r7,r1]
    pop {r7,pc}
    push {r4,r6,lr}
    cmp r1, #2
    bmi locret_8000D82
    mov r3, #1
loc_8000D66:
    ldrb r2, [r0,r3]
    mov r4, #0
loc_8000D6A:
    ldrb r6, [r0,r4]
    cmp r2, r6
    bhi loc_8000D74
    strb r2, [r0,r4]
    add r2, r6, #0
loc_8000D74:
    add r4, #1
    cmp r4, r3
    bmi loc_8000D6A
    strb r2, [r0,r3]
    add r3, #1
    cmp r3, r1
    bmi loc_8000D66
locret_8000D82:
    pop {r4,r6,pc}
.thumb
sub_8000D84:
    push {lr}
    sub sp, sp, #0x10
    ldr r1, [pc, #0x8000dd8-0x8000d88-4] // =0x1499727
    cmp r0, r1
    ble loc_8000D92
    ldr r0, [pc, #0x8000ddc-0x8000d8e-2] // =0x99595999
    b loc_8000DD4
loc_8000D92:
    bl sub_8000DE0
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    bl sub_8000C00
    str r0, [sp]
    ldr r0, [sp,#4]
    bl sub_8000C00
    str r0, [sp,#4]
    ldr r0, [sp,#8]
    bl sub_8000C00
    str r0, [sp,#8]
    ldr r0, [sp,#0xc]
    mov r1, #0x64 
    mul r0, r1
    mov r1, #0x3c 
    svc 6
    bl sub_8000C00
    ldr r1, [sp]
    ldr r2, [sp,#4]
    ldr r3, [sp,#8]
    lsl r1, r1, #0x18
    lsl r2, r2, #0x10
    lsl r3, r3, #8
    add r0, r0, r1
    add r0, r0, r2
    add r0, r0, r3
loc_8000DD4:
    add sp, sp, #0x10
    pop {pc}
dword_8000DD8:    .word 0x1499727
dword_8000DDC:    .word 0x99595999
// end of function sub_8000D84

.thumb
sub_8000DE0:
    push {lr}
    sub sp, sp, #0x10
    ldr r1, [pc, #0x8000e04-0x8000de4-4] // =0x34BC0
    svc 6
    str r0, [sp]
    add r0, r1, #0
    ldr r1, [pc, #0x8000e08-0x8000dec-4] // =0xE10
    svc 6
    str r0, [sp,#4]
    add r0, r1, #0
    ldr r1, [pc, #0x8000e0c-0x8000df4-4] // =0x3C
    svc 6
    add r2, r0, #0
    add r3, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    add sp, sp, #0x10
    pop {pc}
dword_8000E04:    .word 0x34BC0
off_8000E08:    .word 0xE10
off_8000E0C:    .word 0x3C
// end of function sub_8000DE0

.thumb
sub_8000E10:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r0, [r3,#0x18]
    add r0, #1
    ldr r1, [pc, #0x8000e24-0x8000e18-4] // =0x14988F0
    cmp r0, r1
    ble loc_8000E20
    add r0, r1, #0
loc_8000E20:
    str r0, [r3,#0x18]
    mov pc, lr
dword_8000E24:    .word 0x14988F0
// end of function sub_8000E10

.thumb
sub_8000E28:
    mov r3, r10
    ldr r3, [r3,#0x40]
    ldr r0, [r3,#0x18]
    mov pc, lr
// end of function sub_8000E28

    push {r4-r7,lr}
    mov r4, #0
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
.thumb
sub_8000E3A:
    push {r4-r7,lr}
    add r4, r1, #0
    push {r0,r1}
    push {r4}
    bl sub_800151C
    lsr r4, r0, #0x1e
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r1, #3
    and r0, r1
    add r4, r4, r0
loc_8000E54:
    bl sub_800151C
    sub r4, #1
    bge loc_8000E54
    pop {r4}
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    pop {r6,r7}
    sub r7, #1
    push {r6,r7}
    mov r1, #0
loc_8000E6A:
    ldrb r3, [r6,r7]
    add r1, r1, r3
    sub r7, #1
    bge loc_8000E6A
    svc 6
    add r1, #1
    mov r2, #0
    pop {r6,r7}
    mov r0, #0
loc_8000E7C:
    ldrb r3, [r6,r2]
    add r0, r0, r3
    cmp r0, r1
    bge loc_8000E8C
    add r2, #1
    cmp r2, r4
    blt loc_8000E7C
    mov r2, #0
loc_8000E8C:
    add r0, r2, #0
    pop {r4-r7,pc}
// end of function sub_8000E3A

    push {r5,r6,lr}
    add r5, r0, r1
    add r6, r0, #0
    add r7, r0, #0
loc_8000E98:
    ldrb r2, [r6]
    cmp r2, #0xff
    beq loc_8000EA2
    strb r2, [r7]
    add r7, #1
loc_8000EA2:
    add r6, #1
    sub r1, #1
    bne loc_8000E98
    mov r1, #0xff
loc_8000EAA:
    cmp r7, r5
    beq locret_8000EB4
    strb r1, [r7]
    add r7, #1
    b loc_8000EAA
locret_8000EB4:
    pop {r5,r6,pc}
.thumb
sub_8000EB6:
    push {r5-r7,lr}
    add r2, r1, r1
    add r5, r0, r2
    add r6, r0, #0
    add r7, r0, #0
    ldr r3, [pc, #0x8000ee0-0x8000ec0-4] // =0xFFFF
loc_8000EC2:
    ldrh r2, [r6]
    cmp r2, r3
    beq loc_8000ECC
    strh r2, [r7]
    add r7, #2
loc_8000ECC:
    add r6, #2
    sub r1, #1
    bne loc_8000EC2
loc_8000ED2:
    cmp r7, r5
    beq locret_8000EDC
    strh r3, [r7]
    add r7, #2
    b loc_8000ED2
locret_8000EDC:
    pop {r5-r7,pc}
    .byte 0, 0
dword_8000EE0:    .word 0xFFFF
// end of function sub_8000EB6

.thumb
sub_8000EE4:
    push {r4-r7,lr}
    mov r4, #0
    mov r7, #0
    mov r0, #0xe
    mov r1, #0
    bl sub_802F164
    beq loc_8000EFA
    add r4, #1
    mov r0, #0x80
    orr r7, r0
loc_8000EFA:
    mov r0, #0
    bl sub_81207F8
    cmp r0, #0xc8
    blt loc_8000F0A
    add r4, #1
    mov r0, #0x40 
    orr r7, r0
loc_8000F0A:
    mov r0, #1
    bl sub_81207F8
    cmp r0, #0x27 
    blt loc_8000F1A
    add r4, #1
    mov r0, #0x20 
    orr r7, r0
loc_8000F1A:
    mov r0, #2
    bl sub_81207F8
    cmp r0, #5
    blt loc_8000F2A
    add r4, #1
    mov r0, #0x10
    orr r7, r0
loc_8000F2A:
    mov r0, #5
    bl sub_81207F8
    cmp r0, #0xf
    blt loc_8000F3A
    add r4, #1
    mov r0, #8
    orr r7, r0
loc_8000F3A:
    mov r0, #4
    bl sub_81207F8
    cmp r0, #0x1d
    blt loc_8000F4A
    add r4, #1
    mov r0, #4
    orr r7, r0
loc_8000F4A:
    mov r0, #3
    mov r1, #0x70 
    bl sub_802F164
    beq loc_8000F5A
    add r4, #1
    mov r0, #2
    orr r7, r0
loc_8000F5A:
    mov r0, #3
    mov r1, #0x40 
    bl sub_802F164
    beq loc_8000F6C
    add r4, #1
    mov r0, #0x10
    lsl r0, r0, #4
    orr r7, r0
loc_8000F6C:
    mov r0, #3
    mov r1, #0xbd
    mov r2, #5
    bl sub_802F1FC
    beq loc_8000F80
    add r4, #1
    mov r0, #0x20 
    lsl r0, r0, #4
    orr r7, r0
loc_8000F80:
    add r0, r4, #0
    add r1, r7, #0
    pop {r4-r7,pc}
// end of function sub_8000EE4

.thumb
sub_8000F86:
    push {r4-r7,lr}
    add r4, r0, #0
    bl sub_803F838
    bne locret_8000FAA
    mov r0, #0xe
    mov r1, #0
    bl sub_802F110
    mov r0, #0x10
    mov r1, #1
    bl sub_802F110
    mov r0, r10
    ldr r0, [r0,#0x40]
    str r4, [r0,#0x18]
    bl sub_803F79E
locret_8000FAA:
    pop {r4-r7,pc}
// end of function sub_8000F86

.thumb
sub_8000FAC:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r0, #0x17
    mov r1, #0xc
    bl sub_802F164
    bne loc_8000FCE
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    bne loc_8000FCE
    ldrb r0, [r5,#5]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    bne loc_8000FCE
    b loc_8000FDC
loc_8000FCE:
    mov r0, #0
    str r0, [r5,#0x1c]
    mov r6, r10
    ldr r6, [r6,#0x40]
    str r0, [r6,#0x1c]
    str r0, [r6,#0x2c]
    str r0, [r6,#0x28]
loc_8000FDC:
    mov r0, #0x17
    mov r1, #0xc
    bl sub_802F12C
    pop {r4-r7,pc}
// end of function sub_8000FAC

.thumb
sub_8000FE6:
    push {r4-r7,lr}
    add r6, r0, #0
    add r4, r1, #0
loc_8000FEC:
    add r0, r6, #0
    bl sub_802F168
    bne loc_8000FFA
    add r0, r6, #0
    bl sub_813E5DC
loc_8000FFA:
    add r6, #1
    sub r4, #1
    bgt loc_8000FEC
    pop {r4-r7,pc}
// end of function sub_8000FE6

    push {r4-r7,lr}
    ldr r0, [pc, #0x8001010-0x8001004-4] // =0x17A0
    mov r1, #0xa
    bl sub_8000FE6
    pop {r4-r7,pc}
    .byte 0, 0
off_8001010:    .word 0x17A0
.thumb
sub_8001014:
    push {r4-r7,lr}
    add r6, r0, #0
    add r4, r1, #0
loc_800101A:
    add r0, r6, #0
    bl sub_802F168
    bne loc_8001028
    add r0, r6, #0
    bl sub_813F9A0
loc_8001028:
    add r6, #1
    sub r4, #1
    bgt loc_800101A
    pop {r4-r7,pc}
// end of function sub_8001014

    push {r4-r7,lr}
    ldr r0, [pc, #0x800103c-0x8001032-2] // =0x17A0
    mov r1, #0xa
    bl sub_8001014
    pop {r4-r7,pc}
off_800103C:    .word 0x17A0
.thumb
sub_8001040:
    push {r4-r7,lr}
    mov r5, #1
    lsl r5, r5, #0x10
    b loc_800104A
loc_8001048:
    push {r4-r7,lr}
loc_800104A:
    mov r6, r10
    ldr r6, [r6,#0x24]
    ldrh r6, [r6]
    lsl r0, r0, #0x10
    orr r0, r1
    orr r0, r2
    mov r7, #0x10
    and r7, r6
    lsr r7, r7, #2
    add r1, r3, r7
    mov r3, #0xff
    and r3, r5
    lsr r2, r5, #0x10
    bl sub_802FE28
// end of function sub_8001040

    tst r4, r4
    beq locret_8001078
    mov r7, #0xf
    and r7, r6
    bne locret_8001078
    mov r0, #0x91
    bl sound_play
locret_8001078:
    pop {r4-r7,pc}
.thumb
sub_800107A:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r1, [r3,#0x18]
    ldr r0, [r1,#0x1c]
    str r0, [r3,#0x24]
    ldr r0, [r1,#0x20]
    str r0, [r3,#0x28]
    ldr r0, [r1,#0x24]
    str r0, [r3,#0x2c]
    ldrb r0, [r1,#0x10]
    str r0, [r3,#0x30]
    mov pc, lr
// end of function sub_800107A

    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    str r0, [r5,#0x34]
    str r1, [r5,#0x38]
    str r2, [r5,#0x3c]
    str r3, [r5,#0x40]
    str r4, [r5,#0x44]
    pop {r4-r7,pc}
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    str r0, [r5,#0x48]
    str r1, [r5,#0x4c]
    str r2, [r5,#0x50]
    str r3, [r5,#0x54]
    str r4, [r5,#0x58]
    pop {r4-r7,pc}
.thumb
getPETNaviSelect:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrb r0, [r3,#1]
    mov pc, lr
// end of function getPETNaviSelect

.thumb
sub_80010BE:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    strb r0, [r3,#1]
    mov pc, lr
// end of function sub_80010BE

.thumb
sub_80010C6:
    push {lr}
    bl getPETNaviSelect
    mov r3, r10
    ldr r3, [r3,#0x40]
    strb r0, [r3,#7]
    pop {pc}
// end of function sub_80010C6

.thumb
sub_80010D4:
    push {r4-r7,lr}
    add r4, r0, #0
    mov r1, #0x42 
    bl sub_80137FE
    add r6, r0, #0
    add r0, r4, #0
    mov r1, #0x40 
    bl sub_80137FE
    add r1, r6, #0
    pop {r4-r7,pc}
// end of function sub_80010D4

.thumb
sub_80010EC:
    push {r4-r7,lr}
    add r4, r0, #0
    add r6, r1, #0
    mov r1, #0x42 
    bl sub_80137FE
    cmp r6, r0
    ble loc_80010FE
    add r6, r0, #0
loc_80010FE:
    add r0, r4, #0
    mov r1, #0x40 
    add r2, r6, #0
    bl sub_80137E6
    pop {r4-r7,pc}
// end of function sub_80010EC

    push {r4-r7,lr}
    ldr r6, [pc, #0x8001140-0x800110c-4] // =loc_8001144
    add r7, r0, #0
    sub r5, r1, #2
    mov r4, #0xf
loc_8001114:
    ldrh r0, [r7,r5]
    lsr r3, r0, #0xc
    and r3, r4
    lsr r2, r0, #8
    and r2, r4
    lsr r1, r0, #4
    and r1, r4
    and r0, r4
    ldrb r0, [r6,r0]
    ldrb r1, [r6,r1]
    lsl r1, r1, #4
    orr r0, r1
    ldrb r2, [r6,r2]
    lsl r2, r2, #8
    orr r0, r2
    ldrb r3, [r6,r3]
    lsl r3, r3, #0xc
    orr r0, r3
    strh r0, [r7,r5]
    sub r5, #2
    bge loc_8001114
    pop {r4-r7,pc}
off_8001140:    .word loc_8001144
loc_8001144:
    lsl r0, r0, #4
    lsl r2, r0, #0xc
    lsl r0, r0, #0x14
    lsl r6, r0, #0x1c
    lsr r0, r0, #4
    lsr r2, r1, #0xc
    lsr r0, r0, #0x14
    lsr r6, r1, #0x1c
    push {r4-r7,lr}
    pop {r4-r7,pc}
.thumb
sub_8001158:
    push {r4-r7,lr}
    add r7, r0, #0
loc_800115C:
    ldr r0, [r7]
    tst r0, r0
    beq locret_8001170
    ldr r1, [r7,#4]
    mov r2, #0
    mov r3, #0
    bl sub_802FE28
    add r7, #8
    b loc_800115C
locret_8001170:
    pop {r4-r7,pc}
// end of function sub_8001158

.thumb
sub_8001172:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    strb r0, [r3,#9]
    mov pc, lr
    .balign 4, 0x00
// end of function sub_8001172

.thumb
calcAngle_800117C:
    push {lr}
    asr r2, r0, #0x10
    asr r0, r1, #0x10
    add r1, r2, #0
    svc 0xa
    lsr r0, r0, #8
    pop {pc}
// end of function calcAngle_800117C

.thumb
sub_800118A:
    push {lr}
    add r2, r0, #0
    orr r2, r1
    beq locret_800119E
    bl calcAngle_800117C
    add r0, #0x20 
    lsl r0, r0, #0x18
    lsr r0, r0, #0x1e
    add r0, #1
locret_800119E:
    pop {pc}
// end of function sub_800118A

.thumb
sub_80011A0:
    lsl r0, r0, #1
    ldr r2, [pc, #0x80011b8-0x80011a2-2] // =dword_8006660
    ldrsh r3, [r2,r0]
    ldr r2, [pc, #0x80011bc-0x80011a6-2] // =unk_80066E0
    ldrsh r2, [r2,r0]
    neg r2, r2
    mul r3, r1
    asr r0, r3, #8
    mul r2, r1
    asr r1, r2, #8
    mov pc, lr
    .balign 4, 0x00
off_80011B8:    .word dword_8006660
off_80011BC:    .word unk_80066E0
// end of function sub_80011A0

    push {lr}
    tst r0, r0
    beq loc_80011D0
    sub r0, #1
    lsl r0, r0, #6
    bl sub_80011A0
    pop {pc}
loc_80011D0:
    mov r0, #0
    mov r1, #0
    pop {pc}
.thumb
sub_80011D6:
    sub r0, r0, r2
    add r0, r0, r4
    lsl r2, r4, #1
    cmp r0, r2
    bcs loc_80011EC
    sub r1, r1, r3
    add r1, r1, r4
    cmp r1, r2
    bcs loc_80011EC
    mov r0, #1
    mov pc, lr
loc_80011EC:
    mov r0, #0
    mov pc, lr
// end of function sub_80011D6

    sub r0, r0, r2
    sub r1, r1, r3
    add r2, r4, #0
    mul r4, r2
    add r2, r0, #0
    mul r0, r2
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    cmp r4, r0
    bmi loc_800120A
    mov r0, #1
    mov pc, lr
loc_800120A:
    mov r0, #0
    mov pc, lr
.thumb
sub_800120E:
    push {r5,lr}
    tst r4, r4
    bne loc_800123C
loc_8001214:
    ldr r0, [r0,#8]
    sub r0, r3, r0
    bmi loc_8001220
    add r0, r4, #0
    mov r1, #0
    pop {r5,pc}
loc_8001220:
    lsr r1, r6, #8
    bl SWI_Div
    bl SWI_Sqrt
    mov r2, #0
    mov r1, #0xff
    tst r0, r1
    beq loc_8001234
    mov r2, #1
loc_8001234:
    lsr r0, r0, #8
    add r1, r0, r2
    mov r0, #0
    pop {r5,pc}
loc_800123C:
    ldmia r0!, {r5,r7}
    push {r0,r3}
    sub r1, r1, r5
    asr r1, r1, #8
    add r5, r1, #0
    mul r1, r5
    sub r2, r2, r7
    asr r2, r2, #8
    add r5, r2, #0
    mul r2, r5
    add r0, r1, r2
    bl SWI_Sqrt
    lsl r0, r0, #8
    push {r4}
    add r1, r4, #0
    bl SWI_Div
    pop {r4}
    lsr r4, r4, #1
    cmp r1, r4
    bmi loc_800126A
    add r0, #1
loc_800126A:
    add r1, r0, #0
    pop {r0,r3}
    tst r1, r1
    beq loc_8001214
    ldr r0, [r0]
    sub r0, r3, r0
    push {r1}
    bl SWI_Div
    pop {r1}
    neg r2, r6
    mul r2, r1
    lsr r2, r2, #1
    add r0, r0, r2
    pop {r5,pc}
// end of function sub_800120E

    push {lr}
    ldr r7, [r0]
    sub r1, r1, r7
    ldr r7, [r0,#4]
    sub r2, r2, r7
    push {r1,r2}
    lsl r0, r3, #1
    neg r1, r4
    bl SWI_Div
    lsr r3, r3, #1
    cmp r1, r3
    bmi loc_80012A4
    add r0, #1
loc_80012A4:
    pop {r1,r2}
    push {r0,r1}
    add r1, r0, #0
    add r0, r2, #0
    bl SWI_Div
    add r2, r0, #0
    pop {r0,r1}
    push {r0,r2}
    add r2, r1, #0
    add r1, r0, #0
    add r0, r2, #0
    bl SWI_Div
    add r1, r0, #0
    pop {r0,r2}
    pop {pc}
    push {lr}
    mov r7, r8
    push {r7}
    sub sp, sp, #8
    str r5, [sp]
    push {r4,r6}
    ldmia r0!, {r3-r5}
    sub r0, r2, r4
    sub r1, r1, r3
    push {r0,r1}
    bl calcAngle_800117C
    mov r8, r0
    add r4, r0, #0
    pop {r0,r1}
    asr r0, r0, #8
    add r2, r0, #0
    mul r0, r2
    asr r1, r1, #8
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    svc 8
    lsl r0, r0, #8
    add r1, r6, #0
    lsl r1, r1, #1
    svc 6
    add r1, r0, #0
    add r0, r4, #0
    bl sub_80011A0
    pop {r4,r6}
    push {r0,r1}
    lsl r0, r4, #1
    add r1, r6, #0
    mul r1, r6
    lsl r0, r0, #0x10
    bl SWI_Div
    neg r3, r0
    mul r0, r6
    add r2, r0, #0
    pop {r0,r1}
    ldr r5, [sp]
    add sp, sp, #8
    mov r4, r8
    add r4, #0x20 
    mov r6, #0xe0
    and r4, r6
    lsr r4, r4, #5
    pop {r7}
    mov r8, r7
    pop {pc}
.thumb
sub_8001330:
    push {r4-r6,lr}
    push {r3,r4,r6}
    add r6, r4, #0
    ldmia r0!, {r3-r5}
    push {r5}
    sub r0, r2, r4
    sub r1, r1, r3
    push {r0,r1}
    bl calcAngle_800117C
    add r4, r0, #0
    pop {r0,r1}
    asr r0, r0, #8
    add r2, r0, #0
    mul r0, r2
    asr r1, r1, #8
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    svc 8
    lsl r0, r0, #8
    add r1, r6, #0
    svc 6
    add r1, r0, #0
    add r0, r4, #0
    bl sub_80011A0
    pop {r5}
    pop {r3,r4,r6}
    push {r0,r1}
    add r0, r4, #0
    mul r0, r4
    mul r0, r6
    asr r0, r0, #1
    sub r3, r3, r5
    sub r0, r3, r0
    add r1, r4, #0
    svc 6
    add r2, r0, #0
    pop {r0,r1}
    pop {r4-r6,pc}
// end of function sub_8001330

.thumb
sub_8001382:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldr r2, [r1,#0x5c]
    orr r2, r0
    str r2, [r1,#0x5c]
    mov pc, lr
// end of function sub_8001382

    mov r1, r10
    ldr r1, [r1,#0x18]
    ldr r2, [r1,#0x5c]
    bic r2, r0
    str r2, [r1,#0x5c]
    mov pc, lr
.thumb
sub_800139A:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x5c]
    mov pc, lr
// end of function sub_800139A

.thumb
sub_80013A2:
    mov r1, r10
    ldr r1, [r1,#0x18]
    str r0, [r1,#0x5c]
    mov pc, lr
// end of function sub_80013A2

    push {r4-r7,lr}
    sub sp, sp, #0x40
    str r6, [sp,#4]
    str r7, [sp,#0x10]
    ldr r7, [pc, #0x80014b8-0x80013b2-2] // =byte_20099CC
    ldrb r7, [r7]
    str r3, [sp,#0x24]
    str r4, [sp,#0x28]
    str r2, [sp]
    mov r2, #0xff
    and r2, r1
    str r2, [sp,#0x20]
    add r2, r1, #0
    lsl r2, r2, #0x17
    lsr r2, r2, #0x1f
    eor r2, r7
    str r2, [sp,#0x38]
    neg r2, r2
    add r2, r2, r2
    add r2, #1
    str r2, [sp,#0x18]
    add r2, r1, #0
    lsl r2, r2, #0x16
    lsr r2, r2, #0x1f
    str r2, [sp,#0x3c]
    neg r2, r2
    add r2, r2, r2
    add r2, #1
    str r2, [sp,#0x1c]
    lsl r5, r5, #0xc
    str r5, [sp,#0x2c]
    ldr r1, [sp,#0x20]
    lsl r1, r1, #2
    ldr r1, [r0,r1]
    add r1, r1, r0
    ldr r2, [r1,#4]
    add r2, r2, r0
    str r2, [sp,#0xc]
    ldr r2, [r1]
    add r2, r2, r0
    str r2, [sp,#8]
    ldr r2, [r1,#8]
    ldr r3, [r2,r0]
    add r2, r2, r3
    add r2, r2, r0
    ldrb r2, [r2]
    lsl r2, r2, #2
    ldr r3, [r1,#0xc]
    add r3, r3, r0
    ldr r2, [r3,r2]
    add r3, r3, r2
    ldr r2, [sp]
    ldr r4, [sp,#4]
    mov r1, #0
    str r1, [sp,#0x14]
loc_8001418:
    ldrb r0, [r3]
    cmp r0, #0xff
    beq loc_80014A8
    ldr r1, [sp,#0x10]
    sub r1, #8
    str r1, [sp,#0x10]
    blt loc_80014A8
    ldr r1, [sp,#0x2c]
    add r0, r0, r1
    ldr r1, [sp,#4]
    add r0, r0, r1
    str r0, [r2,#4]
    ldrb r0, [r3,#4]
    ldrb r1, [r3,#3]
    lsl r1, r1, #0x1c
    lsr r1, r1, #0x1c
    lsl r4, r0, #2
    add r4, r4, r1
    add r4, r4, r4
    ldr r5, [pc, #0x80014b4-0x800143e-2] // =dword_80014BC
    add r4, r4, r5
    ldrb r5, [r4]
    ldr r6, [sp,#0x38]
    mul r5, r6
    str r5, [sp,#0x30]
    ldrb r5, [r4,#1]
    ldr r6, [sp,#0x3c]
    mul r5, r6
    str r5, [sp,#0x34]
    lsl r0, r0, #0xe
    lsl r1, r1, #0x1e
    add r0, r0, r1
    mov r1, #2
    ldrsb r4, [r3,r1]
    ldr r1, [sp,#0x1c]
    mul r1, r4
    ldr r4, [sp,#0x28]
    add r1, r1, r4
    ldr r4, [sp,#0x34]
    sub r1, r1, r4
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    add r0, r0, r1
    mov r1, #1
    ldrsb r1, [r3,r1]
    ldr r4, [sp,#0x18]
    mul r1, r4
    ldr r4, [sp,#0x24]
    add r1, r1, r4
    ldr r4, [sp,#0x30]
    sub r1, r1, r4
    lsl r1, r1, #0x17
    lsr r1, r1, #7
    add r0, r0, r1
    ldr r1, [sp,#0x38]
    lsl r1, r1, #0x1c
    ldrb r4, [r3,#3]
    mov r5, #0xf0
    and r5, r4
    lsl r5, r5, #0x16
    eor r1, r5
    add r0, r0, r1
    ldr r1, [sp,#0x3c]
    lsl r1, r1, #0x1d
    add r0, r0, r1
    str r0, [r2]
    ldr r1, [sp,#0x14]
    add r1, #1
    str r1, [sp,#0x14]
    add r2, #8
    add r3, #5
    b loc_8001418
loc_80014A8:
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    ldr r2, [sp,#0x14]
    add sp, sp, #0x40
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80014B4:    .word dword_80014BC
off_80014B8:    .word byte_20099CC
dword_80014BC:    .word 0x10100808, 0x40402020, 0x8200810, 0x20401020, 0x20081008
    .word 0x40202010
.thumb
sub_80014D4:
    push {lr}
    asr r0, r0, #0xc
    add r2, r0, #0
    mul r0, r2
    asr r1, r1, #0xc
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    svc 8
    lsl r0, r0, #0xc
    pop {pc}
    .balign 4, 0x00
// end of function sub_80014D4

.thumb
sub_80014EC:
    push {r0-r7,lr}
    cmp r0, r1
    blt loc_8001500
loc_80014F2:
    ldr r3, [r0]
    str r3, [r1]
    add r0, #4
    add r1, #4
    sub r2, #4
    bgt loc_80014F2
    pop {r0-r7,pc}
loc_8001500:
    sub r2, #4
    add r0, r0, r2
    add r1, r1, r2
loc_8001506:
    ldr r3, [r0]
    str r3, [r1]
    sub r0, #4
    sub r1, #4
    sub r2, #4
    bge loc_8001506
    pop {r0-r7,pc}
// end of function sub_80014EC

.thumb
sub_8001514:
    ldr r0, [pc, #0x8001594-0x8001514-4] // =0xA338244F
    ldr r1, [pc, #0x8001598-0x8001516-2] // =dword_20013F0
    str r0, [r1]
    mov pc, lr
// end of function sub_8001514

.thumb
sub_800151C:
    push {r7,lr}
    ldr r7, [pc, #0x800159c-0x800151e-2] // =dword_20013F0
    ldr r0, [r7]
    ldr r1, [pc, #0x80015a0-0x8001522-2] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    pop {r7,pc}
// end of function sub_800151C

.thumb
sub_8001532:
    push {r7,lr}
    ldr r7, [pc, #0x80015a4-0x8001534-4] // =dword_20013F0
    ldr r0, [r7]
    ldr r1, [pc, #0x80015a0-0x8001538-4] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    lsl r0, r0, #1
    lsr r0, r0, #1
    pop {r7,pc}
// end of function sub_8001532

.thumb
sub_800154C:
    push {r7,lr}
    ldr r7, [pc, #0x80015a8-0x800154e-2] // =dword_2001120
    ldr r0, [r7]
    ldr r1, [pc, #0x80015a0-0x8001552-2] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    pop {r7,pc}
// end of function sub_800154C

.thumb
sub_8001562:
    push {r7,lr}
    ldr r7, [pc, #0x80015ac-0x8001564-4] // =dword_2001120
    ldr r0, [r7]
    ldr r1, [pc, #0x80015a0-0x8001568-4] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    lsl r0, r0, #1
    lsr r0, r0, #1
    pop {r7,pc}
// end of function sub_8001562

    push {r7,lr}
    ldr r7, [pc, #0x80015b0-0x800157e-2] // =dword_20018E8
    ldr r0, [r7]
    ldr r1, [pc, #0x80015a0-0x8001582-2] // =0x873CA9E5
    lsl r2, r0, #1
    lsr r3, r0, #0x1f
    add r0, r2, r3
    add r0, #1
    eor r0, r1
    str r0, [r7]
    pop {r7,pc}
    .balign 4, 0x00
dword_8001594:    .word 0xA338244F
off_8001598:    .word dword_20013F0
off_800159C:    .word dword_20013F0
dword_80015A0:    .word 0x873CA9E5
off_80015A4:    .word dword_20013F0
off_80015A8:    .word dword_2001120
off_80015AC:    .word dword_2001120
off_80015B0:    .word dword_20018E8
.thumb
sub_80015B4:
    push {lr}
    ldr r0, [pc, #0x80015c8-0x80015b6-2] // =0x600E000
    ldr r1, [pc, #0x80015cc-0x80015b8-4] // =0x2000
    bl sub_8000900
    bl sub_800183C
    bl sub_8001850
    pop {pc}
dword_80015C8:    .word 0x600E000
dword_80015CC:    .word 0x2000
// end of function sub_80015B4

.thumb
render_80015D0:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x28]
    ldr r1, [pc, #0x80015ec-0x80015d6-2] // =0x600E000
    ldr r2, [pc, #0x80015f0-0x80015d8-4] // =0x2000
    bl sub_8000950
    mov r0, r10
    ldr r0, [r0,#0x28]
    ldr r1, [pc, #0x80015f4-0x80015e2-2] // =0x800
    ldr r2, [pc, #0x80015f8-0x80015e4-4] // =0x2FF02FF
    bl sub_80009AC
    pop {pc}
dword_80015EC:    .word 0x600E000
dword_80015F0:    .word 0x2000
dword_80015F4:    .word 0x800
dword_80015F8:    .word 0x2FF02FF
// end of function render_80015D0

.thumb
sub_80015FC:
    ldr r1, [pc, #0x8001614-0x80015fc-4] // =dword_8001618
    lsl r0, r0, #3
    add r1, r1, r0
    mov r3, r10
    ldr r2, [r3,#8]
    add r2, #4
    ldr r0, [r1]
    str r0, [r2]
    ldr r0, [r1,#4]
    str r0, [r2,#4]
    mov pc, lr
    .balign 4, 0x00
off_8001614:    .word dword_8001618
dword_8001618:    .word 0x0, 0x0
    .word 0x3C08
    .byte 0, 0, 0, 0
    .word 0x3D013C08, 0x0
    .word 0x3C08
    .byte 0, 0, 0, 0
    .word 0x3D033C08, 0x3F053E02, 0x3D033C08, 0x3F0B3E02, 0x3D833C08
    .word 0x3F8D3E82, 0x3D833C08, 0x3F8D3E0E, 0x3D033C08, 0x3F093E02
    .word 0x3D033C08, 0x0
    .word 0x3D833C08, 0x3F813E02, 0x3D033C08, 0x3F815E02, 0x3D033C08
    .word 0x3F853E02, 0x3D833C08, 0x3F093E02, 0x3D033C08, 0x3F053E02
    .word 0x3D033C08, 0x3F053E02, 0x3D033C08, 0x3F093E02, 0x3D033C08
    .word 0x3F013E02, 0x3D033C08, 0x3F013E02, 0x3D033C08, 0x3F093E0A
    .word 0x3D033C08, 0x3F013E02, 0x3D033C08, 0x3F093E02, 0x3D033C08
    .word 0x3F093E02, 0x3D033C08, 0x3F093E02, 0x3D033C08, 0x3F093E02
    .word 0x3D033C08, 0x3F083E01, 0x3D033C08, 0x3F053E02, 0xE1033C08
    .word 0x3F013E02, 0x3D033C08, 0x3F013E02, 0x3D033C08, 0x3F093E02
// end of function sub_80015FC

.thumb
sub_8001708:
    push {lr}
    cmp r0, #0x80
    bge loc_8001712
    ldr r3, [pc, #0x8001724-0x800170e-2] // =off_803385C
    b loc_8001716
loc_8001712:
    ldr r3, [pc, #0x8001728-0x8001712-2] // =dword_8033878
    sub r0, #0x80
loc_8001716:
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    add r3, r3, r1
    ldrb r0, [r3]
    bl sub_80015FC
    pop {pc}
off_8001724:    .word off_803385C
off_8001728:    .word dword_8033878
// end of function sub_8001708

.thumb
render_800172C:
    push {r4-r7,lr}
    mov r7, r10
    ldr r5, [r7,#8]
    ldr r1, [pc, #0x8001768-0x8001732-2] // =MosaicSize
    ldrh r2, [r5,#2]
    strh r2, [r1]
    add r0, r5, #0
    add r0, #4
    ldr r1, [pc, #0x800176c-0x800173c-4] // =BG0Control
    mov r2, #0x38 
    bl sub_800093C
    ldr r0, [r7,#0x1c]
    ldr r1, [pc, #0x8001770-0x8001746-2] // =Window0HorizontalDimensions
    mov r2, #0xc
    bl sub_800092A
    ldr r5, [r7,#0x20]
    ldr r1, [pc, #0x8001774-0x8001750-4] // =ColorSpecialEffectsSelection
    ldr r2, [r5]
    str r2, [r1]
    ldrh r2, [r5,#4]
    strh r2, [r1,#0x4] // (brightness_fade_in_out_coefficient - 0x4000050)
    ldr r5, [r7,#8]
    ldr r1, [pc, #0x8001764-0x800175c-4] // =LCDControl
    ldrh r2, [r5]
    strh r2, [r1]
    pop {r4-r7,pc}
off_8001764:    .word LCDControl
off_8001768:    .word MosaicSize
off_800176C:    .word BG0Control
off_8001770:    .word Window0HorizontalDimensions
off_8001774:    .word ColorSpecialEffectsSelection
// end of function render_800172C

.thumb
sub_8001778:
    mov r1, r10
    ldr r1, [r1,#8]
    strh r0, [r1]
    mov pc, lr
// end of function sub_8001778

.thumb
sub_8001780:
    mov r1, r10
    ldr r1, [r1,#8]
    ldrh r0, [r1]
    mov pc, lr
// end of function sub_8001780

.thumb
sub_8001788:
    mov r0, r10
    ldr r0, [r0,#8]
    mov r1, #0
    strh r1, [r0,#0xc]
    strh r1, [r0,#0xe]
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x1a]
    strh r1, [r0,#0x18]
    mov pc, lr
// end of function sub_8001788

.thumb
sub_80017A0:
    mov r0, r10
    ldr r0, [r0,#8]
    mov r1, #0
    strh r1, [r0,#2]
    mov pc, lr
// end of function sub_80017A0

.thumb
sub_80017AA:
    push {lr}
    ldr r0, [pc, #0x80017d0-0x80017ac-4] // =0x6000000
    mov r1, #0x40 
    bl sub_8000900
    ldr r0, [pc, #0x80017d4-0x80017b4-4] // =0x6004000
    mov r1, #0x40 
    bl sub_8000900
    ldr r0, [pc, #0x80017d8-0x80017bc-4] // =0x6008000
    mov r1, #0x40 
    bl sub_8000900
    ldr r0, [pc, #0x80017dc-0x80017c4-4] // =0x600C000
    mov r1, #0x20 
    bl sub_8000900
    pop {pc}
    .byte 0, 0
dword_80017D0:    .word 0x6000000
dword_80017D4:    .word 0x6004000
dword_80017D8:    .word 0x6008000
dword_80017DC:    .word 0x600C000
// end of function sub_80017AA

.thumb
sub_80017E0:
    push {lr}
    ldr r0, [pc, #0x8001800-0x80017e2-2] // =word_3001960
    mov r1, #2
    bl sub_80008C0
    pop {pc}
// end of function sub_80017E0

.thumb
main_static_80017EC:
    push {lr}
    ldr r0, [pc, #0x8001800-0x80017ee-2] // =word_3001960
    mov r1, #2
    bl sub_80008C0
    ldr r0, [pc, #0x8001804-0x80017f6-2] // =0x5000000
    mov r1, #2
    bl sub_80008C0
    pop {pc}
off_8001800:    .word word_3001960
dword_8001804:    .word 0x5000000
// end of function main_static_80017EC

.thumb
renderPalletes_8001808:
    push {lr}
    ldr r0, [pc, #0x8001818-0x800180a-2] // =unk_3001B60
    ldr r1, [pc, #0x800181c-0x800180c-4] // =0x5000000
    mov r2, #0x20 
    lsl r2, r2, #4
    bl sub_8000950
    pop {pc}
off_8001818:    .word unk_3001B60
dword_800181C:    .word 0x5000000
// end of function renderPalletes_8001808

.thumb
sub_8001820:
    push {lr}
    mov r2, r10
    ldr r0, [r2,#0x20]  // memBlock
    mov r1, #8  // numWords
    bl CpuSet_ZeroFillWord
    pop {pc}
// end of function sub_8001820

.thumb
sub_800182E:
    push {lr}
    mov r2, r10
    ldr r0, [r2,#0x1c]  // memBlock
    mov r1, #0xc  // numWords
    bl CpuSet_ZeroFillWord
    pop {pc}
// end of function sub_800182E

.thumb
sub_800183C:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x28]
    ldr r1, [pc, #0x800184c-0x8001842-2] // =0x2000
    bl sub_8000900
    pop {pc}
    .balign 4, 0x00
dword_800184C:    .word 0x2000
// end of function sub_800183C

.thumb
sub_8001850:
    push {lr}
    ldr r0, [pc, #0x8001868-0x8001852-2] // =dword_86A5520
    ldr r1, [pc, #0x800186c-0x8001854-4] // =0x600D400
    ldr r2, [pc, #0x8001870-0x8001856-2] // =0x800
    bl sub_8000950
    ldr r0, [pc, #0x8001874-0x800185c-4] // =dword_86BEC80
    ldr r1, [pc, #0x8001878-0x800185e-2] // =unk_3001B40
    mov r2, #0x20 
    bl sub_8000950
    pop {pc}
off_8001868:    .word dword_86A5520
dword_800186C:    .word 0x600D400
dword_8001870:    .word 0x800
off_8001874:    .word dword_86BEC80
off_8001878:    .word unk_3001B40
// end of function sub_8001850

.thumb
sub_800187C:
    lsl r0, r0, #1
    lsl r1, r1, #6
    lsl r2, r2, #0xb
    add r0, r0, r1
    add r0, r0, r2
    mov r1, r10
    ldr r1, [r1,#0x28]
    add r1, r1, r0
    strh r3, [r1]
    mov pc, lr
// end of function sub_800187C

.thumb
sub_8001890:
    push {r4-r7,lr}
    mov r6, r10
    ldr r6, [r6,#0x28]
    lsl r2, r2, #0xb
    add r6, r6, r2
    lsl r0, r0, #1
    add r6, r6, r0
    lsl r1, r1, #6
    add r6, r6, r1
    mov r2, #0
    add r1, r6, #0
loc_80018A6:
    ldrh r7, [r3]
    strh r7, [r6]
    add r3, #2
    add r6, #2
    add r2, #1
    cmp r2, r4
    blt loc_80018A6
    mov r2, #0
    add r1, #0x40 
    add r6, r1, #0
    sub r5, #1
    cmp r5, #0
    bgt loc_80018A6
    pop {r4-r7,pc}
// end of function sub_8001890

.thumb
sub_80018C2:
    push {r6,r7,lr}
    ldr r7, [pc, #0x80018cc-0x80018c4-4] // =loc_3005E80+1
    mov lr, pc
    bx r7
// end of function sub_80018C2

    pop {r6,r7,pc}
off_80018CC:    .word loc_3005E80+1
.thumb
sub_80018D0:
    push {r6,r7,lr}
    ldr r7, [pc, #0x80018dc-0x80018d2-2] // =loc_3005EBA+1
    mov lr, pc
    bx r7
// end of function sub_80018D0

    pop {r6,r7,pc}
    .balign 4, 0x00
off_80018DC:    .word loc_3005EBA+1
.thumb
sub_80018E0:
    push {r6,r7,lr}
    mov r6, r10
    ldr r6, [r6,#0x28]
    lsl r2, r2, #0xb
    add r6, r6, r2
    lsl r1, r1, #6
    add r6, r6, r1
    mov r1, #0x1f
    and r0, r1
loc_80018F2:
    ldrh r7, [r3]
    lsl r1, r0, #1
    strh r7, [r6,r1]
    add r0, #1
    mov r1, #0x1f
    and r0, r1
    add r3, #2
    sub r4, #1
    cmp r4, #0
    bgt loc_80018F2
    pop {r6,r7,pc}
// end of function sub_80018E0

    push {r6,r7,lr}
    mov r6, r10
    ldr r6, [r6,#0x28]
    lsl r2, r2, #0xb
    add r6, r6, r2
    lsl r0, r0, #1
    add r6, r6, r0
    mov r0, #0x1f
    and r1, r0
loc_800191A:
    ldrh r7, [r3]
    lsl r0, r1, #6
    strh r7, [r6,r0]
    add r1, #1
    mov r0, #0x1f
    and r1, r0
    add r3, #2
    sub r4, #1
    cmp r4, #0
    bgt loc_800191A
    pop {r6,r7,pc}
.thumb
sub_8001930:
    push {r4-r7,lr}
    lsl r2, r2, #2
    lsl r1, r1, #0xc
    orr r0, r1
    mov r5, #0
loc_800193A:
    strh r0, [r4]
    add r0, #1
    strh r0, [r4,#2]
    add r0, #1
    add r1, r4, r2
    strh r0, [r1]
    add r0, #1
    strh r0, [r1,#2]
    add r0, #1
    add r4, #4
    add r5, #4
    cmp r5, r2
    blt loc_800193A
    sub r3, #1
    blt loc_800193A
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_8001930

.thumb
sub_800195C:
    push {lr}
    tst r0, r0
    beq locret_8001972
    ldr r3, [pc, #0x80019ac-0x8001962-2] // =dword_200A880
    str r0, [r3]
    str r1, [r3,#0x8] // (dword_200A888 - 0x200a880)
    str r2, [r3,#0x4] // (dword_200A884 - 0x200a880)
    mov r0, #4
    add r1, r2, #0
    bl start_800024C
locret_8001972:
    pop {pc}
// end of function sub_800195C

.thumb
sub_8001974:
    push {lr}
    ldr r2, [pc, #0x80019ac-0x8001976-2] // =dword_200A880
    ldr r0, [pc, #0x800198c-0x8001978-4] // =locret_8001AB4+1
    str r0, [r2]
    str r0, [r2,#0x8] // (dword_200A888 - 0x200a880)
    ldr r1, [pc, #0x8001990-0x800197e-2] // =0x3005CD8
    str r1, [r2,#0x4] // (dword_200A884 - 0x200a880)
    mov r0, #4
    bl start_800024C
// end of function sub_8001974

    pop {pc}
    .balign 4, 0x00
off_800198C:    .word locret_8001AB4+1
dword_8001990:    .word 0x3005CD9
cb_call_200A880:
    push {lr}
    ldr r1, [pc, #0x80019ac-0x8001996-2] // =dword_200A880
    ldr r0, [r1]
    mov lr, pc
    bx r0
    pop {pc}
loc_80019A0:
    push {lr}
    ldr r1, [pc, #0x80019ac-0x80019a2-2] // =dword_200A880
    ldr r0, [r1,#0x8] // (dword_200A888 - 0x200a880)
    mov lr, pc
    bx r0
    pop {pc}
off_80019AC:    .word dword_200A880
locret_80019B0:
    mov pc, lr
locret_80019B2:
    mov pc, lr
loc_80019B4:
    ldr r1, [pc, #0x8001ab0-0x80019b4-4] // =dword_2009690
    ldr r2, [r1]
    sub r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    ldr r3, [r1,#0x4] // (dword_2009694 - 0x2009690)
    sub r3, #4
    str r3, [r1,#0x4] // (dword_2009694 - 0x2009690)
    lsr r3, r3, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x10]
    strh r3, [r1,#0x12]
    mov pc, lr
loc_80019D0:
    ldr r1, [pc, #0x8001ab0-0x80019d0-4] // =dword_2009690
    ldr r2, [r1]
    sub r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    ldr r3, [r1,#0x4] // (dword_2009694 - 0x2009690)
    sub r3, #4
    str r3, [r1,#0x4] // (dword_2009694 - 0x2009690)
    lsr r3, r3, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x18]
    strh r3, [r1,#0x1a]
    mov pc, lr
loc_80019EC:
    ldr r1, [pc, #0x8001ab0-0x80019ec-4] // =dword_2009690
    ldr r3, [r1]
    sub r3, #4
    str r3, [r1]
    lsr r3, r3, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r3, [r1,#0x12]
    mov pc, lr
loc_80019FE:
    ldr r1, [pc, #0x8001ab0-0x80019fe-2] // =dword_2009690
    ldr r3, [r1]
    sub r3, #4
    str r3, [r1]
    lsr r3, r3, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r3, [r1,#0x1a]
    mov pc, lr
loc_8001A10:
    ldr r1, [pc, #0x8001ab0-0x8001a10-4] // =dword_2009690
    ldr r2, [r1]
    add r2, #4
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x12]
    mov pc, lr
    ldr r1, [pc, #0x8001ab0-0x8001a22-2] // =dword_2009690
    ldr r2, [r1]
    add r2, #4
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x1a]
    mov pc, lr
loc_8001A34:
    ldr r1, [pc, #0x8001ab0-0x8001a34-4] // =dword_2009690
    ldr r2, [r1]
    add r2, #1
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x10]
    mov pc, lr
loc_8001A46:
    ldr r1, [pc, #0x8001ab0-0x8001a46-2] // =dword_2009690
    ldr r2, [r1]
    add r2, #1
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x18]
    mov pc, lr
loc_8001A58:
    ldr r1, [pc, #0x8001ab0-0x8001a58-4] // =dword_2009690
    ldr r2, [r1]
    sub r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x10]
    mov pc, lr
loc_8001A6A:
    ldr r1, [pc, #0x8001ab0-0x8001a6a-2] // =dword_2009690
    ldr r2, [r1]
    sub r2, #8
    str r2, [r1]
    lsr r2, r2, #4
    mov r1, r10
    ldr r1, [r1,#8]
    strh r2, [r1,#0x18]
    mov pc, lr
    push {lr}
    bl sub_800139A
    mov r1, #0x10
    tst r0, r1
    beq locret_8001AAC
    ldr r1, [pc, #0x8001ab0-0x8001a88-4] // =dword_2009690
    ldr r2, [r1]
    mov r3, #1
    lsl r3, r3, #0xa
    sub r2, r2, r3
    mov r3, #4
    lsl r3, r3, #0x10
    neg r3, r3
    cmp r2, r3
    bge loc_8001A9E
    add r2, r3, #0
loc_8001A9E:
    str r2, [r1]
    asr r2, r2, #0x10
    mov r1, r10
    ldr r1, [r1,#8]
    ldrh r3, [r1,#0x12]
    sub r3, r3, r2
    strh r3, [r1,#0x12]
locret_8001AAC:
    pop {pc}
    .byte 0, 0
off_8001AB0:    .word dword_2009690
locret_8001AB4:
    mov pc, lr
    .balign 4, 0x00
off_8001AB8:    .word unk_200DF40
    .word unk_200DF40
    .word unk_200E580
    .word unk_200E640
    .word unk_200DF40
    .word unk_200DF40
    .word unk_200DF40
    .word unk_200DF40
    .word unk_200DF40
    .word unk_200DF40
    .word unk_200DF40
    .word unk_200E440
    .word unk_200DF40
    .word unk_200DF40
    .word unk_200DF40
    .word unk_200DF40
    .word unk_200DF40
.thumb
sub_8001AFC:
    push {lr}
    ldr r0, [pc, #0x8001c40-0x8001afe-2] // =byte_20094C0  // memBlock
    ldr r1, [pc, #0x8001b08-0x8001b00-4] // =0x1B0  // numWords
    bl CpuSet_ZeroFillWord
    pop {pc}
off_8001B08:    .word 0x1B0
// end of function sub_8001AFC

    push {r4-r7,lr}
    ldr r1, [pc, #0x8001b18-0x8001b0e-2] // =off_8001AB8
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8001B18:    .word off_8001AB8
.thumb
sub_8001B1C:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r7, [pc, #0x8001c40-0x8001b26-2] // =byte_20094C0
    ldrb r1, [r0,#9]
    mov r2, #0x18
    mul r2, r1
    add r7, r7, r2
    strb r1, [r7,#1]
    ldr r1, [r0]
    str r1, [r7,#0xc]
    ldr r2, [r0,#4]
    str r2, [r7,#0x10]
    ldr r3, [r0,#8]
    str r3, [r7,#0x14]
    add r0, #0xc
    mov r6, #1
    cmp r3, #8
    beq loc_8001B48
    ldr r6, [r0,#4]
loc_8001B48:
    strh r6, [r7,#2]
    mov r6, #1
    strb r6, [r7]
    str r0, [r7,#4]
    str r0, [r7,#8]
    ldr r6, [pc, #0x8001b68-0x8001b52-2] // =off_8001C24
    ldrb r1, [r7,#0x14]
    ldr r6, [r6,r1]
    mov lr, pc
    bx r6
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8001B68:    .word off_8001C24
// end of function sub_8001B1C

.thumb
sub_8001B6C:
    push {r4-r7,lr}
    push {r0}
    ldr r7, [pc, #0x8001c40-0x8001b70-4] // =byte_20094C0
    mov r1, #0x18
    mul r1, r0
    add r7, r7, r1
    mov r0, #0
    strb r0, [r7]
    pop {r0}
    bl sub_800239A
    pop {r4-r7,pc}
// end of function sub_8001B6C

.thumb
sub_8001B84:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8001c40-0x8001b86-2] // =byte_20094C0
    mov r1, #0x18
    mul r1, r0
    add r7, r7, r1
    ldrb r0, [r7]
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_8001B84

PET_onUpdate_8001B94:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r7, [pc, #0x8001c40-0x8001b9e-2] // =byte_20094C0
    mov r4, #0
loc_8001BA2:
    ldrb r1, [r7]
    tst r1, r1
    bne loc_8001BB2
loc_8001BA8:
    add r7, #0x18
    add r4, #1
    cmp r4, #0x12
    bge loc_8001BF4
    b loc_8001BA2
loc_8001BB2:
    ldrh r1, [r7,#2]
    sub r1, #1
    strh r1, [r7,#2]
    cmp r1, #0
    bgt loc_8001BA8
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x8001c00-0x8001bbe-2] // =dword_8001C08
    ldrb r2, [r7,#0x14]
    ldr r1, [r1,r2]
    add r0, r0, r1
    ldr r1, [r0]
    cmp r1, #0
    beq loc_8001BEE
    cmp r1, #2
    beq loc_8001BD8
    cmp r1, #1
    bne loc_8001BDC
    ldr r0, [r7,#4]
    b loc_8001BDC
loc_8001BD8:
    ldr r0, [r0,#4]
    str r0, [r7,#4]
loc_8001BDC:
    str r0, [r7,#8]
    ldr r1, [r0,#4]
    strh r1, [r7,#2]
    ldr r6, [pc, #0x8001c04-0x8001be2-2] // =off_8001C24
    ldrb r1, [r7,#0x14]
    ldr r6, [r6,r1]
    mov lr, pc
    bx r6
    b loc_8001BA8
loc_8001BEE:
    mov r1, #0
    strb r1, [r7]
    b loc_8001BA8
loc_8001BF4:
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
    .byte 0, 0
off_8001C00:    .word dword_8001C08
off_8001C04:    .word off_8001C24
dword_8001C08:    .word 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
off_8001C24:    .word sub_8001C44+1
    .word loc_8001C94+1
    .word sub_8001C52+1
    .word sub_8002310+1
    .word sub_800232A+1
    .word sub_8002338+1
    .word loc_8001CFC+1
off_8001C40:    .word byte_20094C0
.thumb
sub_8001C44:
    push {lr}
    ldr r0, [r0]
    ldr r1, [r7,#0xc]
    ldr r2, [r7,#0x10]
    bl loc_8000AC8
// end of function sub_8001C44

    pop {pc}
.thumb
sub_8001C52:
    push {lr}
    ldr r5, [pc, #0x8001c90-0x8001c54-4] // =byte_200BE70
    ldr r5, [r5,#0xc] // (dword_200BE7C - 0x200be70)
    ldrb r2, [r7,#0x17]
    lsl r2, r2, #2
    add r2, #4
    ldr r2, [r5,r2]
    add r5, r5, r2
    mov r6, #0xf0
    lsl r6, r6, #8
    ldrb r2, [r7,#0x16]
    mov r8, r7
loc_8001C6A:
    ldr r1, [r0]
    ldr r7, [r0,#4]
    ldrh r3, [r5,r1]
    and r3, r6
    orr r3, r7
    strh r3, [r5,r1]
    add r0, #8
    sub r2, #1
    bgt loc_8001C6A
    mov r7, r8
    push {r4,r7}
    ldr r5, [pc, #0x8001c90-0x8001c80-4] // =byte_200BE70
    bl sub_8030808
    pop {r4,r7}
    mov r0, #0
    strb r0, [r7]
    pop {pc}
    .byte 0, 0
off_8001C90:    .word byte_200BE70
// end of function sub_8001C52

loc_8001C94:
    push {r4,r7,lr}
    ldr r6, [r0]
    ldr r5, [pc, #0x8001ce4-0x8001c98-4] // =off_8001AB8
    ldrb r4, [r7,#0x17]
    lsl r4, r4, #2
    ldr r5, [r5,r4]
    ldr r4, [r7,#0xc]
    mov r1, #0
    push {r0}
loc_8001CA6:
    ldrh r2, [r6,r1]
    lsl r3, r2, #0x16
    lsr r3, r3, #0x16
    lsl r3, r3, #5
    push {r4,r6}
    add r4, r4, r3
    ldr r0, [pc, #0x8001ce8-0x8001cb2-2] // =loc_8001CEC
    lsr r2, r2, #0xa
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    mov lr, pc
    bx r0
    pop {r4,r6}
    add r5, #0x20 
    add r1, #2
    ldrb r2, [r7,#0x16]
    lsl r2, r2, #1
    cmp r1, r2
    blt loc_8001CA6
    pop {r0}
    ldr r0, [pc, #0x8001ce4-0x8001cce-2] // =off_8001AB8
    ldrb r1, [r7,#0x17]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldr r1, [r7,#0x10]
    ldrb r2, [r7,#0x16]
    lsl r2, r2, #5
    bl loc_8000AC8
    pop {r4,r7,pc}
    .balign 4, 0x00
off_8001CE4:    .word off_8001AB8
off_8001CE8:    .word loc_8001CEC
loc_8001CEC:
    add r5, r4, #5
    lsr r0, r0, #0x20
    add r7, r0, #6
    lsr r0, r0, #0x20
    sub r7, r5, #2
    lsr r0, r0, #0x20
    sub r1, r2, #3
    lsr r0, r0, #0x20
loc_8001CFC:
    push {r4,r7,lr}
    ldr r6, [r0]
    ldr r5, [pc, #0x8001d4c-0x8001d00-4] // =off_8001AB8
    ldrb r4, [r7,#0x17]
    lsl r4, r4, #2
    ldr r5, [r5,r4]
    ldr r4, [r7,#0xc]
    mov r1, #0
    push {r0}
loc_8001D0E:
    ldrh r2, [r6,r1]
    lsl r3, r2, #0x16
    lsr r3, r3, #0x16
    lsl r3, r3, #6
    push {r4,r6}
    add r4, r4, r3
    ldr r0, [pc, #0x8001d50-0x8001d1a-2] // =loc_8001D54
    lsr r2, r2, #0xa
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    mov lr, pc
    bx r0
    pop {r4,r6}
    add r5, #0x40 
    add r1, #2
    ldrb r2, [r7,#0x16]
    lsl r2, r2, #1
    cmp r1, r2
    blt loc_8001D0E
    pop {r0}
    ldr r0, [pc, #0x8001d4c-0x8001d36-2] // =off_8001AB8
    ldrb r1, [r7,#0x17]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldr r1, [r7,#0x10]
    ldrb r2, [r7,#0x16]
    lsl r2, r2, #6
    bl loc_8000AC8
    pop {r4,r7,pc}
    .balign 4, 0x00
off_8001D4C:    .word off_8001AB8
off_8001D50:    .word loc_8001D54
loc_8001D54:
    mov r0, #1
    lsr r0, r0, #0x20
    mov r0, #0x43 
    lsr r0, r0, #0x20
    mov r1, #0x8d
    lsr r0, r0, #0x20
    mov r1, #0xcf
    lsr r0, r0, #0x20
    ldr r0, [r4]
    str r0, [r5]
    ldr r0, [r4,#4]
    str r0, [r5,#4]
    ldr r0, [r4,#8]
    str r0, [r5,#8]
    ldr r0, [r4,#0xc]
    str r0, [r5,#0xc]
    ldr r0, [r4,#0x10]
    str r0, [r5,#0x10]
    ldr r0, [r4,#0x14]
    str r0, [r5,#0x14]
    ldr r0, [r4,#0x18]
    str r0, [r5,#0x18]
    ldr r0, [r4,#0x1c]
    str r0, [r5,#0x1c]
    mov pc, lr
    ldr r2, [pc, #0x8001ffc-0x8001d86-2] // =0xF0F0F0F0
    mov r9, r2
    ldr r2, [pc, #0x8001ff8-0x8001d8a-2] // =0xFF00FF00
    mov r8, r2
    ldr r0, [r4]
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5]
    ldr r0, [r4,#4]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#4]
    ldr r0, [r4,#8]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#8]
    ldr r0, [r4,#0xc]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0xc]
    ldr r0, [r4,#0x10]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x10]
    ldr r0, [r4,#0x14]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x14]
    ldr r0, [r4,#0x18]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x18]
    ldr r0, [r4,#0x1c]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x1c]
    mov pc, lr
    ldr r0, [r4]
    str r0, [r5,#0x1c]
    ldr r0, [r4,#4]
    str r0, [r5,#0x18]
    ldr r0, [r4,#8]
    str r0, [r5,#0x14]
    ldr r0, [r4,#0xc]
    str r0, [r5,#0x10]
    ldr r0, [r4,#0x10]
    str r0, [r5,#0xc]
    ldr r0, [r4,#0x14]
    str r0, [r5,#8]
    ldr r0, [r4,#0x18]
    str r0, [r5,#4]
    ldr r0, [r4,#0x1c]
    str r0, [r5]
    mov pc, lr
    ldr r2, [pc, #0x8001ffc-0x8001ed0-4] // =0xF0F0F0F0
    mov r9, r2
    ldr r2, [pc, #0x8001ff8-0x8001ed4-4] // =0xFF00FF00
    mov r8, r2
    ldr r0, [r4]
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x1c]
    ldr r0, [r4,#4]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x18]
    ldr r0, [r4,#8]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x14]
    ldr r0, [r4,#0xc]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0x10]
    ldr r0, [r4,#0x10]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#0xc]
    ldr r0, [r4,#0x14]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#8]
    ldr r0, [r4,#0x18]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5,#4]
    ldr r0, [r4,#0x1c]
    mov r2, r8
    lsr r3, r2, #8
    and r2, r0
    and r3, r0
    lsr r0, r2, #8
    lsl r3, r3, #8
    orr r0, r3
    mov r2, #0x10
    ror r0, r2
    mov r2, r9
    lsr r3, r2, #4
    and r2, r0
    and r3, r0
    lsr r0, r2, #4
    lsl r3, r3, #4
    orr r0, r3
    str r0, [r5]
    mov pc, lr
dword_8001FF8:    .word 0xFF00FF00
dword_8001FFC:    .word 0xF0F0F0F0
    ldr r0, [r4]
    str r0, [r5]
    ldr r0, [r4,#4]
    str r0, [r5,#4]
    ldr r0, [r4,#8]
    str r0, [r5,#8]
    ldr r0, [r4,#0xc]
    str r0, [r5,#0xc]
    ldr r0, [r4,#0x10]
    str r0, [r5,#0x10]
    ldr r0, [r4,#0x14]
    str r0, [r5,#0x14]
    ldr r0, [r4,#0x18]
    str r0, [r5,#0x18]
    ldr r0, [r4,#0x1c]
    str r0, [r5,#0x1c]
    ldr r0, [r4,#0x20]
    str r0, [r5,#0x20]
    ldr r0, [r4,#0x24]
    str r0, [r5,#0x24]
    ldr r0, [r4,#0x28]
    str r0, [r5,#0x28]
    ldr r0, [r4,#0x2c]
    str r0, [r5,#0x2c]
    ldr r0, [r4,#0x30]
    str r0, [r5,#0x30]
    ldr r0, [r4,#0x34]
    str r0, [r5,#0x34]
    ldr r0, [r4,#0x38]
    str r0, [r5,#0x38]
    ldr r0, [r4,#0x3c]
    str r0, [r5,#0x3c]
    mov pc, lr
    ldr r2, [pc, #0x8002188-0x8002042-2] // =0xFF00FF00
    mvn r3, r2
    ldr r0, [r4]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5]
    ldr r0, [r4,#4]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#4]
    ldr r0, [r4,#8]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#8]
    ldr r0, [r4,#0xc]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0xc]
    ldr r0, [r4,#0x10]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x10]
    ldr r0, [r4,#0x14]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x14]
    ldr r0, [r4,#0x18]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x18]
    ldr r0, [r4,#0x1c]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x1c]
    ldr r0, [r4,#0x20]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x20]
    ldr r0, [r4,#0x24]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x24]
    ldr r0, [r4,#0x28]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x28]
    ldr r0, [r4,#0x2c]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x2c]
    ldr r0, [r4,#0x30]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x30]
    ldr r0, [r4,#0x34]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x34]
    ldr r0, [r4,#0x38]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x38]
    ldr r0, [r4,#0x3c]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x3c]
    mov pc, lr
dword_8002188:    .word 0xFF00FF00
    ldr r0, [r4]
    str r0, [r5,#0x1c]
    ldr r0, [r4,#4]
    str r0, [r5,#0x18]
    ldr r0, [r4,#8]
    str r0, [r5,#0x14]
    ldr r0, [r4,#0xc]
    str r0, [r5,#0x10]
    ldr r0, [r4,#0x10]
    str r0, [r5,#0xc]
    ldr r0, [r4,#0x14]
    str r0, [r5,#8]
    ldr r0, [r4,#0x18]
    str r0, [r5,#4]
    ldr r0, [r4,#0x1c]
    str r0, [r5]
    ldr r0, [r4,#0x20]
    str r0, [r5,#0x3c]
    ldr r0, [r4,#0x24]
    str r0, [r5,#0x38]
    ldr r0, [r4,#0x28]
    str r0, [r5,#0x34]
    ldr r0, [r4,#0x2c]
    str r0, [r5,#0x30]
    ldr r0, [r4,#0x30]
    str r0, [r5,#0x2c]
    ldr r0, [r4,#0x34]
    str r0, [r5,#0x28]
    ldr r0, [r4,#0x38]
    str r0, [r5,#0x24]
    ldr r0, [r4,#0x3c]
    str r0, [r5,#0x20]
    mov pc, lr
    ldr r0, [r4]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x1c]
    ldr r0, [r4,#4]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x18]
    ldr r0, [r4,#8]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x14]
    ldr r0, [r4,#0xc]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x10]
    ldr r0, [r4,#0x10]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0xc]
    ldr r0, [r4,#0x14]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#8]
    ldr r0, [r4,#0x18]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#4]
    ldr r0, [r4,#0x1c]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5]
    ldr r0, [r4,#0x20]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x3c]
    ldr r0, [r4,#0x24]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x38]
    ldr r0, [r4,#0x28]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x34]
    ldr r0, [r4,#0x2c]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x30]
    ldr r0, [r4,#0x30]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x2c]
    ldr r0, [r4,#0x34]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x28]
    ldr r0, [r4,#0x38]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x24]
    ldr r0, [r4,#0x3c]
    add r1, r0, #0
    and r0, r2
    and r1, r3
    lsr r0, r0, #8
    lsl r1, r1, #8
    orr r0, r1
    mov r1, #0x10
    ror r0, r1
    str r0, [r5,#0x20]
    mov pc, lr
.thumb
sub_8002310:
    push {lr}
    push {r4,r7}
    ldr r1, [r0]
    lsl r1, r1, #1
    lsr r1, r1, #1
    ldrb r0, [r7,#0xc]
    ldrb r2, [r7,#0x16]
    ldrb r3, [r7,#1]
    ldr r4, [r7,#0x10]
    bl sub_8002378
    pop {r4,r7}
    pop {pc}
// end of function sub_8002310

.thumb
sub_800232A:
    push {lr}
    ldr r0, [r0]
    cmp r0, #0
    blt locret_8002336
    bl sound_play
locret_8002336:
    pop {pc}
// end of function sub_800232A

.thumb
sub_8002338:
    push {lr}
    ldr r0, [r0]
    cmp r0, #0
    blt loc_8002348
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_802F114
    b locret_8002352
loc_8002348:
    lsl r0, r0, #1
    lsr r0, r0, #1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_802F130
locret_8002352:
    pop {pc}
// end of function sub_8002338

.thumb
sub_8002354:
    push {r5,lr}
    add r5, r0, #0
loc_8002358:
    ldr r0, [r5]
    cmp r0, #0
    blt locret_8002366
    bl sub_8001B1C
    add r5, #4
    b loc_8002358
locret_8002366:
    pop {r5,pc}
// end of function sub_8002354

.thumb
sub_8002368:
    push {lr}
    ldr r0, [pc, #0x8002464-0x800236a-2] // =byte_20097A0  // memBlock
    ldr r1, [pc, #0x8002374-0x800236c-4] // =0x108  // numWords
    bl CpuSet_ZeroFillWord
    pop {pc}
off_8002374:    .word 0x108
// end of function sub_8002368

.thumb
sub_8002378:
    push {r5-r7,lr}
    ldr r7, [pc, #0x8002464-0x800237a-2] // =byte_20097A0
    mov r6, #0xc
    mul r3, r6
    add r7, r7, r3
    mov r3, #0
    tst r1, r1
    beq loc_8002396
    tst r2, r2
    beq loc_8002396
    strb r0, [r7,#1]
    str r1, [r7,#4]
    strb r2, [r7,#2]
    mov r3, #1
    str r4, [r7,#8]
loc_8002396:
    strb r3, [r7]
    pop {r5-r7,pc}
// end of function sub_8002378

.thumb
sub_800239A:
    ldr r2, [pc, #0x8002464-0x800239a-2] // =byte_20097A0
    mov r1, #0xc
    mul r0, r1
    add r2, r2, r0
    mov r0, #0
    strb r0, [r2]
    mov pc, lr
// end of function sub_800239A

.thumb
sub_80023A8:
    push {lr}
    ldr r0, [pc, #0x8002464-0x80023aa-2] // =byte_20097A0  // memBlock
    ldr r1, [pc, #0x80023b4-0x80023ac-4] // =0xD8  // numWords
    bl CpuSet_ZeroFillWord
    pop {pc}
off_80023B4:    .word 0xD8
// end of function sub_80023A8

    ldr r2, [pc, #0x8002464-0x80023b8-4] // =byte_20097A0
    mov r1, #0xc
    mul r1, r0
    add r2, r2, r1
    ldrb r0, [r2]
    tst r0, r0
    mov pc, lr
    ldr r2, [pc, #0x8002464-0x80023c6-2] // =byte_20097A0
    ldr r3, [pc, #0x80023dc-0x80023c8-4] // =0x108
loc_80023CA:
    ldrb r0, [r2]
    tst r0, r0
    bne locret_80023D8
    add r2, #0xc
    cmp r2, r3
    blt loc_80023CA
    mov r0, #0
locret_80023D8:
    mov pc, lr
    .balign 4, 0x00
off_80023DC:    .word 0x108
getPalleteAndTransition_80023E0:
    push {r5-r7,lr}
    ldr r0, [pc, #0x800243c-0x80023e2-2] // =word_3001960
    ldr r1, [pc, #0x8002440-0x80023e4-4] // =unk_3001B60
    mov r2, #0x20 
    lsl r2, r2, #4
    bl sub_8000950
    ldr r0, [pc, #0x8002444-0x80023ee-2] // =unk_3001550
    ldr r1, [pc, #0x8002448-0x80023f0-4] // =unk_3001750
    mov r2, #0x20 
    lsl r2, r2, #4
    bl sub_8000950
    ldr r5, [pc, #0x8002464-0x80023fa-2] // =byte_20097A0
loc_80023FC:
    ldrb r0, [r5]
    tst r0, r0
    beq loc_8002428
    ldr r0, [r5,#0x4] // (dword_20097A4 - 0x20097a0)
    ldrb r2, [r5,#0x1] // (byte_20097A1 - 0x20097a0)
    ldrb r6, [r5,#0x2] // (byte_20097A2 - 0x20097a0)
    ldr r7, [r5,#0x8] // (dword_20097A8 - 0x20097a0)
    cmp r7, #6
    bge loc_800241E
    ldr r6, [pc, #0x8002438-0x800240e-2] // =unk_200F388
    add r7, r7, r6
    ldrb r1, [r7]
    ldrb r6, [r7,#1]
    sub r6, r6, r1
    ldr r7, [pc, #0x8002448-0x8002418-4] // =unk_3001750
    lsl r1, r1, #5
    add r7, r7, r1
loc_800241E:
    lsl r6, r6, #5
    ldr r3, [pc, #0x800244c-0x8002420-4] // =dword_8002450
    ldr r3, [r3,r2]
    mov lr, pc
    bx r3
loc_8002428:
    add r5, #0xc
    ldr r6, [pc, #0x8002464-0x800242a-2] // =byte_20097A0
    ldr r0, [pc, #0x8002460-0x800242c-4] // =0x108
    add r6, r6, r0
    cmp r5, r6
    blt loc_80023FC
    pop {r5-r7,pc}
    .balign 4, 0x00
off_8002438:    .word unk_200F388
off_800243C:    .word word_3001960
off_8002440:    .word unk_3001B60
off_8002444:    .word unk_3001550
off_8002448:    .word unk_3001750
off_800244C:    .word dword_8002450
dword_8002450:    .word 0x3005EF1, 0x3005EF1, 0x3005F79, 0x3005F79
off_8002460:    .word 0x108
off_8002464:    .word byte_20097A0
.thumb
sub_8002468:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80024c8-0x800246a-2] // =byte_200A6A0
    push {r0-r2}
    add r0, r5, #0  // memBlock
    mov r1, #0x50   // numWords
    bl CpuSet_ZeroFillWord
    pop {r0-r2}
    str r0, [r5,#0x4] // (dword_200A6A4 - 0x200a6a0)
    str r1, [r5,#0x8] // (dword_200A6A8 - 0x200a6a0)
    str r2, [r5,#0xc] // (dword_200A6AC - 0x200a6a0)
    mov r0, #1
    strb r0, [r5]
    pop {r4-r7,pc}
// end of function sub_8002468

loc_8002484:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80024c8-0x8002486-2] // =byte_200A6A0
    ldrb r0, [r5]
    tst r0, r0
    beq loc_8002498
    ldr r0, [r5,#0x8] // (dword_200A6A8 - 0x200a6a0)
    tst r0, r0
    beq loc_8002498
    mov lr, pc
    bx r0
loc_8002498:
    add r0, r5, #0
    mov r1, #0x50 
    bl CpuSet_ZeroFillWord
    pop {r4-r7,pc}
.thumb
sub_80024A2:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80024c8-0x80024a4-4] // =byte_200A6A0  // memBlock
    mov r1, #0x50   // numWords
    bl CpuSet_ZeroFillWord
    pop {r4-r7,pc}
// end of function sub_80024A2

.thumb
sub_80024AE:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80024c8-0x80024b0-4] // =byte_200A6A0
    ldrb r0, [r5]
    tst r0, r0
    beq locret_80024BE
    ldr r0, [r5,#0x4] // (dword_200A6A4 - 0x200a6a0)
    mov lr, pc
    bx r0
locret_80024BE:
    pop {r4-r7,pc}
// end of function sub_80024AE

.thumb
sub_80024C0:
    ldr r1, [pc, #0x80024c8-0x80024c0-4] // =byte_200A6A0
    ldrb r0, [r1]
    tst r0, r0
    mov pc, lr
off_80024C8:    .word byte_200A6A0
// end of function sub_80024C0

    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    push {r4,r5}
    mov r4, #4
    b loc_80024E2
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    push {r4,r5}
    mov r4, #0
loc_80024E2:
    ldr r6, [pc, #0x80025c0-0x80024e2-2] // =dword_80025C4
    add r6, r6, r4
    mov r8, r6
    mov r9, r1
    add r4, r2, #0
    mov r6, #1
    tst r2, r6
    beq loc_80024F4
    add r2, #1
loc_80024F4:
    lsr r7, r2, #1
    add r5, r3, #0
    tst r3, r6
    beq loc_80024FE
    add r3, #1
loc_80024FE:
    lsr r6, r3, #1
    bl sub_8003694
    push {r0,r1}
    sub r0, #0x78 
    sub r1, #0x50 
    neg r0, r0
    neg r1, r1
    mov r2, #0xf0
    sub r2, r2, r4
    lsr r2, r2, #1
    sub r0, r0, r2
    mov r2, #0xa0
    sub r2, r2, r5
    lsr r2, r2, #1
    sub r1, r1, r2
    mov r2, r10
    ldr r2, [r2,#8]
    mov r3, r8
    ldrb r3, [r3]
    strh r0, [r2,r3]
    mov r3, r8
    ldrb r3, [r3,#0x1] // (byte_80025C9 - 0x80025c8)
    strh r1, [r2,r3]
    mov r2, r8
    ldrb r2, [r2,#0x2] // (byte_80025CA - 0x80025c8)
    mov r3, r9
    lsr r4, r4, #3
    mov r0, #0
    mov r1, #0
    lsr r5, r5, #3
    bl sub_80018C2
    pop {r0,r1}
    mov r5, r10
    ldr r5, [r5,#0x1c]
    cmp r0, r7
    bge loc_800254E
    mov r2, #0
    b loc_800255E
loc_800254E:
    mov r4, #0xf0
    add r4, r4, r7
    cmp r0, r4
    ble loc_800255A
    mov r2, #0xf0
    b loc_800255E
loc_800255A:
    add r4, r7, #0
    sub r2, r0, r4
loc_800255E:
    strb r2, [r5,#3]
    add r4, r7, #0
    neg r4, r4
    cmp r0, r4
    bge loc_800256C
    mov r2, #0
    b loc_800257C
loc_800256C:
    mov r3, #0xf0
    sub r3, r3, r7
    cmp r0, r3
    ble loc_8002578
    mov r2, #0xf0
    b loc_800257C
loc_8002578:
    add r4, r7, #0
    add r2, r0, r4
loc_800257C:
    strb r2, [r5,#2]
    mov r4, #0xa0
    add r4, r4, r6
    cmp r1, r6
    bge loc_800258A
    mov r2, #0
    b loc_8002596
loc_800258A:
    cmp r1, r4
    ble loc_8002592
    mov r2, #0xa0
    b loc_8002596
loc_8002592:
    add r4, r6, #0
    sub r2, r1, r4
loc_8002596:
    strb r2, [r5,#7]
    add r4, r6, #0
    neg r4, r4
    cmp r1, r4
    bge loc_80025A4
    mov r2, #0
    b loc_80025B4
loc_80025A4:
    mov r3, #0xa0
    sub r3, r3, r6
    cmp r1, r3
    ble loc_80025B0
    mov r2, #0xa0
    b loc_80025B4
loc_80025B0:
    add r4, r6, #0
    add r2, r1, r4
loc_80025B4:
    strb r2, [r5,#6]
    pop {r4,r5}
    mov r8, r4
    mov r9, r5
    pop {r4-r7,pc}
    .byte 0, 0
off_80025C0:    .word dword_80025C4
dword_80025C4:    .word 0xFF031A18
byte_80025C8:    .byte 0x14
byte_80025C9:    .byte 0x16
byte_80025CA:    .byte 0x2
    .byte 0xFF
dword_80025CC:    .word 0x7FFF0000, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF
    .word 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0
.thumb
sub_800260C:
    push {r4,lr}
    ldr r0, [pc, #0x800263c-0x800260e-2] // =0x7000000
    ldr r1, [pc, #0x8002640-0x8002610-4] // =0x400
    bl sub_8000900
    ldr r0, [pc, #0x8002644-0x8002616-2] // =0x6010000
    ldr r1, [pc, #0x8002648-0x8002618-4] // =0x8000
    bl sub_8000900
    bl sub_8002668
    bl sub_8003534
    bl sub_800355C
    bl sub_8003566
    bl handleObjSprites_800289C
    ldr r0, [pc, #0x800264c-0x8002632-2] // =unk_200F388
    mov r1, #7
    bl sub_80008B4
    pop {r4,pc}
dword_800263C:    .word 0x7000000
off_8002640:    .word 0x400
dword_8002644:    .word 0x6010000
dword_8002648:    .word 0x8000
off_800264C:    .word unk_200F388
// end of function sub_800260C

.thumb
renderPalletesAndObjs_8002650:
    push {lr}
    ldr r0, [pc, #0x8002660-0x8002652-2] // =unk_3001750
    ldr r1, [pc, #0x8002664-0x8002654-4] // =0x5000200
    mov r2, #0x20 
    lsl r2, r2, #4
    bl sub_8000950
    pop {pc}
off_8002660:    .word unk_3001750
dword_8002664:    .word 0x5000200
// end of function renderPalletesAndObjs_8002650

.thumb
sub_8002668:
    push {lr}
    ldr r0, [pc, #0x800268c-0x800266a-2] // =dword_86A5500
    ldr r1, [pc, #0x8002690-0x800266c-4] // =unk_3001710
    mov r2, #0x20 
    bl sub_8000950
    b loc_8002678
loc_8002676:
    push {lr}
loc_8002678:
    ldr r0, [pc, #0x8002684-0x8002678-4] // =dword_80025CC
    ldr r1, [pc, #0x8002688-0x800267a-2] // =unk_3001730
    mov r2, #0x20 
    bl sub_8000950
    pop {pc}
off_8002684:    .word dword_80025CC
off_8002688:    .word unk_3001730
off_800268C:    .word dword_86A5500
off_8002690:    .word unk_3001710
// end of function sub_8002668

.thumb
sub_8002694:
    push {lr}
    ldr r2, [pc, #0x80026a0-0x8002696-2] // =loc_3006440+1
    mov lr, pc
    bx r2
// end of function sub_8002694

    pop {pc}
    .byte 0, 0
off_80026A0:    .word loc_3006440+1
.thumb
sprite_loadAnimationData_80026A4:
    push {r4,r5,lr}
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r5, r5, r3
    ldr r4, [pc, #0x80026c0-0x80026ae-2] // =loc_3006730+1
    mov lr, pc
    bx r4
    pop {r4,r5,pc}
// end of function sprite_loadAnimationData_80026A4

.thumb
sub_80026B6:
    push {r4,lr}
    ldr r4, [pc, #0x80026c0-0x80026b8-4] // =loc_3006730+1
    mov lr, pc
    bx r4
    pop {r4,pc}
off_80026C0:    .word loc_3006730+1
// end of function sub_80026B6

.thumb
anim_80026C4:
    push {r4,r5,lr}
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r5, r5, r3
    ldr r4, [pc, #0x80026e0-0x80026ce-2] // =loc_3006792+1
    mov lr, pc
    bx r4
    pop {r4,r5,pc}
// end of function anim_80026C4

.thumb
sub_80026D6:
    push {r4,lr}
    ldr r4, [pc, #0x80026e0-0x80026d8-4] // =loc_3006792+1
    mov lr, pc
    bx r4
// end of function sub_80026D6

    pop {r4,pc}
off_80026E0:    .word loc_3006792+1
.thumb
sub_80026E4:
    push {r4,r5,lr}
    ldrb r3, [r5]
    mov r4, #8
    bic r3, r4
    strb r3, [r5]
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r5, r5, r3
    push {r0-r2}
    lsl r0, r1, #8
    orr r0, r2
    bl sub_8002986
    pop {r1-r3}
    tst r0, r0
    beq loc_8002708
    b loc_8002716
loc_8002708:
    ldr r4, [pc, #0x8002724-0x8002708-4] // =dword_8031CC4
    ldr r4, [r4,r2]
    lsl r3, r3, #2
    ldr r0, [r4,r3]
    cmp r0, #0
    bge loc_8002716
    ldr r0, [pc, #0x8002728-0x8002714-4] // =dword_84E0554
loc_8002716:
    push {r1}
    bl sub_800272C
    pop {r1}
    strb r1, [r5,#3]
    pop {r4,r5,pc}
    .balign 4, 0x00
off_8002724:    .word dword_8031CC4
off_8002728:    .word dword_84E0554
// end of function sub_80026E4

.thumb
sub_800272C:
    add r0, #4
    str r0, [r5,#0x18]
    mov r0, #0
    strb r0, [r5,#3]
    strb r0, [r5]
    str r0, [r5,#0x24]
    strb r0, [r5,#4]
    strh r0, [r5,#0xa]
    strh r0, [r5,#6]
    str r0, [r5,#0x2c]
    strh r0, [r5,#0x10]
    strh r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    strb r0, [r5,#5]
    str r0, [r5,#0x30]
    str r0, [r5,#0x34]
    mvn r0, r0
    str r0, [r5,#0x28]
    mov r0, #8
    strb r0, [r5,#0x15]
    mov r0, #8
    strh r0, [r5,#0x16]
    mov pc, lr
// end of function sub_800272C

.thumb
sub_800275A:
    push {lr}
    lsl r0, r0, #2
    ldr r1, [pc, #0x800276c-0x800275e-2] // =dword_8032530+104
    ldr r0, [r0,r1]
    bl sub_800272C
    mov r0, #0x80
    strh r0, [r5,#0x16]
    pop {pc}
off_800276C:    .word dword_8032530+0x68
// end of function sub_800275A

.thumb
sub_8002770:
    mov r2, #0x80
    b loc_8002776
loc_8002774:
    mov r2, #0
loc_8002776:
    push {r4-r6,lr}
    add r6, r2, #0
    add r4, r1, #0
    add r5, #0x20 
    lsl r0, r0, #2
    ldr r1, [pc, #0x8002798-0x8002780-4] // =dword_8032530+492
    ldr r0, [r0,r1]
    cmp r0, #0
    bge loc_800278A
    add r0, r4, #0
loc_800278A:
    bl sub_800272C
    strb r6, [r5,#3]
    mov r0, #0x80
    strh r0, [r5,#0x16]
    pop {r4-r6,pc}
    .balign 4, 0x00
off_8002798:    .word dword_8032530+0x1EC
// end of function sub_8002770

    push {r5,lr}
    add r5, #0x20 
    lsl r0, r0, #2
    ldr r1, [pc, #0x80027b0-0x80027a2-2] // =dword_8032530+104
    ldr r0, [r0,r1]
    bl sub_800272C
    mov r0, #0x80
    strh r0, [r5,#0x16]
    pop {r5,pc}
off_80027B0:    .word dword_8032530+0x68
.thumb
sub_80027B4:
    ldr r0, [pc, #0x80027bc-0x80027b4-4] // =dword_200F350
    ldr r1, [pc, #0x80027c0-0x80027b6-2] // =0x0
    str r1, [r0]
    mov pc, lr
off_80027BC:    .word dword_200F350
dword_80027C0:    .word 0x1
// end of function sub_80027B4

.thumb
sub_80027C4:
    ldr r1, [pc, #0x8002804-0x80027c4-4] // =byte_20098A8
    mov r0, #0
    strb r0, [r1,#0x1] // (byte_20098A9 - 0x20098a8)
    mov r0, #0xc
    strb r0, [r1]
    ldr r0, [pc, #0x8002808-0x80027ce-2] // =0x324
    strh r0, [r1,#0x2] // (word_20098AA - 0x20098a8)
    mov pc, lr
// end of function sub_80027C4

.thumb
sub_80027D4:
    ldr r1, [pc, #0x8002804-0x80027d4-4] // =byte_20098A8
    mov r0, #4
    strb r0, [r1,#0x1] // (byte_20098A9 - 0x20098a8)
    mov r0, #0xa
    strb r0, [r1]
    ldr r0, [pc, #0x800280c-0x80027de-2] // =0x2F8
    strh r0, [r1,#0x2] // (word_20098AA - 0x20098a8)
    mov pc, lr
// end of function sub_80027D4

.thumb
sub_80027E4:
    ldr r1, [pc, #0x8002804-0x80027e4-4] // =byte_20098A8
    mov r0, #4
    strb r0, [r1,#0x1] // (byte_20098A9 - 0x20098a8)
    mov r0, #8
    strb r0, [r1]
    ldr r0, [pc, #0x8002810-0x80027ee-2] // =0x2F8
    strh r0, [r1,#0x2] // (word_20098AA - 0x20098a8)
    mov pc, lr
// end of function sub_80027E4

.thumb
sub_80027F4:
    ldr r1, [pc, #0x8002804-0x80027f4-4] // =byte_20098A8
    mov r0, #0
    strb r0, [r1,#0x1] // (byte_20098A9 - 0x20098a8)
    mov r0, #0x10
    strb r0, [r1]
    ldr r0, [pc, #0x8002810-0x80027fe-2] // =0x2F8
    strh r0, [r1,#0x2] // (word_20098AA - 0x20098a8)
    mov pc, lr
off_8002804:    .word byte_20098A8
dword_8002808:    .word 0x32F
dword_800280C:    .word 0x2FF
dword_8002810:    .word 0x2FF
    .byte 0xFF
    .byte 2
    .byte 0
    .byte 0
// end of function sub_80027F4

.thumb
sub_8002818:
    push {lr}
    ldr r0, [r5,#0x34]
    tst r0, r0
    bne loc_800282A
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#4]
    add r0, #4
    ldr r1, [r5,#0x18]
    add r0, r0, r1
loc_800282A:
    ldrb r1, [r5,#4]
    ldrb r2, [r5,#5]
    add r1, r1, r2
    lsl r1, r1, #5
    add r0, r0, r1
    ldrb r1, [r5,#0x15]
    lsr r1, r1, #4
    ldr r3, [pc, #0x8002868-0x8002838-4] // =unk_3001550
    lsl r1, r1, #5
    add r3, r3, r1
    mov r6, #0
loc_8002840:
    ldr r2, [r0,r6]
    str r2, [r3,r6]
    add r6, #4
    cmp r6, #0x20 
    blt loc_8002840
    ldrh r7, [r5,#6]
    tst r7, r7
    beq locret_8002862
    lsl r0, r7, #0x11
    lsr r0, r0, #0x11
    lsr r2, r7, #0xf
    lsl r2, r2, #2
    mov r6, #0x20 
    add r7, r3, #0
    ldr r1, [pc, #0x8002864-0x800285c-4] // =loc_3005EF0+1
    mov lr, pc
    bx r1
locret_8002862:
    pop {pc}
off_8002864:    .word loc_3005EF0+1
off_8002868:    .word unk_3001550
// end of function sub_8002818

.thumb
sub_800286C:
    ldr r0, [pc, #0x80028cc-0x800286c-4] // =dword_200F340
    mov r1, #0
    str r1, [r0]
    mov pc, lr
// end of function sub_800286C

.thumb
sub_8002874:
    push {r5,lr}
    ldr r2, [r5,#0x24]
    ldr r0, [r5,#0x1c]
    ldr r0, [r0]
    ldr r1, [r5,#0x18]
    add r0, r0, r1
    cmp r0, r2
    beq locret_8002896
    str r0, [r5,#0x24]
    ldr r2, [r0]
    add r0, #4
    ldr r1, [pc, #0x8002898-0x800288a-2] // =0x6010000
    ldrh r3, [r5,#8]
    lsl r3, r3, #5
    add r1, r1, r3
    bl loc_8000AC8
locret_8002896:
    pop {r5,pc}
dword_8002898:    .word 0x6010000
// end of function sub_8002874

.thumb
handleObjSprites_800289C:
    push {lr}
    ldr r1, [pc, #0x80028b4-0x800289e-2] // =dword_20093A8
    mov r0, #0
    str r0, [r1]
    ldr r0, [pc, #0x80028b8-0x80028a4-4] // =dword_200A890
    ldr r1, [pc, #0x80028bc-0x80028a6-2] // =0x388
    mov r2, #0
    mvn r2, r2
    bl sub_800098C
    pop {pc}
    .balign 4, 0x00
off_80028B4:    .word dword_20093A8
off_80028B8:    .word dword_200A890
off_80028BC:    .word 0x388
// end of function handleObjSprites_800289C

.thumb
sub_80028C0:
    ldr r1, [pc, #0x80028cc-0x80028c0-4] // =dword_200F340
    ldr r1, [r1]
    ldr r2, [pc, #0x80028d0-0x80028c4-4] // =0x200F389
    strb r1, [r2,r0]
    mov pc, lr
    .balign 4, 0x00
off_80028CC:    .word dword_200F340
dword_80028D0:    .word 0x200F389
// end of function sub_80028C0

.thumb
sub_80028D4:
    push {r5,lr}
    ldr r5, [pc, #0x8002bf0-0x80028d6-2] // =byte_200DCA0
    push {r0}
    add r0, r5, #0  // memBlock
    mov r1, #0x50   // numWords
    bl CpuSet_ZeroFillWord
    pop {r0}
    str r0, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
    add r0, r5, #0
    add r0, #4
    mov r1, #0x18
    mov r2, #0x80
    lsl r2, r2, #0x18
    mvn r2, r2
    lsr r2, r2, #0x10
    bl sub_800096C
    add r0, r5, #0
    add r0, #0x1c
    mov r1, #0x30 
    mov r2, #0xff
    bl initMemblockToByte
    pop {r5,pc}
// end of function sub_80028D4

.thumb
sub_8002906:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    push {r1,r2}
    ldr r5, [pc, #0x8002bf0-0x800290e-2] // =byte_200DCA0
    ldr r1, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
    ldr r4, [pc, #0x8002bc0-0x8002912-2] // =dword_8031CC4
    ldr r6, [pc, #0x8002bc4-0x8002914-4] // =0x2040000
    add r7, r0, #0
loc_8002918:
    ldrb r0, [r7]
    cmp r0, #0xff
    beq loc_8002972
    ldrb r3, [r7,#1]
    lsl r3, r3, #2
    ldr r2, [r4,r0]
    ldr r2, [r2,r3]
    lsl r2, r2, #1
    lsr r2, r2, #1
    mov r8, r2
    ldr r2, [r2]
    lsl r0, r0, #8
    lsr r3, r3, #2
    orr r0, r3
    lsr r2, r2, #8
    add r3, r1, r2
    cmp r3, r6
    bge loc_800297C
    mov r9, r0
    ldrb r0, [r5]
    cmp r0, #0xc
    mov r0, r9
    bge loc_800297C
    push {r7}
    ldrb r3, [r5]
    lsl r7, r3, #1
    add r7, #4
    strh r0, [r5,r7]
    lsl r7, r3, #2
    add r7, #0x1c
    add r1, #4
    str r1, [r5,r7]
    sub r1, #4
    add r3, #1
    strb r3, [r5]
    push {r1,r2,r4-r6}
    mov r0, r8
    bl SWI_LZ77UnCompReadNormalWrite8bit
    pop {r1,r2,r4-r6}
    add r1, r1, r2
    str r1, [r5,#0x4c]
    pop {r7}
    add r7, #2
    b loc_8002918
loc_8002972:
    mov r0, #1
    pop {r1,r2}
    mov r8, r1
    mov r9, r2
    pop {r4-r7,pc}
loc_800297C:
    mov r0, #0
    pop {r1,r2}
    mov r8, r1
    mov r9, r2
    pop {r4-r7,pc}
// end of function sub_8002906

.thumb
sub_8002986:
    push {r5,lr}
    ldr r5, [pc, #0x8002bf0-0x8002988-4] // =byte_200DCA0
    mov r2, #0
loc_800298C:
    lsl r1, r2, #1
    add r1, #4
    ldrh r1, [r5,r1]
    cmp r0, r1
    bne loc_800299E
    lsl r1, r2, #2
    add r1, #0x1c
    ldr r0, [r5,r1]
    pop {r5,pc}
loc_800299E:
    add r2, #1
    cmp r2, #0xc
    blt loc_800298C
    mov r0, #0
    pop {r5,pc}
// end of function sub_8002986

.thumb
sub_80029A8:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, [pc, #0x8002bf0-0x80029b2-2] // =byte_200DCA0
    ldr r1, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
    ldr r4, [pc, #0x8002bc0-0x80029b6-2] // =dword_8031CC4
    ldr r6, [pc, #0x8002bc8-0x80029b8-4] // =dword_2033000
    add r7, r0, #0
loc_80029BC:
    ldrb r0, [r7]
    mov r2, #0xf0
    and r0, r2
    cmp r0, #0xf0
    beq loc_8002A4C
    cmp r0, #0
    beq loc_8002A48
    ldrb r0, [r7,#2]
    ldrb r2, [r7,#3]
    lsl r2, r2, #0x1f
    lsr r2, r2, #0x17
    add r0, r0, r2
    push {r1}
    bl sub_800F26C
    lsl r0, r0, #8
    orr r0, r1
    pop {r1}
    add r3, r5, #0
    add r3, #4
    mov r9, r1
    mov r2, #0
loc_80029E8:
    ldrh r1, [r3,r2]
    cmp r0, r1
    mov r1, r9
    beq loc_8002A48
    add r2, #2
    cmp r2, #0x18
    blt loc_80029E8
    mov r1, r9
    lsl r2, r0, #0x18
    lsr r2, r2, #0x16
    lsr r3, r0, #8
    ldr r3, [r4,r3]
    ldr r2, [r3,r2]
    cmp r2, #0
    bge loc_8002A48
    lsl r2, r2, #1
    lsr r2, r2, #1
    mov r8, r2
    ldr r2, [r2]
    lsr r2, r2, #8
    add r3, r1, r2
    cmp r3, r6
    bge loc_8002A58
    mov r12, r0
    ldrb r0, [r5]
    cmp r0, #0xc
    mov r0, r12
    bge loc_8002A58
    push {r7}
    ldrb r3, [r5]
    lsl r7, r3, #1
    add r7, #4
    strh r0, [r5,r7]
    lsl r7, r3, #2
    add r7, #0x1c
    add r1, #4
    str r1, [r5,r7]
    sub r1, #4
    add r3, #1
    strb r3, [r5]
    push {r1,r2,r4-r6}
    mov r0, r8
    bl SWI_LZ77UnCompReadNormalWrite8bit
    pop {r1,r2,r4-r6}
    add r1, r1, r2
    str r1, [r5,#0x4c]
    pop {r7}
loc_8002A48:
    add r7, #4
    b loc_80029BC
loc_8002A4C:
    mov r0, #1
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
loc_8002A58:
    mov r0, #0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
// end of function sub_80029A8

.thumb
sub_8002A64:
    push {r4-r7,lr}
    lsl r0, r0, #8
    orr r0, r1
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, [pc, #0x8002bf0-0x8002a72-2] // =byte_200DCA0
    ldr r1, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
    ldr r4, [pc, #0x8002bc0-0x8002a76-2] // =dword_8031CC4
    ldr r6, [pc, #0x8002bc8-0x8002a78-4] // =dword_2033000
    lsl r2, r0, #0x18
    lsr r2, r2, #0x16
    lsr r3, r0, #8
    ldr r3, [r4,r3]
    ldr r2, [r3,r2]
    cmp r2, #0
    bge loc_8002AD2
    lsl r2, r2, #1
    lsr r2, r2, #1
    mov r8, r2
    ldr r2, [r2]
    lsr r2, r2, #8
    add r3, r1, r2
    cmp r3, r6
    bge loc_8002AD2
    mov r12, r0
    ldrb r0, [r5]
    cmp r0, #0xc
    mov r0, r12
    bge loc_8002AD2
    ldrb r3, [r5]
    lsl r7, r3, #1
    add r7, #4
    strh r0, [r5,r7]
    lsl r7, r3, #2
    add r7, #0x1c
    add r1, #4
    str r1, [r5,r7]
    sub r1, #4
    add r3, #1
    strb r3, [r5]
    push {r1,r2}
    mov r0, r8
    bl SWI_LZ77UnCompReadNormalWrite8bit
    pop {r1,r2}
    add r1, r1, r2
    str r1, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
    mov r0, #1
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
loc_8002AD2:
    mov r0, #0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
// end of function sub_8002A64

.thumb
sub_8002ADE:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8002bf0-0x8002ae0-4] // =byte_200DCA0
    ldr r4, [pc, #0x8002bc0-0x8002ae2-2] // =dword_8031CC4
    ldrb r3, [r5]
    cmp r3, #0
    beq locret_8002B2E
    sub r3, #1
    lsl r7, r3, #1
    add r7, #4
    ldrh r0, [r5,r7]
    lsl r2, r0, #0x18
    lsr r2, r2, #0x16
    lsr r3, r0, #8
    ldr r3, [r4,r3]
    ldr r2, [r3,r2]
    cmp r2, #0
    bge locret_8002B2E
    lsl r2, r2, #1
    lsr r2, r2, #1
    mov r8, r2
    ldr r2, [r2]
    ldr r0, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
    lsr r2, r2, #8
    sub r0, r0, r2
    str r0, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
    ldrb r3, [r5]
    sub r3, #1
    strb r3, [r5]
    lsl r7, r3, #1
    add r7, #4
    mov r0, #0xff
    mov r1, #0x7f
    lsl r1, r1, #8
    orr r0, r1
    strh r0, [r5,r7]
    lsl r7, r3, #2
    add r7, #0x1c
    mov r0, #0
    mvn r0, r0
    str r0, [r5,r7]
locret_8002B2E:
    pop {r4-r7,pc}
// end of function sub_8002ADE

.thumb
sub_8002B30:
    push {r4-r7,lr}
    lsl r0, r0, #8
    orr r0, r1
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, [pc, #0x8002bf0-0x8002b3e-2] // =byte_200DCA0
    bl sub_8002BCC
    ldr r1, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
    ldr r4, [pc, #0x8002bc0-0x8002b46-2] // =dword_8031CC4
    ldr r6, [pc, #0x8002bc8-0x8002b48-4] // =dword_2033000
    add r3, r5, #0
    add r3, #4
    mov r9, r1
    mov r2, #0
loc_8002B52:
    ldrh r1, [r3,r2]
    cmp r0, r1
    mov r1, r9
    beq loc_8002BB2
    add r2, #2
    cmp r2, #0x18
    blt loc_8002B52
    mov r1, r9
    lsl r2, r0, #0x18
    lsr r2, r2, #0x16
    lsr r3, r0, #8
    ldr r3, [r4,r3]
    ldr r2, [r3,r2]
    cmp r2, #0
    bge loc_8002BB2
    lsl r2, r2, #1
    lsr r2, r2, #1
    mov r8, r2
    ldr r2, [r2]
    lsr r2, r2, #8
    add r3, r1, r2
    cmp r3, r6
    bge loc_8002BB2
    mov r12, r0
    ldrb r0, [r5]
    cmp r0, #0xc
    mov r0, r12
    bge loc_8002BB2
    ldrb r3, [r5]
    lsl r7, r3, #1
    add r7, #4
    strh r0, [r5,r7]
    lsl r7, r3, #2
    add r7, #0x1c
    add r1, #4
    str r1, [r5,r7]
    sub r1, #4
    push {r1,r2}
    mov r0, r8
    bl SWI_LZ77UnCompReadNormalWrite8bit
    pop {r1,r2}
    mov r0, #1
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
loc_8002BB2:
    mov r0, #0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
    .byte 0, 0
off_8002BC0:    .word dword_8031CC4
dword_8002BC4:    .word 0x2040000
off_8002BC8:    .word dword_2033000
// end of function sub_8002B30

.thumb
sub_8002BCC:
    push {r0-r7,lr}
    ldrb r3, [r5]
    lsl r7, r3, #1
    add r7, #4
    mov r0, #0xff
    mov r1, #0x7f
    lsl r1, r1, #8
    orr r0, r1
    strh r0, [r5,r7]
    lsl r7, r3, #2
    add r7, #0x1c
    mov r0, #0
    mvn r0, r0
    str r0, [r5,r7]
    pop {r0-r7,pc}
// end of function sub_8002BCC

    push {r4-r7,lr}
    pop {r4-r7,pc}
    .byte 0, 0
off_8002BF0:    .word byte_200DCA0
    .word unk_8002BF8
unk_8002BF8:    .byte 0
    .byte 0x6, 0x55, 0x4E
aCompStr8xEnd8x:    .byte 0x43, 0x4F
    .byte 0x4D, 0x50
    .byte 0xA, 0x53
    .byte 0x54, 0x52
    .byte 0x3A, 0x25
    .byte 0x38, 0x78
    .byte 0xA, 0x45
    .byte 0x4E, 0x44
    .byte 0x3A, 0x25
    .byte 0x38, 0x78
    .byte 0xA, 0x53
    .byte 0x49, 0x5A
    .byte 0x3A, 0x25
    .byte 0x58, 0x2F
    .byte 0x25, 0x58
    .byte 0xA, 0x0
    .word unk_2037800
    .byte 0
    .byte 0
    .byte 4
    .byte 2
.thumb
sub_8002C24:
    push {r5,lr}
    push {r0-r2}
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r5, r5, r3
    b loc_8002C36
    .byte 0x20
    .byte 0xB5
    .byte 7
    .byte 0xB4
loc_8002C36:
    ldrb r0, [r5,#0x11]
    mov r1, #3
    tst r0, r1
    beq loc_8002C4E
    ldrb r3, [r5,#0x13]
    mov r1, #0x3e 
    and r3, r1
    lsr r3, r3, #1
    pop {r0-r2}
    bl sub_802FE7A
    pop {r5,pc}
loc_8002C4E:
    pop {r0-r2}
    pop {r5,pc}
// end of function sub_8002C24

.thumb
sub_8002C52:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x11]
    mov r0, #0xc
    bic r1, r0
    mov r0, #8
    orr r1, r0
    strb r1, [r3,#0x11]
    mov pc, lr
// end of function sub_8002C52

.thumb
sub_8002C68:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x11]
    mov r0, #0xc
    bic r1, r0
    strb r1, [r3,#0x11]
    mov pc, lr
// end of function sub_8002C68

.thumb
sub_8002C7A:
    mov r2, #4
    b loc_8002C7E
loc_8002C7E:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    push {r7}
    ldrb r1, [r3,#0x11]
    mov r7, #0xc
    bic r1, r7
    orr r1, r2
    strb r1, [r3,#0x11]
    pop {r7}
    mov r3, r10
    ldr r3, [r3,#0x20]
    ldrb r1, [r3]
    mov r2, #0xc0
    bic r1, r2
    mov r2, #0
    orr r1, r2
    strb r1, [r3]
    strb r0, [r3,#2]
    sub r0, #0x10
    neg r0, r0
    strb r0, [r3,#3]
    mov r0, #0
    strb r0, [r3]
    mov r0, #0x3f 
    strb r0, [r3,#1]
    mov pc, lr
    .byte 0xC
    .byte 0x20
    .byte 0xFF
    .byte 0xE7
    .byte 0xAB
    .byte 0x78 
    .byte 0x1B
    .byte 9
    .byte 0x1B
    .byte 1
    .byte 0x5B 
    .byte 0x19
    .byte 0x59 
    .byte 0x7C 
    .byte 0x81
    .byte 0x43 
    .byte 4
    .byte 0x22 
    .byte 0x11
    .byte 0x43 
    .byte 0x59 
    .byte 0x74 
    .byte 0xF7
    .byte 0x46 
// end of function sub_8002C7A

.thumb
sub_8002CCE:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x11]
    mov r0, #0xc
    bic r1, r0
    strb r1, [r3,#0x11]
    mov pc, lr
// end of function sub_8002CCE

.thumb
sub_8002CE0:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrb r1, [r3,#0x11]
    mov r2, #0xc
    and r2, r1
    mov r3, r10
    ldr r3, [r3,#0x20]
    ldrb r0, [r3,#2]
    mov pc, lr
// end of function sub_8002CE0

.thumb
sub_8002CF6:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrb r1, [r3,#0x11]
    mov r0, #4
    and r0, r1
    mov pc, lr
// end of function sub_8002CF6

.thumb
sub_8002D06:
    push {r5,lr}
    ldr r3, [pc, #0x8002d10-0x8002d08-4] // =loc_30061E8
    mov lr, pc
    bx r3
    pop {r5,pc}
dword_8002D10:    .word 0x30061E9
// end of function sub_8002D06

.thumb
sub_8002D14:
    push {r5,lr}
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r5, r5, r3
    b loc_8002D22
// end of function sub_8002D14

.thumb
sub_8002D20:
    push {r5,lr}
loc_8002D22:
    ldrb r0, [r5,#0x11]
    mov r1, #3
    tst r1, r0
    bne loc_8002D4E
    bl sub_802FE48
    cmp r0, #0xff
    beq loc_8002D4E
    ldrb r2, [r5,#0x11]
    mov r1, #3
    orr r2, r1
    strb r2, [r5,#0x11]
    push {r7}
    ldrb r7, [r5,#0x13]
    mov r1, #0x3e 
    bic r7, r1
    lsl r0, r0, #1
    orr r7, r0
    strb r7, [r5,#0x13]
    pop {r7}
    mov r0, #1
    pop {r5,pc}
loc_8002D4E:
    mov r0, #0
    pop {r5,pc}
// end of function sub_8002D20

.thumb
sprite_makeUnscalable:
    push {r5,lr}
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r5, r5, r3
    b loc_8002D60
    push {r5,lr}
loc_8002D60:
    ldrb r0, [r5,#0x11]
    mov r1, #3
    tst r1, r0
    beq locret_8002D7E
    bic r0, r1
    strb r0, [r5,#0x11]
    ldrb r0, [r5,#0x13]
    add r2, r0, #0
    mov r1, #0x3e 
    and r0, r1
    lsr r0, r0, #1
    bic r2, r1
    strb r2, [r5,#0x13]
    bl sub_802FE6A
locret_8002D7E:
    pop {r5,pc}
// end of function sprite_makeUnscalable

.thumb
sprite_setPallete:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    strb r0, [r3,#4]
    mov pc, lr
// end of function sprite_setPallete

.thumb
sub_8002D8C:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrb r0, [r3,#4]
    mov pc, lr
// end of function sub_8002D8C

.thumb
dead_8002D98:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    strb r0, [r3]
    mov pc, lr
// end of function dead_8002D98

.thumb
sprite_setAnimation:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    strb r0, [r3]
    mov pc, lr
// end of function sprite_setAnimation

.thumb
sub_8002DB0:
    mov r1, #0xf0
    b loc_8002DB4
loc_8002DB4:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#0x15]
    mov r2, #0xf0
    bic r0, r2
    orr r0, r1
    strb r0, [r3,#0x15]
    mov pc, lr
// end of function sub_8002DB0

.thumb
sub_8002DC8:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrb r0, [r3,#0x15]
    mov r1, #0xf0
    and r1, r0
    mov pc, lr
// end of function sub_8002DC8

.thumb
sub_8002DD8:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#0x15]
    mov r1, #0xf0
    bic r0, r1
    strb r0, [r3,#0x15]
    mov pc, lr
// end of function sub_8002DD8

.thumb
sub_8002DEA:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#2]
    ldrb r1, [r3,#1]
    cmp r1, #0
    beq loc_8002DFE
    mov r1, #0xc0
    bic r0, r1
loc_8002DFE:
    ldrb r1, [r3]
    ldrb r2, [r3]
    mov pc, lr
// end of function sub_8002DEA

.thumb
sub_8002E04:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#3]
    mov r1, #8
    and r0, r1
    mov pc, lr
// end of function sub_8002E04

.thumb
sub_8002E14:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    mov r2, #0xc
    ldrb r1, [r3,#0x15]
    bic r1, r2
    lsl r0, r0, #2
    orr r1, r0
    strb r1, [r3,#0x15]
    mov pc, lr
// end of function sub_8002E14

    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    mov r1, #0xc
    ldrb r0, [r3,#0x15]
    and r0, r1
    lsr r0, r0, #2
    mov pc, lr
.thumb
sub_8002E3C:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#3]
    mov r1, #1
    orr r0, r1
    mov r1, #4
    bic r0, r1
    strb r0, [r3,#3]
    mov pc, lr
// end of function sub_8002E3C

.thumb
sub_8002E52:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#3]
    mov r1, #1
    bic r0, r1
    mov r1, #4
    bic r0, r1
    strb r0, [r3,#3]
    mov pc, lr
// end of function sub_8002E52

    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldr r0, [r3,#0x1c]
    ldr r0, [r0]
    ldr r1, [r3,#0x18]
    add r0, r0, r1
    ldr r0, [r0]
    lsr r0, r0, #5
    mov pc, lr
    ldrb r0, [r5]
    tst r0, r0
    beq loc_8002EA4
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    mov r2, #0xc
    ldrsh r1, [r3,r2]
    mov r2, #0xe
    ldrsb r2, [r3,r2]
    mov r0, #0x10
    lsl r0, r0, #4
    add r0, #0xff
    and r1, r0
    mov r0, #0xff
    and r2, r0
    mov r0, #1
    mov pc, lr
loc_8002EA4:
    mov r0, #0
    mov r1, #0
    mov r2, #0
    mov pc, lr
.thumb
sub_8002EAC:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#0x16]
    mov r1, #2
    orr r0, r1
    strb r0, [r3,#0x16]
    mov pc, lr
// end of function sub_8002EAC

    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#0x16]
    mov r1, #2
    bic r0, r1
    strb r0, [r3,#0x16]
    mov pc, lr
.thumb
sub_8002ED0:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    strh r0, [r3,#6]
    mov pc, lr
// end of function sub_8002ED0

.thumb
sub_8002EDC:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrh r0, [r3,#6]
    mov pc, lr
// end of function sub_8002EDC

.thumb
sub_8002EE8:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    mov r0, #0
    strh r0, [r3,#6]
    mov pc, lr
// end of function sub_8002EE8

.thumb
sub_8002EF6:
    lsl r1, r1, #4
    orr r0, r1
    mov r2, #0x10
    b loc_8002F06
    mov r2, #0x10
    b loc_8002F06
loc_8002F02:
    tst r2, r2
    beq sub_8002F2C
loc_8002F06:
    tst r0, r0
    beq sub_8002F2C
    lsl r0, r0, #8
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x11]
    orr r1, r2
    strb r1, [r3,#0x11]
    mov r3, r10
    ldr r3, [r3,#8]
    ldrh r1, [r3,#2]
    mov r2, #0xff
    lsl r2, r2, #8
    bic r1, r2
    orr r1, r0
    strh r1, [r3,#2]
    mov pc, lr
// end of function sub_8002EF6

.thumb
sub_8002F2C:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x11]
    mov r0, #0x10
    bic r1, r0
    strb r1, [r3,#0x11]
    mov pc, lr
// end of function sub_8002F2C

.thumb
sub_8002F3E:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrb r0, [r3,#0x11]
    mov r2, #0x10
    and r2, r0
    mov r3, r10
    ldr r3, [r3,#8]
    ldrh r0, [r3,#2]
    mov r1, #0xff
    bic r0, r1
    lsr r0, r0, #8
    mov pc, lr
    .byte 0
    .byte 0x20
// end of function sub_8002F3E

.thumb
sub_8002F5C:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r2, [r3,#0x13]
    mov r1, #0x30 
    bic r2, r1
    lsl r0, r0, #4
    orr r2, r0
    strb r2, [r3,#0x13]
    and r2, r1
    ldrb r1, [r3,#0x16]
    mov r0, #0x30 
    bic r1, r0
    orr r1, r2
    strb r1, [r3,#0x16]
    mov pc, lr
// end of function sub_8002F5C

.thumb
sub_8002F7E:
    ldrb r3, [r0,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r0
    ldrb r0, [r3,#0x16]
    mov r1, #0x30 
    and r0, r1
    lsr r0, r0, #4
    mov pc, lr
// end of function sub_8002F7E

.thumb
sub_8002F90:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#3]
    mov r1, #4
    orr r0, r1
    mov r1, #1
    bic r0, r1
    strb r0, [r3,#3]
    mov pc, lr
// end of function sub_8002F90

.thumb
sub_8002FA6:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    str r0, [r3,#0x2c]
    mov pc, lr
// end of function sub_8002FA6

.thumb
sub_8002FB2:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldr r0, [r3,#0x2c]
    mov pc, lr
// end of function sub_8002FB2

    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    mov r1, #0x80
    lsl r1, r1, #0x18
    lsr r1, r0
    ldr r0, [r3,#0x2c]
    orr r0, r1
    str r0, [r3,#0x2c]
    mov pc, lr
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    mov r1, #0x80
    lsl r1, r1, #0x18
    lsr r1, r0
    ldr r0, [r3,#0x2c]
    bic r0, r1
    str r0, [r3,#0x2c]
    mov pc, lr
    mov r0, #0
.thumb
sub_8002FEC:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    str r0, [r3,#0x30]
    mov pc, lr
// end of function sub_8002FEC

    mov r0, #0
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    str r0, [r3,#0x34]
    mov pc, lr
.thumb
sub_8003006:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#3]
    mov r1, #0x20 
    orr r0, r1
    strb r0, [r3,#3]
    mov pc, lr
// end of function sub_8003006

    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r0, [r3,#3]
    mov r1, #0x20 
    bic r0, r1
    strb r0, [r3,#3]
    mov pc, lr
.thumb
sub_800302A:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x16]
    mov r2, #0xc
    bic r1, r2
    mov r2, #2
    lsl r0, r2
    orr r1, r0
    strb r1, [r3,#0x16]
    ldrb r0, [r3,#3]
    mov r1, #0x40 
    orr r0, r1
    strb r0, [r3,#3]
    mov pc, lr
// end of function sub_800302A

.thumb
sub_800304A:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    ldrb r1, [r3,#0x15]
    mov r2, #0xf0
    bic r1, r2
    lsl r0, r0, #4
    orr r1, r0
    strb r1, [r3,#0x15]
    mov pc, lr
// end of function sub_800304A

.thumb
sub_8003060:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    strb r0, [r3,#0xa]
    mov pc, lr
// end of function sub_8003060

.thumb
sub_800306C:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    strh r0, [r3,#8]
    mov r0, #0
    str r0, [r3,#0x24]
    mov pc, lr
// end of function sub_800306C

.thumb
sub_800307C:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    strh r0, [r3,#0xc]
    strh r1, [r3,#0xe]
    mov pc, lr
// end of function sub_800307C

.thumb
sub_800308A:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    mov r2, #0xc
    ldrsh r2, [r3,r2]
    add r0, r0, r2
    mov r2, #0xc
    strh r0, [r3,r2]
    mov r2, #0xe
    ldrsh r2, [r3,r2]
    add r1, r1, r2
    mov r2, #0xe
    strh r1, [r3,r2]
    mov pc, lr
// end of function sub_800308A

.thumb
sub_80030A8:
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r3, r3, r5
    mov r0, #0xc
    ldrsh r0, [r3,r0]
    mov r1, #0xe
    ldrsh r1, [r3,r1]
    mov pc, lr
// end of function sub_80030A8

.thumb
sub_80030BA:
    push {r4-r7,lr}
    add r5, r0, #0
    ldrb r3, [r5,#2]
    lsr r3, r3, #4
    lsl r3, r3, #4
    add r5, r5, r3
    ldr r3, [r5,#0x20]
    ldrb r2, [r3]
    lsl r2, r2, #2
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#0xc]
    ldr r3, [r5,#0x18]
    add r3, r3, r0
    ldr r2, [r3,r2]
    add r2, r2, r3
    mov r4, #0
loc_80030DA:
    ldrb r3, [r2]
    cmp r3, #0xff
    beq loc_80030F4
    cmp r4, r1
    beq loc_80030EA
    add r4, #1
    add r2, #5
    b loc_80030DA
loc_80030EA:
    mov r0, #1
    ldrsb r0, [r2,r0]
    mov r1, #2
    ldrsb r1, [r2,r1]
    pop {r4-r7,pc}
loc_80030F4:
    mov r0, #0
    mov r1, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80030FC:    .word sub_8003B4C+1
    .word object_spawnType1+1
    .word sub_80045C0+1
    .word object_spawnType3+1
    .word object_spawnType4+1
    .word sub_80047E0+1
off_8003114:    .word sub_8003B86+1
    .word object_freeMemory+1
    .word sub_8004602+1
    .word object_freeMemory+1
    .word object_freeMemory+1
    .word sub_80048B2+1
off_800312C:    .word byte_2009F40
    .word unk_203A9B0
    .word byte_20057B0
    .word unk_203CFE0
    .word unk_2036870
    .word byte_2011EE0
off_8003144:    .word dword_2009F34
    .word unk_2034000
    .word dword_20010E0
    .word unk_2034F54
    .word unk_2036710
    .word unk_2011E50
off_800315C:    .word 0xC8
    .word 0xD8
    .word 0xD8
    .word 0xD8
    .word 0xC8
    .word 0x78
unk_8003174:    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0x10
    .byte 0
    .byte 0
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0x38 
    .byte 0
    .byte 0
    .byte 0
// end of function sub_80030BA

.thumb
sub_800318C:
    ldr r0, [pc, #0x80031a4-0x800318c-4] // =dword_2009380
    ldr r1, [pc, #0x80031a8-0x800318e-2] // =dword_2009AB0
    ldr r2, [pc, #0x80031a0-0x8003190-4] // =dword_200AF70
    mov r3, #0
    str r3, [r2]
    str r3, [r0]
    str r1, [r0,#0x4] // (dword_2009384 - 0x2009380)
    str r0, [r1]
    str r3, [r1,#0x4] // (dword_2009AB4 - 0x2009ab0)
    mov pc, lr
off_80031A0:    .word dword_200AF70
off_80031A4:    .word dword_2009380
off_80031A8:    .word dword_2009AB0
// end of function sub_800318C

loc_80031AC:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    bl sub_800371A
    mov r0, #0
    str r0, [sp]
    ldr r7, [pc, #0x8003214-0x80031b8-4] // =dword_2009380
loc_80031BA:
    ldr r7, [r7,#4]
    ldr r0, [pc, #0x8003218-0x80031bc-4] // =dword_2009AB0
    cmp r7, r0
    beq loc_8003208
    ldr r0, [pc, #0x8003234-0x80031c2-2] // =dword_200AF70
    str r7, [r0]
    mov r5, #0x10
    add r5, r5, r7
    ldrb r4, [r5]
    mov r6, r10
    ldr r6, [r6,#0x3c]
    ldrb r0, [r6,#0xa]
    tst r0, r0
    beq loc_80031DC
    mov r0, #4
    tst r4, r0
    beq loc_8003202
loc_80031DC:
    bl battle_isTimeStop
    beq loc_80031E8
    mov r0, #0x10
    tst r4, r0
    beq loc_8003202
loc_80031E8:
    ldrb r0, [r5,#2]
    mov r1, #0xf
    and r0, r1
    lsl r0, r0, #2
    ldr r1, [pc, #0x800321c-0x80031f0-4] // =unk_8003220
    ldr r0, [r0,r1]
    ldrb r1, [r5,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    push {r7}
    mov lr, pc
    bx r0
    pop {r7}
loc_8003202:
    bl sub_800372A
    b loc_80031BA
loc_8003208:
    mov r0, #0
    ldr r1, [pc, #0x8003234-0x800320a-2] // =dword_200AF70
    str r0, [r1]
    add sp, sp, #0x10
    pop {r4-r7,pc}
    .byte 0
    .byte 0
off_8003214:    .word dword_2009380
off_8003218:    .word dword_2009AB0
off_800321C:    .word unk_8003220
unk_8003220:    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .word off_8003C9C
    .word 0x0
    .word off_8003EC4
    .word off_80042C8
off_8003234:    .word dword_200AF70
    .word off_800323C
off_800323C:    .word unk_8003250
    .word loc_8003258
    .word loc_8003260
    .word loc_8003268
    .word loc_8003270
unk_8003250:    .byte 0x1B
    .byte 0
.thumb
sub_8003252:
    mov r5, #0x50 
    add r2, #0x30 
    lsl r0, r7, #1
loc_8003258:
    .hword 0x1b // mov r3, r3  // <mkdata>
    mov r5, #0x45 
    add r2, #0x30 
    lsl r0, r7, #1
loc_8003260:
    .hword 0x1b // mov r3, r3  // <mkdata>
    mov r5, #0x4d 
    add r2, #0x30 
    lsl r0, r7, #1
loc_8003268:
    .hword 0x1b // mov r3, r3  // <mkdata>
    mov r5, #0x53 
    add r2, #0x30 
    lsl r0, r7, #1
loc_8003270:
    .hword 0x1b // mov r3, r3  // <mkdata>
    mov r5, #0x46 
    add r2, #0x30 
    lsl r0, r7, #1
// end of function sub_8003252

.thumb
sub_8003278:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    str r1, [sp]
    mov r1, #0xf
    and r0, r1
    lsl r0, r0, #4
    ldr r1, [pc, #0x80032cc-0x8003284-4] // =dword_80032D0
    add r7, r0, r1
    ldr r1, [r7]
    mov r2, #1
    lsl r2, r2, #0x1f
    ldr r3, [r7,#8]
    ldrb r4, [r7,#0xc]
    ldr r5, [r7,#4]
    ldr r6, [r1]
loc_8003296:
    tst r6, r2
    beq loc_80032A6
    lsr r2, r2, #1
    add r5, r5, r4
    cmp r5, r3
    blt loc_8003296
    mov r5, #0
    b loc_80032C8
loc_80032A6:
    orr r6, r2
    str r6, [r1]
    add r5, #0x10
    mov r0, #4
    add r0, r0, r5  // memBlock
    ldrb r1, [r7,#0xd]  // numWords
    bl CpuSet_ZeroFillWord
    ldrb r0, [r7,#0xe]
    strb r0, [r5]
    ldr r7, [sp]
    ldmia r7!, {r0-r4}
    strb r0, [r5,#1]
    str r1, [r5,#0x34]
    str r2, [r5,#0x38]
    str r3, [r5,#0x3c]
    str r4, [r5,#4]
loc_80032C8:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
off_80032CC:    .word dword_80032D0
dword_80032D0:    .word 0x0, 0x0, 0x0, 0x0
    .word unk_2034000
    .word unk_203A9A0
    .word unk_203C4A0
    .word 0x198CD8, 0x0, 0x0, 0x0, 0x0
    .word unk_2034F54
    .word unk_203CFD0
    .word dword_203EAD0
    .byte 0xD8
    .byte 0x8C
    .byte 9
    .byte 0
    .byte 0x10
    .byte 0x67 
    .byte 3
    .byte 2
    .byte 0x60 
    .byte 0x68 
    .byte 3
    .byte 2
    .byte 0x60 
    .byte 0x81
    .byte 3
    .byte 2
    .byte 0xC8
    .byte 0x7C 
    .byte 0x19
    .byte 0
// end of function sub_8003278

.thumb
object_spawnType1:
    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #1
    mov r1, sp
    bl sub_8003278
    tst r5, r5
    beq loc_8003338
    bl sub_8003400
loc_8003338:
    add sp, sp, #0x14
    pop {r7,pc}
// end of function object_spawnType1

    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #1
    mov r1, sp
    bl sub_8003278
    tst r5, r5
    beq loc_8003354
    bl sub_8003428
loc_8003354:
    add sp, sp, #0x14
    pop {r7,pc}
.thumb
object_spawnType3:
    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #3
    mov r1, sp
    bl sub_8003278
    tst r5, r5
    beq loc_8003370
    bl sub_8003400
loc_8003370:
    add sp, sp, #0x14
    pop {r7,pc}
// end of function object_spawnType3

.thumb
sub_8003374:
    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #3
    mov r1, sp
    bl sub_8003278
    tst r5, r5
    beq loc_800338C
    bl sub_8003428
loc_800338C:
    add sp, sp, #0x14
    pop {r7,pc}
// end of function sub_8003374

    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #3
    mov r1, sp
    bl sub_8003278
    tst r5, r5
    beq loc_80033A8
    bl sub_8003440
loc_80033A8:
    add sp, sp, #0x14
    pop {r7,pc}
.thumb
object_spawnType4:
    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #4
    mov r1, sp
    bl sub_8003278
    tst r5, r5
    beq loc_80033C4
    bl sub_8003400
loc_80033C4:
    add sp, sp, #0x14
    pop {r7,pc}
// end of function object_spawnType4

    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #4
    mov r1, sp
    bl sub_8003278
    tst r5, r5
    beq loc_80033E0
    bl sub_8003428
loc_80033E0:
    add sp, sp, #0x14
    pop {r7,pc}
.thumb
sub_80033E4:
    push {r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    stmia r7!, {r0-r4}
    mov r0, #4
    mov r1, sp
    bl sub_8003278
    tst r5, r5
    beq loc_80033FC
    bl sub_8003440
loc_80033FC:
    add sp, sp, #0x14
    pop {r7,pc}
// end of function sub_80033E4

.thumb
sub_8003400:
    push {lr}
    mov r0, #0x10
    sub r0, r5, r0
    ldr r1, [pc, #0x8003424-0x8003406-2] // =dword_200AF70
    ldr r1, [r1]
    cmp r0, r1
    beq loc_800341E
    tst r1, r1
    beq loc_800341E
    str r1, [r0]
    ldr r2, [r1,#4]
    str r0, [r1,#4]
    str r2, [r0,#4]
    str r0, [r2]
    b locret_8003422
loc_800341E:
    bl sub_8003428
locret_8003422:
    pop {pc}
off_8003424:    .word dword_200AF70
// end of function sub_8003400

.thumb
sub_8003428:
    mov r0, #0x10
    sub r0, r5, r0
    ldr r1, [pc, #0x800343c-0x800342c-4] // =dword_2009AB0
    ldr r2, [r1]
    str r0, [r2,#4]
    str r2, [r0]
    str r1, [r0,#4]
    str r0, [r1]
    mov pc, lr
    .balign 4, 0x00
off_800343C:    .word dword_2009AB0
// end of function sub_8003428

.thumb
sub_8003440:
    mov r0, #0x10
    sub r0, r5, r0
    ldr r1, [pc, #0x8003454-0x8003444-4] // =dword_2009380
    ldr r2, [r1,#0x4] // (dword_2009384 - 0x2009380)
    str r0, [r1,#0x4] // (dword_2009384 - 0x2009380)
    str r2, [r0,#4]
    str r1, [r0]
    str r0, [r2]
    mov pc, lr
    .balign 4, 0x00
off_8003454:    .word dword_2009380
// end of function sub_8003440

.thumb
object_freeMemory:
    push {r5,lr}
    mov r1, #0
    strb r1, [r5]
    ldrb r1, [r5,#2]
    mov r2, #0xf
    and r1, r2
    lsl r1, r1, #2
    ldr r2, [pc, #0x800348c-0x8003466-2] // =off_8003144
    ldr r1, [r2,r1]
    ldrb r2, [r5,#3]
    mov r3, #1
    lsl r3, r3, #0x1f
    lsr r3, r2
    ldr r2, [r1]
    bic r2, r3
    str r2, [r1]
    mov r0, #0x10
    sub r0, r5, r0
    ldr r1, [r0]
    ldr r2, [r0,#4]
    str r2, [r1,#4]
    str r1, [r2]
    bl sprite_makeUnscalable
    pop {r5,pc}
    .balign 4, 0x00
off_800348C:    .word off_8003144
// end of function object_freeMemory

.thumb
sub_8003490:
    push {r4,r7,lr}
    ldr r7, [pc, #0x80034cc-0x8003492-2] // =off_80034D0
    lsl r1, r0, #4
    add r7, r7, r1
    lsl r1, r0, #2
    ldr r4, [pc, #0x8003530-0x800349a-2] // =off_8003144
    ldr r0, [r4,r1]  // memBlock
    ldrb r1, [r7,#0xc]
    add r1, #0x1f
    lsr r1, r1, #5
    lsl r1, r1, #2
    bl CpuSet_ZeroFillWord
    ldr r0, [r7]  // memBlock
    ldrh r1, [r7,#8]  // numWords
    bl CpuSet_ZeroFillWord
    ldr r0, [r7,#4]
    mov r1, #0
    ldrb r2, [r7,#0xa]
    ldrb r3, [r7,#0xc]
    ldrb r4, [r7,#0xb]
loc_80034BC:
    strb r2, [r0,#2]
    strb r1, [r0,#3]
    add r0, r0, r4
    add r1, #1
    cmp r1, r3
    blt loc_80034BC
    pop {r4,r7,pc}
    .balign 4, 0x00
off_80034CC:    .word off_80034D0
off_80034D0:    .word byte_2009F40
    .word byte_2009F40
    .word 0xC89000C8, 0x1, 0x203A9A0, 0x203A9B0, 0xD8911B00, 0x20
    .word 0x20057B0, 0x20057B0, 0xD8A20D80, 0x10, 0x203CFD0, 0x203CFE0
    .word 0xD8931B00, 0x20, 0x2036860, 0x2036870, 0xC8841900, 0x20
    .word 0x2011EE0, 0x2011EE0, 0x78451A40, 0x38
off_8003530:    .word off_8003144
// end of function sub_8003490

.thumb
sub_8003534:
    push {lr}
    mov r0, #0
    bl sub_8003490
    pop {pc}
// end of function sub_8003534

.thumb
sub_800353E:
    push {lr}
    mov r0, #1
    bl sub_8003490
    pop {pc}
// end of function sub_800353E

.thumb
sub_8003548:
    push {lr}
    mov r0, #3
    bl sub_8003490
    pop {pc}
// end of function sub_8003548

.thumb
sub_8003552:
    push {lr}
    mov r0, #4
    bl sub_8003490
    pop {pc}
// end of function sub_8003552

.thumb
sub_800355C:
    push {lr}
    mov r0, #2
    bl sub_8003490
    pop {pc}
// end of function sub_800355C

.thumb
sub_8003566:
    push {lr}
    mov r0, #5
    bl sub_8003490
    pop {pc}
// end of function sub_8003566

loc_8003570:
    push {r4-r7,lr}
    add r7, r0, #0
    mov r4, #0
loc_8003576:
    ldr r0, [pc, #0x800377c-0x8003576-2] // =off_80030FC
    ldrb r1, [r7]
    cmp r1, #0xff
    beq loc_800359E
    lsl r1, r1, #2
    ldr r6, [r0,r1]
    push {r4,r7}
    ldrb r0, [r7,#1]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    ldr r3, [r7,#0xc]
    ldr r4, [r7,#0x10]
    mov lr, pc
    bx r6
    pop {r4,r7}
    tst r5, r5
    beq loc_800359A
    add r4, #1
loc_800359A:
    add r7, #0x14
    b loc_8003576
loc_800359E:
    add r0, r4, #0
    pop {r4-r7,pc}
.thumb
sub_80035A2:
    push {r4-r7,lr}
    sub sp, sp, #0x18
    ldr r1, [pc, #0x8003618-0x80035a6-2] // =off_8003114
    ldr r2, [pc, #0x800361c-0x80035a8-4] // =off_800312C
    ldr r3, [pc, #0x8003620-0x80035aa-2] // =off_8003144
    ldr r4, [pc, #0x8003624-0x80035ac-4] // =off_800315C
    ldr r5, [pc, #0x8003628-0x80035ae-2] // =unk_8003174
loc_80035B0:
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    str r4, [sp,#0x10]
    str r5, [sp,#0x14]
    tst r0, r0
    beq loc_8003614
    mov r1, #1
    tst r0, r1
    beq loc_80035FA
    ldr r5, [sp,#8]
    ldr r5, [r5]
    mov r7, #0x80
    lsl r7, r7, #0x18
    mov r6, #0
loc_80035D0:
    ldr r0, [sp,#0xc]
    ldr r0, [r0]
    lsr r1, r6, #5
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    tst r0, r7
    beq loc_80035E6
    ldr r0, [sp,#4]
    ldr r0, [r0]
    mov lr, pc
    bx r0
loc_80035E6:
    mov r0, #1
    ror r7, r0
    ldr r0, [sp,#0x10]
    ldr r0, [r0]
    add r5, r5, r0
    add r6, #1
    ldr r0, [sp,#0x14]
    ldr r0, [r0]
    cmp r6, r0
    blt loc_80035D0
loc_80035FA:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    ldr r2, [sp,#8]
    ldr r3, [sp,#0xc]
    ldr r4, [sp,#0x10]
    ldr r5, [sp,#0x14]
    lsr r0, r0, #1
    add r1, #4
    add r2, #4
    add r3, #4
    add r4, #4
    add r5, #4
    b loc_80035B0
loc_8003614:
    add sp, sp, #0x18
    pop {r4-r7,pc}
off_8003618:    .word off_8003114
off_800361C:    .word off_800312C
off_8003620:    .word off_8003144
off_8003624:    .word off_800315C
off_8003628:    .word unk_8003174
// end of function sub_80035A2

.thumb
sub_800362C:
    push {r4-r7,lr}
    mov r3, r10
    ldr r3, [r3,#0xc]
    mov r2, #2
    ldrsh r1, [r0,r2]
    ldr r4, [r3,#0x3c]
    asr r4, r4, #0x10
    sub r1, r1, r4
    ldr r6, [pc, #0x8003690-0x800363c-4] // =byte_20099CC
    ldrb r6, [r6]
    tst r6, r6
    beq loc_8003646
    neg r1, r1
loc_8003646:
    add r1, #0x78 
    mov r2, #6
    ldrsh r6, [r0,r2]
    ldr r4, [r3,#0x40]
    asr r4, r4, #0x10
    sub r6, r6, r4
    add r6, #0x50 
    mov r2, #0xa
    ldrsh r4, [r0,r2]
    ldr r2, [r3,#0x44]
    asr r2, r2, #0x10
    sub r4, r4, r2
    sub r6, r6, r4
    mov r2, #0x20 
    neg r2, r2
    cmp r1, r2
    blt loc_8003688
    mov r2, #0xf0
    add r2, #0x20 
    cmp r1, r2
    bge loc_8003688
    mov r2, #0x20 
    neg r2, r2
    cmp r6, r2
    blt loc_8003688
    mov r2, #0xa0
    add r2, #0x40 
    cmp r6, r2
    bge loc_8003688
    add r0, r1, #0
    add r1, r6, #0
    mov r2, #1
    pop {r4-r7,pc}
loc_8003688:
    mov r0, #0xa0
    mov r1, #0x50 
    mov r2, #0
    pop {r4-r7,pc}
off_8003690:    .word byte_20099CC
// end of function sub_800362C

.thumb
sub_8003694:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    push {r4,r5}
    mov r3, r10
    ldr r3, [r3,#0xc]
    ldr r1, [r0]
    ldr r4, [r3,#0x3c]
    sub r1, r1, r4
    mov r8, r1
    ldr r6, [r0,#4]
    ldr r4, [r3,#0x40]
    sub r6, r6, r4
    add r1, r1, r6
    asr r1, r1, #0x10
    add r1, #0x78 
    mov r2, r8
    sub r6, r6, r2
    asr r6, r6, #1
    add r7, r6, #0
    ldr r2, [r3,#0x44]
    mov r4, #0x80
    lsl r4, r4, #0x10
    add r2, r2, r4
    add r4, r2, r6
    asr r4, r4, #0x10
    mov r9, r4
    ldr r4, [r0,#8]
    sub r6, r6, r4
    ldr r2, [r3,#0x44]
    add r6, r6, r2
    asr r6, r6, #0x10
    add r6, #0x52 
    mov r2, #0x20 
    neg r2, r2
    cmp r1, r2
    blt loc_8003708
    mov r2, #0xf0
    add r2, #0x20 
    cmp r1, r2
    bge loc_8003708
    mov r2, #0x20 
    neg r2, r2
    cmp r6, r2
    blt loc_8003708
    mov r2, #0xa0
    add r2, #0x40 
    cmp r6, r2
    bge loc_8003708
    add r0, r1, #0
    add r1, r6, #0
    mov r2, #1
    mov r3, r9
    add r3, #0x60 
    pop {r4,r5}
    mov r8, r4
    mov r9, r5
    pop {r4-r7,pc}
loc_8003708:
    add r0, r1, #0
    add r1, r6, #0
    mov r2, #0
    mov r3, r9
    add r3, #0x60 
    pop {r4,r5}
    mov r8, r4
    mov r9, r5
    pop {r4-r7,pc}
// end of function sub_8003694

.thumb
sub_800371A:
    mov r0, #0
    ldr r1, [pc, #0x8003780-0x800371c-4] // =byte_2036778
    strb r0, [r1]
    ldr r1, [pc, #0x8003784-0x8003720-4] // =byte_203CA7C
    strb r0, [r1]
    ldr r1, [pc, #0x8003788-0x8003724-4] // =byte_2036830
    strb r0, [r1]
    mov pc, lr
// end of function sub_800371A

.thumb
sub_800372A:
    ldrb r0, [r5,#2]
    mov r1, #0xf
    and r0, r1
    lsl r0, r0, #3
    ldr r1, [pc, #0x8003748-0x8003732-2] // =dword_800374C
    add r0, r0, r1
    ldr r1, [r0]
    ldr r2, [r0,#4]
    ldrb r0, [r2]
    lsl r3, r0, #2
    str r5, [r1,r3]
    add r0, #1
    strb r0, [r2]
    mov pc, lr
    .balign 4, 0x00
off_8003748:    .word dword_800374C
dword_800374C:    .word 0x0, 0x0
    .word dword_2039A10
    .word byte_2036778
    .word 0x0, 0x0
    .word dword_203A010
    .word byte_203CA7C
    .word dword_203F750
    .word byte_2036830
    .word 0x0, 0x0
off_800377C:    .word off_80030FC
off_8003780:    .word byte_2036778
off_8003784:    .word byte_203CA7C
off_8003788:    .word byte_2036830
// end of function sub_800372A

.thumb
sub_800378C:
    push {lr}
    ldr r0, [pc, #0x80037a0-0x800378e-2] // =unk_20081D0  // memBlock
    ldr r1, [pc, #0x80037a4-0x8003790-4] // =0x280  // numWords
    bl CpuSet_ZeroFillWord
    ldr r0, [pc, #0x80037a8-0x8003796-2] // =dword_200AC18
    mov r1, #0
    str r1, [r0]
    pop {pc}
    .byte 0, 0
off_80037A0:    .word unk_20081D0
off_80037A4:    .word 0x280
off_80037A8:    .word dword_200AC18
// end of function sub_800378C

.thumb
sub_80037AC:
    push {r7,lr}
    mov r7, #0x80
    lsl r7, r7, #8
    add r0, r0, r7
    lsr r0, r0, #0x10
    add r1, r1, r7
    lsr r1, r1, #0x10
    lsl r1, r1, #0x10
    orr r1, r0
    add r2, r2, r7
    lsr r2, r2, #0x10
    lsl r3, r3, #0x10
    orr r2, r3
    ldr r7, [pc, #0x80037ec-0x80037c6-2] // =dword_200AC18
    ldr r0, [r7]
    cmp r0, #0x20 
    blt loc_80037D0
    pop {r7,pc}
loc_80037D0:
    mov r7, #0x14
    mul r7, r0
    ldr r0, [pc, #0x80037f0-0x80037d4-4] // =unk_20081D0
    add r7, r7, r0
    str r1, [r7]
    str r2, [r7,#4]
    str r4, [r7,#8]
    str r5, [r7,#0xc]
    str r6, [r7,#0x10]
    ldr r7, [pc, #0x80037ec-0x80037e2-2] // =dword_200AC18
    ldr r0, [r7]
    add r0, #1
    str r0, [r7]
    pop {r7,pc}
off_80037EC:    .word dword_200AC18
off_80037F0:    .word unk_20081D0
// end of function sub_80037AC

.thumb
sub_80037F4:
    push {r5,lr}
    ldr r0, [pc, #0x8003884-0x80037f6-2] // =dword_200AC18
    ldr r0, [r0]
    cmp r0, #1
    ble loc_800387C
    ldr r5, [pc, #0x8003888-0x80037fe-2] // =unk_20081D0
    mov r6, #0
loc_8003802:
    mov r0, #0x14
    mul r0, r6
    add r3, r5, r0
    mov r7, #0
loc_800380A:
    cmp r6, r7
    beq loc_800386A
    mov r0, #0x14
    mul r0, r7
    add r4, r5, r0
    ldr r0, [r3,#0xc]
    ldr r1, [r4,#8]
    tst r0, r1
    beq loc_800386A
    add r0, r3, #0
    add r1, r4, #0
    push {r3-r7}
    bl sub_8003894
    pop {r3-r7}
    tst r0, r0
    beq loc_800386A
    push {r7}
    ldr r0, [r3,#0xc]
    ldr r1, [r4,#8]
    and r0, r1
    ldr r7, [r3,#0x10]
    ldr r1, [r7]
    orr r0, r1
    str r0, [r7]
    ldr r0, [r3,#8]
    ldr r1, [pc, #0x8003890-0x800383e-2] // =0x200000
    tst r0, r1
    beq loc_800385C
    push {r0-r2}
    ldr r0, [pc, #0x800388c-0x8003846-2] // =byte_2009F40
    ldrh r1, [r4]
    mov r2, #0x72 // (word_2009FB2 - 0x2009f40)
    strh r1, [r0,r2]
    ldrh r1, [r4,#2]
    mov r2, #0x74 // (word_2009FB4 - 0x2009f40)
    strh r1, [r0,r2]
    ldrh r1, [r4,#4]
    mov r2, #0x76 // (word_2009FB6 - 0x2009f40)
    strh r1, [r0,r2]
    pop {r0-r2}
loc_800385C:
    ldr r1, [r4,#0xc]
    and r0, r1
    ldr r7, [r4,#0x10]
    ldr r1, [r7]
    orr r0, r1
    str r0, [r7]
    pop {r7}
loc_800386A:
    add r7, #1
    ldr r0, [pc, #0x8003884-0x800386c-4] // =dword_200AC18
    ldr r0, [r0]
    cmp r0, r7
    bgt loc_800380A
    add r6, #1
    cmp r0, r6
    beq loc_800387C
    b loc_8003802
loc_800387C:
    mov r0, #0
    ldr r1, [pc, #0x8003884-0x800387e-2] // =dword_200AC18
    str r0, [r1]
    pop {r5,pc}
off_8003884:    .word dword_200AC18
off_8003888:    .word unk_20081D0
off_800388C:    .word byte_2009F40
dword_8003890:    .word 0x200000
// end of function sub_80037F4

.thumb
sub_8003894:
    push {lr}
    mov r6, #0
    ldrsh r2, [r0,r6]
    ldrsh r3, [r1,r6]
    sub r2, r2, r3
    mov r6, #2
    ldrsh r3, [r0,r6]
    ldrsh r4, [r1,r6]
    sub r3, r3, r4
    add r5, r2, #0
    mul r2, r5
    add r5, r3, #0
    mul r3, r5
    add r2, r2, r3
    ldrb r3, [r0,#6]
    ldrb r4, [r1,#6]
    add r3, r3, r4
    add r4, r3, #0
    mul r3, r4
    cmp r2, r3
    blt loc_80038C2
    mov r0, #0
    pop {pc}
loc_80038C2:
    mov r6, #4
    ldrsh r2, [r0,r6]
    ldrsh r3, [r1,r6]
    cmp r2, r3
    blt loc_80038D8
    ldrb r4, [r1,#7]
    add r3, r3, r4
    cmp r2, r3
    ble loc_80038E4
    mov r0, #0
    pop {pc}
loc_80038D8:
    ldrb r4, [r0,#7]
    add r2, r2, r4
    cmp r3, r2
    ble loc_80038E4
    mov r0, #0
    pop {pc}
loc_80038E4:
    mov r0, #1
    pop {pc}
off_80038E8:    .word sub_8142248+1
    .word 0x0, 0x0
    .word 0x1, 0x808FEA5, 0x0, 0x0
    .word 0x1
// end of function sub_8003894

.thumb
sub_8003908:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80039f0-0x800390a-2] // =byte_2000780  // memBlock
    mov r1, #0x48   // numWords
    bl CpuSet_ZeroFillWord
    pop {r4-r7,pc}
// end of function sub_8003908

.thumb
sub_8003914:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80039f0-0x8003916-2] // =byte_2000780
    push {r0}
    add r0, r5, #0  // memBlock
    mov r1, #0x48   // numWords
    bl CpuSet_ZeroFillWord
    pop {r0}
    strb r0, [r5,#0x1] // (byte_2000781 - 0x2000780)
    ldr r7, [pc, #0x80039f4-0x8003926-2] // =off_80038E8
    mov r1, #0x10
    ldrb r0, [r5,#0x1] // (byte_2000781 - 0x2000780)
    mul r0, r1
    add r7, r7, r0
    ldr r0, [r7,#8]
    str r0, [r5,#0x4] // (dword_2000784 - 0x2000780)
    ldr r0, [r7,#0xc]
    strb r0, [r5,#0x2] // (byte_2000782 - 0x2000780)
    mov r0, #1
    strb r0, [r5]
    strb r0, [r5,#0x3] // (byte_2000783 - 0x2000780)
    pop {r4-r7,pc}
// end of function sub_8003914

.thumb
sub_8003940:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80039f0-0x8003942-2] // =byte_2000780
    ldr r7, [pc, #0x80039f4-0x8003944-4] // =off_80038E8
    mov r1, #0x10
    ldrb r0, [r5,#0x1] // (byte_2000781 - 0x2000780)
    mul r0, r1
    add r7, r7, r0
    ldr r0, [r7,#4]
    tst r0, r0
    beq loc_8003958
    mov lr, pc
    bx r0
loc_8003958:
    add r0, r5, #0  // memBlock
    mov r1, #0x48   // numWords
    bl CpuSet_ZeroFillWord
    pop {r4-r7,pc}
// end of function sub_8003940

.thumb
sub_8003962:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80039f0-0x8003964-4] // =byte_2000780
    ldrb r0, [r5,#0x2] // (byte_2000782 - 0x2000780)
    tst r0, r0
    bne loc_8003974
    add r0, r5, #0  // memBlock
    mov r1, #0x48   // numWords
    bl CpuSet_ZeroFillWord
loc_8003974:
    mov r0, #1
    strb r0, [r5,#0x3] // (byte_2000783 - 0x2000780)
    pop {r4-r7,pc}
// end of function sub_8003962

    push {r4-r7,lr}
    ldr r5, [pc, #0x80039f0-0x800397c-4] // =byte_2000780
    mov r0, #1
    strb r0, [r5,#0x3] // (byte_2000783 - 0x2000780)
    pop {r4-r7,pc}
.thumb
sub_8003984:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80039f0-0x8003986-2] // =byte_2000780
    mov r0, #1
    ldrb r0, [r5]
    tst r0, r0
    beq locret_8003998
    mov r1, #0x80
    ldrb r0, [r5]
    orr r0, r1
    strb r0, [r5]
locret_8003998:
    pop {r4-r7,pc}
// end of function sub_8003984

.thumb
sub_800399A:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80039f0-0x800399c-4] // =byte_2000780
    mov r0, #1
    ldrb r0, [r5]
    mov r1, #0x7f
    and r0, r1
    strb r0, [r5]
    pop {r4-r7,pc}
// end of function sub_800399A

.thumb
sub_80039AA:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80039f0-0x80039ac-4] // =byte_2000780
    ldrb r0, [r5]
    tst r0, r0
    beq locret_80039CA
    mov r1, #0x80
    tst r0, r1
    bne locret_80039CA
    ldr r7, [pc, #0x80039f4-0x80039ba-2] // =off_80038E8
    mov r1, #0x10
    ldrb r0, [r5,#0x1] // (byte_2000781 - 0x2000780)
    mul r0, r1
    add r7, r7, r0
    ldr r0, [r7]
    mov lr, pc
    bx r0
locret_80039CA:
    pop {r4-r7,pc}
// end of function sub_80039AA

.thumb
sub_80039CC:
    ldr r1, [pc, #0x80039f0-0x80039cc-4] // =byte_2000780
    ldrb r0, [r1]
    tst r0, r0
    mov pc, lr
// end of function sub_80039CC

.thumb
sub_80039D4:
    push {r4-r7,lr}
    add r7, r0, #0
    mov r4, #0
    bl sub_80039CC
    beq loc_80039EA
    ldr r0, [pc, #0x80039f0-0x80039e0-4] // =byte_2000780
    ldrb r0, [r0,#0x1] // (byte_2000781 - 0x2000780)
    cmp r0, r7
    bne loc_80039EA
    mov r4, #1
loc_80039EA:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
off_80039F0:    .word byte_2000780
off_80039F4:    .word off_80038E8
off_80039F8:    .word sub_81419A0+1
    .word 0x0, 0x0
    .word 0x1, 0x0, 0x0
    .word 0xFFFFFFFF, 0x0
    .word sub_8143482+1
    .word 0x0, 0x0
    .word 0x1, 0x0, 0x0
    .word 0xFFFFFFFF, 0x0, 0x0, 0x0
    .word 0xFFFFFFFF, 0x0
    .word sub_8144048+1
    .word 0x0, 0x0
    .word 0x1
// end of function sub_80039D4

.thumb
sub_8003A58:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8003b40-0x8003a5a-2] // =byte_2001010  // memBlock
    mov r1, #0x48   // numWords
    bl CpuSet_ZeroFillWord
    pop {r4-r7,pc}
// end of function sub_8003A58

.thumb
sub_8003A64:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8003b40-0x8003a66-2] // =byte_2001010
    push {r0}
    add r0, r5, #0  // memBlock
    mov r1, #0x48   // numWords
    bl CpuSet_ZeroFillWord
    pop {r0}
    strb r0, [r5,#0x1] // (byte_2001011 - 0x2001010)
    ldr r7, [pc, #0x8003b44-0x8003a76-2] // =off_80039F8
    mov r1, #0x10
    ldrb r0, [r5,#0x1] // (byte_2001011 - 0x2001010)
    mul r0, r1
    add r7, r7, r0
    ldr r0, [r7,#8]
    str r0, [r5,#0x4] // (dword_2001014 - 0x2001010)
    ldr r0, [r7,#0xc]
    strb r0, [r5,#0x2] // (byte_2001012 - 0x2001010)
    mov r0, #1
    strb r0, [r5]
    strb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
    pop {r4-r7,pc}
// end of function sub_8003A64

loc_8003A90:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8003b40-0x8003a92-2] // =byte_2001010
    ldr r7, [pc, #0x8003b44-0x8003a94-4] // =off_80039F8
    mov r1, #0x10
    ldrb r0, [r5,#0x1] // (byte_2001011 - 0x2001010)
    mul r0, r1
    add r7, r7, r0
    ldr r0, [r7,#4]
    tst r0, r0
    beq loc_8003AA8
    mov lr, pc
    bx r0
loc_8003AA8:
    add r0, r5, #0
    mov r1, #0x48 
    bl CpuSet_ZeroFillWord
    pop {r4-r7,pc}
.thumb
sub_8003AB2:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8003b40-0x8003ab4-4] // =byte_2001010
    ldrb r0, [r5,#0x2] // (byte_2001012 - 0x2001010)
    tst r0, r0
    bne loc_8003AC4
    add r0, r5, #0  // memBlock
    mov r1, #0x48   // numWords
    bl CpuSet_ZeroFillWord
loc_8003AC4:
    mov r0, #1
    strb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
    pop {r4-r7,pc}
// end of function sub_8003AB2

    push {r4-r7,lr}
    ldr r5, [pc, #0x8003b40-0x8003acc-4] // =byte_2001010
    mov r0, #1
    strb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
    pop {r4-r7,pc}
.thumb
sub_8003AD4:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8003b40-0x8003ad6-2] // =byte_2001010
    mov r0, #1
    ldrb r0, [r5]
    tst r0, r0
    beq locret_8003AE8
    mov r1, #0x80
    ldrb r0, [r5]
    orr r0, r1
    strb r0, [r5]
locret_8003AE8:
    pop {r4-r7,pc}
// end of function sub_8003AD4

.thumb
sub_8003AEA:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8003b40-0x8003aec-4] // =byte_2001010
    mov r0, #1
    ldrb r0, [r5]
    mov r1, #0x7f
    and r0, r1
    strb r0, [r5]
    pop {r4-r7,pc}
// end of function sub_8003AEA

.thumb
sub_8003AFA:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8003b40-0x8003afc-4] // =byte_2001010
    ldrb r0, [r5]
    tst r0, r0
    beq locret_8003B1A
    mov r1, #0x80
    tst r0, r1
    bne locret_8003B1A
    ldr r7, [pc, #0x8003b44-0x8003b0a-2] // =off_80039F8
    mov r1, #0x10
    ldrb r0, [r5,#0x1] // (byte_2001011 - 0x2001010)
    mul r0, r1
    add r7, r7, r0
    ldr r0, [r7]
    mov lr, pc
    bx r0
locret_8003B1A:
    pop {r4-r7,pc}
// end of function sub_8003AFA

.thumb
sub_8003B1C:
    ldr r1, [pc, #0x8003b40-0x8003b1c-4] // =byte_2001010
    ldrb r0, [r1]
    tst r0, r0
    mov pc, lr
// end of function sub_8003B1C

    push {r4-r7,lr}
    add r7, r0, #0
    mov r4, #0
    bl sub_8003B1C
    beq loc_8003B3A
    ldr r0, [pc, #0x8003b40-0x8003b30-4] // =byte_2001010
    ldrb r0, [r0,#0x1] // (byte_2001011 - 0x2001010)
    cmp r0, r7
    bne loc_8003B3A
    mov r4, #1
loc_8003B3A:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
off_8003B40:    .word byte_2001010
off_8003B44:    .word off_80039F8
off_8003B48:    .word loc_809D19C+1
.thumb
sub_8003B4C:
    push {r0-r4,lr}
    ldr r0, [pc, #0x8003c90-0x8003b4e-2] // =dword_2009F34
    ldr r2, [r0]
    mov r1, #0x80
    lsl r1, r1, #0x18
    ldr r5, [pc, #0x8003c94-0x8003b56-2] // =byte_2009F40
    ldr r3, [pc, #0x8003c98-0x8003b58-4] // =byte_200A008
loc_8003B5A:
    tst r2, r1
    beq loc_8003B68
    lsr r1, r1, #1
    add r5, #0xc8
    cmp r5, r3
    bge loc_8003B82
    b loc_8003B5A
loc_8003B68:
    orr r2, r1
    str r2, [r0]
    mov r0, #9
    strb r0, [r5]
    pop {r0-r4}
    strb r0, [r5,#1]
    str r1, [r5,#0x1c]
    str r2, [r5,#0x20]
    str r3, [r5,#0x24]
    str r4, [r5,#4]
    mov r0, #0
    str r0, [r5,#8]
    pop {pc}
loc_8003B82:
    mov r5, #0
    pop {r0-r4,pc}
// end of function sub_8003B4C

.thumb
sub_8003B86:
    push {lr}
    mov r0, #0x80
    lsl r0, r0, #0x18
    ldrb r1, [r5,#3]
    lsr r0, r1
    ldr r1, [pc, #0x8003c90-0x8003b90-4] // =dword_2009F34
    ldr r2, [r1]
    bic r2, r0
    str r2, [r1]
    mov r1, #0
    strb r1, [r5]
    bl sprite_makeUnscalable
    pop {pc}
// end of function sub_8003B86

.thumb
sub_8003BA2:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    sub sp, sp, #8
    ldr r5, [pc, #0x8003c94-0x8003bae-2] // =byte_2009F40
    ldr r0, [pc, #0x8003bf0-0x8003bb0-4] // =off_8003B48
    ldr r1, [pc, #0x8003c98-0x8003bb2-2] // =byte_200A008
    str r0, [sp]
    str r1, [sp,#4]
loc_8003BB8:
    mov r1, #1
    ldrb r0, [r5]
    tst r0, r1
    beq loc_8003BDC
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r1, [r7,#0xa]
    tst r1, r1
    beq loc_8003BD0
    mov r1, #4
    tst r0, r1
    beq loc_8003BDC
loc_8003BD0:
    ldr r0, [sp]
    ldrb r1, [r5,#0x1] // (byte_2009F41 - 0x2009f40)
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
loc_8003BDC:
    add r5, #0xc8
    ldr r0, [sp,#4]
    cmp r5, r0
    blt loc_8003BB8
    add sp, sp, #8
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_8003BF0:    .word off_8003B48
// end of function sub_8003BA2

.thumb
sub_8003BF4:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    mov r0, #1
    mov r1, #0
    ldr r5, [pc, #0x8003c94-0x8003c02-2] // =byte_2009F40
loc_8003C04:
    ldrb r2, [r5]
    mov r3, #2
    tst r2, r3
    beq loc_8003C30
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x1c
    ldr r1, [pc, #0x8003c68-0x8003c12-2] // =loc_30061E8+1
    mov lr, pc
    bx r1
    mov r0, #0
    ldr r1, [pc, #0x8003c64-0x8003c1a-2] // =loc_3006028+1
    mov lr, pc
    bx r1
    mov r0, #2
    mov r1, #0x60 
    add r5, #0x90
    ldr r2, [pc, #0x8003c6c-0x8003c26-2] // =loc_3006440+1
    mov lr, pc
    bx r2
    pop {r0,r1,r5}
    b loc_8003C4C
loc_8003C30:
    add r4, r5, #0
    add r4, #0x90
    mov r3, #0
    str r3, [r4,#0x24]
    mov r3, #1
    tst r2, r3
    beq loc_8003C4C
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x1c
    ldr r1, [pc, #0x8003c68-0x8003c44-4] // =loc_30061E8+1
    mov lr, pc
    bx r1
    pop {r0,r1,r5}
loc_8003C4C:
    add r1, #1
    add r5, #0xc8
    cmp r1, r0
    blt loc_8003C04
    mov r0, #0
    bl sub_80028C0
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_8003C64:    .word loc_3006028+1
off_8003C68:    .word loc_30061E8+1
off_8003C6C:    .word loc_3006440+1
// end of function sub_8003BF4

.thumb
sub_8003C70:
    push {lr}
    mov r0, #0
    bl sub_80028C0
    pop {pc}
// end of function sub_8003C70

    mov r0, #0
    ldr r3, [pc, #0x8003c94-0x8003c7c-4] // =byte_2009F40
loc_8003C7E:
    add r1, r3, #0
    add r1, #0x90
    mov r2, #0
    str r2, [r1,#0x24]
    add r3, #0xc8
    add r0, #1
    cmp r0, #1
    blt loc_8003C7E
    mov pc, lr
off_8003C90:    .word dword_2009F34
off_8003C94:    .word byte_2009F40
off_8003C98:    .word byte_200A008
off_8003C9C:    .word loc_80B81EC+1
    .word loc_80B8210+1
    .word loc_80B85E0+1
    .word loc_80B88D0+1
    .word loc_80B8A18+1
    .word loc_80B8CD8+1
    .word loc_80B8EA0+1
    .word loc_80B9078+1
    .word loc_80B92B8+1
    .word loc_80B94BC+1
    .word loc_80B97C0+1
    .word loc_80B99C0+1
    .word loc_80B9C14+1
    .word loc_80B9F44+1
    .word loc_80BA364+1
    .word loc_80BA708+1
    .word loc_80BAA8C+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80BAF50+1
    .word loc_80BB2A0+1
    .word loc_80BB608+1
    .word loc_80BB914+1
    .word loc_80BBB98+1
    .word loc_80BBF0C+1
    .word loc_80BC17C+1
    .word loc_80BC4FC+1
    .word loc_80BC650+1
    .word loc_80BC87C+1
    .word loc_80BCA04+1
    .word loc_80BCB50+1
    .word loc_80BCD14+1
    .word loc_80BD388+1
    .word loc_80BDBA4+1
    .word loc_80BE4D8+1
    .word loc_80BE798+1
    .word loc_80BF260+1
    .word loc_80BF6EC+1
    .word loc_80BFDFC+1
    .word loc_80BFF68+1
    .word loc_80C0178+1
    .word loc_80C0334+1
    .word loc_80C04AC+1
    .word loc_80C065C+1
    .word loc_80C07BC+1
    .word loc_80C0E04+1
    .word loc_80C0F6C+1
    .word loc_80C11AC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80C1570+1
    .word loc_80C1A10+1
    .word loc_80C2138+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80C26F0+1
    .word loc_80C2A78+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80C3000+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80C3218+1
    .word loc_80C34E0+1
    .word loc_80C3734+1
    .word loc_80B81EC+1
    .word loc_80C3970+1
    .word loc_80C3CE8+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80C3EE0+1
    .word loc_80C40D8+1
    .word loc_80C4348+1
    .word loc_80C4530+1
    .word loc_80C46FC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80B81EC+1
    .word loc_80C4828+1
    .word loc_80C4B18+1
.thumb
sub_8003E18:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r6, [pc, #0x8003ebc-0x8003e22-2] // =byte_2036778
    ldrb r6, [r6]
    ldr r7, [pc, #0x8003ec0-0x8003e26-2] // =dword_2039A10
loc_8003E28:
    sub r6, #1
    blt loc_8003E7A
    ldr r5, [r7]
    ldrb r2, [r5]
    mov r3, #2
    tst r2, r3
    beq loc_8003E5A
    push {r4,r6,r7}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x8003e90-0x8003e3c-4] // =loc_30061E8+1
    mov lr, pc
    bx r1
    mov r0, #1
    ldr r1, [pc, #0x8003e8c-0x8003e44-4] // =loc_3006028+1
    mov lr, pc
    bx r1
    mov r0, #2
    mov r1, #0x40 
    add r5, #0x90
    ldr r2, [pc, #0x8003e94-0x8003e50-4] // =loc_3006440+1
    mov lr, pc
    bx r2
    pop {r4,r6,r7}
    b loc_8003E76
loc_8003E5A:
    add r0, r5, #0
    add r0, #0x90
    mov r3, #0
    str r3, [r0,#0x24]
    mov r3, #1
    tst r2, r3
    beq loc_8003E76
    push {r4,r6,r7}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x8003e90-0x8003e6e-2] // =loc_30061E8+1
    mov lr, pc
    bx r1
    pop {r4,r6,r7}
loc_8003E76:
    add r7, #4
    b loc_8003E28
loc_8003E7A:
    mov r0, #1
    bl sub_80028C0
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8003E8C:    .word loc_3006028+1
off_8003E90:    .word loc_30061E8+1
off_8003E94:    .word loc_3006440+1
// end of function sub_8003E18

.thumb
sub_8003E98:
    push {lr}
    mov r0, #1
    bl sub_80028C0
    pop {pc}
// end of function sub_8003E98

    mov r0, #0
    ldr r3, [pc, #0x8003eb8-0x8003ea4-4] // =unk_203A9B0
loc_8003EA6:
    add r1, r3, #0
    add r1, #0x90
    mov r2, #0
    str r2, [r1,#0x24]
    add r3, #0xd8
    add r0, #1
    cmp r0, #0x20 
    blt loc_8003EA6
    mov pc, lr
off_8003EB8:    .word unk_203A9B0
off_8003EBC:    .word byte_2036778
off_8003EC0:    .word dword_2039A10
off_8003EC4:    .word loc_80C4E58+1
    .word loc_80C50B8+1
    .word loc_80C51AC+1
    .word loc_80C52B0+1
    .word loc_80C53C0+1
    .word loc_80C55B0+1
    .word loc_80C57C0+1
    .word loc_80C5A34+1
    .word loc_80C5BB0+1
    .word loc_80C5DDC+1
    .word loc_80C5F60+1
    .word loc_80C60A8+1
    .word loc_80C4E58+1
    .word loc_80C4E58+1
    .word loc_80C6280+1
    .word loc_80C6414+1
    .word loc_80C6580+1
    .word loc_80C67F8+1
    .word loc_80C6946+1
    .word loc_80C4E58+1
    .word loc_80C4E58+1
    .word loc_80C4E58+1
    .word loc_80C6B40+1
    .word loc_80C6DCC+1
    .word loc_80C7074+1
    .word loc_80C71A4+1
    .word loc_80C740C+1
    .word loc_80C793C+1
    .word loc_80C7C18+1
    .word loc_80C7D78+1
    .word loc_80C7F40+1
    .word loc_80C8098+1
    .word loc_80C81CC+1
    .word loc_80C8388+1
    .word loc_80C853C+1
    .word loc_80C86D8+1
    .word loc_80C882C+1
    .word loc_80C8AA4+1
    .word loc_80C8C74+1
    .word loc_80C8E08+1
    .word loc_80C8FFC+1
    .word loc_80C91A0+1
    .word loc_80C93CC+1
    .word loc_80C96A0+1
    .word locret_80C980C+1
    .word locret_80C9814+1
    .word loc_80C9824+1
    .word loc_80C9BC4+1
    .word loc_80C9D00+1
    .word loc_80C9F78+1
    .word loc_80CA2A8+1
    .word loc_80CA544+1
    .word loc_80CA6B8+1
    .word loc_80CA938+1
    .word loc_80CAB68+1
    .word loc_80CAD28+1
    .word loc_80CAEF0+1
    .word loc_80CB0DC+1
    .word loc_80CB284+1
    .byte 0x9D
    .byte 0xB4
    .byte 0xC
    .byte 8
    .word loc_80CB6F8+1
    .word loc_80CB900+1
    .word loc_80CBB44+1
    .word loc_80CC044+1
    .word loc_80CC0E8+1
    .word loc_80CC4C4+1
    .word loc_80CC5A8+1
    .word loc_80CC76C+1
    .word loc_80CC944+1
    .word loc_80CCA40+1
    .word loc_80CCC48+1
    .word loc_80CCD70+1
    .word loc_80CCFDC+1
    .word loc_80CD2EC+1
    .word loc_80CD4EC+1
    .word loc_80CD8EC+1
    .word loc_80CDD44+1
    .word loc_80CDF84+1
    .word loc_80CE118+1
    .word loc_80CE24C+1
    .word loc_80CE530+1
    .word loc_80CE70C+1
    .word loc_80CE81C+1
    .word loc_80CEB00+1
    .word loc_80CEE78+1
    .word loc_80CF0D0+1
    .word loc_80CF3BE+1
    .word loc_80CF5C8+1
    .word loc_80CF7F0+1
    .word loc_80CF954+1
    .word loc_80CFC08+1
    .word loc_80CFCF8+1
    .word loc_80CFEC4+1
    .word loc_80D00A0+1
    .word loc_80D0268+1
    .word loc_80D0394+1
    .word loc_80D0500+1
    .word loc_80D0610+1
    .word loc_80D07CC+1
    .word loc_80D0AA8+1
    .word loc_80D0D7C+1
    .word loc_80D0F8C+1
    .word loc_80D1218+1
    .word loc_80D1514+1
    .word loc_80D17A4+1
    .word loc_80D18D8+1
    .word loc_80D1A08+1
    .word loc_80D1B48+1
    .word loc_80D1C20+1
    .word loc_80D2034+1
    .word sub_80D2290+1
    .word loc_80D2460+1
    .word loc_80D25D4+1
    .word loc_80D2A94+1
    .word loc_80D2BDC+1
    .word loc_80D2EBC+1
    .word loc_80D30D0+1
    .word loc_80D34CC+1
    .word loc_80D385C+1
    .word loc_80D39BC+1
    .word loc_80D4088+1
    .word loc_80D4440+1
    .word loc_80D46B8+1
    .word loc_80D4A28+1
    .word loc_80D4B68+1
    .word loc_80D4C84+1
    .word loc_80D5028+1
    .word loc_80D5138+1
    .word loc_80D535C+1
    .word loc_80D5580+1
    .word loc_80D5740+1
    .word loc_80D58B4+1
    .word loc_80D5ABC+1
    .word loc_80D5C48+1
    .word loc_80D5D54+1
    .word loc_80D5F08+1
    .word loc_80D622C+1
    .word loc_80D655C+1
    .word loc_80D67EC+1
    .word loc_80D6924+1
    .word loc_80D6A20+1
    .word loc_80D6BD4+1
    .word loc_80D6D80+1
    .word loc_80D6EE0+1
    .word loc_80D7068+1
    .word loc_80D7278+1
    .word loc_80D7400+1
    .word loc_80D75FC+1
    .word loc_80D7ACC+1
    .word loc_80D7DE4+1
    .word loc_80D807C+1
    .word loc_80D825C+1
    .word loc_80D8444+1
    .word loc_80D8620+1
    .word loc_80D879C+1
    .word loc_80D88E0+1
    .word loc_80D8C5C+1
    .word loc_80D8E10+1
    .word loc_80D8FC4+1
    .word loc_80D9154+1
    .word loc_80D9350+1
    .word loc_80D96A4+1
    .word loc_80D954C+1
    .word loc_80D984C+1
    .word loc_80D9A50+1
    .word loc_80D9D4C+1
    .word loc_80DA050+1
    .word loc_80DA470+1
    .word loc_80DA5FC+1
    .word loc_80DA80C+1
    .word loc_80DAA28+1
    .word loc_80DACE4+1
    .word loc_80DAE94+1
    .word loc_80DB0E4+1
    .word loc_80DB304+1
    push {r0,r4-r6,lr}
    lsr r5, r1, #0x20
    .word loc_80DB6A4+1
    .word loc_80DB8CC+1
    .word loc_80DB994+1
    .word loc_80DBB40+1
    .word loc_80DBCEC+1
    .word loc_80DBEE6+1
    .word loc_80DC0E8+1
    .word loc_80DC260+1
    .word loc_80DC3F8+1
    .word loc_80DC4FC+1
    .word loc_80DC5F8+1
    .word loc_80DC70C+1
    .word loc_80DCB1C+1
    .word loc_80DCCD4+1
    .word loc_80DCE38+1
    .word loc_80DCEF4+1
    .word loc_80DD0AC+1
    .word loc_80DD34C+1
    .word loc_80DD764+1
    .word loc_80DD940+1
    .word loc_80DDA84+1
    .word loc_80DDC10+1
    .word loc_80DDDF0+1
    .word loc_80DE000+1
    .word loc_80DE13C+1
    .word loc_80DE404+1
    .word loc_80DE7F4+1
    .word loc_80DEA7C+1
    .word loc_80DEE60+1
    .word loc_80DF0A4+1
    .word loc_80DF188+1
    .word loc_80DF328+1
    .word loc_80DF4FC+1
    .word loc_80DF90C+1
    .word loc_80DFC38+1
    .word loc_80DFE40+1
    .word loc_80DFFB8+1
.thumb
sub_8004218:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r6, [pc, #0x80042c0-0x8004222-2] // =byte_203CA7C
    ldrb r6, [r6]
    ldr r7, [pc, #0x80042c4-0x8004226-2] // =dword_203A010
loc_8004228:
    sub r6, #1
    blt loc_800427A
    ldr r5, [r7]
    ldrb r2, [r5]
    mov r3, #2
    tst r2, r3
    beq loc_800425A
    push {r4,r6,r7}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x8004290-0x800423c-4] // =loc_30061E8+1
    mov lr, pc
    bx r1
    mov r0, #3
    ldr r1, [pc, #0x800428c-0x8004244-4] // =loc_3006028+1
    mov lr, pc
    bx r1
    mov r0, #2
    mov r1, #0x40 
    add r5, #0x90
    ldr r2, [pc, #0x8004294-0x8004250-4] // =loc_3006440+1
    mov lr, pc
    bx r2
    pop {r4,r6,r7}
    b loc_8004276
loc_800425A:
    add r0, r5, #0
    add r0, #0x90
    mov r3, #0
    str r3, [r0,#0x24]
    mov r3, #1
    tst r2, r3
    beq loc_8004276
    push {r4,r6,r7}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x8004290-0x800426e-2] // =loc_30061E8+1
    mov lr, pc
    bx r1
    pop {r4,r6,r7}
loc_8004276:
    add r7, #4
    b loc_8004228
loc_800427A:
    mov r0, #3
    bl sub_80028C0
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_800428C:    .word loc_3006028+1
off_8004290:    .word loc_30061E8+1
off_8004294:    .word loc_3006440+1
// end of function sub_8004218

.thumb
sub_8004298:
    push {lr}
    mov r0, #3
    bl sub_80028C0
    pop {pc}
// end of function sub_8004298

    mov r0, #0x30 
    ldr r3, [pc, #0x80042bc-0x80042a4-4] // =unk_203CFD0
loc_80042A6:
    add r1, r3, #0
    add r1, #0x90
    mov r2, #0
    str r2, [r1,#0x24]
    add r3, #0xd8
    add r0, #1
    cmp r0, #0x20 
    blt loc_80042A6
    mov pc, lr
    .word unk_203CFE0
off_80042BC:    .word unk_203CFD0
off_80042C0:    .word byte_203CA7C
off_80042C4:    .word dword_203A010
off_80042C8:    .word loc_80E0548+1
    .word loc_80E0548+1
    .word loc_80E0638+1
    .word loc_80E0710+1
    .word loc_80E0844+1
    .word locret_80E08E0+1
    .word loc_80E08FC+1
    .word loc_80E0AD4+1
    .word loc_80E0DF0+1
    .word loc_80E0FA0+1
    .word loc_80E10A4+1
    .word loc_80E0548+1
    .word loc_80E11FC+1
    .word loc_80E0548+1
    .word loc_80E0548+1
    .word loc_80E1520+1
    .word loc_80E17E8+1
    .word loc_80E19BC+1
    .word loc_80E1A90+1
    .word loc_80E1B48+1
    .word loc_80E1CF8+1
    .word loc_80E1D88+1
    .word loc_80E1E4C+1
    .word loc_80E0548+1
    .word loc_80E0548+1
    .word loc_80E2080+1
    .word loc_80E21D8+1
    .word loc_80E225C+1
    .word loc_80E23A4+1
    .word loc_80E24E4+1
    .word loc_80E25D0+1
    .word loc_80E28A8+1
    .word loc_80E2AE8+1
    .word loc_80E2B7C+1
    .word loc_80E2CA4+1
    .word loc_80E2E34+1
    .word loc_80E2F56+1
    .word loc_80E309C+1
    .word loc_80E3150+1
    .word loc_80E31D8+1
    .word loc_80E32B8+1
    .word loc_80E342C+1
    .word loc_80E34C0+1
    .word loc_80E35A4+1
    .word loc_80E3728+1
    .word loc_80E37F4+1
    .word loc_80E39A0+1
    .word loc_80E3AB8+1
    .word loc_80E3B70+1
    .word loc_80E3D68+1
    .word loc_80E3FD0+1
    .word loc_80E40EC+1
    .word loc_80E4188+1
    .word loc_80E4344+1
    .word loc_80E440C+1
    .word loc_80E4634+1
    .word loc_80E46D8+1
    .word loc_80E47B4+1
    .word loc_80E4848+1
    .word loc_80E4910+1
    .word loc_80E4A1C+1
    .word loc_80E0548+1
    .word loc_80E4CB8+1
    .word loc_80E4DB0+1
    .word loc_80E50C4+1
    .word loc_80E5244+1
    .word loc_80E5470+1
    .word loc_80E55C0+1
    .word loc_80E5710+1
    .word loc_80E5944+1
    .word loc_80E59E8+1
    .word locret_80E5B60+1
    .word loc_80E5C2C+1
    .word loc_80E5D44+1
    .word loc_80E5E00+1
    .word loc_80E5ECC+1
    .word loc_80E5F9C+1
    .word sub_80E5FBC+1
    .word loc_80E6088+1
    .word loc_80E6254+1
    .word loc_80E6480+1
    .word loc_80E655C+1
    .word loc_80E6758+1
    .word loc_80E680C+1
    .word loc_80E689C+1
    .word loc_80E6A90+1
    .word loc_80E6BDC+1
    .word loc_80E6E44+1
    .word loc_80E6F88+1
    .word loc_80E702C+1
    .word loc_80E70C8+1
    .word loc_80E71C4+1
    .word loc_80E7260+1
    .word loc_80E74D4+1
    .word loc_80E7568+1
    .word loc_80E7624+1
    .word loc_80E76F8+1
    .word loc_80E7788+1
    .word loc_80E78BC+1
    .word loc_80E795C+1
    .word loc_80E7ACC+1
    .word loc_80E7BFC+1
    .word loc_80E7CCC+1
    .word loc_80E7DC4+1
    .word loc_80E7E9C+1
    .word loc_80E7F38+1
    .word loc_80E7FDC+1
    .word loc_80E807C+1
    .word loc_80E8138+1
    .word loc_80E81D8+1
    .word loc_80E8268+1
    .word loc_80E83B8+1
    .word loc_80E857C+1
    .word loc_80E8688+1
    .word loc_80E8794+1
    .word loc_80E88A0+1
    .word loc_80E8938+1
    .word loc_80E8A60+1
    .word loc_80E8B00+1
    .word loc_80E8DF0+1
    .word loc_80E8EE0+1
    .word loc_80E8FE0+1
    .word loc_80E0548+1
    .word loc_80E0548+1
    .word loc_80E9120+1
    .word loc_80E0548+1
    .word loc_80E91E4+1
    .word loc_80E9310+1
    .word loc_80E9460+1
    .word loc_80E0548+1
    .word loc_80E0548+1
    .word loc_80E0548+1
    .word loc_80E9570+1
    .word loc_80E0548+1
    .word loc_80E0548+1
    .word loc_80E97F0+1
    .word loc_80E9994+1
    .word loc_80E9AF0+1
    .word loc_80E9C88+1
    .word loc_80E9DF0+1
    .word loc_80EA010+1
    .word loc_80EA14C+1
    .word loc_80E0548+1
    .word loc_80EA258+1
    .word loc_80EA364+1
    .word loc_80E0548+1
.thumb
sub_8004510:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r6, [pc, #0x80045b4-0x800451a-2] // =byte_2036830
    ldrb r6, [r6]
    ldr r7, [pc, #0x80045b8-0x800451e-2] // =dword_203F750
loc_8004520:
    sub r6, #1
    blt loc_8004572
    ldr r5, [r7]
    ldrb r2, [r5]
    mov r3, #2
    tst r2, r3
    beq loc_8004552
    push {r4,r6,r7}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x8004588-0x8004534-4] // =loc_30061E8+1
    mov lr, pc
    bx r1
    mov r0, #4
    ldr r1, [pc, #0x8004584-0x800453c-4] // =loc_3006028+1
    mov lr, pc
    bx r1
    mov r0, #2
    mov r1, #0x40 
    add r5, #0x80
    ldr r2, [pc, #0x800458c-0x8004548-4] // =loc_3006440+1
    mov lr, pc
    bx r2
    pop {r4,r6,r7}
    b loc_800456E
loc_8004552:
    add r0, r5, #0
    add r0, #0x80
    mov r3, #0
    str r3, [r0,#0x24]
    mov r3, #1
    tst r2, r3
    beq loc_800456E
    push {r4,r6,r7}
    add r0, r5, #0
    add r0, #0x34 
    ldr r1, [pc, #0x8004588-0x8004566-2] // =loc_30061E8+1
    mov lr, pc
    bx r1
    pop {r4,r6,r7}
loc_800456E:
    add r7, #4
    b loc_8004520
loc_8004572:
    mov r0, #4
    bl sub_80028C0
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8004584:    .word loc_3006028+1
off_8004588:    .word loc_30061E8+1
off_800458C:    .word loc_3006440+1
// end of function sub_8004510

.thumb
sub_8004590:
    push {lr}
    mov r0, #4
    bl sub_80028C0
    pop {pc}
// end of function sub_8004590

    mov r0, #0
    ldr r3, [pc, #0x80045b0-0x800459c-4] // =unk_2036870
loc_800459E:
    add r1, r3, #0
    add r1, #0x80
    mov r2, #0
    str r2, [r1,#0x24]
    add r3, #0xc8
    add r0, #1
    cmp r0, #0x20 
    blt loc_800459E
    mov pc, lr
off_80045B0:    .word unk_2036870
off_80045B4:    .word byte_2036830
off_80045B8:    .word dword_203F750
off_80045BC:    .word loc_809E570+1
.thumb
sub_80045C0:
    push {r0-r4,lr}
    ldr r0, [pc, #0x8004718-0x80045c2-2] // =dword_20010E0
    ldr r2, [r0]
    mov r1, #0x80
    lsl r1, r1, #0x18
    ldr r5, [pc, #0x800471c-0x80045ca-2] // =byte_20057B0
    ldr r3, [pc, #0x8004720-0x80045cc-4] // =byte_2006530
loc_80045CE:
    tst r2, r1
    beq loc_80045DC
    lsr r1, r1, #1
    add r5, #0xd8
    cmp r5, r3
    bge loc_80045FE
    b loc_80045CE
loc_80045DC:
    orr r2, r1
    str r2, [r0]
    mov r0, #4
    add r0, r0, r5  // memBlock
    mov r1, #0x4e 
    lsl r1, r1, #1
    bl CpuSet_ZeroFillWord
    mov r0, #9
    strb r0, [r5]
    pop {r0-r4}
    strb r0, [r5,#1]
    str r1, [r5,#0x24]
    str r2, [r5,#0x28]
    str r3, [r5,#0x2c]
    str r4, [r5,#4]
    pop {pc}
loc_80045FE:
    mov r5, #0
    pop {r0-r4,pc}
// end of function sub_80045C0

.thumb
sub_8004602:
    push {lr}
    mov r0, #0x80
    lsl r0, r0, #0x18
    ldrb r1, [r5,#3]
    lsr r0, r1
    ldr r1, [pc, #0x8004718-0x800460c-4] // =dword_20010E0
    ldr r2, [r1]
    bic r2, r0
    str r2, [r1]
    mov r1, #0
    strb r1, [r5]
    bl sprite_makeUnscalable
    pop {pc}
// end of function sub_8004602

.thumb
sub_800461E:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    mov r0, #0x17
    mov r1, #1
    bl sub_802F164
    bne loc_800466C
    sub sp, sp, #8
    ldr r5, [pc, #0x800471c-0x8004634-4] // =byte_20057B0
    ldr r0, [pc, #0x8004678-0x8004636-2] // =off_80045BC
    ldr r1, [pc, #0x8004720-0x8004638-4] // =byte_2006530
    str r0, [sp]
    str r1, [sp,#4]
loc_800463E:
    mov r1, #1
    ldrb r0, [r5]
    tst r0, r1
    beq loc_8004662
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r1, [r7,#0xa]
    tst r1, r1
    beq loc_8004656
    mov r1, #4
    tst r0, r1
    beq loc_8004662
loc_8004656:
    ldr r0, [sp]
    ldrb r1, [r5,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
loc_8004662:
    add r5, #0xd8
    ldr r0, [sp,#4]
    cmp r5, r0
    blt loc_800463E
    add sp, sp, #8
loc_800466C:
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8004678:    .word off_80045BC
// end of function sub_800461E

.thumb
sub_800467C:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    mov r0, #0x10
    mov r1, #0
    ldr r5, [pc, #0x800471c-0x800468a-2] // =byte_20057B0
loc_800468C:
    ldrb r2, [r5]
    mov r3, #2
    tst r2, r3
    beq loc_80046B8
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x24 
    ldr r1, [pc, #0x80046f0-0x800469a-2] // =loc_30061E8+1
    mov lr, pc
    bx r1
    mov r0, #2
    ldr r1, [pc, #0x80046ec-0x80046a2-2] // =loc_3006028+1
    mov lr, pc
    bx r1
    mov r0, #2
    mov r1, #0x60 
    add r5, #0xa0
    ldr r2, [pc, #0x80046f4-0x80046ae-2] // =loc_3006440+1
    mov lr, pc
    bx r2
    pop {r0,r1,r5}
    b loc_80046D4
loc_80046B8:
    add r4, r5, #0
    add r4, #0xa0
    mov r3, #0
    str r3, [r4,#0x24]
    mov r3, #1
    tst r2, r3
    beq loc_80046D4
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0x24 
    ldr r1, [pc, #0x80046f0-0x80046cc-4] // =loc_30061E8+1
    mov lr, pc
    bx r1
    pop {r0,r1,r5}
loc_80046D4:
    add r1, #1
    add r5, #0xd8
    cmp r1, r0
    blt loc_800468C
    mov r0, #2
    bl sub_80028C0
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_80046EC:    .word loc_3006028+1
off_80046F0:    .word loc_30061E8+1
off_80046F4:    .word loc_3006440+1
// end of function sub_800467C

.thumb
sub_80046F8:
    push {lr}
    mov r0, #2
    bl sub_80028C0
    pop {pc}
// end of function sub_80046F8

.thumb
sub_8004702:
    mov r0, #0
    ldr r3, [pc, #0x800471c-0x8004704-4] // =byte_20057B0
loc_8004706:
    add r1, r3, #0
    add r1, #0xa0
    mov r2, #0
    str r2, [r1,#0x24]
    add r3, #0xd8
    add r0, #1
    cmp r0, #0x10
    blt loc_8004706
    mov pc, lr
off_8004718:    .word dword_20010E0
off_800471C:    .word byte_20057B0
off_8004720:    .word byte_2006530
off_8004724:    .word loc_80A4984+1
    .word loc_80A4A98+1
    .word loc_80A4BDC+1
    .word loc_80A51C4+1
    .word loc_80A5428+1
    .word loc_80A54F0+1
    .word loc_80A57AC+1
    .word loc_80A5AD4+1
    .word loc_80A6A16+1
    .word loc_80A6E98+1
    .word loc_80A72B4+1
    .word loc_80A77A8+1
    .word loc_80A781C+1
    .word loc_80A78B8+1
    .word loc_80A7C84+1
    .word loc_80A7D90+1
    .word loc_80A8208+1
    .word loc_80A8394+1
    .word loc_80A8654+1
    .word loc_80A8728+1
    .word loc_80A87F0+1
    .word 0x0
    .word loc_80A8870+1
    .word loc_80A89DC+1
    .word loc_80A8AB4+1
    .word 0x0
    .word loc_80A8E74+1
    .word loc_80A92B8+1
    .word loc_80A9430+1
    .word loc_80A9658+1
    .word loc_80A9824+1
    .word loc_80A98D4+1
    .word loc_80A9A0C+1
    .word 0x0, 0x0, 0x0, 0x0
    .word loc_80A9B70+1
    .byte 0, 0, 0, 0
    .word loc_80A9D10+1
    .word loc_80A9ECC+1
    .word loc_80A9F58+1
    .word loc_80AA058+1
    .word loc_80AA140+1
    .word loc_80AA1E0+1
    .word loc_80AA2D8+1
    .word loc_80AA374+1
// end of function sub_8004702

.thumb
sub_80047E0:
    push {r0-r4,r6,lr}
    mov r1, #0x80
    lsl r1, r1, #0x18
    ldr r5, [pc, #0x80049d4-0x80047e6-2] // =byte_2011EE0
    mov r6, #0
loc_80047EA:
    ldr r0, [pc, #0x80049d0-0x80047ea-2] // =unk_2011E50
    lsr r3, r6, #5
    lsl r3, r3, #2
    ldr r2, [r0,r3]
    tst r2, r1
    beq loc_8004804
    mov r2, #1
    ror r1, r2
    add r5, #0x78 
    add r6, #1
    cmp r6, #0x38 
    bge loc_800481E
    b loc_80047EA
loc_8004804:
    orr r2, r1
    str r2, [r0,r3]
    mov r0, #9
    strb r0, [r5]
    pop {r0-r4,r6}
    strb r0, [r5,#1]
    str r1, [r5,#0xc]
    str r2, [r5,#0x10]
    str r3, [r5,#0x14]
    str r4, [r5,#4]
    mov r0, #0
    str r0, [r5,#8]
    pop {pc}
loc_800481E:
    mov r5, #0
    pop {r0-r4,r6,pc}
// end of function sub_80047E0

.thumb
sub_8004822:
    push {r0-r4,r6,lr}
    ldr r5, [pc, #0x80049dc-0x8004824-4] // =byte_20138A8
    mov r6, #0x37 
loc_8004828:
    mov r2, #0x1f
    and r2, r6
    mov r1, #0x80
    lsl r1, r1, #0x18
    lsr r1, r2
    ldr r0, [pc, #0x80049d0-0x8004832-2] // =unk_2011E50
    lsr r3, r6, #5
    lsl r3, r3, #2
    ldr r2, [r0,r3]
    tst r2, r1
    beq loc_8004846
    sub r5, #0x78 
    sub r6, #1
    blt loc_8004860
    b loc_8004828
loc_8004846:
    orr r2, r1
    str r2, [r0,r3]
    mov r0, #9
    strb r0, [r5]
    pop {r0-r4,r6}
    strb r0, [r5,#1]
    str r1, [r5,#0xc]
    str r2, [r5,#0x10]
    str r3, [r5,#0x14]
    str r4, [r5,#4]
    mov r0, #0
    str r0, [r5,#8]
    pop {pc}
loc_8004860:
    mov r5, #0
    pop {r0-r4,r6,pc}
// end of function sub_8004822

    push {r0-r4,r6,lr}
    mov r1, #0x80
    lsl r1, r1, #0x18
    mov r6, #0x1f
    and r6, r5
    lsr r1, r6
    add r6, r5, #0
    ldr r5, [pc, #0x80049d4-0x8004872-2] // =byte_2011EE0
    mov r3, #0x78 
    mul r3, r6
    add r5, r5, r3
loc_800487A:
    ldr r0, [pc, #0x80049d0-0x800487a-2] // =unk_2011E50
    lsr r3, r6, #5
    lsl r3, r3, #2
    ldr r2, [r0,r3]
    tst r2, r1
    beq loc_8004894
    mov r2, #1
    ror r1, r2
    add r5, #0x78 
    add r6, #1
    cmp r6, #0x38 
    bge loc_80048AE
    b loc_800487A
loc_8004894:
    orr r2, r1
    str r2, [r0,r3]
    mov r0, #9
    strb r0, [r5]
    pop {r0-r4,r6}
    strb r0, [r5,#1]
    str r1, [r5,#0xc]
    str r2, [r5,#0x10]
    str r3, [r5,#0x14]
    str r4, [r5,#4]
    mov r0, #0
    str r0, [r5,#8]
    pop {pc}
loc_80048AE:
    mov r5, #0
    pop {r0-r4,r6,pc}
.thumb
sub_80048B2:
    push {lr}
    mov r0, #0x80
    lsl r0, r0, #0x18
    ldrb r1, [r5,#3]
    ror r0, r1
    ldr r2, [pc, #0x80049d0-0x80048bc-4] // =unk_2011E50
    lsr r1, r1, #5
    lsl r1, r1, #2
    ldr r3, [r2,r1]
    bic r3, r0
    str r3, [r2,r1]
    mov r1, #0
    strb r1, [r5]
    bl sprite_makeUnscalable
    pop {pc}
// end of function sub_80048B2

.thumb
sub_80048D2:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    mov r0, #0x17
    mov r1, #2
    bl sub_802F164
    bne loc_8004920
    sub sp, sp, #8
    ldr r5, [pc, #0x80049d4-0x80048e8-4] // =byte_2011EE0
    ldr r0, [pc, #0x800492c-0x80048ea-2] // =off_8004724
    ldr r1, [pc, #0x80049d8-0x80048ec-4] // =dword_2013920
    str r0, [sp]
    str r1, [sp,#4]
loc_80048F2:
    mov r1, #1
    ldrb r0, [r5]
    tst r0, r1
    beq loc_8004916
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r1, [r7,#0xa]
    tst r1, r1
    beq loc_800490A
    mov r1, #4
    tst r0, r1
    beq loc_8004916
loc_800490A:
    ldr r0, [sp]
    ldrb r1, [r5,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
loc_8004916:
    add r5, #0x78 
    ldr r0, [sp,#4]
    cmp r5, r0
    blt loc_80048F2
    add sp, sp, #8
loc_8004920:
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_800492C:    .word off_8004724
    .word dword_2013920
// end of function sub_80048D2

.thumb
sub_8004934:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    mov r0, #0x38 
    mov r1, #0
    ldr r5, [pc, #0x80049d4-0x8004942-2] // =byte_2011EE0
loc_8004944:
    ldrb r2, [r5]
    mov r3, #2
    tst r2, r3
    beq loc_8004970
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0xc
    ldr r1, [pc, #0x80049a8-0x8004952-2] // =loc_30061E8+1
    mov lr, pc
    bx r1
    mov r0, #5
    ldr r1, [pc, #0x80049a4-0x800495a-2] // =loc_3006028+1
    mov lr, pc
    bx r1
    mov r0, #2
    mov r1, #0x60 
    add r5, #0x40 
    ldr r2, [pc, #0x80049ac-0x8004966-2] // =loc_3006440+1
    mov lr, pc
    bx r2
    pop {r0,r1,r5}
    b loc_800498C
loc_8004970:
    add r4, r5, #0
    add r4, #0x40 
    mov r3, #0
    str r3, [r4,#0x24]
    mov r3, #1
    tst r2, r3
    beq loc_800498C
    push {r0,r1,r5}
    add r0, r5, #0
    add r0, #0xc
    ldr r1, [pc, #0x80049a8-0x8004984-4] // =loc_30061E8+1
    mov lr, pc
    bx r1
    pop {r0,r1,r5}
loc_800498C:
    add r1, #1
    add r5, #0x78 
    cmp r1, r0
    blt loc_8004944
    mov r0, #5
    bl sub_80028C0
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_80049A4:    .word loc_3006028+1
off_80049A8:    .word loc_30061E8+1
off_80049AC:    .word loc_3006440+1
// end of function sub_8004934

.thumb
sub_80049B0:
    push {lr}
    mov r0, #5
    bl sub_80028C0
    pop {pc}
// end of function sub_80049B0

    mov r0, #0
    ldr r3, [pc, #0x80049d4-0x80049bc-4] // =byte_2011EE0
loc_80049BE:
    add r1, r3, #0
    add r1, #0x40 
    mov r2, #0
    str r2, [r1,#0x24]
    add r3, #0x78 
    add r0, #1
    cmp r0, #0x38 
    blt loc_80049BE
    mov pc, lr
off_80049D0:    .word unk_2011E50
off_80049D4:    .word byte_2011EE0
off_80049D8:    .word dword_2013920
off_80049DC:    .word byte_20138A8
    push {lr}
    ldr r0, [pc, #0x8004d2c-0x80049e2-2] // =byte_2006848
    ldr r1, [pc, #0x80049f4-0x80049e4-4] // =0x400
    bl sub_8000900
    ldr r0, [pc, #0x8004d28-0x80049ea-2] // =dword_2006C48
    ldr r1, [pc, #0x8004d2c-0x80049ec-4] // =byte_2006848
    str r1, [r0]
    pop {pc}
    .balign 4, 0x00
off_80049F4:    .word 0x400
    push {lr}
    pop {pc}
    push {r0-r7}
    sub sp, sp, #0x24
    str r1, [sp]
    str r2, [sp,#4]
    str r3, [sp,#8]
    str r4, [sp,#0xc]
    str r5, [sp,#0x10]
    str r6, [sp,#0x14]
    str r7, [sp,#0x18]
    mov r7, #0
    str r7, [sp,#0x1c]
    mov r7, r8
    str r7, [sp,#0x20]
    ldr r5, [pc, #0x8004b0c-0x8004a16-2] // =0x2006C46
    mov r1, #0
    mov r8, r1
    ldr r1, [pc, #0x8004d28-0x8004a1c-4] // =dword_2006C48
    ldr r1, [r1]
    cmp r1, r5
    bge loc_8004AB0
    ldrb r2, [r0]
    strb r2, [r1]
    add r0, #1
    add r1, #1
    ldrb r2, [r0]
    strb r2, [r1]
    add r0, #1
    add r1, #1
loc_8004A34:
    ldrb r2, [r0]
    mov r3, #0
    cmp r2, r3
    beq loc_8004AA6
    mov r3, #0xa
    cmp r2, r3
    bne loc_8004A4A
    mov r3, #0xfe
    strh r3, [r1]
    add r1, #2
    b loc_8004AA2
loc_8004A4A:
    mov r3, #0x20 
    cmp r2, r3
    blt loc_8004AA2
    mov r3, #0x60 
    cmp r2, r3
    bge loc_8004AA2
    cmp r1, r5
    bge loc_8004AA6
    mov r3, #0x25 
    cmp r2, r3
    bne loc_8004A9C
    mov r3, #0
    mov r8, r3
loc_8004A64:
    add r0, #1
    ldrb r2, [r0]
    ldr r3, [pc, #0x8004b10-0x8004a68-4] // =aDdxxss01234567
loc_8004A6A:
    ldrb r4, [r3]
    cmp r4, #0
    beq loc_8004AA2
    cmp r2, r4
    beq loc_8004A78
    add r3, #1
    b loc_8004A6A
loc_8004A78:
    ldr r2, [sp,#0x1c]
    add r4, r2, #0
    add r4, #4
    str r4, [sp,#0x1c]
    add r2, sp
    ldr r2, [r2]
    ldr r4, [pc, #0x8004b10-0x8004a84-4] // =aDdxxss01234567
    sub r3, r3, r4
    lsl r3, r3, #2
    ldr r4, [pc, #0x8004abc-0x8004a8a-2] // =off_8004AC0
    add r4, r4, r3
    ldr r4, [r4]
    lsr r3, r3, #2
    mov lr, pc
    bx r4
    cmp r4, #0
    beq loc_8004A64
    b loc_8004AA2
loc_8004A9C:
    sub r2, #0x20 
    strh r2, [r1]
    add r1, #2
loc_8004AA2:
    add r0, #1
    b loc_8004A34
loc_8004AA6:
    mov r2, #0xff
    strh r2, [r1]
    add r1, #2
    ldr r0, [pc, #0x8004d28-0x8004aac-4] // =dword_2006C48
    str r1, [r0]
loc_8004AB0:
    ldr r7, [sp,#0x20]
    mov r8, r7
    add sp, sp, #0x24
    pop {r0-r7}
    pop {pc}
    .balign 4, 0x00
off_8004ABC:    .word off_8004AC0
off_8004AC0:    .word sub_8004B72+1
    .word sub_8004B72+1
    .word sub_8004BC8+1
    .word sub_8004BC8+1
    .word sub_8004C62+1
    .word sub_8004C62+1
    .word 0x8004CAF, 0x8004C91, 0x8004C91, 0x8004C91, 0x8004C91
    .word 0x8004C91, 0x8004C91, 0x8004C91, 0x8004C91, 0x8004C91
    .word 0x8004C91, 0x8004CBF, 0x8004CBF
dword_8004B0C:    .word 0x2006C46
off_8004B10:    .word aDdxxss01234567
aDdxxss01234567:    .byte 0x44, 0x64
    .byte 0x58, 0x78
    .byte 0x53, 0x73
    .byte 0x25, 0x30
    .byte 0x31, 0x32
    .byte 0x33, 0x34
    .byte 0x35, 0x36
    .byte 0x37, 0x38
    .byte 0x39, 0x42
    .byte 0x62, 0x0
    push {r4-r7,lr}
    ldr r4, [pc, #0x8004d2c-0x8004b2a-2] // =byte_2006848
    mov r7, #0xf2
    lsl r7, r7, #8
    add r7, #0xa0
    ldr r5, [pc, #0x8004d28-0x8004b32-2] // =dword_2006C48
    ldr r5, [r5]
    sub r5, r5, r4
    mov r2, #0
loc_8004B3A:
    cmp r5, #0
    beq loc_8004B6A
    ldrb r6, [r4]
    add r0, r6, #0
    ldrb r1, [r4,#1]
    add r4, #2
    sub r5, #2
loc_8004B48:
    ldrb r3, [r4]
    add r4, #2
    sub r5, #2
    cmp r3, #0xff
    beq loc_8004B3A
    cmp r3, #0xfe
    bne loc_8004B5C
    add r0, r6, #0
    add r1, #1
    b loc_8004B48
loc_8004B5C:
    push {r0-r7}
    add r3, r3, r7
    bl sub_800187C
    pop {r0-r7}
    add r0, #1
    b loc_8004B48
loc_8004B6A:
    ldr r4, [pc, #0x8004d28-0x8004b6a-2] // =dword_2006C48
    ldr r1, [pc, #0x8004d2c-0x8004b6c-4] // =byte_2006848
    str r1, [r4]
    pop {r4-r7,pc}
.thumb
sub_8004B72:
    push {r0,r5-r7,lr}
    cmp r2, #0
    bge loc_8004B8E
    cmp r1, r5
    bge loc_8004B96
    push {r3}
    mov r3, #0xd
    strh r3, [r1]
    add r1, #2
    mov r3, #0
    mvn r3, r3
    eor r2, r3
    add r2, #1
    pop {r3}
loc_8004B8E:
    ldr r0, [pc, #0x8004b9c-0x8004b8e-2] // =dword_8004BA0
    mov r6, #0xa
    bl sub_8004BFC
loc_8004B96:
    mov r4, #1
    pop {r0,r5-r7,pc}
    .balign 4, 0x00
off_8004B9C:    .word dword_8004BA0
dword_8004BA0:    .word 0x3B9ACA00, 0x5F5E100, 0x989680, 0xF4240, 0x186A0
    .word 0x2710, 0x3E8, 0x64, 0xA, 0x1
// end of function sub_8004B72

.thumb
sub_8004BC8:
    push {r0,r5-r7,lr}
    sub r3, #2
    ldr r0, [pc, #0x8004bd8-0x8004bcc-4] // =dword_8004BDC
    mov r6, #8
    bl sub_8004BFC
    mov r4, #1
    pop {r0,r5-r7,pc}
off_8004BD8:    .word dword_8004BDC
dword_8004BDC:    .word 0x10000000, 0x1000000, 0x100000, 0x10000, 0x1000, 0x100
    .word 0x10, 0x1
// end of function sub_8004BC8

.thumb
sub_8004BFC:
    mov r7, r8
    cmp r7, #0
    beq loc_8004C06
    cmp r7, r6
    blt loc_8004C08
loc_8004C06:
    add r7, r6, #0
loc_8004C08:
    sub r6, r6, r7
    mov r8, r6
    add r7, r3, #0
loc_8004C0E:
    mov r3, #0
    ldr r4, [r0]
loc_8004C12:
    cmp r2, #0
    blt loc_8004C20
    cmp r2, r4
    blt loc_8004C2A
    sub r2, r2, r4
    add r3, #1
    b loc_8004C12
loc_8004C20:
    cmp r2, r4
    bge loc_8004C2A
    sub r2, r2, r4
    add r3, #1
    b loc_8004C12
loc_8004C2A:
    mov r6, r8
    cmp r6, #0
    beq loc_8004C36
    sub r6, #1
    mov r8, r6
    b loc_8004C5A
loc_8004C36:
    mov r6, #1
    and r6, r7
    bne loc_8004C44
    cmp r4, #1
    beq loc_8004C44
    cmp r3, #0
    beq loc_8004C5A
loc_8004C44:
    mov r6, #1
    orr r7, r6
    cmp r1, r5
    bge locret_8004C60
    ldr r6, [pc, #0x8004d30-0x8004c4c-4] // =a0123456789abcd
    add r6, r6, r3
    ldrb r3, [r6]
    sub r3, #0x20 
    strh r3, [r1]
    mov r3, #0
    add r1, #2
loc_8004C5A:
    add r0, #4
    cmp r4, #1
    bne loc_8004C0E
locret_8004C60:
    mov pc, lr
// end of function sub_8004BFC

.thumb
sub_8004C62:
    push {r0,r5-r7,lr}
    mov r7, r8
    cmp r7, #0
    bne loc_8004C6E
    mov r6, #0xff
    mov r8, r6
loc_8004C6E:
    mov r6, r8
    cmp r6, #0
    beq loc_8004C8C
    sub r6, #1
    mov r8, r6
    ldrb r3, [r2]
    cmp r3, #0
    beq loc_8004C8C
    cmp r1, r5
    bge loc_8004C8C
    sub r3, #0x20 
    strh r3, [r1]
    add r1, #2
    add r2, #1
    b loc_8004C6E
loc_8004C8C:
    mov r4, #1
    pop {r0,r5-r7,pc}
// end of function sub_8004C62

    ldr r2, [sp,#0x1c]
    sub r2, #4
    str r2, [sp,#0x1c]
    mov r3, #0
    mov r4, #0
loc_8004C9A:
    add r3, r8
    add r4, #1
    cmp r4, #0xa
    blt loc_8004C9A
    ldrb r4, [r0]
    sub r4, #0x30 
    add r3, r3, r4
    mov r8, r3
    mov r4, #0
    mov pc, lr
    ldr r2, [sp,#0x1c]
    sub r2, #4
    str r2, [sp,#0x1c]
    mov r3, #5
    strh r3, [r1]
    add r1, #2
    mov r4, #0
    mov pc, lr
    push {r0,r5-r7,lr}
    sub r3, #0x11
    mov r6, #0x20 
    bl loc_8004CCC
    mov r4, #1
    pop {r0,r5-r7,pc}
loc_8004CCC:
    mov r7, r8
    cmp r7, #0
    beq loc_8004CD6
    cmp r7, r6
    blt loc_8004CD8
loc_8004CD6:
    add r7, r6, #0
loc_8004CD8:
    sub r6, r6, r7
    mov r8, r6
    add r7, r3, #0
    mov r4, #0x80
    lsl r4, r4, #0x18
loc_8004CE2:
    mov r3, #0
loc_8004CE4:
    tst r2, r4
    beq loc_8004CEE
    bic r2, r4
    add r3, #1
    b loc_8004CE4
loc_8004CEE:
    mov r6, r8
    cmp r6, #0
    beq loc_8004CFA
    sub r6, #1
    mov r8, r6
    b loc_8004D1E
loc_8004CFA:
    mov r6, #1
    and r6, r7
    bne loc_8004D08
    cmp r4, #1
    beq loc_8004D08
    cmp r3, #0
    beq loc_8004D1E
loc_8004D08:
    mov r6, #1
    orr r7, r6
    cmp r1, r5
    bge dword_8004D24
    ldr r6, [pc, #0x8004d30-0x8004d10-4] // =a0123456789abcd
    add r6, r6, r3
    ldrb r3, [r6]
    sub r3, #0x20 
    strh r3, [r1]
    mov r3, #0
    add r1, #2
loc_8004D1E:
    lsr r4, r4, #1
    cmp r4, #0
    bne loc_8004CE2
dword_8004D24:    .word 0x46F7
off_8004D28:    .word dword_2006C48
off_8004D2C:    .word byte_2006848
off_8004D30:    .word a0123456789abcd
a0123456789abcd:    .byte 0x30, 0x31
    .byte 0x32, 0x33
    .byte 0x34, 0x35
    .byte 0x36, 0x37
    .byte 0x38, 0x39
    .byte 0x41, 0x42
    .byte 0x43, 0x44
    .byte 0x45, 0x46
    .byte 0x0
    .byte 0x0, 0x0, 0x0
.thumb
sub_8004D48:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r0, #0
    strb r0, [r5]
    mov r0, #8
    strb r0, [r5,#0x16]
    mov r0, #0x10
    strb r0, [r5,#0x17]
    mov r0, #0
    strb r0, [r5,#0xe]
    strb r0, [r5,#3]
    strb r0, [r5,#0x15]
    strb r0, [r5,#0xa]
    str r0, [r5,#0x74]
    mov r0, #0x63 
    strb r0, [r5,#0xf]
    mov r0, #0
    strb r0, [r5,#0x11]
    strb r0, [r5,#0x10]
    ldr r1, [pc, #0x8004de4-0x8004d70-4] // =byte_200F410
    strb r0, [r1]
    ldr r1, [pc, #0x8004de0-0x8004d74-4] // =byte_200ACE0
    mov r0, #0
    strb r0, [r1]
    str r0, [r1,#0x18] // (dword_200ACF8 - 0x200ace0)
    str r0, [r1,#0x20] // (dword_200AD00 - 0x200ace0)
    mov r0, #0xff
    strb r0, [r1,#0x1c] // (byte_200ACFC - 0x200ace0)
    bl sub_809E098
    mov r0, #0
    ldr r1, [pc, #0x8004de8-0x8004d88-4] // =byte_20099CC
    strb r0, [r1]
    ldr r1, [pc, #0x8004dec-0x8004d8c-4] // =dword_20096D0
    strb r0, [r1]
    bl sub_8004702
    mov r0, #0x17
    mov r1, #3
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x1b
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x15
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x2d 
    bl sub_802F12C
    bl sub_800399A
    bl sub_8003AEA
    bl sub_811EC00
    bl sub_800B110
    mov r0, #0
    mov r1, #0x91
    bl sub_802F12C
    bl sub_803C3E0
    beq loc_8004DDA
    mov r0, #0
    mov r1, #0x91
    bl sub_802F110
loc_8004DDA:
    bl sub_8048C98
    pop {r4-r7,pc}
off_8004DE0:    .word byte_200ACE0
off_8004DE4:    .word byte_200F410
off_8004DE8:    .word byte_20099CC
off_8004DEC:    .word dword_20096D0
// end of function sub_8004D48

.thumb
sub_8004DF0:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r0, #0
    str r0, [r5,#0x20]
    mvn r0, r0
    strh r0, [r5,#0xc]
    mov r0, #0
    str r0, [r5,#0x5c]
    str r0, [r5,#0x60]
    str r0, [r5,#0x74]
    mvn r0, r0
    str r0, [r5,#0x6c]
    str r0, [r5,#0x70]
    mov r1, r10
    ldr r1, [r1,#0x40]
    mov r0, #0
    str r0, [r1,#0x18]
    mov r0, #1
    strb r0, [r1,#5]
    mov r0, #0
    strh r0, [r1,#0x12]
    strh r0, [r1,#0x14]
    str r0, [r1,#0x1c]
    str r0, [r5,#0x1c]
    strh r0, [r1,#8]
    strh r0, [r1,#0xa]
    strh r0, [r1,#0xc]
    strh r0, [r1,#0x10]
    str r0, [r1]
    str r0, [r1,#0x30]
    mov r0, #0
    strb r0, [r5,#2]
    str r0, [r1,#0x24]
    str r0, [r1,#0x28]
    mov r0, #0x63 
    strb r0, [r1,#4]
    mov r0, #0
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r1,#0x16]
    mov r0, #0xff
    strb r0, [r5,#0x12]
    bl sub_802F0C4
    bl sub_8006D00
    bl sub_803CD74
    mov r0, #0
    strb r0, [r5,#0x13]
    str r0, [r5,#0x78]
    bl sub_802F2C8
    bl sub_81284A4
    bl sub_809E2C2
    bl sub_809E2F4
    bl sub_809E304
    bl sub_809E2FC
    bl sub_809E312
    bl sub_809E3AA
    bl sub_809E3B2
    bl sub_8003908
    bl sub_8003A58
    bl sub_809F9C8
    bl sub_809FAF4
    bl sub_809F9DC
    bl sub_8049CF8
    bl sub_804A17A
    bl sub_811FB78
    bl sub_8048C68
    mov r0, #0x17
    mov r1, #0x1d
    bl sub_802F110
    mov r0, #4
    mov r1, #1
    bl sub_802F110
    mov r0, #4
    mov r1, #0xe7
    mov r2, #2
    bl sub_802F17E
    mov r0, #4
    mov r1, #0x6d 
    bl sub_802F110
    mov r0, #4
    mov r1, #0x83
    bl sub_802F110
    mov r0, #0
    mov r1, #1
    mov r2, #3
    bl sub_802F17E
    mov r0, #0
    mov r1, #4
    bl sub_802F110
    mov r0, #0
    mov r1, #6
    mov r2, #8
    bl sub_802F17E
    mov r0, #0
    mov r1, #0xf
    mov r2, #2
    bl sub_802F17E
    mov r0, #5
    mov r1, #0xee
    mov r2, #3
    bl sub_802F17E
    mov r0, #0
    mov r1, #0x31 
    mov r2, #2
    bl sub_802F17E
    mov r0, #0
    mov r1, #0x3b 
    mov r2, #3
    bl sub_802F17E
    mov r0, #0
    mov r1, #0x72 
    bl sub_802F110
    mov r0, #0
    mov r1, #0x73 
    mov r2, #7
    bl sub_802F17E
    mov r0, #9
    mov r1, #0xf6
    mov r2, #9
    bl sub_802F17E
    mov r0, #0
    mov r1, #0x87
    bl sub_802F110
    mov r0, #0
    mov r1, #0x89
    bl sub_802F110
    mov r0, #8
    mov r1, #0x7d 
    bl sub_802F110
    mov r0, #0xa
    mov r1, #0x99
    bl sub_802F110
    mov r0, #0xb
    mov r1, #0xfd
    mov r2, #3
    bl sub_802F17E
    mov r0, #0
    mov r1, #0x70 
    bl sub_802F110
    mov r0, #0
    mov r1, #0x8a
    bl sub_802F110
    mov r0, #0xc
    mov r1, #0xd7
    mov r2, #4
    bl sub_802F17E
    mov r0, #0
    mov r1, #0x8c
    bl sub_802F110
    mov r0, #0xc
    mov r1, #0xe6
    bl sub_802F110
    mov r0, #0xf
    mov r1, #0xf9
    mov r2, #7
    bl sub_802F17E
    mov r0, #1
    mov r1, #0x36 
    bl sub_802F110
    mov r0, #1
    mov r1, #0x38 
    mov r2, #2
    bl sub_802F17E
    mov r0, #1
    mov r1, #0x3a 
    bl sub_802F110
    mov r0, #1
    mov r1, #0x64 
    mov r2, #0x19
    bl sub_802F17E
    mov r0, #0
    mov r1, #0x7b 
    bl sub_802F110
    mov r0, #0
    mov r1, #0x7f
    bl sub_802F110
    mov r0, #0
    mov r1, #0x81
    bl sub_802F110
    mov r0, #1
    mov r1, #0x8e
    mov r2, #9
    bl sub_802F17E
    mov r0, #0
    mov r1, #0x86
    bl sub_802F110
    mov r0, #1
    mov r1, #0xce
    mov r2, #6
    bl sub_802F17E
    mov r0, #0x10
    mov r1, #1
    bl sub_802F110
    mov r0, #6
    mov r1, #0x8e
    bl sub_802F110
    mov r0, #6
    mov r1, #0x8f
    bl sub_802F12C
    mov r0, #0
    mov r1, #0x82
    mov r2, #2
    bl sub_802F17E
    mov r0, #0
    mov r1, #0x85
    bl sub_802F110
    bl sub_80355A8
    mov r0, #0
    mov r1, #0x38 
    bl sub_802F110
    mov r0, #0
    mov r1, #0x39 
    bl sub_802F110
    mov r0, #0
    mov r1, #0x11
    bl sub_802F110
    mov r0, #0
    bl sub_80AA004
    mov r0, #0
    bl sub_80AA104
    bl sub_802D638
    bl sub_80356EC
    ldr r0, [pc, #0x80050e4-0x800503a-2] // =0x100
    strh r0, [r5,#4]
    str r0, [r5,#0x44]
    str r0, [r5,#0x58]
    mov r0, #0
    strb r0, [r5,#6]
    strb r0, [r5,#7]
    strb r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x24]
    str r0, [r5,#0x34]
    str r0, [r5,#0x48]
    str r0, [r5,#0x28]
    str r0, [r5,#0x38]
    str r0, [r5,#0x4c]
    str r0, [r5,#0x2c]
    str r0, [r5,#0x3c]
    str r0, [r5,#0x50]
    mov r0, #4
    str r0, [r5,#0x30]
    str r0, [r5,#0x40]
    str r0, [r5,#0x54]
    bl sub_803532C
    bl sub_8021D36
    mov r0, r10
    ldr r0, [r0,#0x48]  // memBlock
    mov r1, #0x3c 
    mov r2, #3
    mul r1, r2
    bl CpuSet_ZeroFillWord
    bl sub_8021C68
    ldr r0, [pc, #0x80050e8-0x8005080-4] // =dword_80213AC
    mov r1, #0
    bl sub_8021AB4
    bl sub_81376E8
    bl sub_8137700
    bl sub_8137808
    bl sub_80133EC
    bl sub_813B768
    bl sub_813B934
    bl sub_813C324
    bl sub_8121144
    bl sub_800AAF2
    bl sub_800AB22
    mov r0, #1
    bl sub_802E240
    bl sub_813E616
    bl reqBBS_initMemory_813F9DA
    mov r0, #0x17
    mov r1, #0x3a 
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x3e 
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x3f 
    bl sub_802F12C
    bl sub_8140984
    pop {r4-r7,pc}
off_80050E4:    .word 0x100
off_80050E8:    .word dword_80213AC
// end of function sub_8004DF0

cb_80050EC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8005108-0x80050ee-2] // =off_800510C
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800151C
    bl sub_800154C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8005108:    .word off_800510C
off_800510C:    .word sub_8005148+1
    .word sub_8005268+1
    .word sub_80052D8+1
    .word sub_8005360+1
    .word sub_800536E+1
    .word sub_80053E4+1
    .word sub_8005462+1
    .word sub_800555A+1
    .word sub_8005642+1
    .word sub_80056B8+1
    .word sub_800572C+1
    .word sub_80057A0+1
    .word sub_80055CE+1
    .word sub_8005814+1
    .word sub_800585A+1
.thumb
sub_8005148:
    push {lr}
    bl engine_isScreeneffectAnimating
    bne loc_8005152
    pop {pc}
loc_8005152:
    bl sub_8005F40
// end of function sub_8005148

    bl sub_8005F6C
    bl sub_80027C4
    bl sub_8003566
    bl sub_8002668
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_802F0D8
    bl sub_802F0F4
    bl sub_8036EFE
    bl sub_8036F24
    bl sub_809F90C
    mov r0, #0x17
    mov r1, #0x31 
    bl sub_802F12C
    mov r0, #0
    bl sub_803F6B0
    bl sub_803F500
    bl sub_8006C22
    mov r0, #0x17
    mov r1, #0x41 
    bl sub_802F164
    bne loc_80051AA
    bl sub_813C3AC
loc_80051AA:
    mov r5, r10
    ldr r5, [r5,#0x3c]
    bl sub_8000FAC
    bl sub_80355EC
    mov r0, #0
    bl sub_8001172
    mov r0, #0
    strb r0, [r5,#0x15]
    strb r0, [r5,#0xe]
    strb r0, [r5,#3]
    str r0, [r5,#0x68]
    mov r0, #0x17
    mov r1, #0x19
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #1
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #2
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #7
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x39 
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x32 
    bl sub_802F12C
    mov r0, #1
    mov r1, #0xbb
    bl sub_802F12C
    bl sub_8033948
    ldr r0, [pc, #0x8005264-0x800520a-2] // =0x1740
    bl sub_8001778
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_8030A30
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_8001708
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_8034B4C
    ldrb r0, [r5,#4]
    bl loc_8030A00
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x3e 
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x3f 
    bl sub_802F12C
    ldrb r0, [r5,#0x16]
    ldrb r1, [r5,#0x17]
    bl engine_setScreeneffect
    mov r0, #8
    strb r0, [r5,#0x16]
    mov r0, #0x10
    strb r0, [r5,#0x17]
    mov r0, r10
    ldr r0, [r0,#0x14]
    mov r1, #0
    strb r1, [r0,#0x10]
    mov r0, #4
    strb r0, [r5]
    pop {pc}
off_8005264:    .word 0x1740
.thumb
sub_8005268:
    push {lr}
    bl sub_8036F24
    bl sub_8034BB8
    mov r0, #0
    strb r0, [r5,#0xe]
    bl sub_800378C
    bl sub_8003BA2
    bl sub_800461E
    bl sub_80048D2
    bl sub_809F942
    bl loc_80339CC
    bl sub_80039AA
    bl sub_8003AFA
    bl sub_80037F4
    bl loc_802FFF4
    bl sub_8030580
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003BF4
    bl sub_8003E98
    bl sub_800467C
    bl sub_8004298
    bl sub_8004590
    bl sub_8004934
    bl sub_80024AE
    bl loc_80058D0
    bl sub_8005A8C
    bl sub_8005B6A
    bl sub_8005AF4
    pop {pc}
// end of function sub_8005268

.thumb
sub_80052D8:
    push {lr}
    bl loc_80339CC
    bl sub_80039AA
    bl sub_8003AFA
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003BF4
    bl sub_8003E98
    bl sub_800467C
    bl sub_8004298
    bl sub_8004590
    bl sub_8004934
    bl sub_80024AE
    bl sub_803F530
    bne locret_800531A
    bl engine_isScreeneffectAnimating
    beq locret_800531A
    bl sub_800531C
locret_800531A:
    pop {pc}
// end of function sub_80052D8

.thumb
sub_800531C:
    push {lr}
    bl sub_8040818
    mov r0, #0x21 
    bl sub_80035A2
    bl sub_8004702
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_8006C22
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r0, #0xc
    strb r0, [r5]
    ldr r0, [r5,#0x1c]
    bl sub_80071D4
// end of function sub_800531C

    ldr r0, [pc, #0x8005358-0x800534a-2] // =byte_2011800
    ldr r1, [pc, #0x800535c-0x800534c-4] // =0x2180
    mov r2, #0
    mvn r2, r2
    bl sub_800098C
    pop {pc}
off_8005358:    .word byte_2011800
off_800535C:    .word 0x2180
.thumb
sub_8005360:
    push {lr}
    bl loc_8007800
    bne locret_800536C
    mov r0, #0
    strb r0, [r5]
locret_800536C:
    pop {pc}
// end of function sub_8005360

.thumb
sub_800536E:
    push {lr}
    bl loc_80339CC
    bl sub_80039AA
    bl sub_8003AFA
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003BF4
    bl sub_8003E98
    bl sub_800467C
    bl sub_8004298
    bl sub_8004590
    bl sub_8004934
    bl sub_80024AE
    bl engine_isScreeneffectAnimating
    beq locret_80053DA
    ldr r0, [r5,#0x68]
    sub r0, #1
    blt loc_80053D2
    str r0, [r5,#0x68]
    cmp r0, #0x29 
    bne loc_80053BC
    mov r0, #0x72 
    add r0, #0xff
    bl sound_play
    b locret_80053DA
loc_80053BC:
    cmp r0, #0x9e
    bne locret_80053DA
    ldrb r0, [r5,#5]
    cmp r0, #1
    bgt locret_80053DA
    ldr r1, [pc, #0x80053dc-0x80053c6-2] // =unk_80053E0
    lsl r0, r0, #1
    ldrh r0, [r1,r0]
    bl sound_play
    b locret_80053DA
loc_80053D2:
    bl sub_8040818
    bl sub_8005C04
locret_80053DA:
    pop {pc}
off_80053DC:    .word unk_80053E0
unk_80053E0:    .byte 0xE7
    .byte 0
    .byte 0xEC
    .byte 0
// end of function sub_800536E

.thumb
sub_80053E4:
    push {lr}
    bl loc_80339CC
    bl sub_80039AA
    bl sub_8003AFA
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003BF4
    bl sub_8003E98
    bl sub_800467C
    bl sub_8004298
    bl sub_8004590
    bl sub_8004934
    bl sub_80024AE
    bl engine_isScreeneffectAnimating
    beq locret_800545C
    bl sub_8040818
    mov r0, #0x25 
    bl sub_80035A2
    bl sub_80341AA
    mov r7, r10
    ldr r0, [r7]
    mov r1, #8
    strb r1, [r0]
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_8006C22
    bl sub_813C3AC
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r0, [pc, #0x8005460-0x8005456-2] // =0x40
    bl sub_8001778
locret_800545C:
    pop {pc}
    .byte 0, 0
// end of function sub_80053E4

.thumb
sub_8005460:
    lsl r0, r0, #1
// end of function sub_8005460

.thumb
sub_8005462:
    push {r7,lr}
    ldr r7, [pc, #0x8005520-0x8005464-4] // =byte_200DF20
    ldrb r0, [r7,#0x8] // (byte_200DF28 - 0x200df20)
    tst r0, r0
    bne loc_8005474
    mov r0, #1
    strb r0, [r7,#0x8] // (byte_200DF28 - 0x200df20)
    bl sub_811EC50
loc_8005474:
    bl loc_80339CC
    bl sub_80039AA
    bl sub_8003AFA
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003BF4
    bl sub_8003E98
    bl sub_800467C
    bl sub_8004298
    bl sub_8004590
    bl sub_8004934
    bl sub_80024AE
    ldr r7, [pc, #0x8005520-0x80054a4-4] // =byte_200DF20
    ldrb r0, [r7,#0x1] // (byte_200DF21 - 0x200df20)
    cmp r0, #4
    bne loc_80054D6
    bl engine_isScreeneffectAnimating
    beq loc_80054D6
    bl sub_8001850
    bl sub_8001820
    bl sub_800182E
    bl sub_811F6C0
    bl sub_8005524
    mov r0, #0x11
    bl sub_8001B6C
    bl sub_8046664
    bl sub_8040818
    b locret_800551C
loc_80054D6:
    bl loc_811ED1C
    ldrb r0, [r7,#0x1] // (byte_200DF21 - 0x200df20)
    cmp r0, #4
    bne loc_80054EA
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    b locret_800551C
loc_80054EA:
    ldrb r0, [r7,#0x1] // (byte_200DF21 - 0x200df20)
    cmp r0, #8
    bne locret_800551C
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#0xe]
    bl sub_809E04C
    mov r0, #7
    mov r1, #0x42 
    bl sub_802F12C
    mov r0, #7
    mov r1, #0x43 
    bl sub_802F12C
    mov r0, #9
    mov r1, #0x62 
    bl sub_802F12C
    mov r0, #9
    mov r1, #0x63 
    bl sub_802F12C
locret_800551C:
    pop {r7,pc}
    .byte 0, 0
off_8005520:    .word byte_200DF20
// end of function sub_8005462

.thumb
sub_8005524:
    push {lr}
    mov r0, #0x21 
    bl sub_80035A2
    bl sub_8004702
    bl sub_8005F40
// end of function sub_8005524

    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_8006C22
    bl sub_813C3AC
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x28 
    strb r1, [r0]
    pop {pc}
.thumb
sub_800555A:
    push {lr}
    bl loc_80339CC
    bl sub_80039AA
    bl sub_8003AFA
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003BF4
    bl sub_8003E98
    bl sub_800467C
    bl sub_8004298
    bl sub_8004590
    bl sub_8004934
    bl sub_80024AE
    bl engine_isScreeneffectAnimating
    beq locret_80055CC
    bl sub_8040818
    mov r0, #0x21 
    bl sub_80035A2
    bl sub_8004702
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_8006C22
    bl sub_813C3AC
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x24 
    strb r1, [r0]
locret_80055CC:
    pop {pc}
// end of function sub_800555A

.thumb
sub_80055CE:
    push {lr}
    bl loc_80339CC
    bl sub_80039AA
    bl sub_8003AFA
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003BF4
    bl sub_8003E98
    bl sub_800467C
    bl sub_8004298
    bl sub_8004590
    bl sub_8004934
    bl sub_80024AE
    bl engine_isScreeneffectAnimating
    beq locret_8005640
    bl sub_8040818
    mov r0, #0x21 
    bl sub_80035A2
    bl sub_8004702
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_8006C22
    bl sub_813C3AC
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x44 
    strb r1, [r0]
locret_8005640:
    pop {pc}
// end of function sub_80055CE

.thumb
sub_8005642:
    push {lr}
    bl loc_80339CC
    bl sub_80039AA
    bl sub_8003AFA
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003BF4
    bl sub_8003E98
    bl sub_800467C
    bl sub_8004298
    bl sub_8004590
    bl sub_8004934
    bl sub_80024AE
    bl engine_isScreeneffectAnimating
    beq locret_80056B4
    bl sub_8040818
    mov r0, #0x21 
    bl sub_80035A2
    bl sub_8004702
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_8006C22
    bl sub_813C3AC
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x2c 
    strb r1, [r0]
locret_80056B4:
    pop {pc}
    .balign 4, 0x00
// end of function sub_8005642

.thumb
sub_80056B8:
    push {lr}
    bl loc_80339CC
    bl sub_80039AA
    bl sub_8003AFA
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003BF4
    bl sub_8003E98
    bl sub_800467C
    bl sub_8004298
    bl sub_8004590
    bl sub_8004934
    bl sub_80024AE
    bl engine_isScreeneffectAnimating
    beq locret_800572A
    bl sub_8040818
    mov r0, #0x21 
    bl sub_80035A2
    bl sub_8004702
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_8006C22
    bl sub_813C3AC
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x34 
    strb r1, [r0]
locret_800572A:
    pop {pc}
// end of function sub_80056B8

.thumb
sub_800572C:
    push {lr}
    bl loc_80339CC
    bl sub_80039AA
    bl sub_8003AFA
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003BF4
    bl sub_8003E98
    bl sub_800467C
    bl sub_8004298
    bl sub_8004590
    bl sub_8004934
    bl sub_80024AE
    bl engine_isScreeneffectAnimating
    beq locret_800579E
    bl sub_8040818
    mov r0, #0x21 
    bl sub_80035A2
    bl sub_8004702
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_8006C22
    bl sub_813C3AC
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x3c 
    strb r1, [r0]
locret_800579E:
    pop {pc}
// end of function sub_800572C

.thumb
sub_80057A0:
    push {lr}
    bl loc_80339CC
    bl sub_80039AA
    bl sub_8003AFA
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003BF4
    bl sub_8003E98
    bl sub_800467C
    bl sub_8004298
    bl sub_8004590
    bl sub_8004934
    bl sub_80024AE
    bl engine_isScreeneffectAnimating
    beq locret_8005812
    bl sub_8040818
    mov r0, #0x21 
    bl sub_80035A2
    bl sub_8004702
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_8006C22
    bl sub_813C3AC
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x40 
    strb r1, [r0]
locret_8005812:
    pop {pc}
// end of function sub_80057A0

.thumb
sub_8005814:
    push {lr}
    bl loc_80339CC
    bl sub_80039AA
    bl sub_8003AFA
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003BF4
    bl sub_8003E98
    bl sub_800467C
    bl sub_8004298
    bl sub_8004590
    bl sub_8004934
    bl sub_80024AE
    bl engine_isScreeneffectAnimating
    beq locret_8005858
    bl sub_8040818
    bl sub_811F6E0
    bl sub_8005524
locret_8005858:
    pop {pc}
// end of function sub_8005814

.thumb
sub_800585A:
    push {lr}
    bl loc_80339CC
    bl sub_80039AA
    bl sub_8003AFA
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003BF4
    bl sub_8003E98
    bl sub_800467C
    bl sub_8004298
    bl sub_8004590
    bl sub_8004934
    bl sub_80024AE
    bl engine_isScreeneffectAnimating
    beq locret_80058CC
    bl sub_8040818
    mov r0, #0x21 
    bl sub_80035A2
    bl sub_8004702
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_8006C22
    bl sub_813C3AC
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r7, r10
    ldr r0, [r7]
    mov r1, #0x50 
    strb r1, [r0]
locret_80058CC:
    pop {pc}
    .byte 0, 0
// end of function sub_800585A

loc_80058D0:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r0, [r5]
    cmp r0, #4
    bne locret_800593C
    bl sub_809E462
    bne locret_800593C
    bl sub_8005F28
    bne locret_800593C
    mov r0, #1
    bl sub_811EBE0
    bne locret_800593C
    bl engine_isScreeneffectAnimating
    beq locret_800593C
    bl sub_8036F36
    bne locret_800593C
    ldr r0, [r5,#0x18]
    add r0, #0x1c
    bl sub_8031A7A
    add r4, r1, #0
    cmp r4, #1
    blt locret_800593C
    cmp r4, #0xf
    bgt locret_800593C
    ldr r1, [pc, #0x8005940-0x800590e-2] // =0x16F0
    add r1, r1, r4
    add r0, r1, #0
    bl sub_802F168
    bne locret_800593C
    mov r2, r10
    ldr r2, [r2,#0x14]
    mov r0, #1
    strb r0, [r2,#0x10]
    strb r4, [r2,#0x11]
    mov r0, #0
    strb r0, [r2,#0x12]
    ldr r2, [r2,#0x14]
    mov r0, #0x10
    sub r4, #1
    mul r4, r0
    add r2, r2, r4
    ldrb r0, [r2,#2]
    ldr r1, [pc, #0x8005944-0x8005934-4] // =off_8005948
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
locret_800593C:
    pop {r5,pc}
    .byte 0, 0
off_8005940:    .word 0x16F0
off_8005944:    .word off_8005948
off_8005948:    .word sub_800596C+1
    .word sub_8005990+1
    .word sub_80059B4+1
    .word sub_80059D0+1
    .word sub_80059EC+1
    .word sub_8005A00+1
    .word sub_8005A0C+1
    .word sub_8005A28+1
    .word sub_8005A50+1
.thumb
sub_800596C:
    push {lr}
    mov r0, #0x17
    mov r1, #3
    bl sub_802F110
    mov r0, #0x17
    mov r1, #0x38 
    bl sub_802F110
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    bl sub_8035738
    mov r0, #0x10
    strb r0, [r5]
    pop {pc}
// end of function sub_800596C

.thumb
sub_8005990:
    push {lr}
    mov r0, #0x17
    mov r1, #3
    bl sub_802F110
    mov r0, #0x17
    mov r1, #0x38 
    bl sub_802F110
    mov r0, #4
    mov r1, #0x10
    bl engine_setScreeneffect
    bl sub_8035738
    mov r0, #0x10
    strb r0, [r5]
    pop {pc}
// end of function sub_8005990

.thumb
sub_80059B4:
    push {lr}
    mov r0, #0x17
    mov r1, #3
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x38 
    bl sub_802F110
    ldr r0, [pc, #0x8005a78-0x80059c6-2] // =0x80989F8
    mov r1, #0
    bl sub_8036E90
    pop {pc}
// end of function sub_80059B4

.thumb
sub_80059D0:
    push {lr}
    mov r0, #0x17
    mov r1, #3
    bl sub_802F110
    mov r0, #0x17
    mov r1, #0x38 
    bl sub_802F110
    ldr r0, [pc, #0x8005a80-0x80059e2-2] // =dword_8098A78
    mov r1, #0
    bl sub_8036E90
    pop {pc}
// end of function sub_80059D0

.thumb
sub_80059EC:
    push {lr}
    mov r0, #0x17
    mov r1, #3
    bl sub_802F12C
    ldr r0, [pc, #0x8005a7c-0x80059f6-2] // =0x8098A10
    mov r1, #0
    bl sub_8036E90
    pop {pc}
// end of function sub_80059EC

.thumb
sub_8005A00:
    push {lr}
    ldr r0, [pc, #0x8005a84-0x8005a02-2] // =0x809B584
    mov r1, #0
    bl sub_8036E90
    pop {pc}
// end of function sub_8005A00

.thumb
sub_8005A0C:
    push {lr}
    mov r0, #0x17
    mov r1, #3
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x38 
    bl sub_802F110
    ldr r0, [pc, #0x8005a88-0x8005a1e-2] // =dword_8098B1C
    mov r1, #0
    bl sub_8036E90
    pop {pc}
// end of function sub_8005A0C

.thumb
sub_8005A28:
    push {lr}
    mov r0, #0x17
    mov r1, #3
    bl sub_802F110
    mov r0, #0x17
    mov r1, #0x38 
    bl sub_802F110
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    bl sub_8035738
    mov r0, #0x3c 
    str r0, [r5,#0x68]
    mov r0, #0x10
    strb r0, [r5]
    pop {pc}
// end of function sub_8005A28

.thumb
sub_8005A50:
    push {lr}
    mov r0, #0x17
    mov r1, #3
    bl sub_802F110
    mov r0, #0x17
    mov r1, #0x38 
    bl sub_802F110
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    bl sub_8035738
    mov r0, #0xa0
    str r0, [r5,#0x68]
    mov r0, #0x10
    strb r0, [r5]
    pop {pc}
dword_8005A78:    .word 0x8098A02
dword_8005A7C:    .word 0x8098A2E
off_8005A80:    .word dword_8098A78
dword_8005A84:    .word 0x809B5AD
off_8005A88:    .word dword_8098B1C
// end of function sub_8005A50

.thumb
sub_8005A8C:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r0, [r5]
    cmp r0, #4
    bne locret_8005AF2
    mov r0, #0x17
    mov r1, #0x17
    bl sub_802F164
    bne locret_8005AF2
    bl sub_809E462
    bne locret_8005AF2
    mov r0, #0x17
    mov r1, #0
    bl sub_802F164
    bne locret_8005AF2
    mov r0, #0x17
    mov r1, #0x3e 
    bl sub_802F164
    bne locret_8005AF2
    bl sub_8005F28
    bne locret_8005AF2
    mov r0, #1
    bl sub_811EBE0
    bne locret_8005AF2
    bl engine_isScreeneffectAnimating
    beq locret_8005AF2
    bl sub_8036F36
    bne locret_8005AF2
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_8005AF2
    bl sub_80AA4C0
    beq locret_8005AF2
    mov r1, #1
    bl sub_8005BC8
    mov r0, #0x2c 
    mov r1, #0x10
    bl engine_setScreeneffect
locret_8005AF2:
    pop {r5,pc}
// end of function sub_8005A8C

.thumb
sub_8005AF4:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r0, [r5]
    cmp r0, #4
    bne locret_8005B68
    mov r0, #0x17
    mov r1, #0x17
    bl sub_802F164
    bne locret_8005B68
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F164
    bne locret_8005B68
    bl sub_809E462
    bne locret_8005B68
    bl sub_8005F28
    bne locret_8005B68
    mov r0, #1
    bl sub_811EBE0
    bne loc_8005B64
    bl engine_isScreeneffectAnimating
    beq locret_8005B68
    bl sub_8036F36
    bne locret_8005B68
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_8005B68
    mov r0, #8
    bl sub_811F7EC
    beq locret_8005B68
    mov r0, #0x17
    mov r1, #7
    bl sub_802F164
    bne locret_8005B68
    mov r0, #0x79 
    bl sound_play
    bl sub_800107A
    bl sub_811EC10
    bl sub_8003962
    bl sub_8003AB2
loc_8005B64:
    mov r0, #0x18
    strb r0, [r5]
locret_8005B68:
    pop {r5,pc}
// end of function sub_8005AF4

.thumb
sub_8005B6A:
    push {r5,lr}
    pop {r5,pc}
// end of function sub_8005B6A

    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r0, [r5]
    cmp r0, #4
    bne locret_8005BC6
    mov r0, #0x17
    mov r1, #0x17
    bl sub_802F164
    bne locret_8005BC6
    bl sub_809E462
    bne locret_8005BC6
    bl sub_8005F28
    bne locret_8005BC6
    mov r0, #1
    bl sub_811EBE0
    bne locret_8005BC6
    bl engine_isScreeneffectAnimating
    beq locret_8005BC6
    bl sub_8036F36
    bne locret_8005BC6
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_8005BC6
    mov r0, #0x17
    mov r1, #0x39 
    bl sub_802F164
    bne locret_8005BC6
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r1, [r0]
    ldrh r0, [r0,#2]
    mov r2, #4
    tst r0, r2
    beq locret_8005BC6
    bl sub_8005E86
locret_8005BC6:
    pop {r5,pc}
.thumb
sub_8005BC8:
    push {r4-r7,lr}
    add r7, r1, #0
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r6, r10
    ldr r6, [r6,#0x40]
    str r0, [r5,#0x1c]
    bl sub_802D254
    ldr r1, [pc, #0x8005c00-0x8005bda-2] // =0x4000
    tst r0, r1
    beq loc_8005BE4
    ldr r0, [r5,#0x1c]
    str r0, [r6,#0x1c]
loc_8005BE4:
    ldrh r0, [r5,#4]
    strh r0, [r5,#0xc]
    tst r7, r7
    beq loc_8005BF0
    bl sub_800107A
loc_8005BF0:
    mov r0, #8
    strb r0, [r5]
    bl sub_8000784
    mov r0, #0x78 
    bl sound_play
    pop {r4-r7,pc}
dword_8005C00:    .word 0x4000
// end of function sub_8005BC8

.thumb
sub_8005C04:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r0, #0
    str r0, [r5,#0x20]
    mov r0, #0x25 
    bl sub_80035A2
    mov r5, r10
    ldr r1, [r5,#0x14]
    ldr r0, [r1,#0x14]
    mov r2, #0x10
    ldrb r3, [r1,#0x11]
    sub r3, #1
    mul r3, r2
    add r0, r0, r3
    bl sub_800093C
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_8001708
    ldr r0, [pc, #0x8005ce4-0x8005c34-4] // =0x40
    bl sub_8001778
    mov r5, r10
    ldr r7, [r5,#0x14]
    ldr r5, [r5,#0x3c]
    mov r0, #0x17
    mov r1, #0x1b
    bl sub_802F164
    bne loc_8005C80
    ldrb r1, [r7]
    ldrb r2, [r5,#4]
    mov r3, #0x80
    add r4, r1, #0
    eor r4, r2
    tst r4, r3
    beq loc_8005C80
    tst r1, r3
    bne loc_8005C60
    mov r6, #0x48 
    b loc_8005C62
loc_8005C60:
    mov r6, #0x34 
loc_8005C62:
    ldr r0, [r5,#0x18]
    ldr r1, [r0,#0x1c]
    ldr r2, [r0,#0x20]
    ldr r3, [r0,#0x24]
    ldrb r4, [r0,#0x10]
    add r6, r6, r5
    str r1, [r6]
    str r2, [r6,#4]
    str r3, [r6,#8]
    str r4, [r6,#0xc]
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    lsl r1, r1, #8
    orr r1, r0
    str r1, [r6,#0x10]
loc_8005C80:
    mov r0, #0x17
    mov r1, #0x1b
    bl sub_802F12C
    ldrb r0, [r7,#0x12]
    cmp r0, #1
    beq loc_8005CA2
    cmp r0, #2
    beq loc_8005CAE
    mov r1, #2
    strb r1, [r7,#0x10]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    ldr r3, [r7,#0xc]
    ldrb r4, [r7,#3]
    ldrh r6, [r7]
    b loc_8005CB8
loc_8005CA2:
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    ldr r4, [r5,#0x40]
    ldr r6, [r5,#0x44]
    b loc_8005CB8
loc_8005CAE:
    ldr r1, [r5,#0x48]
    ldr r2, [r5,#0x4c]
    ldr r3, [r5,#0x50]
    ldr r4, [r5,#0x54]
    ldr r6, [r5,#0x58]
loc_8005CB8:
    str r1, [r5,#0x24]
    str r2, [r5,#0x28]
    str r3, [r5,#0x2c]
    str r4, [r5,#0x30]
    lsr r7, r6, #8
    mov r0, #0xff
    and r6, r0
    mov r1, #0
    strb r1, [r5]
    ldrb r1, [r5,#5]
    strb r1, [r5,#0xd]
    ldrb r1, [r5,#4]
    ldrb r2, [r5,#0xc]
    strb r1, [r5,#0xc]
    strb r6, [r5,#4]
    strb r7, [r5,#5]
    mov r7, r10
    ldr r7, [r7,#0x40]
    mov r0, #0
    strh r0, [r7,#0x12]
    strh r0, [r7,#0x14]
    pop {r4-r7,pc}
off_8005CE4:    .word 0x40
// end of function sub_8005C04

.thumb
subsystem_launchBBS:
    push {r4-r7,lr}
    bl sub_813E07C
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrh r0, [r5,#4]
    strh r0, [r5,#0xc]
    bl sub_800107A
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x1c
    strb r0, [r5]
    pop {r4-r7,pc}
// end of function subsystem_launchBBS

.thumb
subsystem_launchReqBBS:
    push {r4-r7,lr}
    bl reqBBS_init_s_2005780
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrh r0, [r5,#4]
    strh r0, [r5,#0xc]
    bl sub_800107A
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x30 
    strb r0, [r5]
    pop {r4-r7,pc}
// end of function subsystem_launchReqBBS

.thumb
subsystem_launchShop:
    push {r4-r7,lr}
    bl sub_8046CC8
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrh r0, [r5,#4]
    strh r0, [r5,#0xc]
    bl sub_800107A
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r1, #0x20 
    strb r1, [r5]
    pop {r4-r7,pc}
// end of function subsystem_launchShop

.thumb
subsystem_launchChipTrader:
    push {r4,r5,lr}
    add r4, r0, #0
    bl sub_8120A38
    add r0, r0, r1
    add r0, r0, r3
    cmp r0, r4
    bge loc_8005D5C
    mov r0, #1
    pop {r4,r5,pc}
loc_8005D5C:
    add r0, r4, #0
    bl sub_804A2CC
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r1, [r5,#0x18]
    ldr r0, [r1,#0x1c]
    str r0, [r5,#0x24]
    ldr r0, [r1,#0x20]
    str r0, [r5,#0x28]
    ldr r0, [r1,#0x24]
    str r0, [r5,#0x2c]
    ldrb r0, [r1,#0x10]
    str r0, [r5,#0x30]
    mov r1, #0x24 
    strb r1, [r5]
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0
    pop {r4,r5,pc}
// end of function subsystem_launchChipTrader

.thumb
sub_8005D88:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r0, #0
    str r0, [r5,#0x20]
    mov r0, #0x25 
    bl sub_80035A2
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_80385F0
    bl sub_8006C22
    bl sub_813C3AC
    pop {r4-r7,pc}
// end of function sub_8005D88

.thumb
sub_8005DBE:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r0, #0
    str r0, [r5,#0x20]
    mov r0, #0x25 
    bl sub_80035A2
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_803FB28
    bl sub_813C3AC
    pop {r4-r7,pc}
// end of function sub_8005DBE

.thumb
dead_8005DF0:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r0, #0
    str r0, [r5,#0x20]
    mov r0, #0x25 
    bl sub_80035A2
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_8138294
    bl sub_813C3AC
    pop {r4-r7,pc}
// end of function dead_8005DF0

.thumb
dead_8005E22:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r0, #0
    str r0, [r5,#0x20]
    mov r0, #0x25 
    bl sub_80035A2
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_8038A9C
    bl sub_813C3AC
    pop {r4-r7,pc}
// end of function dead_8005E22

.thumb
dead_8005E54:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    mov r0, #0
    str r0, [r5,#0x20]
    mov r0, #0x25 
    bl sub_80035A2
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl loc_803D1AC
    bl sub_813C3AC
    pop {r4-r7,pc}
// end of function dead_8005E54

.thumb
sub_8005E86:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrh r0, [r5,#4]
    strh r0, [r5,#0xc]
    bl sub_800107A
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x28 
    strb r0, [r5]
    pop {r4-r7,pc}
// end of function sub_8005E86

.thumb
sub_8005EA2:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrh r0, [r5,#4]
    strh r0, [r5,#0xc]
    bl sub_800107A
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r1, #0x2c 
    strb r1, [r5]
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_8005EA2

.thumb
subsystem_launchMail:
    push {r4,r5,lr}
    bl sub_8127990
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r1, [r5,#0x18]
    ldr r0, [r1,#0x1c]
    str r0, [r5,#0x24]
    ldr r0, [r1,#0x20]
    str r0, [r5,#0x28]
    ldr r0, [r1,#0x24]
    str r0, [r5,#0x2c]
    ldrb r0, [r1,#0x10]
    str r0, [r5,#0x30]
    mov r1, #0x34 
    strb r1, [r5]
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0
    pop {r4,r5,pc}
// end of function subsystem_launchMail

.thumb
sub_8005EEC:
    push {r4-r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x14]
    mov r3, #1
    strb r3, [r4,#0x10]
    add r3, r1, #1
    strb r3, [r4,#0x11]
    str r0, [r4,#0x14]
    strb r2, [r4,#0x12]
    pop {r4-r7,pc}
// end of function sub_8005EEC

    push {r4-r7,lr}
    bl sub_8005EEC
    mov r4, r10
    ldr r4, [r4,#0x3c]
    mov r0, #0x10
    strb r0, [r4]
    bl sub_8035738
    pop {r4-r7,pc}
    push {r4-r7,lr}
    bl sub_8005EEC
    mov r4, r10
    ldr r4, [r4,#0x3c]
    mov r0, #0x14
    strb r0, [r4]
    bl sub_8035738
    pop {r4-r7,pc}
.thumb
sub_8005F28:
    mov r0, r10
    ldr r0, [r0,#0x14]
    ldrb r1, [r0,#0x10]
    cmp r1, #0
    mov pc, lr
// end of function sub_8005F28

    mov r3, r10
    ldr r3, [r3,#0x14]
    ldr r0, [r3,#0x14]
    ldrb r1, [r3,#0x11]
    sub r1, #1
    ldrb r2, [r3,#0x12]
    mov pc, lr
.thumb
sub_8005F40:
    push {r4-r7,lr}
    bl sub_80017AA
    bl sub_80017E0
    bl sub_8001974
// end of function sub_8005F40

    bl sub_8001AFC
    bl sub_80023A8
    bl sub_8001820
    bl sub_800182E
    bl sub_80024A2
    bl sub_8001788
    bl sub_80017A0
    pop {r4-r7,pc}
.thumb
sub_8005F6C:
    push {r4-r7,lr}
    bl sub_802FDB0
    bl sub_802FF2C
    pop {r4-r7,pc}
// end of function sub_8005F6C

.thumb
sub_8005F78:
    push {r4-r7,lr}
    bl loc_802FDB4
    bl sub_802FF2C
    pop {r4-r7,pc}
// end of function sub_8005F78

.thumb
sub_8005F84:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8005fb0-0x8005f86-2] // =0x40
    bl sub_8001778
    bl sub_809F68C
    bl sub_8040818
    mov r0, #0x40 
    bl sub_8045F2C
    mov r7, r10
    ldr r0, [r7]
    mov r1, #4
    strb r1, [r0]
    ldr r0, [r7,#0x3c]
    mov r1, #0
    strb r1, [r0]
    mov r1, #8
    strb r1, [r0,#0x16]
    pop {r4-r7,pc}
    .byte 0, 0
off_8005FB0:    .word 0x40
off_8005FB4:    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word loc_80064BE+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_80063C0+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word sub_800647C+1
    .word sub_8006366+1
    .word sub_800647C+1
off_8006040:    .word unk_3001B60
    .word unk_3001750
    .word 0xFF, 0x81010, 0x3001B60, 0x3001750, 0xFF, 0x10081010
    .word 0x3001B60, 0x3001750, 0xFF, 0xC1010, 0x3001B60, 0x3001750
    .word 0xFF, 0x100C1010, 0x3001B60, 0x3001750, 0xFF, 0xC0A09
    .word 0x3001B60, 0x3001750, 0xFF, 0x40C0A09, 0x3001B60, 0x3001750
    .word 0xFF, 0xC0D0F, 0x3001B60, 0x3001750, 0xFF, 0x100C0D0F
    .word 0x3001B60, 0x3001750, 0xFF, 0x80D0F, 0x3001B60, 0x3001750
    .word 0xFF, 0x10080D0F, 0x3001B60, 0x3001750, 0xFF, 0x81010
    .word 0x3001B60, 0x3001750, 0xFF, 0x10081010, 0x3001B60, 0x30018F0
    .word 0xFF, 0x80100, 0x3001B60, 0x30018F0, 0xFF, 0x10080100
    .word 0x3001B60, 0x3001750, 0xFF, 0xC0009, 0x3001B60, 0x3001750
    .word 0xFF, 0x40C0009, 0x3001B60, 0x3001750, 0xFF, 0xC0010
    .word 0x3001B60, 0x3001750, 0xFF, 0x100C0010, 0x3001B60, 0x3001750
    .word 0xFF, 0xC0001, 0x3001B60, 0x3001750, 0xFF, 0x100C0001
    .word 0x3001B60, 0x3001750, 0xFF, 0xC0A09, 0x3001B60, 0x3001750
    .word 0xFF, 0x50C0A09, 0x3001C80, 0x3001890, 0xFF, 0xC0405
    .word 0x3001C80, 0x3001890, 0xFF, 0x30C0405, 0x3001B60, 0x3001750
    .word 0xFF, 0xC0B0E, 0x3001B60, 0x3001750, 0xFF, 0x80C0B0E
    .word 0x3001B60, 0x3001750, 0xFF, 0x80C0B0E, 0x3001B60, 0x3001870
    .word 0xFF, 0xC0110, 0x3001B60, 0x3001870, 0xFF, 0x100C0110
    .word 0x3001B60, 0x3001750, 0xFF, 0xC0F0F, 0x3001B60, 0x3001750
    .word 0xFF, 0x100C0F0F, 0x3001B60, 0x3001750, 0xFF, 0xC1000
    .word 0x3001B60, 0x3001750, 0xFF, 0x100C1000, 0x3001B60, 0x3001750
    .word 0xFF, 0xC0009, 0x3001B60, 0x3001750, 0xFF, 0x100C0009
// end of function sub_8005F84

.thumb
engine_setScreeneffect:
    mov r3, #0
    b loc_8006276
loc_8006274:
    mov r3, #0x20 
loc_8006276:
    push {r5,lr}
    cmp r0, #0xff
    beq locret_80062C0
    ldr r5, [pc, #0x80063bc-0x800627c-4] // =byte_200A440
    add r5, r5, r3
    push {r0,r1}
    add r0, r3, #0
    bl sub_8006330
    pop {r0,r1}
    strb r0, [r5,#0x1] // (byte_200A441 - 0x200a440)
    ldr r2, [pc, #0x80062c4-0x800628c-4] // =off_8006040
    lsl r0, r0, #2
    add r2, r2, r0
    ldr r0, [r2]
    str r0, [r5,#0x10] // (dword_200A450 - 0x200a440)
    ldr r0, [r2,#4]
    str r0, [r5,#0x14] // (dword_200A454 - 0x200a440)
    ldrb r0, [r2,#0xc]
    strh r0, [r5,#0x18] // (word_200A458 - 0x200a440)
    ldrb r0, [r2,#0xd]
    strh r0, [r5,#0x1c] // (word_200A45C - 0x200a440)
    ldrb r0, [r2,#0xe]
    strh r0, [r5,#0x8] // (word_200A448 - 0x200a440)
    ldrb r0, [r2,#0xf]
    lsl r0, r0, #4
    strh r0, [r5,#0xa] // (word_200A44A - 0x200a440)
    mov r0, #1
    strb r0, [r5]
    mov r0, #1
    strb r0, [r5,#0x3] // (byte_200A443 - 0x200a440)
    mov r0, #0
    strb r0, [r5,#0x2] // (byte_200A442 - 0x200a440)
    cmp r1, #0xff
    bne loc_80062BE
    add r1, #1
loc_80062BE:
    strh r1, [r5,#0x4] // (word_200A444 - 0x200a440)
locret_80062C0:
    pop {r5,pc}
    .balign 4, 0x00
off_80062C4:    .word off_8006040
// end of function engine_setScreeneffect

.thumb
sub_80062C8:
    ldr r0, [pc, #0x80063bc-0x80062c8-4] // =byte_200A440
    ldrb r1, [r0,#0x3] // (byte_200A443 - 0x200a440)
    ldrb r0, [r0,#0x1] // (byte_200A441 - 0x200a440)
    mov pc, lr
// end of function sub_80062C8

.thumb
sub_80062D0:
    push {r5,lr}
    mov r0, #0
    b loc_80062DA
// end of function sub_80062D0

.thumb
sub_80062D6:
    push {r5,lr}
    mov r0, #0x20 
loc_80062DA:
    ldr r5, [pc, #0x80063bc-0x80062da-2] // =byte_200A440
    add r5, r5, r0
    bl sub_8006330
    add r0, r5, #0  // memBlock
    mov r1, #0x20   // numWords
    bl CpuSet_ZeroFillWord
    pop {r5,pc}
// end of function sub_80062D6

.thumb
sub_80062EC:
    push {lr}
    bl sub_80062D0
    bl sub_80062D6
    pop {pc}
// end of function sub_80062EC

.thumb
engine_isScreeneffectAnimating:
    mov r3, #0
    b loc_80062FE
loc_80062FC:
    mov r3, #0x20 
loc_80062FE:
    ldr r0, [pc, #0x80063bc-0x80062fe-2] // =byte_200A440
    add r0, r0, r3
    ldrb r0, [r0,#0x3] // (byte_200A443 - 0x200a440)
    mov r1, #1
    cmp r0, r1
    mov pc, lr
// end of function engine_isScreeneffectAnimating

.thumb
subsystem_triggerTransition_800630A:
    push {r4-r7,lr}
    ldr r5, [pc, #0x80063bc-0x800630c-4] // =byte_200A440
    mov r4, #0
loc_8006310:
    ldrb r0, [r5]
    mov r1, #1
    cmp r0, r1
    bne loc_8006322
    ldrb r2, [r5,#1]
    ldr r0, [pc, #0x800632c-0x800631a-2] // =off_8005FB4
    ldr r0, [r0,r2]
    mov lr, pc
    bx r0
loc_8006322:
    add r5, #0x20 
    add r4, #1
    cmp r4, #2
    blt loc_8006310
    pop {r4-r7,pc}
off_800632C:    .word off_8005FB4
// end of function subsystem_triggerTransition_800630A

.thumb
sub_8006330:
    push {r5,lr}
    ldr r5, [pc, #0x80063bc-0x8006332-2] // =byte_200A440
    add r5, r5, r0
    bl sub_800634C
    ldrb r0, [r5,#0xc]
    add r0, #0x12
    bl sub_800239A
    ldrb r0, [r5,#0xc]
    add r0, #0x13
    bl sub_800239A
    pop {r5,pc}
// end of function sub_8006330

.thumb
sub_800634C:
    push {r5,lr}
    ldr r5, [pc, #0x80063bc-0x800634e-2] // =byte_200A440
    add r5, r5, r0
    lsr r2, r0, #4
    strb r2, [r5,#0xc]
    mov r0, #0
    strb r0, [r5,#3]
    mov r0, #0
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#2]
    strb r0, [r5,#0xd]
    pop {r5,pc}
// end of function sub_800634C

.thumb
sub_8006366:
    push {r4-r7,lr}
    ldrh r1, [r5,#6]
    ldrh r2, [r5,#4]
    ldrb r3, [r5,#2]
    mov r4, #1
    strb r4, [r5,#2]
    tst r3, r3
    beq loc_800637C
    sub r1, r1, r2
    bge loc_800637C
    mov r1, #0
loc_800637C:
    strh r1, [r5,#6]
    ldrh r2, [r5,#0xa]
    cmp r1, r2
    ble loc_80063B0
    lsr r1, r1, #4
    lsl r2, r1, #5
    lsl r3, r1, #0xa
    orr r1, r2
    orr r1, r3
    add r6, r1, #0
    ldrh r0, [r5,#8]
    ldrh r2, [r5,#0x18]
    ldrb r3, [r5,#0xc]
    add r3, #0x12
    ldr r4, [r5,#0x10]
    bl sub_8002378
    ldrh r0, [r5,#8]
    add r1, r6, #0
    ldrh r2, [r5,#0x1c]
    ldrb r3, [r5,#0xc]
    add r3, #0x13
    ldr r4, [r5,#0x14]
    bl sub_8002378
    pop {r4-r7,pc}
loc_80063B0:
    ldr r0, [pc, #0x80063bc-0x80063b0-4] // =byte_200A440
    sub r0, r5, r0
    bl sub_8006330
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80063BC:    .word byte_200A440
// end of function sub_8006366

.thumb
sub_80063C0:
    push {r4-r7,lr}
    ldrh r1, [r5,#6]
    ldrh r2, [r5,#4]
    ldrb r3, [r5,#2]
    mov r4, #1
    strb r4, [r5,#2]
    tst r3, r3
    beq loc_80063D6
    sub r1, r1, r2
    bge loc_80063D6
    mov r1, #0
loc_80063D6:
    strh r1, [r5,#6]
    ldrh r2, [r5,#0xa]
    cmp r1, r2
    ble loc_800640E
    lsr r1, r1, #4
    lsl r2, r1, #5
    lsl r3, r1, #0xa
    orr r1, r2
    orr r1, r3
    add r6, r1, #0
    ldrh r0, [r5,#8]
    ldrh r2, [r5,#0x18]
    ldrb r3, [r5,#0xc]
    add r3, #0x12
    ldr r4, [r5,#0x10]
    bl sub_8002378
    ldrh r0, [r5,#8]
    add r1, r6, #0
    ldrh r2, [r5,#0x1c]
    ldrb r3, [r5,#0xc]
    add r3, #0x13
    ldr r4, [r5,#0x14]
    bl sub_8002378
    bl sub_8006414
    pop {r4-r7,pc}
loc_800640E:
    bl sub_8006444
    pop {r4-r7,pc}
// end of function sub_80063C0

.thumb
sub_8006414:
    push {r4-r7,lr}
    ldr r4, [r5,#0x10]
    ldrh r0, [r5,#0x18]
    lsl r0, r0, #5
    add r4, r4, r0
    ldrh r0, [r5,#8]
    add r1, r6, #0
    mov r2, #2
    ldrb r3, [r5,#0xc]
    add r3, #0x14
    bl sub_8002378
    ldr r4, [r5,#0x14]
    ldrh r0, [r5,#0x1c]
    lsl r0, r0, #5
    add r4, r4, r0
    ldrh r0, [r5,#8]
    add r1, r6, #0
    mov r2, #4
    ldrb r3, [r5,#0xc]
    add r3, #0x15
    bl sub_8002378
    pop {r4-r7,pc}
// end of function sub_8006414

.thumb
sub_8006444:
    push {r6,lr}
    ldr r2, [pc, #0x8006474-0x8006446-2] // =0x10
    cmp r1, r2
    blt loc_800645E
    lsr r1, r1, #4
    lsl r2, r1, #5
    lsl r3, r1, #0xa
    orr r1, r2
    orr r1, r3
    add r6, r1, #0
    bl sub_8006414
    pop {r6,pc}
loc_800645E:
    ldr r0, [pc, #0x8006478-0x800645e-2] // =byte_200A440
    sub r0, r5, r0
    bl sub_800634C
    mov r0, #0x64 
    mov r1, #0xff
    bl engine_setScreeneffect
    bl sub_800647C
    pop {r6,pc}
dword_8006474:    .word 0x10
off_8006478:    .word byte_200A440
// end of function sub_8006444

.thumb
sub_800647C:
    push {r4-r7,lr}
    ldrh r1, [r5,#6]
    ldrh r2, [r5,#4]
    add r1, r1, r2
    ldrh r2, [r5,#0xa]
    cmp r1, r2
    blt loc_8006490
    mov r0, #0
    strb r0, [r5,#3]
    add r1, r2, #0
loc_8006490:
    strh r1, [r5,#6]
    lsr r1, r1, #4
    lsl r2, r1, #5
    lsl r3, r1, #0xa
    orr r1, r2
    orr r1, r3
    add r6, r1, #0
    ldrh r0, [r5,#8]
    ldrh r2, [r5,#0x18]
    ldrb r3, [r5,#0xc]
    add r3, #0x12
    ldr r4, [r5,#0x10]
    bl sub_8002378
    ldrh r0, [r5,#8]
    add r1, r6, #0
    ldrh r2, [r5,#0x1c]
    ldrb r3, [r5,#0xc]
    add r3, #0x13
    ldr r4, [r5,#0x14]
    bl sub_8002378
    pop {r4-r7,pc}
// end of function sub_800647C

loc_80064BE:
    push {r4-r7,lr}
    ldrh r1, [r5,#6]
    ldrh r2, [r5,#4]
    add r1, r1, r2
    mov r7, #0
    ldrh r2, [r5,#0xa]
    cmp r1, r2
    blt loc_80064D6
    mov r0, #0
    strb r0, [r5,#3]
    mov r7, #4
    add r1, r2, #0
loc_80064D6:
    strh r1, [r5,#6]
    lsr r1, r1, #4
    lsl r2, r1, #5
    lsl r3, r1, #0xa
    orr r1, r2
    orr r1, r3
    add r6, r1, #0
    ldrh r0, [r5,#8]
    ldrh r2, [r5,#0x18]
    ldrb r3, [r5,#0xc]
    add r3, #0x12
    ldr r4, [r5,#0x10]
    bl sub_8002378
    ldrh r0, [r5,#8]
    add r1, r6, #0
    ldrh r2, [r5,#0x1c]
    ldrb r3, [r5,#0xc]
    add r3, #0x13
    ldr r4, [r5,#0x14]
    bl sub_8002378
    ldr r0, [pc, #0x800650c-0x8006502-2] // =off_8006510
    ldr r0, [r0,r7]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_800650C:    .word off_8006510
off_8006510:    .word sub_8006518+1
    .word sub_8006580+1
.thumb
sub_8006518:
    push {r4-r7,lr}
    mov r0, #0
    ldr r1, [pc, #0x80065b8-0x800651c-4] // =dword_80065BC
    ldrb r2, [r5,#0xd]
    lsl r2, r2, #1
    ldrh r1, [r1,r2]
    mov r2, #0x10
    mov r3, #0x14
    ldr r4, [r5,#0x10]
    bl sub_8002378
    mov r0, #0
    ldr r1, [pc, #0x80065b8-0x8006530-4] // =dword_80065BC
    ldrb r2, [r5,#0xd]
    lsl r2, r2, #1
    ldrh r1, [r1,r2]
    mov r2, #0x10
    mov r3, #0x15
    ldr r4, [r5,#0x14]
    bl sub_8002378
    ldr r0, [pc, #0x80065b4-0x8006542-2] // =dword_20096D0
    mov r1, #0x40 
    str r1, [r0]
    ldrb r0, [r5,#0xd]
    add r0, #1
    cmp r0, #0x10
    bge loc_8006552
    strb r0, [r5,#0xd]
loc_8006552:
    mov r0, r10
    ldr r0, [r0,#8]
    mov r2, #0x40 
    ldrh r1, [r0,#6]
    orr r1, r2
    strh r1, [r0,#6]
    ldrh r1, [r0,#8]
    orr r1, r2
    strh r1, [r0,#8]
    ldrh r1, [r0,#0xa]
    orr r1, r2
    strh r1, [r0,#0xa]
    ldrh r2, [r5,#6]
    lsr r2, r2, #4
    mov r1, #0
    orr r1, r2
    lsl r2, r2, #4
    lsl r2, r2, #4
    orr r1, r2
    lsl r2, r2, #4
    orr r1, r2
    strh r1, [r0,#2]
    pop {r4-r7,pc}
// end of function sub_8006518

.thumb
sub_8006580:
    push {r4-r7,lr}
    mov r0, #0x14
    bl sub_800239A
    mov r0, #0x15
    bl sub_800239A
    ldr r0, [pc, #0x80065b4-0x800658e-2] // =dword_20096D0
    mov r1, #0
    str r1, [r0]
    strb r1, [r5,#0xd]
    mov r0, r10
    ldr r0, [r0,#8]
    mov r2, #0x40 
    ldrh r1, [r0,#6]
    bic r1, r2
    strh r1, [r0,#6]
    ldrh r1, [r0,#8]
    bic r1, r2
    strh r1, [r0,#8]
    ldrh r1, [r0,#0xa]
    bic r1, r2
    strh r1, [r0,#0xa]
    mov r1, #0
    strh r1, [r0,#2]
    pop {r4-r7,pc}
off_80065B4:    .word dword_20096D0
off_80065B8:    .word dword_80065BC
dword_80065BC:    .word 0x18001000, 0x28002000, 0x38003000, 0x48004000
    .word 0x58005000
dword_80065D0:    .word 0x68006000, 0x78007000, 0x7C007C00, 0x7C00, 0x60000
    .word 0x12000C, 0x1F0019, 0x2B0025, 0x380031, 0x44003E
    .word 0x50004A, 0x5C0056, 0x670061, 0x73006D, 0x7E0078
    .word 0x880083, 0x93008E, 0x9D0098, 0xA700A2, 0xB000AB
    .word 0xB900B5, 0xC100BD, 0xC900C5, 0xD100CD, 0xD800D4
    .word 0xDE00DB, 0xE400E1, 0xEA00E7, 0xEE00EC, 0xF300F1
    .word 0xF600F4, 0xF900F8, 0xFC00FB, 0xFE00FD, 0xFF00FE
    .word 0xFF00FF
dword_8006660:    .word 0xFF0100, 0xFF00FF, 0xFE00FE, 0xFC00FD, 0xF900FB, 0xF600F8
    .word 0xF300F4, 0xEE00F1, 0xEA00EC, 0xE400E7, 0xDE00E1, 0xD800DB
    .word 0xD100D4, 0xC900CD, 0xC100C5, 0xB900BD, 0xB000B5, 0xA700AB
    .word 0x9D00A2, 0x930098, 0x88008E, 0x7E0083, 0x730078, 0x67006D
    .word 0x5C0061, 0x500056, 0x44004A, 0x38003E, 0x2B0031, 0x1F0025
    .word 0x120019, 0x6000C
unk_80066E0:    .byte 0
    .byte 0
    .byte 0xFA
    .byte 0xFF
    .byte 0xF4
    .byte 0xFF
    .byte 0xEE
    .byte 0xFF
    .byte 0xE7
    .byte 0xFF
    .byte 0xE1
    .byte 0xFF
    .byte 0xDB
    .byte 0xFF
    .byte 0xD5
    .byte 0xFF
    .byte 0xCF
    .byte 0xFF
    .byte 0xC8
    .byte 0xFF
    .byte 0xC2
    .byte 0xFF
    .byte 0xBC
    .byte 0xFF
    .byte 0xB6
    .byte 0xFF
    .byte 0xB0
    .byte 0xFF
    .byte 0xAA
    .byte 0xFF
    .byte 0xA4
    .byte 0xFF
    .byte 0x9F
    .byte 0xFF
    .byte 0x99
    .byte 0xFF
    .byte 0x93
    .byte 0xFF
    .byte 0x8D
    .byte 0xFF
    .byte 0x88
    .byte 0xFF
    .byte 0x82
    .byte 0xFF
    .byte 0x7D 
    .byte 0xFF
    .byte 0x78 
    .byte 0xFF
    .byte 0x72 
    .byte 0xFF
    .byte 0x6D 
    .byte 0xFF
    .byte 0x68 
    .byte 0xFF
    .byte 0x63 
    .byte 0xFF
    .byte 0x5E 
    .byte 0xFF
    .byte 0x59 
    .byte 0xFF
    .byte 0x55 
    .byte 0xFF
    .byte 0x50 
    .byte 0xFF
    .byte 0x4B 
    .byte 0xFF
    .byte 0x47 
    .byte 0xFF
    .byte 0x43 
    .byte 0xFF
    .byte 0x3F 
    .byte 0xFF
    .byte 0x3B 
    .byte 0xFF
    .byte 0x37 
    .byte 0xFF
    .byte 0x33 
    .byte 0xFF
    .byte 0x2F 
    .byte 0xFF
    .byte 0x2C 
    .byte 0xFF
    .byte 0x28 
    .byte 0xFF
    .byte 0x25 
    .byte 0xFF
    .byte 0x22 
    .byte 0xFF
    .byte 0x1F
    .byte 0xFF
    .byte 0x1C
    .byte 0xFF
    .byte 0x19
    .byte 0xFF
    .byte 0x16
    .byte 0xFF
    .byte 0x14
    .byte 0xFF
    .byte 0x12
    .byte 0xFF
    .byte 0xF
    .byte 0xFF
    .byte 0xD
    .byte 0xFF
    .byte 0xC
    .byte 0xFF
    .byte 0xA
    .byte 0xFF
    .byte 8
    .byte 0xFF
    .byte 7
    .byte 0xFF
    .byte 5
    .byte 0xFF
    .byte 4
    .byte 0xFF
    .byte 3
    .byte 0xFF
    .byte 2
    .byte 0xFF
    .byte 2
    .byte 0xFF
    .byte 1
    .byte 0xFF
    .byte 1
    .byte 0xFF
    .byte 1
    .byte 0xFF
    .byte 0
    .byte 0xFF
    .byte 1
    .byte 0xFF
    .byte 1
    .byte 0xFF
    .byte 1
    .byte 0xFF
    .byte 2
    .byte 0xFF
    .byte 2
    .byte 0xFF
    .byte 3
    .byte 0xFF
    .byte 4
    .byte 0xFF
    .byte 5
    .byte 0xFF
    .byte 7
    .byte 0xFF
    .byte 8
    .byte 0xFF
    .byte 0xA
    .byte 0xFF
    .byte 0xC
    .byte 0xFF
    .byte 0xD
    .byte 0xFF
    .byte 0xF
    .byte 0xFF
    .byte 0x12
    .byte 0xFF
    .byte 0x14
    .byte 0xFF
    .byte 0x16
    .byte 0xFF
    .byte 0x19
    .byte 0xFF
    .byte 0x1C
    .byte 0xFF
    .byte 0x1F
    .byte 0xFF
    .byte 0x22 
    .byte 0xFF
    .byte 0x25 
    .byte 0xFF
    .byte 0x28 
    .byte 0xFF
    .byte 0x2C 
    .byte 0xFF
    .byte 0x2F 
    .byte 0xFF
    .byte 0x33 
    .byte 0xFF
    .byte 0x37 
    .byte 0xFF
    .byte 0x3B 
    .byte 0xFF
    .byte 0x3F 
    .byte 0xFF
    .byte 0x43 
    .byte 0xFF
    .byte 0x47 
    .byte 0xFF
    .byte 0x4B 
    .byte 0xFF
    .byte 0x50 
    .byte 0xFF
    .byte 0x55 
    .byte 0xFF
    .byte 0x59 
    .byte 0xFF
    .byte 0x5E 
    .byte 0xFF
    .byte 0x63 
    .byte 0xFF
    .byte 0x68 
    .byte 0xFF
    .byte 0x6D 
    .byte 0xFF
    .byte 0x72 
    .byte 0xFF
    .byte 0x78 
    .byte 0xFF
    .byte 0x7D 
    .byte 0xFF
    .byte 0x82
    .byte 0xFF
    .byte 0x88
    .byte 0xFF
    .byte 0x8D
    .byte 0xFF
    .byte 0x93
    .byte 0xFF
    .byte 0x99
    .byte 0xFF
    .byte 0x9F
    .byte 0xFF
    .byte 0xA4
    .byte 0xFF
    .byte 0xAA
    .byte 0xFF
    .byte 0xB0
    .byte 0xFF
    .byte 0xB6
    .byte 0xFF
    .byte 0xBC
    .byte 0xFF
    .byte 0xC2
    .byte 0xFF
    .byte 0xC8
    .byte 0xFF
    .byte 0xCF
    .byte 0xFF
    .byte 0xD5
    .byte 0xFF
    .byte 0xDB
    .byte 0xFF
    .byte 0xE1
    .byte 0xFF
    .byte 0xE7
    .byte 0xFF
    .byte 0xEE
    .byte 0xFF
    .byte 0xF4
    .byte 0xFF
    .byte 0xFA
    .byte 0xFF
    .byte 0
    .byte 0
    .byte 6
    .byte 0
    .byte 0xC
    .byte 0
    .byte 0x12
    .byte 0
    .byte 0x19
    .byte 0
    .byte 0x1F
    .byte 0
    .byte 0x25 
    .byte 0
    .byte 0x2B 
    .byte 0
    .byte 0x31 
    .byte 0
    .byte 0x38 
    .byte 0
    .byte 0x3E 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x4A 
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x56 
    .byte 0
    .byte 0x5C 
    .byte 0
    .byte 0x61 
    .byte 0
    .byte 0x67 
    .byte 0
    .byte 0x6D 
    .byte 0
    .byte 0x73 
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x7E 
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x88
    .byte 0
    .byte 0x8E
    .byte 0
    .byte 0x93
    .byte 0
    .byte 0x98
    .byte 0
    .byte 0x9D
    .byte 0
    .byte 0xA2
    .byte 0
    .byte 0xA7
    .byte 0
    .byte 0xAB
    .byte 0
    .byte 0xB0
    .byte 0
    .byte 0xB5
    .byte 0
    .byte 0xB9
    .byte 0
    .byte 0xBD
    .byte 0
    .byte 0xC1
    .byte 0
    .byte 0xC5
    .byte 0
    .byte 0xC9
    .byte 0
    .byte 0xCD
    .byte 0
    .byte 0xD1
    .byte 0
    .byte 0xD4
    .byte 0
    .byte 0xD8
    .byte 0
    .byte 0xDB
    .byte 0
    .byte 0xDE
    .byte 0
    .byte 0xE1
    .byte 0
    .byte 0xE4
    .byte 0
    .byte 0xE7
    .byte 0
    .byte 0xEA
    .byte 0
    .byte 0xEC
    .byte 0
    .byte 0xEE
    .byte 0
    .byte 0xF1
    .byte 0
    .byte 0xF3
    .byte 0
    .byte 0xF4
    .byte 0
    .byte 0xF6
    .byte 0
    .byte 0xF8
    .byte 0
    .byte 0xF9
    .byte 0
    .byte 0xFB
    .byte 0
    .byte 0xFC
    .byte 0
    .byte 0xFD
    .byte 0
    .byte 0xFE
    .byte 0
    .byte 0xFE
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 0
    .byte 1
    .byte 0xFF
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 0xFE
    .byte 0
    .byte 0xFE
    .byte 0
    .byte 0xFD
    .byte 0
    .byte 0xFC
    .byte 0
    .byte 0xFB
    .byte 0
    .byte 0xF9
    .byte 0
    .byte 0xF8
    .byte 0
    .byte 0xF6
    .byte 0
    .byte 0xF4
    .byte 0
    .byte 0xF3
    .byte 0
    .byte 0xF1
    .byte 0
    .byte 0xEE
    .byte 0
    .byte 0xEC
    .byte 0
    .byte 0xEA
    .byte 0
    .byte 0xE7
    .byte 0
    .byte 0xE4
    .byte 0
    .byte 0xE1
    .byte 0
    .byte 0xDE
    .byte 0
    .byte 0xDB
    .byte 0
    .byte 0xD8
    .byte 0
    .byte 0xD4
    .byte 0
    .byte 0xD1
    .byte 0
    .byte 0xCD
    .byte 0
    .byte 0xC9
    .byte 0
    .byte 0xC5
    .byte 0
    .byte 0xC1
    .byte 0
    .byte 0xBD
    .byte 0
    .byte 0xB9
    .byte 0
    .byte 0xB5
    .byte 0
    .byte 0xB0
    .byte 0
    .byte 0xAB
    .byte 0
    .byte 0xA7
    .byte 0
    .byte 0xA2
    .byte 0
    .byte 0x9D
    .byte 0
    .byte 0x98
    .byte 0
    .byte 0x93
    .byte 0
    .byte 0x8E
    .byte 0
    .byte 0x88
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x7E 
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x73 
    .byte 0
    .byte 0x6D 
    .byte 0
    .byte 0x67 
    .byte 0
    .byte 0x61 
    .byte 0
    .byte 0x5C 
    .byte 0
    .byte 0x56 
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x4A 
    .byte 0
    .byte 0x44 
    .byte 0
    .byte 0x3E 
    .byte 0
    .byte 0x38 
    .byte 0
    .byte 0x31 
    .byte 0
    .byte 0x2B 
    .byte 0
    .byte 0x25 
    .byte 0
    .byte 0x1F
    .byte 0
    .byte 0x19
    .byte 0
    .byte 0x12
    .byte 0
    .byte 0xC
    .byte 0
    .byte 6
    .byte 0
// end of function sub_8006580

.thumb
sub_80068E0:
    push {lr}
    bl sub_800093C
    pop {pc}
    .byte 0xF0
    .byte 0xB5
    .byte 2
    .byte 0xE0
// end of function sub_80068E0

.thumb
sub_80068EC:
    push {r4-r7,lr}
    ldr r4, [pc, #0x8006908-0x80068ee-2] // =unk_2008E80
    ldr r5, [pc, #0x800690c-0x80068f0-4] // =0x500
    ldr r7, [pc, #0x800691c-0x80068f2-2] // =byte_20081B0
    strb r2, [r7,#0x1] // (byte_20081B1 - 0x20081b0)
    lsr r3, r3, #0x10
    strh r3, [r7,#0x2] // (word_20081B2 - 0x20081b0)
    str r0, [r7,#0x4] // (dword_20081B4 - 0x20081b0)
    str r1, [r7,#0x8] // (dword_20081B8 - 0x20081b0)
    str r4, [r7,#0xc] // (dword_20081BC - 0x20081b0)
    str r5, [r7,#0x10] // (dword_20081C0 - 0x20081b0)
    mov r0, #1
    strb r0, [r7]
    pop {r4-r7,pc}
off_8006908:    .word unk_2008E80
off_800690C:    .word 0x500
// end of function sub_80068EC

.thumb
sub_8006910:
    push {lr}
    ldr r1, [pc, #0x800691c-0x8006912-2] // =byte_20081B0
    mov r0, #0x80
    strb r0, [r1]
    pop {pc}
    .balign 4, 0x00
off_800691C:    .word byte_20081B0
// end of function sub_8006910

    push {r4-r7,lr}
    add r4, r0, #0
    ldr r5, [pc, #0x8006b8c-0x8006924-4] // =unk_20096A0
    add r0, r5, #0
    mov r1, #0x30 
    ldr r2, [pc, #0x8006988-0x800692a-2] // =CpuSet_ZeroFillWord+1
    mov lr, pc
    bx r2
    mov r0, #0
    strh r0, [r5,#0x4] // (dword_20096A4 - 0x20096a0)
    mov r0, #2
    lsl r0, r0, #0x10
    str r0, [r5,#0xc] // (dword_20096AC - 0x20096a0)
    ldr r0, [r4]
    str r0, [r5,#0x8] // (dword_20096A8 - 0x20096a0)
    ldr r0, [r4,#4]
    str r0, [r5,#0x10] // (dword_20096B0 - 0x20096a0)
    ldr r0, [r4,#8]
    str r0, [r5,#0x14] // (dword_20096B4 - 0x20096a0)
    ldr r0, [r4,#0xc]
    str r0, [r5,#0x18] // (dword_20096B8 - 0x20096a0)
    ldr r0, [r4,#0x10]
    str r0, [r5,#0x1c] // (dword_20096BC - 0x20096a0)
    ldr r0, [r4,#0x14]
    str r0, [r5,#0x20] // (dword_20096C0 - 0x20096a0)
    ldr r0, [r4,#0x18]
    str r0, [r5,#0x24] // (dword_20096C4 - 0x20096a0)
    ldr r0, [r4,#0x1c]
    str r0, [r5,#0x28] // (dword_20096C8 - 0x20096a0)
    ldr r0, [r4,#0x20]
    str r0, [r5,#0x2c] // (dword_20096CC - 0x20096a0)
    ldr r0, [r4,#0x24]
    strb r0, [r5,#0x3] // (byte_20096A3 - 0x20096a0)
    ldr r0, [pc, #0x8006b88-0x8006962-2] // =unk_2008980
    mov r1, #0xa0
    lsl r1, r1, #3
    mov r2, #0xa0
    bl sub_8006B94
    ldr r0, [pc, #0x8006b88-0x800696e-2] // =unk_2008980
    ldr r1, [pc, #0x8006980-0x8006970-4] // =Window0HorizontalDimensions
    mov r2, #4
    ldr r3, [pc, #0x8006984-0x8006974-4] // =0xA2600000
    ldr r4, [pc, #0x800698c-0x8006976-2] // =sub_80068EC+1
    mov lr, pc
    bx r4
    pop {r4-r7,pc}
    .byte 0, 0
off_8006980:    .word Window0HorizontalDimensions
dword_8006984:    .word 0xA2600000
off_8006988:    .word CpuSet_ZeroFillWord+1
off_800698C:    .word sub_80068EC+1
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r5, [pc, #0x8006b8c-0x800699a-2] // =unk_20096A0
    mov r7, r10
    ldr r6, [r7,#0x1c]
    mov r0, #0x3f 
    strb r0, [r6,#8]
    mov r0, #0x17
    strb r0, [r6,#0xa]
    add r0, r5, #0
    add r0, #0x24 
    ldr r1, [pc, #0x8006a58-0x80069ac-4] // =sub_8003694+1
    mov lr, pc
    bx r1
    tst r2, r2
    beq loc_80069D0
    ldrh r2, [r5,#0x4] // (dword_20096A4 - 0x20096a0)
    cmp r2, #0xff
    bpl loc_80069D0
    push {r0-r2}
    bl sub_8006A6C
    pop {r0-r2}
    bl sub_8006B3A
    ldr r6, [r7,#0x1c]
    strh r0, [r6]
    mov r0, #1
    strh r0, [r6,#4]
loc_80069D0:
    ldr r6, [r7,#0x20]
    mov r0, #0x48 
    strb r0, [r6]
    mov r0, #0x37 
    strb r0, [r6,#1]
    mov r0, #0x10
    strb r0, [r6,#3]
    ldr r0, [r5,#0xc] // (dword_20096AC - 0x20096a0)
    lsr r0, r0, #0x10
    strb r0, [r6,#2]
    ldr r0, [r5,#0x4] // (dword_20096A4 - 0x20096a0)
    ldr r1, [r5,#0x8] // (dword_20096A8 - 0x20096a0)
    ldr r2, [r5,#0x14] // (dword_20096B4 - 0x20096a0)
    add r1, r1, r2
    ldr r3, [r5,#0x1c] // (dword_20096BC - 0x20096a0)
    cmp r1, r3
    bgt loc_80069F4
    str r1, [r5,#0x8] // (dword_20096A8 - 0x20096a0)
loc_80069F4:
    lsr r1, r1, #0x10
    add r0, r0, r1
    ldrb r3, [r5,#0x3] // (byte_20096A3 - 0x20096a0)
    cmp r0, r3
    bgt loc_8006A02
    str r0, [r5,#0x4] // (dword_20096A4 - 0x20096a0)
    b loc_8006A04
loc_8006A02:
    str r3, [r5,#0x4] // (dword_20096A4 - 0x20096a0)
loc_8006A04:
    ldr r0, [r5,#0xc] // (dword_20096AC - 0x20096a0)
    ldr r1, [r5,#0x10] // (dword_20096B0 - 0x20096a0)
    ldr r2, [r5,#0x18] // (dword_20096B8 - 0x20096a0)
    add r1, r1, r2
    ldr r3, [r5,#0x20] // (dword_20096C0 - 0x20096a0)
    cmp r1, r3
    bgt loc_8006A14
    str r1, [r5,#0x10] // (dword_20096B0 - 0x20096a0)
loc_8006A14:
    add r0, r0, r1
    ldrb r3, [r5,#0x3] // (byte_20096A3 - 0x20096a0)
    lsl r3, r3, #0x10
    cmp r0, r3
    bgt loc_8006A22
    str r0, [r5,#0xc] // (dword_20096AC - 0x20096a0)
    b loc_8006A24
loc_8006A22:
    str r3, [r5,#0xc] // (dword_20096AC - 0x20096a0)
loc_8006A24:
    ldr r0, [r5,#0xc] // (dword_20096AC - 0x20096a0)
    lsr r0, r0, #0x10
    cmp r0, #0x10
    blt loc_8006A32
    mov r0, #0x10
    lsl r0, r0, #0x10
    str r0, [r5,#0xc] // (dword_20096AC - 0x20096a0)
loc_8006A32:
    ldr r0, [r5,#0x4] // (dword_20096A4 - 0x20096a0)
    cmp r0, #0xff
    blt loc_8006A44
    mov r0, #1
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
loc_8006A44:
    mov r0, #0
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .word 0x8006A54, 0xFFFF1FFF
off_8006A58:    .word sub_8003694+1
    push {r4-r7,lr}
    ldr r0, [pc, #0x8006a68-0x8006a5e-2] // =sub_8006910+1
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8006A68:    .word sub_8006910+1
.thumb
sub_8006A6C:
    push {r5,r7,lr}
    sub sp, sp, #8
    str r1, [sp]
    str r2, [sp,#4]
    mov r12, r0
    lsl r5, r2, #3
    sub r5, #8
    mov r8, r5
    mov r9, r2
    ldr r5, [pc, #0x8006b88-0x8006a7e-2] // =unk_2008980
    sub r7, r1, r2
    add r4, r1, #0
    lsl r6, r1, #3
    lsl r3, r7, #0x10
    ble loc_8006AA6
    cmp r7, #0xa0
    bmi loc_8006A9C
    ldr r0, [pc, #0x8006b88-0x8006a8e-2] // =unk_2008980
    mov r2, #0xa0
    lsl r1, r2, #3
    bl sub_8006B94
    add sp, sp, #8
    pop {r5,r7,pc}
loc_8006A9C:
    ldr r0, [pc, #0x8006b88-0x8006a9c-4] // =unk_2008980
    add r2, r7, #0
    lsl r1, r2, #3
    bl sub_8006B94
loc_8006AA6:
    ldr r2, [sp,#4]
    mov r1, r9
    mov r0, r9
    mul r1, r0
    add r0, r2, #0
    mul r2, r0
    sub r0, r2, r1
    svc 8
    lsl r1, r7, #3
    mov r2, r12
    add r4, r0, r2
    lsl r4, r4, #0x10
    bmi loc_8006AD8
    lsr r4, r4, #0x10
    cmp r4, #0xf0
    bmi loc_8006AC8
    mov r4, #0xf0
loc_8006AC8:
    sub r3, r2, r0
    lsl r3, r3, #0x10
    bpl loc_8006AD2
    mov r3, #0
    b loc_8006ADC
loc_8006AD2:
    lsr r3, r3, #0x10
    cmp r3, #0xf0
    bmi loc_8006ADC
loc_8006AD8:
    mov r4, #0
    mov r3, #0xff
loc_8006ADC:
    lsl r0, r3, #8
    orr r0, r4
    lsl r1, r1, #0x10
    bmi loc_8006AF0
    lsr r1, r1, #0x10
    mov r3, #0xa0
    lsl r3, r3, #3
    cmp r1, r3
    bpl loc_8006AF0
    strh r0, [r5,r1]
loc_8006AF0:
    add r1, r6, #0
    mov r2, r8
    add r1, r1, r2
    lsl r1, r1, #0x10
    bmi loc_8006B06
    lsr r1, r1, #0x10
    mov r3, #0xa0
    lsl r3, r3, #3
    cmp r1, r3
    bpl loc_8006B06
    strh r0, [r5,r1]
loc_8006B06:
    sub r2, #8
    mov r8, r2
    mov r0, r9
    sub r0, #1
    mov r9, r0
    add r7, #1
    ldr r4, [sp]
    cmp r7, r4
    blt loc_8006AA6
    ldr r2, [sp,#4]
    add r7, r7, r2
    lsl r7, r7, #0x10
    lsr r7, r7, #0x10
    cmp r7, #0xa0
    bpl loc_8006B36
    lsl r3, r7, #3
    ldr r0, [pc, #0x8006b88-0x8006b26-2] // =unk_2008980
    add r0, r0, r3
    mov r1, #0xa0
    sub r1, r1, r7
    lsl r1, r1, #3
    mov r2, #0xa0
    bl sub_8006B94
loc_8006B36:
    add sp, sp, #8
    pop {r5,r7,pc}
// end of function sub_8006A6C

.thumb
sub_8006B3A:
    push {lr}
    mov r12, r0
    sub r4, r1, r2
    mov r3, #0
    mvn r3, r3
    eor r4, r3
    bmi loc_8006B82
    sub r1, r2, r4
    add r4, r1, #0
    mul r1, r4
    add r0, r2, #0
    mul r0, r2
    sub r0, r0, r1
    svc 8
    mov r2, r12
    add r4, r0, r2
    lsl r4, r4, #0x10
    bmi loc_8006B78
    bcs loc_8006B78
    lsr r4, r4, #0x10
    cmp r4, #0xf0
    bmi loc_8006B68
    mov r4, #0xf0
loc_8006B68:
    sub r3, r2, r0
    lsl r3, r3, #0x10
    bpl loc_8006B72
    mov r3, #0
    b loc_8006B7C
loc_8006B72:
    lsr r3, r3, #0x10
    cmp r3, #0xf0
    bmi loc_8006B7C
loc_8006B78:
    mov r4, #0
    mov r3, #0xff
loc_8006B7C:
    lsl r0, r3, #8
    orr r0, r4
    pop {pc}
loc_8006B82:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_8006B88:    .word unk_2008980
off_8006B8C:    .word unk_20096A0
    .word byte_20081B0
// end of function sub_8006B3A

.thumb
sub_8006B94:
    push {r5,lr}
    add r3, r2, #1
    lsl r2, r2, #8
    orr r2, r3
    ldr r3, [pc, #0x8006bb4-0x8006b9c-4] // =0xFFFF0000
    orr r2, r3
    ldr r3, [pc, #0x8006bb8-0x8006ba0-4] // =0xFFFFFF00
    ldr r5, [pc, #0x8006bbc-0x8006ba2-2] // =0x101
    sub r1, #4
loc_8006BA6:
    str r2, [r0,r1]
    sub r1, #4
    str r3, [r0,r1]
    sub r2, r2, r5
    sub r1, #4
    bpl loc_8006BA6
    pop {r5,pc}
dword_8006BB4:    .word 0xFFFF0000
dword_8006BB8:    .word 0xFFFFFF00
off_8006BBC:    .word 0x101
// end of function sub_8006B94

.thumb
CpuSet_toolKit:
    push {lr}
    ldr r0, [pc, #0x8006bd8-0x8006bc2-2] // =off_8006BDC
    ldr r1, [pc, #0x8006bd4-0x8006bc4-4] // =unk_20093B0
    mov r2, #0x3c 
    bl sub_800093C
    ldr r0, [pc, #0x8006bd4-0x8006bcc-4] // =unk_20093B0
    mov r10, r0
    pop {r0}
    bx r0
off_8006BD4:    .word unk_20093B0
off_8006BD8:    .word off_8006BDC
off_8006BDC:    .word unk_200A480
    .word unk_200A270
    .word unk_200AC40
    .word unk_2009980
    .word unk_2011C50
    .word unk_2011BB0
    .word unk_2034880
    .word unk_200F3A0
    .word unk_2009740
    .word word_200A210
    .word unk_30025C0
    .word unk_2009CD0
    .word unk_20384F0
    .word byte_2009A30
    .word byte_200A220
// end of function CpuSet_toolKit

.thumb
sub_8006C18:
    push {lr}
    bl CpuSet_toolKit
    pop {r0}
    bx r0
// end of function sub_8006C18

.thumb
sub_8006C22:
    push {lr}
    push {r4-r7}
    bl sub_800151C
    mov r1, #0
    and r0, r1
    add r4, r0, #0
    ldr r5, [pc, #0x8006c98-0x8006c30-4] // =dword_2001060
    ldr r3, [r5]
    mov r0, #0
    and r3, r0
    str r4, [r5]
    ldr r0, [pc, #0x8006c94-0x8006c3a-2] // =unk_2001B80
    add r0, r0, r3
    ldr r1, [pc, #0x8006c94-0x8006c3e-2] // =unk_2001B80
    add r1, r1, r4
    ldr r2, [pc, #0x8006c9c-0x8006c42-2] // =0x35BC
    ldr r3, [pc, #0x8006ca0-0x8006c44-4] // =sub_80014EC+1
    mov lr, pc
    bx r3
    mov r0, r10
    mov r1, #0x3c 
    add r0, r0, r1
    mov r1, #0
    ldr r2, [pc, #0x8006c94-0x8006c52-2] // =unk_2001B80
    ldr r3, [r5]
    add r2, r2, r3
    ldr r3, [pc, #0x8006ca8-0x8006c58-4] // =dword_8006CAC
loc_8006C5A:
    ldr r4, [r3,r1]
    add r4, r4, r2
    str r4, [r0,r1]
    add r1, #4
    cmp r1, #0x58 
    blt loc_8006C5A
    pop {r4-r7}
    pop {r0}
    bx r0
// end of function sub_8006C22

.thumb
sub_8006C6C:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8006c98-0x8006c6e-2] // =dword_2001060
    mov r0, r10
    mov r1, #0x3c 
    add r0, r0, r1
    mov r1, #0
    ldr r2, [pc, #0x8006c94-0x8006c78-4] // =unk_2001B80
    ldr r3, [r5]
    mov r4, #0
    and r3, r4
    add r2, r2, r3
    ldr r3, [pc, #0x8006ca8-0x8006c82-2] // =dword_8006CAC
loc_8006C84:
    ldr r4, [r3,r1]
    add r4, r4, r2
    str r4, [r0,r1]
    add r1, #4
    cmp r1, #0x58 
    blt loc_8006C84
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8006C94:    .word unk_2001B80
off_8006C98:    .word dword_2001060
dword_8006C9C:    .word 0x35BC
off_8006CA0:    .word sub_80014EC+1
    .word unk_20093B0
off_8006CA8:    .word dword_8006CAC
dword_8006CAC:    .word 0x0
    .word 0x84
    .word 0x108
    .word 0x5F8
    .word 0x6B0
    .word 0x15B4
    .word 0x1748
    .word 0x25CC
    .word 0x2610
    .word 0x279C
    .word 0x27B0
    .word 0x27B4
    .word 0x27B8
    .word 0x27C8
    .word 0x2C4C
    .word 0x2F0C
    .word 0x30A0
    .word 0x32A4
    .word 0x34A8
    .word 0x34B0
    .word 0x34B8
// end of function sub_8006C6C

.thumb
sub_8006D00:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8006e38-0x8006d02-2] // =dword_2001060
    ldr r4, [r5]
    add r0, r5, #0  // memBlock
    mov r1, #0x80  // numWords
    bl CpuSet_ZeroFillWord
    mov r0, #0
    and r4, r0
    str r4, [r5]
    bl sub_800151C
    str r0, [r5,#0x4] // (dword_2001064 - 0x2001060)
    mov r6, r10
    mov r0, #0x78 
    ldr r6, [r6,r0]
    ldr r4, [pc, #0x8006dc4-0x8006d20-4] // =unk_20004E0
    ldr r7, [pc, #0x8006dc8-0x8006d22-2] // =0x200
loc_8006D24:
    sub r7, #1
    blt loc_8006D40
loc_8006D28:
    bl sub_800151C
    mov r1, #0xff
    and r0, r1
    mov r1, #0x6f 
    eor r0, r1
    tst r0, r0
    beq loc_8006D28
    strb r0, [r4,r7]
    mvn r0, r0
    strb r0, [r6,r7]
    b loc_8006D24
loc_8006D40:
    mov r6, r10
    mov r0, #0x7c 
    ldr r6, [r6,r0]
    ldr r4, [pc, #0x8006dcc-0x8006d46-2] // =unk_20008A0
    ldr r7, [pc, #0x8006dd0-0x8006d48-4] // =0x200
loc_8006D4A:
    sub r7, #1
    blt loc_8006D66
loc_8006D4E:
    bl sub_800151C
    mov r1, #0xff
    and r0, r1
    mov r1, #0x81
    eor r0, r1
    tst r0, r0
    beq loc_8006D4E
    strb r0, [r4,r7]
    mvn r0, r0
    strb r0, [r6,r7]
    b loc_8006D4A
loc_8006D66:
    mov r6, r10
    mov r0, #0x80
    ldr r6, [r6,r0]
    ldr r4, [pc, #0x8006dd4-0x8006d6c-4] // =unk_2001600
    ldr r7, [pc, #0x8006dd8-0x8006d6e-2] // =0x4
loc_8006D70:
    sub r7, #1
    blt loc_8006D8C
loc_8006D74:
    bl sub_800151C
    mov r1, #0xff
    and r0, r1
    mov r1, #0xfe
    eor r0, r1
    tst r0, r0
    beq loc_8006D74
    strb r0, [r4,r7]
    mvn r0, r0
    strb r0, [r6,r7]
    b loc_8006D70
loc_8006D8C:
    ldr r4, [pc, #0x8006ddc-0x8006d8c-4] // =dword_2000060
    ldr r6, [pc, #0x8006de0-0x8006d8e-2] // =dword_802412C
loc_8006D90:
    bl sub_800151C
    lsl r0, r0, #0xc
    lsr r0, r0, #0xc
    eor r0, r6
    tst r0, r0
    beq loc_8006D90
    str r0, [r4]
    bl sub_8006F54
    ldr r4, [pc, #0x8006de4-0x8006da4-4] // =dword_20018B8
    ldr r6, [pc, #0x8006de8-0x8006da6-2] // =loc_803ED90
loc_8006DA8:
    bl sub_800151C
    lsl r0, r0, #0xc
    lsr r0, r0, #0xc
    eor r0, r6
    tst r0, r0
    beq loc_8006DA8
    str r0, [r4]
    bl sub_8006FAC
    bl sub_8007036
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8006DC4:    .word unk_20004E0
off_8006DC8:    .word 0x200
off_8006DCC:    .word unk_20008A0
off_8006DD0:    .word 0x200
off_8006DD4:    .word unk_2001600
dword_8006DD8:    .word 0x4
off_8006DDC:    .word dword_2000060
off_8006DE0:    .word dword_802412C
off_8006DE4:    .word dword_20018B8
off_8006DE8:    .word loc_803ED90
// end of function sub_8006D00

.thumb
sub_8006DEC:
    push {r4-r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldr r0, [r4,#0x74]
    pop {r4-r7,pc}
// end of function sub_8006DEC

.thumb
sub_8006DF6:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8006e38-0x8006df8-4] // =dword_2001060
    ldr r7, [r7,#0x4] // (dword_2001064 - 0x2001060)
    sub r1, #1
loc_8006DFE:
    ldrb r3, [r0,r1]
    eor r3, r7
    strb r3, [r0,r1]
    sub r1, #1
    bge loc_8006DFE
    ldr r0, [pc, #0x8006e38-0x8006e08-4] // =dword_2001060
    str r7, [r0,#0x4] // (dword_2001064 - 0x2001060)
    pop {r4-r7,pc}
// end of function sub_8006DF6

.thumb
save_8006E0E:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8006e38-0x8006e10-4] // =dword_2001060
    ldr r7, [r7,#0x4] // (dword_2001064 - 0x2001060)
    sub r1, #1
loc_8006E16:
    ldrb r3, [r0,r1]
    eor r3, r7
    strb r3, [r0,r1]
    sub r1, #1
    bge loc_8006E16
    ldr r0, [pc, #0x8006e38-0x8006e20-4] // =dword_2001060
    str r7, [r0,#0x4] // (dword_2001064 - 0x2001060)
    pop {r4-r7,pc}
// end of function save_8006E0E

.thumb
save_8006E26:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8006e38-0x8006e28-4] // =dword_2001060
loc_8006E2A:
    bl sub_800151C
    mvn r0, r0
    tst r0, r0
    beq loc_8006E2A
    str r0, [r7,#0x4] // (dword_2001064 - 0x2001060)
    pop {r4-r7,pc}
off_8006E38:    .word dword_2001060
// end of function save_8006E26

.thumb
load_8006E3C:
    push {r1-r7,lr}
    ldr r5, [pc, #0x8006e6c-0x8006e3e-2] // =unk_20004E0
    mov r7, r10
    mov r1, #0x78 
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x6f 
    eor r1, r2
    strb r1, [r7,r0]
    pop {r1-r7,pc}
// end of function load_8006E3C

.thumb
sub_8006E50:
    push {r1-r7,lr}
    ldr r5, [pc, #0x8006e6c-0x8006e52-2] // =unk_20004E0
    mov r7, r10
    mov r1, #0x78 
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x6f 
    eor r1, r2
    ldrb r2, [r7,r0]
    cmp r1, r2
    beq locret_8006E68
    mov r0, #1
locret_8006E68:
    pop {r1-r7,pc}
    .balign 4, 0x00
off_8006E6C:    .word unk_20004E0
// end of function sub_8006E50

.thumb
sub_8006E70:
    push {r1-r7,lr}
    ldr r5, [pc, #0x8006ea0-0x8006e72-2] // =unk_20008A0
    mov r7, r10
    mov r1, #0x7c 
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x81
    eor r1, r2
    strb r1, [r7,r0]
    pop {r1-r7,pc}
// end of function sub_8006E70

.thumb
sub_8006E84:
    push {r1-r7,lr}
    ldr r5, [pc, #0x8006ea0-0x8006e86-2] // =unk_20008A0
    mov r7, r10
    mov r1, #0x7c 
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x81
    eor r1, r2
    ldrb r2, [r7,r0]
    cmp r1, r2
    beq locret_8006E9C
    mov r0, #1
locret_8006E9C:
    pop {r1-r7,pc}
    .byte 0, 0
off_8006EA0:    .word unk_20008A0
// end of function sub_8006E84

.thumb
sub_8006EA4:
    push {r1-r7,lr}
    add r7, r0, #0
    add r4, r1, #0
    bl sub_8006E84
    bne loc_8006EE4
    cmp r4, #0xff
    beq loc_8006EE0
    add r0, r7, #0
    bl sub_8021AA4
    ldrb r3, [r0]
    cmp r3, r4
    beq loc_8006ED2
    ldrb r3, [r0,#1]
    cmp r3, r4
    beq loc_8006ED2
    ldrb r3, [r0,#2]
    cmp r3, r4
    beq loc_8006ED2
    ldrb r3, [r0,#3]
    cmp r3, r4
    bne loc_8006EE4
loc_8006ED2:
    add r0, r7, #0
    add r1, r4, #0
    bl sub_8021C7C
    ldrb r0, [r0]
    tst r0, r0
    beq loc_8006EE4
loc_8006EE0:
    mov r0, #0
    pop {r1-r7,pc}
loc_8006EE4:
    mov r0, #1
    pop {r1-r7,pc}
// end of function sub_8006EA4

.thumb
sub_8006EE8:
    push {r1-r7,lr}
    add r7, r0, #0
    add r4, r1, #0
    bl sub_8006E84
    bne loc_8006F1A
    cmp r4, #0xff
    beq loc_8006F16
    add r0, r7, #0
    bl sub_8021AA4
    ldrb r3, [r0]
    cmp r3, r4
    beq loc_8006F16
    ldrb r3, [r0,#1]
    cmp r3, r4
    beq loc_8006F16
    ldrb r3, [r0,#2]
    cmp r3, r4
    beq loc_8006F16
    ldrb r3, [r0,#3]
    cmp r3, r4
    bne loc_8006F1A
loc_8006F16:
    mov r0, #0
    pop {r1-r7,pc}
loc_8006F1A:
    mov r0, #1
    pop {r1-r7,pc}
// end of function sub_8006EE8

.thumb
sub_8006F1E:
    push {r1-r7,lr}
    add r7, r0, #0
    add r4, r1, #0
    bl sub_80070E6
    bne loc_8006F50
    cmp r4, #0xff
    beq loc_8006F4C
    add r0, r7, #0
    bl sub_8021AA4
    ldrb r3, [r0]
    cmp r3, r4
    beq loc_8006F4C
    ldrb r3, [r0,#1]
    cmp r3, r4
    beq loc_8006F4C
    ldrb r3, [r0,#2]
    cmp r3, r4
    beq loc_8006F4C
    ldrb r3, [r0,#3]
    cmp r3, r4
    bne loc_8006F50
loc_8006F4C:
    mov r0, #0
    pop {r1-r7,pc}
loc_8006F50:
    mov r0, #1
    pop {r1-r7,pc}
// end of function sub_8006F1E

.thumb
sub_8006F54:
    push {r0-r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldr r0, [r4,#0x5c]
    ldr r1, [r4,#0x74]
    mov r2, #1
    tst r1, r2
    bne loc_8006F68
    mvn r1, r0
    str r1, [r4,#0x6c]
loc_8006F68:
    ldr r1, [pc, #0x8006fa8-0x8006f68-4] // =dword_2000060
    ldr r1, [r1]
    eor r0, r1
    mov r1, r10
    mov r2, #0x84
    ldr r1, [r1,r2]
    str r0, [r1]
    pop {r0-r7,pc}
// end of function sub_8006F54

.thumb
sub_8006F78:
    push {r0-r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldr r0, [r4,#0x5c]
    ldr r1, [r4,#0x6c]
    mvn r1, r1
    cmp r0, r1
    beq loc_8006F90
    ldr r1, [r4,#0x74]
    mov r2, #1
    orr r1, r2
    str r1, [r4,#0x74]
loc_8006F90:
    ldr r1, [pc, #0x8006fa8-0x8006f90-4] // =dword_2000060
    ldr r1, [r1]
    eor r0, r1
    mov r1, r10
    mov r2, #0x84
    ldr r1, [r1,r2]
    ldr r1, [r1]
    cmp r0, r1
    beq locret_8006FA4
    mov r0, #1
locret_8006FA4:
    pop {r0-r7,pc}
    .balign 4, 0x00
off_8006FA8:    .word dword_2000060
// end of function sub_8006F78

.thumb
sub_8006FAC:
    push {r0-r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldr r0, [r4,#0x60]
    ldr r1, [r4,#0x74]
    mov r2, #2
    tst r1, r2
    bne loc_8006FC0
    mvn r1, r0
    str r1, [r4,#0x70]
loc_8006FC0:
    ldr r1, [pc, #0x8007000-0x8006fc0-4] // =dword_20018B8
    ldr r1, [r1]
    eor r0, r1
    mov r1, r10
    mov r2, #0x88
    ldr r1, [r1,r2]
    str r0, [r1]
    pop {r0-r7,pc}
// end of function sub_8006FAC

.thumb
sub_8006FD0:
    push {r0-r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldr r0, [r4,#0x60]
    ldr r1, [r4,#0x70]
    mvn r1, r1
    cmp r0, r1
    beq loc_8006FE8
    ldr r1, [r4,#0x74]
    mov r2, #2
    orr r1, r2
    str r1, [r4,#0x74]
loc_8006FE8:
    ldr r1, [pc, #0x8007000-0x8006fe8-4] // =dword_20018B8
    ldr r1, [r1]
    eor r0, r1
    mov r1, r10
    mov r2, #0x88
    ldr r1, [r1,r2]
    ldr r1, [r1]
    cmp r0, r1
    beq locret_8006FFC
    mov r0, #1
locret_8006FFC:
    pop {r0-r7,pc}
    .byte 0, 0
off_8007000:    .word dword_20018B8
// end of function sub_8006FD0

    push {r1-r7,lr}
    bl sub_800708C
    ldr r5, [pc, #0x8007088-0x800700a-2] // =unk_2000670
    mov r7, r10
    mov r1, #0x8c
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x8d
    eor r1, r2
    strb r1, [r7,r0]
    pop {r1-r7,pc}
    push {r1-r7,lr}
    bl sub_800708C
    ldr r5, [pc, #0x8007088-0x8007022-2] // =unk_2000670
    mov r7, r10
    mov r1, #0x8c
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x8d
    eor r1, r2
    mvn r1, r1
    strb r1, [r7,r0]
    pop {r1-r7,pc}
.thumb
sub_8007036:
    push {r1-r7,lr}
    mov r6, r10
    mov r0, #0x8c
    ldr r6, [r6,r0]
    ldr r4, [pc, #0x8007060-0x800703e-2] // =unk_2000670
    ldr r7, [pc, #0x8007064-0x8007040-4] // =0x100
loc_8007042:
    sub r7, #1
    blt locret_800705E
loc_8007046:
    bl sub_800151C
    mov r1, #0xff
    and r0, r1
    mov r1, #0x8d
    eor r0, r1
    tst r0, r0
    beq loc_8007046
    strb r0, [r4,r7]
    mvn r0, r0
    strb r0, [r6,r7]
    b loc_8007042
locret_800705E:
    pop {r1-r7,pc}
off_8007060:    .word unk_2000670
off_8007064:    .word 0x100
// end of function sub_8007036

    push {r1-r7,lr}
    bl sub_800708C
    ldr r5, [pc, #0x8007088-0x800706e-2] // =unk_2000670
    mov r7, r10
    mov r1, #0x8c
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0x8d
    eor r1, r2
    ldrb r2, [r7,r0]
    cmp r1, r2
    beq locret_8007084
    mov r0, #1
locret_8007084:
    pop {r1-r7,pc}
    .balign 4, 0x00
off_8007088:    .word unk_2000670
.thumb
sub_800708C:
    push {r1-r7,lr}
    ldr r7, [pc, #0x80070a8-0x800708e-2] // =word_80070AC
    mov r4, #0
loc_8007092:
    ldrh r3, [r7]
    cmp r3, r0
    beq loc_80070A2
    add r7, #4
    add r4, #1
    cmp r4, #4
    blt loc_8007092
loc_80070A0:
    b loc_80070A0
loc_80070A2:
    ldrh r3, [r7,#2]
    add r0, r3, r1
    pop {r1-r7,pc}
off_80070A8:    .word word_80070AC
word_80070AC:    .hword 0x1000
word_80070AE:    .hword 0x0
    .byte 0x10
    .byte 0x10
    .byte 0x50 
    .byte 0
    .byte 0x20
    .byte 0x10
    .byte 0xDC
    .byte 0
    .byte 0x40 
    .byte 0x10
    .byte 0xE6
    .byte 0
// end of function sub_800708C

.thumb
sub_80070BC:
    push {r1-r7,lr}
    ldr r5, [pc, #0x8007170-0x80070be-2] // =unk_2001600
    ldr r4, [pc, #0x8007174-0x80070c0-4] // =0x2020
    ldr r6, [pc, #0x8007178-0x80070c2-2] // =0x200
    mov r7, #0
loc_80070C6:
    add r0, r4, #0
    bl sub_802F168
    beq loc_80070DC
    mov r0, r10
    mov r1, #0x80
    ldr r0, [r0,r1]
    ldrb r1, [r5,r7]
    mov r2, #0xfe
    eor r1, r2
    strb r1, [r0,r7]
loc_80070DC:
    add r4, #1
    add r7, #1
    cmp r7, r6
    blt loc_80070C6
    pop {r1-r7,pc}
// end of function sub_80070BC

.thumb
sub_80070E6:
    push {r1-r7,lr}
    push {r0}
    bl sub_8006E84
    pop {r0}
    beq locret_8007108
    ldr r5, [pc, #0x8007170-0x80070f2-2] // =unk_2001600
    mov r7, r10
    mov r1, #0x80
    ldr r7, [r7,r1]
    ldrb r1, [r5,r0]
    mov r2, #0xfe
    eor r1, r2
    ldrb r2, [r7,r0]
    cmp r1, r2
    beq locret_8007108
    mov r0, #1
locret_8007108:
    pop {r1-r7,pc}
// end of function sub_80070E6

.thumb
sub_800710A:
    push {r1-r7,lr}
    ldr r4, [pc, #0x8007174-0x800710c-4] // =0x2020
    ldr r6, [pc, #0x8007178-0x800710e-2] // =0x200
    mov r7, #0
loc_8007112:
    add r0, r4, #0
    bl sub_802F168
    beq loc_8007122
    add r0, r7, #0
    bl sub_80070E6
    bne loc_800716A
loc_8007122:
    add r4, #1
    add r7, #1
    cmp r7, r6
    blt loc_8007112
    ldr r4, [pc, #0x800717c-0x800712a-2] // =0x2220
    ldr r6, [pc, #0x8007180-0x800712c-4] // =0x200
    mov r7, #0
loc_8007130:
    add r0, r4, #0
    bl sub_802F168
    beq loc_8007140
    add r0, r7, #0
    bl sub_80070E6
    bne loc_800716A
loc_8007140:
    add r4, #1
    add r7, #1
    cmp r7, r6
    blt loc_8007130
    ldr r4, [pc, #0x8007184-0x8007148-4] // =0x1E20
    ldr r6, [pc, #0x8007188-0x800714a-2] // =0x200
    mov r7, #0
loc_800714E:
    add r0, r4, #0
    bl sub_802F168
    beq loc_800715E
    add r0, r7, #0
    bl sub_8006E84
    bne loc_800716A
loc_800715E:
    add r4, #1
    add r7, #1
    cmp r7, r6
    blt loc_800714E
    mov r0, #0
    pop {r1-r7,pc}
loc_800716A:
    mov r0, #1
    pop {r1-r7,pc}
    .byte 0, 0
off_8007170:    .word unk_2001600
off_8007174:    .word 0x2020
off_8007178:    .word 0x200
off_800717C:    .word 0x2220
off_8007180:    .word 0x200
off_8007184:    .word 0x1E20
off_8007188:    .word 0x200
// end of function sub_800710A

    ldr r1, [pc, #0x80071bc-0x800718c-4] // =dword_20093A4
    ldr r1, [r1]
    tst r0, r1
    mov pc, lr
    ldr r0, [pc, #0x80071c0-0x8007194-4] // =dword_20093A4
    ldr r0, [r0]
    mov pc, lr
.thumb
sub_800719A:
    ldr r1, [pc, #0x80071c4-0x800719a-2] // =dword_20093A4
    ldr r2, [r1]
    orr r2, r0
    str r2, [r1]
    mov pc, lr
// end of function sub_800719A

.thumb
sub_80071A4:
    ldr r1, [pc, #0x80071c8-0x80071a4-4] // =dword_20093A4
    ldr r2, [r1]
    bic r2, r0
    str r2, [r1]
    mov pc, lr
// end of function sub_80071A4

    ldr r1, [pc, #0x80071cc-0x80071ae-2] // =dword_20093A4
    str r0, [r1]
    mov pc, lr
.thumb
sub_80071B4:
    ldr r1, [pc, #0x80071d0-0x80071b4-4] // =dword_20093A4
    mov r0, #0
    str r0, [r1]
    mov pc, lr
off_80071BC:    .word dword_20093A4
off_80071C0:    .word dword_20093A4
off_80071C4:    .word dword_20093A4
off_80071C8:    .word dword_20093A4
off_80071CC:    .word dword_20093A4
off_80071D0:    .word dword_20093A4
// end of function sub_80071B4

.thumb
sub_80071D4:
    push {r4,r5,r7,lr}
    mov r7, #0
    push {r0}
    ldr r0, [pc, #0x8007320-0x80071da-2] // =dword_2033000  // memBlock
    ldr r1, [pc, #0x8007324-0x80071dc-4] // =0x6AA0  // numWords
    bl CpuSet_ZeroFillWord
    ldr r0, [pc, #0x8007328-0x80071e2-2] // =unk_2039ADC  // memBlock
    ldr r1, [pc, #0x800732c-0x80071e4-4] // =unk_203CCE0
    sub r1, r1, r0  // numWords
    bl CpuSet_ZeroFillWord
    ldr r0, [pc, #0x8007330-0x80071ec-4] // =unk_203CDA8  // memBlock
    ldr r1, [pc, #0x8007334-0x80071ee-2] // =0x2040000
    sub r1, r1, r0  // numWords
    bl CpuSet_ZeroFillWord
    bl sub_8006C18
    pop {r0}
    b loc_8007208
loc_80071FE:
    push {r4,r5,r7,lr}
    mov r7, #1
    b loc_8007208
loc_8007204:
    push {r4,r5,r7,lr}
    mov r7, #0
loc_8007208:
    add r4, r0, #0
    mov r5, r10
    ldr r5, [r5,#0x18]
    add r0, r5, #0  // memBlock
    mov r1, #0xf0  // numWords
    bl CpuSet_ZeroFillWord
    str r4, [r5,#0x3c]
    mov r0, #1
    strb r0, [r5,#0xa]
    bl sub_8005F40
// end of function sub_80071D4

    bl sub_8005F78
    bl sub_802D234
    cmp r0, #1
    beq loc_8007232
    bl sub_80027D4
    b loc_8007236
loc_8007232:
    bl sub_80027E4
loc_8007236:
    mov r0, #1
    bl sub_800719A
    bl batle_clearEnemyFadeinList
    mov r0, #1
    strb r0, [r5,#0x1b]
    ldr r0, [pc, #0x8007308-0x8007244-4] // =dword_2036820
    mov r1, #0x10
    bl sub_80008B4
    mov r0, r10
    ldr r0, [r0,#0x28]
    mov r1, #8
    lsl r1, r1, #8
    add r0, r0, r1
    mov r1, #0x18
    lsl r1, r1, #8
    bl sub_8000900
    mov r0, #0
    ldr r1, [pc, #0x800730c-0x8007260-4] // =byte_20099CC
    strb r0, [r1]
    bl sub_800A01C
    bl sub_80075CA
    bl sub_8080D90
    bl sub_8080DA0
    bl sub_8007628
    bl sub_801FE00
    bl sub_8020134
    bl sub_800ED00
    mov r0, #0
    bl sub_8013422
    mov r0, #1
    bl sub_8013422
    bl sub_800BF66
    bl sub_800A2F8
    bl sub_800A954
    bl sub_800AB70
    bl sub_802CE54
    bl sub_800A79C
    bl sub_800A032
    bl sub_800371A
    cmp r7, #2
    beq loc_80072BA
    bl sub_802DFFC
    b loc_80072BE
loc_80072BA:
    bl sub_802E014
loc_80072BE:
    bl sub_8021D08
    ldr r0, [pc, #0x8007310-0x80072c2-2] // =dword_20364C0
    ldr r1, [pc, #0x8007314-0x80072c4-4] // =0x6014000
    str r1, [r0]
    add r1, r0, #0
    add r1, #8
    str r1, [r0,#0x4] // (dword_20364C4 - 0x20364c0)
    mov r0, #0x17
    mov r1, #0x33 
    bl sub_802F12C
    cmp r7, #1
    beq loc_80072E2
    mov r0, #0x17
    mov r1, #0x35 
    bl sub_802F12C
loc_80072E2:
    mov r0, #0
    bl sub_800B6CE
    mov r0, #0
    bl sub_800B6DA
    mov r0, #0
    bl sub_800B6B6
    bl sub_800B75A
    mov r0, #0
    bl sub_802D08C
    mov r0, #1
    bl sub_802D08C
    pop {r4,r5,r7,pc}
    .balign 4, 0x00
off_8007308:    .word dword_2036820
off_800730C:    .word byte_20099CC
off_8007310:    .word dword_20364C0
dword_8007314:    .word 0x6014000
    .word dword_2033000
    .word 0xD000
off_8007320:    .word dword_2033000
dword_8007324:    .word 0x6AA0
off_8007328:    .word unk_2039ADC
off_800732C:    .word unk_203CCE0
off_8007330:    .word unk_203CDA8
dword_8007334:    .word 0x2040000
.thumb
sub_8007338:
    push {lr}
    bl sub_80303E8
    mov r0, #0
    mov r1, #0
    mov r2, #0
    mov r3, #0xf0
    mov r4, #0
    bl sub_802FF4C
    mov r0, #0
    bl sub_80301B2
    pop {pc}
    .byte 0
    .byte 0
    .byte 0x10
    .byte 0
// end of function sub_8007338

.thumb
sub_8007358:
    push {lr}
    ldr r0, [r5,#0x3c]
    ldr r0, [r0,#0xc]
    bl sub_8007368
    bl sub_80AA88C
    pop {pc}
// end of function sub_8007358

.thumb
sub_8007368:
    push {r6,lr}
    add r6, r0, #0
loc_800736C:
    ldrb r0, [r6]
    mov r1, #0xf0
    and r0, r1
    cmp r0, #0xf0
    beq loc_8007384
    lsr r0, r0, #2
    ldr r1, [pc, #0x800739c-0x8007378-4] // =unk_80073A0
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    add r6, #4
    b loc_800736C
loc_8007384:
    ldrh r0, [r5,#4]
    strh r0, [r5,#0x12]
    mov r2, r10
    ldr r2, [r2,#0x18]
    mov r0, #0x80
    add r0, r0, r2
    mov r1, #0xd0
    add r1, r1, r2
    mov r2, #0x20 
    bl sub_800093C
    pop {r6,pc}
off_800739C:    .word unk_80073A0
unk_80073A0:    .byte 0xCD
    .byte 0x73 
    .byte 0
    .byte 8
    .byte 0xE3
    .byte 0x73 
    .byte 0
    .byte 8
    .byte 0x25 
    .byte 0x74 
    .byte 0
    .byte 8
    .byte 0x51 
    .byte 0x74 
    .byte 0
    .byte 8
    .byte 0xC5
    .byte 0x74 
    .byte 0
    .byte 8
    .byte 0xC7
    .byte 0x74 
    .byte 0
    .byte 8
    .byte 0xC9
    .byte 0x74 
    .byte 0
    .byte 8
    .byte 0xDF
    .byte 0x74 
    .byte 0
    .byte 8
    .byte 0xFB
    .byte 0x74 
    .byte 0
    .byte 8
    .byte 0x1D
    .byte 0x75 
    .byte 0
    .byte 8
    .byte 0x8B
    .byte 0x74 
    .byte 0
    .byte 8
    .byte 0
    .byte 0xB5
    .byte 0x70 
    .byte 0x78 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 0x32 
    .byte 0x78 
    .byte 1
    .byte 0x23 
    .byte 0x1A
    .byte 0x40 
    .byte 0
    .byte 0xF0
    .byte 0xAE
    .byte 0xF8
    .byte 0
    .byte 0xBD
    .byte 0x20
    .byte 0xB5
    .byte 0x70 
    .byte 0x78 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 0xA
    .byte 0x1C
    .byte 1
    .byte 0x1C
    .byte 0xB0
    .byte 0x78 
    .byte 0xF3
    .byte 0x78 
    .byte 0x1B
    .byte 7
    .byte 0x1B
    .byte 0xD
    .byte 0xC0
    .byte 0x18
    .byte 0x33 
    .byte 0x78 
    .byte 0xDB
    .byte 7
    .byte 0xDB
    .byte 0xF
    .byte 0
    .byte 0x25 
    .byte 0xE
    .byte 0xB4
    .byte 1
    .byte 0xB4
    .byte 0x25 
    .byte 0xF0
    .byte 0x1E
    .byte 0xFF
    .byte 5
    .byte 0x49 
    .byte 8
    .byte 0x42 
    .byte 1
    .byte 0xBC
    .byte 1
    .byte 0xD1
    .byte 7
    .byte 0xF0
    .byte 0x35 
    .byte 0xFC
    .byte 0xE
    .byte 0xBC
    .byte 0
    .byte 0xF0
    .byte 0x38 
    .byte 0xF9
    .byte 0x20
    .byte 0xBD
    .byte 0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0
    .byte 0x10
    .byte 0xB5
    .byte 0xFA
    .byte 0xF7
    .byte 0x84
    .byte 0xF8
    .byte 0xF
    .byte 0x21 
    .byte 6
    .byte 0xDF
    .byte 0xB0
    .byte 0x78 
    .byte 0xF
    .byte 0x22 
    .byte 2
    .byte 0x40 
    .byte 0x88
    .byte 0x42 
    .byte 0xA
    .byte 0xDD
    .byte 0
    .byte 9
    .byte 0xD3
    .byte 0xF0
    .byte 0xE0
    .byte 0xFA
    .byte 4
    .byte 0x1C
    .byte 0x70 
    .byte 0x78 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 0
    .byte 0x22 
    .byte 0xD3
    .byte 0xF0
    .byte 0xC7
    .byte 0xFA
    .byte 0x10
    .byte 0xBD
    .byte 0xD0
    .byte 0xB5
    .byte 0xB8
    .byte 0x27 
    .byte 0x7F 
    .byte 0x19
    .byte 0x38 
    .byte 0x68 
    .byte 0
    .byte 0x42 
    .byte 3
    .byte 0xD0
    .byte 4
    .byte 0x37 
    .byte 0x38 
    .byte 0x68 
    .byte 0
    .byte 0x42 
    .byte 0x11
    .byte 0xD1
    .byte 0x70 
    .byte 0x78 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 5
    .byte 0xF0
    .byte 0x44 
    .byte 0xFA
    .byte 0x20
    .byte 0x21 
    .byte 8
    .byte 0x40 
    .byte 0x44 
    .byte 9
    .byte 0x70 
    .byte 0x78 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 0
    .byte 0x22 
    .byte 0xC8
    .byte 0x26 
    .byte 0xCA
    .byte 0xF0
    .byte 0xD5
    .byte 0xFF
    .byte 0x38 
    .byte 0x60 
    .byte 0xD0
    .byte 0xBD
    .byte 0xD0
    .byte 0xB5
    .byte 0xB8
    .byte 0x27 
    .byte 0x7F 
    .byte 0x19
    .byte 0x38 
    .byte 0x68 
    .byte 0
    .byte 0x42 
    .byte 3
    .byte 0xD0
    .byte 4
    .byte 0x37 
    .byte 0x38 
    .byte 0x68 
    .byte 0
    .byte 0x42 
    .byte 0x11
    .byte 0xD1
    .byte 0x70 
    .byte 0x78 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 5
    .byte 0xF0
    .byte 0x27 
    .byte 0xFA
    .byte 0x20
    .byte 0x21 
    .byte 8
    .byte 0x40 
    .byte 0x44 
    .byte 9
    .byte 0x70 
    .byte 0x78 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 0
    .byte 0x22 
    .byte 0x64 
    .byte 0x26 
    .byte 0xD1
    .byte 0xF0
    .byte 0x98
    .byte 0xF8
    .byte 0x38 
    .byte 0x60 
    .byte 0xD0
    .byte 0xBD
    .byte 0xF7
    .byte 0x46 
    .byte 0xF7
    .byte 0x46 
    .byte 0x10
    .byte 0xB5
    .byte 1
    .byte 0x24 
    .byte 0x24 
    .byte 2
    .byte 0xB0
    .byte 0x78 
    .byte 0x24 
    .byte 0x18
    .byte 0x24 
    .byte 2
    .byte 0xF0
    .byte 0x78 
    .byte 0x24 
    .byte 0x18
    .byte 0xDD
    .byte 0xF0
    .byte 0x46 
    .byte 0xFF
    .byte 0x10
    .byte 0xBD
    .byte 0
    .byte 0xB5
    .byte 0x70 
    .byte 0x78 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 0xA
    .byte 0x1C
    .byte 1
    .byte 0x1C
    .byte 0xB3
    .byte 0x78 
    .byte 0xDC
    .byte 9
    .byte 0x5B 
    .byte 6
    .byte 0x9B
    .byte 0xD
    .byte 0xD1
    .byte 0xF0
    .byte 0x31 
    .byte 0xFC
    .byte 0
    .byte 0xBD
    .byte 0x50 
    .byte 0xB5
    .byte 0x70 
    .byte 0x78 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 3
    .byte 0xB4
    .byte 5
    .byte 0xF0
    .byte 0
    .byte 0xFA
    .byte 0xC2
    .byte 0x78 
    .byte 3
    .byte 0xBC
    .byte 0xB3
    .byte 0x78 
    .byte 0xB8
    .byte 0x4C 
    .byte 0xE4
    .byte 0x18
    .byte 0xC8
    .byte 0x26 
    .byte 0xC8
    .byte 0xF0
    .byte 0x55 
    .byte 0xFB
    .byte 0x50 
    .byte 0xBD
    .byte 0x50 
    .byte 0xB5
    .byte 0x70 
    .byte 0x78 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 3
    .byte 0xB4
    .byte 5
    .byte 0xF0
    .byte 0xEF
    .byte 0xF9
    .byte 0xC2
    .byte 0x78 
    .byte 3
    .byte 0xBC
    .byte 0xB3
    .byte 0x78 
    .byte 1
    .byte 0x24 
    .byte 0xB0
    .byte 0x4E 
    .byte 0xCD
    .byte 0xF0
    .byte 0x36 
    .byte 0xFD
    .byte 0x50 
    .byte 0xBD
    .byte 0x30 
    .byte 0xB5
    .byte 7
    .byte 0xB4
    .byte 0
    .byte 0x24 
    .byte 0
    .byte 0x20
    .byte 0xFB
    .byte 0xF7
    .byte 0xEC
    .byte 0xFE
    .byte 7
    .byte 0xBC
    .byte 0x2D 
    .byte 0x42 
    .byte 0x3C 
    .byte 0xD0
    .byte 0xAA
    .byte 0x75 
    .byte 0xA8
    .byte 0x74 
    .byte 0xE9
    .byte 0x74 
    .byte 0x28 
    .byte 0x75 
    .byte 0x69 
    .byte 0x75 
    .byte 6
    .byte 0xF0
    .byte 0x8D
    .byte 0xFE
    .byte 0x68 
    .byte 0x63 
    .byte 0xA9
    .byte 0x63 
    .byte 0
    .byte 0x22 
    .byte 0xEA
    .byte 0x63 
    .byte 0x28 
    .byte 0x78 
    .byte 4
    .byte 0x21 
    .byte 8
    .byte 0x43 
    .byte 0x28 
    .byte 0x70 
    .byte 7
    .byte 0xF0
    .byte 0xDE
    .byte 0xFB
    .byte 4
    .byte 0x1C
    .byte 0
    .byte 0x42 
    .byte 0xA8
    .byte 0x65 
    .byte 2
    .byte 0xD1
    .byte 0xFB
    .byte 0xF7
    .byte 0x6E 
    .byte 0xFF
    .byte 0x30 
    .byte 0xBD
    .byte 2
    .byte 0x21 
    .byte 1
    .byte 0x70 
    .byte 0xA8
    .byte 0x7D 
    .byte 0x29 
    .byte 0x21 
    .byte 0xC
    .byte 0xF0
    .byte 0xA1
    .byte 0xF8
    .byte 0xFF
    .byte 0x30 
    .byte 0xA1
    .byte 0x30 
    .byte 0x28 
    .byte 0x85
    .byte 0
    .byte 0xF0
    .byte 0xF2
    .byte 0xF8
    .byte 0
    .byte 0x42 
    .byte 4
    .byte 0xD1
    .byte 0xA8
    .byte 0x6D 
    .byte 7
    .byte 0xF0
    .byte 0xF1
    .byte 0xFB
    .byte 0xFB
    .byte 0xF7
    .byte 0x5B 
    .byte 0xFF
    .byte 0x28 
    .byte 0x8D
    .byte 0x10
    .byte 0xF0
    .byte 0x86
    .byte 0xFE
    .byte 1
    .byte 0x78 
    .byte 0xA1
    .byte 0x75 
    .byte 0xE1
    .byte 0x75 
    .byte 0x41 
    .byte 0x78 
    .byte 0x21 
    .byte 0x70 
    .byte 0x81
    .byte 0x78 
    .byte 0x61 
    .byte 0x70 
    .byte 0x28 
    .byte 0x8D
    .byte 7
    .byte 0xF0
    .byte 0x2C 
    .byte 0xFE
    .byte 0x81
    .byte 0x78 
    .byte 0xE1
    .byte 0x70 
    .byte 0xFF
    .byte 0x20
    .byte 0xA0
    .byte 0x73 
    .byte 0
    .byte 0xF0
    .byte 5
    .byte 0xF9
// end of function sub_8007368

    pop {r4,r5,pc}
.thumb
sub_80075CA:
    push {r5,lr}
    ldr r0, [pc, #0x8007624-0x80075cc-4] // =0x6008000  // memBlock
    mov r1, #0x40   // numWords
    bl CpuSet_ZeroFillWord
    ldr r0, [pc, #0x8007618-0x80075d4-4] // =0x6008000  // memBlock
    mov r1, #0x40   // numWords
    bl CpuSet_ZeroFillWord
    ldr r0, [pc, #0x80075ec-0x80075dc-4] // =off_80075F0
    bl sub_8000B8E
    ldr r0, [pc, #0x800761c-0x80075e2-2] // =dword_86DDBA0
    ldr r1, [pc, #0x8007620-0x80075e4-4] // =0x6001460
    bl SWI_LZ77UnCompReadNormalWrite16bit
    pop {r5,pc}
off_80075EC:    .word off_80075F0
off_80075F0:    .word dword_86E08F8
    .word unk_3001980
    .word 0x100
    .word dword_86E09F8
    .word word_3001960
    .word 0x20, 0x86E09F8, 0x3001690, 0x20, 0x0
dword_8007618:    .word 0x6008000
off_800761C:    .word dword_86DDBA0
dword_8007620:    .word 0x6001460
dword_8007624:    .word 0x6008000
// end of function sub_80075CA

.thumb
sub_8007628:
    mov r0, r10
    ldr r0, [r0,#8]
    ldr r1, [pc, #0x8007654-0x800762c-4] // =word_800765C
loc_800762E:
    ldrh r2, [r1]
    cmp r2, #0xff
    beq loc_800763C
    ldrh r3, [r1,#2]
    strh r3, [r0,r2]
    add r1, #4
    b loc_800762E
loc_800763C:
    mov r0, r10
    ldr r0, [r0,#0x1c]
    ldr r1, [pc, #0x8007658-0x8007640-4] // =word_8007672
loc_8007642:
    ldrh r2, [r1]
    cmp r2, #0xff
    beq locret_8007650
    ldrh r3, [r1,#2]
    strh r3, [r0,r2]
    add r1, #4
    b loc_8007642
locret_8007650:
    mov pc, lr
    .balign 4, 0x00
off_8007654:    .word word_800765C
off_8007658:    .word word_8007672
word_800765C:    .hword 0x4
word_800765E:    .hword 0x1C08
    .word 0x1D030006, 0x1E020008, 0x1F00000A, 0x7F600000
    .byte 0xFF, 0x0
word_8007672:    .hword 0x0
word_8007674:    .hword 0xF000
    .word 0xF0000002
    .word 0xA0000004
    .word 0xA0000006
    .word 0x3F3F0008
    .word 0x3F3F000A
    .hword 0xFF
// end of function sub_8007628

.thumb
dead_800768C:
    push {r4-r7,lr}
    sub sp, sp, #0x14
    mov r4, #0
    str r4, [sp,#0x10]
    b loc_80076A8
// end of function dead_800768C

.thumb
dead_8007696:
    push {r4-r7,lr}
    sub sp, sp, #0x14
    mov r4, #1
    str r4, [sp,#0x10]
    b loc_80076A8
// end of function dead_8007696

.thumb
sub_80076A0:
    push {r4-r7,lr}
    sub sp, sp, #0x14
    mov r4, #0
    str r4, [sp,#0x10]
loc_80076A8:
    mov r6, r10
    ldr r6, [r6,#0x18]
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    str r5, [sp,#0x14]
    ldr r0, [sp]
    bl sub_80182B4
    add r7, r0, #0
    ldr r0, [sp,#4]
    ldr r1, [sp,#8]
    bl sub_800E276
    mov r3, #0
    add r2, r1, #0
    add r1, r0, #0
    mov r0, #0
    ldrb r4, [r7]
    bl object_spawnType1
    tst r5, r5
    bne loc_80076DA
    b loc_8007774
loc_80076DA:
    ldr r0, [sp,#0xc]
    strb r0, [r5,#0x16]
    bl object_createAIData
    str r0, [r5,#0x58]
    add r4, r0, #0
    bne loc_80076EE
    bl object_freeMemory
    b loc_8007774
loc_80076EE:
    ldr r1, [sp,#0x10]
    strb r1, [r4,#2]
    strb r1, [r5,#5]
    bl sub_8007778
    tst r0, r0
    bne loc_8007708
    bl object_freeMemory
    ldr r0, [r5,#0x58]
    bl sub_800ED80
    b loc_8007774
loc_8007708:
    ldrb r0, [r5]
    mov r1, #4
    orr r0, r1
    strb r0, [r5]
    ldr r0, [sp]
    strh r0, [r5,#0x28]
    ldr r0, [sp]
    bl sub_80182B4
    ldrb r1, [r0]
    strb r1, [r4,#0x16]
    strb r1, [r4,#0x17]
    ldrb r1, [r0,#1]
    strb r1, [r4]
    ldrb r1, [r0,#2]
    strb r1, [r4,#1]
    ldr r0, [sp]
    bl sub_800F214
    ldrb r1, [r0,#2]
    strb r1, [r4,#3]
    ldr r0, [sp]
    bl sub_800F23C
    ldrh r1, [r0]
    add r2, r1, #0
    lsl r2, r2, #0x14
    lsr r2, r2, #0x14
    strh r2, [r5,#0x24]
    strh r2, [r5,#0x26]
    lsr r1, r1, #0xc
    strb r1, [r5,#0xe]
    ldrh r1, [r0,#4]
    strh r1, [r5,#0x2c]
    mov r0, #0xa
    strh r0, [r5,#0x2e]
    ldr r0, [sp,#4]
    ldr r1, [sp,#8]
    strb r0, [r5,#0x12]
    strb r1, [r5,#0x13]
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    ldr r1, [sp,#0x14]
    str r1, [r4,#0x54]
    ldr r0, [pc, #0x80077fc-0x8007760-4] // =0xFFFF
    strh r0, [r5,#0x2a]
    mov r0, #0xff
    strb r0, [r4,#0xe]
    ldr r0, [sp,#0x10]
    cmp r0, #0
    bne loc_8007772
    bl sub_80077D2
loc_8007772:
    add r0, r5, #0
loc_8007774:
    add sp, sp, #0x14
    pop {r4-r7,pc}
// end of function sub_80076A0

.thumb
sub_8007778:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #0x10
    mul r1, r0
    add r1, #0x80
    mov r0, r10
    ldr r0, [r0,#0x18]
    add r3, r0, r1
    mov r1, #0
loc_800778A:
    ldr r2, [r3]
    tst r2, r2
    bne loc_80077A8
    str r5, [r3]
    ldr r1, [r5,#0x58]
    ldrb r2, [r1,#2]
    cmp r2, #1
    beq loc_80077A4
    ldrb r1, [r5,#0x16]
    add r1, #4
    ldrb r2, [r0,r1]
    add r2, #1
    strb r2, [r0,r1]
loc_80077A4:
    mov r0, #1
    pop {pc}
loc_80077A8:
    add r3, #4
    add r1, #1
    cmp r1, #4
    blt loc_800778A
    mov r0, #0
    pop {pc}
// end of function sub_8007778

.thumb
sub_80077B4:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x18]
    add r1, #0x80
    mov r3, #0
loc_80077BE:
    ldr r2, [r1]
    cmp r2, r0
    bne loc_80077C8
    mov r2, #0
    str r2, [r1]
loc_80077C8:
    add r1, #4
    add r3, #1
    cmp r3, #8
    blt loc_80077BE
    pop {pc}
// end of function sub_80077B4

.thumb
sub_80077D2:
    push {r4,r6,lr}
    ldrh r0, [r5,#0x28]
    ldrh r1, [r5,#0x16]
    mov r3, r10
    ldr r3, [r3,#0x18]
    mov r2, #8
    add r2, r2, r1
    ldrb r4, [r3,r2]
    add r6, r4, #1
    strb r6, [r3,r2]
    add r4, r4, r4
    lsl r1, r1, #3
    add r1, #0x4c 
    add r1, r1, r4
    strh r0, [r3,r1]
    pop {r4,r6,pc}
    .balign 4, 0x00
    .word 0x30000, 0xA800C8
dword_80077FC:    .word 0xFFFF
// end of function sub_80077D2

loc_8007800:
    push {r4,r5,lr}
    bl sub_801FE6C
    bl sub_8020140
    mov r5, r10
    ldr r5, [r5,#0x18]
    ldr r1, [pc, #0x8007834-0x800780e-2] // =off_8007838
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldr r0, [r5,#0x60]
    add r0, #1
    str r0, [r5,#0x60]
    bl sub_802D246
    add r4, r0, #0
    bl sub_800A832
    add r2, r1, #0
    add r1, r0, #0
    ldrb r0, [r5,#0xa]
    add r3, r4, #0
    tst r0, r0
    pop {r4,r5,pc}
off_8007834:    .word off_8007838
off_8007838:    .word loc_8007850+1
    .word loc_8007A44+1
    .word sub_8007B80+1
    .word loc_8007E62+1
    .word loc_8007F4E+1
    .word 0x8007FEB
loc_8007850:
    push {r4,lr}
    bl sub_801FEE8
    add r4, r0, #0
    cmp r4, #4
    bne loc_80078C6
    ldr r1, [pc, #0x800793c-0x800785c-4] // =dword_200F3B0
    mov r0, #0xff
    str r0, [r1]
loc_8007862:
    bl sub_803EA60
    cmp r0, #4
    beq loc_8007872
    cmp r0, #8
    beq loc_8007872
    bl sub_81440D8
loc_8007872:
    bl sub_801FE64
    mov r4, #5
    bl sub_803EA60
    cmp r0, #4
    beq loc_8007884
    cmp r0, #8
    bne loc_8007898
loc_8007884:
    bl sub_803EBF4
    ldrb r0, [r0,#0xe]
    cmp r0, #8
    beq loc_8007892
    cmp r0, #2
    bne loc_8007898
loc_8007892:
    bl sub_8144EEC
    mov r4, #9
loc_8007898:
    add r0, r4, #0
    bl sub_800A840
    mov r0, #8
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    bne locret_8007936
    mov r0, #0x17
    mov r1, #0x33 
    bl sub_802F110
    mov r0, #0x17
    mov r1, #0x35 
    bl sub_802F110
    b locret_8007936
loc_80078C6:
    cmp r4, #2
    beq loc_80078D6
    bl sub_803EA60
    mov r1, #0xc
    tst r0, r1
    bne loc_80078D6
    b loc_8007918
loc_80078D6:
    bl sub_802015E
    cmp r0, #0
    beq loc_8007900
    mov r1, #9
    cmp r0, #1
    beq loc_80078EC
    mov r1, #0xa
    cmp r0, #1
    beq loc_80078EC
    b loc_80078EC
loc_80078EC:
    add r0, r1, #0
    bl sub_800A840
    mov r0, #8
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_8007936
loc_8007900:
    add r0, r4, #0
    bl loc_801FEEE
    mov r0, #8
    and r4, r0
    bne locret_8007936
    ldr r1, [pc, #0x8007938-0x800790c-4] // =off_8007940
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,pc}
loc_8007918:
    bl sub_803EA60
    cmp r0, #4
    beq locret_8007936
    cmp r0, #8
    beq locret_8007936
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    cmp r0, #0xb4
    blt locret_8007936
    ldr r1, [pc, #0x800793c-0x800792e-2] // =dword_200F3B0
    mov r0, #0xee
    str r0, [r1]
    b loc_8007862
locret_8007936:
    pop {r4,pc}
off_8007938:    .word off_8007940
off_800793C:    .word dword_200F3B0
off_8007940:    .word sub_800794C+1
    .word loc_8007978+1
    .word sub_8007A0C+1
.thumb
sub_800794C:
    push {lr}
    bl sub_800318C
    bl sub_800353E
    bl sub_8003548
    bl sub_8003552
    bl sub_802E112
    bl sub_8007338
    bl sub_800A0C6
    bl sub_801BE70
    bl sub_8002668
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
// end of function sub_800794C

loc_8007978:
    push {lr}
    ldr r1, [pc, #0x8007988-0x800797a-2] // =off_800798C
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8007988:    .word off_800798C
off_800798C:    .word sub_800799C+1
    .word sub_80079A8+1
    .word sub_80079D0+1
    .word sub_80079F0+1
.thumb
sub_800799C:
    push {lr}
    bl sub_801FE24
    mov r0, #4
    strb r0, [r5,#2]
    pop {pc}
// end of function sub_800799C

.thumb
sub_80079A8:
    push {lr}
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    bne loc_80079B8
    mov r0, #0
    b loc_80079BC
loc_80079B8:
    bl sub_803DD60
loc_80079BC:
    strb r0, [r5,#0xd]
    ldr r1, [pc, #0x80079cc-0x80079be-2] // =byte_20099CC
    strb r0, [r1]
    bl sub_800B144
    mov r0, #8
    strb r0, [r5,#2]
    pop {pc}
off_80079CC:    .word byte_20099CC
// end of function sub_80079A8

.thumb
sub_80079D0:
    push {lr}
    ldr r0, [pc, #0x80079ec-0x80079d2-2] // =0x12345678
    bl sub_800B46C
    tst r0, r0
    beq locret_80079EA
    bl sub_800B460
    bl sub_800B2D8
    mov r0, #0xc
    strb r0, [r5,#2]
    b locret_80079EA
locret_80079EA:
    pop {pc}
dword_80079EC:    .word 0x12345678
// end of function sub_80079D0

.thumb
sub_80079F0:
    push {lr}
    bl sub_802D26A
    add r1, r0, #0
    ldrb r0, [r5,#6]
    bl sub_800BF88
    bl sub_800A3E4
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    pop {pc}
// end of function sub_80079F0

.thumb
sub_8007A0C:
    push {lr}
    bl sub_801986C
    bl sub_800C8F0
// end of function sub_8007A0C

    bl sub_800318C
    bl sub_800BFC4
    ldr r0, [pc, #0x8007a40-0x8007a1e-2] // =byte_2011800
    bl sub_80028D4
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    bne loc_8007A36
    ldr r0, [r5,#0x3c]
    ldr r0, [r0,#0xc]
    bl sub_80029A8
loc_8007A36:
    bl batle_clearEnemyFadeinList
    mov r0, #4
    str r0, [r5]
    pop {pc}
off_8007A40:    .word byte_2011800
loc_8007A44:
    push {r4,lr}
    bl sub_801FEE8
    cmp r0, #4
    bne loc_8007A6C
    bl sub_803EBF4
    ldrb r0, [r0,#0xe]
    cmp r0, #8
    bne loc_8007A5E
    bl sub_8144EEC
    b loc_8007A62
loc_8007A5E:
    cmp r0, #2
    bne loc_8007A66
loc_8007A62:
    mov r1, #9
    b loc_8007A8E
loc_8007A66:
    mov r0, #0xc
    str r0, [r5]
    b loc_8007B10
loc_8007A6C:
    add r4, r0, #0
    bl loc_801FEEE
    mov r0, #8
    and r0, r4
    bne loc_8007B10
    bl sub_802015E
    cmp r0, #0
    beq loc_8007A9A
    mov r1, #9
    cmp r0, #1
    beq loc_8007A8E
    mov r1, #0xa
    cmp r0, #1
    beq loc_8007A8E
    b loc_8007A8E
loc_8007A8E:
    add r0, r1, #0
    bl sub_800A840
    mov r0, #0x10
    str r0, [r5]
    b loc_8007B10
loc_8007A9A:
    bl sub_800A01C
    bl sub_802D234
    lsl r0, r0, #2
    ldr r1, [pc, #0x8007b4c-0x8007aa4-4] // =off_8007B50
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    bl loc_80031AC
    bl loc_802FFF4
    bl sub_800BFC4
    bl sub_800FDC0
    bl sub_801BEE0
    bl sub_802CEC8
    bl sub_800AEE8
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#0xa]
    tst r0, r0
    bne loc_8007AF4
    bl battle_isTimeStop
    bne loc_8007AF0
    ldrb r0, [r5,#0xe]
    add r0, #1
    cmp r0, #0x14
    blt loc_8007AE2
    mov r0, #0
loc_8007AE2:
    strb r0, [r5,#0xe]
    ldrb r0, [r5,#0x16]
    add r0, #1
    cmp r0, #0xb4
    blt loc_8007AEE
    mov r0, #0
loc_8007AEE:
    strb r0, [r5,#0x16]
loc_8007AF0:
    bl sub_802CDFE
loc_8007AF4:
    mov r0, #0
    bl sub_80102AC
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8007B0A
    mov r0, #1
    bl sub_80102AC
loc_8007B0A:
    ldr r0, [r5,#0x64]
    add r0, #1
    str r0, [r5,#0x64]
loc_8007B10:
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003E18
    bl sub_8004218
    bl sub_8004510
    bl sub_800C5E0
    bl sub_801BF64
    bl sub_802E156
    bl sub_8003C70
    bl sub_80046F8
    bl sub_80049B0
    bl sub_8009FCC
    mov r0, #0xe0
    mov r1, #0x90
    bl sub_803C59C
    pop {r4,pc}
    .balign 4, 0x00
off_8007B4C:    .word off_8007B50
off_8007B50:    .word loc_8009158+1
    .word loc_8009158+1
    .word loc_8009158+1
    .word loc_8009158+1
    .word loc_8009158+1
    .word loc_8009158+1
    .word loc_800961C+1
    .word loc_80099A4+1
    .word loc_8009158+1
    .word loc_8009C94+1
    .word loc_8009158+1
    .word loc_8009158+1
.thumb
sub_8007B80:
    push {lr}
    ldr r1, [pc, #0x8007b90-0x8007b82-2] // =off_8007B94
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8007B90:    .word off_8007B94
off_8007B94:    .word sub_8007B9C+1
    .word sub_8007CA0+1
// end of function sub_8007B80

.thumb
sub_8007B9C:
    push {lr}
    bl sub_800A01C
    ldr r1, [pc, #0x8007bc4-0x8007ba2-2] // =off_8007BC8
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl loc_80031AC
    bl sub_800BFC4
    bl sub_80027B4
    bl sub_800286C
    bl sub_800A01C
    pop {pc}
    .balign 4, 0x00
off_8007BC4:    .word off_8007BC8
off_8007BC8:    .word sub_8007BD0+1
    .word loc_8007BF0+1
// end of function sub_8007B9C

.thumb
sub_8007BD0:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8007BE2
    mov r0, #0xa
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8007BEE
loc_8007BE2:
    ldrh r0, [r5,#0x28]
    sub r0, #1
    strh r0, [r5,#0x28]
    bge locret_8007BEE
    mov r0, #4
    strh r0, [r5,#2]
locret_8007BEE:
    pop {pc}
// end of function sub_8007BD0

loc_8007BF0:
    push {lr}
    bl sub_803EA60
    ldr r1, [pc, #0x8007c00-0x8007bf6-2] // =off_8007C04
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_8007C00:    .word off_8007C04
off_8007C04:    .word sub_8007C14+1
    .word sub_8007C50+1
    .word sub_8007C50+1
    .word sub_8007C14+1
.thumb
sub_8007C14:
    push {lr}
    bl sub_801FE5E
    tst r0, r0
    beq loc_8007C44
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8007C2E
    bl sub_803DDA4
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8007C4C
loc_8007C2E:
    bl sub_803DE24
    tst r0, r0
    beq loc_8007C3C
    ldrb r0, [r4,#1]
    cmp r0, #2
    beq locret_8007C4C
loc_8007C3C:
    bl sub_81440D8
    bl sub_801FE64
loc_8007C44:
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8007C4C:
    pop {pc}
    .byte 0, 0
// end of function sub_8007C14

.thumb
sub_8007C50:
    push {lr}
    bl sub_802D246
    ldr r1, [pc, #0x8007c9c-0x8007c56-2] // =0x400
    tst r0, r1
    beq loc_8007C74
    bl sub_800A832
    cmp r0, #5
    beq loc_8007C74
    cmp r0, #9
    beq loc_8007C74
    cmp r0, #0xa
    beq loc_8007C74
    bl sub_800AF50
    tst r0, r0
    beq loc_8007C90
loc_8007C74:
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8007C84
    mov r0, #4
    strb r0, [r5,#3]
    bl sub_803C754
    b locret_8007C98
loc_8007C84:
    bl sub_813D60C
    tst r0, r0
    bne locret_8007C98
    bl sub_801FE64
loc_8007C90:
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8007C98:
    pop {pc}
    .balign 4, 0x00
off_8007C9C:    .word 0x400
// end of function sub_8007C50

.thumb
sub_8007CA0:
    push {r4,r6,r7,lr}
    bl sub_8000784
    mov r4, r10
    ldr r4, [r4,#0x40]
    mov r6, r10
    ldr r6, [r6]
    mov r7, r10
    ldr r7, [r7,#0x3c]
    bl sub_802D246
    ldr r1, [pc, #0x8007fec-0x8007cb6-2] // =0x400
    tst r0, r1
    beq loc_8007D06
    bl sub_800A832
    cmp r0, #5
    beq loc_8007D06
    cmp r0, #9
    beq loc_8007D06
    cmp r0, #0xa
    beq loc_8007D06
    bl sub_800AF50
    tst r0, r0
    bne loc_8007CF2
    bl sub_8001974
    bl sub_8001AFC
    bl sub_80023A8
    ldr r1, [r5,#0x18]
    push {r1}
    bl sub_802D2B2
    bl loc_8007204
    pop {r1}
    str r1, [r5,#0x18]
    b locret_8007E60
loc_8007CF2:
    mov r1, #3
    cmp r0, #2
    beq loc_8007D00
    mov r1, #1
    cmp r0, #1
    beq loc_8007D00
    mov r1, #2
loc_8007D00:
    add r0, r1, #0
    bl sub_800A840
loc_8007D06:
    bl sub_800A832
    cmp r0, #1
    bne loc_8007D1A
    ldr r1, [pc, #0x8007ff0-0x8007d0e-2] // =dword_2000B30
    ldrh r2, [r1]
    cmp r2, #0x11
    bge loc_8007D1A
    add r2, #1
    strh r2, [r1]
loc_8007D1A:
    cmp r0, #5
    bne loc_8007D4E
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8007D2A
    b loc_8007E38
loc_8007D2A:
    mov r0, #0
    bl sub_803F4EC
    mov r0, #0x17
    mov r1, #0x33 
    bl sub_802F164
    beq loc_8007E38
    bl sub_8001974
    bl sub_8001AFC
    bl sub_80023A8
    ldr r0, [r5,#0x3c]
    bl loc_80071FE
    b locret_8007E60
loc_8007D4E:
    bl sub_800FAE0
    bl sub_800A86E
    bl sub_802D246
    mov r1, #0x40 
    tst r0, r1
    beq loc_8007D72
    bl getPETNaviSelect
    mov r1, #0x40 
    ldrh r2, [r5,#0x34]
    cmp r2, #0
    bne loc_8007D6E
    mov r2, #1
loc_8007D6E:
    bl sub_80137E6
loc_8007D72:
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    bne loc_8007DE4
    mov r2, #0x80
    ldr r1, [pc, #0x8007ff4-0x8007d7e-2] // =0x10000
    tst r0, r1
    bne loc_8007D8A
    ldrb r0, [r5,#0xd]
    bl sub_8015B54
loc_8007D8A:
    push {r2}
    bl getPETNaviSelect
    pop {r2}
    mov r1, #0xe
    bl sub_801379E
    bl sub_802D246
    add r1, r0, #0
    mov r0, #3
    ldr r2, [pc, #0x8007ff8-0x8007da0-4] // =0x400000
    tst r1, r2
    bne loc_8007DC4
    ldrb r0, [r5,#0xd]
    mov r1, #0x21 
    bl sub_80136CC
    push {r0}
    ldrb r0, [r5,#0xd]
    mov r1, #2
    bl sub_800AB3A
    cmp r0, #0
    pop {r0}
    bne loc_8007DC4
    cmp r0, #3
    bge loc_8007DC4
    add r0, #1
loc_8007DC4:
    push {r0}
    bl getPETNaviSelect
    pop {r2}
    mov r1, #0x21 
    bl sub_801379E
    bl sub_800A832
    cmp r0, #1
    bne loc_8007DDE
    bl sub_802C9B8
loc_8007DDE:
    mov r0, #0
    strh r0, [r4,#0x12]
    strh r0, [r4,#0x14]
loc_8007DE4:
    bl sub_800A832
    cmp r0, #2
    bne loc_8007E26
    bl sub_802D246
    ldr r1, [pc, #0x8007ffc-0x8007df0-4] // =0x800000
    tst r0, r1
    beq loc_8007DFE
    push {r0}
    bl sub_803CEB8
    pop {r0}
loc_8007DFE:
    ldr r1, [pc, #0x8008000-0x8007dfe-2] // =0x1000
    tst r0, r1
    beq loc_8007E14
    push {r0}
    bl getPETNaviSelect
    mov r1, #0x21 
    mov r2, #3
    bl sub_801379E
    pop {r0}
loc_8007E14:
    ldr r1, [pc, #0x8008004-0x8007e14-4] // =0x40000
    tst r0, r1
    beq loc_8007E26
    bl getPETNaviSelect
    mov r1, #0xe
    mov r2, #0x80
    bl sub_801379E
loc_8007E26:
    bl sub_802D246
    mov r1, #0x10
    tst r0, r1
    beq loc_8007E34
    bl sub_803CEB8
loc_8007E34:
    bl sub_802CA82
loc_8007E38:
    mov r0, #0
    strb r0, [r7,#0xa]
    bl sub_8002368
    mov r0, #0x40 
    bl sub_8001778
    bl sub_800A892
    mov r0, #1
    bl sub_80071A4
    mov r0, #0x17
    mov r1, #0x22 
    bl sub_802F12C
    mov r0, #0
    strb r0, [r5,#0xa]
    bl CpuSet_toolKit
locret_8007E60:
    pop {r4,r6,r7,pc}
// end of function sub_8007CA0

loc_8007E62:
    push {lr}
    ldr r1, [pc, #0x8007ea8-0x8007e64-4] // =off_8007EAC
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003E18
    bl sub_8004218
    bl sub_8004510
    bl sub_800C5E0
    bl sub_801BF64
    bl sub_802E156
    bl sub_8003C70
    bl sub_80046F8
    bl sub_80049B0
    bl sub_8009FCC
    ldr r1, [pc, #0x8008008-0x8007e9e-2] // =dword_203F7D8
    mov r0, #2
    strb r0, [r1,#0x1] // (dword_203F7D8+1 - 0x203f7d8)
    pop {pc}
    .balign 4, 0x00
off_8007EA8:    .word off_8007EAC
off_8007EAC:    .word sub_8007EB8+1
    .word sub_8007F14+1
    .word sub_8007F2C+1
.thumb
sub_8007EB8:
    push {r4,lr}
    bl sub_800A028
    bl sub_81440D8
    bl sub_801FE64
    ldr r0, [pc, #0x800800c-0x8007ec6-2] // =0x280000
    bl sub_801BED6
    ldr r0, [pc, #0x800800c-0x8007ecc-4] // =0x280000
    bl sub_801DACC
    mov r0, #5
    bl sub_800A840
    bl sub_80062EC
    bl getPETNaviSelect
    add r4, r0, #0
    bl sub_802D246
    ldr r1, [pc, #0x8008010-0x8007ee6-2] // =0x200000
    tst r0, r1
    beq loc_8007EEE
    mov r4, #0
loc_8007EEE:
    mov r1, #8
    tst r0, r1
    bne loc_8007F04
    mov r1, #4
    mul r4, r1
    mov r1, #0x20 
    tst r0, r1
    bne loc_8007F00
    add r4, #3
loc_8007F00:
    add r1, r4, #0
    b loc_8007F08
loc_8007F04:
    mov r1, #0x5c 
    add r1, r1, r4
loc_8007F08:
    ldr r0, [pc, #0x8008014-0x8007f08-4] // =dword_87370C0
    bl chatbox_runScript
    mov r0, #4
    strb r0, [r5,#1]
    pop {r4,pc}
// end of function sub_8007EB8

.thumb
sub_8007F14:
    push {lr}
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_8007F2A
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #8
    strb r0, [r5,#1]
locret_8007F2A:
    pop {pc}
// end of function sub_8007F14

.thumb
sub_8007F2C:
    push {lr}
    bl engine_isScreeneffectAnimating
    tst r0, r0
    bne locret_8007F4C
    bl sub_8000784
    mov r0, #0x1a
    bl sub_80035A2
    mov r0, #8
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8007F4C:
    pop {pc}
// end of function sub_8007F2C

loc_8007F4E:
    push {lr}
    bl sub_800A01C
    ldr r1, [pc, #0x8007f98-0x8007f54-4] // =off_8007F9C
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_80027B4
    bl sub_800286C
    bl sub_8003E18
    bl sub_8004218
    bl sub_8004510
    bl sub_800C5E0
    bl sub_801BF64
    bl sub_802E156
    bl sub_8003C70
    bl sub_80046F8
    bl sub_80049B0
    bl sub_8009FCC
    ldr r1, [pc, #0x8008018-0x8007f8e-2] // =dword_203F7D8
    mov r0, #2
    strb r0, [r1,#0x1] // (dword_203F7D8+1 - 0x203f7d8)
    pop {pc}
    .balign 4, 0x00
off_8007F98:    .word off_8007F9C
off_8007F9C:    .word sub_8007FA4+1
    .word sub_8007FD2+1
.thumb
sub_8007FA4:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8007FC4
    bl sub_800A028
    bl sub_801FE64
    bl sub_80062EC
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5,#3]
loc_8007FC4:
    bl engine_isScreeneffectAnimating
    tst r0, r0
    bne locret_8007FD0
    mov r0, #4
    strh r0, [r5,#2]
locret_8007FD0:
    pop {pc}
// end of function sub_8007FA4

.thumb
sub_8007FD2:
    push {lr}
    bl sub_813D60C
    tst r0, r0
    bne locret_8007FE8
    mov r0, #8
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8007FE8:
    pop {pc}
    .byte 0x0
    .byte 0
off_8007FEC:    .word 0x400
off_8007FF0:    .word dword_2000B30
dword_8007FF4:    .word 0x10000
dword_8007FF8:    .word 0x400000
dword_8007FFC:    .word 0x800000
off_8008000:    .word 0x1000
dword_8008004:    .word 0x40000
off_8008008:    .word dword_203F7D8
dword_800800C:    .word 0x280000
dword_8008010:    .word 0x200000
off_8008014:    .word dword_87370C0
off_8008018:    .word dword_203F7D8
// end of function sub_8007FD2

loc_800801C:
    push {r5,lr}
    ldr r5, [pc, #0x8008060-0x800801e-2] // =byte_203CA70
    ldr r1, [pc, #0x8008034-0x8008020-4] // =off_8008038
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_802DE5C
    ldrb r0, [r5,#0x4] // (byte_203CA74 - 0x203ca70)
    pop {r5,pc}
    .balign 4, 0x00
off_8008034:    .word off_8008038
off_8008038:    .word sub_800840C+1
    .word sub_8008064+1
    .word sub_80080D2+1
    .word sub_80081A4+1
    .word sub_800825A+1
    .word sub_80082DC+1
    .word loc_800834A+1
    .word sub_80083E4+1
    .word sub_8008452+1
    .word sub_8008492+1
off_8008060:    .word byte_203CA70
.thumb
sub_8008064:
    push {lr}
    mov r0, #0
    bl sub_8012DFC
    mov r0, #1
    bl sub_8012DFC
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80080B2
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
    bl sub_800A97A
    tst r0, r0
    beq loc_8008096
    mov r0, #0xa5
    lsl r0, r0, #2
    sub r0, #1
    strh r0, [r5,#0xa]
    mov r0, #0x10
    mov r1, #0
    b loc_80080AE
loc_8008096:
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    bne loc_80080A6
    mov r0, #0
    mov r1, #0
    b loc_80080AE
loc_80080A6:
    mov r0, #0xc
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#7]
loc_80080AE:
    bl loc_801E792
loc_80080B2:
    bl sub_801E754
    cmp r0, #0
    bne locret_80080D0
    mov r0, #0xff
    mov r1, #0
    bl sub_801E724
    mov r0, #0xff
    lsl r0, r0, #8
    add r0, #0xff
    bl sub_801E0C8
    mov r0, #8
    str r0, [r5]
locret_80080D0:
    pop {pc}
// end of function sub_8008064

.thumb
sub_80080D2:
    push {lr}
    mov r0, #0
    bl sub_8012DFC
    mov r0, #1
    bl sub_8012DFC
    bl sub_800A032
    mov r0, #1
    bl battle_setFlags
    bl sub_800AE0C
    bl sub_800A6A6
    bl sub_800A97A
    tst r0, r0
    beq loc_80080FE
    bl sub_800AB7C
loc_80080FE:
    bl sub_800A152
    cmp r0, #1
    bne loc_8008122
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrh r0, [r1,#0x3a]
    cmp r0, #0
    beq loc_8008116
    bl sub_800AAD6
    b locret_80081A2
loc_8008116:
    ldrb r0, [r1,#0x18]
    add r0, #1
    strb r0, [r1,#0x18]
    mov r0, #0xc
    str r0, [r5]
    b locret_80081A2
loc_8008122:
    cmp r0, #2
    bne loc_8008136
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x19]
    add r0, #1
    strb r0, [r1,#0x19]
    mov r0, #0x10
    str r0, [r5]
    b locret_80081A2
loc_8008136:
    cmp r0, #7
    bne loc_8008140
    mov r0, #0x18
    str r0, [r5]
    b locret_80081A2
loc_8008140:
    bl sub_800A046
    cmp r0, #0xff
    beq loc_8008158
    strb r0, [r5,#5]
    bl sub_800A028
    mov r0, #0x1c
    str r0, [r5]
    bl sub_801E15C
    b locret_80081A2
loc_8008158:
    bl sub_800A8F8
    cmp r0, #0
    bne loc_8008168
    bl sub_800A1D0
    beq locret_80081A2
    b loc_800819A
loc_8008168:
    bl sub_800A244
    beq locret_80081A2
    push {r0}
    mov r1, #1
    tst r0, r1
    beq loc_8008184
    mov r0, #0
    bl sub_802E070
    ldrh r1, [r0,#0x28]
    ldr r2, [pc, #0x80084d0-0x800817e-2] // =0x2900
    sub r1, r1, r2
    strh r1, [r0,#0x28]
loc_8008184:
    pop {r0}
    mov r1, #2
    tst r0, r1
    beq loc_800819A
    mov r0, #1
    bl sub_802E070
    ldrh r1, [r0,#0x28]
    ldr r2, [pc, #0x80084d0-0x8008194-4] // =0x2900
    sub r1, r1, r2
    strh r1, [r0,#0x28]
loc_800819A:
    bl sub_800A028
    mov r0, #0x20 
    str r0, [r5]
locret_80081A2:
    pop {pc}
// end of function sub_80080D2

.thumb
sub_80081A4:
    push {r4,r6,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008232
    ldr r0, [pc, #0x80084d4-0x80081ac-4] // =0xE4C53
    bl sub_801DACC
    ldr r0, [pc, #0x80084d4-0x80081b2-2] // =0xE4C53
    bl sub_801BED6
    bl sub_800A7E2
    bl sub_8014040
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r1, [r0,#0xd]
    strb r1, [r0,#0x10]
    mov r0, #4
    strb r0, [r5,#3]
    ldr r1, [pc, #0x80084d8-0x80081cc-4] // =0x171
    ldr r2, [pc, #0x80084dc-0x80081ce-2] // =0x17D
    bl sub_800A7A6
    tst r0, r0
    beq loc_80081DE
    mov r0, #0x66 
    strh r0, [r5,#8]
    b loc_8008232
loc_80081DE:
    bl sub_802D234
    cmp r0, #4
    beq loc_80081EE
    cmp r0, #5
    beq loc_80081EE
    cmp r0, #8
    bne loc_80081F4
loc_80081EE:
    mov r2, #0x19
    mov r4, #0x5e 
    b loc_8008206
loc_80081F4:
    bl sub_802D246
    mov r4, #0x5e 
    mov r2, #0x19
    mov r1, #2
    tst r0, r1
    bne loc_8008206
    mov r2, #0x1f
    mov r4, #0x66 
loc_8008206:
    add r0, r2, #0
    bl sub_80005D4
    strh r4, [r5,#8]
    mov r6, #4
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8008222
    bl sub_800A8D4
    add r6, r0, #0
    b loc_800822C
loc_8008222:
    bl sub_800A152
    cmp r0, #7
    bne loc_800822C
    mov r6, #0x14
loc_800822C:
    add r0, r6, #0
    bl loc_801E792
loc_8008232:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801E754
    cmp r0, #0
    bne locret_8008258
    mov r0, #8
    ldrsh r0, [r5,r0]
    tst r0, r0
    bgt locret_8008258
    mov r0, #1
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
    mov r0, #0
    bl sub_800B6C2
locret_8008258:
    pop {r4,r6,pc}
// end of function sub_80081A4

.thumb
sub_800825A:
    push {r4,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80082B4
    ldr r0, [pc, #0x80084d4-0x8008262-2] // =0xE4C53
    bl sub_801DACC
    ldr r0, [pc, #0x80084d4-0x8008268-4] // =0xE4C53
    bl sub_801BED6
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r1, [r0,#0xd]
    mov r2, #1
    eor r1, r2
    strb r1, [r0,#0x10]
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_800828A
    mov r0, #0x1a
    bl sub_80005D4
loc_800828A:
    bl sub_802D246
    mov r1, #2
    tst r0, r1
    bne loc_8008298
    mov r4, #0x66 
    b loc_800829A
loc_8008298:
    mov r4, #0x5e 
loc_800829A:
    strh r4, [r5,#8]
    bl sub_800A152
    add r4, r0, #0
    bl sub_800A8B2
    cmp r4, #7
    bne loc_80082AC
    mov r0, #0x18
loc_80082AC:
    bl loc_801E792
    mov r0, #4
    strb r0, [r5,#3]
loc_80082B4:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801E754
    cmp r0, #0
    bne locret_80082DA
    mov r0, #8
    ldrsh r0, [r5,r0]
    tst r0, r0
    bgt locret_80082DA
    mov r0, #2
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
    mov r0, #1
    bl sub_800B6C2
locret_80082DA:
    pop {r4,pc}
// end of function sub_800825A

.thumb
sub_80082DC:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80082FE
    ldr r0, [pc, #0x80084d4-0x80082e4-4] // =0xE4C53
    bl sub_801DACC
    ldr r0, [pc, #0x80084d4-0x80082ea-2] // =0xE4C53
    bl sub_801BED6
    mov r0, #0x66 
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
    mov r0, #0x1c
    bl loc_801E792
loc_80082FE:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801E754
    cmp r0, #0
    bne locret_8008348
    ldrh r0, [r5,#8]
    tst r0, r0
    blt locret_8008348
    bl sub_802D246
    ldr r1, [pc, #0x80084e0-0x8008316-2] // =0x400
    tst r0, r1
    beq loc_8008338
    bl sub_800AF50
    cmp r0, #0
    beq loc_8008338
    cmp r0, #2
    beq loc_8008338
    cmp r0, #1
    bne loc_8008332
    mov r0, #0xc
    str r0, [r5]
    b locret_8008348
loc_8008332:
    mov r0, #0x10
    str r0, [r5]
    b locret_8008348
loc_8008338:
    mov r0, #3
    bl sub_800A840
    mov r0, #3
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
    strb r0, [r5,#4]
locret_8008348:
    pop {pc}
// end of function sub_80082DC

loc_800834A:
    push {lr}
    ldr r1, [pc, #0x8008358-0x800834c-4] // =off_800835C
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_8008358:    .word off_800835C
off_800835C:    .word sub_8008364+1
    .word sub_800838A+1
.thumb
sub_8008364:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008374
    mov r0, #0
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8008374:
    ldrh r0, [r5,#8]
    add r0, #1
    strh r0, [r5,#8]
    cmp r0, #0x3c 
    blt locret_8008388
    ldr r0, [pc, #0x80084e4-0x800837e-2] // =0x800
    bl sub_801DACC
    mov r0, #4
    strh r0, [r5,#2]
locret_8008388:
    pop {pc}
// end of function sub_8008364

.thumb
sub_800838A:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80083AE
    mov r0, #1
    bl sub_801055E
    push {r0}
    mov r0, #0
    bl sub_801055E
    add r1, r0, #0
    pop {r0}
    bl sub_802CB38
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80083E2
loc_80083AE:
    bl loc_802CB78
    tst r0, r0
    bne locret_80083E2
    cmp r1, #1
    bne loc_80083CA
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x18]
    add r0, #1
    strb r0, [r1,#0x18]
    mov r0, #0xc
    str r0, [r5]
    b locret_80083E2
loc_80083CA:
    cmp r1, #2
    bne loc_80083DE
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x19]
    add r0, #1
    strb r0, [r1,#0x19]
    mov r0, #0x10
    str r0, [r5]
    b locret_80083E2
loc_80083DE:
    mov r0, #0x14
    str r0, [r5]
locret_80083E2:
    pop {pc}
// end of function sub_800838A

.thumb
sub_80083E4:
    push {lr}
    ldrb r0, [r5,#5]
    bl sub_800A07C
    tst r0, r0
    beq locret_8008400
    mov r0, #0x9f
    bl sound_play
    mov r0, #8
    str r0, [r5]
    ldr r0, [pc, #0x8008408-0x80083fa-2] // =0x200
    bl sub_801DACC
locret_8008400:
    pop {pc}
    .balign 4, 0x00
    .word dword_2036820
off_8008408:    .word 0x200
// end of function sub_80083E4

.thumb
sub_800840C:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008420
    ldr r0, [pc, #0x80084e8-0x8008414-4] // =unk_203F558
    ldr r1, [pc, #0x80084ec-0x8008416-2] // =unk_203F658
    bl sub_80147E4
    mov r0, #4
    strb r0, [r5,#3]
loc_8008420:
    bl loc_801483C
    tst r0, r0
    bne locret_8008450
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_8008438
    bl sub_801482C
    mov r0, #4
    strb r0, [r5,#2]
    pop {pc}
loc_8008438:
    mov r0, #0
    bl sub_80103BC
    bl sub_8015A38
    mov r0, #1
    bl sub_80103BC
    bl sub_8015A38
    mov r0, #4
    str r0, [r5]
locret_8008450:
    pop {pc}
// end of function sub_800840C

.thumb
sub_8008452:
    push {lr}
    bl sub_802D234
    cmp r0, #5
    beq loc_8008462
    bl sub_802E09A
    bne loc_800848C
loc_8008462:
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008484
    bl sub_802D6A0
    mov r0, #0
    bl sub_80103BC
    bl sub_8015A16
    mov r0, #1
    bl sub_80103BC
    bl sub_8015A16
    mov r0, #4
    strb r0, [r5,#3]
loc_8008484:
    bl sub_802D6C4
    tst r0, r0
    bne locret_8008490
loc_800848C:
    mov r0, #0x24 
    str r0, [r5]
locret_8008490:
    pop {pc}
// end of function sub_8008452

.thumb
sub_8008492:
    push {lr}
    bl sub_802D234
    cmp r0, #5
    beq loc_80084A2
    bl sub_802E09A
    bne loc_80084BA
loc_80084A2:
    bl loc_801483C
    tst r0, r0
    bne locret_80084BE
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_80084BA
    bl sub_801482C
    mov r0, #4
    strb r0, [r5,#2]
    pop {pc}
loc_80084BA:
    mov r0, #6
    strb r0, [r5,#4]
locret_80084BE:
    pop {pc}
// end of function sub_8008492

.thumb
sub_80084C0:
    push {r5,lr}
    ldr r0, [pc, #0x80084cc-0x80084c2-2] // =byte_203CA70  // memBlock
    mov r1, #0xc  // numWords
    bl CpuSet_ZeroFillWord
    pop {r5,pc}
off_80084CC:    .word byte_203CA70
off_80084D0:    .word 0x2900
dword_80084D4:    .word 0xE4C53
dword_80084D8:    .word 0x173
dword_80084DC:    .word 0x17E
off_80084E0:    .word 0x400
off_80084E4:    .word 0x800
off_80084E8:    .word unk_203F558
off_80084EC:    .word unk_203F658
// end of function sub_80084C0

loc_80084F0:
    push {r5,lr}
    ldr r5, [pc, #0x8008524-0x80084f2-2] // =byte_203CA70
    ldr r1, [pc, #0x8008504-0x80084f4-4] // =off_8008508
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldrb r0, [r5,#0x4] // (byte_203CA74 - 0x203ca70)
    pop {r5,pc}
    .balign 4, 0x00
off_8008504:    .word off_8008508
off_8008508:    .word sub_8008528+1
    .word sub_800855E+1
    .word sub_8008664+1
    .word sub_8008764+1
    .word sub_80087D8+1
    .word sub_8008840+1
    .word sub_8008900+1
off_8008524:    .word byte_203CA70
.thumb
sub_8008528:
    push {lr}
    mov r0, #0
    bl sub_8012DFC
    mov r0, #1
    bl sub_8012DFC
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008550
    mov r0, #0
    strb r0, [r5,#4]
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
    mov r0, #0
    mov r1, #0
    bl loc_801E792
loc_8008550:
    bl sub_801E754
    cmp r0, #0
    bne locret_800855C
    mov r0, #4
    str r0, [r5]
locret_800855C:
    pop {pc}
// end of function sub_8008528

.thumb
sub_800855E:
    push {lr}
    bl sub_80085FE
    mov r0, #0
    bl sub_8012DFC
    mov r0, #1
    bl sub_8012DFC
    bl sub_800A032
    mov r0, #1
    bl battle_setFlags
    bl sub_800AE0C
    bl sub_800A6A6
    bl sub_800A97A
    tst r0, r0
    beq loc_800858E
    bl sub_800AB7C
loc_800858E:
    bl sub_800A152
    cmp r0, #1
    bne loc_80085A6
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x18]
    add r0, #1
    strb r0, [r1,#0x18]
    mov r0, #8
    str r0, [r5]
    b locret_80085FC
loc_80085A6:
    cmp r0, #2
    bne loc_80085BA
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x19]
    add r0, #1
    strb r0, [r1,#0x19]
    mov r0, #0xc
    str r0, [r5]
    b locret_80085FC
loc_80085BA:
    cmp r0, #7
    bne loc_80085C4
    mov r0, #0x14
    str r0, [r5]
    b locret_80085FC
loc_80085C4:
    bl sub_800A046
    cmp r0, #0xff
    beq loc_80085DC
    strb r0, [r5,#5]
    bl sub_800A028
    mov r0, #0x18
    str r0, [r5]
    bl sub_801E15C
    b locret_80085FC
loc_80085DC:
    bl battle_isTimeStop
    bne loc_80085E8
    mov r0, #0xd
    bl sub_801DFB8
loc_80085E8:
    bl sub_800A21C
    cmp r0, #0
    beq locret_80085FC
    cmp r0, #1
    bne locret_80085FC
    bl sub_800A028
    mov r0, #0x14
    str r0, [r5]
locret_80085FC:
    pop {pc}
// end of function sub_800855E

.thumb
sub_80085FE:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x18]
    mov r0, #0x80
    ldr r0, [r5,r0]
    mov r1, #0x84
    ldr r1, [r5,r1]
    ldrb r2, [r5,#4]
    bl sub_8008622
    mov r0, #0x90
    ldr r0, [r5,r0]
    mov r1, #0x94
    ldr r1, [r5,r1]
    ldrb r2, [r5,#5]
    bl sub_8008622
    pop {r5,pc}
// end of function sub_80085FE

.thumb
sub_8008622:
    push {lr}
    cmp r2, #2
    bge loc_8008630
    mov r2, #0
    cmp r0, #0
    bne locret_8008662
    b loc_800863A
loc_8008630:
    mov r2, #0
    cmp r0, #0
    beq loc_800863A
    cmp r1, #0
    bne loc_800864C
loc_800863A:
    push {r0-r2}
    ldr r0, [pc, #0x8008938-0x800863c-4] // =0x820080
    bl sub_801DACC
    ldr r0, [pc, #0x8008938-0x8008642-2] // =0x820080
    bl sub_801BED6
    pop {r0-r2}
    b loc_8008656
loc_800864C:
    ldrh r2, [r0,#0x24]
    ldrh r3, [r1,#0x24]
    cmp r2, r3
    blt loc_8008656
    add r2, r3, #0
loc_8008656:
    tst r0, r0
    beq loc_800865C
    strh r2, [r0,#0x24]
loc_800865C:
    tst r1, r1
    beq locret_8008662
    strh r2, [r1,#0x24]
locret_8008662:
    pop {pc}
// end of function sub_8008622

.thumb
sub_8008664:
    push {lr}
    ldr r1, [pc, #0x8008674-0x8008666-2] // =off_8008678
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8008674:    .word off_8008678
off_8008678:    .word sub_8008688+1
    .word sub_80086F8+1
    .word sub_8008716+1
    .word sub_800873A+1
// end of function sub_8008664

.thumb
sub_8008688:
    push {r4,r6,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80086DC
    bl sub_800A84E
    add r6, r0, #0
    ldr r0, [pc, #0x800893c-0x8008696-2] // =0x824C43
    bl sub_801DACC
    ldr r0, [pc, #0x800893c-0x800869c-4] // =0x824C43
    bl sub_801BED6
    bl sub_800A7E2
    bl sub_8014040
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r1, [r0,#0xd]
    strb r1, [r0,#0x10]
    mov r0, #4
    strb r0, [r5,#3]
    bl sub_802D246
    mov r2, #0x19
    mov r4, #0x41 
    mov r1, #2
    tst r0, r1
    bne loc_80086C8
    mov r2, #0x1f
    mov r4, #0x66 
loc_80086C8:
    cmp r6, #1
    bne loc_80086CE
    mov r2, #0x24 
loc_80086CE:
    add r0, r2, #0
    bl sub_80005D4
    strh r4, [r5,#8]
    mov r0, #0x14
    bl loc_801E792
loc_80086DC:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801E754
    cmp r0, #0
    bne locret_80086F6
    mov r0, #8
    ldrsh r0, [r5,r0]
    tst r0, r0
    bgt locret_80086F6
    mov r0, #0xc
    strh r0, [r5,#2]
locret_80086F6:
    pop {r4,r6,pc}
// end of function sub_8008688

.thumb
sub_80086F8:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008708
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8008708:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bgt locret_8008714
    mov r0, #8
    strh r0, [r5,#2]
locret_8008714:
    pop {pc}
// end of function sub_80086F8

.thumb
sub_8008716:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800872C
    mov r0, #0x58 
    bl loc_801E792
    mov r0, #0
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_800872C:
    bl sub_801E754
    cmp r0, #0
    bne locret_8008738
    mov r0, #0xc
    strh r0, [r5,#2]
locret_8008738:
    pop {pc}
// end of function sub_8008716

.thumb
sub_800873A:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800874A
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_800874A:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bgt locret_8008762
    mov r0, #1
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
    mov r0, #0
    bl sub_800B6C2
locret_8008762:
    pop {pc}
// end of function sub_800873A

.thumb
sub_8008764:
    push {r4,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80087B0
    ldr r0, [pc, #0x800893c-0x800876c-4] // =0x824C43
    bl sub_801DACC
    ldr r0, [pc, #0x800893c-0x8008772-2] // =0x824C43
    bl sub_801BED6
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r1, [r0,#0xd]
    mov r2, #1
    eor r1, r2
    strb r1, [r0,#0x10]
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8008794
    mov r0, #0x1a
    bl sub_80005D4
loc_8008794:
    bl sub_802D246
    mov r1, #2
    tst r0, r1
    bne loc_80087A2
    mov r4, #0x66 
    b loc_80087A4
loc_80087A2:
    mov r4, #0x41 
loc_80087A4:
    strh r4, [r5,#8]
    mov r0, #0x18
    bl loc_801E792
    mov r0, #4
    strb r0, [r5,#3]
loc_80087B0:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801E754
    cmp r0, #0
    bne locret_80087D6
    mov r0, #8
    ldrsh r0, [r5,r0]
    tst r0, r0
    bgt locret_80087D6
    mov r0, #2
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
    mov r0, #1
    bl sub_800B6C2
locret_80087D6:
    pop {r4,pc}
// end of function sub_8008764

.thumb
sub_80087D8:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80087FA
    ldr r0, [pc, #0x800893c-0x80087e0-4] // =0x824C43
    bl sub_801DACC
    ldr r0, [pc, #0x800893c-0x80087e6-2] // =0x824C43
    bl sub_801BED6
    mov r0, #0x66 
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
    mov r0, #0x1c
    bl loc_801E792
loc_80087FA:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801E754
    cmp r0, #0
    bne locret_800883E
    ldrh r0, [r5,#8]
    tst r0, r0
    blt locret_800883E
    bl sub_802D246
    ldr r1, [pc, #0x8008940-0x8008812-2] // =0x400
    tst r0, r1
    beq loc_8008834
    bl sub_800AF50
    cmp r0, #0
    beq loc_8008834
    cmp r0, #2
    beq loc_8008834
    cmp r0, #1
    bne loc_800882E
    mov r0, #8
    str r0, [r5]
    b locret_800883E
loc_800882E:
    mov r0, #0xc
    str r0, [r5]
    b locret_800883E
loc_8008834:
    mov r0, #3
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
locret_800883E:
    pop {pc}
// end of function sub_80087D8

.thumb
sub_8008840:
    push {lr}
    ldr r1, [pc, #0x8008850-0x8008842-2] // =off_8008854
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8008850:    .word off_8008854
off_8008854:    .word sub_8008864+1
    .word sub_8008894+1
    .word sub_80088B2+1
    .word sub_80088D6+1
// end of function sub_8008840

.thumb
sub_8008864:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008886
    ldr r0, [pc, #0x800893c-0x800886c-4] // =0x824C43
    bl sub_801DACC
    ldr r0, [pc, #0x800893c-0x8008872-2] // =0x824C43
    bl sub_801BED6
    mov r0, #0x54 
    bl loc_801E792
    mov r0, #0
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8008886:
    bl sub_801E754
    cmp r0, #0
    bne locret_8008892
    mov r0, #4
    strh r0, [r5,#2]
locret_8008892:
    pop {pc}
// end of function sub_8008864

.thumb
sub_8008894:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80088A4
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_80088A4:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bgt locret_80088B0
    mov r0, #8
    strh r0, [r5,#2]
locret_80088B0:
    pop {pc}
// end of function sub_8008894

.thumb
sub_80088B2:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80088C8
    mov r0, #0x1c
    bl loc_801E792
    mov r0, #0
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_80088C8:
    bl sub_801E754
    cmp r0, #0
    bne locret_80088D4
    mov r0, #0xc
    strh r0, [r5,#2]
locret_80088D4:
    pop {pc}
// end of function sub_80088B2

.thumb
sub_80088D6:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80088E6
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_80088E6:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bgt locret_80088FE
    mov r0, #7
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
    mov r0, #1
    bl sub_800B6C2
locret_80088FE:
    pop {pc}
// end of function sub_80088D6

.thumb
sub_8008900:
    push {lr}
    ldrb r0, [r5,#5]
    bl sub_800A07C
    tst r0, r0
    beq locret_800891C
    mov r0, #0x9f
    bl sound_play
    mov r0, #4
    str r0, [r5]
    ldr r0, [pc, #0x8008924-0x8008916-2] // =0x200
    bl sub_801DACC
locret_800891C:
    pop {pc}
    .byte 0, 0
    .word dword_2036820
off_8008924:    .word 0x200
// end of function sub_8008900

.thumb
sub_8008928:
    push {lr}
    ldr r0, [pc, #0x8008934-0x800892a-2] // =byte_203CA70  // memBlock
    mov r1, #0xc  // numWords
    bl CpuSet_ZeroFillWord
    pop {pc}
off_8008934:    .word byte_203CA70
dword_8008938:    .word 0x820080
dword_800893C:    .word 0x824C43
off_8008940:    .word 0x400
    .word 0, 0
    .byte 0, 0, 0, 0
// end of function sub_8008928

loc_8008950:
    push {r5,lr}
    ldr r5, [pc, #0x8008988-0x8008952-2] // =byte_203CA70
    ldr r1, [pc, #0x8008968-0x8008954-4] // =off_800896C
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_802DE5C
    ldrb r0, [r5,#0x4] // (byte_203CA74 - 0x203ca70)
    pop {r5,pc}
    .balign 4, 0x00
off_8008968:    .word off_800896C
off_800896C:    .word sub_800898C+1
    .word sub_80089CC+1
    .word sub_8008A7C+1
    .word sub_8008B7C+1
    .word sub_8008BF0+1
    .word sub_8008C58+1
    .word sub_8008D18+1
off_8008988:    .word byte_203CA70
.thumb
sub_800898C:
    push {lr}
    mov r0, #0
    bl sub_8012DFC
    mov r0, #1
    bl sub_8012DFC
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80089BE
    mov r0, #0
    strb r0, [r5,#4]
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
    bl sub_801DF0C
    mov r0, #0
    bl sub_801DFA2
    mov r0, #0
    mov r1, #0
    bl loc_801E792
loc_80089BE:
    bl sub_801E754
    cmp r0, #0
    bne locret_80089CA
    mov r0, #4
    str r0, [r5]
locret_80089CA:
    pop {pc}
// end of function sub_800898C

.thumb
sub_80089CC:
    push {lr}
    mov r0, #0
    bl sub_8012DFC
    mov r0, #1
    bl sub_8012DFC
    bl sub_800A032
    mov r0, #1
    bl battle_setFlags
    bl sub_800AE0C
    bl sub_800A6A6
    bl sub_800A97A
    tst r0, r0
    beq loc_80089F8
    bl sub_800AB7C
loc_80089F8:
    bl sub_800A152
    cmp r0, #1
    bne loc_8008A16
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x18]
    add r0, #1
    strb r0, [r1,#0x18]
    ldr r0, [pc, #0x8008d50-0x8008a0a-2] // =0x4000
    bl sub_801DFA2
    mov r0, #8
    str r0, [r5]
    b locret_8008A60
loc_8008A16:
    cmp r0, #2
    bne loc_8008A2A
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x19]
    add r0, #1
    strb r0, [r1,#0x19]
    mov r0, #0xc
    str r0, [r5]
    b locret_8008A60
loc_8008A2A:
    cmp r0, #7
    bne loc_8008A34
    mov r0, #0x14
    str r0, [r5]
    b locret_8008A60
loc_8008A34:
    bl sub_800A046
    cmp r0, #0xff
    beq loc_8008A4C
    strb r0, [r5,#5]
    bl sub_800A028
    mov r0, #0x18
    str r0, [r5]
    bl sub_801E15C
    b locret_8008A60
loc_8008A4C:
    bl sub_800A21C
    cmp r0, #0
    beq locret_8008A60
    cmp r0, #1
    bne locret_8008A60
    bl sub_800A028
    mov r0, #0x14
    str r0, [r5]
locret_8008A60:
    pop {pc}
    .word 0, 0, 0
    .byte 0, 0
    .word dword_8008A74
dword_8008A74:    .word 0x33250010, 0x64
// end of function sub_80089CC

.thumb
sub_8008A7C:
    push {lr}
    ldr r1, [pc, #0x8008a8c-0x8008a7e-2] // =off_8008A90
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8008A8C:    .word off_8008A90
off_8008A90:    .word sub_8008AA0+1
    .word sub_8008B10+1
    .word sub_8008B2E+1
    .word sub_8008B52+1
// end of function sub_8008A7C

.thumb
sub_8008AA0:
    push {r4,r6,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008AF4
    bl sub_800A84E
    add r6, r0, #0
    ldr r0, [pc, #0x8008d54-0x8008aae-2] // =0x4C43
    bl sub_801DACC
    ldr r0, [pc, #0x8008d54-0x8008ab4-4] // =0x4C43
    bl sub_801BED6
    bl sub_800A7E2
    bl sub_8014040
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r1, [r0,#0xd]
    strb r1, [r0,#0x10]
    mov r0, #4
    strb r0, [r5,#3]
    bl sub_802D246
    mov r2, #0x19
    mov r4, #0x41 
    mov r1, #2
    tst r0, r1
    bne loc_8008AE0
    mov r2, #0x1f
    mov r4, #0x66 
loc_8008AE0:
    cmp r6, #1
    bne loc_8008AE6
    mov r2, #0x24 
loc_8008AE6:
    add r0, r2, #0
    bl sub_80005D4
    strh r4, [r5,#8]
    mov r0, #0x14
    bl loc_801E792
loc_8008AF4:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801E754
    cmp r0, #0
    bne locret_8008B0E
    mov r0, #8
    ldrsh r0, [r5,r0]
    tst r0, r0
    bgt locret_8008B0E
    mov r0, #0xc
    strh r0, [r5,#2]
locret_8008B0E:
    pop {r4,r6,pc}
// end of function sub_8008AA0

.thumb
sub_8008B10:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008B20
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8008B20:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bgt locret_8008B2C
    mov r0, #8
    strh r0, [r5,#2]
locret_8008B2C:
    pop {pc}
// end of function sub_8008B10

.thumb
sub_8008B2E:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008B44
    mov r0, #0x58 
    bl loc_801E792
    mov r0, #0
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8008B44:
    bl sub_801E754
    cmp r0, #0
    bne locret_8008B50
    mov r0, #0xc
    strh r0, [r5,#2]
locret_8008B50:
    pop {pc}
// end of function sub_8008B2E

.thumb
sub_8008B52:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008B62
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8008B62:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bgt locret_8008B7A
    mov r0, #1
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
    mov r0, #0
    bl sub_800B6C2
locret_8008B7A:
    pop {pc}
// end of function sub_8008B52

.thumb
sub_8008B7C:
    push {r4,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008BC8
    ldr r0, [pc, #0x8008d54-0x8008b84-4] // =0x4C43
    bl sub_801DACC
    ldr r0, [pc, #0x8008d54-0x8008b8a-2] // =0x4C43
    bl sub_801BED6
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r1, [r0,#0xd]
    mov r2, #1
    eor r1, r2
    strb r1, [r0,#0x10]
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8008BAC
    mov r0, #0x1a
    bl sub_80005D4
loc_8008BAC:
    bl sub_802D246
    mov r1, #2
    tst r0, r1
    bne loc_8008BBA
    mov r4, #0x66 
    b loc_8008BBC
loc_8008BBA:
    mov r4, #0x41 
loc_8008BBC:
    strh r4, [r5,#8]
    mov r0, #0x18
    bl loc_801E792
    mov r0, #4
    strb r0, [r5,#3]
loc_8008BC8:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801E754
    cmp r0, #0
    bne locret_8008BEE
    mov r0, #8
    ldrsh r0, [r5,r0]
    tst r0, r0
    bgt locret_8008BEE
    mov r0, #2
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
    mov r0, #1
    bl sub_800B6C2
locret_8008BEE:
    pop {r4,pc}
// end of function sub_8008B7C

.thumb
sub_8008BF0:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008C12
    ldr r0, [pc, #0x8008d54-0x8008bf8-4] // =0x4C43
    bl sub_801DACC
    ldr r0, [pc, #0x8008d54-0x8008bfe-2] // =0x4C43
    bl sub_801BED6
    mov r0, #0x66 
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
    mov r0, #0x1c
    bl loc_801E792
loc_8008C12:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801E754
    cmp r0, #0
    bne locret_8008C56
    ldrh r0, [r5,#8]
    tst r0, r0
    blt locret_8008C56
    bl sub_802D246
    ldr r1, [pc, #0x8008d58-0x8008c2a-2] // =0x400
    tst r0, r1
    beq loc_8008C4C
    bl sub_800AF50
    cmp r0, #0
    beq loc_8008C4C
    cmp r0, #2
    beq loc_8008C4C
    cmp r0, #1
    bne loc_8008C46
    mov r0, #8
    str r0, [r5]
    b locret_8008C56
loc_8008C46:
    mov r0, #0xc
    str r0, [r5]
    b locret_8008C56
loc_8008C4C:
    mov r0, #3
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
locret_8008C56:
    pop {pc}
// end of function sub_8008BF0

.thumb
sub_8008C58:
    push {lr}
    ldr r1, [pc, #0x8008c68-0x8008c5a-2] // =off_8008C6C
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8008C68:    .word off_8008C6C
off_8008C6C:    .word sub_8008C7C+1
    .word sub_8008CAC+1
    .word sub_8008CCA+1
    .word sub_8008CEE+1
// end of function sub_8008C58

.thumb
sub_8008C7C:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008C9E
    ldr r0, [pc, #0x8008d54-0x8008c84-4] // =0x4C43
    bl sub_801DACC
    ldr r0, [pc, #0x8008d54-0x8008c8a-2] // =0x4C43
    bl sub_801BED6
    mov r0, #0x54 
    bl loc_801E792
    mov r0, #0
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8008C9E:
    bl sub_801E754
    cmp r0, #0
    bne locret_8008CAA
    mov r0, #4
    strh r0, [r5,#2]
locret_8008CAA:
    pop {pc}
// end of function sub_8008C7C

.thumb
sub_8008CAC:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008CBC
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8008CBC:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bgt locret_8008CC8
    mov r0, #8
    strh r0, [r5,#2]
locret_8008CC8:
    pop {pc}
// end of function sub_8008CAC

.thumb
sub_8008CCA:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008CE0
    mov r0, #0x1c
    bl loc_801E792
    mov r0, #0
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8008CE0:
    bl sub_801E754
    cmp r0, #0
    bne locret_8008CEC
    mov r0, #0xc
    strh r0, [r5,#2]
locret_8008CEC:
    pop {pc}
// end of function sub_8008CCA

.thumb
sub_8008CEE:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008CFE
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8008CFE:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bgt locret_8008D16
    mov r0, #7
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
    mov r0, #1
    bl sub_800B6C2
locret_8008D16:
    pop {pc}
// end of function sub_8008CEE

.thumb
sub_8008D18:
    push {lr}
    ldrb r0, [r5,#5]
    bl sub_800A07C
    tst r0, r0
    beq locret_8008D34
    mov r0, #0x9f
    bl sound_play
    mov r0, #4
    str r0, [r5]
    ldr r0, [pc, #0x8008d3c-0x8008d2e-2] // =0x200
    bl sub_801DACC
locret_8008D34:
    pop {pc}
    .balign 4, 0x00
    .word dword_2036820
off_8008D3C:    .word 0x200
// end of function sub_8008D18

.thumb
sub_8008D40:
    push {lr}
    ldr r0, [pc, #0x8008d4c-0x8008d42-2] // =byte_203CA70  // memBlock
    mov r1, #0xc  // numWords
    bl CpuSet_ZeroFillWord
    pop {pc}
off_8008D4C:    .word byte_203CA70
dword_8008D50:    .word 0x4000
dword_8008D54:    .word 0x4C43
off_8008D58:    .word 0x400
    .byte 0, 0, 0, 0
// end of function sub_8008D40

loc_8008D60:
    push {r5,lr}
    ldr r5, [pc, #0x8008d98-0x8008d62-2] // =byte_203CA70
    ldr r1, [pc, #0x8008d78-0x8008d64-4] // =off_8008D7C
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_802DE5C
    ldrb r0, [r5,#0x4] // (byte_203CA74 - 0x203ca70)
    pop {r5,pc}
    .balign 4, 0x00
off_8008D78:    .word off_8008D7C
off_8008D7C:    .word sub_8008D9C+1
    .word sub_8008DDC+1
    .word sub_8008E7C+1
    .word sub_8008F7C+1
    .word sub_8008FF0+1
    .word sub_8009058+1
    .word sub_8009118+1
off_8008D98:    .word byte_203CA70
.thumb
sub_8008D9C:
    push {lr}
    mov r0, #0
    bl sub_8012DFC
    mov r0, #1
    bl sub_8012DFC
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008DCE
    mov r0, #0
    strb r0, [r5,#4]
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
    bl sub_801DF0C
    mov r0, #0
    bl sub_801DFA2
    mov r0, #0
    mov r1, #0
    bl loc_801E792
loc_8008DCE:
    bl sub_801E754
    cmp r0, #0
    bne locret_8008DDA
    mov r0, #4
    str r0, [r5]
locret_8008DDA:
    pop {pc}
// end of function sub_8008D9C

.thumb
sub_8008DDC:
    push {lr}
    mov r0, #0
    bl sub_8012DFC
    mov r0, #1
    bl sub_8012DFC
    bl sub_800A032
    mov r0, #1
    bl battle_setFlags
    bl sub_800AE0C
    bl sub_800A6A6
    bl sub_800A97A
    tst r0, r0
    beq loc_8008E08
    bl sub_800AB7C
loc_8008E08:
    bl sub_800A152
    cmp r0, #1
    bne loc_8008E20
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x18]
    add r0, #1
    strb r0, [r1,#0x18]
    mov r0, #8
    str r0, [r5]
    b locret_8008E6A
loc_8008E20:
    cmp r0, #2
    bne loc_8008E34
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x19]
    add r0, #1
    strb r0, [r1,#0x19]
    mov r0, #0xc
    str r0, [r5]
    b locret_8008E6A
loc_8008E34:
    cmp r0, #7
    bne loc_8008E3E
    mov r0, #0x14
    str r0, [r5]
    b locret_8008E6A
loc_8008E3E:
    bl sub_800A046
    cmp r0, #0xff
    beq loc_8008E56
    strb r0, [r5,#5]
    bl sub_800A028
    mov r0, #0x18
    str r0, [r5]
    bl sub_801E15C
    b locret_8008E6A
loc_8008E56:
    bl sub_800A21C
    cmp r0, #0
    beq locret_8008E6A
    cmp r0, #1
    bne locret_8008E6A
    bl sub_800A028
    mov r0, #0x14
    str r0, [r5]
locret_8008E6A:
    pop {pc}
    .byte 0, 0, 0, 0
    .word dword_8008E74
dword_8008E74:    .word 0x33250010, 0x64
// end of function sub_8008DDC

.thumb
sub_8008E7C:
    push {lr}
    ldr r1, [pc, #0x8008e8c-0x8008e7e-2] // =off_8008E90
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8008E8C:    .word off_8008E90
off_8008E90:    .word sub_8008EA0+1
    .word sub_8008F10+1
    .word sub_8008F2E+1
    .word sub_8008F52+1
// end of function sub_8008E7C

.thumb
sub_8008EA0:
    push {r4,r6,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008EF4
    bl sub_800A84E
    add r6, r0, #0
    ldr r0, [pc, #0x8009150-0x8008eae-2] // =0x4C43
    bl sub_801DACC
    ldr r0, [pc, #0x8009150-0x8008eb4-4] // =0x4C43
    bl sub_801BED6
    bl sub_800A7E2
    bl sub_8014040
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r1, [r0,#0xd]
    strb r1, [r0,#0x10]
    mov r0, #4
    strb r0, [r5,#3]
    bl sub_802D246
    mov r2, #0x19
    mov r4, #0x41 
    mov r1, #2
    tst r0, r1
    bne loc_8008EE0
    mov r2, #0x1f
    mov r4, #0x66 
loc_8008EE0:
    cmp r6, #1
    bne loc_8008EE6
    mov r2, #0x24 
loc_8008EE6:
    add r0, r2, #0
    bl sub_80005D4
    strh r4, [r5,#8]
    mov r0, #0x14
    bl loc_801E792
loc_8008EF4:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801E754
    cmp r0, #0
    bne locret_8008F0E
    mov r0, #8
    ldrsh r0, [r5,r0]
    tst r0, r0
    bgt locret_8008F0E
    mov r0, #0xc
    strh r0, [r5,#2]
locret_8008F0E:
    pop {r4,r6,pc}
// end of function sub_8008EA0

.thumb
sub_8008F10:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008F20
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8008F20:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bgt locret_8008F2C
    mov r0, #8
    strh r0, [r5,#2]
locret_8008F2C:
    pop {pc}
// end of function sub_8008F10

.thumb
sub_8008F2E:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008F44
    mov r0, #0x58 
    bl loc_801E792
    mov r0, #0
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8008F44:
    bl sub_801E754
    cmp r0, #0
    bne locret_8008F50
    mov r0, #0xc
    strh r0, [r5,#2]
locret_8008F50:
    pop {pc}
// end of function sub_8008F2E

.thumb
sub_8008F52:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008F62
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_8008F62:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bgt locret_8008F7A
    mov r0, #1
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
    mov r0, #0
    bl sub_800B6C2
locret_8008F7A:
    pop {pc}
// end of function sub_8008F52

.thumb
sub_8008F7C:
    push {r4,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8008FC8
    ldr r0, [pc, #0x8009150-0x8008f84-4] // =0x4C43
    bl sub_801DACC
    ldr r0, [pc, #0x8009150-0x8008f8a-2] // =0x4C43
    bl sub_801BED6
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r1, [r0,#0xd]
    mov r2, #1
    eor r1, r2
    strb r1, [r0,#0x10]
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8008FAC
    mov r0, #0x1a
    bl sub_80005D4
loc_8008FAC:
    bl sub_802D246
    mov r1, #2
    tst r0, r1
    bne loc_8008FBA
    mov r4, #0x66 
    b loc_8008FBC
loc_8008FBA:
    mov r4, #0x41 
loc_8008FBC:
    strh r4, [r5,#8]
    mov r0, #0x18
    bl loc_801E792
    mov r0, #4
    strb r0, [r5,#3]
loc_8008FC8:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801E754
    cmp r0, #0
    bne locret_8008FEE
    mov r0, #8
    ldrsh r0, [r5,r0]
    tst r0, r0
    bgt locret_8008FEE
    mov r0, #2
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
    mov r0, #1
    bl sub_800B6C2
locret_8008FEE:
    pop {r4,pc}
// end of function sub_8008F7C

.thumb
sub_8008FF0:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009012
    ldr r0, [pc, #0x8009150-0x8008ff8-4] // =0x4C43
    bl sub_801DACC
    ldr r0, [pc, #0x8009150-0x8008ffe-2] // =0x4C43
    bl sub_801BED6
    mov r0, #0x66 
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
    mov r0, #0x1c
    bl loc_801E792
loc_8009012:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bl sub_801E754
    cmp r0, #0
    bne locret_8009056
    ldrh r0, [r5,#8]
    tst r0, r0
    blt locret_8009056
    bl sub_802D246
    ldr r1, [pc, #0x8009154-0x800902a-2] // =0x400
    tst r0, r1
    beq loc_800904C
    bl sub_800AF50
    cmp r0, #0
    beq loc_800904C
    cmp r0, #2
    beq loc_800904C
    cmp r0, #1
    bne loc_8009046
    mov r0, #8
    str r0, [r5]
    b locret_8009056
loc_8009046:
    mov r0, #0xc
    str r0, [r5]
    b locret_8009056
loc_800904C:
    mov r0, #3
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
locret_8009056:
    pop {pc}
// end of function sub_8008FF0

.thumb
sub_8009058:
    push {lr}
    ldr r1, [pc, #0x8009068-0x800905a-2] // =off_800906C
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8009068:    .word off_800906C
off_800906C:    .word sub_800907C+1
    .word sub_80090AC+1
    .word sub_80090CA+1
    .word sub_80090EE+1
// end of function sub_8009058

.thumb
sub_800907C:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800909E
    ldr r0, [pc, #0x8009150-0x8009084-4] // =0x4C43
    bl sub_801DACC
    ldr r0, [pc, #0x8009150-0x800908a-2] // =0x4C43
    bl sub_801BED6
    mov r0, #0x54 
    bl loc_801E792
    mov r0, #0
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_800909E:
    bl sub_801E754
    cmp r0, #0
    bne locret_80090AA
    mov r0, #4
    strh r0, [r5,#2]
locret_80090AA:
    pop {pc}
// end of function sub_800907C

.thumb
sub_80090AC:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80090BC
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_80090BC:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bgt locret_80090C8
    mov r0, #8
    strh r0, [r5,#2]
locret_80090C8:
    pop {pc}
// end of function sub_80090AC

.thumb
sub_80090CA:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80090E0
    mov r0, #0x1c
    bl loc_801E792
    mov r0, #0
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_80090E0:
    bl sub_801E754
    cmp r0, #0
    bne locret_80090EC
    mov r0, #0xc
    strh r0, [r5,#2]
locret_80090EC:
    pop {pc}
// end of function sub_80090CA

.thumb
sub_80090EE:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80090FE
    mov r0, #0x1e
    strh r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#3]
loc_80090FE:
    ldrh r0, [r5,#8]
    sub r0, #1
    strh r0, [r5,#8]
    bgt locret_8009116
    mov r0, #7
    strb r0, [r5,#4]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    strb r0, [r1,#0x14]
    mov r0, #1
    bl sub_800B6C2
locret_8009116:
    pop {pc}
// end of function sub_80090EE

.thumb
sub_8009118:
    push {lr}
    ldrb r0, [r5,#5]
    bl sub_800A07C
    tst r0, r0
    beq locret_8009134
    mov r0, #0x9f
    bl sound_play
    mov r0, #4
    str r0, [r5]
    ldr r0, [pc, #0x800913c-0x800912e-2] // =0x200
    bl sub_801DACC
locret_8009134:
    pop {pc}
    .balign 4, 0x00
    .word dword_2036820
off_800913C:    .word 0x200
// end of function sub_8009118

.thumb
sub_8009140:
    push {lr}
    ldr r0, [pc, #0x800914c-0x8009142-2] // =byte_203CA70  // memBlock
    mov r1, #0xc  // numWords
    bl CpuSet_ZeroFillWord
    pop {pc}
off_800914C:    .word byte_203CA70
dword_8009150:    .word 0x4C43
off_8009154:    .word 0x400
// end of function sub_8009140

loc_8009158:
    push {lr}
    ldr r1, [pc, #0x80091b8-0x800915a-2] // =off_80091BC
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq locret_80091B6
    bl sub_80103EC
    ldrh r1, [r0,#0x26]
    ldrh r0, [r0,#0x24]
    lsr r1, r1, #2
    cmp r0, r1
    bgt loc_800919A
    ldrh r0, [r5,#0x20]
    cmp r0, #0
    bne locret_80091B6
    mov r0, #1
    strh r0, [r5,#0x20]
    mov r0, #0x1f
    ldr r1, [pc, #0x80091e4-0x8009188-4] // =0xFFFF
    ldr r2, [pc, #0x80091e8-0x800918a-2] // =0x100
    bl sub_800065A
    mov r0, #0x1f
    ldr r1, [pc, #0x80091ec-0x8009192-2] // =0x119
    bl sub_8000672
    b locret_80091B6
loc_800919A:
    ldrh r0, [r5,#0x20]
    cmp r0, #0
    beq locret_80091B6
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #0x1f
    ldr r1, [pc, #0x80091e4-0x80091a6-2] // =0xFFFF
    mov r2, #0
    bl sub_800065A
    mov r0, #0x1f
    ldr r1, [pc, #0x80091e8-0x80091b0-4] // =0x100
    bl sub_8000672
locret_80091B6:
    pop {pc}
off_80091B8:    .word off_80091BC
off_80091BC:    .word sub_80091F0+1
    .word sub_80092A0+1
    .word sub_8009338+1
    .word sub_800938A+1
    .word sub_800945C+1
    .word sub_80094DA+1
    .word sub_800951E+1
    .word sub_8009552+1
    .word sub_8009594+1
    .word sub_80095C8+1
dword_80091E4:    .word 0xFFFF
off_80091E8:    .word 0x100
dword_80091EC:    .word 0x11A
.thumb
sub_80091F0:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009240
    bl sub_802D246
    ldr r1, [pc, #0x8009278-0x80091fc-4] // =0x400
    tst r0, r1
    bne loc_800920A
    ldr r1, [r5,#0x3c]
    ldrb r1, [r1,#5]
    strb r1, [r5,#0x1a]
    b loc_8009210
loc_800920A:
    ldrb r1, [r5,#0x1a]
    add r1, #1
    strb r1, [r5,#0x1a]
loc_8009210:
    bl sub_80E06F8
    bl sub_8007358
    bl sub_800A028
    bl sub_8014178
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_800922E
    mov r0, #0x15
    b loc_8009232
loc_800922E:
    ldr r0, [r5,#0x3c]
    ldrb r0, [r0,#2]
loc_8009232:
    cmp r0, #0x63 
    beq loc_800923A
    bl sub_80005D4
loc_800923A:
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009276
loc_8009240:
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_800924E
    bl sub_800927C
    mov r0, #4
    strb r0, [r5,#2]
loc_800924E:
    bl sub_800139A
    lsr r0, r0, #2
    bcc locret_8009276
    mov r0, #1
    bl sub_801DA48
    mov r0, #1
    bl sub_801BECC
    mov r4, #4
    mov r0, #0x17
    mov r1, #0x35 
    bl sub_802F164
    beq loc_8009270
    mov r4, #0x24 
loc_8009270:
    strb r4, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009276:
    pop {r4,r6,r7,pc}
off_8009278:    .word 0x400
// end of function sub_80091F0

.thumb
sub_800927C:
    push {lr}
    ldr r0, [pc, #0x800929c-0x800927e-2] // =0x484
    bl sub_801BECC
    ldr r0, [pc, #0x800929c-0x8009284-4] // =0x484
    bl sub_801DA48
    bl sub_801E5F8
    bl sub_801DA24
    mov r0, #0
    mov r1, #0
    bl sub_801E0A0
    pop {pc}
off_800929C:    .word 0x484
// end of function sub_800927C

.thumb
sub_80092A0:
    push {lr}
    ldr r1, [pc, #0x80092b0-0x80092a2-2] // =off_80092B4
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80092B0:    .word off_80092B4
off_80092B4:    .word sub_80092C0+1
    .word sub_80092F0+1
    .word sub_8009314+1
// end of function sub_80092A0

.thumb
sub_80092C0:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80092D8
    ldrb r1, [r5,#0x1a]
    tst r1, r1
    beq loc_80092E6
    mov r0, #0xa
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80092EE
loc_80092D8:
    ldrh r0, [r5,#0x28]
    sub r0, #1
    strh r0, [r5,#0x28]
    bge locret_80092EE
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
loc_80092E6:
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_80092EE:
    pop {pc}
// end of function sub_80092C0

.thumb
sub_80092F0:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009306
    mov r0, #0
    ldrb r1, [r5,#0x1a]
    bl loc_801E792
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009312
loc_8009306:
    bl sub_801E754
    tst r0, r0
    bne locret_8009312
    mov r0, #8
    strh r0, [r5,#2]
locret_8009312:
    pop {pc}
// end of function sub_80092F0

.thumb
sub_8009314:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009326
    mov r0, #0xa
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009336
loc_8009326:
    ldrh r0, [r5,#0x28]
    sub r0, #1
    strh r0, [r5,#0x28]
    bge locret_8009336
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009336:
    pop {pc}
// end of function sub_8009314

.thumb
sub_8009338:
    push {lr}
    ldrb r0, [r5,#3]
    cmp r0, #0
    bne loc_800934E
    mov r0, #4
    bl sub_800A9CA
    mov r0, #1
    strb r0, [r5,#3]
    bl sub_8026840
loc_800934E:
    bl loc_8026A28
    cmp r0, #0
    beq locret_8009388
    cmp r0, #2
    bne loc_8009360
    bl sub_800AABC
    b locret_8009388
loc_8009360:
    mov r0, #0
    bl sub_80103BC
    cmp r0, #0
    beq loc_8009370
    ldr r0, [r0,#0x58]
    mov r1, #1
    strb r1, [r0,#0xf]
loc_8009370:
    mov r0, #1
    bl sub_80103BC
    cmp r0, #0
    beq loc_8009380
    ldr r0, [r0,#0x58]
    mov r1, #1
    strb r1, [r0,#0xf]
loc_8009380:
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009388:
    pop {pc}
// end of function sub_8009338

.thumb
sub_800938A:
    push {r4,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800939A
    bl sub_80084C0
    mov r0, #4
    strb r0, [r5,#3]
loc_800939A:
    bl loc_800801C
    bl sub_800B090
    cmp r0, #6
    bne loc_80093B0
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_800945A
loc_80093B0:
    cmp r0, #0
    beq locret_800945A
    push {r0}
    ldrb r0, [r5,#7]
    bl sub_800B6E6
    pop {r0}
    cmp r0, #1
    bne loc_8009414
    mov r0, #1
    bl sub_800A840
    bl sub_800AF84
    strb r0, [r5,#0x1e]
    bl sub_800B6B6
    bl sub_800B6F2
    bl sub_802D234
    mov r2, #0x18
    cmp r0, #4
    beq loc_8009454
    mov r2, #0x1c
    cmp r0, #5
    beq loc_8009454
    mov r2, #0x20 
    cmp r0, #8
    beq loc_8009454
    bl sub_802D246
    mov r1, #2
    tst r0, r1
    beq loc_8009452
    bl sub_802D246
    mov r2, #0x10
    ldr r1, [pc, #0x80095f8-0x80093fc-4] // =0x400
    tst r0, r1
    beq loc_8009454
    push {r2}
    bl sub_800AF50
    tst r0, r0
    pop {r2}
    beq loc_8009452
    cmp r0, #2
    beq loc_8009452
    b loc_8009454
loc_8009414:
    cmp r0, #2
    bne loc_8009452
    mov r0, #2
    bl sub_800A840
    bl sub_800AF84
    strb r0, [r5,#0x1e]
    bl sub_800B6B6
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8009452
    mov r1, #2
    tst r0, r1
    beq loc_8009452
    mov r2, #0x10
    ldr r1, [pc, #0x80095f8-0x800943a-2] // =0x400
    tst r0, r1
    beq loc_8009454
    push {r2}
    bl sub_800AF50
    tst r0, r0
    pop {r2}
    beq loc_8009452
    cmp r0, #2
    beq loc_8009452
    b loc_8009454
loc_8009452:
    mov r2, #0x14
loc_8009454:
    strb r2, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_800945A:
    pop {r4,pc}
// end of function sub_800938A

.thumb
sub_800945C:
    push {lr}
    ldr r1, [pc, #0x800946c-0x800945e-2] // =off_8009470
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_800946C:    .word off_8009470
off_8009470:    .word sub_8009478+1
    .word sub_80094B6+1
// end of function sub_800945C

.thumb
sub_8009478:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800948E
    bl sub_800B428
    mov r0, #0
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80094B4
loc_800948E:
    ldr r0, [pc, #0x80095fc-0x800948e-2] // =0x1F2F3F4F
    bl sub_800B46C
    tst r0, r0
    beq loc_80094A6
    bl sub_800B460
    bl sub_800B444
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
loc_80094A6:
    ldrh r0, [r5,#0x28]
    add r0, #1
    strh r0, [r5,#0x28]
    cmp r0, #0xb4
    ble locret_80094B4
    mov r0, #0xc
    str r0, [r5]
locret_80094B4:
    pop {pc}
// end of function sub_8009478

.thumb
sub_80094B6:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80094C8
    ldr r0, [pc, #0x8009600-0x80094be-2] // =unk_2035260
    bl sub_802C34E
    mov r0, #4
    strb r0, [r5,#3]
loc_80094C8:
    bl loc_802BD60
    tst r0, r0
    bne locret_80094D8
    mov r0, #0x14
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_80094D8:
    pop {pc}
// end of function sub_80094B6

.thumb
sub_80094DA:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009508
    ldr r1, [pc, #0x8009604-0x80094e2-2] // =0x171
    ldr r2, [pc, #0x8009608-0x80094e4-4] // =0x17D
    bl sub_800A7A6
    cmp r0, #0
    beq loc_80094FA
    bl sub_800A832
    cmp r0, #1
    bne loc_80094FA
    mov r0, #4
    b loc_80094FC
loc_80094FA:
    mov r0, #0xc
loc_80094FC:
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5,#3]
    b locret_800951C
loc_8009508:
    bl engine_isScreeneffectAnimating
    beq locret_800951C
    bl sub_8000784
    mov r0, #0x1a
    bl sub_80035A2
    mov r0, #8
    str r0, [r5]
locret_800951C:
    pop {pc}
// end of function sub_80094DA

.thumb
sub_800951E:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009534
    ldr r0, [pc, #0x800960c-0x8009526-2] // =dword_86F3F5C
    mov r1, #0xa
    bl chatbox_runScript
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009550
loc_8009534:
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_8009550
    bl sub_802D246
    mov r2, #0x10
    mov r1, #2
    tst r0, r1
    bne loc_800954A
    mov r2, #0x14
loc_800954A:
    strb r2, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009550:
    pop {pc}
// end of function sub_800951E

.thumb
sub_8009552:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009576
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldrb r0, [r2,#7]
    cmp r0, #1
    bgt loc_8009568
    mov r1, #0x10
    b loc_800956A
loc_8009568:
    mov r1, #0x20 
loc_800956A:
    ldr r0, [pc, #0x8009610-0x800956a-2] // =dword_86F4498
    bl chatbox_runScript
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009592
loc_8009576:
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_8009592
    bl sub_802D246
    mov r2, #0x10
    mov r1, #2
    tst r0, r1
    bne loc_800958C
    mov r2, #0x14
loc_800958C:
    strb r2, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009592:
    pop {pc}
// end of function sub_8009552

.thumb
sub_8009594:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80095AA
    ldr r0, [pc, #0x8009614-0x800959c-4] // =dword_86F53CC
    mov r1, #3
    bl chatbox_runScript
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80095C6
loc_80095AA:
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_80095C6
    bl sub_802D246
    mov r2, #0x10
    mov r1, #2
    tst r0, r1
    bne loc_80095C0
    mov r2, #0x14
loc_80095C0:
    strb r2, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_80095C6:
    pop {pc}
// end of function sub_8009594

.thumb
sub_80095C8:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80095E4
    bl getPETNaviSelect
    mov r1, #0x73 
    add r1, r1, r0
    ldr r0, [pc, #0x8009618-0x80095d8-4] // =dword_87370C0
    bl chatbox_runScript
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80095F4
loc_80095E4:
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_80095F4
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_80095F4:
    pop {pc}
    .balign 4, 0x00
off_80095F8:    .word 0x400
dword_80095FC:    .word 0x1F2F3F4F
off_8009600:    .word unk_2035260
dword_8009604:    .word 0x173
dword_8009608:    .word 0x17E
off_800960C:    .word dword_86F3F5C
off_8009610:    .word dword_86F4498
off_8009614:    .word dword_86F53CC
off_8009618:    .word dword_87370C0
// end of function sub_80095C8

loc_800961C:
    push {lr}
    ldr r1, [pc, #0x800962c-0x800961e-2] // =off_8009630
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_800962C:    .word off_8009630
off_8009630:    .word sub_8009658+1
    .word sub_8009734+1
    .word sub_80097CC+1
    .word sub_800980E+1
    .word sub_80098BC+1
    .word sub_800993A+1
    .word 0x0, 0x0, 0x0
    .word sub_8009966+1
.thumb
sub_8009658:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80096A8
    bl sub_802D246
    ldr r1, [pc, #0x8009994-0x8009664-4] // =0x400
    tst r0, r1
    bne loc_8009672
    ldr r1, [r5,#0x3c]
    ldrb r1, [r1,#5]
    strb r1, [r5,#0x1a]
    b loc_8009678
loc_8009672:
    ldrb r1, [r5,#0x1a]
    add r1, #1
    strb r1, [r5,#0x1a]
loc_8009678:
    bl sub_80E06F8
    bl sub_8007358
    bl sub_800A028
    bl sub_8014178
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8009696
    mov r0, #0x15
    b loc_800969A
loc_8009696:
    ldr r0, [r5,#0x3c]
    ldrb r0, [r0,#2]
loc_800969A:
    cmp r0, #0x63 
    beq loc_80096A2
    bl sub_80005D4
loc_80096A2:
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80096DE
loc_80096A8:
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_80096B6
    bl sub_80096E0
    mov r0, #4
    strb r0, [r5,#2]
loc_80096B6:
    bl sub_800139A
    lsr r0, r0, #2
    bcc locret_80096DE
    mov r0, #1
    bl sub_801DA48
    mov r0, #1
    bl sub_801BECC
    mov r4, #4
    mov r0, #0x17
    mov r1, #0x35 
    bl sub_802F164
    beq loc_80096D8
    mov r4, #0x24 
loc_80096D8:
    strb r4, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_80096DE:
    pop {r4,r6,r7,pc}
// end of function sub_8009658

.thumb
sub_80096E0:
    push {lr}
    ldr r0, [pc, #0x8009700-0x80096e2-2] // =0x404
    bl sub_801BECC
    ldr r0, [pc, #0x8009700-0x80096e8-4] // =0x404
    bl sub_801DA48
    bl sub_801DA24
    bl sub_801DF0C
    mov r0, #0
    bl sub_801DFA2
    pop {pc}
    .byte 0, 0
off_8009700:    .word 0x404
// end of function sub_80096E0

.thumb
sub_8009704:
    push {lr}
    mov r0, #0x80
    ldr r0, [r5,r0]
    mov r1, #0x84
    ldr r1, [r5,r1]
    bl sub_8009720
    mov r0, #0x90
    ldr r0, [r5,r0]
    mov r1, #0x94
    ldr r1, [r5,r1]
    bl sub_8009720
    pop {pc}
// end of function sub_8009704

.thumb
sub_8009720:
    cmp r0, #0
    beq locret_8009732
    cmp r1, #0
    beq locret_8009732
    ldr r2, [r0,#0x24]
    ldr r3, [r1,#0x24]
    add r2, r2, r3
    str r2, [r0,#0x24]
    str r2, [r1,#0x24]
locret_8009732:
    mov pc, lr
// end of function sub_8009720

.thumb
sub_8009734:
    push {lr}
    ldr r1, [pc, #0x8009744-0x8009736-2] // =off_8009748
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8009744:    .word off_8009748
off_8009748:    .word sub_8009754+1
    .word sub_8009784+1
    .word sub_80097A8+1
// end of function sub_8009734

.thumb
sub_8009754:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800976C
    ldrb r1, [r5,#0x1a]
    tst r1, r1
    beq loc_800977A
    mov r0, #0xa
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009782
loc_800976C:
    ldrh r0, [r5,#0x28]
    sub r0, #1
    strh r0, [r5,#0x28]
    bge locret_8009782
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
loc_800977A:
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009782:
    pop {pc}
// end of function sub_8009754

.thumb
sub_8009784:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800979A
    mov r0, #0
    ldrb r1, [r5,#0x1a]
    bl loc_801E792
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80097A6
loc_800979A:
    bl sub_801E754
    tst r0, r0
    bne locret_80097A6
    mov r0, #8
    strh r0, [r5,#2]
locret_80097A6:
    pop {pc}
// end of function sub_8009784

.thumb
sub_80097A8:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80097BA
    mov r0, #0xa
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_80097CA
loc_80097BA:
    ldrh r0, [r5,#0x28]
    sub r0, #1
    strh r0, [r5,#0x28]
    bge locret_80097CA
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_80097CA:
    pop {pc}
// end of function sub_80097A8

.thumb
sub_80097CC:
    push {lr}
    ldrb r0, [r5,#3]
    cmp r0, #0
    bne loc_80097E8
    mov r0, #4
    bl sub_800A9CA
    mov r0, #1
    strb r0, [r5,#3]
    bl sub_802A866
    mov r0, #1
    bl battle_setFlags
loc_80097E8:
    bl loc_802A87C
    cmp r0, #0
    beq locret_800980C
    cmp r0, #2
    bne loc_80097FA
    bl sub_800AABC
    b locret_800980C
loc_80097FA:
    mov r0, #4
    bl sub_800A9D6
    bl sub_8009704
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_800980C:
    pop {pc}
// end of function sub_80097CC

.thumb
sub_800980E:
    push {r4,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_800981E
    bl sub_8008928
    mov r0, #4
    strb r0, [r5,#3]
loc_800981E:
    bl loc_80084F0
    bl sub_800B090
    cmp r0, #0
    beq locret_80098BA
    push {r0}
    ldrb r0, [r5,#7]
    bl sub_800B6E6
    pop {r0}
    cmp r0, #1
    bne loc_8009870
    mov r0, #1
    bl sub_800A840
    bl sub_800AF84
    strb r0, [r5,#0x1e]
    bl sub_800B6B6
    bl sub_800B6F2
    bl sub_802D246
    mov r1, #2
    tst r0, r1
    beq loc_80098B2
    bl sub_802D246
    mov r2, #0x10
    ldr r1, [pc, #0x8009994-0x800985c-4] // =0x400
    tst r0, r1
    beq loc_80098B4
    push {r2}
    bl sub_800AF50
    tst r0, r0
    pop {r2}
    beq loc_80098B2
    b loc_80098B4
loc_8009870:
    cmp r0, #2
    bne loc_80098A8
    mov r0, #2
    bl sub_800A840
    bl sub_800AF84
    strb r0, [r5,#0x1e]
    bl sub_800B6B6
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_80098B2
    mov r1, #2
    tst r0, r1
    beq loc_80098B2
    ldr r1, [pc, #0x8009994-0x8009894-4] // =0x400
    tst r0, r1
    beq loc_80098B4
    push {r2}
    bl sub_800AF50
    tst r0, r0
    pop {r2}
    beq loc_80098B2
    b loc_80098B4
loc_80098A8:
    cmp r0, #7
    bne loc_80098B2
    mov r0, #7
    bl sub_800A840
loc_80098B2:
    mov r2, #0x14
loc_80098B4:
    strb r2, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_80098BA:
    pop {r4,pc}
// end of function sub_800980E

.thumb
sub_80098BC:
    push {lr}
    ldr r1, [pc, #0x80098cc-0x80098be-2] // =off_80098D0
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80098CC:    .word off_80098D0
off_80098D0:    .word sub_80098D8+1
    .word sub_8009916+1
// end of function sub_80098BC

.thumb
sub_80098D8:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80098EE
    bl sub_800B428
    mov r0, #0
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009914
loc_80098EE:
    ldr r0, [pc, #0x8009998-0x80098ee-2] // =0x1F2F3F4F
    bl sub_800B46C
    tst r0, r0
    beq loc_8009906
    bl sub_800B460
    bl sub_800B444
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
loc_8009906:
    ldrh r0, [r5,#0x28]
    add r0, #1
    strh r0, [r5,#0x28]
    cmp r0, #0xb4
    ble locret_8009914
    mov r0, #0xc
    str r0, [r5]
locret_8009914:
    pop {pc}
// end of function sub_80098D8

.thumb
sub_8009916:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009928
    ldr r0, [pc, #0x800999c-0x800991e-2] // =unk_2035260
    bl sub_802C34E
    mov r0, #4
    strb r0, [r5,#3]
loc_8009928:
    bl loc_802BD60
    tst r0, r0
    bne locret_8009938
    mov r0, #0x14
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009938:
    pop {pc}
// end of function sub_8009916

.thumb
sub_800993A:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009950
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009964
loc_8009950:
    bl engine_isScreeneffectAnimating
    beq locret_8009964
    bl sub_8000784
    mov r0, #0x1a
    bl sub_80035A2
    mov r0, #8
    str r0, [r5]
locret_8009964:
    pop {pc}
// end of function sub_800993A

.thumb
sub_8009966:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009982
    bl getPETNaviSelect
    mov r1, #0x73 
    add r1, r1, r0
    ldr r0, [pc, #0x80099a0-0x8009976-2] // =dword_87370C0
    bl chatbox_runScript
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009992
loc_8009982:
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_8009992
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009992:
    pop {pc}
off_8009994:    .word 0x400
dword_8009998:    .word 0x1F2F3F4F
off_800999C:    .word unk_2035260
off_80099A0:    .word dword_87370C0
// end of function sub_8009966

loc_80099A4:
    push {lr}
    ldr r1, [pc, #0x80099b4-0x80099a6-2] // =off_80099B8
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80099B4:    .word off_80099B8
off_80099B8:    .word sub_80099E0+1
    .word sub_8009A88+1
    .word 0x0
    .word sub_8009B20+1
    .word sub_8009BAC+1
    .word sub_8009C2A+1
    .word 0x0, 0x0, 0x0
    .word sub_8009C56+1
.thumb
sub_80099E0:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009A30
    bl sub_802D246
    ldr r1, [pc, #0x8009c84-0x80099ec-4] // =0x400
    tst r0, r1
    bne loc_80099FA
    ldr r1, [r5,#0x3c]
    ldrb r1, [r1,#5]
    strb r1, [r5,#0x1a]
    b loc_8009A00
loc_80099FA:
    ldrb r1, [r5,#0x1a]
    add r1, #1
    strb r1, [r5,#0x1a]
loc_8009A00:
    bl sub_80E06F8
    bl sub_8007358
    bl sub_800A028
    bl sub_8014178
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8009A1E
    mov r0, #0x15
    b loc_8009A22
loc_8009A1E:
    ldr r0, [r5,#0x3c]
    ldrb r0, [r0,#2]
loc_8009A22:
    cmp r0, #0x63 
    beq loc_8009A2A
    bl sub_80005D4
loc_8009A2A:
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009A66
loc_8009A30:
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_8009A3E
    bl sub_8009A68
    mov r0, #4
    strb r0, [r5,#2]
loc_8009A3E:
    bl sub_800139A
    lsr r0, r0, #2
    bcc locret_8009A66
    mov r0, #1
    bl sub_801DA48
    mov r0, #1
    bl sub_801BECC
    mov r4, #4
    mov r0, #0x17
    mov r1, #0x35 
    bl sub_802F164
    beq loc_8009A60
    mov r4, #0x24 
loc_8009A60:
    strb r4, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009A66:
    pop {r4,r6,r7,pc}
// end of function sub_80099E0

.thumb
sub_8009A68:
    push {lr}
    ldr r0, [pc, #0x8009a84-0x8009a6a-2] // =0x404
    bl sub_801BECC
    ldr r0, [pc, #0x8009a84-0x8009a70-4] // =0x404
    bl sub_801DA48
    bl sub_801DA24
    mov r0, #0
    mov r1, #0
    bl sub_801E0A0
    pop {pc}
off_8009A84:    .word 0x404
// end of function sub_8009A68

.thumb
sub_8009A88:
    push {lr}
    ldr r1, [pc, #0x8009a98-0x8009a8a-2] // =off_8009A9C
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8009A98:    .word off_8009A9C
off_8009A9C:    .word sub_8009AA8+1
    .word sub_8009AD8+1
    .word sub_8009AFC+1
// end of function sub_8009A88

.thumb
sub_8009AA8:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009AC0
    ldrb r1, [r5,#0x1a]
    tst r1, r1
    beq loc_8009ACE
    mov r0, #0xa
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009AD6
loc_8009AC0:
    ldrh r0, [r5,#0x28]
    sub r0, #1
    strh r0, [r5,#0x28]
    bge locret_8009AD6
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
loc_8009ACE:
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009AD6:
    pop {pc}
// end of function sub_8009AA8

.thumb
sub_8009AD8:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009AEE
    mov r0, #0
    ldrb r1, [r5,#0x1a]
    bl loc_801E792
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009AFA
loc_8009AEE:
    bl sub_801E754
    tst r0, r0
    bne locret_8009AFA
    mov r0, #8
    strh r0, [r5,#2]
locret_8009AFA:
    pop {pc}
// end of function sub_8009AD8

.thumb
sub_8009AFC:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009B0E
    mov r0, #0xa
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009B1E
loc_8009B0E:
    ldrh r0, [r5,#0x28]
    sub r0, #1
    strh r0, [r5,#0x28]
    bge locret_8009B1E
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009B1E:
    pop {pc}
// end of function sub_8009AFC

.thumb
sub_8009B20:
    push {r4,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009B30
    bl sub_8008D40
    mov r0, #4
    strb r0, [r5,#3]
loc_8009B30:
    bl loc_8008950
    bl sub_800B090
    cmp r0, #0
    beq locret_8009BAA
    push {r0}
    ldrb r0, [r5,#7]
    bl sub_800B6E6
    pop {r0}
    cmp r0, #1
    bne loc_8009B60
    mov r0, #1
    bl sub_800A840
    bl sub_800AF84
    strb r0, [r5,#0x1e]
    bl sub_800B6B6
    bl sub_800B6F2
    b loc_8009BA2
loc_8009B60:
    cmp r0, #2
    bne loc_8009B98
    mov r0, #2
    bl sub_800A840
    bl sub_800AF84
    strb r0, [r5,#0x1e]
    bl sub_800B6B6
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8009BA2
    mov r1, #2
    tst r0, r1
    beq loc_8009BA2
    ldr r1, [pc, #0x8009c84-0x8009b84-4] // =0x400
    tst r0, r1
    beq loc_8009BA4
    push {r2}
    bl sub_800AF50
    tst r0, r0
    pop {r2}
    beq loc_8009BA2
    b loc_8009BA4
loc_8009B98:
    cmp r0, #7
    bne loc_8009BA2
    mov r0, #7
    bl sub_800A840
loc_8009BA2:
    mov r2, #0x14
loc_8009BA4:
    strb r2, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009BAA:
    pop {r4,pc}
// end of function sub_8009B20

.thumb
sub_8009BAC:
    push {lr}
    ldr r1, [pc, #0x8009bbc-0x8009bae-2] // =off_8009BC0
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8009BBC:    .word off_8009BC0
off_8009BC0:    .word sub_8009BC8+1
    .word sub_8009C06+1
// end of function sub_8009BAC

.thumb
sub_8009BC8:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009BDE
    bl sub_800B428
    mov r0, #0
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009C04
loc_8009BDE:
    ldr r0, [pc, #0x8009c88-0x8009bde-2] // =0x1F2F3F4F
    bl sub_800B46C
    tst r0, r0
    beq loc_8009BF6
    bl sub_800B460
    bl sub_800B444
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
loc_8009BF6:
    ldrh r0, [r5,#0x28]
    add r0, #1
    strh r0, [r5,#0x28]
    cmp r0, #0xb4
    ble locret_8009C04
    mov r0, #0xc
    str r0, [r5]
locret_8009C04:
    pop {pc}
// end of function sub_8009BC8

.thumb
sub_8009C06:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009C18
    ldr r0, [pc, #0x8009c8c-0x8009c0e-2] // =unk_2035260
    bl sub_802C34E
    mov r0, #4
    strb r0, [r5,#3]
loc_8009C18:
    bl loc_802BD60
    tst r0, r0
    bne locret_8009C28
    mov r0, #0x14
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009C28:
    pop {pc}
// end of function sub_8009C06

.thumb
sub_8009C2A:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009C40
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009C54
loc_8009C40:
    bl engine_isScreeneffectAnimating
    beq locret_8009C54
    bl sub_8000784
    mov r0, #0x1a
    bl sub_80035A2
    mov r0, #8
    str r0, [r5]
locret_8009C54:
    pop {pc}
// end of function sub_8009C2A

.thumb
sub_8009C56:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009C72
    bl getPETNaviSelect
    mov r1, #0x73 
    add r1, r1, r0
    ldr r0, [pc, #0x8009c90-0x8009c66-2] // =dword_87370C0
    bl chatbox_runScript
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009C82
loc_8009C72:
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_8009C82
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009C82:
    pop {pc}
off_8009C84:    .word 0x400
dword_8009C88:    .word 0x1F2F3F4F
off_8009C8C:    .word unk_2035260
off_8009C90:    .word dword_87370C0
// end of function sub_8009C56

loc_8009C94:
    push {lr}
    ldr r1, [pc, #0x8009ca4-0x8009c96-2] // =off_8009CA8
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8009CA4:    .word off_8009CA8
off_8009CA8:    .word sub_8009CD0+1
    .word sub_8009D78+1
    .word sub_8009E10+1
    .word sub_8009E56+1
    .word loc_8009EE2+1
    .word sub_8009F5E+1
    .word 0x0, 0x0, 0x0
    .word sub_8009F8A+1
.thumb
sub_8009CD0:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009D20
    bl sub_802D246
    ldr r1, [pc, #0x8009fb8-0x8009cdc-4] // =0x400
    tst r0, r1
    bne loc_8009CEA
    ldr r1, [r5,#0x3c]
    ldrb r1, [r1,#5]
    strb r1, [r5,#0x1a]
    b loc_8009CF0
loc_8009CEA:
    ldrb r1, [r5,#0x1a]
    add r1, #1
    strb r1, [r5,#0x1a]
loc_8009CF0:
    bl sub_80E06F8
    bl sub_8007358
    bl sub_800A028
    bl sub_8014178
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8009D0E
    mov r0, #0x15
    b loc_8009D12
loc_8009D0E:
    ldr r0, [r5,#0x3c]
    ldrb r0, [r0,#2]
loc_8009D12:
    cmp r0, #0x63 
    beq loc_8009D1A
    bl sub_80005D4
loc_8009D1A:
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009D56
loc_8009D20:
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_8009D2E
    bl sub_8009D58
    mov r0, #4
    strb r0, [r5,#2]
loc_8009D2E:
    bl sub_800139A
    lsr r0, r0, #2
    bcc locret_8009D56
    mov r0, #1
    bl sub_801DA48
    mov r0, #1
    bl sub_801BECC
    mov r4, #4
    mov r0, #0x17
    mov r1, #0x35 
    bl sub_802F164
    beq loc_8009D50
    mov r4, #0x24 
loc_8009D50:
    strb r4, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009D56:
    pop {r4,r6,r7,pc}
// end of function sub_8009CD0

.thumb
sub_8009D58:
    push {lr}
    ldr r0, [pc, #0x8009d74-0x8009d5a-2] // =0x404
    bl sub_801BECC
    ldr r0, [pc, #0x8009d74-0x8009d60-4] // =0x404
    bl sub_801DA48
    bl sub_801DA24
    mov r0, #0
    mov r1, #0
    bl sub_801E0A0
    pop {pc}
off_8009D74:    .word 0x404
// end of function sub_8009D58

.thumb
sub_8009D78:
    push {lr}
    ldr r1, [pc, #0x8009d88-0x8009d7a-2] // =off_8009D8C
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8009D88:    .word off_8009D8C
off_8009D8C:    .word sub_8009D98+1
    .word sub_8009DC8+1
    .word sub_8009DEC+1
// end of function sub_8009D78

.thumb
sub_8009D98:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009DB0
    ldrb r1, [r5,#0x1a]
    tst r1, r1
    beq loc_8009DBE
    mov r0, #0xa
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009DC6
loc_8009DB0:
    ldrh r0, [r5,#0x28]
    sub r0, #1
    strh r0, [r5,#0x28]
    bge locret_8009DC6
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
loc_8009DBE:
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009DC6:
    pop {pc}
// end of function sub_8009D98

.thumb
sub_8009DC8:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009DDE
    mov r0, #0
    ldrb r1, [r5,#0x1a]
    bl loc_801E792
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009DEA
loc_8009DDE:
    bl sub_801E754
    tst r0, r0
    bne locret_8009DEA
    mov r0, #8
    strh r0, [r5,#2]
locret_8009DEA:
    pop {pc}
// end of function sub_8009DC8

.thumb
sub_8009DEC:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009DFE
    mov r0, #0xa
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009E0E
loc_8009DFE:
    ldrh r0, [r5,#0x28]
    sub r0, #1
    strh r0, [r5,#0x28]
    bge locret_8009E0E
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009E0E:
    pop {pc}
// end of function sub_8009DEC

.thumb
sub_8009E10:
    push {lr}
    ldr r1, [pc, #0x8009e20-0x8009e12-2] // =off_8009E24
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8009E20:    .word off_8009E24
off_8009E24:    .word sub_8009E2C+1
    .word sub_8009E40+1
// end of function sub_8009E10

.thumb
sub_8009E2C:
    push {lr}
    mov r0, #0x90
    ldr r0, [r5,r0]
    ldrb r1, [r0,#4]
    ldr r0, [pc, #0x8009fbc-0x8009e34-4] // =a58
    bl chatbox_runScript
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
// end of function sub_8009E2C

.thumb
sub_8009E40:
    push {lr}
    mov r0, #0x80
    bl sub_8045F3C
    cmp r0, #0
    bne locret_8009E54
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009E54:
    pop {pc}
// end of function sub_8009E40

.thumb
sub_8009E56:
    push {r4,lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009E66
    bl sub_8009140
    mov r0, #4
    strb r0, [r5,#3]
loc_8009E66:
    bl loc_8008D60
    bl sub_800B090
    cmp r0, #0
    beq locret_8009EE0
    push {r0}
    ldrb r0, [r5,#7]
    bl sub_800B6E6
    pop {r0}
    cmp r0, #1
    bne loc_8009E96
    mov r0, #1
    bl sub_800A840
    bl sub_800AF84
    strb r0, [r5,#0x1e]
    bl sub_800B6B6
    bl sub_800B6F2
    b loc_8009ED8
loc_8009E96:
    cmp r0, #2
    bne loc_8009ECE
    mov r0, #2
    bl sub_800A840
    bl sub_800AF84
    strb r0, [r5,#0x1e]
    bl sub_800B6B6
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8009ED8
    mov r1, #2
    tst r0, r1
    beq loc_8009ED8
    ldr r1, [pc, #0x8009fb8-0x8009eba-2] // =0x400
    tst r0, r1
    beq loc_8009EDA
    push {r2}
    bl sub_800AF50
    tst r0, r0
    pop {r2}
    beq loc_8009ED8
    b loc_8009EDA
loc_8009ECE:
    cmp r0, #7
    bne loc_8009ED8
    mov r0, #7
    bl sub_800A840
loc_8009ED8:
    mov r2, #0x14
loc_8009EDA:
    strb r2, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009EE0:
    pop {r4,pc}
// end of function sub_8009E56

loc_8009EE2:
    push {lr}
    ldr r1, [pc, #0x8009ef0-0x8009ee4-4] // =off_8009EF4
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_8009EF0:    .word off_8009EF4
off_8009EF4:    .word sub_8009EFC+1
    .word sub_8009F3A+1
.thumb
sub_8009EFC:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009F12
    bl sub_800B428
    mov r0, #0
    strh r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009F38
loc_8009F12:
    ldr r0, [pc, #0x8009fc0-0x8009f12-2] // =0x1F2F3F4F
    bl sub_800B46C
    tst r0, r0
    beq loc_8009F2A
    bl sub_800B460
    bl sub_800B444
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
loc_8009F2A:
    ldrh r0, [r5,#0x28]
    add r0, #1
    strh r0, [r5,#0x28]
    cmp r0, #0xb4
    ble locret_8009F38
    mov r0, #0xc
    str r0, [r5]
locret_8009F38:
    pop {pc}
// end of function sub_8009EFC

.thumb
sub_8009F3A:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009F4C
    ldr r0, [pc, #0x8009fc4-0x8009f42-2] // =unk_2035260
    bl sub_802C34E
    mov r0, #4
    strb r0, [r5,#3]
loc_8009F4C:
    bl loc_802BD60
    tst r0, r0
    bne locret_8009F5C
    mov r0, #0x14
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009F5C:
    pop {pc}
// end of function sub_8009F3A

.thumb
sub_8009F5E:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009F74
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009F88
loc_8009F74:
    bl engine_isScreeneffectAnimating
    beq locret_8009F88
    bl sub_8000784
    mov r0, #0x1a
    bl sub_80035A2
    mov r0, #8
    str r0, [r5]
locret_8009F88:
    pop {pc}
// end of function sub_8009F5E

.thumb
sub_8009F8A:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8009FA6
    bl getPETNaviSelect
    mov r1, #0x73 
    add r1, r1, r0
    ldr r0, [pc, #0x8009fc8-0x8009f9a-2] // =dword_87370C0
    bl chatbox_runScript
    mov r0, #4
    strb r0, [r5,#3]
    b locret_8009FB6
loc_8009FA6:
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_8009FB6
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8009FB6:
    pop {pc}
off_8009FB8:    .word 0x400
off_8009FBC:    .word a58
dword_8009FC0:    .word 0x1F2F3F4F
off_8009FC4:    .word unk_2035260
off_8009FC8:    .word dword_87370C0
// end of function sub_8009F8A

.thumb
sub_8009FCC:
    push {r5-r7,lr}
    ldr r6, [pc, #0x8009ff4-0x8009fce-2] // =dword_3000EA8
    ldr r6, [r6]
    ldr r7, [pc, #0x8009ff0-0x8009fd2-2] // =dword_3002180
loc_8009FD4:
    tst r6, r6
    beq locret_8009FEE
    sub r6, #1
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (dword_3002184 - 0x3002180)
    ldr r2, [r7,#0x8] // (dword_3002188 - 0x3002180)
    ldr r3, [r7,#0xc] // (dword_300218C - 0x3002180)
    push {r6,r7}
    bl sub_802FE28
    pop {r6,r7}
    add r7, #0x10
    b loc_8009FD4
locret_8009FEE:
    pop {r5-r7,pc}
off_8009FF0:    .word dword_3002180
off_8009FF4:    .word dword_3000EA8
// end of function sub_8009FCC

.thumb
sub_8009FF8:
    push {r4,r6,r7,lr}
    ldr r6, [pc, #0x800a018-0x8009ffa-2] // =dword_3000EA8
    ldr r4, [r6]
    ldr r7, [pc, #0x800a014-0x8009ffe-2] // =dword_3002180
    lsl r4, r4, #4
    add r7, r7, r4
    str r0, [r7]
    str r1, [r7,#4]
    str r2, [r7,#8]
    str r3, [r7,#0xc]
    lsr r4, r4, #4
    add r4, #1
    str r4, [r6]
    pop {r4,r6,r7,pc}
off_800A014:    .word dword_3002180
off_800A018:    .word dword_3000EA8
// end of function sub_8009FF8

.thumb
sub_800A01C:
    mov r0, #0
    ldr r1, [pc, #0x800a024-0x800a01e-2] // =dword_3000EA8
    str r0, [r1]
    mov pc, lr
off_800A024:    .word dword_3000EA8
// end of function sub_800A01C

.thumb
sub_800A028:
    mov r1, r10
    ldr r1, [r1,#0x3c]
    mov r0, #1
    strb r0, [r1,#0xa]
    mov pc, lr
// end of function sub_800A028

.thumb
sub_800A032:
    mov r1, r10
    ldr r1, [r1,#0x3c]
    mov r0, #0
    strb r0, [r1,#0xa]
    mov pc, lr
// end of function sub_800A032

.thumb
battle_isPaused:
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldrb r0, [r1,#0xa]
    tst r0, r0
    mov pc, lr
// end of function battle_isPaused

.thumb
sub_800A046:
    push {lr}
    bl battle_isBattleOver
    add r1, r0, #0
    mov r0, #0xff
    tst r1, r1
    bne locret_800A076
    bl battle_isTimeStop
    add r1, r0, #0
    mov r0, #0xff
    tst r1, r1
    bne locret_800A076
    ldr r3, [pc, #0x800a078-0x800a060-4] // =dword_2036820
    ldrh r1, [r3,#0x4] // (dword_2036824 - 0x2036820)
    mov r2, #8
    tst r1, r2
    beq loc_800A06E
    mov r0, #0
    pop {pc}
loc_800A06E:
    ldrh r1, [r3,#0xc] // (dword_203682C - 0x2036820)
    tst r1, r2
    beq locret_800A076
    mov r0, #1
locret_800A076:
    pop {pc}
off_800A078:    .word dword_2036820
// end of function sub_800A046

.thumb
sub_800A07C:
    mov r2, #8
    mul r0, r2
    ldr r3, [pc, #0x800a094-0x800a080-4] // =dword_2036820
    add r3, r3, r0
    ldrh r1, [r3,#4]
    mov r2, #8
    mov r0, #0
    tst r1, r2
    beq locret_800A090
    mov r0, #1
locret_800A090:
    mov pc, lr
    .balign 4, 0x00
off_800A094:    .word dword_2036820
// end of function sub_800A07C

.thumb
battle_isTimeStop:
    push {lr}
    bl battle_getFlags
    mov r1, #4
    and r0, r1
    pop {pc}
// end of function battle_isTimeStop

.thumb
sub_800A0A4:
    push {lr}
    bl battle_isTimeStop
    bne loc_800A0C2
    bl battle_isPaused
    tst r0, r0
    beq loc_800A0C2
    bl battle_getFlags
    mov r1, #0x20 
    tst r0, r1
    bne loc_800A0C2
    mov r0, #0
    pop {pc}
loc_800A0C2:
    mov r0, #1
    pop {pc}
// end of function sub_800A0A4

.thumb
sub_800A0C6:
    ldr r0, [pc, #0x800a0f0-0x800a0c6-2] // =dword_2036820
    mov r1, #0
    str r1, [r0]
    str r1, [r0,#0x4] // (dword_2036824 - 0x2036820)
    add r0, #8
    str r1, [r0]
    str r1, [r0,#0x4] // (dword_203682C - 0x2036828)
    mov pc, lr
// end of function sub_800A0C6

.thumb
sub_800A0D6:
    lsl r0, r0, #3
    ldr r3, [pc, #0x800a0f0-0x800a0d8-4] // =dword_2036820
    add r3, r3, r0
    ldrh r2, [r3,#2]
    strh r1, [r3,#2]
    mvn r0, r2
    and r0, r1
    strh r0, [r3,#4]
    mvn r0, r1
    and r2, r0
    strh r2, [r3,#6]
    mov pc, lr
    .byte 0, 0
off_800A0F0:    .word dword_2036820
// end of function sub_800A0D6

    mov r1, #8
    mul r0, r1
    ldr r1, [pc, #0x800a100-0x800a0f8-4] // =dword_2036820
    add r0, r0, r1
    mov pc, lr
    .byte 0, 0
off_800A100:    .word dword_2036820
.thumb
sub_800A104:
    ldr r0, [r5,#0x58]
    ldrb r0, [r0,#2]
    cmp r0, #0
    bne locret_800A11A
    ldrb r0, [r5,#0x16]
    add r0, #4
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r2, [r1,r0]
    sub r2, #1
    strb r2, [r1,r0]
locret_800A11A:
    mov pc, lr
// end of function sub_800A104

.thumb
sub_800A11C:
    ldrb r0, [r5,#0x16]
    add r0, #0x12
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r2, [r1,r0]
    sub r2, #1
    strb r2, [r1,r0]
    mov r2, #0
    add r1, #0x80
loc_800A12E:
    ldr r0, [r1]
    cmp r0, r5
    bne loc_800A138
    mov r0, #0
    str r0, [r1]
loc_800A138:
    add r1, #4
    add r2, #1
    cmp r2, #8
    blt loc_800A12E
    mov pc, lr
// end of function sub_800A11C

    ldrb r0, [r5,#0x16]
    add r0, #0x12
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r2, [r1,r0]
    sub r2, #1
    strb r2, [r1,r0]
    mov pc, lr
.thumb
sub_800A152:
    push {lr}
    bl battle_isTimeStop
    bne loc_800A18A
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r2, [r0,#0xd]
    ldrb r1, [r0,#4]
    tst r1, r1
    bne loc_800A170
    mov r0, #2
    tst r2, r2
    beq locret_800A18C
    mov r0, #1
    b locret_800A18C
loc_800A170:
    ldrb r1, [r0,#5]
    tst r1, r1
    bne loc_800A180
    mov r0, #1
    tst r2, r2
    beq locret_800A18C
    mov r0, #2
    b locret_800A18C
loc_800A180:
    ldrb r1, [r0,#0xb]
    tst r1, r1
    beq loc_800A18A
    mov r0, #7
    b locret_800A18C
loc_800A18A:
    mov r0, #0
locret_800A18C:
    pop {pc}
// end of function sub_800A152

.thumb
battle_isBattleOver:
    mov r0, #1
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r1, [r3,#0x12]
    tst r1, r1
    beq locret_800A1A8
    ldrb r1, [r3,#0x13]
    tst r1, r1
    beq locret_800A1A8
    ldrb r1, [r3,#0xb]
    tst r1, r1
    bne locret_800A1A8
    mov r0, #0
locret_800A1A8:
    mov pc, lr
// end of function battle_isBattleOver

    push {lr}
    bl battle_isTimeStop
    bne loc_800A1C8
    bl battle_isBattleOver
    tst r0, r0
    bne loc_800A1C8
    bl sub_800A70C
    ldr r1, [pc, #0x800a1cc-0x800a1be-2] // =0x2D0
    cmp r0, r1
    blt loc_800A1C8
    mov r0, #1
    pop {pc}
loc_800A1C8:
    mov r0, #0
    pop {pc}
off_800A1CC:    .word 0x2D0
.thumb
sub_800A1D0:
    push {lr}
    bl battle_isTimeStop
    bne loc_800A218
    bl battle_isBattleOver
    tst r0, r0
    bne loc_800A218
    mov r0, #0
    mov r1, #0x2c 
    bl sub_80136CC
    cmp r0, #0x17
    beq loc_800A200
    cmp r0, #0x18
    beq loc_800A200
    mov r0, #1
    mov r1, #0x2c 
    bl sub_80136CC
    cmp r0, #0x17
    beq loc_800A200
    cmp r0, #0x18
    bne loc_800A20A
loc_800A200:
    bl battle_getFlags
    mov r1, #2
    tst r0, r1
    bne loc_800A214
loc_800A20A:
    bl battle_getFlags
    mov r1, #0x10
    tst r0, r1
    beq loc_800A218
loc_800A214:
    mov r0, #1
    pop {pc}
loc_800A218:
    mov r0, #0
    pop {pc}
// end of function sub_800A1D0

.thumb
sub_800A21C:
    push {lr}
    bl battle_isTimeStop
    bne loc_800A23A
    bl battle_isBattleOver
    tst r0, r0
    bne loc_800A23A
    bl sub_801DFE4
    ldr r1, [pc, #0x800a240-0x800a230-4] // =0x4000
    cmp r0, r1
    bne loc_800A23A
    mov r0, #1
    pop {pc}
loc_800A23A:
    mov r0, #0
    pop {pc}
    .byte 0, 0
dword_800A240:    .word 0x4000
// end of function sub_800A21C

.thumb
sub_800A244:
    push {lr}
    bl sub_800A8F8
    cmp r0, #1
    bne loc_800A296
    bl battle_isTimeStop
    bne loc_800A296
    bl battle_isBattleOver
    tst r0, r0
    bne loc_800A296
    mov r0, #0
    bl sub_802E070
    mov r1, #0x50 
    ldrb r0, [r0,r1]
    push {r0}
    mov r0, #1
    bl sub_802E070
    mov r1, #0x50 
    ldrb r1, [r0,r1]
    pop {r0}
    orr r0, r1
    bne loc_800A296
    mov r0, #0
    bl sub_800A29A
    push {r0}
    bl sub_802D246
    mov r1, #8
    and r0, r1
    beq loc_800A290
    mov r0, #1
    bl sub_800A29A
loc_800A290:
    pop {r1}
    orr r0, r1
    pop {pc}
loc_800A296:
    mov r0, #0
    pop {pc}
// end of function sub_800A244

.thumb
sub_800A29A:
    push {r4,lr}
    add r4, r0, #0
    bl sub_802E070
    ldrh r0, [r0,#0x28]
    ldr r1, [pc, #0x800a2c8-0x800a2a4-4] // =0x2900
    cmp r0, r1
    blt loc_800A2C0
    mov r1, #8
    mul r1, r4
    add r1, #4
    ldr r2, [pc, #0x800a2c4-0x800a2b0-4] // =dword_2036820
    ldrh r1, [r2,r1]
    ldr r2, [pc, #0x800a2cc-0x800a2b4-4] // =0x300
    tst r1, r2
    beq loc_800A2C0
    mov r0, #1
    lsl r0, r4
    b locret_800A2C2
loc_800A2C0:
    mov r0, #0
locret_800A2C2:
    pop {r4,pc}
off_800A2C4:    .word dword_2036820
off_800A2C8:    .word 0x2900
off_800A2CC:    .word 0x300
// end of function sub_800A29A

    mov r1, r10
    ldr r1, [r1,#0x18]
    strh r0, [r1,#0x32]
    mov pc, lr
.thumb
battle_setFlags:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrh r2, [r1,#0x32]
    orr r2, r0
    strh r2, [r1,#0x32]
    mov pc, lr
// end of function battle_setFlags

.thumb
battle_clearFlags:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrh r2, [r1,#0x32]
    bic r2, r0
    strh r2, [r1,#0x32]
    mov pc, lr
// end of function battle_clearFlags

.thumb
battle_getFlags:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrh r0, [r1,#0x32]
    mov pc, lr
// end of function battle_getFlags

.thumb
sub_800A2F8:
    push {r4,lr}
    mov r4, r10
    ldr r4, [r4,#0x74]
    ldrh r0, [r4,#0x3e]
    mov r1, #0x64 
    svc 6
    mov r1, #0x2b 
    strb r0, [r4,r1]
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldr r1, [r3,#0x3c]
    ldrb r0, [r1,#3]
    strb r0, [r3,#0xf]
    ldrb r0, [r1]
    strb r0, [r3,#6]
    pop {r4,pc}
// end of function sub_800A2F8

    push {r4-r7,lr}
    mov r7, #0
    bl sub_802D246
    add r4, r0, #0
    ldr r1, [pc, #0x800a564-0x800a322-2] // =0x200000
    tst r0, r1
    beq loc_800A32C
    ldr r0, [pc, #0x800a568-0x800a328-4] // =unk_2039AA0
    b loc_800A33E
loc_800A32C:
    bl sub_802D234
    lsl r0, r0, #2
    ldr r1, [pc, #0x800a3dc-0x800a332-2] // =dword_802137C
    ldr r0, [r1,r0]
    tst r0, r0
    bne loc_800A33E
    mov r0, r10
    ldr r0, [r0,#0x48]
loc_800A33E:
    mov r1, r10
    ldr r1, [r1,#0x48]
    cmp r0, r1
    bne loc_800A35C
    push {r0}
    bl getPETNaviSelect
    mov r1, #0x2d 
    bl sub_800A540
    mov r2, #0x3c 
    mul r2, r0
    pop {r0}
    add r0, r0, r2
    mov r7, #1
loc_800A35C:
    push {r0}
    ldr r1, [pc, #0x800a3e0-0x800a35e-2] // =word_203CDB0
    mov r2, #0x3c 
    bl sub_800092A
    pop {r0}
    tst r7, r7
    bne loc_800A370
    bl sub_800A7EA
loc_800A370:
    mov r0, #0x80
    tst r0, r4
    beq locret_800A3D8
    mov r7, #0
    bl sub_800A4E0
    add r3, r0, r0
    cmp r0, #0xff
    beq loc_800A394
    ldr r0, [pc, #0x800a3e0-0x800a382-2] // =word_203CDB0
    ldrh r4, [r0]
    ldrh r5, [r0,r3]
    strh r5, [r0]
    strh r4, [r0,r3]
    mov r3, r10
    ldr r3, [r3,#0x18]
    mov r7, #1
    strb r7, [r3,#0x17]
loc_800A394:
    mov r6, #0
    bl sub_800A506
    add r2, r0, r0
    add r3, r1, r1
    cmp r0, #0xff
    beq loc_800A3CE
    ldr r0, [pc, #0x800a3e0-0x800a3a2-2] // =word_203CDB0
    cmp r3, #0x38 
    beq loc_800A3B2
    ldrh r4, [r0,#0x38] // (word_203CDE8 - 0x203cdb0)
    ldrh r5, [r0,r2]
    strh r5, [r0,#0x38] // (word_203CDE8 - 0x203cdb0)
    strh r4, [r0,r2]
    b loc_800A3BC
loc_800A3B2:
    ldrh r4, [r0,#0x3a] // (word_203CDEA - 0x203cdb0)
    ldrh r5, [r0,r2]
    strh r5, [r0,#0x3a] // (word_203CDEA - 0x203cdb0)
    strh r4, [r0,r2]
    b loc_800A3C4
loc_800A3BC:
    ldrh r4, [r0,#0x3a] // (word_203CDEA - 0x203cdb0)
    ldrh r5, [r0,r3]
    strh r5, [r0,#0x3a] // (word_203CDEA - 0x203cdb0)
    strh r4, [r0,r3]
loc_800A3C4:
    mov r3, r10
    ldr r3, [r3,#0x18]
    mov r6, #1
    mov r2, #0x44 
    strb r6, [r3,r2]
loc_800A3CE:
    ldr r0, [pc, #0x800a3e0-0x800a3ce-2] // =word_203CDB0
    add r1, r7, #0
    add r2, r6, #0
    bl sub_800A570
locret_800A3D8:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_800A3DC:    .word dword_802137C
off_800A3E0:    .word word_203CDB0
.thumb
sub_800A3E4:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    mov r0, #0xff
    str r0, [sp]
    str r0, [sp,#4]
    str r0, [sp,#8]
    mov r7, #0
    bl sub_802D246
    add r4, r0, #0
    ldr r1, [pc, #0x800a564-0x800a3f8-4] // =0x200000
    tst r0, r1
    beq loc_800A402
    ldr r0, [pc, #0x800a56c-0x800a3fe-2] // =unk_2039AA0
    b loc_800A414
loc_800A402:
    bl sub_802D234
    lsl r0, r0, #2
    ldr r1, [pc, #0x800a4d8-0x800a408-4] // =dword_802137C
    ldr r0, [r1,r0]
    tst r0, r0
    bne loc_800A414
    mov r0, r10
    ldr r0, [r0,#0x48]
loc_800A414:
    mov r1, r10
    ldr r1, [r1,#0x48]
    cmp r0, r1
    bne loc_800A432
    push {r0}
    bl getPETNaviSelect
    mov r1, #0x2d 
    bl sub_800A540
    mov r2, #0x3c 
    mul r2, r0
    pop {r0}
    add r0, r0, r2
    mov r7, #1
loc_800A432:
    add r6, r0, #0
    mov r0, #0x80
    tst r0, r4
    beq loc_800A468
    bl sub_800A4E0
    add r1, r0, r0
    cmp r0, #0xff
    beq loc_800A44E
    str r1, [sp]
    mov r2, r10
    ldr r2, [r2,#0x18]
    mov r1, #1
    strb r1, [r2,#0x17]
loc_800A44E:
    bl sub_800A506
    add r2, r0, r0
    add r3, r1, r1
    cmp r0, #0xff
    beq loc_800A468
    str r2, [sp,#4]
    str r3, [sp,#8]
    mov r2, r10
    ldr r2, [r2,#0x18]
    mov r1, #1
    mov r3, #0x44 
    strb r1, [r2,r3]
loc_800A468:
    mov r2, #0
    mov r3, #0
    ldr r0, [sp]
    cmp r0, #0xff
    beq loc_800A474
    mov r3, #2
loc_800A474:
    ldr r0, [sp]
    cmp r0, r2
    bne loc_800A482
    ldrh r0, [r6,r2]
    ldr r1, [pc, #0x800a4dc-0x800a47c-4] // =word_203CDB0
    strh r0, [r1]
    b loc_800A4A6
loc_800A482:
    ldr r0, [sp,#4]
    cmp r0, r2
    bne loc_800A490
    ldrh r0, [r6,r2]
    ldr r1, [pc, #0x800a4dc-0x800a48a-2] // =word_203CDB0
    strh r0, [r1,#0x38] // (word_203CDE8 - 0x203cdb0)
    b loc_800A4A6
loc_800A490:
    ldr r0, [sp,#8]
    cmp r0, r2
    bne loc_800A49E
    ldrh r0, [r6,r2]
    ldr r1, [pc, #0x800a4dc-0x800a498-4] // =word_203CDB0
    strh r0, [r1,#0x3a] // (word_203CDEA - 0x203cdb0)
    b loc_800A4A6
loc_800A49E:
    ldrh r0, [r6,r2]
    ldr r1, [pc, #0x800a4dc-0x800a4a0-4] // =word_203CDB0
    strh r0, [r1,r3]
    add r3, #2
loc_800A4A6:
    add r2, #2
    cmp r2, #0x3c 
    blt loc_800A474
    add r0, r6, #0
    tst r7, r7
    bne loc_800A4B6
    bl sub_800A7EA
loc_800A4B6:
    mov r0, #0x80
    tst r0, r4
    beq loc_800A4D2
    ldr r0, [pc, #0x800a4dc-0x800a4bc-4] // =word_203CDB0
    mov r2, r10
    ldr r2, [r2,#0x18]
    mov r3, #0x17
    ldrb r1, [r2,r3]
    mov r2, r10
    ldr r2, [r2,#0x18]
    mov r3, #0x44 
    ldrb r2, [r2,r3]
    bl sub_800A570
loc_800A4D2:
    add sp, sp, #0xc
    pop {r4-r7,pc}
    .balign 4, 0x00
off_800A4D8:    .word dword_802137C
off_800A4DC:    .word word_203CDB0
// end of function sub_800A3E4

.thumb
sub_800A4E0:
    push {r4,lr}
    bl sub_802D234
    cmp r0, #1
    bne loc_800A4EE
    mov r0, #0xff
    b locret_800A504
loc_800A4EE:
    bl getPETNaviSelect
    add r4, r0, #0
    mov r1, #0x2d 
    bl sub_800A540
    mov r1, #0x2e 
    add r1, r1, r0
    add r0, r4, #0
    bl sub_800A540
locret_800A504:
    pop {r4,pc}
// end of function sub_800A4E0

.thumb
sub_800A506:
    push {r4,r6,lr}
    bl sub_802D234
    cmp r0, #1
    bne loc_800A516
    mov r0, #0xff
    mov r1, #0xff
    b locret_800A53E
loc_800A516:
    bl getPETNaviSelect
    add r4, r0, #0
    mov r1, #0x2d 
    bl sub_800A540
    lsl r6, r0, #1
    mov r1, #0x56 
    add r1, r1, r6
    add r0, r4, #0
    bl sub_800A540
    mov r1, #0x57 
    add r1, r1, r6
    push {r0}
    add r0, r4, #0
    bl sub_800A540
    add r1, r0, #0
    pop {r0}
locret_800A53E:
    pop {r4,r6,pc}
// end of function sub_800A506

.thumb
sub_800A540:
    push {r4,r6,lr}
    add r6, r0, #0
    add r4, r1, #0
    bl sub_802D246
    ldr r1, [pc, #0x800a564-0x800a54a-2] // =0x200000
    tst r0, r1
    beq loc_800A558
    add r1, r4, #0
    bl sub_8013884
    b locret_800A560
loc_800A558:
    add r0, r6, #0
    add r1, r4, #0
    bl sub_80137B6
locret_800A560:
    pop {r4,r6,pc}
    .balign 4, 0x00
dword_800A564:    .word 0x200000
off_800A568:    .word unk_2039AA0
off_800A56C:    .word unk_2039AA0
// end of function sub_800A540

.thumb
sub_800A570:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    add r7, r0, #0
    mov r5, #0
    mov r6, #0
    mov r4, #0
loc_800A582:
    ldrh r0, [r7]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    bl sub_8021AA4
    ldrb r1, [r0,#7]
    cmp r1, #2
    beq loc_800A59E
    add r1, r5, r5
    ldr r2, [pc, #0x800a910-0x800a594-4] // =dword_2033000
    ldrh r0, [r7]
    strh r0, [r2,r1]
    add r5, #1
    b loc_800A5A8
loc_800A59E:
    add r1, r6, r6
    ldr r2, [pc, #0x800a914-0x800a5a0-4] // =word_2033040
    ldrh r0, [r7]
    strh r0, [r2,r1]
    add r6, #1
loc_800A5A8:
    add r7, #2
    add r4, #1
    cmp r4, #0x1e
    blt loc_800A582
    ldr r0, [pc, #0x800a918-0x800a5b0-4] // =dword_2033000
    add r1, r5, #0
    beq loc_800A5D2
    add r2, r5, #0
    ldr r3, [sp,#4]
    tst r3, r3
    beq loc_800A5C4
    ldr r0, [pc, #0x800a91c-0x800a5be-2] // =dword_2033000
    sub r1, #1
    sub r2, #1
loc_800A5C4:
    ldr r3, [sp,#8]
    tst r3, r3
    beq loc_800A5CE
    sub r1, #2
    sub r2, #2
loc_800A5CE:
    bl sub_8000D12
loc_800A5D2:
    ldr r0, [pc, #0x800a920-0x800a5d2-2] // =word_2033040
    add r1, r6, #0
    beq loc_800A634
    add r2, r6, #0
    bl sub_8000D12
    bl sub_802D234
    cmp r0, #1
    beq loc_800A610
    mov r4, #0
loc_800A5E8:
    bl sub_8001562
    mov r1, #0xc
    neg r1, r1
    add r1, r1, r5
    svc 6
    mov r3, #0xa
    add r3, r3, r1
    ldr r0, [pc, #0x800a924-0x800a5f8-4] // =dword_2033000
    add r1, r5, #0
    add r2, r4, r4
    ldr r7, [pc, #0x800a928-0x800a5fe-2] // =word_2033040
    ldrh r2, [r7,r2]
    bl sub_800A672
    add r5, r0, #0
    add r4, #1
    cmp r4, r6
    blt loc_800A5E8
    b loc_800A634
loc_800A610:
    mov r4, #0
loc_800A612:
    bl sub_8001562
    mov r1, #0xb
    svc 6
    mov r3, #8
    add r3, r3, r1
    ldr r0, [pc, #0x800a92c-0x800a61e-2] // =dword_2033000
    add r1, r5, #0
    add r2, r4, r4
    ldr r7, [pc, #0x800a930-0x800a624-4] // =word_2033040
    ldrh r2, [r7,r2]
    bl sub_800A672
    add r5, r0, #0
    add r4, #1
    cmp r4, r6
    blt loc_800A612
loc_800A634:
    ldr r0, [sp,#8]
    tst r0, r0
    beq loc_800A664
    bl sub_8001562
    mov r1, #0x13
    svc 6
    mov r0, #1
    add r1, r1, r0
    mov r3, r10
    ldr r3, [r3,#0x18]
    mov r2, #0x45 
    strb r1, [r3,r2]
    lsl r1, r1, #1
    ldr r0, [pc, #0x800a934-0x800a650-4] // =dword_2033000
    ldrh r3, [r0,#0x38] // (word_2033038 - 0x2033000)
    ldrh r4, [r0,r1]
    strh r4, [r0,#0x38] // (word_2033038 - 0x2033000)
    strh r3, [r0,r1]
    add r1, #2
    ldrh r3, [r0,#0x3a] // (word_203303A - 0x2033000)
    ldrh r4, [r0,r1]
    strh r4, [r0,#0x3a] // (word_203303A - 0x2033000)
    strh r3, [r0,r1]
loc_800A664:
    ldr r0, [pc, #0x800a938-0x800a664-4] // =dword_2033000
    ldr r1, [sp]
    mov r2, #0x3c 
    bl sub_800092A
    add sp, sp, #0xc
    pop {r4-r7,pc}
// end of function sub_800A570

.thumb
sub_800A672:
    push {lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    cmp r3, r1
    bgt loc_800A6A2
    sub r2, r1, #1
    add r3, r2, r2
    add r0, r0, r3
loc_800A688:
    ldr r3, [sp,#0xc]
    cmp r2, r3
    blt loc_800A698
    ldrh r3, [r0]
    strh r3, [r0,#2]
    sub r2, #1
    sub r0, #2
    b loc_800A688
loc_800A698:
    add r0, #2
    ldr r1, [sp,#8]
    strh r1, [r0]
    ldr r0, [sp,#4]
    add r0, #1
loc_800A6A2:
    add sp, sp, #0x10
    pop {pc}
// end of function sub_800A672

.thumb
sub_800A6A6:
    push {lr}
    bl battle_isTimeStop
    bne locret_800A6D6
    bl battle_isPaused
    bne locret_800A6D6
    bl battle_isBattleOver
    bne locret_800A6D6
    bl battle_getFlags
    mov r1, #1
    tst r0, r1
    beq locret_800A6D6
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r1, [r0,#0x40]
    add r1, #1
    ldr r2, [pc, #0x800a93c-0x800a6cc-4] // =0x8C9F
    cmp r1, r2
    blt loc_800A6D4
    add r1, r2, #0
loc_800A6D4:
    str r1, [r0,#0x40]
locret_800A6D6:
    pop {pc}
// end of function sub_800A6A6

    push {lr}
    bl battle_isTimeStop
    bne locret_800A702
    bl battle_isPaused
    bne locret_800A702
    bl battle_isBattleOver
    tst r0, r0
    bne locret_800A702
    bl battle_getFlags
    mov r1, #1
    tst r0, r1
    beq locret_800A702
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrh r1, [r0,#0x38]
    add r1, #1
    strh r1, [r0,#0x38]
locret_800A702:
    pop {pc}
.thumb
sub_800A704:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x40]
    mov pc, lr
// end of function sub_800A704

.thumb
sub_800A70C:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrh r0, [r0,#0x38]
    mov pc, lr
// end of function sub_800A70C

    mov r1, #0
    mov r0, r10
    ldr r0, [r0,#0x18]
    strh r1, [r0,#0x38]
    mov pc, lr
.thumb
getBattleSettingsFromList0:
    mov r1, #0x10
    mul r1, r0
    ldr r0, [pc, #0x800a940-0x800a722-2] // =battleSettingsList0
    add r0, r0, r1
    mov pc, lr
// end of function getBattleSettingsFromList0

.thumb
getBattleSettingsFromList1:
    mov r1, #0x10
    mul r1, r0
    ldr r0, [pc, #0x800a944-0x800a72c-4] // =battleSettingsList1+1424
    add r0, r0, r1
    mov pc, lr
// end of function getBattleSettingsFromList1

.thumb
zf_checkSameSubsystem_800A732:
    push {r4,lr}
    mov r4, #1
    bl sub_800A7D0
    beq loc_800A748
    ldr r3, [pc, #0x800a750-0x800a73c-4] // =dword_203F7D8
    ldrb r1, [r3,#0x1] // (dword_203F7D8+1 - 0x203f7d8)
    mov r2, #2
    tst r1, r2
    bne loc_800A748
    mov r4, #0
loc_800A748:
    add r0, r4, #0
    tst r0, r0
    pop {r4,pc}
    .byte 0, 0
off_800A750:    .word dword_203F7D8
// end of function zf_checkSameSubsystem_800A732

    push {lr}
    push {r0}
    bl sub_800139A
    pop {r2}
    mov r1, #4
    tst r2, r2
    beq loc_800A766
    mov r1, #8
loc_800A766:
    tst r0, r1
    beq loc_800A76E
    mov r0, #1
    pop {pc}
loc_800A76E:
    mov r0, #0
    pop {pc}
.thumb
sub_800A772:
    push {lr}
    push {r0}
    ldr r0, [r5,#0x58]
    ldrb r1, [r0,#0x19]
    tst r1, r1
    pop {r0}
    bne loc_800A798
    push {r0}
    bl sub_800139A
    pop {r2}
    mov r1, #4
    tst r2, r2
    beq loc_800A790
    mov r1, #8
loc_800A790:
    tst r0, r1
    beq loc_800A798
    mov r0, #1
    pop {pc}
loc_800A798:
    mov r0, #0
    pop {pc}
// end of function sub_800A772

.thumb
sub_800A79C:
    push {lr}
    mov r0, #0xc
    bl sub_80013A2
    pop {pc}
// end of function sub_800A79C

.thumb
sub_800A7A6:
    push {r4-r7,lr}
    mov r6, r10
    ldr r6, [r6,#0x18]
    add r6, #0xe0
    mov r3, #0
    mov r4, #0
loc_800A7B2:
    ldr r7, [r6,r3]
    cmp r7, #0
    beq loc_800A7C4
    ldrh r5, [r7,#0x28]
    cmp r5, r1
    blt loc_800A7C4
    cmp r5, r2
    bgt loc_800A7C4
    add r4, #1
loc_800A7C4:
    add r3, #4
    cmp r3, #0x10
    blt loc_800A7B2
    add r0, r4, #0
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_800A7A6

.thumb
sub_800A7D0:
    mov r0, #0
    ldr r1, [pc, #0x800a948-0x800a7d2-2] // =dword_20093A4
    ldr r1, [r1]
    mov r2, #1
    tst r1, r2
    beq loc_800A7DE
    mov r0, #1
loc_800A7DE:
    tst r0, r0
    mov pc, lr
// end of function sub_800A7D0

.thumb
sub_800A7E2:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov pc, lr
// end of function sub_800A7E2

.thumb
sub_800A7EA:
    push {r4,r6,lr}
    add r4, r0, #0
    mov r6, #0
loc_800A7F0:
    ldrh r0, [r4]
    lsr r1, r0, #9
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    mov r2, #0
    push {r0}
    bl sub_8006E70
    pop {r0}
    add r4, #2
    add r6, #1
    cmp r6, #0x1e
    blt loc_800A7F0
    pop {r4,r6,pc}
// end of function sub_800A7EA

    push {r4,r5,lr}
    add r4, r0, #0
    mov r5, #0
loc_800A812:
    ldrh r0, [r4]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    bl sub_8021AA4
    ldrb r0, [r0,#7]
    cmp r0, #2
    beq loc_800A82E
    add r4, #2
    add r5, #1
    cmp r5, #0xa
    blt loc_800A812
    mov r0, #0
    pop {r4,r5,pc}
loc_800A82E:
    mov r0, #1
    pop {r4,r5,pc}
.thumb
sub_800A832:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0x1f]
    lsr r1, r0, #4
    mov r2, #0xf
    and r0, r2
    mov pc, lr
// end of function sub_800A832

.thumb
sub_800A840:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x18]
    strb r0, [r1,#0x1f]
    bl sub_800B6AA
    pop {pc}
// end of function sub_800A840

.thumb
sub_800A84E:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#7]
    mov pc, lr
// end of function sub_800A84E

.thumb
sub_800A856:
    mov r0, #0
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r1, [r3,#0x12]
    tst r1, r1
    bne loc_800A864
    add r0, #1
loc_800A864:
    ldrb r1, [r3,#0x13]
    tst r1, r1
    bne locret_800A86C
    add r0, #2
locret_800A86C:
    mov pc, lr
// end of function sub_800A856

.thumb
sub_800A86E:
    push {r4,r7,lr}
    mov r4, #0
    mov r7, r10
    ldr r7, [r7,#0x18]
    add r7, #0x80
loc_800A878:
    ldr r3, [r7]
    tst r3, r3
    beq loc_800A888
    ldr r2, [r3,#0x58]
    ldrb r0, [r2,#0xe]
    cmp r0, #0xff
    beq loc_800A888
    ldrh r1, [r3,#0x24]
loc_800A888:
    add r7, #4
    add r4, #1
    cmp r4, #8
    blt loc_800A878
    pop {r4,r7,pc}
// end of function sub_800A86E

.thumb
sub_800A892:
    push {lr}
    bl sub_802D246
    ldr r1, [pc, #0x800a94c-0x800a898-4] // =0x100
    tst r0, r1
    beq locret_800A8B0
    mov r1, #8
    tst r0, r1
    bne locret_800A8B0
    bl sub_800A832
    cmp r0, #2
    bne locret_800A8B0
    bl sub_8005DBE
locret_800A8B0:
    pop {pc}
// end of function sub_800A892

.thumb
sub_800A8B2:
    push {lr}
    bl sub_800A7E2
    mov r1, #0x29 
    bl sub_80136CC
    ldr r1, [pc, #0x800a8c4-0x800a8be-2] // =dword_800A8C8
    ldrb r0, [r0,r1]
    pop {pc}
off_800A8C4:    .word dword_800A8C8
dword_800A8C8:    .word 0x6C686408, 0x7C787470, 0x8C888480
// end of function sub_800A8B2

.thumb
sub_800A8D4:
    push {lr}
    bl sub_800A7E2
    mov r1, #0x29 
    bl sub_80136CC
    ldr r1, [pc, #0x800a8e8-0x800a8e0-4] // =unk_800A8EC
    ldrb r0, [r0,r1]
    pop {pc}
    .balign 4, 0x00
off_800A8E8:    .word unk_800A8EC
unk_800A8EC:    .byte 0x38 
    .byte 0x90
    .byte 0x94
    .byte 0x98
    .byte 0x9C
    .byte 0xA0
    .byte 0xA4
    .byte 0xA8
    .byte 0xAC
    .byte 0xB0
    .byte 0xB4
    .byte 0xB8
// end of function sub_800A8D4

.thumb
sub_800A8F8:
    push {r4,lr}
    mov r4, #0
    bl sub_802E09A
    beq loc_800A904
    mov r4, #1
loc_800A904:
    add r0, r4, #0
    pop {r4,pc}
// end of function sub_800A8F8

.thumb
sub_800A908:
    mov r0, #0
    ldr r1, [pc, #0x800a950-0x800a90a-2] // =dword_2000B30
    str r0, [r1]
    mov pc, lr
off_800A910:    .word dword_2033000
off_800A914:    .word word_2033040
off_800A918:    .word dword_2033000
dword_800A91C:    .word 0x2033002
off_800A920:    .word word_2033040
off_800A924:    .word dword_2033000
off_800A928:    .word word_2033040
off_800A92C:    .word dword_2033000
off_800A930:    .word word_2033040
off_800A934:    .word dword_2033000
off_800A938:    .word dword_2033000
dword_800A93C:    .word 0x8C9F
off_800A940:    .word battleSettingsList0
off_800A944:    .word battleSettingsList1+0x590
off_800A948:    .word dword_20093A4
off_800A94C:    .word 0x100
off_800A950:    .word dword_2000B30
// end of function sub_800A908

.thumb
sub_800A954:
    push {lr}
    ldr r0, [pc, #0x800abf0-0x800a956-2] // =byte_20349C0
    bl sub_800A964
    ldr r0, [pc, #0x800abf4-0x800a95c-4] // =byte_2034A10
    bl sub_800A964
    pop {pc}
// end of function sub_800A954

.thumb
sub_800A964:
    push {r4,lr}
    add r4, r0, #0
    mov r1, #0x50   // numWords
    bl CpuSet_ZeroFillWord
    add r0, r4, #2
    mov r1, #0xc
    mov r2, #0xff
    bl initMemblockToByte
    pop {r4,pc}
// end of function sub_800A964

.thumb
sub_800A97A:
    push {lr}
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_800A994
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r1, [r3,#7]
    cmp r1, #0xf
    blt loc_800A994
    mov r0, #1
    pop {pc}
loc_800A994:
    mov r0, #0
    pop {pc}
// end of function sub_800A97A

.thumb
sub_800A998:
    push {r4,lr}
    add r2, r0, #0
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r1, [r3,#0xd]
    mov r0, #1
    eor r0, r1
    mov r1, #0x10
    mul r0, r1
    add r0, #0x80
    add r3, r3, r0
    mov r0, #0
    mov r4, #0
loc_800A9B2:
    ldr r1, [r3]
    tst r1, r1
    beq loc_800A9BE
    ldrh r1, [r1,#0x28]
    strh r1, [r2,r0]
    add r0, #2
loc_800A9BE:
    add r3, #4
    add r4, #1
    cmp r4, #4
    blt loc_800A9B2
    lsr r0, r0, #1
    pop {r4,pc}
// end of function sub_800A998

.thumb
sub_800A9CA:
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r1, [r3,#0x11]
    orr r1, r0
    strb r1, [r3,#0x11]
    mov pc, lr
// end of function sub_800A9CA

.thumb
sub_800A9D6:
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r1, [r3,#0x11]
    bic r1, r0
    strb r1, [r3,#0x11]
    mov pc, lr
// end of function sub_800A9D6

.thumb
sub_800A9E2:
    mov r3, r10
    ldr r3, [r3,#0x18]
    add r0, #0x14
    ldrb r0, [r3,r0]
    mov pc, lr
// end of function sub_800A9E2

.thumb
battle_networkInvert:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r2, [r1,#0xd]
    eor r0, r2
    mov pc, lr
// end of function battle_networkInvert

.thumb
batle_clearEnemyFadeinList:
    push {lr}
    mov r0, #0
    bl sub_800AAAE
    mov r1, #0x80  // numWords
    bl CpuSet_ZeroFillWord
    pop {pc}
// end of function batle_clearEnemyFadeinList

.thumb
sub_800AA06:
    push {lr}
    bl sub_800AAAE
    mov r2, #0
    ldr r0, [r0]
    cmp r0, r5
    bne loc_800AA16
    mov r2, #1
loc_800AA16:
    add r0, r2, #0
    pop {pc}
// end of function sub_800AA06

.thumb
sub_800AA1A:
    push {r7,lr}
    bl sub_800AAAE
    add r7, r0, #0
    mov r0, #0
loc_800AA24:
    ldr r1, [r7,r0]
    cmp r1, r5
    beq loc_800AA38
    cmp r1, #0
    bne loc_800AA32
    str r5, [r7,r0]
    b loc_800AA3C
loc_800AA32:
    add r0, #4
    cmp r0, #0x20 
    bne loc_800AA24
loc_800AA38:
    mov r0, #0
    pop {r7,pc}
loc_800AA3C:
    mov r0, #1
    pop {r7,pc}
// end of function sub_800AA1A

.thumb
sub_800AA40:
    push {lr}
    push {r0}
    bl sub_800AAAE
    add r3, r0, #0
    mov r0, #0
loc_800AA4C:
    ldr r1, [r3,r0]
    cmp r1, r5
    bne loc_800AA56
    mov r1, #0
    str r1, [r3,r0]
loc_800AA56:
    add r0, #4
    cmp r0, #0x20 
    bne loc_800AA4C
    pop {r0}
    bl sub_800AA64
    pop {pc}
// end of function sub_800AA40

.thumb
sub_800AA64:
    push {r4,lr}
    bl sub_800AAAE
    add r3, r0, #0
    add r1, r3, #0
    mov r4, #0x1c
    add r4, r4, r3
    mov r0, #0
loc_800AA74:
    ldr r0, [r3]
    cmp r0, #0
    beq loc_800AA7E
    str r0, [r1]
    add r1, #4
loc_800AA7E:
    add r3, #4
    cmp r3, r4
    bne loc_800AA74
    mov r0, #0
loc_800AA86:
    cmp r1, r4
    beq locret_800AA90
    str r0, [r1]
    add r1, #4
    b loc_800AA86
locret_800AA90:
    pop {r4,pc}
// end of function sub_800AA64

.thumb
sub_800AA92:
    push {lr}
    bl sub_800AAAE
    add r3, r0, #0
    mov r0, #0
    mov r2, #0
loc_800AA9E:
    ldr r1, [r3,r2]
    cmp r1, #0
    beq loc_800AAA6
    add r0, #1
loc_800AAA6:
    add r2, #4
    cmp r2, #0x20 
    blt loc_800AA9E
    pop {pc}
// end of function sub_800AA92

.thumb
sub_800AAAE:
    mov r1, #0x20 
    mul r0, r1
    ldr r1, [pc, #0x800aab8-0x800aab2-2] // =unk_2038170
    add r0, r0, r1
    mov pc, lr
off_800AAB8:    .word unk_2038170
// end of function sub_800AAAE

.thumb
sub_800AABC:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x18]
    mov r0, #4
    bl sub_800A840
    mov r0, r10
    ldr r0, [r0,#0x18]
    mov r1, #0x14
    strb r1, [r0,#1]
    mov r1, #0
    strh r1, [r0,#2]
    pop {r5,pc}
// end of function sub_800AABC

.thumb
sub_800AAD6:
    push {r5,lr}
    bl sub_800AABC
    mov r5, r10
    ldr r5, [r5,#0x18]
    mov r0, #2
    bl sub_800A840
    pop {r5,pc}
// end of function sub_800AAD6

    mov r1, r10
    ldr r1, [r1,#0x18]
    mov r0, #1
    strh r0, [r1,#0x3a]
    mov pc, lr
.thumb
sub_800AAF2:
    push {lr}
    mov r0, #0
    bl sub_800AAFC
    pop {pc}
// end of function sub_800AAF2

.thumb
sub_800AAFC:
    push {r4,lr}
    add r4, r0, #0
    mov r1, #0x28 
    mul r0, r1
    ldr r2, [pc, #0x800abf8-0x800ab04-4] // =unk_20018C0
    add r0, r0, r2
    mov r2, #0
    mvn r2, r2
    bl sub_800098C
    mov r1, #0x28 
    mul r4, r1
    ldr r0, [pc, #0x800abfc-0x800ab14-4] // =unk_2000260
    add r0, r0, r4
    mov r2, #0
    mvn r2, r2
    bl sub_800098C
    pop {r4,pc}
// end of function sub_800AAFC

.thumb
sub_800AB22:
    push {lr}
    ldr r0, [pc, #0x800ac00-0x800ab24-4] // =word_2000FA0
    mov r1, #0x1a
    bl sub_80008C0
    pop {pc}
// end of function sub_800AB22

.thumb
sub_800AB2E:
    mov r3, #0x10
    mul r0, r3
    ldr r3, [pc, #0x800ac04-0x800ab32-2] // =unk_203EAE0
    add r3, r3, r0
    strb r2, [r3,r1]
    mov pc, lr
// end of function sub_800AB2E

.thumb
sub_800AB3A:
    mov r3, #0x10
    mul r0, r3
    ldr r3, [pc, #0x800ac08-0x800ab3e-2] // =unk_203EAE0
    add r3, r3, r0
    ldrb r0, [r3,r1]
    mov pc, lr
// end of function sub_800AB3A

.thumb
sub_800AB46:
    mov r3, #0x10
    mul r0, r3
    ldr r3, [pc, #0x800ac0c-0x800ab4a-2] // =unk_203EAE0
    add r3, r3, r0
    ldrb r0, [r3,r1]
    add r0, r0, r2
    cmp r0, #0xff
    ble loc_800AB58
    mov r0, #0xff
loc_800AB58:
    strb r0, [r3,r1]
    mov pc, lr
// end of function sub_800AB46

    mov r3, #0x10
    mul r0, r3
    ldr r3, [pc, #0x800ac10-0x800ab60-4] // =unk_203EAE0
    add r3, r3, r0
    ldrb r0, [r3,r1]
    sub r0, r0, r2
    bge loc_800AB6C
    mov r0, #0
loc_800AB6C:
    strb r0, [r3,r1]
    mov pc, lr
.thumb
sub_800AB70:
    push {lr}
    ldr r0, [pc, #0x800ac14-0x800ab72-2] // =unk_203EAE0  // memBlock
    mov r1, #0x20   // numWords
    bl CpuSet_ZeroFillWord
    pop {pc}
// end of function sub_800AB70

.thumb
sub_800AB7C:
    push {r4,lr}
    ldr r4, [pc, #0x800ac18-0x800ab7e-2] // =byte_203CA70
    bl battle_isPaused
    tst r0, r0
    bne loc_800ABAC
    bl battle_isTimeStop
    tst r0, r0
    bne loc_800ABAC
    bl battle_isBattleOver
    tst r0, r0
    bne loc_800ABB8
    ldrh r0, [r4,#0xa] // (word_203CA7A - 0x203ca70)
    cmp r0, #0x3c 
    blt loc_800ABA4
    sub r0, #1
    strh r0, [r4,#0xa] // (word_203CA7A - 0x203ca70)
    b loc_800ABAC
loc_800ABA4:
    mov r2, r10
    ldr r2, [r2,#0x18]
    mov r0, #1
    strb r0, [r2,#0xb]
loc_800ABAC:
    ldrh r0, [r4,#0xa] // (word_203CA7A - 0x203ca70)
    mov r1, #0x3c 
    svc 6
    bl sub_801E398
    pop {r4,pc}
loc_800ABB8:
    ldr r0, [pc, #0x800ac1c-0x800abb8-4] // =0x800
    bl sub_801DACC
    ldr r0, [pc, #0x800ac1c-0x800abbe-2] // =0x800
    bl sub_801BED6
    pop {r4,pc}
// end of function sub_800AB7C

.thumb
sub_800ABC6:
    push {r4,lr}
    bl sub_800E276
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x10
    lsl r3, r3, #0x10
    add r2, r2, r3
    add r3, r3, r3
    mov r4, r10
    ldr r4, [r4,#0x18]
    ldrb r4, [r4,#0xd]
    lsl r4, r4, #8
    add r4, #0x46 
    mov r0, #1
    bl sub_80E05F6
    mov r0, #0xa5
    bl sound_play
    pop {r4,pc}
off_800ABF0:    .word byte_20349C0
off_800ABF4:    .word byte_2034A10
off_800ABF8:    .word unk_20018C0
off_800ABFC:    .word unk_2000260
off_800AC00:    .word word_2000FA0
off_800AC04:    .word unk_203EAE0
off_800AC08:    .word unk_203EAE0
off_800AC0C:    .word unk_203EAE0
off_800AC10:    .word unk_203EAE0
off_800AC14:    .word unk_203EAE0
off_800AC18:    .word byte_203CA70
off_800AC1C:    .word 0x800
// end of function sub_800ABC6

.thumb
sub_800AC20:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x14
    ldr r2, [pc, #0x800add8-0x800ac24-4] // =0x18C
    cmp r0, #2
    bne loc_800AC2C
    mov r2, #0xf1
loc_800AC2C:
    str r0, [sp]
    str r2, [sp,#0x10]
    str r1, [sp,#0x14]
    mov r0, #0
    str r0, [sp,#4]
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_800AC6C
    bl sub_800A704
    bl sub_8000D84
    ldr r2, [sp]
    mov r1, #0xc
    mul r1, r2
    ldr r7, [pc, #0x800add0-0x800ac4c-4] // =off_800ADDC
    add r7, r7, r1
    mov r2, #0
loc_800AC52:
    ldr r1, [r7]
    cmp r0, r1
    ble loc_800AC60
    add r7, #4
    add r2, #1
    cmp r2, #3
    blt loc_800AC52
loc_800AC60:
    ldr r1, [sp]
    lsl r1, r1, #2
    ldr r7, [pc, #0x800add4-0x800ac64-4] // =unk_800AE00
    add r7, r7, r1
    ldrb r0, [r7,r2]
    str r0, [sp,#4]
loc_800AC6C:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_800AC90
    ldr r0, [sp,#0x14]
    mov r1, #3
    bl sub_800AB3A
    cmp r0, #4
    bge loc_800AC86
    neg r0, r0
    add r0, #1
    b loc_800AC8A
loc_800AC86:
    mov r0, #0
    sub r0, #3
loc_800AC8A:
    ldr r1, [sp,#4]
    add r1, r1, r0
    str r1, [sp,#4]
loc_800AC90:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_800ACAE
    ldr r0, [sp,#0x14]
    mov r1, #4
    bl sub_800AB3A
    mov r1, #1
    cmp r0, #2
    ble loc_800ACA8
    mov r1, #0
loc_800ACA8:
    ldr r0, [sp,#4]
    add r0, r0, r1
    str r0, [sp,#4]
loc_800ACAE:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_800ACC6
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x1b]
    sub r0, #1
    add r0, r0, r0
    ldr r1, [sp,#4]
    add r1, r1, r0
    str r1, [sp,#4]
loc_800ACC6:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_800ACFE
    ldr r0, [sp,#0x14]
    bl sub_80103BC
    tst r0, r0
    beq loc_800ACFE
    ldrh r2, [r0,#0x24]
    ldrh r3, [r0,#0x26]
    mov r0, #0
    lsr r4, r3, #1
    cmp r2, r4
    blt loc_800ACF8
    mov r0, #1
    lsr r4, r3, #2
    lsr r1, r3, #1
    add r4, r4, r1
    cmp r2, r4
    blt loc_800ACF8
    mov r0, #2
    cmp r2, r3
    blt loc_800ACF8
    mov r0, #3
loc_800ACF8:
    ldr r1, [sp,#4]
    add r1, r1, r0
    str r1, [sp,#4]
loc_800ACFE:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_800AD30
    ldr r0, [sp,#0x14]
    mov r1, #5
    bl sub_800AB3A
    mov r1, #0
    tst r0, r0
    beq loc_800AD2A
    cmp r0, #1
    bne loc_800AD1C
    mov r1, #1
    b loc_800AD28
loc_800AD1C:
    cmp r0, #4
    blt loc_800AD22
    mov r0, #3
loc_800AD22:
    add r1, r0, #0
    sub r1, #1
    add r1, r1, r1
loc_800AD28:
    neg r1, r1
loc_800AD2A:
    ldr r0, [sp,#4]
    add r0, r0, r1
    str r0, [sp,#4]
loc_800AD30:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_800AD7E
    ldr r0, [sp,#0x14]
    bl sub_80103BC
    tst r0, r0
    beq loc_800AD7E
    ldrh r6, [r0,#0x26]
    ldr r0, [sp,#0x14]
    mov r1, #1
    eor r0, r1
    bl sub_80103BC
    tst r0, r0
    beq loc_800AD7E
    ldrh r7, [r0,#0x26]
    mov r4, #0
    sub r6, r6, r7
    bge loc_800AD5E
    mov r4, #1
    neg r6, r6
loc_800AD5E:
    add r0, r6, #0
    mov r1, #0x64 
    svc 6
    cmp r0, #1
    ble loc_800AD72
    lsr r0, r0, #1
    lsl r0, r0, #1
    cmp r0, #4
    ble loc_800AD72
    mov r0, #4
loc_800AD72:
    tst r4, r4
    bne loc_800AD78
    neg r0, r0
loc_800AD78:
    ldr r1, [sp,#4]
    add r1, r1, r0
    str r1, [sp,#4]
loc_800AD7E:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_800AD9E
    ldr r0, [sp,#0x14]
    mov r1, #8
    bl sub_800AB3A
    cmp r0, #0
    beq loc_800AD9E
    cmp r0, #3
    ble loc_800AD98
    mov r0, #3
loc_800AD98:
    ldr r1, [sp,#4]
    add r1, r1, r0
    str r1, [sp,#4]
loc_800AD9E:
    ldr r0, [sp,#0x10]
    lsr r0, r0, #1
    str r0, [sp,#0x10]
    bcc loc_800ADB8
    ldr r0, [sp,#0x14]
    mov r1, #0xb
    bl sub_800AB3A
    cmp r0, #0
    bne loc_800ADB8
    ldr r1, [sp,#4]
    add r1, #1
    str r1, [sp,#4]
loc_800ADB8:
    ldr r0, [sp,#4]
    tst r0, r0
    ble loc_800ADC6
    cmp r0, #0xb
    ble loc_800ADC8
    mov r0, #0xb
    b loc_800ADC8
loc_800ADC6:
    mov r0, #1
loc_800ADC8:
    str r0, [sp,#4]
    ldr r0, [sp,#4]
    add sp, sp, #0x14
    pop {r4,r6,r7,pc}
off_800ADD0:    .word off_800ADDC
off_800ADD4:    .word unk_800AE00
dword_800ADD8:    .word 0x18F
off_800ADDC:    .word 0x500
    .word 0x1200
    .word 0x3600
    .word 0x3000
    .word 0x4000, 0x5000, 0x3000, 0x4500, 0x10000
unk_800AE00:    .byte 6
    .byte 5
    .byte 4
    .byte 3
    .byte 0xA
    .byte 8
    .byte 6
    .byte 4
    .byte 0xA
    .byte 8
    .byte 6
    .byte 4
// end of function sub_800AC20

.thumb
sub_800AE0C:
    push {r4,lr}
    mov r4, r10
    ldr r4, [r4,#0x18]
    ldrb r0, [r4,#0x1c]
    ldrb r1, [r4,#0x1b]
    cmp r0, r1
    ble loc_800AE32
    strb r0, [r4,#0x1b]
    cmp r0, #2
    blt loc_800AE32
    push {r0}
    bl sub_802D234
    cmp r0, #6
    pop {r0}
    beq loc_800AE32
    sub r0, #2
    bl sub_801E228
loc_800AE32:
    ldrb r0, [r4,#0x1d]
    tst r0, r0
    beq loc_800AE3E
    sub r0, #1
    strb r0, [r4,#0x1d]
    b locret_800AE42
loc_800AE3E:
    mov r0, #0
    strb r0, [r4,#0x1c]
locret_800AE42:
    pop {r4,pc}
// end of function sub_800AE0C

.thumb
sub_800AE44:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0x1c]
    add r0, #1
    strb r0, [r1,#0x1c]
    mov r0, #0xa
    strb r0, [r1,#0x1d]
    mov pc, lr
// end of function sub_800AE44

.thumb
sub_800AE54:
    push {r4,r6,r7,lr}
    mov r3, r10
    ldr r3, [r3,#0x18]
    lsl r2, r2, #1
    ldr r4, [pc, #0x800ae88-0x800ae5c-4] // =unk_800AE8C
    add r4, r4, r2
    ldrb r2, [r4]
    add r3, r3, r2
    ldrb r2, [r4,#1]
loc_800AE66:
    ldr r4, [r3]
    tst r4, r4
    beq loc_800AE7C
    ldrb r6, [r4,#0x12]
    cmp r6, r0
    bne loc_800AE7C
    ldrb r6, [r4,#0x13]
    cmp r6, r1
    bne loc_800AE7C
    add r0, r4, #0
    pop {r4,r6,r7,pc}
loc_800AE7C:
    add r3, #4
    sub r2, #1
    bne loc_800AE66
    mov r0, #0
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_800AE88:    .word unk_800AE8C
unk_800AE8C:    .byte 0x80
    .byte 4
    .byte 0x90
    .byte 4
// end of function sub_800AE54

.thumb
sub_800AE90:
    push {r5-r7,lr}
    push {r0,r1}
    mov r7, r10
    ldr r7, [r7,#0x24]
    ldrh r2, [r7]
    mov r3, #0xf
    and r2, r3
    bne loc_800AEA6
    mov r0, #0x91
    bl sound_play
loc_800AEA6:
    pop {r0,r1}
    mov r2, #0x10
    add r2, r2, r0
    cmp r2, #0xff
    bcs locret_800AEE0
    mov r2, #0x10
    add r2, r2, r1
    cmp r2, #0xb0
    bcs locret_800AEE0
    mov r7, r10
    ldr r7, [r7,#0x24]
    ldrh r2, [r7]
    mov r3, #8
    and r2, r3
    lsr r2, r2, #1
    ldr r6, [pc, #0x800aee4-0x800aec4-4] // =0xD3CA
    add r6, r6, r2
    push {r0,r1,r6}
    mov r2, #0x40 
    lsl r2, r2, #8
    orr r0, r2
    lsl r0, r0, #0x10
    orr r0, r1
    add r1, r6, #0
    mov r2, #0
    mov r3, #0
    bl sub_8009FF8
    pop {r0,r1,r6}
locret_800AEE0:
    pop {r5-r7,pc}
    .balign 4, 0x00
dword_800AEE4:    .word 0xD3CA
// end of function sub_800AE90

.thumb
sub_800AEE8:
    push {r4-r6,lr}
    ldr r4, [pc, #0x800b138-0x800aeea-2] // =byte_20349C0
    ldrb r0, [r4]
    add r0, r0, r0
    add r0, #2
    add r5, r4, r0
    ldrh r0, [r5]
    add r6, r0, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #0x80
    tst r1, r2
    beq loc_800AF0E
    add r0, r6, #0
    mov r1, #0
    bl loc_80109A4
    strh r0, [r5,#0xc]
loc_800AF0E:
    add r4, #0x50 
    ldrb r0, [r4]
    add r0, r0, r0
    add r0, #2
    add r5, r4, r0
    ldrh r0, [r5]
    add r6, r0, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #0x80
    tst r1, r2
    beq locret_800AF32
    add r0, r6, #0
    mov r1, #1
    bl loc_80109A4
    strh r0, [r5,#0xc]
locret_800AF32:
    pop {r4-r6,pc}
// end of function sub_800AEE8

.thumb
sub_800AF34:
    push {lr}
    bl sub_800A8F8
    tst r0, r0
    bne loc_800AF46
    ldr r0, [pc, #0x800b13c-0x800af3e-2] // =0x4000
    bl sub_801DFA2
    pop {pc}
loc_800AF46:
    ldrb r0, [r5,#0x16]
    ldr r1, [pc, #0x800b140-0x800af48-4] // =0x1554
    bl sub_802E032
    pop {pc}
// end of function sub_800AF34

.thumb
sub_800AF50:
    push {r4,r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x18]
    ldrb r0, [r5,#0x18]
    ldrb r1, [r5,#0x19]
    ldrb r2, [r5,#0x1a]
    neg r4, r2
    add r4, #3
    add r5, r1, r4
    cmp r0, r5
    bgt loc_800AF72
    add r5, r0, r4
    cmp r1, r5
    bgt loc_800AF76
    cmp r2, #3
    bge loc_800AF7C
    b loc_800AF80
loc_800AF72:
    mov r0, #1
    b locret_800AF82
loc_800AF76:
    mov r0, #1
    neg r0, r0
    b locret_800AF82
loc_800AF7C:
    mov r0, #2
    b locret_800AF82
loc_800AF80:
    mov r0, #0
locret_800AF82:
    pop {r4,r5,pc}
// end of function sub_800AF50

.thumb
sub_800AF84:
    push {lr}
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    bne loc_800AFA0
    add r2, r0, #0
    mov r0, #0
    mov r1, #0
    mov r3, #1
    tst r2, r3
    beq loc_800AFB4
    mov r0, #1
    b loc_800AFB4
loc_800AFA0:
    bl sub_800A832
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    cmp r0, #1
    beq loc_800AFB2
    mov r2, #1
    eor r1, r2
loc_800AFB2:
    mov r0, #2
loc_800AFB4:
    bl sub_800AC20
    pop {pc}
// end of function sub_800AF84

.thumb
sub_800AFBA:
    push {r1-r7,lr}
    add r4, r0, #0
    mov r6, #0
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_800AFCC
    mov r6, #1
loc_800AFCC:
    bl sub_802E09A
    orr r6, r0
    push {r6}
    lsr r0, r4, #9
    cmp r0, #0x1b
    beq loc_800B00C
    cmp r0, #0x1c
    beq loc_800B00C
    lsl r0, r4, #0x17
    lsr r0, r0, #0x17
    bl sub_8021AA4
    ldrb r6, [r0,#7]
    cmp r6, #1
    beq loc_800AFF0
    cmp r6, #2
    bne loc_800B00C
loc_800AFF0:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0xa
    add r1, r1, r6
    bl sub_80136CC
    ldr r1, [pc, #0x800b108-0x800affe-2] // =dword_20367E0
    ldrb r1, [r1,r6]
    cmp r1, r0
    ble loc_800B00C
    mov r0, #0
    cmp r0, #1
    b loc_800B01C
loc_800B00C:
    lsl r0, r4, #0x17
    lsr r0, r0, #0x17
    ldr r1, [pc, #0x800b104-0x800b010-4] // =0x199
    cmp r0, r1
    bge loc_800B01C
    bl sub_8006E84
    b loc_800B01E
loc_800B01C:
    cmp r0, r0
loc_800B01E:
    pop {r0}
    pop {r1-r7,pc}
// end of function sub_800AFBA

.thumb
sub_800B022:
    push {r1-r7,lr}
    add r4, r0, #0
    mov r6, #0
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_800B034
    mov r6, #1
loc_800B034:
    bl sub_802E09A
    orr r6, r0
    push {r6}
    lsr r0, r4, #9
    cmp r0, #0x1b
    beq loc_800B074
    cmp r0, #0x1c
    beq loc_800B074
    lsl r0, r4, #0x17
    lsr r0, r0, #0x17
    bl sub_8021AA4
    ldrb r6, [r0,#7]
    cmp r6, #1
    beq loc_800B058
    cmp r6, #2
    bne loc_800B074
loc_800B058:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0xa
    add r1, r1, r6
    bl sub_80136CC
    ldr r1, [pc, #0x800b108-0x800b066-2] // =dword_20367E0
    ldrb r1, [r1,r6]
    cmp r1, r0
    ble loc_800B074
    mov r0, #0
    cmp r0, #1
    b loc_800B08C
loc_800B074:
    lsr r1, r4, #9
    lsl r0, r4, #0x17
    lsr r0, r0, #0x17
    cmp r1, #0x1b
    bne loc_800B080
    mov r1, #0xff
loc_800B080:
    ldr r2, [pc, #0x800b104-0x800b080-4] // =0x199
    cmp r0, r2
    blt loc_800B088
    mov r1, #0xff
loc_800B088:
    bl sub_8006EE8
loc_800B08C:
    pop {r0}
    pop {r1-r7,pc}
// end of function sub_800B022

.thumb
sub_800B090:
    push {r0-r7,lr}
    mov r0, r8
    mov r1, r9
    push {r0,r1}
    bl sub_802E09A
    cmp r0, #0
    bne loc_800B0FA
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_8010018
    add r6, r0, #0
    mov r9, r0
    ldrb r0, [r6]
    mov r8, r0
    lsl r0, r0, #1
    add r0, #2
    add r6, r6, r0
    ldrh r0, [r6]
    add r4, r0, #0
    mov r1, #0xff
    lsl r1, r1, #8
    add r1, #0xff
    cmp r0, r1
    beq loc_800B0FA
    mov r1, #0xff
    bl sub_8006EE8
    bne loc_800B0F6
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r7, [r0,#7]
    cmp r7, #1
    beq loc_800B0DE
    cmp r7, #2
    bne loc_800B0FA
loc_800B0DE:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0xa
    add r1, r1, r7
    bl sub_80136CC
    mov r0, r9
    ldr r1, [pc, #0x800b108-0x800b0ee-2] // =dword_20367E0
    ldrb r1, [r1,r7]
    cmp r1, r0
    blt loc_800B0FA
loc_800B0F6:
    ldr r0, [pc, #0x800b10c-0x800b0f6-2] // =0x184
    strh r0, [r6]
loc_800B0FA:
    pop {r0,r1}
    mov r8, r0
    mov r9, r1
    pop {r0-r7,pc}
    .balign 4, 0x00
dword_800B104:    .word 0x19B
off_800B108:    .word dword_20367E0
dword_800B10C:    .word 0x185
// end of function sub_800B090

.thumb
sub_800B110:
    push {r4,lr}
    ldr r4, [pc, #0x800b124-0x800b112-2] // =word_800B128
loc_800B114:
    ldrh r0, [r4]
    cmp r0, #0
    beq locret_800B122
    bl sub_8006E70
    add r4, #2
    b loc_800B114
locret_800B122:
    pop {r4,pc}
off_800B124:    .word word_800B128
word_800B128:    .hword 0x195
    .hword 0x196
    .word 0x1980197, 0x19A0199, 0x0
off_800B138:    .word byte_20349C0
dword_800B13C:    .word 0x4000
dword_800B140:    .word 0x1555
// end of function sub_800B110

.thumb
sub_800B144:
    push {r4,r6,lr}
    ldr r4, [pc, #0x800b2bc-0x800b146-2] // =dword_203CBE0
    ldr r0, [pc, #0x800b2c0-0x800b148-4] // =dword_20013F0
    ldr r0, [r0]
    str r0, [r4,#0x4] // (dword_203CBE4 - 0x203cbe0)
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x3c]
    str r0, [r4,#0x8] // (dword_203CBE8 - 0x203cbe0)
    bl sub_802D246
    ldr r1, [pc, #0x800b2c4-0x800b15a-2] // =0x200000
    tst r0, r1
    bne loc_800B1F0
    bl sub_802D234
    cmp r0, #1
    beq loc_800B1C8
    cmp r0, #2
    beq loc_800B1D2
    cmp r0, #3
    beq loc_800B1D2
    cmp r0, #4
    beq loc_800B1D2
    cmp r0, #5
    beq loc_800B220
    cmp r0, #8
    beq loc_800B220
    cmp r0, #7
    beq loc_800B1DC
    cmp r0, #9
    beq loc_800B1E6
    bl getPETNaviSelect
    bl sub_801401E
    mov r1, #0xc
    add r1, r1, r4
    add r6, r1, #0
    mov r2, #0x64 
    bl sub_800093C
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_800B1A8
    mov r0, #3
    mov r1, #0x21 // (byte_203CC0D - 0x203cbec)
    strb r0, [r6,r1]
loc_800B1A8:
    bl sub_800A8F8
    cmp r0, #0
    beq loc_800B242
    mov r0, #1
    mov r1, #0x63 
    bl sub_802F164
    bne loc_800B242
    bl getPETNaviSelect
    cmp r0, #0
    bne loc_800B242
    mov r0, #0xc
    strb r0, [r6,#0x17] // (byte_203CC03 - 0x203cbec)
    b loc_800B242
loc_800B1C8:
    mov r0, #0xc
    add r0, r0, r4
    bl sub_80134C8
    b loc_800B242
loc_800B1D2:
    mov r0, #0xc
    add r0, r0, r4
    bl sub_8013438
    b loc_800B242
loc_800B1DC:
    mov r0, #0xc
    add r0, r0, r4
    bl sub_8013554
    b loc_800B242
loc_800B1E6:
    mov r0, #0xc
    add r0, r0, r4
    bl sub_80135E8
    b loc_800B242
loc_800B1F0:
    mov r0, #0
    bl sub_8013854
    mov r1, #0xc
    add r1, r1, r4
    mov r2, #0x64 
    bl sub_800093C
    ldr r0, [pc, #0x800b2c8-0x800b200-4] // =0x474
    mov r1, #0x70 
    add r1, r1, r4
    mov r2, #0x14
loc_800B208:
    strh r0, [r1]
    add r1, #2
    sub r2, #1
    bne loc_800B208
    mov r1, #0x98
    add r1, r1, r4
    mov r2, #0x14
loc_800B216:
    strh r0, [r1]
    add r1, #2
    sub r2, #1
    bne loc_800B216
    b loc_800B25A
loc_800B220:
    mov r0, #0xc
    add r0, r0, r4
    bl sub_8013438
    mov r0, #0
    bl sub_801401E
    mov r1, #0xc
    add r1, r1, r4
    ldrh r2, [r0,#0x3e]
    strh r2, [r1,#0x3e] // (word_203CC2A - 0x203cbec)
    ldr r2, [r0,#0x40]
    lsr r3, r2, #0x10
    lsl r2, r3, #0x10
    orr r2, r3
    str r2, [r1,#0x40] // (dword_203CC2C - 0x203cbec)
    b loc_800B242
loc_800B242:
    ldr r0, [pc, #0x800b2cc-0x800b242-2] // =unk_20018C0
    mov r1, #0x70 
    add r1, r1, r4
    mov r2, #0x28 
    bl sub_800093C
    ldr r0, [pc, #0x800b2d0-0x800b24e-2] // =unk_2000260
    mov r1, #0x98
    add r1, r1, r4
    mov r2, #0x28 
    bl sub_800093C
loc_800B25A:
    mov r0, #1
    bl sub_81209DC
    mov r2, #0xc8 // (byte_203CCA8 - 0x203cbe0)
    strb r0, [r4,r2]
    mov r2, #0xc9 // (byte_203CCA9 - 0x203cbe0)
    strb r1, [r4,r2]
    mov r0, #1
    bl sub_81209DC
    mov r2, #0xca // (byte_203CCAA - 0x203cbe0)
    strb r0, [r4,r2]
    mov r2, #0xcb // (byte_203CCAB - 0x203cbe0)
    strb r1, [r4,r2]
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldr r1, [pc, #0x800b440-0x800b27a-2] // =0x3C4
    add r0, r0, r1
    mov r1, #0xcc
    add r1, r1, r4
    mov r2, #0x28 
    bl sub_8000920
    bl sub_8010D20
    mov r1, #0xf4 // (dword_203CCD4 - 0x203cbe0)
    str r0, [r4,r1]
    mov r0, #1
    mov r1, #0x63 
    bl sub_802F164
    beq loc_800B2A0
    bl sub_8121198
    b loc_800B2A2
loc_800B2A0:
    mov r0, #0xff
loc_800B2A2:
    mov r1, #0xc0 // (dword_203CCA0 - 0x203cbe0)
    str r0, [r4,r1]
    bl sub_803D0F4
    mov r1, #0xc4 // (dword_203CCA4 - 0x203cbe0)
    str r0, [r4,r1]
    ldr r0, [pc, #0x800b2d4-0x800b2ae-2] // =0x12345678
    str r0, [r4]
    mov r0, #0x3e 
    bl sub_80200A4
    pop {r4,r6,pc}
    .balign 4, 0x00
off_800B2BC:    .word dword_203CBE0
off_800B2C0:    .word dword_20013F0
dword_800B2C4:    .word 0x200000
off_800B2C8:    .word 0x474
off_800B2CC:    .word unk_20018C0
off_800B2D0:    .word unk_2000260
dword_800B2D4:    .word 0x12345678
// end of function sub_800B144

.thumb
sub_800B2D8:
    push {r4,r5,lr}
    ldr r0, [pc, #0x800b560-0x800b2da-2] // =unk_203F4AC
    ldr r1, [pc, #0x800b564-0x800b2dc-4] // =unk_203CE00
    mov r2, #0x64 
    bl sub_800093C
    ldr r0, [pc, #0x800b568-0x800b2e4-4] // =unk_203F4AC
    ldr r1, [pc, #0x800b56c-0x800b2e6-2] // =unk_203CB10
    mov r2, #0x64 
    bl sub_800093C
    ldr r0, [pc, #0x800b570-0x800b2ee-2] // =unk_203F4AC
    ldr r1, [pc, #0x800b574-0x800b2f0-4] // =unk_2034A60
    mov r2, #0x64 
    bl sub_800093C
    ldr r0, [pc, #0x800b578-0x800b2f8-4] // =unk_203F4AC
    ldr r1, [pc, #0x800b57c-0x800b2fa-2] // =unk_203C9E4
    mov r2, #0x64 
    bl sub_800093C
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_800B334
    ldr r0, [pc, #0x800b580-0x800b30c-4] // =unk_203F5AC
    ldr r1, [pc, #0x800b584-0x800b30e-2] // =unk_203CE64
    mov r2, #0x64 
    bl sub_800093C
    ldr r0, [pc, #0x800b588-0x800b316-2] // =unk_203F5AC
    ldr r1, [pc, #0x800b58c-0x800b318-4] // =unk_203CB74
    mov r2, #0x64 
    bl sub_800093C
    ldr r0, [pc, #0x800b590-0x800b320-4] // =unk_203F5AC
    ldr r1, [pc, #0x800b594-0x800b322-2] // =unk_2034AC4
    mov r2, #0x64 
    bl sub_800093C
    ldr r0, [pc, #0x800b598-0x800b32a-2] // =unk_203F5AC
    ldr r1, [pc, #0x800b59c-0x800b32c-4] // =unk_203C980
    mov r2, #0x64 
    bl sub_800093C
loc_800B334:
    ldr r0, [pc, #0x800b5a0-0x800b334-4] // =dword_203F4A4
    ldr r0, [r0]
    ldr r1, [pc, #0x800b5a4-0x800b338-4] // =dword_20013F0
    str r0, [r1]
    ldr r0, [pc, #0x800b5a8-0x800b33c-4] // =unk_203F510
    ldr r1, [pc, #0x800b5ac-0x800b33e-2] // =unk_203EB00
    mov r2, #0x28 
    bl sub_800093C
    ldr r0, [pc, #0x800b5b0-0x800b346-2] // =unk_203F610
    ldr r1, [pc, #0x800b5b4-0x800b348-4] // =unk_203EB28
    mov r2, #0x28 
    bl sub_800093C
    ldr r0, [pc, #0x800b5b8-0x800b350-4] // =unk_203F538
    ldr r1, [pc, #0x800b5bc-0x800b352-2] // =unk_2036790
    mov r2, #0x28 
    bl sub_800093C
    ldr r0, [pc, #0x800b5c0-0x800b35a-2] // =unk_203F638
    ldr r1, [pc, #0x800b5c4-0x800b35c-4] // =unk_20367B8
    mov r2, #0x28 
    bl sub_800093C
    ldr r0, [pc, #0x800b5c8-0x800b364-4] // =dword_203F568
    ldr r0, [r0]
    ldr r1, [pc, #0x800b5cc-0x800b368-4] // =dword_203CA50
    str r0, [r1]
    ldr r0, [pc, #0x800b5d0-0x800b36c-4] // =unk_203F56C
    ldr r1, [pc, #0x800b5d4-0x800b36e-2] // =unk_203F66C
    ldr r2, [pc, #0x800b5d8-0x800b370-4] // =unk_2036750
    bl sub_80AAB88
    ldr r2, [pc, #0x800b5dc-0x800b376-2] // =dword_203CDF0
    ldr r0, [pc, #0x800b5e0-0x800b378-4] // =dword_203F594
    ldr r0, [r0]
    str r0, [r2]
    ldr r0, [pc, #0x800b5e4-0x800b37e-2] // =dword_203F694
    ldr r0, [r0]
    str r0, [r2,#0x4] // (dword_203CDF4 - 0x203cdf0)
    ldr r2, [pc, #0x800b5e8-0x800b384-4] // =dword_203CFA0
    ldr r0, [pc, #0x800b5ec-0x800b386-2] // =dword_203F560
    ldr r0, [r0]
    str r0, [r2]
    ldr r0, [pc, #0x800b5f0-0x800b38c-4] // =dword_203F660
    ldr r0, [r0]
    str r0, [r2,#0x4] // (dword_203CFA4 - 0x203cfa0)
    ldr r2, [pc, #0x800b5f4-0x800b392-2] // =dword_203F7E0
    ldr r0, [pc, #0x800b5f8-0x800b394-4] // =dword_203F564
    ldr r0, [r0]
    str r0, [r2]
    ldr r0, [pc, #0x800b5fc-0x800b39a-2] // =dword_203F664
    ldr r0, [r0]
    str r0, [r2,#0x4] // (dword_203F7E4 - 0x203f7e0)
    pop {r4,r5,pc}
// end of function sub_800B2D8

.thumb
sub_800B3A2:
    push {lr}
    ldr r0, [pc, #0x800b600-0x800b3a4-4] // =byte_20366C0
    ldr r1, [pc, #0x800b604-0x800b3a6-2] // =dword_203CBE4
    mov r2, #0x50 
    bl sub_800093C
    ldr r0, [pc, #0x800b608-0x800b3ae-2] // =0x56789123
    ldr r1, [pc, #0x800b60c-0x800b3b0-4] // =dword_203CBE0
    str r0, [r1]
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0xd]
    bl sub_8013682
    ldr r1, [pc, #0x800b610-0x800b3be-2] // =unk_203CC34
    mov r2, #0x64 
    bl sub_800093C
    ldr r0, [pc, #0x800b614-0x800b3c6-2] // =byte_203CED0
    ldr r1, [pc, #0x800b618-0x800b3c8-4] // =unk_203CC98
    mov r2, #0x10
    bl sub_800093C
    mov r0, #0x32 
    bl sub_80200A4
    pop {pc}
// end of function sub_800B3A2

.thumb
sub_800B3D8:
    push {r4,lr}
    ldr r4, [pc, #0x800b61c-0x800b3da-2] // =dword_203F4A4
    ldrb r1, [r4]
    cmp r1, #0xff
    beq loc_800B3EC
    add r0, r4, #0
    ldr r1, [pc, #0x800b620-0x800b3e4-4] // =byte_20349C0
    mov r2, #0x50 
    bl sub_800093C
loc_800B3EC:
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_800B408
    ldr r4, [pc, #0x800b624-0x800b3f6-2] // =dword_203F5A4
    ldrb r1, [r4]
    cmp r1, #0xff
    beq loc_800B408
    add r0, r4, #0
    ldr r1, [pc, #0x800b628-0x800b400-4] // =byte_2034A10
    mov r2, #0x50 
    bl sub_800093C
loc_800B408:
    ldr r0, [pc, #0x800b62c-0x800b408-4] // =unk_203F4F4
    ldr r1, [pc, #0x800b630-0x800b40a-2] // =unk_203CE00
    mov r2, #0x64 
    bl sub_800093C
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq locret_800B426
    ldr r0, [pc, #0x800b634-0x800b41c-4] // =unk_203F5F4
    ldr r1, [pc, #0x800b638-0x800b41e-2] // =unk_203CE64
    mov r2, #0x64 
    bl sub_800093C
locret_800B426:
    pop {r4,pc}
// end of function sub_800B3D8

.thumb
sub_800B428:
    push {lr}
    ldr r0, [pc, #0x800b63c-0x800b42a-2] // =dword_203CBE4
    bl sub_802C8FA
    ldr r0, [pc, #0x800b640-0x800b430-4] // =0x1F2F3F4F
    ldr r1, [pc, #0x800b644-0x800b432-2] // =dword_203CBE0
    str r0, [r1]
    mov r0, #4
    bl sub_80200A4
    pop {pc}
    .byte 0, 0
off_800B440:    .word 0x3C4
// end of function sub_800B428

.thumb
sub_800B444:
    push {lr}
    ldr r0, [pc, #0x800b648-0x800b446-2] // =dword_203F4A4
    ldr r1, [pc, #0x800b64c-0x800b448-4] // =unk_2035260
    mov r2, #0xc
    bl sub_800093C
    ldr r0, [pc, #0x800b650-0x800b450-4] // =dword_203F5A4
    ldr r1, [pc, #0x800b654-0x800b452-2] // =unk_203526C
    mov r2, #0xc
    bl sub_800093C
    bl sub_802C9EA
    pop {pc}
// end of function sub_800B444

.thumb
sub_800B460:
    mov r0, #0
    ldr r1, [pc, #0x800b658-0x800b462-2] // =dword_203F4A0
    str r0, [r1]
    ldr r1, [pc, #0x800b65c-0x800b466-2] // =dword_203F5A0
    str r0, [r1]
    mov pc, lr
// end of function sub_800B460

.thumb
sub_800B46C:
    add r3, r0, #0
    mov r0, #0
    ldr r1, [pc, #0x800b660-0x800b470-4] // =dword_203F4A0
    ldr r1, [r1]
    ldr r2, [pc, #0x800b664-0x800b474-4] // =dword_203F5A0
    ldr r2, [r2]
    cmp r1, r3
    bne locret_800B482
    cmp r2, r3
    bne locret_800B482
    mov r0, #1
locret_800B482:
    mov pc, lr
// end of function sub_800B46C

    push {r4,lr}
    ldr r0, [pc, #0x800b668-0x800b486-2] // =0xF1F1F1F1
    ldr r1, [pc, #0x800b66c-0x800b488-4] // =dword_203CBE0
    str r0, [r1]
    ldr r0, [pc, #0x800b670-0x800b48c-4] // =unk_203F6D0
    ldr r1, [pc, #0x800b674-0x800b48e-2] // =dword_203CBE4
    mov r2, #0x3c 
    bl sub_800093C
    mov r0, #0x10
    bl sub_80200A4
    pop {r4,pc}
    push {r6,r7,lr}
    mov r0, #0
    ldr r1, [pc, #0x800b678-0x800b4a2-2] // =dword_203F4A4
    bl sub_802E45E
    mov r0, #1
    ldr r1, [pc, #0x800b67c-0x800b4aa-2] // =dword_203F5A4
    bl sub_802E45E
    pop {r6,r7,pc}
    push {r4,r5,lr}
    add r5, r1, #0
    bl sub_800B4CE
    ldr r0, [pc, #0x800b680-0x800b4ba-2] // =0xA9B8C7D6
    ldr r1, [pc, #0x800b684-0x800b4bc-4] // =dword_203CBE0
    str r0, [r1]
    ldr r1, [pc, #0x800b688-0x800b4c0-4] // =dword_203CBE4
    str r4, [r1]
    str r5, [r1,#0x4] // (dword_203CBE8 - 0x203cbe4)
    mov r0, #3
    bl sub_80200A4
    pop {r4,r5,pc}
.thumb
sub_800B4CE:
    push {lr}
    add r4, r0, #0
    mov r0, r10
    ldr r0, [r0,#0x18]
    mov r1, #0x90
loc_800B4D8:
    ldr r2, [r0,r1]
    cmp r2, r4
    bne loc_800B4F0
    add r4, r1, #0
    cmp r1, #0x90
    bne locret_800B50C
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq locret_800B50C
    b loc_800B50A
loc_800B4F0:
    add r1, #4
    cmp r1, #0xc0
    bne loc_800B4D8
    mov r1, #0xa0
    mov r3, #8
loc_800B4FA:
    ldr r2, [r0,r1]
    cmp r2, r4
    bne loc_800B504
    add r4, r1, #0
    b locret_800B50C
loc_800B504:
    add r1, #4
    sub r3, #1
    bne loc_800B4FA
loc_800B50A:
    mov r4, #0
locret_800B50C:
    pop {pc}
// end of function sub_800B4CE

    push {lr}
    mov r0, #0
    bl sub_802E070
    ldr r1, [pc, #0x800b68c-0x800b516-2] // =dword_203F4A4
    ldr r2, [r1]
    mov r3, #0
    bl sub_800B548
    str r2, [r0,#0x44]
    ldr r2, [r1,#4]
    strb r2, [r0,#0xe]
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq locret_800B546
    mov r0, #1
    bl sub_802E070
    ldr r1, [pc, #0x800b690-0x800b536-2] // =dword_203F5A4
    ldr r2, [r1]
    mov r3, #1
    bl sub_800B548
    str r2, [r0,#0x44]
    ldr r2, [r1,#4]
    strb r2, [r0,#0xe]
locret_800B546:
    pop {pc}
.thumb
sub_800B548:
    push {r0,r1,lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    cmp r2, #0
    bne loc_800B55A
    mov r2, #0x80
    tst r3, r3
    bne loc_800B55A
    mov r2, #0x90
loc_800B55A:
    ldr r2, [r0,r2]
    pop {r0,r1,pc}
    .byte 0, 0
off_800B560:    .word unk_203F4AC
off_800B564:    .word unk_203CE00
off_800B568:    .word unk_203F4AC
off_800B56C:    .word unk_203CB10
off_800B570:    .word unk_203F4AC
off_800B574:    .word unk_2034A60
off_800B578:    .word unk_203F4AC
off_800B57C:    .word unk_203C9E4
off_800B580:    .word unk_203F5AC
off_800B584:    .word unk_203CE64
off_800B588:    .word unk_203F5AC
off_800B58C:    .word unk_203CB74
off_800B590:    .word unk_203F5AC
off_800B594:    .word unk_2034AC4
off_800B598:    .word unk_203F5AC
off_800B59C:    .word unk_203C980
off_800B5A0:    .word dword_203F4A4
off_800B5A4:    .word dword_20013F0
off_800B5A8:    .word unk_203F510
off_800B5AC:    .word unk_203EB00
off_800B5B0:    .word unk_203F610
off_800B5B4:    .word unk_203EB28
off_800B5B8:    .word unk_203F538
off_800B5BC:    .word unk_2036790
off_800B5C0:    .word unk_203F638
off_800B5C4:    .word unk_20367B8
off_800B5C8:    .word dword_203F568
off_800B5CC:    .word dword_203CA50
off_800B5D0:    .word unk_203F56C
off_800B5D4:    .word unk_203F66C
off_800B5D8:    .word unk_2036750
off_800B5DC:    .word dword_203CDF0
off_800B5E0:    .word dword_203F594
off_800B5E4:    .word dword_203F694
off_800B5E8:    .word dword_203CFA0
off_800B5EC:    .word dword_203F560
off_800B5F0:    .word dword_203F660
off_800B5F4:    .word dword_203F7E0
off_800B5F8:    .word dword_203F564
off_800B5FC:    .word dword_203F664
off_800B600:    .word byte_20366C0
off_800B604:    .word dword_203CBE4
dword_800B608:    .word 0x56789123
off_800B60C:    .word dword_203CBE0
off_800B610:    .word unk_203CC34
off_800B614:    .word byte_203CED0
off_800B618:    .word unk_203CC98
off_800B61C:    .word dword_203F4A4
off_800B620:    .word byte_20349C0
off_800B624:    .word dword_203F5A4
off_800B628:    .word byte_2034A10
off_800B62C:    .word unk_203F4F4
off_800B630:    .word unk_203CE00
off_800B634:    .word unk_203F5F4
off_800B638:    .word unk_203CE64
off_800B63C:    .word dword_203CBE4
dword_800B640:    .word 0x1F2F3F4F
off_800B644:    .word dword_203CBE0
off_800B648:    .word dword_203F4A4
off_800B64C:    .word unk_2035260
off_800B650:    .word dword_203F5A4
off_800B654:    .word unk_203526C
off_800B658:    .word dword_203F4A0
off_800B65C:    .word dword_203F5A0
off_800B660:    .word dword_203F4A0
off_800B664:    .word dword_203F5A0
dword_800B668:    .word 0xF1F1F1F1
off_800B66C:    .word dword_203CBE0
off_800B670:    .word unk_203F6D0
off_800B674:    .word dword_203CBE4
off_800B678:    .word dword_203F4A4
off_800B67C:    .word dword_203F5A4
dword_800B680:    .word 0xA9B8C7D6
off_800B684:    .word dword_203CBE0
off_800B688:    .word dword_203CBE4
off_800B68C:    .word dword_203F4A4
off_800B690:    .word dword_203F5A4
// end of function sub_800B548

    ldr r3, [pc, #0x800b828-0x800b694-4] // =byte_200A008
    ldr r0, [pc, #0x800b82c-0x800b696-2] // =0xFFFF
    strh r0, [r3,#0x4] // (word_200A00C - 0x200a008)
    strh r0, [r3,#0x6] // (word_200A00E - 0x200a008)
    mov r0, #0
    strb r0, [r3]
    mov r0, #0
    strb r0, [r3,#0x1] // (byte_200A009 - 0x200a008)
    mov r0, #0
    strb r0, [r3,#0x2] // (byte_200A00A - 0x200a008)
    mov pc, lr
.thumb
sub_800B6AA:
    ldr r1, [pc, #0x800b830-0x800b6aa-2] // =byte_200A008
    strb r0, [r1,#0x1] // (byte_200A009 - 0x200a008)
    mov pc, lr
// end of function sub_800B6AA

.thumb
sub_800B6B0:
    ldr r1, [pc, #0x800b834-0x800b6b0-4] // =byte_200A008
    ldrb r0, [r1,#0x1] // (byte_200A009 - 0x200a008)
    mov pc, lr
// end of function sub_800B6B0

.thumb
sub_800B6B6:
    ldr r1, [pc, #0x800b838-0x800b6b6-2] // =byte_200A008
    strb r0, [r1]
    mov pc, lr
// end of function sub_800B6B6

    ldr r1, [pc, #0x800b83c-0x800b6bc-4] // =byte_200A008
    ldrb r0, [r1]
    mov pc, lr
.thumb
sub_800B6C2:
    ldr r1, [pc, #0x800b840-0x800b6c2-2] // =byte_200A008
    strb r0, [r1,#0x2] // (byte_200A00A - 0x200a008)
    mov pc, lr
// end of function sub_800B6C2

    ldr r1, [pc, #0x800b844-0x800b6c8-4] // =byte_200A008
    ldrb r0, [r1,#0x2] // (byte_200A00A - 0x200a008)
    mov pc, lr
.thumb
sub_800B6CE:
    ldr r1, [pc, #0x800b848-0x800b6ce-2] // =byte_200A008
    strh r0, [r1,#0x4] // (word_200A00C - 0x200a008)
    mov pc, lr
// end of function sub_800B6CE

.thumb
sub_800B6D4:
    ldr r1, [pc, #0x800b84c-0x800b6d4-4] // =byte_200A008
    ldrh r0, [r1,#0x4] // (word_200A00C - 0x200a008)
    mov pc, lr
// end of function sub_800B6D4

.thumb
sub_800B6DA:
    ldr r1, [pc, #0x800b850-0x800b6da-2] // =byte_200A008
    strh r0, [r1,#0x6] // (word_200A00E - 0x200a008)
    mov pc, lr
// end of function sub_800B6DA

.thumb
sub_800B6E0:
    ldr r1, [pc, #0x800b854-0x800b6e0-4] // =byte_200A008
    ldrh r0, [r1,#0x6] // (word_200A00E - 0x200a008)
    mov pc, lr
// end of function sub_800B6E0

.thumb
sub_800B6E6:
    ldr r1, [pc, #0x800b858-0x800b6e6-2] // =byte_200A008
    strb r0, [r1,#0x3] // (byte_200A00B - 0x200a008)
    mov pc, lr
// end of function sub_800B6E6

    ldr r1, [pc, #0x800b85c-0x800b6ec-4] // =byte_200A008
    ldrb r0, [r1,#0x3] // (byte_200A00B - 0x200a008)
    mov pc, lr
.thumb
sub_800B6F2:
    push {r4,r6,r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x18]
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    bne locret_800B732
    ldr r1, [pc, #0x800b860-0x800b702-2] // =0x80000
    tst r0, r1
    bne locret_800B732
    bl sub_800A7E2
    mov r1, #1
    eor r0, r1
    add r1, r0, #4
    ldrb r6, [r7,r1]
    lsl r0, r0, #3
    add r0, #0x4c 
    add r7, r7, r0
loc_800B71A:
    ldrh r0, [r7]
    ldr r1, [pc, #0x800b864-0x800b71c-4] // =0x100
    sub r0, r0, r1
    blt loc_800B72C
    ldr r1, [pc, #0x800b868-0x800b722-2] // =0x300
    add r0, r0, r1
    .hword 0x1c00 // add r0, r0, #0  // <mkdata>
    bl sub_802F114
loc_800B72C:
    add r7, #2
    sub r6, #1
    bgt loc_800B71A
locret_800B732:
    pop {r4,r6,r7,pc}
// end of function sub_800B6F2

.thumb
sub_800B734:
    ldr r0, [pc, #0x800b86c-0x800b734-4] // =word_2000FA0
    mov r1, #1
    mov r3, #0
loc_800B73A:
    ldrh r2, [r0]
    add r3, r3, r2
    add r0, #2
    add r1, #1
    cmp r1, #0xd
    blt loc_800B73A
    mov r0, #0
    ldr r1, [pc, #0x800b870-0x800b748-4] // =0x2A30
    cmp r3, r1
    bgt locret_800B758
    mov r0, #1
    ldr r1, [pc, #0x800b874-0x800b750-4] // =0x1C20
    cmp r3, r1
    bgt locret_800B758
    mov r0, #2
locret_800B758:
    mov pc, lr
// end of function sub_800B734

.thumb
sub_800B75A:
    ldr r0, [pc, #0x800b878-0x800b75a-2] // =byte_203C960
    mov r1, #0xff
    strb r1, [r0]
    mov pc, lr
// end of function sub_800B75A

    push {r4,r6,lr}
    lsl r4, r1, #1
    bl sub_8010018
    ldr r6, [pc, #0x800b82c-0x800b76a-2] // =0xFFFF
    add r0, r0, r4
    add r1, r0, #2
loc_800B770:
    ldrh r2, [r1,#0xe]
    strh r2, [r0,#0xe]
    ldrh r2, [r1,#0x1a]
    strh r2, [r0,#0x1a]
    ldrh r2, [r1,#0x26]
    strh r2, [r0,#0x26]
    ldrh r2, [r1,#0x32]
    strh r2, [r0,#0x32]
    mov r3, #0x3e 
    ldrb r2, [r1,r3]
    strb r2, [r0,r3]
    mov r3, #0x44 
    ldrb r2, [r1,r3]
    strb r2, [r0,r3]
    ldrh r2, [r1,#2]
    strh r2, [r0,#2]
    add r0, #2
    add r1, #2
    cmp r2, r6
    bne loc_800B770
    pop {r4,r6,pc}
loc_800B79A:
    push {lr}
    ldr r1, [pc, #0x800b87c-0x800b79c-4] // =0x120
    cmp r0, r1
    bgt locret_800B7B4
    ldr r1, [pc, #0x800b880-0x800b7a2-2] // =0x11E
    cmp r0, r1
    blt locret_800B7B4
    sub r0, r0, r1
    ldr r1, [pc, #0x800b7b8-0x800b7aa-2] // =off_800B7BC
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
locret_800B7B4:
    pop {pc}
    .balign 4, 0x00
off_800B7B8:    .word off_800B7BC
off_800B7BC:    .word sub_800B7D0+1
    .word sub_800B7E8+1
    .word sub_800B800+1
    .word nullsub_2+1
    .word sub_800B80E+1
.thumb
sub_800B7D0:
    push {lr}
    mov r1, #0x18
    bl sub_8013774
    add r2, r0, #2
    cmp r2, #7
    ble loc_800B7E0
    mov r2, #7
loc_800B7E0:
    mov r1, #0x18
    bl sub_8013754
    pop {pc}
// end of function sub_800B7D0

.thumb
sub_800B7E8:
    push {lr}
    mov r1, #0x18
    bl sub_8013774
    add r2, r0, #1
    cmp r2, #7
    ble loc_800B7F8
    mov r2, #7
loc_800B7F8:
    mov r1, #0x18
    bl sub_8013754
    pop {pc}
// end of function sub_800B7E8

.thumb
sub_800B800:
    push {lr}
    mov r1, #0x18
    mov r2, #7
    bl sub_8013754
    pop {pc}
// end of function sub_800B800

.thumb
nullsub_2:
    mov pc, lr
// end of function nullsub_2

.thumb
sub_800B80E:
    push {lr}
    mov r1, #0x18
    bl sub_8013774
    add r2, r0, #4
    cmp r2, #7
    ble loc_800B81E
    mov r2, #7
loc_800B81E:
    mov r1, #0x18
    bl sub_8013754
    pop {pc}
    .balign 4, 0x00
off_800B828:    .word byte_200A008
dword_800B82C:    .word 0xFFFF
off_800B830:    .word byte_200A008
off_800B834:    .word byte_200A008
off_800B838:    .word byte_200A008
off_800B83C:    .word byte_200A008
off_800B840:    .word byte_200A008
off_800B844:    .word byte_200A008
off_800B848:    .word byte_200A008
off_800B84C:    .word byte_200A008
off_800B850:    .word byte_200A008
off_800B854:    .word byte_200A008
off_800B858:    .word byte_200A008
off_800B85C:    .word byte_200A008
dword_800B860:    .word 0x80000
off_800B864:    .word 0x100
off_800B868:    .word 0x300
off_800B86C:    .word word_2000FA0
off_800B870:    .word 0x2A30
off_800B874:    .word 0x1C20
off_800B878:    .word byte_203C960
dword_800B87C:    .word 0x122
dword_800B880:    .word 0x11E
// end of function sub_800B80E

.thumb
sub_800B884:
    push {lr}
    push {r1}
    bl sub_800BF5C
    pop {r1}
    strb r1, [r0,#1]
    pop {pc}
// end of function sub_800B884

.thumb
sub_800B892:
    push {lr}
    bl sub_800BF5C
    ldrb r0, [r0,#1]
    pop {pc}
// end of function sub_800B892

.thumb
sub_800B89C:
    push {lr}
    bl sub_800BF5C
    mov r1, #0
    strb r1, [r0,#1]
    mov r1, #0
    str r1, [r0,#8]
    pop {pc}
// end of function sub_800B89C

.thumb
sub_800B8AC:
    push {r4,lr}
    add r4, r0, #0
    mov r0, #0
    bl sub_800BF5C
    strb r4, [r0]
    mov r0, #1
    bl sub_800BF5C
    strb r4, [r0]
    pop {r4,pc}
// end of function sub_800B8AC

.thumb
sub_800B8C2:
    push {lr}
    push {r0}
    bl sub_800BF5C
    ldrb r1, [r0]
    pop {r2}
    mov r0, #0
    cmp r1, r2
    bne locret_800B8D6
    mov r0, #1
locret_800B8D6:
    pop {pc}
// end of function sub_800B8C2

.thumb
sub_800B8D8:
    push {lr}
    push {r0}
    bl sub_800BF5C
    ldrb r1, [r0,#3]
    pop {r2}
    mov r0, #0
    cmp r1, r2
    bne locret_800B8EC
    mov r0, #1
locret_800B8EC:
    pop {pc}
// end of function sub_800B8D8

.thumb
sub_800B8EE:
    push {r4,lr}
    mov r1, #1
    eor r0, r1
    mov r1, #3
    mul r0, r1
    add r0, #2
    mov r1, #4
    bl sub_800E276
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0x78 
    lsl r3, r3, #0x10
    mov r4, #0x1e
    bl sub_80E05F6
    mov r0, #0xa5
    bl sound_play
    pop {r4,pc}
// end of function sub_800B8EE

.thumb
sub_800B916:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    tst r0, r0
    bne loc_800B928
    mov r0, #0x40 
    bl sub_801DACC
loc_800B928:
    ldrb r0, [r5,#0x16]
    bl sub_800B8D8
    tst r0, r0
    beq loc_800B938
    mov r0, #4
    bl battle_setFlags
loc_800B938:
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #2
    ldr r1, [pc, #0x800b948-0x800b93c-4] // =unk_200F3B8
    mov r2, #0
    str r2, [r1,r0]
    mov r0, #4
    strb r0, [r5,#8]
    pop {pc}
off_800B948:    .word unk_200F3B8
// end of function sub_800B916

.thumb
sub_800B94C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_800B964
    mov r0, #0x3c 
    mov r1, #4
    bl engine_setScreeneffect
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_800B964:
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    bl engine_isScreeneffectAnimating
    tst r0, r0
    bne locret_800B97C
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_800B97C:
    pop {pc}
// end of function sub_800B94C

.thumb
sub_800B97E:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_800B996
    mov r0, #0x78 
    mov r1, #0x80
    bl engine_setScreeneffect
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_800B996:
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    bl engine_isScreeneffectAnimating
    tst r0, r0
    bne locret_800B9AE
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_800B9AE:
    pop {pc}
// end of function sub_800B97E

.thumb
sub_800B9B0:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_800BA28
    ldrb r0, [r5,#0x16]
    mov r1, #2
    bl sub_800B884
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800B892
    cmp r0, #3
    beq loc_800B9D4
    cmp r0, #0
    beq loc_800B9D4
    b locret_800BA88
loc_800B9D4:
    mov r0, #1
    lsl r0, r0, #0x10
    bl sub_801BED6
    mov r0, #1
    lsl r0, r0, #0x10
    bl sub_801DACC
    ldrh r0, [r5,#0x30]
    bl sub_8021AA4
    mov r1, #0
    mov r2, #0
    ldrb r3, [r0,#9]
    lsr r3, r3, #2
    bcc loc_800B9F8
    ldrh r1, [r5,#0x2c]
    ldrh r2, [r5,#0x32]
loc_800B9F8:
    ldrh r0, [r5,#0x30]
    push {r0-r2}
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    tst r0, r0
    pop {r0-r2}
    bne loc_800BA12
    add r3, r0, #0
    mov r0, #0x4c 
    bl loc_801E792
    b loc_800BA1A
loc_800BA12:
    add r3, r0, #0
    mov r0, #0x50 
    bl loc_801E792
loc_800BA1A:
    mov r0, #0x74 
    add r0, #0xff
    bl sound_play
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_800BA88
loc_800BA28:
    bl sub_801E754
    tst r0, r0
    bne locret_800BA88
    ldrb r0, [r5,#0x16]
    bl sub_800B8C2
    tst r0, r0
    bne loc_800BA56
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800B892
    cmp r0, #0
    beq loc_800BA56
    cmp r0, #5
    beq loc_800BA56
    ldrb r0, [r5,#0x16]
    mov r1, #3
    bl sub_800B884
    b locret_800BA88
loc_800BA56:
    ldrb r0, [r5,#0x16]
    mov r1, #4
    bl sub_800B884
    ldrb r0, [r5,#0x16]
    bl sub_800BF5C
    ldrb r1, [r0,#2]
    tst r1, r1
    bne loc_800BA7E
    ldr r1, [r0,#0xc]
    ldrh r2, [r1,#0x24]
    tst r2, r2
    bne loc_800BA7E
    ldrb r0, [r5,#9]
    add r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_800BA88
loc_800BA7E:
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_800BA88:
    pop {pc}
// end of function sub_800B9B0

.thumb
sub_800BA8A:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_800BB08
    ldrb r0, [r5,#0x16]
    bl sub_800B892
    cmp r0, #4
    beq loc_800BAB8
    ldrb r0, [r5,#0x16]
    mov r1, #2
    bl sub_800B884
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800B892
    cmp r0, #3
    beq loc_800BAB8
    cmp r0, #0
    beq loc_800BAB8
    b locret_800BB9E
loc_800BAB8:
    ldr r0, [pc, #0x800bba0-0x800bab8-4] // =0x10000
    bl sub_801BED6
    ldr r0, [pc, #0x800bba0-0x800babe-2] // =0x10000
    bl sub_801DACC
    ldrh r0, [r5,#0x30]
    bl sub_8021AA4
    mov r1, #0
    mov r2, #0
    ldrb r3, [r0,#9]
    lsr r3, r3, #2
    bcc loc_800BAD8
    ldrh r1, [r5,#0x2c]
    ldrh r2, [r5,#0x32]
loc_800BAD8:
    ldrh r0, [r5,#0x30]
    push {r0-r2}
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    tst r0, r0
    pop {r0-r2}
    bne loc_800BAF2
    add r3, r0, #0
    mov r0, #0x4c 
    bl loc_801E792
    b loc_800BAFA
loc_800BAF2:
    add r3, r0, #0
    mov r0, #0x50 
    bl loc_801E792
loc_800BAFA:
    mov r0, #0x74 
    add r0, #0xff
    bl sound_play
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_800BB9E
loc_800BB08:
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    tst r0, r0
    bne loc_800BB18
    bl sub_801E754
    b loc_800BB1C
loc_800BB18:
    bl sub_801E754
loc_800BB1C:
    tst r0, r0
    bne locret_800BB9E
    ldrb r0, [r5,#0x16]
    bl sub_800B8C2
    tst r0, r0
    bne loc_800BB46
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800B892
    cmp r0, #0
    beq loc_800BB46
    cmp r0, #5
    beq loc_800BB46
    ldrb r0, [r5,#0x16]
    mov r1, #3
    bl sub_800B884
    b locret_800BB9E
loc_800BB46:
    ldrb r0, [r5,#0x16]
    mov r1, #4
    bl sub_800B884
    ldrb r0, [r5,#0x16]
    bl sub_800BF5C
    ldr r1, [r0,#0xc]
    ldrh r2, [r1,#0x24]
    tst r2, r2
    bne loc_800BB72
    ldrb r1, [r5,#0x16]
    lsl r1, r1, #2
    ldr r0, [pc, #0x800bba4-0x800bb60-4] // =unk_200F3B8
    mov r2, #1
    str r2, [r0,r1]
    ldrb r0, [r5,#9]
    add r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_800BB9E
loc_800BB72:
    ldrh r0, [r5,#0x30]
    sub r0, #0xdd
    cmp r0, #0x3b 
    bhi loc_800BB88
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_802CE78
    cmp r0, #0xba
    beq loc_800BB94
loc_800BB88:
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_800BB9E
loc_800BB94:
    ldrb r0, [r5,#9]
    sub r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_800BB9E:
    pop {pc}
dword_800BBA0:    .word 0x10000
off_800BBA4:    .word unk_200F3B8
// end of function sub_800BA8A

.thumb
sub_800BBA8:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_800BC2C
    ldrb r0, [r5,#0x16]
    mov r1, #2
    bl sub_800B884
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800B892
    cmp r0, #3
    beq loc_800BBCC
    cmp r0, #0
    beq loc_800BBCC
    b locret_800BC86
loc_800BBCC:
    ldr r0, [pc, #0x800bf74-0x800bbcc-4] // =0x10000
    bl sub_801BED6
    ldr r0, [pc, #0x800bf74-0x800bbd2-2] // =0x10000
    bl sub_801DACC
    ldrh r0, [r5,#0x30]
    bl sub_8021AA4
    mov r1, #0
    mov r2, #0
    ldrb r3, [r0,#9]
    lsr r3, r3, #2
    bcc loc_800BBEC
    ldrh r1, [r5,#0x2c]
    ldrh r2, [r5,#0x32]
loc_800BBEC:
    ldrh r0, [r5,#0x30]
    push {r0-r2}
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    tst r0, r0
    pop {r0-r2}
    bne loc_800BC12
    ldrb r3, [r5,#7]
    cmp r3, #1
    bne loc_800BC08
    ldr r0, [pc, #0x800bf78-0x800bc02-2] // =0x171
    mov r1, #0
    mov r2, #0
loc_800BC08:
    add r3, r0, #0
    mov r0, #0x4c 
    bl loc_801E792
    b loc_800BC1E
loc_800BC12:
    ldr r3, [pc, #0x800bf78-0x800bc12-2] // =0x171
    mov r1, #0
    mov r2, #0
    mov r0, #0x50 
    bl loc_801E792
loc_800BC1E:
    mov r0, #0x74 
    add r0, #0xff
    bl sound_play
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_800BC86
loc_800BC2C:
    bl sub_801E754
    tst r0, r0
    bne locret_800BC86
    ldrb r0, [r5,#0x16]
    bl sub_800B8C2
    tst r0, r0
    bne loc_800BC5A
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800B892
    cmp r0, #0
    beq loc_800BC5A
    cmp r0, #5
    beq loc_800BC5A
    ldrb r0, [r5,#0x16]
    mov r1, #3
    bl sub_800B884
    b locret_800BC86
loc_800BC5A:
    ldrb r0, [r5,#0x16]
    mov r1, #4
    bl sub_800B884
    ldrb r0, [r5,#0x16]
    bl sub_800BF5C
    ldr r1, [r0,#0xc]
    ldrh r2, [r1,#0x24]
    tst r2, r2
    bne loc_800BC7C
    ldrb r0, [r5,#9]
    add r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_800BC86
loc_800BC7C:
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_800BC86:
    pop {pc}
// end of function sub_800BBA8

.thumb
sub_800BC88:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_800BCB0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800B892
    cmp r0, #5
    beq loc_800BCA4
    cmp r0, #0
    beq loc_800BCA4
    b loc_800BCB8
loc_800BCA4:
    mov r0, #0x38 
    mov r1, #4
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5,#0xb]
loc_800BCB0:
    bl engine_isScreeneffectAnimating
    tst r0, r0
    bne locret_800BCBC
loc_800BCB8:
    mov r0, #8
    str r0, [r5,#8]
locret_800BCBC:
    pop {pc}
    .byte 0, 0
// end of function sub_800BC88

.thumb
sub_800BCC0:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_800BCE8
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800B892
    cmp r0, #5
    beq loc_800BCDC
    cmp r0, #0
    beq loc_800BCDC
    b loc_800BCF0
loc_800BCDC:
    mov r0, #0x74 
    mov r1, #0x80
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5,#0xb]
loc_800BCE8:
    bl engine_isScreeneffectAnimating
    tst r0, r0
    bne locret_800BCF4
loc_800BCF0:
    mov r0, #8
    str r0, [r5,#8]
locret_800BCF4:
    pop {pc}
// end of function sub_800BCC0

    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_800BD26
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800B892
    cmp r0, #5
    beq loc_800BD1A
    cmp r0, #0
    beq loc_800BD1A
    mov r0, #0x3c 
    ldr r1, [pc, #0x800bf7c-0x800bd12-2] // =0x100
    bl engine_setScreeneffect
    b loc_800BD22
loc_800BD1A:
    mov r0, #0x84
    mov r1, #0x10
    bl engine_setScreeneffect
loc_800BD22:
    mov r0, #4
    strb r0, [r5,#0xb]
loc_800BD26:
    bl engine_isScreeneffectAnimating
    tst r0, r0
    bne locret_800BD32
    mov r0, #8
    str r0, [r5,#8]
locret_800BD32:
    pop {pc}
.thumb
object_timefreezeEnd:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    beq loc_800BD42
    bl object_freeMemory
    pop {pc}
loc_800BD42:
    ldrb r0, [r5,#0x16]
    mov r1, #5
    bl sub_800B884
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800B892
    cmp r0, #5
    beq loc_800BD5E
    cmp r0, #0
    beq loc_800BD5E
    b locret_800BDB0
loc_800BD5E:
    ldrb r0, [r5,#0x16]
    bl sub_800B8D8
    tst r0, r0
    beq loc_800BD94
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800BF5C
    ldr r1, [r0,#8]
    tst r1, r1
    beq loc_800BD80
    mov r2, #8
    str r2, [r1,#8]
    mov r2, #4
    strb r2, [r1,#0xb]
loc_800BD80:
    mov r2, #0
    str r2, [r0,#0xc]
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800B89C
    mov r0, #4
    bl battle_clearFlags
loc_800BD94:
    ldrb r0, [r5,#0x16]
    mov r1, #0
    bl sub_800B884
    ldrb r0, [r5,#0x16]
    bl sub_800B89C
    ldrb r0, [r5,#0x16]
    bl sub_800BF5C
    mov r2, #0
    str r2, [r0,#0xc]
    bl object_freeMemory
locret_800BDB0:
    pop {pc}
// end of function object_timefreezeEnd

loc_800BDB2:
    push {lr}
    ldr r1, [pc, #0x800bdc0-0x800bdb4-4] // =off_800BDC4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_800BDC0:    .word off_800BDC4
off_800BDC4:    .word sub_800BDD0+1
    .word sub_800BE0C+1
    .word sub_800BE2C+1
.thumb
sub_800BDD0:
    push {r4,lr}
    ldrh r0, [r5,#0x30]
    sub r0, #0xdd
    cmp r0, #0x3b 
    bhi loc_800BDE8
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_802CE78
    cmp r0, #0xba
    beq loc_800BDF4
loc_800BDE8:
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_800BE08
loc_800BDF4:
    ldrb r0, [r5,#0x16]
    mov r1, #4
    bl sub_800B884
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800ABC6
    mov r0, #4
    strh r0, [r5,#0xa]
locret_800BE08:
    pop {r4,pc}
    .balign 4, 0x00
// end of function sub_800BDD0

.thumb
sub_800BE0C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_800BE1E
    mov r0, #0x1e
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_800BE2A
loc_800BE1E:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_800BE2A
    mov r0, #8
    strh r0, [r5,#0xa]
locret_800BE2A:
    pop {pc}
// end of function sub_800BE0C

.thumb
sub_800BE2C:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_800BE6C
    mov r0, #0xba
    mov r1, #0
    mov r2, #0
    push {r0-r2}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl battle_networkInvert
    tst r0, r0
    pop {r0-r2}
    bne loc_800BE56
    add r3, r0, #0
    mov r0, #0x4c 
    bl loc_801E792
    b loc_800BE5E
loc_800BE56:
    add r3, r0, #0
    mov r0, #0x50 
    bl loc_801E792
loc_800BE5E:
    mov r0, #0x74 
    add r0, #0xff
    bl sound_play
    mov r0, #4
    strb r0, [r5,#0xb]
    b locret_800BED8
loc_800BE6C:
    bl sub_801E754
    tst r0, r0
    bne locret_800BED8
    ldrb r0, [r5,#0x16]
    bl sub_800B89C
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    strb r0, [r5,#0x16]
    bl sub_800B8AC
    ldrb r0, [r5,#0x16]
    mov r1, #4
    bl sub_800B884
    ldrb r0, [r5,#0x16]
    bl sub_800BF5C
    ldr r3, [r0,#8]
    tst r3, r3
    beq loc_800BEA2
    mov r1, #8
    str r1, [r3,#8]
    mov r1, #4
    strb r1, [r3,#0xb]
loc_800BEA2:
    push {r4}
    ldrb r4, [r5,#0x16]
    mov r0, #0
    bl sub_800BF5C
    strb r4, [r0,#3]
    mov r0, #1
    bl sub_800BF5C
    strb r4, [r0,#3]
    pop {r4}
    ldrb r0, [r5,#0x16]
    bl sub_802CE78
    add r0, r3, #0
    beq loc_800BEC8
    ldrh r1, [r0,#0x12]
    strh r1, [r5,#0x12]
    str r0, [r5,#0x4c]
loc_800BEC8:
    ldrb r0, [r5,#0x16]
    bl sub_802CEA6
    ldrb r0, [r5,#9]
    add r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_800BED8:
    pop {pc}
// end of function sub_800BE2C

.thumb
sub_800BEDA:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_800BF5C
    ldr r2, [r0,#0xc]
    tst r2, r2
    beq loc_800BEEC
    cmp r2, r5
    bne loc_800BF12
loc_800BEEC:
    ldrb r2, [r0,#1]
    cmp r2, #0
    beq loc_800BEF8
    cmp r2, #3
    beq loc_800BEF8
    b loc_800BF12
loc_800BEF8:
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_800BF5C
    ldrb r2, [r0,#2]
    tst r2, r2
    bne loc_800BF12
    ldrb r2, [r0,#1]
    cmp r2, #2
    bne loc_800BF12
    mov r0, #1
    pop {pc}
loc_800BF12:
    mov r0, #0
    pop {pc}
// end of function sub_800BEDA

.thumb
sub_800BF16:
    push {r4,lr}
    push {r0-r2}
    add r4, r0, #0
    mov r0, #0
    bl sub_800BF5C
    strb r4, [r0,#3]
    mov r0, #1
    bl sub_800BF5C
    strb r4, [r0,#3]
    pop {r0-r2}
    b loc_800BF32
loc_800BF30:
    push {r4,lr}
loc_800BF32:
    push {r0-r2}
    bl sub_800B8AC
    pop {r0-r2}
    push {r1,r2}
    bl sub_800BF5C
    ldr r3, [r0,#8]
    tst r3, r3
    pop {r1,r2}
    beq loc_800BF50
    mov r4, #8
    str r4, [r3,#8]
    mov r4, #4
    strb r4, [r3,#0xb]
loc_800BF50:
    strb r1, [r0,#2]
    str r2, [r0,#8]
    str r5, [r0,#0xc]
    mov r1, #1
    strb r1, [r0,#1]
    pop {r4,pc}
// end of function sub_800BF16

.thumb
sub_800BF5C:
    mov r1, #0x50 
    mul r0, r1
    ldr r1, [pc, #0x800bf80-0x800bf60-4] // =unk_203CF00
    add r0, r0, r1
    mov pc, lr
// end of function sub_800BF5C

.thumb
sub_800BF66:
    push {lr}
    ldr r0, [pc, #0x800bf84-0x800bf68-4] // =unk_203CF00  // memBlock
    mov r1, #0xa0  // numWords
    bl CpuSet_ZeroFillWord
    pop {pc}
    .balign 4, 0x00
dword_800BF74:    .word 0x10000
off_800BF78:    .word 0x171
off_800BF7C:    .word 0x100
off_800BF80:    .word unk_203CF00
off_800BF84:    .word unk_203CF00
// end of function sub_800BF66

.thumb
sub_800BF88:
    push {r4,r6,r7,lr}
    bl sub_800C4BC
    ldr r0, [pc, #0x800c1f8-0x800bf8e-2] // =dword_203CB04
    mov r1, #0x8c
    str r1, [r0]
    ldr r7, [pc, #0x800bfc0-0x800bf94-4] // =byte_2036740
    mov r0, #0
    strb r0, [r7,#0x2] // (byte_2036742 - 0x2036740)
    strb r0, [r7,#0x4] // (byte_2036744 - 0x2036740)
    strb r0, [r7,#0x6] // (byte_2036746 - 0x2036740)
    strb r0, [r7,#0x8] // (byte_2036748 - 0x2036740)
    strb r0, [r7,#0xa] // (byte_203674A - 0x2036740)
    strb r0, [r7,#0xc] // (byte_203674C - 0x2036740)
    mov r0, #0xe
    strb r0, [r7,#0x3] // (byte_2036743 - 0x2036740)
    mov r0, #0xd
    strb r0, [r7,#0x5] // (byte_2036745 - 0x2036740)
    mov r0, #0xc
    strb r0, [r7,#0x7] // (byte_2036747 - 0x2036740)
    mov r0, #0xb
    strb r0, [r7,#0x9] // (byte_2036749 - 0x2036740)
    mov r0, #0xa
    strb r0, [r7,#0xb] // (byte_203674B - 0x2036740)
    mov r0, #9
    strb r0, [r7,#0xd] // (byte_203674D - 0x2036740)
    pop {r4,r6,r7,pc}
    .byte 0, 0
off_800BFC0:    .word byte_2036740
// end of function sub_800BF88

.thumb
sub_800BFC4:
    push {r4,r5,r7,lr}
    bl battle_isPaused
    tst r0, r0
    bne locret_800C016
    bl battle_isTimeStop
    bne locret_800C016
    bl sub_800C746
    ldr r0, [pc, #0x800c1fc-0x800bfd8-4] // =dword_203CB04
    ldr r1, [r0]
    sub r1, #1
    str r1, [r0]
    bne loc_800BFE6
    mov r2, #0x8c
    str r2, [r0]
loc_800BFE6:
    ldr r7, [pc, #0x800c018-0x800bfe6-2] // =unk_2039C00
    mov r5, #1
loc_800BFEA:
    mov r4, #1
loc_800BFEC:
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800C380
    mov r0, #0
    ldrb r1, [r7,#2]
    cmp r1, #3
    bne loc_800C004
    add r0, r4, #0
    add r1, r5, #0
    bl object_getPanelParameters
loc_800C004:
    str r0, [r7,#0x18]
    add r7, #0x20 
    add r4, #1
    cmp r4, #6
    ble loc_800BFEC
    add r7, #0x40 
    add r5, #1
    cmp r5, #3
    ble loc_800BFEA
locret_800C016:
    pop {r4,r5,r7,pc}
off_800C018:    .word unk_2039C00
// end of function sub_800BFC4

.thumb
sub_800C01C:
    push {r4-r7,lr}
    sub sp, sp, #0x28
    mov r6, r10
    ldr r6, [r6,#0x18]
    ldrb r4, [r6,#0xd]
    cmp r4, #0
    beq loc_800C038
    cmp r2, #0xb
    blt loc_800C038
    cmp r2, #0xc
    beq loc_800C036
    mov r2, #0xc
    b loc_800C038
loc_800C036:
    mov r2, #0xb
loc_800C038:
    eor r3, r4
    lsl r4, r4, #3
    ldr r6, [pc, #0x800c088-0x800c03c-4] // =0x800C0A8
    add r6, r6, r4
    ldrb r4, [r6,r0]
    str r4, [sp]
    mov r4, #3
    mul r4, r1
    add r4, #6
    str r4, [sp,#4]
    ldr r6, [pc, #0x800c084-0x800c04c-4] // =dword_800C08C
    cmp r2, #0xff
    beq loc_800C066
    mov r4, #6
    mul r4, r2
    mov r2, #3
    mul r3, r2
    add r4, r4, r3
    add r4, r4, r1
    sub r4, #1
    ldr r6, [pc, #0x800c07c-0x800c060-4] // =byte_86DFA98
    lsl r7, r4, #5
    add r6, r6, r7
loc_800C066:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #2
    add r3, r6, #0
    mov r4, #5
    mov r5, #3
    ldr r6, [pc, #0x800c080-0x800c072-2] // =loc_3005E80+1
    mov lr, pc
    bx r6
// end of function sub_800C01C

    add sp, sp, #0x28
    pop {r4-r7,pc}
off_800C07C:    .word byte_86DFA98
off_800C080:    .word loc_3005E80+1
off_800C084:    .word dword_800C08C
dword_800C088:    .word 0x800C0AA
dword_800C08C:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0xFB0000, 0x140F0A05, 0x191E1E19, 0x50A0F14
    .byte 0x0, 0xFB
.thumb
sub_800C0BA:
    push {r4-r7,lr}
    sub sp, sp, #0x28
    mov r6, r10
    ldr r6, [r6,#0x18]
    ldrb r4, [r6,#0xd]
    lsl r4, r4, #3
    ldr r6, [pc, #0x800c0fc-0x800c0c6-2] // =0x800C0A8
    add r6, r6, r4
    ldrb r4, [r6,r0]
    str r4, [sp]
    mov r4, #3
    mul r4, r1
    add r4, #6
    str r4, [sp,#4]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    ldr r3, [pc, #0x800c0f0-0x800c0da-2] // =off_800C0F4
    lsl r2, r2, #2
    ldr r3, [r3,r2]
    mov r2, #2
    mov r4, #5
    mov r5, #3
    bl sub_80018C2
// end of function sub_800C0BA

    add sp, sp, #0x28
    pop {r4-r7,pc}
    .byte 0, 0
off_800C0F0:    .word off_800C0F4
off_800C0F4:    .word dword_86E0458
    .word dword_86E0478
dword_800C0FC:    .word 0x800C0AA
.thumb
sub_800C100:
    push {r4-r7,lr}
    sub sp, sp, #0x28
    mov r6, r10
    ldr r6, [r6,#0x18]
    ldrb r4, [r6,#0xd]
    eor r2, r4
    lsl r4, r4, #3
    ldr r6, [pc, #0x800c174-0x800c10e-2] // =0x800C180
    add r6, r6, r4
    ldrb r4, [r6,r0]
    str r4, [sp]
    mov r4, #3
    mul r4, r1
    add r4, #6
    str r4, [sp,#4]
    ldr r6, [pc, #0x800c16c-0x800c11e-2] // =dword_86E0498
    lsl r7, r2, #5
    add r6, r6, r7
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #2
    add r3, r6, #0
    mov r4, #5
    mov r5, #1
    bl sub_80018C2
// end of function sub_800C100

    add sp, sp, #0x28
    pop {r4-r7,pc}
.thumb
sub_800C138:
    push {r4-r7,lr}
    sub sp, sp, #0x28
    mov r6, r10
    ldr r6, [r6,#0x18]
    ldrb r4, [r6,#0xd]
    eor r2, r4
    lsl r4, r4, #3
    ldr r6, [pc, #0x800c174-0x800c146-2] // =0x800C180
    add r6, r6, r4
    ldrb r4, [r6,r0]
    str r4, [sp]
    mov r4, #3
    mul r4, r1
    add r4, #6
    str r4, [sp,#4]
    ldr r6, [pc, #0x800c170-0x800c156-2] // =dword_800C178
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #2
    add r3, r6, #0
    mov r4, #5
    mov r5, #1
    bl sub_80018C2
// end of function sub_800C138

    add sp, sp, #0x28
    pop {r4-r7,pc}
off_800C16C:    .word dword_86E0498
off_800C170:    .word dword_800C178
dword_800C174:    .word 0x800C182
dword_800C178:    .word 0x0, 0x0
    .word 0xFB0000, 0x140F0A05, 0x191E1E19, 0x50A0F14
    .byte 0x0, 0xFB
.thumb
sub_800C192:
    push {r4-r7,lr}
    ldr r5, [pc, #0x800c1d8-0x800c194-4] // =byte_2036740
    ldr r7, [pc, #0x800c1d4-0x800c196-2] // =off_800C1DC
loc_800C198:
    ldr r6, [r7]
    tst r6, r6
    beq locret_800C1D0
    ldrb r4, [r6,#2]
    ldrb r2, [r5,r4]
    sub r2, #1
    strb r2, [r5,r4]
    bgt loc_800C1CC
    ldrb r1, [r6]
    ldrb r3, [r6,#1]
    ldrb r2, [r5,r1]
    add r2, #1
    cmp r2, r3
    blt loc_800C1B6
    mov r2, #0
loc_800C1B6:
    strb r2, [r5,r1]
    lsl r2, r2, #3
    add r2, #8
    add r2, r2, r6
    ldr r0, [r2,#4]
    strb r0, [r5,r4]
    ldr r0, [r2]
    ldr r1, [r6,#4]
    mov r2, #0x20 
    bl sub_8000950
loc_800C1CC:
    add r7, #4
    b loc_800C198
locret_800C1D0:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_800C1D4:    .word off_800C1DC
off_800C1D8:    .word byte_2036740
off_800C1DC:    .word dword_800C200
    .word dword_800C258
    .word dword_800C2B0
    .word dword_800C2D8
    .word dword_800C300
    .word dword_800C340
    .byte 0, 0, 0, 0
off_800C1F8:    .word dword_203CB04
off_800C1FC:    .word dword_203CB04
dword_800C200:    .word 0x30A02, 0x30019A0, 0x86E0918, 0x10, 0x86E04D8, 0x10
    .word 0x86E04F8, 0x10, 0x86E0518, 0x10, 0x86E0538, 0x10
    .word 0x86E0558, 0x10, 0x86E0538, 0x10, 0x86E0518, 0x10
    .word 0x86E04F8, 0x10, 0x86E04D8, 0x10
dword_800C258:    .word 0x50A04, 0x3001A20, 0x86E0998, 0x10, 0x86E06D8, 0x10
    .word 0x86E06F8, 0x10, 0x86E0718, 0x10, 0x86E0738, 0x10
    .word 0x86E0758, 0x10, 0x86E0738, 0x10, 0x86E0718, 0x10
    .word 0x86E06F8, 0x10, 0x86E06D8, 0x10
dword_800C2B0:    .word 0x70406, 0x30019C0, 0x86E0938, 0x8, 0x86E0578, 0x8, 0x86E0598
    .word 0x8, 0x86E05B8, 0x8
dword_800C2D8:    .word 0x90408, 0x3001A40, 0x86E09B8, 0x8, 0x86E0778, 0x8, 0x86E0798
    .word 0x8, 0x86E07B8, 0x8
dword_800C300:    .word 0xB070A, 0x30019E0, 0x86E0958, 0xA, 0x86E05D8, 0xA
    .word 0x86E05F8, 0xA, 0x86E0618, 0xA, 0x86E0638, 0xA
    .word 0x86E0658, 0xA, 0x86E0678, 0xA
dword_800C340:    .word 0xD070C, 0x3001A60, 0x86E09D8, 0xA, 0x86E07D8, 0xA
    .word 0x86E07F8, 0xA, 0x86E0818, 0xA, 0x86E0838, 0xA
    .word 0x86E0858, 0xA, 0x86E0878, 0xA
// end of function sub_800C192

.thumb
sub_800C380:
    push {r4-r7,lr}
    add r4, r0, #0
    add r5, r1, #0
    ldrb r0, [r7,#2]
    cmp r0, #0
    bne loc_800C38E
    b locret_800C486
loc_800C38E:
    cmp r0, #1
    bne loc_800C398
    ldr r1, [pc, #0x800c4b4-0x800c392-2] // =0x708
    strh r1, [r7,#0x12]
    b loc_800C3D4
loc_800C398:
    cmp r0, #3
    bne loc_800C3A8
    bl sub_800C488
    strh r1, [r7,#0xe]
    ldr r1, [pc, #0x800c4b4-0x800c3a2-2] // =0x708
    strh r1, [r7,#0x12]
    b loc_800C402
loc_800C3A8:
    cmp r0, #8
    bne loc_800C3B8
    bl sub_800C488
    strh r1, [r7,#0xe]
    ldr r1, [pc, #0x800c4b4-0x800c3b2-2] // =0x708
    strh r1, [r7,#0x12]
    b loc_800C438
loc_800C3B8:
    cmp r0, #9
    blt loc_800C3C8
    cmp r0, #0xc
    bgt loc_800C3C8
    bl sub_800C488
    strh r1, [r7,#0xe]
    b loc_800C45C
loc_800C3C8:
    bl sub_800C488
    strh r1, [r7,#0xe]
    ldr r1, [pc, #0x800c4b4-0x800c3ce-2] // =0x708
    strh r1, [r7,#0x12]
    pop {r4-r7,pc}
loc_800C3D4:
    ldrh r1, [r7,#0xe]
    sub r1, #1
    strh r1, [r7,#0xe]
    tst r1, r1
    bne loc_800C3F2
    mov r0, #2
    strb r0, [r7,#2]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800C928
    bl sub_800C488
    strh r1, [r7,#0xe]
    pop {r4-r7,pc}
loc_800C3F2:
    mov r2, #1
    cmp r1, #0x3c 
    bgt loc_800C3FE
    lsr r1, r1, #2
    bcc loc_800C3FE
    mov r2, #2
loc_800C3FE:
    strb r2, [r7,#6]
    pop {r4-r7,pc}
loc_800C402:
    ldr r1, [pc, #0x800c4a0-0x800c402-2] // =0xF800000
    ldr r0, [r7,#0x18]
    tst r0, r1
    beq locret_800C436
    ldr r1, [pc, #0x800c4a4-0x800c40a-2] // =0x100000
    tst r0, r1
    bne locret_800C436
    add r0, r4, #0
    add r1, r5, #0
    bl object_getPanelParameters
    ldr r1, [pc, #0x800c49c-0x800c418-4] // =0xF880080
    tst r0, r1
    bne locret_800C436
    mov r0, #1
    strb r0, [r7,#2]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800C928
    bl sub_800C488
    strh r1, [r7,#0xe]
    mov r0, #0x97
    bl sound_play
locret_800C436:
    pop {r4-r7,pc}
loc_800C438:
    ldr r0, [pc, #0x800c4b8-0x800c438-4] // =dword_203CB04
    ldr r1, [r0]
    mov r2, #0x8c
    ldrb r0, [r7,#0xa]
    cmp r0, #3
    ble loc_800C446
    mov r2, #0x46 
loc_800C446:
    cmp r1, r2
    bne locret_800C45A
    ldrb r0, [r7,#0xa]
    ldrb r1, [r7,#0xb]
    mov r2, #0
    mov r3, #0
    mov r4, #0x28 
    mov r6, #0x32 
    bl sub_80C5B76
locret_800C45A:
    pop {r4-r7,pc}
loc_800C45C:
    ldrh r1, [r7,#0x12]
    sub r1, #1
    strh r1, [r7,#0x12]
    tst r1, r1
    bne loc_800C478
    mov r0, #2
    strb r0, [r7,#2]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800C928
    ldr r1, [pc, #0x800c4b4-0x800c472-2] // =0x708
    strh r1, [r7,#0x12]
    pop {r4-r7,pc}
loc_800C478:
    ldrb r2, [r7,#2]
    cmp r1, #0x3c 
    bgt loc_800C484
    lsr r1, r1, #2
    bcc loc_800C484
    mov r2, #2
loc_800C484:
    strb r2, [r7,#6]
locret_800C486:
    pop {r4-r7,pc}
// end of function sub_800C380

.thumb
sub_800C488:
    push {r0,r2,r3,lr}
    bl sub_802D234
    ldr r1, [pc, #0x800c498-0x800c48e-2] // =0x258
    cmp r0, #1
    bne locret_800C496
    ldr r1, [pc, #0x800c4b0-0x800c494-4] // =0x1E0
locret_800C496:
    pop {r0,r2,r3,pc}
off_800C498:    .word 0x258
dword_800C49C:    .word 0xF880080
dword_800C4A0:    .word 0xF800000
dword_800C4A4:    .word 0x100000
    .word 0xF800000, 0x8000
off_800C4B0:    .word 0x1E0
off_800C4B4:    .word 0x708
off_800C4B8:    .word dword_203CB04
// end of function sub_800C488

.thumb
sub_800C4BC:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r1, [sp,#4]
    bl sub_800C6D6
    str r0, [sp]
    mov r0, #0
    bl sub_800C8C2
    mov r1, #0x40   // numWords
    bl CpuSet_ZeroFillWord
    mov r0, #0
    bl sub_800C8C2
    add r7, r0, #0
    mov r4, #0
loc_800C4DE:
    mov r1, #0xff
    sub r0, r4, #1
    cmp r0, #5
    bhi loc_800C4F0
    ldr r0, [sp,#4]
    sub r1, r4, #1
    lsr r0, r1
    mov r1, #1
    and r1, r0
loc_800C4F0:
    strb r1, [r7]
    add r7, #8
    add r4, #1
    cmp r4, #8
    blt loc_800C4DE
    ldr r0, [pc, #0x800c584-0x800c4fa-2] // =byte_2039AE0  // memBlock
    ldr r1, [pc, #0x800c588-0x800c4fc-4] // =0x500  // numWords
    bl CpuSet_ZeroFillWord
    mov r5, #0
loc_800C504:
    mov r4, #0
loc_800C506:
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800C6E0
    add r7, r0, #0
    mov r0, #8
    mul r0, r5
    add r0, r0, r4
    ldr r1, [pc, #0x800c57c-0x800c516-2] // =dword_800C590
    ldrb r0, [r1,r0]
    strb r0, [r7]
    add r0, r4, #0
    add r1, r5, #0
    bl object_isValidPanel
    mov r1, #0
    tst r0, r0
    beq loc_800C53C
    ldr r0, [sp]
    sub r1, r5, #1
    lsl r1, r1, #2
    ldr r0, [r1,r0]
    sub r1, r4, #1
    lsl r1, r1, #2
    lsr r0, r1
    mov r1, #0xf
    and r1, r0
loc_800C53C:
    strb r1, [r7,#2]
    strb r1, [r7,#6]
    add r0, r4, #0
    bl sub_800C8C2
    ldrb r1, [r0]
    strb r1, [r7,#3]
    strb r1, [r7,#4]
    strb r1, [r7,#7]
    mov r0, #8
    mul r0, r5
    add r0, r0, r4
    ldr r1, [pc, #0x800c580-0x800c554-4] // =dword_800C5B8
    ldrb r0, [r1,r0]
    strb r0, [r7,#0xc]
    strb r4, [r7,#0xa]
    strb r5, [r7,#0xb]
    bl sub_800C488
    strh r1, [r7,#0xe]
    ldr r1, [pc, #0x800c58c-0x800c564-4] // =0x708
    strh r1, [r7,#0x12]
    add r4, #1
    cmp r4, #8
    blt loc_800C506
    add r5, #1
    cmp r5, #5
    blt loc_800C504
    bl sub_800C67C
    add sp, sp, #8
    pop {r4-r7,pc}
off_800C57C:    .word dword_800C590
off_800C580:    .word dword_800C5B8
off_800C584:    .word byte_2039AE0
off_800C588:    .word 0x500
off_800C58C:    .word 0x708
dword_800C590:    .word 0x0, 0x0
    .word 0x1010100, 0x10101, 0x1010100, 0x10101, 0x1010100
    .word 0x10101, 0x0, 0x0
dword_800C5B8:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x1010100, 0x10101, 0x0, 0x0
// end of function sub_800C4BC

.thumb
sub_800C5E0:
    push {r4-r7,lr}
    bl sub_800C192
    ldr r7, [pc, #0x800c8cc-0x800c5e6-2] // =byte_2039AE0
    mov r6, #0
loc_800C5EA:
    ldrb r4, [r7,#0xa]
    ldrb r5, [r7,#0xb]
    add r0, r4, #0
    add r1, r5, #0
    bl object_isValidPanel
    beq loc_800C672
    ldrb r0, [r7]
    tst r0, r0
    beq loc_800C648
    ldrb r0, [r7,#0xd]
    tst r0, r0
    bne loc_800C626
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_800C638
    add r0, r4, #0
    add r1, r5, #0
    ldrb r2, [r7,#6]
    ldrb r3, [r7,#7]
    bl sub_800C01C
    b loc_800C662
    add r0, r4, #0
    add r1, r5, #0
    ldrb r2, [r7,#2]
    ldrb r3, [r7,#3]
    bl sub_800C01C
    b loc_800C662
loc_800C626:
    mov r0, #0
    strb r0, [r7,#0xd]
    add r0, r4, #0
    add r1, r5, #0
    ldrb r2, [r7,#8]
    ldrb r3, [r7,#9]
    bl sub_800C01C
    b loc_800C662
loc_800C638:
    sub r2, r0, #1
    mov r0, #0
    strb r0, [r7,#1]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800C0BA
    b loc_800C662
loc_800C648:
    add r0, r4, #0
    add r1, r5, #0
    mov r2, #0xff
    mov r3, #0
    bl sub_800C01C
    ldrb r0, [r7,#0xa]
    ldrb r1, [r7,#0xb]
    add r1, #1
    ldrb r2, [r7,#7]
    bl sub_800C138
    b loc_800C672
loc_800C662:
    ldrb r0, [r7,#0xc]
    tst r0, r0
    beq loc_800C672
    add r0, r4, #0
    add r1, r5, #1
    ldrb r2, [r7,#7]
    bl sub_800C100
loc_800C672:
    add r7, #0x20 
    add r6, #1
    cmp r6, #0x28 
    blt loc_800C5EA
    pop {r4-r7,pc}
// end of function sub_800C5E0

.thumb
sub_800C67C:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    ldr r7, [pc, #0x800c8d0-0x800c680-4] // =byte_203F6B0
    mov r0, #1
    str r0, [sp]
    mov r0, #6
    str r0, [sp,#4]
    mov r4, #1
loc_800C68C:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    cmp r0, r1
    bge loc_800C6CE
    mov r6, #1
    sub r6, r6, r4
    lsl r6, r6, #1
    mov r1, sp
    add r6, r6, r1
    ldr r0, [r6]
    add r1, r4, #0
    push {r0,r1}
    bl sub_800C84A
    strb r0, [r7,#2]
    strb r1, [r7,#3]
    add r2, r0, #0
    pop {r0,r1}
    sub r3, r2, #1
    mul r3, r1
    add r3, r3, r0
    strb r3, [r7]
    add r3, r1, #0
    neg r3, r3
    strb r3, [r7,#1]
    add r3, r2, #0
    mul r3, r4
    ldr r5, [r6]
    add r5, r5, r3
    str r5, [r6]
    neg r4, r4
    add r7, #4
    b loc_800C68C
loc_800C6CE:
    mov r0, #0xff
    strb r0, [r7]
    add sp, sp, #0xc
    pop {r4-r7,pc}
// end of function sub_800C67C

.thumb
sub_800C6D6:
    mov r1, #0xc
    mul r0, r1
    ldr r1, [pc, #0x800c8d4-0x800c6da-2] // =unk_800D730
    add r0, r0, r1
    mov pc, lr
// end of function sub_800C6D6

.thumb
sub_800C6E0:
    mov r2, #8
    mul r1, r2
    add r0, r0, r1
    mov r1, #0x20 
    mul r0, r1
    ldr r1, [pc, #0x800c8d8-0x800c6ea-2] // =byte_2039AE0
    add r0, r0, r1
    mov pc, lr
// end of function sub_800C6E0

.thumb
sub_800C6F0:
    push {r4-r7,lr}
    sub sp, sp, #8
    mov r6, #0
    mov r7, #0
    add r4, r0, #0
    mov r5, #1
    str r6, [sp]
    str r6, [sp,#4]
loc_800C700:
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800C90A
// end of function sub_800C6F0

    tst r0, r0
    beq loc_800C734
    ldrb r1, [r0,#3]
    ldrb r2, [r0,#4]
    cmp r1, r2
    beq loc_800C734
    add r6, #1
    mov r1, #1
    lsl r1, r5
    ldr r2, [sp]
    orr r2, r1
    str r2, [sp]
    ldr r1, [r0,#0x14]
    ldr r2, [pc, #0x800c8dc-0x800c722-2] // =0xF880080
    tst r1, r2
    bne loc_800C734
    add r7, #1
    mov r1, #1
    lsl r1, r5
    ldr r2, [sp,#4]
    orr r2, r1
    str r2, [sp,#4]
loc_800C734:
    add r5, #1
    cmp r5, #3
    ble loc_800C700
    add r0, r6, #0
    add r1, r7, #0
    ldr r2, [sp]
    ldr r3, [sp,#4]
    add sp, sp, #8
    pop {r4-r7,pc}
.thumb
sub_800C746:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    mov r4, #1
    ldr r7, [pc, #0x800c8e0-0x800c74c-4] // =unk_2034018
loc_800C74E:
    add r0, r4, #0
    bl sub_800C6F0
    strb r0, [r7,#2]
    strb r1, [r7,#3]
    strb r2, [r7,#4]
    strb r3, [r7,#5]
    tst r0, r0
    bne loc_800C764
    mov r0, #0
    strh r0, [r7,#6]
loc_800C764:
    ldrh r0, [r7,#6]
    tst r0, r0
    beq loc_800C774
    sub r0, #1
    strh r0, [r7,#6]
    bne loc_800C774
    mov r0, #1
    strb r0, [r7,#1]
loc_800C774:
    add r7, #8
    add r4, #1
    cmp r4, #6
    ble loc_800C74E
    ldr r7, [pc, #0x800c8e4-0x800c77c-4] // =byte_203F6B0
loc_800C77E:
    ldrb r4, [r7]
    cmp r4, #0xff
    beq loc_800C7E8
    mov r5, #0
    ldrb r6, [r7,#2]
loc_800C788:
    sub r6, #1
    blt loc_800C7BE
    add r0, r4, #0
    bl sub_800C8C2
    add r3, r0, #0
    ldrb r1, [r3,#4]
    tst r1, r1
    beq loc_800C7B6
    ldrb r0, [r3,#1]
    tst r0, r0
    beq loc_800C7B4
    ldrb r2, [r3,#5]
    cmp r1, r2
    bne loc_800C7B4
    add r1, r5, r5
    add r0, sp, #0
    add r0, r0, r1
    strb r4, [r0]
    strb r2, [r0,#1]
    add r5, #1
    b loc_800C7B6
loc_800C7B4:
    mov r5, #0
loc_800C7B6:
    mov r0, #1
    ldrsb r0, [r7,r0]
    add r4, r4, r0
    b loc_800C788
loc_800C7BE:
    mov r4, #0
    tst r5, r5
    beq loc_800C7E4
    add r0, r4, r4
    add r6, sp, #0
    add r6, r6, r0
    ldrb r0, [r6]
    bl sub_800C8C2
    mov r1, #0
    strb r1, [r0,#1]
    ldrb r1, [r6,#1]
    ldrb r2, [r7,#3]
    ldrb r0, [r6]
    bl sub_800C81E
    add r4, #1
    sub r5, #1
    b loc_800C7BE
loc_800C7E4:
    add r7, #4
    b loc_800C77E
loc_800C7E8:
    mov r7, #1
loc_800C7EA:
    mov r6, #1
loc_800C7EC:
    add r0, r6, #0
    add r1, r7, #0
    bl sub_800C90A
// end of function sub_800C746

    ldrb r3, [r0,#3]
    strb r3, [r0,#7]
    ldrh r1, [r0,#0x10]
    tst r1, r1
    beq loc_800C80E
    sub r1, #1
    strh r1, [r0,#0x10]
    mov r3, #4
    and r3, r1
    lsr r3, r3, #2
    ldrb r4, [r0,#7]
    eor r4, r3
    strb r4, [r0,#7]
loc_800C80E:
    add r6, #1
    cmp r6, #6
    ble loc_800C7EC
    add r7, #1
    cmp r7, #3
    ble loc_800C7EA
    add sp, sp, #0x10
    pop {r4-r7,pc}
.thumb
sub_800C81E:
    push {r4-r7,lr}
    add r4, r0, #0
    mov r5, #1
    add r6, r2, #0
    lsr r7, r1, #1
loc_800C828:
    lsr r7, r7, #1
    bcc loc_800C842
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800C6E0
    strb r6, [r0,#3]
    mov r1, #0x5a 
    strb r1, [r0,#0x10]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800C928
loc_800C842:
    add r5, #1
    tst r7, r7
    bne loc_800C828
    pop {r4-r7,pc}
// end of function sub_800C81E

.thumb
sub_800C84A:
    push {r4-r6,lr}
    add r4, r0, #0
    add r5, r1, #0
    bl sub_800C8C2
    mov r2, #8
    mul r2, r5
    ldrb r3, [r0]
    add r0, r0, r2
    mov r6, #1
loc_800C85E:
    sub r1, r4, #1
    cmp r1, #5
    bhi loc_800C872
    ldrb r1, [r0]
    cmp r1, r3
    bne loc_800C872
    add r6, #1
    add r0, r0, r2
    add r4, r4, r5
    b loc_800C85E
loc_800C872:
    add r0, r6, #0
    add r1, r3, #0
    pop {r4-r6,pc}
// end of function sub_800C84A

    push {r4-r7,lr}
    lsr r7, r0, #1
    ldr r6, [pc, #0x800c8e8-0x800c87c-4] // =unk_2034010
loc_800C87E:
    add r6, #8
    tst r7, r7
    beq loc_800C894
    lsr r7, r7, #1
    bcc loc_800C87E
    mov r0, #1
    strb r0, [r6,#1]
    mov r0, #0
    strh r0, [r6,#6]
    strb r1, [r6]
    b loc_800C87E
loc_800C894:
    mov r5, #0
loc_800C896:
    mov r4, #0
loc_800C898:
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800C6E0
    add r7, r0, #0
    add r0, r4, #0
    bl sub_800C8C2
    ldrb r1, [r0]
    strb r1, [r7,#4]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800C928
    add r4, #1
    cmp r4, #8
    blt loc_800C898
    add r5, #1
    cmp r5, #5
    blt loc_800C896
    pop {r4-r7,pc}
.thumb
sub_800C8C2:
    mov r1, #8
    mul r1, r0
    ldr r0, [pc, #0x800c8ec-0x800c8c6-2] // =unk_2034010
    add r0, r0, r1
    mov pc, lr
off_800C8CC:    .word byte_2039AE0
off_800C8D0:    .word byte_203F6B0
off_800C8D4:    .word unk_800D730
off_800C8D8:    .word byte_2039AE0
dword_800C8DC:    .word 0xF880080
off_800C8E0:    .word unk_2034018
off_800C8E4:    .word byte_203F6B0
off_800C8E8:    .word unk_2034010
off_800C8EC:    .word unk_2034010
// end of function sub_800C8C2

.thumb
sub_800C8F0:
    push {lr}
    bl sub_800C918
// end of function sub_800C8F0

    pop {pc}
.thumb
object_getPanelParameters:
    push {lr}
    bl sub_800C90A
    tst r0, r0
    beq loc_800C906
    ldr r0, [r0,#0x14]
    pop {pc}
loc_800C906:
    mov r0, #0
    pop {pc}
// end of function object_getPanelParameters

.thumb
sub_800C90A:
    push {lr}
    ldr r2, [pc, #0x800c914-0x800c90c-4] // =loc_3007958+1
    mov lr, pc
    bx r2
// end of function sub_800C90A

    pop {pc}
off_800C914:    .word loc_3007958+1
.thumb
sub_800C918:
    push {lr}
    ldr r0, [pc, #0x800c924-0x800c91a-2] // =loc_30078C8+1
    mov lr, pc
    bx r0
// end of function sub_800C918

    pop {pc}
    .balign 4, 0x00
off_800C924:    .word loc_30078C8+1
.thumb
sub_800C928:
    push {lr}
    ldr r2, [pc, #0x800c934-0x800c92a-2] // =loc_30078E0+1
    mov lr, pc
    bx r2
// end of function sub_800C928

    pop {pc}
    .balign 4, 0x00
off_800C934:    .word loc_30078E0+1
.thumb
object_crackPanel:
    push {lr}
    bl sub_800C90A
    tst r0, r0
    beq loc_800C988
    ldr r1, [r0,#0x14]
    mov r2, #0x10
    tst r1, r2
    beq loc_800C988
    mov r2, #0x40 
    tst r1, r2
    bne loc_800C96A
    orr r1, r2
    ldr r2, [pc, #0x800c994-0x800c952-2] // =0x3F0C
    bic r1, r2
    add r1, #3
    str r1, [r0,#0x14]
    mov r2, #3
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0x97
    bl sound_play
    mov r0, #1
    pop {pc}
loc_800C96A:
    ldr r2, [pc, #0x800c98c-0x800c96a-2] // =0xF880080
    tst r1, r2
    bne loc_800C988
    ldr r2, [pc, #0x800c990-0x800c970-4] // =0x3F5C
    bic r1, r2
    add r1, #1
    str r1, [r0,#0x14]
    mov r2, #1
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0x97
    bl sound_play
    mov r0, #1
    pop {pc}
loc_800C988:
    mov r0, #0
    pop {pc}
dword_800C98C:    .word 0xF880080
dword_800C990:    .word 0x3F5F
dword_800C994:    .word 0x3F0F
// end of function object_crackPanel

.thumb
object_crackPanelDup1:
    push {lr}
    bl sub_800C90A
    tst r0, r0
    beq loc_800C9E8
    ldr r1, [r0,#0x14]
    mov r2, #0x10
    tst r1, r2
    beq loc_800C9E8
    mov r2, #0x40 
    tst r1, r2
    bne loc_800C9CA
    orr r1, r2
    ldr r2, [pc, #0x800c9f4-0x800c9b2-2] // =0x3F0C
    bic r1, r2
    add r1, #3
    str r1, [r0,#0x14]
    mov r2, #3
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0x97
    bl sound_play
    mov r0, #1
    pop {pc}
loc_800C9CA:
    ldr r2, [pc, #0x800c9ec-0x800c9ca-2] // =0xF880080
    tst r1, r2
    bne loc_800C9E8
    ldr r2, [pc, #0x800c9f0-0x800c9d0-4] // =0x3F5C
    bic r1, r2
    add r1, #1
    str r1, [r0,#0x14]
    mov r2, #1
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0x97
    bl sound_play
    mov r0, #1
    pop {pc}
loc_800C9E8:
    mov r0, #0
    pop {pc}
dword_800C9EC:    .word 0xF880080
dword_800C9F0:    .word 0x3F5F
dword_800C9F4:    .word 0x3F0F
// end of function object_crackPanelDup1

.thumb
object_breakPanel:
    push {lr}
    bl sub_800C90A
    tst r0, r0
    beq loc_800CA28
    ldr r1, [r0,#0x14]
    mov r2, #0x10
    tst r1, r2
    beq loc_800CA28
    ldr r2, [pc, #0x800ca2c-0x800ca0a-2] // =0xF880080
    tst r1, r2
    bne loc_800CA28
    ldr r2, [pc, #0x800ca30-0x800ca10-4] // =0x3F5C
    bic r1, r2
    add r1, #1
    str r1, [r0,#0x14]
    mov r2, #1
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0x97
    bl sound_play
    mov r0, #1
    pop {pc}
loc_800CA28:
    mov r0, #0
    pop {pc}
dword_800CA2C:    .word 0xF880080
dword_800CA30:    .word 0x3F5F
// end of function object_breakPanel

.thumb
object_breakPanel_dup1:
    push {lr}
    bl sub_800C90A
    tst r0, r0
    beq loc_800CA7C
    ldr r1, [r0,#0x14]
    mov r2, #0x10
    tst r1, r2
    beq loc_800CA7C
    ldr r2, [pc, #0x800ca80-0x800ca46-2] // =0xF080080
    tst r1, r2
    bne loc_800CA64
    ldr r2, [pc, #0x800ca84-0x800ca4c-4] // =0x3F5C
    bic r1, r2
    add r1, #1
    str r1, [r0,#0x14]
    mov r2, #1
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0x97
    bl sound_play
    mov r0, #1
    pop {pc}
loc_800CA64:
    mov r2, #0x40 
    orr r1, r2
    ldr r2, [pc, #0x800ca88-0x800ca68-4] // =0x3F0C
    bic r1, r2
    add r1, #3
    str r1, [r0,#0x14]
    mov r2, #3
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0x97
    bl sound_play
loc_800CA7C:
    mov r0, #0
    pop {pc}
dword_800CA80:    .word 0xF080080
dword_800CA84:    .word 0x3F5F
dword_800CA88:    .word 0x3F0F
// end of function object_breakPanel_dup1

.thumb
object_breakPanel_dup2:
    push {lr}
    bl sub_800C90A
    tst r0, r0
    beq loc_800CAD8
    ldr r1, [r0,#0x14]
    mov r2, #0x10
    tst r1, r2
    beq loc_800CAD8
    ldr r2, [pc, #0x800cadc-0x800ca9e-2] // =0xF880080
    tst r1, r2
    bne loc_800CABC
    ldr r2, [pc, #0x800cae0-0x800caa4-4] // =0x3F5C
    bic r1, r2
    add r1, #1
    str r1, [r0,#0x14]
    mov r2, #1
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0x97
    bl sound_play
    mov r0, #1
    pop {pc}
loc_800CABC:
    mov r2, #0x40 
    orr r1, r2
    ldr r2, [pc, #0x800cae4-0x800cac0-4] // =0x3F0C
    bic r1, r2
    add r1, #3
    str r1, [r0,#0x14]
    mov r2, #3
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0x97
    bl sound_play
    mov r0, #1
    pop {pc}
loc_800CAD8:
    mov r0, #0
    pop {pc}
dword_800CADC:    .word 0xF880080
dword_800CAE0:    .word 0x3F5F
dword_800CAE4:    .word 0x3F0F
// end of function object_breakPanel_dup2

.thumb
object_breakPanel_dup3:
    push {lr}
    bl sub_800C90A
    tst r0, r0
    beq loc_800CB34
    ldr r1, [r0,#0x14]
    mov r2, #0x10
    tst r1, r2
    beq loc_800CB34
    ldr r2, [pc, #0x800cb38-0x800cafa-2] // =0xF880080
    tst r1, r2
    bne loc_800CB18
    ldr r2, [pc, #0x800cb3c-0x800cb00-4] // =0x3F5C
    bic r1, r2
    add r1, #1
    str r1, [r0,#0x14]
    mov r2, #1
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0x97
    bl sound_play
    mov r0, #1
    pop {pc}
loc_800CB18:
    mov r2, #0x40 
    orr r1, r2
    ldr r2, [pc, #0x800cb40-0x800cb1c-4] // =0x3F0C
    bic r1, r2
    add r1, #3
    str r1, [r0,#0x14]
    mov r2, #3
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0x97
    bl sound_play
    mov r0, #1
    pop {pc}
loc_800CB34:
    mov r0, #0
    pop {pc}
dword_800CB38:    .word 0xF880080
dword_800CB3C:    .word 0x3F5F
dword_800CB40:    .word 0x3F0F
// end of function object_breakPanel_dup3

.thumb
object_breakPanelLoud:
    push {lr}
    bl sub_800C90A
    tst r0, r0
    beq loc_800CB90
    ldr r1, [r0,#0x14]
    mov r2, #0x10
    tst r1, r2
    beq loc_800CB90
    ldr r2, [pc, #0x800cb94-0x800cb56-2] // =0xF880080
    tst r1, r2
    bne loc_800CB74
    ldr r2, [pc, #0x800cb98-0x800cb5c-4] // =0x3F5C
    bic r1, r2
    add r1, #1
    str r1, [r0,#0x14]
    mov r2, #1
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0xda
    bl sound_play
    mov r0, #1
    pop {pc}
loc_800CB74:
    mov r2, #0x40 
    orr r1, r2
    ldr r2, [pc, #0x800cb9c-0x800cb78-4] // =0x3F0C
    bic r1, r2
    add r1, #3
    str r1, [r0,#0x14]
    mov r2, #3
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0xda
    bl sound_play
    mov r0, #1
    pop {pc}
loc_800CB90:
    mov r0, #0
    pop {pc}
dword_800CB94:    .word 0xF880080
dword_800CB98:    .word 0x3F5F
dword_800CB9C:    .word 0x3F0F
// end of function object_breakPanelLoud

.thumb
object_panel_setPoison:
    push {lr}
    bl sub_800C90A
    tst r0, r0
    beq loc_800CBCC
    ldr r1, [r0,#0x14]
    mov r2, #0x10
    tst r1, r2
    beq loc_800CBCC
    ldr r2, [pc, #0x800cbd0-0x800cbb2-2] // =0x3F5C
    bic r1, r2
    ldr r2, [pc, #0x800cbd4-0x800cbb6-2] // =0x114
    orr r1, r2
    str r1, [r0,#0x14]
    mov r2, #4
    strb r2, [r0,#2]
    strb r2, [r0,#6]
    mov r0, #0x90
    bl sound_play
    mov r0, #1
    pop {pc}
loc_800CBCC:
    mov r0, #0
    pop {pc}
dword_800CBD0:    .word 0x3F5F
off_800CBD4:    .word 0x114
// end of function object_panel_setPoison

.thumb
object_highlightPanel:
    push {lr}
    push {r0,r1}
    bl object_isValidPanel
    pop {r0,r1}
    beq locret_800CBEC
    bl sub_800C90A
    mov r1, #1
    strb r1, [r0,#1]
locret_800CBEC:
    pop {pc}
// end of function object_highlightPanel

.thumb
object_highlightPanelBlue:
    push {lr}
    push {r0,r1}
    bl object_isValidPanel
    pop {r0,r1}
    beq locret_800CC08
    bl sub_800C90A
    ldrb r1, [r0,#1]
    cmp r1, #1
    beq locret_800CC08
    mov r1, #2
    strb r1, [r0,#1]
locret_800CC08:
    pop {pc}
// end of function object_highlightPanelBlue

.thumb
object_setPanelType:
    push {r4-r6,lr}
    ldr r4, [pc, #0x800ce54-0x800cc0c-4] // =loc_30079A4+1
    mov lr, pc
    bx r4
    pop {r4-r6,pc}
// end of function object_setPanelType

.thumb
object_setPanelAlliance:
    push {r4-r6,lr}
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    bl sub_800C90A
    ldrb r3, [r0,#2]
    tst r3, r3
    beq locret_800CC34
    strb r6, [r0,#3]
    mov r2, #0
    strh r2, [r0,#0x10]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800C928
locret_800CC34:
    pop {r4-r6,pc}
// end of function object_setPanelAlliance

.thumb
object_setPanelAllianceTimerLong:
    mov r1, #8
    mul r1, r0
    ldr r0, [pc, #0x800ce58-0x800cc3a-2] // =unk_2034010
    add r1, r1, r0
    ldr r2, [pc, #0x800ce5c-0x800cc3e-2] // =0x708
    strh r2, [r1,#6]
    mov pc, lr
// end of function object_setPanelAllianceTimerLong

.thumb
object_setPanelAllianceTimerShort:
    mov r1, #8
    mul r1, r0
    ldr r0, [pc, #0x800ce60-0x800cc48-4] // =unk_2034010
    add r1, r1, r0
    mov r2, #1
    strh r2, [r1,#6]
    mov pc, lr
// end of function object_setPanelAllianceTimerShort

.thumb
object_setPanelTypeBlink:
    push {lr}
    push {r2,r3}
    bl sub_800C90A
    pop {r2,r3}
    mov r1, #1
    strb r1, [r0,#0xd]
    strb r2, [r0,#8]
    strb r3, [r0,#9]
    pop {pc}
// end of function object_setPanelTypeBlink

.thumb
object_isCurrentPanelValid:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl object_isValidPanel
    pop {pc}
// end of function object_isCurrentPanelValid

.thumb
object_isValidPanel:
    sub r0, #1
    cmp r0, #6
    bcs loc_800CC82
    sub r1, #1
    cmp r1, #3
    bcs loc_800CC82
    mov r0, #1
    mov pc, lr
loc_800CC82:
    mov r0, #0
    mov pc, lr
// end of function object_isValidPanel

.thumb
object_checkPanelParameters:
    push {r4,r5,lr}
    add r4, r2, #0
    add r5, r3, #0
    bl object_getPanelParameters
    tst r0, r0
    beq loc_800CCA2
    tst r0, r5
    bne loc_800CCA2
    and r0, r4
    cmp r0, r4
    bne loc_800CCA2
    mov r0, #1
    pop {r4,r5,pc}
loc_800CCA2:
    mov r0, #0
    pop {r4,r5,pc}
// end of function object_checkPanelParameters

.thumb
object_isCurrentPanelSolid:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl object_isPanelSolid
    pop {pc}
// end of function object_isCurrentPanelSolid

.thumb
object_isPanelSolid:
    push {lr}
    bl object_getPanelParameters
    mov r1, #0x10
    and r0, r1
    pop {pc}
// end of function object_isPanelSolid

.thumb
object_highlightCurrentCollisionPanels:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    ldrb r0, [r4,#0xa]
    ldrb r1, [r4,#0xb]
    ldrb r3, [r5,#0x16]
    ldrb r2, [r5,#0x17]
    eor r3, r2
    ldrb r2, [r4,#1]
    bl object_highlightPanelRegion
    pop {r4,pc}
// end of function object_highlightCurrentCollisionPanels

.thumb
object_highlightPanelRegion:
    push {r4,lr}
    sub sp, sp, #0x14
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    mov r0, #0xff
    and r0, r3
    str r0, [sp,#0xc]
    lsr r3, r3, #8
    str r3, [sp,#0x10]
    ldr r0, [sp,#0xc]
    ldr r1, [sp,#0x10]
    bl object_getFlipDirection
    str r0, [sp,#0xc]
    ldr r4, [pc, #0x800cdac-0x800ccf2-2] // =off_8019B78
    ldr r2, [sp,#8]
    lsl r2, r2, #2
    ldr r4, [r4,r2]
loc_800CCFA:
    ldrb r0, [r4]
    cmp r0, #0x7f
    beq loc_800CD1C
    mov r0, #0
    ldrsb r0, [r4,r0]
    ldr r1, [sp,#0xc]
    mul r1, r0
    ldr r0, [sp]
    add r0, r0, r1
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#4]
    add r1, r1, r2
    bl object_highlightPanel
    add r4, #2
    b loc_800CCFA
loc_800CD1C:
    add sp, sp, #0x14
    pop {r4,pc}
// end of function object_highlightPanelRegion

.thumb
object_highlightPanelRegionBlue:
    push {r4,r6,lr}
    sub sp, sp, #0x14
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    mov r0, #0xff
    and r0, r3
    str r0, [sp,#0xc]
    lsr r3, r3, #8
    str r3, [sp,#0x10]
    mov r0, #0x80
    tst r0, r2
    bne loc_800CD6E
    ldr r0, [sp,#0xc]
    ldr r1, [sp,#0x10]
    bl object_getFlipDirection
    str r0, [sp,#0xc]
    ldr r4, [pc, #0x800cdac-0x800cd44-4] // =off_8019B78
    ldr r2, [sp,#8]
    lsl r2, r2, #2
    ldr r4, [r4,r2]
loc_800CD4C:
    ldrb r0, [r4]
    cmp r0, #0x7f
    beq loc_800CDA8
    mov r0, #0
    ldrsb r0, [r4,r0]
    ldr r1, [sp,#0xc]
    mul r1, r0
    ldr r0, [sp]
    add r0, r0, r1
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#4]
    add r1, r1, r2
    bl object_highlightPanelBlue
    add r4, #2
    b loc_800CD4C
loc_800CD6E:
    ldr r1, [sp,#8]
    lsl r1, r1, #0x19
    lsr r1, r1, #0x16
    ldr r0, [pc, #0x800cdb0-0x800cd74-4] // =dword_8019C34
    add r0, r0, r1
    ldr r2, [r0]
    ldr r3, [r0,#4]
    mov r6, #1
loc_800CD7E:
    mov r4, #1
loc_800CD80:
    push {r2,r3}
    add r0, r4, #0
    add r1, r6, #0
    bl object_checkPanelParameters
    tst r0, r0
    pop {r2,r3}
    beq loc_800CD9C
    add r0, r4, #0
    add r1, r6, #0
    push {r2,r3}
    bl object_highlightPanelBlue
    pop {r2,r3}
loc_800CD9C:
    add r4, #1
    cmp r4, #6
    ble loc_800CD80
    add r6, #1
    cmp r6, #3
    ble loc_800CD7E
loc_800CDA8:
    add sp, sp, #0x14
    pop {r4,r6,pc}
off_800CDAC:    .word off_8019B78
off_800CDB0:    .word dword_8019C34
// end of function object_highlightPanelRegionBlue

.thumb
object_dead_getPanelsTypeAllianceCount:
    push {lr}
    sub sp, sp, #0x14
    str r0, [sp,#8]
    str r1, [sp,#0xc]
    mov r0, #0
    str r0, [sp,#0x10]
    mov r0, #1
    str r0, [sp]
    mov r1, #1
    str r1, [sp,#4]
loc_800CDC8:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800C90A
    ldrb r1, [r0,#3]
    ldr r2, [sp,#0xc]
    cmp r1, r2
    bne loc_800CDE6
    ldrb r1, [r0,#2]
    ldr r2, [sp,#8]
    cmp r1, r2
    bne loc_800CDE6
    ldr r0, [sp,#0x10]
    add r0, #1
    str r0, [sp,#0x10]
loc_800CDE6:
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    cmp r0, #6
    ble loc_800CDC8
    mov r0, #1
    str r0, [sp]
    ldr r1, [sp,#4]
    add r1, #1
    str r1, [sp,#4]
    cmp r1, #3
    ble loc_800CDC8
    ldr r0, [sp,#0x10]
    add sp, sp, #0x14
    pop {pc}
// end of function object_dead_getPanelsTypeAllianceCount

.thumb
object_dead_getPanelsTypeCount:
    push {r4-r7,lr}
    add r4, r0, #0
    mov r5, #0
    mov r6, #1
    mov r7, #1
    mov r0, #1
loc_800CE10:
    add r0, r6, #0
    add r1, r7, #0
    bl sub_800C90A
    ldrb r1, [r0,#2]
    cmp r1, r4
    bne loc_800CE20
    add r5, #1
loc_800CE20:
    add r6, #1
    cmp r6, #6
    ble loc_800CE10
    mov r6, #1
    add r7, #1
    cmp r7, #3
    ble loc_800CE10
    add r0, r5, #0
    pop {r4-r7,pc}
// end of function object_dead_getPanelsTypeCount

.thumb
object_hidePanel:
    push {lr}
    bl sub_800C90A
    tst r0, r0
    beq locret_800CE40
    mov r1, #0
    strb r1, [r0]
locret_800CE40:
    pop {pc}
// end of function object_hidePanel

.thumb
object_showPanel:
    push {lr}
    bl sub_800C90A
    tst r0, r0
    beq locret_800CE50
    mov r1, #1
    strb r1, [r0]
locret_800CE50:
    pop {pc}
    .balign 4, 0x00
off_800CE54:    .word loc_30079A4+1
off_800CE58:    .word unk_2034010
off_800CE5C:    .word 0x708
off_800CE60:    .word unk_2034010
// end of function object_showPanel

.thumb
object_getPanelsExceptCurrentFilterred:
    push {r4,r6,lr}
    mov r6, #0
    mov r1, #3
loc_800CE6A:
    mov r0, #6
loc_800CE6C:
    push {r0-r3,r6,r7}
    bl object_getPanelParameters
    add r4, r0, #0
    pop {r0-r3,r6,r7}
    tst r4, r3
    bne loc_800CE94
    and r4, r2
    cmp r4, r2
    bne loc_800CE94
    ldrb r4, [r5,#0x12]
    cmp r0, r4
    bne loc_800CE8C
    ldrb r4, [r5,#0x13]
    cmp r1, r4
    beq loc_800CE94
loc_800CE8C:
    lsl r4, r1, #4
    orr r4, r0
    strb r4, [r7,r6]
    add r6, #1
loc_800CE94:
    sub r0, #1
    bne loc_800CE6C
    sub r1, #1
    bne loc_800CE6A
    add r0, r6, #0
    pop {r4,r6,pc}
// end of function object_getPanelsExceptCurrentFilterred

.thumb
sub_800CEA0:
    push {r4,r6,lr}
    mov r6, #0
    mov r1, #3
loc_800CEA6:
    mov r0, #6
loc_800CEA8:
    push {r0-r3,r6,r7}
    bl object_getPanelParameters
// end of function sub_800CEA0

    add r4, r0, #0
    pop {r0-r3,r6,r7}
    tst r4, r3
    bne loc_800CEC4
    and r4, r2
    cmp r4, r2
    bne loc_800CEC4
    lsl r4, r1, #4
    orr r4, r0
    strb r4, [r7,r6]
    add r6, #1
loc_800CEC4:
    sub r0, #1
    bne loc_800CEA8
    sub r1, #1
    bne loc_800CEA6
    add r0, r6, #0
    pop {r4,r6,pc}
    push {r7,lr}
    sub sp, sp, #0x10
    push {r1}
    ldrb r1, [r5,#0x16]
    lsl r1, r1, #3
    add r2, r2, r1
    tst r1, r1
    bne loc_800CEE6
    mov r1, #7
    sub r1, r1, r0
    add r0, r1, #0
loc_800CEE6:
    pop {r1}
    ldr r3, [r2,#4]
    ldr r2, [r2]
    add r7, sp, #0
    bl sub_800CF14
    tst r0, r0
    beq loc_800CF0E
    push {r0}
    bl sub_8001532
    pop {r1}
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add sp, sp, #0x10
    pop {r7,pc}
loc_800CF0E:
    add sp, sp, #0x10
    add r2, r0, #0
    pop {r7,pc}
.thumb
sub_800CF14:
    push {r4,r6,lr}
    mov r6, #0
    add r4, r1, #0
    mov r1, #1
loc_800CF1C:
    cmp r1, r4
    beq loc_800CF38
    push {r0-r3}
    bl object_checkPanelParameters
    tst r0, r0
    pop {r0-r3}
    beq loc_800CF38
    push {r0,r1}
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
    pop {r0,r1}
loc_800CF38:
    add r1, #1
    cmp r1, #3
    ble loc_800CF1C
    add r0, r6, #0
    pop {r4,r6,pc}
// end of function sub_800CF14

.thumb
sub_800CF42:
    push {r4,r6,lr}
    mov r6, #0
    add r4, r0, #0
    mov r0, #1
loc_800CF4A:
    cmp r0, r4
    beq loc_800CF66
    push {r0-r3}
    bl object_checkPanelParameters
    tst r0, r0
    pop {r0-r3}
    beq loc_800CF66
    push {r0,r1}
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
    pop {r0,r1}
loc_800CF66:
    add r0, #1
    cmp r0, #6
    ble loc_800CF4A
    add r0, r6, #0
    pop {r4,r6,pc}
// end of function sub_800CF42

.thumb
sub_800CF70:
    push {r4,r6,lr}
    mov r6, #0
    add r4, r0, #0
    mov r0, #1
loc_800CF78:
    cmp r0, r4
    beq loc_800CF9C
    mov r1, #1
loc_800CF7E:
    push {r0-r3}
    bl object_checkPanelParameters
    tst r0, r0
    pop {r0-r3}
    beq loc_800CF96
    push {r0,r1}
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
    pop {r0,r1}
loc_800CF96:
    add r1, #1
    cmp r1, #3
    ble loc_800CF7E
loc_800CF9C:
    add r0, #1
    cmp r0, #6
    ble loc_800CF78
    add r0, r6, #0
    pop {r4,r6,pc}
// end of function sub_800CF70

.thumb
sub_800CFA6:
    push {r4,r6,lr}
    mov r6, #0
    add r4, r0, #0
    mov r1, #1
loc_800CFAE:
    cmp r1, r4
    beq loc_800CFD2
    mov r0, #1
loc_800CFB4:
    push {r0-r3}
    bl object_checkPanelParameters
    tst r0, r0
    pop {r0-r3}
    beq loc_800CFCC
    push {r0,r1}
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
    pop {r0,r1}
loc_800CFCC:
    add r0, #1
    cmp r0, #6
    ble loc_800CFB4
loc_800CFD2:
    add r1, #1
    cmp r1, #3
    ble loc_800CFAE
    add r0, r6, #0
    pop {r4,r6,pc}
// end of function sub_800CFA6

.thumb
sub_800CFDC:
    push {r4-r7,lr}
    sub sp, sp, #8
    add r4, r0, #0
    mov r5, #1
    mov r6, #0
    str r2, [sp]
    str r3, [sp,#4]
loc_800CFEA:
    add r0, r4, #0
    add r1, r5, #0
    ldr r2, [sp]
    ldr r3, [sp,#4]
    bl object_checkPanelParameters
// end of function sub_800CFDC

    tst r0, r0
    beq loc_800D006
    add r0, r4, #0
    add r1, r5, #0
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
loc_800D006:
    add r5, #1
    cmp r5, #3
    ble loc_800CFEA
    add r0, r6, #0
    add sp, sp, #8
    pop {r4-r7,pc}
.thumb
sub_800D012:
    push {r4-r7,lr}
    sub sp, sp, #8
    mov r4, #1
    add r5, r0, #0
    mov r6, #0
    str r2, [sp]
    str r3, [sp,#4]
loc_800D020:
    add r0, r4, #0
    add r1, r5, #0
    ldr r2, [sp]
    ldr r3, [sp,#4]
    bl object_checkPanelParameters
// end of function sub_800D012

    tst r0, r0
    beq loc_800D03C
    add r0, r4, #0
    add r1, r5, #0
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
loc_800D03C:
    add r4, #1
    cmp r4, #6
    ble loc_800D020
    add r0, r6, #0
    add sp, sp, #8
    pop {r4-r7,pc}
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103BC
    add r1, r0, #0
    beq loc_800D066
    ldrb r0, [r1,#0x13]
    cmp r0, #1
    blt loc_800D062
    cmp r0, #3
    ble locret_800D068
loc_800D062:
    ldrb r0, [r1,#0x15]
    b locret_800D068
loc_800D066:
    ldrb r0, [r5,#0x13]
locret_800D068:
    pop {pc}
.thumb
sub_800D06A:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103BC
    tst r0, r0
    beq loc_800D080
    ldrb r1, [r0,#0x13]
    ldrb r0, [r0,#0x12]
    pop {pc}
loc_800D080:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    pop {pc}
// end of function sub_800D06A

.thumb
sub_800D086:
    push {r4,r5,lr}
    push {r0-r3}
    bl sub_800E2C2
    add r5, r0, #0
    neg r5, r5
    pop {r0-r3}
    add r4, r0, #0
    mov r0, #5
    mul r0, r4
    neg r0, r0
    add r0, #6
loc_800D09E:
    push {r0-r3}
    bl object_checkPanelParameters
// end of function sub_800D086

    tst r0, r0
    pop {r0-r3}
    bne locret_800D0BA
    add r0, r0, r5
    push {r0-r3}
    bl object_isValidPanel
    tst r0, r0
    pop {r0-r3}
    bne loc_800D09E
    mov r0, #0
locret_800D0BA:
    pop {r4,r5,pc}
.thumb
sub_800D0BC:
    push {lr}
loc_800D0BE:
    push {r0-r3}
    bl object_checkPanelParameters
// end of function sub_800D0BC

    tst r0, r0
    pop {r0-r3}
    bne locret_800D0DA
    add r0, r0, r4
    push {r0-r3}
    bl object_isValidPanel
    tst r0, r0
    pop {r0-r3}
    bne loc_800D0BE
    mov r0, #0
locret_800D0DA:
    pop {pc}
    push {lr}
loc_800D0DE:
    push {r0-r3}
    bl object_checkPanelParameters
    tst r0, r0
    pop {r0-r3}
    bne locret_800D0FE
    add r0, r0, r4
    sub r6, #1
    ble loc_800D0FC
    push {r0-r3}
    bl object_isValidPanel
    tst r0, r0
    pop {r0-r3}
    bne loc_800D0DE
loc_800D0FC:
    mov r0, #0
locret_800D0FE:
    pop {pc}
    push {lr}
loc_800D102:
    push {r0-r3}
    bl object_checkPanelParameters
    tst r0, r0
    pop {r0-r3}
    bne locret_800D11E
    add r1, r1, r4
    push {r0-r3}
    bl object_isValidPanel
    tst r0, r0
    pop {r0-r3}
    bne loc_800D102
    mov r0, #0
locret_800D11E:
    pop {pc}
.thumb
sub_800D120:
    push {r6,r7,lr}
    sub sp, sp, #8
    add r6, r0, #0
    add r7, r1, #0
    str r0, [sp]
    str r1, [sp,#4]
loc_800D12C:
    push {r0-r3}
    bl object_checkPanelParameters
// end of function sub_800D120

    tst r0, r0
    pop {r0-r3}
    beq loc_800D13A
    add r6, r0, #0
loc_800D13A:
    add r0, r0, r4
    push {r0-r3}
    bl object_isValidPanel
    tst r0, r0
    pop {r0-r3}
    bne loc_800D12C
    ldr r0, [sp]
    cmp r0, r6
    bne loc_800D152
    mov r0, #0
    b loc_800D154
loc_800D152:
    add r0, r6, #0
loc_800D154:
    add r1, r7, #0
    add sp, sp, #8
    pop {r6,r7,pc}
.thumb
sub_800D15A:
    push {r6,r7,lr}
    sub sp, sp, #8
    add r6, r0, #0
    add r7, r1, #0
    str r0, [sp]
    str r1, [sp,#4]
loc_800D166:
    push {r0-r3}
    bl object_checkPanelParameters
// end of function sub_800D15A

    tst r0, r0
    pop {r0-r3}
    beq loc_800D174
    add r7, r1, #0
loc_800D174:
    add r1, r1, r4
    push {r0-r3}
    bl object_isValidPanel
    tst r0, r0
    pop {r0-r3}
    bne loc_800D166
    ldr r1, [sp,#4]
    cmp r1, r7
    bne loc_800D18A
    mov r0, #0
loc_800D18A:
    add r1, r7, #0
    add sp, sp, #8
    pop {r6,r7,pc}
    push {r4,lr}
    sub sp, sp, #0x14
    str r0, [sp,#0xc]
    str r2, [sp,#4]
    str r3, [sp,#8]
    mov r0, #1
    str r0, [sp,#0x10]
    mov r4, #0
loc_800D1A0:
    ldr r0, [sp,#0xc]
    ldr r1, [sp,#0x10]
    ldr r2, [sp,#4]
    ldr r3, [sp,#8]
    bl sub_800D086
    tst r0, r0
    beq loc_800D1B6
    add r1, sp, #0
    strb r0, [r1,r4]
    add r4, #1
loc_800D1B6:
    ldr r0, [sp,#0x10]
    add r0, #1
    str r0, [sp,#0x10]
    cmp r0, #3
    ble loc_800D1A0
    tst r4, r4
    beq loc_800D1EA
    add r3, sp, #0
    ldrb r0, [r3]
    mov r1, #1
loc_800D1CA:
    cmp r1, r4
    bge loc_800D1EC
    ldr r2, [sp,#0xc]
    tst r2, r2
    bne loc_800D1DE
    ldrb r2, [r3,r1]
    cmp r2, r0
    blt loc_800D1DC
    add r0, r2, #0
loc_800D1DC:
    b loc_800D1E6
loc_800D1DE:
    ldrb r2, [r3,r1]
    cmp r2, r0
    bgt loc_800D1E6
    add r0, r2, #0
loc_800D1E6:
    add r1, #1
    b loc_800D1CA
loc_800D1EA:
    mov r0, #0
loc_800D1EC:
    add sp, sp, #0x14
    pop {r4,pc}
    push {r6,lr}
    sub sp, sp, #0x20
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    mov r6, #0
    bl object_getFlipDirection
    add r1, r0, #0
    neg r1, r1
    str r1, [sp,#0x10]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    eor r0, r1
    add r1, r0, #0
    mov r0, #5
    mul r0, r1
    neg r0, r0
    add r0, #6
    str r0, [sp,#0x14]
    str r0, [sp,#0x18]
    mov r1, #1
    str r1, [sp,#0x1c]
loc_800D220:
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    bl sub_800C90A
    tst r0, r0
    beq loc_800D25C
    ldrb r1, [r0,#3]
    ldr r2, [sp]
    cmp r1, r2
    bne loc_800D252
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    ldr r2, [sp,#8]
    ldr r3, [sp,#0xc]
    bl object_checkPanelParameters
    tst r0, r0
    beq loc_800D25C
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
    b loc_800D25C
loc_800D252:
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x10]
    add r0, r0, r1
    str r0, [sp,#0x18]
    b loc_800D220
loc_800D25C:
    ldr r0, [sp,#0x14]
    str r0, [sp,#0x18]
    ldr r0, [sp,#0x1c]
    add r0, #1
    str r0, [sp,#0x1c]
    cmp r0, #3
    ble loc_800D220
    add r0, r6, #0
    add sp, sp, #0x20
    pop {r6,pc}
    push {r6,lr}
    sub sp, sp, #0x20
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    mov r6, #0
    bl object_getFlipDirection
    add r1, r0, #0
    neg r1, r1
    str r1, [sp,#0x10]
    ldrb r0, [r5,#0x12]
    str r0, [sp,#0x14]
    str r0, [sp,#0x18]
    mov r1, #1
    str r1, [sp,#0x1c]
loc_800D292:
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    bl sub_800C90A
    tst r0, r0
    beq loc_800D2EC
    ldrb r1, [r0,#3]
    ldr r2, [sp]
    cmp r1, r2
    bne loc_800D2B0
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x10]
    sub r0, r0, r1
    str r0, [sp,#0x18]
    b loc_800D292
loc_800D2B0:
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    bl sub_800C90A
    tst r0, r0
    beq loc_800D2EC
    ldrb r1, [r0,#3]
    ldr r2, [sp]
    cmp r1, r2
    bne loc_800D2E2
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    ldr r2, [sp,#8]
    ldr r3, [sp,#0xc]
    bl object_checkPanelParameters
    tst r0, r0
    beq loc_800D2EC
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
    b loc_800D2EC
loc_800D2E2:
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x10]
    add r0, r0, r1
    str r0, [sp,#0x18]
    b loc_800D2B0
loc_800D2EC:
    ldr r0, [sp,#0x14]
    str r0, [sp,#0x18]
    ldr r0, [sp,#0x1c]
    add r0, #1
    str r0, [sp,#0x1c]
    cmp r0, #3
    ble loc_800D292
    add r0, r6, #0
    add sp, sp, #0x20
    pop {r6,pc}
    push {r6,lr}
    sub sp, sp, #0x20
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    mov r6, #0
    bl object_getFlipDirection
    add r1, r0, #0
    neg r1, r1
    str r1, [sp,#0x10]
    ldrb r0, [r5,#0x12]
    str r0, [sp,#0x14]
    str r0, [sp,#0x18]
    mov r1, #1
    str r1, [sp,#0x1c]
loc_800D322:
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    bl sub_800C90A
    tst r0, r0
    beq loc_800D392
    ldrb r1, [r0,#3]
    ldr r2, [sp]
    cmp r1, r2
    bne loc_800D340
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x10]
    sub r0, r0, r1
    str r0, [sp,#0x18]
    b loc_800D322
loc_800D340:
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    bl object_getPanelParameters
    ldr r1, [pc, #0x800d4a4-0x800d348-4] // =0x1800000
    ldr r2, [sp]
    cmp r2, #0
    beq loc_800D352
    ldr r1, [pc, #0x800d4a8-0x800d350-4] // =0x2800000
loc_800D352:
    tst r0, r1
    bne loc_800D392
loc_800D356:
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    bl sub_800C90A
    tst r0, r0
    beq loc_800D392
    ldrb r1, [r0,#3]
    ldr r2, [sp]
    cmp r1, r2
    bne loc_800D388
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    ldr r2, [sp,#8]
    ldr r3, [sp,#0xc]
    bl object_checkPanelParameters
    tst r0, r0
    beq loc_800D392
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x1c]
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
    b loc_800D392
loc_800D388:
    ldr r0, [sp,#0x18]
    ldr r1, [sp,#0x10]
    add r0, r0, r1
    str r0, [sp,#0x18]
    b loc_800D356
loc_800D392:
    ldr r0, [sp,#0x14]
    str r0, [sp,#0x18]
    ldr r0, [sp,#0x1c]
    add r0, #1
    str r0, [sp,#0x1c]
    cmp r0, #3
    ble loc_800D322
    add r0, r6, #0
    add sp, sp, #0x20
    pop {r6,pc}
    push {r4,lr}
    sub sp, sp, #0x38
    str r0, [sp,#0x1c]
    str r1, [sp,#0x20]
    str r2, [sp,#0x24]
    str r3, [sp,#0x28]
    bl sub_800E2C0
    str r0, [sp,#0x18]
    mov r0, #0
    str r0, [sp,#0x2c]
loc_800D3BC:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_800D3F8
    ldr r1, [sp,#0x18]
    mul r0, r1
    ldr r2, [sp,#0x1c]
    add r0, r0, r2
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#0x20]
    add r1, r1, r2
    str r0, [sp,#0x30]
    str r1, [sp,#0x34]
    ldr r2, [sp,#0x24]
    ldr r3, [sp,#0x28]
    bl object_checkPanelParameters
    tst r0, r0
    beq loc_800D3F4
    ldr r0, [sp,#0x30]
    ldr r1, [sp,#0x34]
    lsl r1, r1, #4
    orr r0, r1
    ldr r1, [sp,#0x2c]
    strb r0, [r7,r1]
    add r1, #1
    str r1, [sp,#0x2c]
loc_800D3F4:
    add r4, #2
    b loc_800D3BC
loc_800D3F8:
    ldr r0, [sp,#0x2c]
    add sp, sp, #0x38
    pop {r4,pc}
.thumb
sub_800D3FE:
    push {r4,r6,lr}
    sub sp, sp, #0x1c
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    ldr r0, [pc, #0x800d458-0x800d40a-2] // =off_8019B78
    lsl r4, r4, #2
    ldr r4, [r0,r4]
    add r0, r6, #0
    bl sub_800E2C2
    str r0, [sp,#0x10]
    mov r6, #0
loc_800D41A:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_800D452
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#0x10]
    mul r0, r2
    ldr r2, [sp]
    add r0, r0, r2
    str r0, [sp,#0x14]
    ldr r2, [sp,#4]
    add r1, r1, r2
    str r1, [sp,#0x18]
    ldr r2, [sp,#8]
    ldr r3, [sp,#0xc]
    bl object_checkPanelParameters
    tst r0, r0
    beq loc_800D44E
    ldr r0, [sp,#0x14]
    ldr r1, [sp,#0x18]
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
loc_800D44E:
    add r4, #2
    b loc_800D41A
loc_800D452:
    add r0, r6, #0
    add sp, sp, #0x1c
    pop {r4,r6,pc}
off_800D458:    .word off_8019B78
// end of function sub_800D3FE

.thumb
sub_800D45C:
    push {r4,r6,lr}
    mov r6, #0
    mov r1, #3
loc_800D462:
    mov r0, #6
loc_800D464:
    ldrb r4, [r5,#0x12]
    sub r4, r4, r0
    add r4, #1
    bmi loc_800D47C
    cmp r4, #2
    bgt loc_800D47C
    ldrb r4, [r5,#0x13]
    sub r4, r4, r1
    add r4, #1
    bmi loc_800D47C
    cmp r4, #2
    ble loc_800D498
loc_800D47C:
    push {r0-r3,r6,r7}
    bl object_getPanelParameters
    add r4, r0, #0
    pop {r0-r3,r6,r7}
    tst r4, r3
    bne loc_800D498
    and r4, r2
    cmp r4, r2
    bne loc_800D498
    lsl r4, r1, #4
    orr r4, r0
    strb r4, [r7,r6]
    add r6, #1
loc_800D498:
    sub r0, #1
    bne loc_800D464
    sub r1, #1
    bne loc_800D462
    add r0, r6, #0
    pop {r4,r6,pc}
dword_800D4A4:    .word 0x1800000
dword_800D4A8:    .word 0x2800000
// end of function sub_800D45C

    push {lr}
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x78]
    tst r0, r0
    beq loc_800D4BC
    ldrb r1, [r0,#0x13]
    ldrb r0, [r0,#0x12]
    pop {pc}
loc_800D4BC:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    pop {pc}
.thumb
sub_800D4C2:
    push {lr}
    ldrb r0, [r5,#0x16]
    ldrb r1, [r5,#0x17]
    ldrb r2, [r5,#0x13]
    bl sub_800D4D0
    pop {pc}
// end of function sub_800D4C2

.thumb
sub_800D4D0:
    push {r4,lr}
    sub sp, sp, #0x14
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#0xc]
    bl object_getFlipDirection
    neg r0, r0
    str r0, [sp,#0x10]
    ldr r0, [sp,#0xc]
    ldr r1, [sp]
    ldr r2, [sp,#4]
    bl sub_800D53C
    tst r0, r0
    beq loc_800D524
    ldr r2, [sp]
    lsl r2, r2, #3
    ldr r1, [pc, #0x800d528-0x800d4f4-4] // =dword_800D52C
    add r1, r1, r2
    ldr r2, [r1]
    ldr r3, [r1,#4]
    ldr r1, [sp,#0xc]
    ldr r4, [sp,#0x10]
    bl sub_800D0BC
    str r0, [sp,#8]
    tst r0, r0
    beq loc_800D524
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl object_getFlipDirection
    ldr r1, [sp,#8]
    add r0, r0, r1
    str r0, [sp,#8]
    ldr r1, [sp,#0xc]
    bl object_isValidPanel
    tst r0, r0
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
loc_800D524:
    add sp, sp, #0x14
    pop {r4,pc}
off_800D528:    .word dword_800D52C
dword_800D52C:    .word 0x0
    .word 0x20, 0x20, 0x0
// end of function sub_800D4D0

.thumb
sub_800D53C:
    push {lr}
    sub sp, sp, #0x14
    str r0, [sp,#4]
    str r1, [sp,#8]
    str r2, [sp,#0xc]
    eor r2, r1
    mov r1, #5
    mul r2, r1
    neg r2, r2
    add r2, #6
    str r2, [sp]
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    bl object_getFlipDirection
    neg r0, r0
    str r0, [sp,#0x10]
loc_800D55E:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl object_isValidPanel
    beq loc_800D582
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800C90A
    ldrb r0, [r0,#3]
    ldr r1, [sp,#8]
    cmp r0, r1
    bne loc_800D586
    ldr r0, [sp]
    ldr r1, [sp,#0x10]
    add r0, r0, r1
    str r0, [sp]
    b loc_800D55E
loc_800D582:
    mov r0, #0
    str r0, [sp]
loc_800D586:
    ldr r0, [sp]
    add sp, sp, #0x14
    pop {pc}
// end of function sub_800D53C

.thumb
sub_800D58C:
    push {r4,r6,r7,lr}
    bl sub_800D5BA
// end of function sub_800D58C

    add r6, r0, #0
    ldrb r7, [r5,#0x16]
    bl sub_800E2CA
    add r4, r0, #0
loc_800D59C:
    add r0, r6, #0
    add r1, r7, #0
    bl sub_800D5F0
    tst r0, r0
    bne loc_800D5B6
    add r6, r6, r4
    add r0, r6, #0
    mov r1, #1
    bl object_isValidPanel
    bne loc_800D59C
    add r6, r0, #0
loc_800D5B6:
    add r0, r6, #0
    pop {r4,r6,r7,pc}
.thumb
sub_800D5BA:
    push {r4,r6,r7,lr}
    ldrb r6, [r5,#0x12]
    ldrb r7, [r5,#0x16]
    bl sub_800E2CA
    neg r4, r0
loc_800D5C6:
    add r0, r6, #0
    mov r1, #1
    bl object_isValidPanel
    beq loc_800D5E4
    add r0, r6, #0
    add r1, r7, #0
    bl sub_800D5F0
    tst r0, r0
    beq loc_800D5E0
    add r6, r6, r4
    b loc_800D5C6
loc_800D5E0:
    add r0, r6, #0
    pop {r4,r6,r7,pc}
loc_800D5E4:
    ldrb r6, [r5,#0x12]
    bl sub_800E2CA
    add r4, r0, #0
    b loc_800D5C6
// end of function sub_800D5BA

    pop {r4,r6,r7,pc}
.thumb
sub_800D5F0:
    push {r4-r7,lr}
    add r4, r1, #0
    mov r5, #0
    add r6, r0, #0
    mov r7, #1
loc_800D5FA:
    add r0, r6, #0
    add r1, r7, #0
    bl sub_800C90A
// end of function sub_800D5F0

    tst r0, r0
    beq loc_800D60E
    ldrb r1, [r0,#3]
    cmp r1, r4
    beq loc_800D60E
    add r5, #1
loc_800D60E:
    add r7, #1
    cmp r7, #3
    ble loc_800D5FA
    add r0, r5, #0
    pop {r4-r7,pc}
.thumb
sub_800D618:
    push {r4,lr}
    add r4, r2, #0
    bl sub_800C90A
// end of function sub_800D618

    tst r0, r0
    beq locret_800D634
    ldrb r1, [r0,#4]
    ldrb r2, [r0,#3]
    mov r0, #0
    cmp r1, r2
    beq locret_800D634
    cmp r1, r4
    bne locret_800D634
    mov r0, #1
locret_800D634:
    pop {r4,pc}
    push {r4,r5,r7,lr}
    mov r2, #8
    mul r2, r0
    ldr r3, [pc, #0x800d724-0x800d63c-4] // =unk_2034010
    add r3, r3, r2
    ldrb r2, [r3]
    cmp r2, r1
    bne loc_800D664
    add r4, r0, #0
    add r5, r1, #0
    sub r0, #1
    bl sub_800D6CC
    tst r0, r0
    bne loc_800D664
    add r0, r4, #1
    add r1, r5, #0
    bl sub_800D6CC
    tst r0, r0
    bne loc_800D664
    mov r0, #0
    pop {r4,r5,r7,pc}
loc_800D664:
    mov r0, #1
    pop {r4,r5,r7,pc}
.thumb
sub_800D668:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    add r5, r1, #0
    add r6, r2, #0
    mov r3, #0
    str r3, [sp,#8]
    mov r3, #8
    mul r3, r0
    ldr r4, [pc, #0x800d728-0x800d67c-4] // =unk_2034010
    add r4, r4, r3
    ldrb r3, [r4]
    cmp r3, r2
    bne loc_800D6C6
    mov r7, #1
loc_800D688:
    ldr r4, [sp]
loc_800D68A:
    add r4, r4, r7
    add r0, r4, #0
    add r1, r5, #0
    bl object_isValidPanel
    tst r0, r0
    beq loc_800D6B4
    add r0, r4, #0
    add r1, r5, #0
    add r2, r6, #0
    bl sub_800D618
    tst r0, r0
    bne loc_800D6B4
    add r0, r4, #0
    add r1, r6, #0
    bl sub_800D6CC
    tst r0, r0
    bne loc_800D6C6
    b loc_800D68A
loc_800D6B4:
    ldr r0, [sp,#8]
    tst r0, r0
    bne loc_800D6C2
    neg r7, r7
    mov r0, #1
    str r0, [sp,#8]
    b loc_800D688
loc_800D6C2:
    mov r0, #0
    b loc_800D6C8
loc_800D6C6:
    mov r0, #1
loc_800D6C8:
    add sp, sp, #0xc
    pop {r4-r7,pc}
// end of function sub_800D668

.thumb
sub_800D6CC:
    push {r4-r6,lr}
    mov r2, #8
    mul r2, r0
    ldr r3, [pc, #0x800d72c-0x800d6d2-2] // =unk_2034010
    add r3, r3, r2
    ldrb r6, [r3]
    cmp r6, r1
    bne loc_800D6FC
    add r4, r0, #0
    mov r5, #1
loc_800D6E0:
    add r0, r4, #0
    add r1, r5, #0
    bl sub_800C90A
    tst r0, r0
    beq loc_800D6FC
    ldrb r1, [r0,#3]
    cmp r1, r6
    bne loc_800D6FC
    add r5, #1
    cmp r5, #3
    ble loc_800D6E0
    mov r0, #1
    pop {r4-r6,pc}
loc_800D6FC:
    mov r0, #0
    pop {r4-r6,pc}
// end of function sub_800D6CC

    push {r4-r7,lr}
    mov r4, #0
    add r5, r1, #0
    add r6, r0, #0
    mov r7, #1
loc_800D70A:
    add r0, r6, #0
    add r1, r7, #0
    bl sub_800C90A
    ldrb r1, [r0,#3]
    cmp r1, r5
    bne loc_800D71A
    add r4, #1
loc_800D71A:
    add r7, #1
    cmp r7, #3
    ble loc_800D70A
    add r0, r4, #0
    pop {r4-r7,pc}
off_800D724:    .word unk_2034010
off_800D728:    .word unk_2034010
off_800D72C:    .word unk_2034010
unk_800D730:    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x23 
    .byte 0x32 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x32 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x32 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x22 
    .byte 0x32 
    .byte 0x22 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x22 
    .byte 0x23 
    .byte 0x22 
    .byte 0
    .byte 0x23 
    .byte 0x32 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x23 
    .byte 0x32 
    .byte 0
    .byte 0x32 
    .byte 0x32 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x23 
    .byte 0x32 
    .byte 0
    .byte 0x23 
    .byte 0x32 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x23 
    .byte 0x32 
    .byte 0
    .byte 0x32 
    .byte 0x22 
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x32 
    .byte 0x22 
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x23 
    .byte 0x22 
    .byte 0
    .byte 0x32 
    .byte 0x32 
    .byte 0x32 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 0x22 
    .byte 0
    .byte 0x32 
    .byte 0x22 
    .byte 0x23 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x32 
    .byte 0x22 
    .byte 0x23 
    .byte 0
    .byte 0x33 
    .byte 0x33 
    .byte 0x33 
    .byte 0
    .byte 0x23 
    .byte 0x33 
    .byte 0x32 
    .byte 0
    .byte 0x33 
    .byte 0x33 
    .byte 0x33 
    .byte 0
    .byte 0x33 
    .byte 0x33 
    .byte 0x33 
    .byte 0
    .byte 0x33 
    .byte 0x33 
    .byte 0x33 
    .byte 0
    .byte 0x33 
    .byte 0x33 
    .byte 0x33 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 0x22 
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x30 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 3
    .byte 0x22 
    .byte 0
    .byte 0x23 
    .byte 0x32 
    .byte 0x22 
    .byte 0
    .byte 2
    .byte 0x22 
    .byte 0x20
    .byte 0
    .byte 0x22 
    .byte 0x23 
    .byte 0x32 
    .byte 0
    .byte 0x32 
    .byte 0x30 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 3
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x32 
    .byte 0x30 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 2
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 0x23 
    .byte 0
    .byte 0x32 
    .byte 2
    .byte 0x23 
    .byte 0
    .byte 2
    .byte 2
    .byte 0x32 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0x30 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 3
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x30 
    .byte 0x22 
    .byte 0
    .byte 0x30 
    .byte 0x22 
    .byte 3
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x30 
    .byte 0x22 
    .byte 3
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 2
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 2
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x20
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 2
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x20
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 2
    .byte 0x22 
    .byte 0x20
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x20
    .byte 0
    .byte 0x22 
    .byte 0x20
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 2
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0
    .byte 2
    .byte 0
    .byte 0x20
    .byte 0x20
    .byte 0x20
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 2
    .byte 2
    .byte 2
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0xC2
    .byte 0x22 
    .byte 0x2B 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0xA
    .byte 0x22 
    .byte 0x90
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0
    .byte 0xC2
    .byte 0x22 
    .byte 0x2B 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 0xA2
    .byte 0
    .byte 0x2C 
    .byte 0x22 
    .byte 0xB2
    .byte 0
    .byte 0x29 
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0xA0
    .byte 2
    .byte 0x2A 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x92
    .byte 0x20
    .byte 9
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0xA0
    .byte 0x22 
    .byte 9
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x2C 
    .byte 0
    .byte 0xB2
    .byte 0x22 
    .byte 0x2B 
    .byte 0
    .byte 0xC2
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x29 
    .byte 0x9A
    .byte 0xA2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0xAC
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x29 
    .byte 0x22 
    .byte 0xA2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0xB9
    .byte 0
    .byte 0xC2
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0xCB
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x2B 
    .byte 0
    .byte 0x2C 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0xC2
    .byte 0x22 
    .byte 0x2B 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0xB2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x2A 
    .byte 0xCB
    .byte 0xA2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x2C 
    .byte 0x99
    .byte 0xB2
    .byte 0
    .byte 0x72 
    .byte 0x27 
    .byte 0x22 
    .byte 0
    .byte 0x72 
    .byte 0x77 
    .byte 0x27 
    .byte 0
    .byte 0x22 
    .byte 0x72 
    .byte 0x27 
    .byte 0
    .byte 0xB2
    .byte 0x22 
    .byte 0x2C 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0xC2
    .byte 0x22 
    .byte 0x2B 
    .byte 0
    .byte 0x62 
    .byte 0x26 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x66 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x62 
    .byte 0x26 
    .byte 0
    .byte 0x62 
    .byte 0x22 
    .byte 0x26 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x62 
    .byte 0x22 
    .byte 0x26 
    .byte 0
    .byte 0x66 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x26 
    .byte 0x22 
    .byte 0x62 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x66 
    .byte 0
    .byte 0x26 
    .byte 0x22 
    .byte 0x62 
    .byte 0
    .byte 0x66 
    .byte 0x22 
    .byte 0x66 
    .byte 0
    .byte 0x26 
    .byte 0x22 
    .byte 0x62 
    .byte 0
    .byte 0x22 
    .byte 0x62 
    .byte 0x66 
    .byte 0
    .byte 0x62 
    .byte 0x22 
    .byte 0x26 
    .byte 0
    .byte 0x66 
    .byte 0x26 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x66 
    .byte 0x26 
    .byte 0
    .byte 0x22 
    .byte 0x66 
    .byte 0x22 
    .byte 0
    .byte 0x62 
    .byte 0x66 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x66 
    .byte 0
    .byte 0x22 
    .byte 0x26 
    .byte 0x62 
    .byte 0
    .byte 0x62 
    .byte 0x66 
    .byte 0x22 
    .byte 0
    .byte 0x26 
    .byte 0x66 
    .byte 0x26 
    .byte 0
    .byte 0x66 
    .byte 0x62 
    .byte 0x22 
    .byte 0
    .byte 0x26 
    .byte 0x22 
    .byte 0x62 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x77 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x72 
    .byte 0x22 
    .byte 0x27 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x72 
    .byte 0x22 
    .byte 0x27 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x72 
    .byte 0x22 
    .byte 0x27 
    .byte 0
    .byte 0x72 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x27 
    .byte 0x22 
    .byte 0x72 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x27 
    .byte 0
    .byte 0x72 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x22 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x22 
    .byte 0x72 
    .byte 0x77 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x27 
    .byte 0x77 
    .byte 0x72 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x27 
    .byte 0x27 
    .byte 0
    .byte 0x27 
    .byte 0x77 
    .byte 0x72 
    .byte 0
    .byte 0x72 
    .byte 0x72 
    .byte 0x22 
    .byte 0
    .byte 0x77 
    .byte 0x22 
    .byte 0x77 
    .byte 0
    .byte 0x72 
    .byte 0x27 
    .byte 0x72 
    .byte 0
    .byte 0x22 
    .byte 0x77 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x27 
    .byte 0x22 
    .byte 0x72 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x72 
    .byte 0x22 
    .byte 0x27 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x27 
    .byte 0x22 
    .byte 0x72 
    .byte 0
    .byte 0x27 
    .byte 0x22 
    .byte 0x72 
    .byte 0
    .byte 0x27 
    .byte 0x22 
    .byte 0x72 
    .byte 0
    .byte 0x77 
    .byte 0x27 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x72 
    .byte 0x77 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x27 
    .byte 0x77 
    .byte 0x72 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x72 
    .byte 0x22 
    .byte 0x27 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x77 
    .byte 0x27 
    .byte 0x72 
    .byte 0
    .byte 0x27 
    .byte 0x22 
    .byte 0x72 
    .byte 0
    .byte 0x27 
    .byte 0x72 
    .byte 0x77 
    .byte 0
    .byte 0x70 
    .byte 7
    .byte 0x77 
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x77 
    .byte 0x70 
    .byte 7
    .byte 0
    .byte 0x70 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x27 
    .byte 0x77 
    .byte 0x72 
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 7
    .byte 0
    .byte 0x22 
    .byte 0x20
    .byte 2
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x20
    .byte 2
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x77 
    .byte 2
    .byte 0x22 
    .byte 0
    .byte 0x27 
    .byte 0x22 
    .byte 0x72 
    .byte 0
    .byte 0x22 
    .byte 0x20
    .byte 0x77 
    .byte 0
    .byte 0x77 
    .byte 0x70 
    .byte 7
    .byte 0
    .byte 0x72 
    .byte 0x27 
    .byte 0x77 
    .byte 0
    .byte 0x22 
    .byte 0x27 
    .byte 0x72 
    .byte 0
    .byte 0x42 
    .byte 0x24 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x42 
    .byte 0x24 
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x27 
    .byte 0x22 
    .byte 0x72 
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x32 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x53 
    .byte 0x22 
    .byte 0x35 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x23 
    .byte 0
    .byte 0x35 
    .byte 0x52 
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x32 
    .byte 0x25 
    .byte 0x53 
    .byte 0
    .byte 0x32 
    .byte 0x22 
    .byte 0x25 
    .byte 0
    .byte 0x52 
    .byte 0x22 
    .byte 0x25 
    .byte 0
    .byte 0x52 
    .byte 0x22 
    .byte 0x23 
    .byte 0
    .byte 0x23 
    .byte 0x32 
    .byte 0x22 
    .byte 0
    .byte 0x52 
    .byte 0x22 
    .byte 0x25 
    .byte 0
    .byte 0x22 
    .byte 0x23 
    .byte 0x32 
    .byte 0
    .byte 0x22 
    .byte 0x42 
    .byte 0x24 
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x22 
    .byte 0
    .byte 0x42 
    .byte 0x24 
    .byte 0x22 
    .byte 0
    .byte 0x44 
    .byte 0x22 
    .byte 0x44 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x28 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x28 
    .byte 0x82
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x82
    .byte 0
    .byte 0x23 
    .byte 0x52 
    .byte 0x22 
    .byte 0
    .byte 0x52 
    .byte 0x22 
    .byte 0x25 
    .byte 0
    .byte 0x22 
    .byte 0x25 
    .byte 0x32 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x52 
    .byte 0x22 
    .byte 0x25 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x52 
    .byte 0x55 
    .byte 0x25 
    .byte 0
    .byte 0x52 
    .byte 0x22 
    .byte 0x25 
    .byte 0
    .byte 0x52 
    .byte 0x55 
    .byte 0x25 
    .byte 0
    .byte 0x22 
    .byte 0x52 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x25 
    .byte 0x22 
    .byte 0
    .byte 0x52 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x25 
    .byte 0x22 
    .byte 0x52 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x25 
    .byte 0x22 
    .byte 0x52 
    .byte 0
    .byte 0x22 
    .byte 0x52 
    .byte 0x22 
    .byte 0
    .byte 0x25 
    .byte 0x22 
    .byte 0x52 
    .byte 0
    .byte 0x22 
    .byte 0x25 
    .byte 0x22 
    .byte 0
    .byte 0x52 
    .byte 0x22 
    .byte 0x25 
    .byte 0
    .byte 0x22 
    .byte 0x55 
    .byte 0x22 
    .byte 0
    .byte 0x52 
    .byte 0x22 
    .byte 0x25 
    .byte 0
    .byte 0x55 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x55 
    .byte 0x22 
    .byte 0x55 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x55 
    .byte 0
    .byte 0x52 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x55 
    .byte 0x55 
    .byte 0x55 
    .byte 0
    .byte 0x52 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x55 
    .byte 0x22 
    .byte 0
    .byte 0x52 
    .byte 0x44 
    .byte 0x25 
    .byte 0
    .byte 0x22 
    .byte 0x55 
    .byte 0x22 
    .byte 0
    .byte 0x52 
    .byte 0x54 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x45 
    .byte 0x25 
    .byte 0
    .byte 0x22 
    .byte 0x52 
    .byte 0x54 
    .byte 0
    .byte 0x52 
    .byte 0x54 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x55 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x45 
    .byte 0x25 
    .byte 0
    .byte 0x54 
    .byte 0x44 
    .byte 0x45 
    .byte 0
    .byte 0x55 
    .byte 0x55 
    .byte 0x55 
    .byte 0
    .byte 0x54 
    .byte 0x44 
    .byte 0x45 
    .byte 0
    .byte 0x25 
    .byte 0x22 
    .byte 0x52 
    .byte 0
    .byte 0x54 
    .byte 0x22 
    .byte 0x45 
    .byte 0
    .byte 0x25 
    .byte 0x22 
    .byte 0x52 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x45 
    .byte 0x55 
    .byte 0x54 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x82
    .byte 0x22 
    .byte 0x28 
    .byte 0
    .byte 0x82
    .byte 0x22 
    .byte 0x28 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x45 
    .byte 0x25 
    .byte 0x22 
    .byte 0
    .byte 0x52 
    .byte 0x22 
    .byte 0x25 
    .byte 0
    .byte 0x22 
    .byte 0x52 
    .byte 0x54 
    .byte 0
    .byte 0x22 
    .byte 0x55 
    .byte 0x22 
    .byte 0
    .byte 0x82
    .byte 0x22 
    .byte 0x28 
    .byte 0
    .byte 0x25 
    .byte 0x22 
    .byte 0x52 
    .byte 0
    .byte 0x72 
    .byte 0x27 
    .byte 0x22 
    .byte 0
    .byte 0x72 
    .byte 0x77 
    .byte 0x27 
    .byte 0
    .byte 0x22 
    .byte 0x72 
    .byte 0x27 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x58 
    .byte 0
    .byte 0x28 
    .byte 0x22 
    .byte 0x82
    .byte 0
    .byte 0x85
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x55 
    .byte 0x28 
    .byte 0x82
    .byte 0
    .byte 0x25 
    .byte 0x22 
    .byte 0x52 
    .byte 0
    .byte 0x28 
    .byte 0x82
    .byte 0x55 
    .byte 0
    .byte 0x70 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 7
    .byte 0
    .byte 0xC2
    .byte 0x22 
    .byte 0x2B 
    .byte 0
    .byte 0xC2
    .byte 0x22 
    .byte 0x2B 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x82
    .byte 0x88
    .byte 0
    .byte 0x22 
    .byte 0x88
    .byte 0x58 
    .byte 0
    .byte 0x82
    .byte 0x88
    .byte 0x55 
    .byte 0
    .byte 0x85
    .byte 0x55 
    .byte 0x58 
    .byte 0
    .byte 0x58 
    .byte 0x88
    .byte 0x85
    .byte 0
    .byte 0x85
    .byte 0x55 
    .byte 0x58 
    .byte 0
    .byte 0x34 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x43 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x42 
    .byte 0x22 
    .byte 0x24 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x32 
    .byte 0x24 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x42 
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x32 
    .byte 0x34 
    .byte 0
    .byte 0x32 
    .byte 0x22 
    .byte 0x23 
    .byte 0
    .byte 0x43 
    .byte 0x23 
    .byte 0x22 
    .byte 0
    .byte 0x32 
    .byte 0x44 
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 0x22 
    .byte 0
    .byte 0x32 
    .byte 0x44 
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x43 
    .byte 0x33 
    .byte 0x34 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x32 
    .byte 0x44 
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x43 
    .byte 0x34 
    .byte 0
    .byte 0x32 
    .byte 0x44 
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x42 
    .byte 0x22 
    .byte 0x24 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x44 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x44 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x42 
    .byte 0x44 
    .byte 0x24 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x24 
    .byte 0x22 
    .byte 0
    .byte 0x42 
    .byte 0x22 
    .byte 0x24 
    .byte 0
    .byte 0x22 
    .byte 0x42 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x24 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x42 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x24 
    .byte 0x22 
    .byte 0
    .byte 0x42 
    .byte 0x44 
    .byte 0x24 
    .byte 0
    .byte 0x22 
    .byte 0x42 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x44 
    .byte 0
    .byte 0x22 
    .byte 0x42 
    .byte 0x44 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x44 
    .byte 0
    .byte 0x42 
    .byte 0x44 
    .byte 0x44 
    .byte 0
    .byte 0x22 
    .byte 0x42 
    .byte 0x44 
    .byte 0
    .byte 0x42 
    .byte 0x44 
    .byte 0x44 
    .byte 0
    .byte 0x44 
    .byte 0x22 
    .byte 0x44 
    .byte 0
    .byte 0x24 
    .byte 0x42 
    .byte 0x24 
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x22 
    .byte 0
    .byte 0x44 
    .byte 0x44 
    .byte 0x44 
    .byte 0
    .byte 0x24 
    .byte 0x44 
    .byte 0x42 
    .byte 0
    .byte 0x44 
    .byte 0x44 
    .byte 0x44 
    .byte 0
    .byte 0x44 
    .byte 0x44 
    .byte 0x44 
    .byte 0
    .byte 0x44 
    .byte 0x44 
    .byte 0x44 
    .byte 0
    .byte 0x44 
    .byte 0x44 
    .byte 0x44 
    .byte 0
    .byte 0x28 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x82
    .byte 0
    .byte 0x22 
    .byte 0x82
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x28 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x82
    .byte 0x22 
    .byte 0x28 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x28 
    .byte 0x22 
    .byte 0x82
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x82
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x28 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x28 
    .byte 0x22 
    .byte 0x82
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x28 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x82
    .byte 0x22 
    .byte 0x28 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x82
    .byte 0
    .byte 0x82
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x28 
    .byte 0x22 
    .byte 0x82
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x28 
    .byte 0
    .byte 0xC2
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x2B 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0xC2
    .byte 0x22 
    .byte 0x2B 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x2A 
    .byte 0xA2
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x29 
    .byte 0x92
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0xB2
    .byte 0x22 
    .byte 0x2C 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x2C 
    .byte 0xC2
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x2B 
    .byte 0xB2
    .byte 0
    .byte 0xB2
    .byte 0x22 
    .byte 0x2B 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0xC2
    .byte 0x22 
    .byte 0x2C 
    .byte 0
    .byte 0xC2
    .byte 0xC2
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x2B 
    .byte 0x2B 
    .byte 0
    .byte 0xA2
    .byte 0x22 
    .byte 0x2A 
    .byte 0
    .byte 0x92
    .byte 0x22 
    .byte 0x29 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x24 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x42 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 4
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x40 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x42 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x24 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0x20
    .byte 0x22 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 2
    .byte 0x42 
    .byte 0
    .byte 2
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x20
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0xBB
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0xCC
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 6
    .byte 0x66 
    .byte 0x60 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 6
    .byte 0x66 
    .byte 0x60 
    .byte 0
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 6
    .byte 6
    .byte 6
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0xCC
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0xBB
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0
    .byte 0x60 
    .byte 0x66 
    .byte 6
    .byte 0
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x60 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 6
    .byte 0x66 
    .byte 0
    .byte 0x60 
    .byte 0x66 
    .byte 6
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 6
    .byte 0x66 
    .byte 0x60 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 6
    .byte 0
    .byte 0x60 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x72 
    .byte 0x22 
    .byte 0x27 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x72 
    .byte 0x22 
    .byte 0x27 
    .byte 0
    .byte 0x22 
    .byte 0x24 
    .byte 0x42 
    .byte 0
    .byte 0x72 
    .byte 0x22 
    .byte 0x27 
    .byte 0
    .byte 0x24 
    .byte 0x42 
    .byte 0x22 
    .byte 0
    .byte 0x72 
    .byte 0x42 
    .byte 0x27 
    .byte 0
    .byte 0x72 
    .byte 0x22 
    .byte 0x27 
    .byte 0
    .byte 0x72 
    .byte 0x24 
    .byte 0x27 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x74 
    .byte 0x22 
    .byte 0x47 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x27 
    .byte 0x77 
    .byte 0x72 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x74 
    .byte 0x42 
    .byte 0x27 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x72 
    .byte 0x24 
    .byte 0x47 
    .byte 0
    .byte 0x74 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x27 
    .byte 0x22 
    .byte 0x72 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x47 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x74 
    .byte 0x44 
    .byte 0x47 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x64 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x46 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x44 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x44 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x46 
    .byte 0
    .byte 0x66 
    .byte 0x22 
    .byte 0x66 
    .byte 0
    .byte 0x64 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x44 
    .byte 0
    .byte 4
    .byte 6
    .byte 6
    .byte 0
    .byte 0x64 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 6
    .byte 6
    .byte 6
    .byte 0
    .byte 6
    .byte 0x44 
    .byte 0x66 
    .byte 0
    .byte 0x60 
    .byte 0x66 
    .byte 6
    .byte 0
    .byte 0x66 
    .byte 0x44 
    .byte 0x66 
    .byte 0
    .byte 0x60 
    .byte 0x66 
    .byte 6
    .byte 0
    .byte 6
    .byte 0x46 
    .byte 6
    .byte 0
    .byte 0x66 
    .byte 0x44 
    .byte 0x66 
    .byte 0
    .byte 0x60 
    .byte 0x64 
    .byte 0x60 
    .byte 0
    .byte 0x66 
    .byte 0x44 
    .byte 0x66 
    .byte 0
    .byte 6
    .byte 0
    .byte 0x60 
    .byte 0
    .byte 0x66 
    .byte 0x44 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x82
    .byte 0x22 
    .byte 0x28 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x32 
    .byte 0x88
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 0x22 
    .byte 0
    .byte 0x82
    .byte 0x22 
    .byte 0x28 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x28 
    .byte 0x32 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x23 
    .byte 0x82
    .byte 0x22 
    .byte 0
    .byte 0x32 
    .byte 0x28 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x82
    .byte 0x23 
    .byte 0
    .byte 0x28 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x22 
    .byte 0x88
    .byte 0x22 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x82
    .byte 0
    .byte 0x82
    .byte 0x82
    .byte 0x22 
    .byte 0
    .byte 0x32 
    .byte 0x22 
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x28 
    .byte 0x28 
    .byte 0
    .byte 0x23 
    .byte 0x82
    .byte 0x22 
    .byte 0
    .byte 0x82
    .byte 0x22 
    .byte 0x28 
    .byte 0
    .byte 0x22 
    .byte 0x28 
    .byte 0x32 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 0x22 
    .byte 0
    .byte 0x32 
    .byte 0x88
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x23 
    .byte 0x32 
    .byte 0
    .byte 0x88
    .byte 0x88
    .byte 0x88
    .byte 0
    .byte 0x23 
    .byte 0x32 
    .byte 0x22 
    .byte 0
    .byte 0
    .byte 0x22 
    .byte 0
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x82
    .byte 0x88
    .byte 0x28 
    .byte 0
    .byte 0x22 
    .byte 0x88
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x28 
    .byte 0x22 
    .byte 0x82
    .byte 0
    .byte 0x28 
    .byte 0x22 
    .byte 0x82
    .byte 0
    .byte 0x28 
    .byte 0x22 
    .byte 0x82
    .byte 0
    .byte 0x22 
    .byte 0x88
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x88
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x88
    .byte 0x22 
    .byte 0
    .byte 0x82
    .byte 0x88
    .byte 0x28 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x33 
    .byte 0x22 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x23 
    .byte 0x33 
    .byte 0x32 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x23 
    .byte 0x33 
    .byte 0x32 
    .byte 0
    .byte 0x32 
    .byte 0x22 
    .byte 0x23 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x23 
    .byte 0x22 
    .byte 0x32 
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x20
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 2
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 2
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x20
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x20
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0x66 
    .byte 0x22 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x22 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x22 
    .byte 0x66 
    .byte 0
    .byte 0x62 
    .byte 0x66 
    .byte 0x26 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x62 
    .byte 0x66 
    .byte 0x26 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x22 
    .byte 0x66 
    .byte 0
    .byte 0x66 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x66 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x66 
    .byte 0x22 
    .byte 0x66 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x66 
    .byte 0
    .byte 0x70 
    .byte 0x77 
    .byte 7
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x72 
    .byte 0x77 
    .byte 0x27 
    .byte 0
    .byte 0x72 
    .byte 0x77 
    .byte 0x27 
    .byte 0
    .byte 0x72 
    .byte 0x77 
    .byte 0x27 
    .byte 0
    .byte 0x77 
    .byte 0x22 
    .byte 0x77 
    .byte 0
    .byte 0x77 
    .byte 0x22 
    .byte 0x77 
    .byte 0
    .byte 0x77 
    .byte 0x22 
    .byte 0x77 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x77 
    .byte 0x77 
    .byte 0x77 
    .byte 0
    .byte 0x77 
    .byte 0
    .byte 0x77 
    .byte 0
    .byte 0xB2
    .byte 0xCB
    .byte 0x2C 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0xCC
    .byte 0x22 
    .byte 0xBB
    .byte 0
    .byte 0xCC
    .byte 0x22 
    .byte 0xBB
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0xAA
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x92
    .byte 0x22 
    .byte 0x29 
    .byte 0
    .byte 0xCC
    .byte 0x22 
    .byte 0xBB
    .byte 0
    .byte 0x29 
    .byte 0x22 
    .byte 0x92
    .byte 0
    .byte 0x22 
    .byte 0x22 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x44 
    .byte 0x22 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x24 
    .byte 0x22 
    .byte 0x42 
    .byte 0
    .byte 0x66 
    .byte 0x44 
    .byte 0x66 
    .byte 0
    .byte 0x46 
    .byte 0x44 
    .byte 0x64 
    .byte 0
    .byte 0x66 
    .byte 0x44 
    .byte 0x66 
    .byte 0
    .byte 0x44 
    .byte 0x66 
    .byte 0x44 
    .byte 0
    .byte 0x64 
    .byte 0x66 
    .byte 0x46 
    .byte 0
    .byte 0x66 
    .byte 0x66 
    .byte 0x66 
    .byte 0
    .byte 0x46 
    .byte 0x44 
    .byte 0x64 
    .byte 0
    .byte 0x46 
    .byte 0x44 
    .byte 0x64 
    .byte 0
    .byte 0x46 
    .byte 0x44 
    .byte 0x64 
    .byte 0
    .byte 0x22 
    .byte 0x55 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x55 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 0x55 
    .byte 0x22 
    .byte 0
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0
.thumb
sub_800E24C:
    push {lr}
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    bl sub_800E258
    pop {pc}
// end of function sub_800E24C

.thumb
sub_800E258:
    push {r5,r6,lr}
    add r6, r1, #0
    asr r0, r0, #0x10
    add r0, #0xa0
    mov r1, #0x28 
    svc 6
    push {r0}
    add r0, r6, #0
    asr r0, r0, #0x10
    add r0, #0x20 
    mov r1, #0x18
    svc 6
    add r1, r0, #0
    pop {r0}
    pop {r5,r6,pc}
// end of function sub_800E258

.thumb
sub_800E276:
    mov r2, #0x28 
    lsl r0, r0, #0x18
    asr r0, r0, #0x18
    mul r0, r2
    lsl r0, r0, #0x10
    mov r2, #0x18
    lsl r1, r1, #0x18
    asr r1, r1, #0x18
    mul r1, r2
    lsl r1, r1, #0x10
    ldr r2, [pc, #0x800e294-0x800e28a-2] // =0xFF740000
    add r0, r0, r2
    ldr r2, [pc, #0x800e298-0x800e28e-2] // =0xFFEC0000
    add r1, r1, r2
    mov pc, lr
dword_800E294:    .word 0xFF740000
dword_800E298:    .word 0xFFEC0000
// end of function sub_800E276

.thumb
sub_800E29C:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800E276
    str r0, [r5,#0x34]
    str r1, [r5,#0x38]
    pop {pc}
// end of function sub_800E29C

.thumb
sub_800E2AC:
    push {lr}
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    mov r2, #0
    ldr r2, [r5,#0x3c]
    bl sub_800E258
    strb r0, [r5,#0x12]
    strb r1, [r5,#0x13]
    pop {pc}
// end of function sub_800E2AC

.thumb
sub_800E2C0:
    ldrb r0, [r5,#0x16]
// end of function sub_800E2C0

.thumb
sub_800E2C2:
    lsl r0, r0, #1
    sub r0, #1
    neg r0, r0
    mov pc, lr
// end of function sub_800E2C2

.thumb
sub_800E2CA:
    ldrb r0, [r5,#0x16]
    ldrb r1, [r5,#0x17]
// end of function sub_800E2CA

.thumb
object_getFlipDirection:
    eor r0, r1
    lsl r0, r0, #1
    sub r0, #1
    neg r0, r0
    mov pc, lr
// end of function object_getFlipDirection

.thumb
object_subtractHP:
    push {r4,lr}
    ldrh r1, [r5,#0x24]
    sub r1, r1, r0
    bge loc_800E2E2
    mov r1, #0
loc_800E2E2:
    strh r1, [r5,#0x24]
    pop {r4,pc}
    .balign 4, 0x00
    .word 0x40000000
// end of function object_subtractHP

.thumb
object_addHP:
    ldrh r1, [r5,#0x24]
    add r1, r1, r0
    ldrh r0, [r5,#0x26]
    cmp r1, r0
    ble loc_800E2F8
    add r1, r0, #0
loc_800E2F8:
    strh r1, [r5,#0x24]
    mov pc, lr
// end of function object_addHP

.thumb
sub_800E2FC:
    push {r4,r6,r7,lr}
    add r6, r0, #0
    tst r1, r1
    beq loc_800E314
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_802CE78
    add r7, r0, #0
    cmp r0, #0xbd
    beq loc_800E330
loc_800E314:
    add r0, r6, #0
    bl object_addHP
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #6
    bl sub_80E05F6
    mov r0, #0x8a
    bl sound_play
    mov r0, #0
    b locret_800E35E
loc_800E330:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x1e
    lsl r2, r2, #0x10
    add r6, r6, r2
    mov r2, #0
    bl sub_80E37D2
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_800BF16
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800ABC6
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_802CEA6
    mov r0, #1
locret_800E35E:
    pop {r4,r6,r7,pc}
// end of function sub_800E2FC

    push {r4,r6,r7,lr}
    add r6, r0, #0
    tst r1, r1
    beq loc_800E378
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_802CE78
    add r7, r0, #0
    cmp r0, #0xbd
    beq loc_800E38E
loc_800E378:
    add r0, r6, #0
    bl object_addHP
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #6
    bl sub_80E05F6
    mov r0, #0
    b locret_800E3BC
loc_800E38E:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x1e
    lsl r2, r2, #0x10
    add r6, r6, r2
    mov r2, #0
    bl sub_80E37D2
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_800BF16
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800ABC6
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_802CEA6
    mov r0, #1
locret_800E3BC:
    pop {r4,r6,r7,pc}
.thumb
sub_800E3BE:
    push {r4,lr}
    ldr r3, [r5,#0x54]
    add r3, #0x82
    mov r1, #5
    mov r0, #0
loc_800E3C8:
    ldrh r2, [r3]
    add r0, r0, r2
    add r3, #2
    sub r1, #1
    bgt loc_800E3C8
    ldr r3, [r5,#0x54]
    add r1, #0x80
    strh r0, [r3,r1]
    mov r1, #0x8c
    ldrh r1, [r3,r1]
    pop {r4,pc}
// end of function sub_800E3BE

.thumb
sub_800E3DE:
    push {r4,r6,lr}
    ldr r4, [r5,#0x54]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800C90A
// end of function sub_800E3DE

    mov r4, #0
    mov r6, #0
    ldrb r1, [r0,#2]
    cmp r1, #5
    bne loc_800E3F6
    add r4, #1
loc_800E3F6:
    mov r6, #1
    lsl r6, r4
    sub r6, #1
    ldr r3, [r5,#0x54]
    add r3, #0x82
    mov r1, #5
    mov r0, #0
loc_800E404:
    ldrh r2, [r3]
    add r2, r2, r6
    lsr r2, r4
    strh r2, [r3]
    add r0, r0, r2
    add r3, #2
    sub r1, #1
    bgt loc_800E404
    bl sub_802CE10
    ldr r3, [r5,#0x54]
    add r3, #0x80
    strh r0, [r3]
    pop {r4,r6,pc}
.thumb
object_calculateFinalDamage2:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800C90A
    mov r4, #0
    ldrb r1, [r0,#2]
    cmp r1, #5
    bne loc_800E436
    mov r4, #1
loc_800E436:
    ldr r3, [r5,#0x54]
    add r3, #0x82
    mov r1, #5
    mov r0, #0
loc_800E43E:
    ldrh r2, [r3]
    add r2, r2, r4
    lsr r2, r4
    strh r2, [r3]
    add r0, r0, r2
    add r3, #2
    sub r1, #1
    bgt loc_800E43E
    ldr r3, [r5,#0x54]
    add r3, #0x80
    strh r0, [r3]
    pop {r4,pc}
// end of function object_calculateFinalDamage2

.thumb
sub_800E456:
    ldrb r0, [r5,#0x16]
    ldrb r1, [r5,#0x17]
    eor r0, r1
    mov pc, lr
// end of function sub_800E456

.thumb
sub_800E45E:
    push {lr}
    mov r0, #1
    bl sub_800E468
    pop {pc}
// end of function sub_800E45E

.thumb
sub_800E468:
    push {r4,lr}
    sub sp, sp, #0x10
    ldrb r0, [r5,#0xf]
    bl loc_800E498
    str r0, [sp,#4]
    str r1, [sp,#8]
    str r2, [sp,#0xc]
    ldrb r3, [r5,#0x12]
    add r0, r0, r3
    ldrb r3, [r5,#0x13]
    add r1, r1, r3
    bl sub_800E5AC
    bne loc_800E48E
    mov r0, #0
    mov r1, #0
    mov r2, #0
    b loc_800E494
loc_800E48E:
    ldr r0, [sp,#4]
    ldr r1, [sp,#8]
    ldr r2, [sp,#0xc]
loc_800E494:
    add sp, sp, #0x10
    pop {r4,pc}
// end of function sub_800E468

loc_800E498:
    push {lr}
    lsl r0, r0, #2
    ldr r1, [pc, #0x800e4ac-0x800e49c-4] // =dword_800E4B0
    ldr r1, [r1,r0]
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#0xc]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_800E4AC:    .word dword_800E4B0
dword_800E4B0:    .word 0x800E4C1, 0x800E549, 0x800E4C9, 0x800E501, 0x21002000
    .word 0x46F72200, 0x1C04B510, 0xFEF8F7FF, 0x4B0400A4, 0x2100191B
    .word 0x43485659, 0x56592101, 0xBD10789A, 0x800E4E8, 0x0
    .word 0x1FF00, 0x10100, 0x100FF, 0x10001, 0x0
    push {r4,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800C90A
    tst r0, r0
    beq loc_800E52C
    ldrb r0, [r0,#2]
    cmp r0, #9
    blt loc_800E52C
    cmp r0, #0xc
    bgt loc_800E52C
    sub r0, #9
    lsl r0, r0, #2
    ldr r3, [pc, #0x800e534-0x800e51c-4] // =dword_800E538
    add r3, r3, r0
    mov r0, #0
    ldrsb r0, [r3,r0]
    mov r1, #1
    ldrsb r1, [r3,r1]
    ldrb r2, [r3,#2]
    b locret_800E532
loc_800E52C:
    mov r0, #0
    mov r1, #0
    mov r2, #0
locret_800E532:
    pop {r4,pc}
off_800E534:    .word dword_800E538
dword_800E538:    .word 0x1FF00, 0x10100, 0x100FF, 0x10001, 0xF7FFB550, 0x1C04FEB9
    .word 0x7BD96D6B, 0x22802600, 0xD0014211, 0x26054391, 0x22000889, 0xD2020849
    .word 0x2A043201, 0x1992DBFA, 0x434A2103, 0x18524904, 0x56512100, 0x43481C20
    .word 0x56512101, 0xBD507892, 0x800E58C, 0xFF060001, 0x10600, 0x100FF01
    .word 0x0
    .word 0x10006FF, 0x1FF0006, 0x10100, 0x0
.thumb
sub_800E5AC:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl object_isValidPanel
    beq loc_800E5DE
    bl object_getFlag
    mov r2, #0
    mov r1, #0x10
    and r1, r0
    beq loc_800E5C6
    mov r2, #0x10
loc_800E5C6:
    ldrb r1, [r5,#0x16]
    lsl r1, r1, #3
    add r2, r2, r1
    ldr r1, [pc, #0x800e65c-0x800e5cc-4] // =dword_800E660
    add r1, r1, r2
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r0, r6, #0
    add r1, r7, #0
    bl object_checkPanelParameters
    pop {r6,r7,pc}
loc_800E5DE:
    mov r0, #0
    pop {r6,r7,pc}
// end of function sub_800E5AC

.thumb
object_canMove:
    push {r4,lr}
    bl object_getFlag
    add r4, r0, #0
    ldr r1, [pc, #0x800e5f8-0x800e5ea-2] // =0x5040
    tst r4, r1
    bne loc_800E5F4
    mov r0, #1
    pop {r4,pc}
loc_800E5F4:
    mov r0, #0
    pop {r4,pc}
dword_800E5F8:    .word 0x5040
// end of function object_canMove

.thumb
sub_800E5FC:
    push {r4,lr}
    bl object_getFlag
    add r4, r0, #0
    ldr r1, [pc, #0x800e614-0x800e604-4] // =0x1040
    tst r4, r1
    bne loc_800E60E
    mov r0, #1
    pop {r4,pc}
loc_800E60E:
    mov r0, #0
    pop {r4,pc}
    .balign 4, 0x00
off_800E614:    .word 0x1040
// end of function sub_800E5FC

.thumb
sub_800E618:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl object_isValidPanel
    beq loc_800E656
    bl object_getFlag
    mov r1, #0x10
    tst r0, r1
    bne loc_800E63C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl object_isPanelSolid
    beq loc_800E63C
    mov r0, #0
    b loc_800E63E
loc_800E63C:
    mov r0, #0x10
loc_800E63E:
    ldrb r1, [r5,#0x16]
    lsl r1, r1, #3
    add r0, r0, r1
    ldr r1, [pc, #0x800e65c-0x800e644-4] // =dword_800E660
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r0, r6, #0
    add r1, r7, #0
    bl object_checkPanelParameters
    pop {r6,r7,pc}
loc_800E656:
    mov r0, #0
    pop {r6,r7,pc}
    .balign 4, 0x00
off_800E65C:    .word dword_800E660
dword_800E660:    .word 0x10, 0xB8800A0, 0x30, 0x7880080, 0x0
    .byte 0xA0
    .byte 0
    .byte 0x88
    .byte 0xB
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0x88
    .byte 7
// end of function sub_800E618

.thumb
sub_800E680:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl object_isValidPanel
    beq loc_800E6BE
    bl object_getFlag
    mov r1, #0x10
    tst r0, r1
    bne loc_800E6A4
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl object_isPanelSolid
    .byte 1
    .byte 0xD0
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0xE0
loc_800E6A4:
    mov r0, #0x10
    ldrb r1, [r5,#0x16]
    lsl r1, r1, #3
    add r0, r0, r1
    ldr r1, [pc, #0x800e6c4-0x800e6ac-4] // =unk_800E6C8
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r0, r6, #0
    add r1, r7, #0
    bl object_checkPanelParameters
    .byte 0xC0
    .byte 0xBD
loc_800E6BE:
    mov r0, #0
    pop {r6,r7,pc}
    .byte 0
    .byte 0
off_800E6C4:    .word unk_800E6C8
unk_800E6C8:    .byte 0x10
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 7
    .byte 0x10
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0xB
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .word 0x7800000, 0x0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0xB
// end of function sub_800E680

.thumb
sub_800E6E8:
    mov r3, #0
    cmp r0, r1
    bgt loc_800E6FA
    cmp r2, r0
    ble loc_800E704
    cmp r2, r1
    bgt loc_800E704
    mov r3, #1
    b loc_800E704
loc_800E6FA:
    cmp r2, r1
    ble loc_800E704
    cmp r2, r0
    bgt loc_800E704
    mov r3, #1
loc_800E704:
    add r0, r3, #0
    mov pc, lr
// end of function sub_800E6E8

.thumb
sub_800E708:
    mov r3, #0
    cmp r0, r2
    beq loc_800E72A
    cmp r1, r2
    beq loc_800E72A
    cmp r0, r1
    bgt loc_800E722
    cmp r2, r0
    ble loc_800E72C
    cmp r2, r1
    bgt loc_800E72C
    mov r3, #1
    b loc_800E72C
loc_800E722:
    cmp r2, r1
    blt loc_800E72C
    cmp r2, r0
    bgt loc_800E72C
loc_800E72A:
    mov r3, #1
loc_800E72C:
    add r0, r3, #0
    mov pc, lr
// end of function sub_800E708

.thumb
sub_800E730:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    bl sub_801A180
    str r0, [sp]
    ldr r6, [r5,#0x54]
    bl battle_isPaused
    beq loc_800E744
    b loc_800E95C
loc_800E744:
    ldrh r0, [r6,#0x1c]
    sub r0, #1
    strh r0, [r6,#0x1c]
    bgt loc_800E75E
    ldr r0, [pc, #0x800e960-0x800e74c-4] // =0x800
    bl object_clearFlag
    mov r0, #8
    bl sub_801A176
    mov r0, #0
    strh r0, [r6,#0x1c]
    b loc_800E7AE
loc_800E75E:
    ldr r1, [sp]
    mov r0, #8
    tst r1, r0
    beq loc_800E786
    mov r0, #0x88
    bl sub_801A176
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_800E776
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_800E776:
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    strh r0, [r6,#0x1e]
    strh r0, [r6,#0x2a]
    strh r0, [r6,#0x2c]
loc_800E786:
    ldr r0, [pc, #0x800e964-0x800e786-2] // =0x80018000
    bl object_clearFlag
    bl object_getFlag
    ldr r1, [pc, #0x800e960-0x800e790-4] // =0x800
    tst r0, r1
    bne loc_800E7AE
    add r0, r1, #0
    bl object_setFlag
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_800E7A6
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_800E7A6:
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
loc_800E7AE:
    ldrh r0, [r6,#0x2a]
    sub r0, #1
    strh r0, [r6,#0x2a]
    bgt loc_800E7C2
    ldr r0, [pc, #0x800e968-0x800e7b6-2] // =0x10000
    bl object_clearFlag
    mov r0, #0
    strh r0, [r6,#0x2a]
    b loc_800E820
loc_800E7C2:
    ldr r1, [sp]
    ldr r0, [pc, #0x800e968-0x800e7c4-4] // =0x10000
    tst r1, r0
    beq loc_800E7EA
    ldr r0, [pc, #0x800e96c-0x800e7ca-2] // =0x30080
    bl sub_801A176
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_800E7DA
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_800E7DA:
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    strh r0, [r6,#0x1e]
    strh r0, [r6,#0x1c]
    strh r0, [r6,#0x2c]
loc_800E7EA:
    ldr r0, [pc, #0x800e970-0x800e7ea-2] // =0x80008000
    bl object_clearFlag
    bl object_getFlag
    ldr r1, [pc, #0x800e968-0x800e7f4-4] // =0x10000
    tst r0, r1
    bne loc_800E820
    add r0, r1, #0
    bl object_setFlag
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_800E80A
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_800E80A:
    mov r0, #6
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r7, #0x58 
    add r7, r7, r6
    ldr r0, [r7]
    tst r0, r0
    bne loc_800E836
    bl sub_80E9BDC
loc_800E820:
    ldrh r0, [r6,#0x2c]
    sub r0, #1
    strh r0, [r6,#0x2c]
    bgt loc_800E836
    ldr r0, [pc, #0x800e974-0x800e828-4] // =0x80000000
    bl object_clearFlag
    mov r0, #0
    strh r0, [r6,#0x2c]
    str r0, [r6,#0x60]
    b loc_800E894
loc_800E836:
    ldr r1, [sp]
    ldr r0, [pc, #0x800e978-0x800e838-4] // =0x20000
    tst r1, r0
    beq loc_800E85E
    ldr r0, [pc, #0x800e97c-0x800e83e-2] // =0x20080
    bl sub_801A176
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_800E84E
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_800E84E:
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r0, #0
    strh r0, [r6,#0x1e]
    strh r0, [r6,#0x1c]
    strh r0, [r6,#0x2a]
loc_800E85E:
    ldr r0, [pc, #0x800e980-0x800e85e-2] // =0x8000
    bl object_clearFlag
    bl object_getFlag
    ldr r1, [pc, #0x800e974-0x800e868-4] // =0x80000000
    tst r0, r1
    bne loc_800E894
    add r0, r1, #0
    bl object_setFlag
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_800E87E
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_800E87E:
    mov r0, #7
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r7, #0x60 
    add r7, r7, r6
    ldr r0, [r7]
    tst r0, r0
    bne loc_800E8B0
    bl sub_80E4B34
loc_800E894:
    ldrh r0, [r6,#0x1e]
    sub r0, #1
    strh r0, [r6,#0x1e]
    bgt loc_800E8B0
    ldr r0, [pc, #0x800e980-0x800e89c-4] // =0x8000
    bl object_clearFlag
    mov r0, #0x80
    bl sub_801A176
    mov r0, #0
    strh r0, [r6,#0x1e]
    str r0, [r6,#0x48]
    b loc_800E8E2
loc_800E8B0:
    ldr r1, [sp]
    mov r0, #0x80
    tst r1, r0
    beq loc_800E8C6
    ldr r0, [pc, #0x800e984-0x800e8b8-4] // =0x30088
    bl sub_801A176
    mov r0, #0
    strh r0, [r6,#0x1c]
    strh r0, [r6,#0x2a]
    strh r0, [r6,#0x2c]
loc_800E8C6:
    ldr r0, [pc, #0x800e980-0x800e8c6-2] // =0x8000
    bl object_setFlag
    ldr r0, [pc, #0x800e988-0x800e8cc-4] // =0x80010800
    bl object_clearFlag
    mov r7, #0x48 
    add r7, r7, r6
    ldr r0, [r7]
    tst r0, r0
    bne loc_800E8E2
    mov r4, #0
    bl sub_80E09EE
loc_800E8E2:
    ldrh r0, [r6,#0x22]
    sub r0, #1
    strh r0, [r6,#0x22]
    bgt loc_800E8F6
    ldr r0, [pc, #0x800e98c-0x800e8ea-2] // =0x4000
    bl object_clearFlag
    mov r0, #0
    strh r0, [r6,#0x22]
    b loc_800E908
loc_800E8F6:
    ldr r1, [sp]
    mov r0, #0x40 
    tst r1, r0
    beq loc_800E908
    bl sub_801A176
    ldr r0, [pc, #0x800e98c-0x800e902-2] // =0x4000
    bl object_setFlag
loc_800E908:
    ldrh r0, [r6,#0x20]
    sub r0, #1
    strh r0, [r6,#0x20]
    bgt loc_800E920
    ldr r0, [pc, #0x800e990-0x800e910-4] // =0x2000
    bl object_clearFlag
    mov r0, #0
    strh r0, [r6,#0x20]
    mov r1, #0x4c 
    str r0, [r6,r1]
    b loc_800E942
loc_800E920:
    ldr r1, [sp]
    mov r0, #0x20 
    tst r1, r0
    beq loc_800E942
    bl sub_801A176
    ldr r0, [pc, #0x800e990-0x800e92c-4] // =0x2000
    bl object_setFlag
    mov r7, #0x4c 
    add r7, r7, r6
    ldr r0, [r7]
    tst r0, r0
    bne loc_800E942
    mov r4, #1
    bl sub_80E09EE
loc_800E942:
    ldrh r0, [r6,#0x28]
    sub r0, #1
    strh r0, [r6,#0x28]
    bgt loc_800E956
    mov r0, #8
    bl object_clearFlag
    mov r0, #0
    strh r0, [r6,#0x28]
    b loc_800E95C
loc_800E956:
    mov r0, #8
    bl object_setFlag
loc_800E95C:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
off_800E960:    .word 0x800
dword_800E964:    .word 0x80018000
dword_800E968:    .word 0x10000
dword_800E96C:    .word 0x30080
dword_800E970:    .word 0x80008000
dword_800E974:    .word 0x80000000
dword_800E978:    .word 0x20000
dword_800E97C:    .word 0x20080
dword_800E980:    .word 0x8000
dword_800E984:    .word 0x30088
dword_800E988:    .word 0x80010800
dword_800E98C:    .word 0x4000
off_800E990:    .word 0x2000
// end of function sub_800E730

.thumb
sub_800E994:
    sub r0, r0, r2
    sub r1, r1, r3
    cmp r0, #2
    bge loc_800E9D8
    cmp r1, #2
    bge loc_800E9D8
    tst r0, r0
    bgt loc_800E9CC
    blt loc_800E9C0
    tst r1, r1
    bgt loc_800E9B8
    blt loc_800E9B0
    mov r0, #0
    mov pc, lr
loc_800E9B0:
    tst r0, r0
    bne loc_800E9D8
    mov r0, #1
    mov pc, lr
loc_800E9B8:
    tst r0, r0
    bne loc_800E9D8
    mov r0, #2
    mov pc, lr
loc_800E9C0:
    tst r1, r1
    bne loc_800E9D8
    tst r4, r4
    bne loc_800E9D4
loc_800E9C8:
    mov r0, #3
    mov pc, lr
loc_800E9CC:
    tst r1, r1
    bne loc_800E9D8
    tst r4, r4
    bne loc_800E9C8
loc_800E9D4:
    mov r0, #4
    mov pc, lr
loc_800E9D8:
    mov r0, #5
    mov pc, lr
// end of function sub_800E994

.thumb
object_setCounterTime:
    push {lr}
    ldr r2, [r5,#0x58]
    ldrb r1, [r2]
    cmp r1, #2
    bne loc_800E9F4
    push {r0}
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    pop {r0}
    beq locret_800E9F8
loc_800E9F4:
    ldr r3, [r5,#0x54]
    strb r0, [r3,#0xd]
locret_800E9F8:
    pop {pc}
// end of function object_setCounterTime

.thumb
sub_800E9FA:
    push {lr}
    ldr r0, [pc, #0x800ecd8-0x800e9fc-4] // =0x301FE
    bl sub_801A176
    ldr r0, [r5,#0x54]
    add r0, #0x80
    mov r1, #0xe
    bl sub_80008C0
    pop {pc}
// end of function sub_800E9FA

.thumb
sub_800EA0E:
    push {lr}
    ldr r0, [pc, #0x800ecd8-0x800ea10-4] // =0x301FE
    bl sub_801A176
    ldr r0, [r5,#0x54]
    add r0, #0x80
    mov r1, #0xe
    bl sub_80008C0
    pop {pc}
// end of function sub_800EA0E

.thumb
sub_800EA22:
    push {lr}
    ldr r0, [pc, #0x800ecdc-0x800ea24-4] // =0x300EE
    bl sub_801A176
    ldr r2, [r5,#0x54]
    mov r3, #0x74 
    mov r0, #0
    strb r0, [r2,r0]
    mov r1, #0x80
    ldrh r1, [r2,r1]
    mov r3, #0x82
loc_800EA38:
    ldrh r0, [r2,r3]
    sub r1, r1, r0
    mov r0, #0
    strh r0, [r2,r3]
    add r3, #2
    cmp r3, #0x8c
    bne loc_800EA38
    str r0, [r2,r3]
    mov r3, #0x80
    strh r1, [r2,r3]
    pop {pc}
    .byte 0
    .byte 0xB5
    .byte 0xA1
    .byte 0x48 
    .byte 0xB
    .byte 0xF0
    .byte 0x90
    .byte 0xFB
    .byte 0x6A 
    .byte 0x6D 
    .byte 0x74 
    .byte 0x23 
    .byte 0
    .byte 0x20
    .byte 0x10
    .byte 0x54 
    .byte 0x80
    .byte 0x21 
    .byte 0x51 
    .byte 0x5A 
    .byte 0x82
    .byte 0x23 
    .byte 0xD0
    .byte 0x5A 
    .byte 9
    .byte 0x1A
    .byte 0
    .byte 0x20
    .byte 0xD0
    .byte 0x52 
    .byte 2
    .byte 0x33 
    .byte 0x8C
    .byte 0x2B 
    .byte 0xF8
    .byte 0xD1
    .byte 0x8E
    .byte 0x23 
    .byte 0xD0
    .byte 0x52 
    .byte 0
    .byte 0x29 
    .byte 3
    .byte 0xD0
    .byte 2
    .byte 0xD4
    .byte 0x80
    .byte 0x23 
    .byte 0xD1
    .byte 0x52 
    .byte 5
    .byte 0xE0
    .byte 0x68 
    .byte 0x6D 
    .byte 0x80
    .byte 0x21 
    .byte 1
    .byte 0x22 
    .byte 0x42 
    .byte 0x52 
    .byte 0x82
    .byte 0x21 
    .byte 0x42 
    .byte 0x52 
    .byte 0
    .byte 0xBD
// end of function sub_800EA22

.thumb
sub_800EA90:
    push {r4,lr}
    ldr r2, [r5,#0x54]
    mov r1, #0x80
    ldrh r1, [r2,r1]
    add r4, r1, #0
    mov r3, #0x82
loc_800EA9C:
    ldrh r0, [r2,r3]
    add r0, #1
    lsr r0, r0, #1
    sub r1, r1, r0
    strh r0, [r2,r3]
    add r3, #2
    cmp r3, #0x8c
    bne loc_800EA9C
    mov r3, #0x80
    strh r1, [r2,r3]
    mov r0, #0
    cmp r1, r4
    bne locret_800EAB8
    mov r0, #1
locret_800EAB8:
    pop {r4,pc}
// end of function sub_800EA90

.thumb
sub_800EABA:
    push {lr}
    ldr r0, [pc, #0x800ecd8-0x800eabc-4] // =0x301FE
    bl sub_801A176
    pop {pc}
// end of function sub_800EABA

.thumb
sub_800EAC4:
    push {lr}
    ldr r2, [r5,#0x54]
    mov r3, #0x84
    ldrh r0, [r2,r3]
    mov r1, #0
    strh r1, [r2,r3]
    mov r3, #0x80
    ldrh r1, [r2,r3]
    sub r1, r1, r0
    strh r1, [r2,r3]
    pop {pc}
// end of function sub_800EAC4

.thumb
sub_800EADA:
    push {lr}
    ldr r0, [pc, #0x800ecd8-0x800eadc-4] // =0x301FE
    bl sub_801A176
    ldr r0, [r5,#0x54]
    add r0, #0x80
    mov r1, #0xe
    bl sub_80008C0
    ldr r0, [r5,#0x54]
    mov r1, #0
    strh r1, [r0,#0x2c]
    strh r1, [r0,#0x1c]
    pop {pc}
    .byte 0xD0
    .byte 0xB5
    .byte 0xD0
    .byte 0xBD
// end of function sub_800EADA

.thumb
object_setInvulnerableTime:
    push {lr}
    ldr r1, [r5,#0x54]
    strh r0, [r1,#0x28]
    mov r0, #8
    bl object_setFlag
    pop {pc}
// end of function object_setInvulnerableTime

.thumb
sub_800EB08:
    push {lr}
    ldr r1, [r5,#0x54]
    mov r0, #0
    strh r0, [r1,#0x28]
    mov r0, #8
    bl object_clearFlag
    pop {pc}
// end of function sub_800EB08

.thumb
sub_800EB18:
    push {lr}
    ldr r1, [r5,#0x54]
    strh r0, [r1,#0x22]
    ldr r0, [pc, #0x800ece0-0x800eb1e-2] // =0x4000
    bl object_setFlag
    pop {pc}
// end of function sub_800EB18

.thumb
sub_800EB26:
    push {lr}
    ldr r3, [r5,#0x54]
    ldr r0, [r3,#0x70]
    mov r1, #0x40 
    tst r0, r1
    beq locret_800EB4C
    ldrb r0, [r3,#0x11]
    cmp r0, #0x60 
    blt loc_800EB3C
    cmp r0, #0x65 
    ble locret_800EB4C
loc_800EB3C:
    mov r1, #0x12
    strb r1, [r3,#0x11]
    ldr r0, [pc, #0x800ece0-0x800eb40-4] // =0x4000
    bl sub_801A16C
    mov r0, #6
    bl sub_801A176
locret_800EB4C:
    pop {pc}
// end of function sub_800EB26

.thumb
sub_800EB4E:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    ldr r0, [r4,#0x70]
    mov r1, #0x40 
    tst r0, r1
    beq locret_800EB6A
    mov r1, #0x12
    strb r1, [r4,#0x11]
    ldr r0, [pc, #0x800ece0-0x800eb5e-2] // =0x4000
    bl sub_801A16C
    mov r0, #6
    bl sub_801A176
locret_800EB6A:
    pop {r4,pc}
// end of function sub_800EB4E

.thumb
sub_800EB6C:
    push {r4,r5,lr}
    mov r4, r10
    ldr r4, [r4,#0x18]
    push {r0}
    bl battle_networkInvert
    tst r0, r0
    pop {r0}
    beq loc_800EB9A
    mov r1, #1
    eor r0, r1
    bl sub_80103BC
    add r5, r0, #0
    bne loc_800EB8C
    b loc_800EB9A
loc_800EB8C:
    bl object_getFlag
    ldr r1, [pc, #0x800ece4-0x800eb90-4] // =0x2000
    tst r0, r1
    beq loc_800EB9A
    mov r0, #0
    pop {r4,r5,pc}
loc_800EB9A:
    mov r0, #1
    pop {r4,r5,pc}
// end of function sub_800EB6C

.thumb
object_spawnHiteffect:
    push {r4,r6,lr}
    bl battle_isPaused
    bne locret_800EBCE
    ldr r1, [r5,#0x54]
    ldr r0, [r1,#0x70]
    ldr r1, [pc, #0x800ebd0-0x800ebaa-2] // =0x20000
    tst r1, r0
    beq locret_800EBCE
    mov r0, #0x6e 
    bl sound_play
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r0, #0x10
    lsl r0, r0, #0x10
    add r3, r3, r0
    mov r0, #0xf
    bl sub_801BDDE
    mov r4, #8
    bl sub_80E08C4
locret_800EBCE:
    pop {r4,r6,pc}
dword_800EBD0:    .word 0x20000
// end of function object_spawnHiteffect

.thumb
object_getEnemyByNameRange:
    push {r4-r7,lr}
    mov r4, #0x10
    mul r3, r4
    add r3, #0x80
    mov r4, r10
    ldr r4, [r4,#0x18]
    add r4, r4, r3
    mov r3, #0
    mov r5, #0
loc_800EBE6:
    ldr r7, [r4]
    tst r7, r7
    beq loc_800EBFC
    ldrh r6, [r7,#0x28]
    cmp r6, r1
    blt loc_800EBFC
    cmp r6, r2
    bgt loc_800EBFC
    str r7, [r0]
    add r0, #4
    add r5, #1
loc_800EBFC:
    add r4, #4
    add r3, #1
    cmp r3, #4
    blt loc_800EBE6
    add r0, r5, #0
    pop {r4-r7,pc}
    .byte 0xF0
    .byte 0xB5
    .byte 0x10
    .byte 0x24 
    .byte 0x63 
    .byte 0x43 
    .byte 0xD0
    .byte 0x33 
    .byte 0x54 
    .byte 0x46 
    .byte 0xA4
    .byte 0x69 
    .byte 0xE4
    .byte 0x18
    .byte 0
    .byte 0x23 
    .byte 0
    .byte 0x25 
    .byte 0x27 
    .byte 0x68 
    .byte 0x3F 
    .byte 0x42 
    .byte 7
    .byte 0xD0
    .byte 0x3E 
    .byte 0x8D
    .byte 0x8E
    .byte 0x42 
    .byte 4
    .byte 0xDB
    .byte 0x96
    .byte 0x42 
    .byte 2
    .byte 0xDC
    .byte 7
    .byte 0x60 
    .byte 4
    .byte 0x30 
    .byte 1
    .byte 0x35 
    .byte 4
    .byte 0x34 
    .byte 1
    .byte 0x33 
    .byte 4
    .byte 0x2B 
    .byte 0xF0
    .byte 0xDB
    .byte 0x28 
    .byte 0x1C
    .byte 0xF0
    .byte 0xBD
// end of function object_getEnemyByNameRange

.thumb
sub_800EC3C:
    push {r5,lr}
    add r5, r0, #0
    ldr r0, [pc, #0x800ece8-0x800ec40-4] // =0x8000
    bl sub_801A16C
    pop {r5,pc}
// end of function sub_800EC3C

.thumb
sub_800EC48:
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #3
    add r3, r3, r2
    ldr r2, [r3]
    add r3, #4
    ldr r3, [r3]
    mov pc, lr
// end of function sub_800EC48

.thumb
sub_800EC56:
    ldr r2, [pc, #0x800ecec-0x800ec56-2] // =dword_86F047C
    cmp r0, #0xff
    ble loc_800EC5E
    ldr r2, [pc, #0x800ecf0-0x800ec5c-4] // =dword_86F0D7C
loc_800EC5E:
    mov r1, #0xff
    and r1, r0
    add r0, r2, #0
    mov pc, lr
    .byte 0
    .byte 0xB5
    .byte 0x50 
    .byte 0x46 
    .byte 0x80
    .byte 0x69 
    .byte 0x94
    .byte 0x30 
    .byte 1
    .byte 0x68 
    .byte 9
    .byte 0x42 
    .byte 4
    .byte 0xD0
    .byte 4
    .byte 0x30 
    .byte 1
    .byte 0x68 
    .byte 9
    .byte 0x42 
    .byte 0
    .byte 0xD0
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0xBD
    .byte 0xB0
    .byte 0xB5
    .byte 1
    .byte 0xB4
    .byte 0xF2
    .byte 0xF7
    .byte 0xD4
    .byte 0xF8
    .byte 7
    .byte 0x1C
    .byte 5
    .byte 0xF0
    .byte 0x61 
    .byte 0xFA
    .byte 0xB8
    .byte 0x42 
    .byte 0
    .byte 0xDD
    .byte 7
    .byte 0x1C
    .byte 1
    .byte 0xBC
    .byte 4
    .byte 0x1C
    .byte 9
    .byte 0xF0
    .byte 0xC
    .byte 0xFB
    .byte 5
    .byte 0x1C
    .byte 0x41 
    .byte 0x78 
    .byte 2
    .byte 0x29 
    .byte 0x16
    .byte 0xD0
    .byte 0
    .byte 0x29 
    .byte 0x14
    .byte 0xD1
    .byte 0x29 
    .byte 0x78 
    .byte 5
    .byte 0x20
    .byte 0x40 
    .byte 0x1A
    .byte 0x10
    .byte 0xDD
    .byte 0xFF
    .byte 0x19
    .byte 0x87
    .byte 0x42 
    .byte 0
    .byte 0xDD
    .byte 7
    .byte 0x1C
    .byte 0xE0
    .byte 0x19
    .byte 0xB
    .byte 0xE0
    .byte 1
    .byte 0x29 
    .byte 8
    .byte 0xD1
    .byte 0x29 
    .byte 0x78 
    .byte 2
    .byte 0x20
    .byte 0x40 
    .byte 0x1A
    .byte 4
    .byte 0xDD
    .byte 0x87
    .byte 0x42 
    .byte 0
    .byte 0xDD
    .byte 7
    .byte 0x1C
    .byte 0xE0
    .byte 0x19
    .byte 0
    .byte 0xE0
    .byte 0x20
    .byte 0x1C
    .byte 0xB0
    .byte 0xBD
    .byte 0
    .byte 0
dword_800ECD8:    .word 0x301FE
dword_800ECDC:    .word 0x300EE
dword_800ECE0:    .word 0x4000
dword_800ECE4:    .word 0x2000
dword_800ECE8:    .word 0x8000
off_800ECEC:    .word dword_86F047C
off_800ECF0:    .word dword_86F0D7C
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
// end of function sub_800EC56

.thumb
sub_800ED00:
    ldr r0, [pc, #0x800ed20-0x800ed00-4] // =unk_2034080
    ldr r1, [pc, #0x800ed24-0x800ed02-2] // =0x80000000
    mov r2, #0
    mov r3, #0x80
    add r3, r3, r3
loc_800ED0A:
    str r1, [r0,#0x7c]
    add r0, r0, r3
    lsr r1, r1, #1
    add r2, #1
    cmp r2, #8
    blt loc_800ED0A
    mov r0, #0
    ldr r1, [pc, #0x800ed28-0x800ed18-4] // =dword_203F6A0
    str r0, [r1]
    mov pc, lr
    .byte 0, 0
off_800ED20:    .word unk_2034080
dword_800ED24:    .word 0x80000000
off_800ED28:    .word dword_203F6A0
// end of function sub_800ED00

.thumb
object_createAIData:
    push {r4,r5,lr}
    ldr r0, [pc, #0x800ed78-0x800ed2e-2] // =unk_2034080  // memBlock
    ldr r3, [pc, #0x800ed7c-0x800ed30-4] // =dword_203F6A0
    ldr r2, [r3]
    mov r1, #1
    lsl r1, r1, #0x1f
    mov r4, #0
    mov r5, #0x80
    add r5, r5, r5
loc_800ED3E:
    tst r2, r1
    beq loc_800ED52
    add r4, #1
    cmp r4, #8
    bge loc_800ED4E
    add r0, r0, r5
    lsr r1, r1, #1
    bne loc_800ED3E
loc_800ED4E:
    mov r0, #0
    pop {r4,r5,pc}
loc_800ED52:
    orr r2, r1
    str r2, [r3]
    add r4, r0, #0
    mov r1, #0x7c   // numWords
    bl CpuSet_ZeroFillWord
    mov r0, #0x80
    add r0, r0, r4  // memBlock
    mov r1, #0x20   // numWords
    bl CpuSet_ZeroFillWord
    mov r0, #0xa0
    add r0, r0, r4  // memBlock
    mov r1, #0x50   // numWords
    bl CpuSet_ZeroFillWord
    add r0, r4, #0
    pop {r4,r5,pc}
    .balign 4, 0x00
off_800ED78:    .word unk_2034080
off_800ED7C:    .word dword_203F6A0
// end of function object_createAIData

.thumb
sub_800ED80:
    ldr r1, [r0,#0x7c]
    ldr r2, [pc, #0x800ed8c-0x800ed82-2] // =dword_203F6A0
    ldr r3, [r2]
    bic r3, r1
    str r3, [r2]
    mov pc, lr
off_800ED8C:    .word dword_203F6A0
// end of function sub_800ED80

.thumb
sub_800ED90:
    push {r5,r7,lr}
    add r5, r0, #0
    ldrh r0, [r5,#0x28]
    bl sub_800F29C
    cmp r0, #2
    bne loc_800EDC6
    ldrb r0, [r5,#0x16]
    bl sub_8010018
    ldrb r1, [r0]
    add r1, r1, r1
    add r0, r0, r1
    add r0, #2
    add r7, r0, #0
    ldrh r0, [r7]
    mov r1, #0
    bl sub_800EF34
    ldrh r2, [r7,#0x18]
    add r2, r2, r0
    ldrh r0, [r7,#0x24]
    add r2, r2, r0
    ldrh r1, [r7,#0xc]
    ldrh r0, [r7]
    ldrb r3, [r5,#0x1a]
    pop {r5,r7,pc}
loc_800EDC6:
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    mov r2, #0
    ldrb r3, [r5,#0x1a]
    pop {r5,r7,pc}
// end of function sub_800ED90

.thumb
sub_800EDD0:
    push {r5-r7,lr}
    sub sp, sp, #4
    str r1, [sp]
    add r5, r0, #0
    ldrh r0, [r5,#0x28]
    bl sub_800F29C
    cmp r0, #2
    bne loc_800EE1A
    ldrb r0, [r5,#0x16]
    bl sub_8010018
    add r4, r0, #0
    ldrb r6, [r0]
    add r1, r6, r6
    add r0, r0, r1
    add r0, #2
    add r7, r0, #0
    ldrh r0, [r7]
    ldr r1, [sp]
    bl sub_800EF34
    add r3, r1, #0
    ldrh r2, [r7,#0x18]
    add r2, r2, r0
    ldrh r0, [r7,#0x24]
    add r2, r2, r0
    ldrh r1, [r7,#0xc]
    ldrh r0, [r7]
    mov r7, #0x44 
    add r7, r7, r6
    ldrb r7, [r4,r7]
    add r6, #0x3e 
    ldrb r4, [r4,r6]
    lsl r4, r4, #8
    add r4, r4, r7
    b loc_800EE22
loc_800EE1A:
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    mov r2, #0
    ldrb r3, [r5,#0x1a]
loc_800EE22:
    add sp, sp, #4
    pop {r5-r7,pc}
// end of function sub_800EDD0

.thumb
sub_800EE26:
    push {r5-r7,lr}
    add r5, r0, #0
    ldrh r0, [r5,#0x28]
    bl sub_800F29C
    cmp r0, #2
    bne loc_800EE8E
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    add r6, r0, #0
    bl sub_800EE98
    ldrh r0, [r6,#0x34]
    mov r1, #0
    bl sub_800EF34
    push {r0,r1}
    ldrh r0, [r6,#0x34]
    bl sub_8021AA4
    ldrb r0, [r0,#0xf]
    strb r0, [r7,#0x1d]
    ldrh r0, [r6,#0x34]
    ldrb r1, [r5,#0x16]
    bl loc_80109A4
    add r1, r0, #0
    pop {r2,r3}
    push {r1-r3}
    ldrh r0, [r6,#0x34]
    bl sub_8021AA4
    ldrb r0, [r0,#9]
    pop {r1-r3}
    mov r4, #2
    tst r0, r4
    beq loc_800EE7A
    ldrh r4, [r6,#0x36]
    add r2, r2, r4
    mov r4, #0
    strh r4, [r6,#0x36]
loc_800EE7A:
    mov r4, #4
    tst r0, r4
    beq loc_800EE88
    ldrh r4, [r6,#0x38]
    add r2, r2, r4
    mov r4, #0
    strh r4, [r6,#0x38]
loc_800EE88:
    mov r4, #0
    ldrh r0, [r6,#0x34]
    b locret_800EE96
loc_800EE8E:
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    mov r2, #0
    ldrb r3, [r5,#0x1a]
locret_800EE96:
    pop {r5-r7,pc}
// end of function sub_800EE26

.thumb
sub_800EE98:
    push {r0-r4,lr}
    ldrb r0, [r5,#0x16]
    ldrh r1, [r6,#0x34]
    bl sub_802E830
    add r4, r0, #0
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    tst r0, r0
    bne loc_800EEBA
    add r0, r4, #0
    bl sub_801E2BA
    mov r0, #0x8d
    bl sound_play
loc_800EEBA:
    ldrh r0, [r6,#0x34]
    bl sub_8021AA4
    add r4, r0, #0
    ldrb r0, [r4,#0x16]
    mov r1, #0x80
    tst r0, r1
    bne locret_800EEE2
    ldrb r0, [r4,#7]
    add r0, r0, r0
    ldr r1, [pc, #0x800eef4-0x800eece-2] // =unk_800EEF8
    ldrh r0, [r1,r0]
    ldr r2, [pc, #0x800eef0-0x800eed2-2] // =unk_200F3C4
    add r3, r6, r6
    strh r0, [r2,r3]
    ldrh r1, [r6,#0x28]
    sub r1, r1, r0
    bge loc_800EEE0
    mov r1, #0
loc_800EEE0:
    strh r1, [r6,#0x28]
locret_800EEE2:
    pop {r0-r4,pc}
    .word 0, 0
    .byte 0, 0, 0, 0
off_800EEF0:    .word unk_200F3C4
off_800EEF4:    .word unk_800EEF8
unk_800EEF8:    .byte 0
    .byte 0x15
    .byte 0
    .byte 0x2A 
    .byte 0
    .byte 0x40 
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
// end of function sub_800EE98

.thumb
sub_800EF02:
    push {r5-r7,lr}
    add r6, r0, #0
    ldrh r0, [r5,#0x28]
    bl sub_800F29C
    cmp r0, #2
    bne loc_800EF2A
    add r0, r6, #0
    mov r1, #0
    bl sub_800EF34
    push {r0,r1}
    add r0, r6, #0
    ldrb r1, [r5,#0x16]
    bl loc_80109A4
    add r1, r0, #0
    pop {r2,r3}
    add r0, r6, #0
    b locret_800EF32
loc_800EF2A:
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    mov r2, #0
    ldrb r3, [r5,#0x1a]
locret_800EF32:
    pop {r5-r7,pc}
// end of function sub_800EF02

.thumb
sub_800EF34:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    str r1, [sp]
    add r4, r0, #0
    mov r6, #0
    mov r7, #0
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0
    beq loc_800EF54
    add r0, r4, #0
    ldr r1, [sp]
    bl sub_800F09E
    b loc_800F094
loc_800EF54:
    ldr r0, [pc, #0x800f208-0x800ef54-4] // =0xFFFF
    cmp r0, r4
    bne loc_800EF5C
    b loc_800F090
loc_800EF5C:
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #1
    beq loc_800EF6A
    cmp r0, #0xd
    bne loc_800EF8E
loc_800EF6A:
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800EF8C
    ldrb r1, [r0,#6]
    cmp r1, #0
    bne loc_800EF8C
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    bne loc_800EF8C
    mov r7, #2
    add r6, #0x32 
    b loc_800F090
loc_800EF8C:
    b loc_800F058
loc_800EF8E:
    cmp r0, #0xe
    beq loc_800EF96
    cmp r0, #2
    bne loc_800EFB8
loc_800EF96:
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800F058
    ldrb r1, [r0,#6]
    cmp r1, #2
    bne loc_800F058
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    bne loc_800F058
    mov r7, #6
    add r6, #0x32 
    b loc_800F090
loc_800EFB8:
    cmp r0, #0xf
    beq loc_800EFC0
    cmp r0, #3
    bne loc_800EFE2
loc_800EFC0:
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800F058
    ldrb r1, [r0,#6]
    cmp r1, #5
    bne loc_800F058
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    bne loc_800F058
    mov r7, #6
    add r6, #0x32 
    b loc_800F090
loc_800EFE2:
    cmp r0, #0x14
    beq loc_800EFEA
    cmp r0, #8
    bne loc_800F00C
loc_800EFEA:
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800F058
    ldrb r1, [r0,#6]
    cmp r1, #8
    bne loc_800F058
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    bne loc_800F058
    mov r7, #7
    add r6, #0xa
    b loc_800F090
loc_800F00C:
    cmp r0, #0x10
    beq loc_800F014
    cmp r0, #4
    bne loc_800F02E
loc_800F014:
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800F058
    ldrb r1, [r0,#6]
    cmp r1, #6
    bne loc_800F058
    mov r7, #8
    add r6, #0x1e
    b loc_800F090
loc_800F02E:
    cmp r0, #0x15
    beq loc_800F036
    cmp r0, #9
    bne loc_800F058
loc_800F036:
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800F058
    ldrb r1, [r0,#6]
    cmp r1, #9
    bne loc_800F058
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    bne loc_800F058
    mov r7, #8
    add r6, #0xa
    b loc_800F090
loc_800F058:
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0xb
    blt loc_800F090
    cmp r0, #0x16
    bgt loc_800F090
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800F090
    ldrb r1, [r0,#6]
    cmp r1, #0xa
    bne loc_800F090
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    bne loc_800F090
    bl sub_802D234
    cmp r0, #1
    beq loc_800F090
    mov r7, #9
    add r6, #0x1e
    b loc_800F090
loc_800F090:
    add r0, r6, #0
    add r1, r7, #0
loc_800F094:
    add r2, r4, #0
    bl sub_800F1DC
    add sp, sp, #4
    pop {r4,r6,r7,pc}
// end of function sub_800EF34

.thumb
sub_800F09E:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    str r1, [sp]
    add r4, r0, #0
    mov r6, #0
    mov r7, #0
    ldr r0, [pc, #0x800f208-0x800f0aa-2] // =0xFFFF
    cmp r0, r4
    beq loc_800F0DE
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #1
    bne loc_800F0E0
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800F0DC
    ldrb r1, [r0,#6]
    cmp r1, #0
    bne loc_800F0DC
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    bne loc_800F0DC
    mov r7, #0xc
    add r6, #0
    b loc_800F1BE
loc_800F0DC:
    b loc_800F1D4
loc_800F0DE:
    b loc_800F1D4
loc_800F0E0:
    cmp r0, #2
    bne loc_800F106
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800F1D4
    ldrb r1, [r0,#6]
    cmp r1, #2
    bne loc_800F1D4
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    bne loc_800F1D4
    mov r7, #0xd
    add r6, #0
    b loc_800F1BE
loc_800F106:
    cmp r0, #3
    bne loc_800F12C
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800F1D4
    ldrb r1, [r0,#6]
    cmp r1, #5
    bne loc_800F1D4
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    bne loc_800F1D4
    mov r7, #0xe
    add r6, #0
    b loc_800F1BE
loc_800F12C:
    cmp r0, #4
    bne loc_800F14A
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800F1D4
    ldrb r1, [r0,#6]
    cmp r1, #6
    bne loc_800F1D4
    mov r7, #0xf
    add r6, #0
    b loc_800F1BE
loc_800F14A:
    cmp r0, #8
    bne loc_800F170
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800F1D4
    ldrb r1, [r0,#6]
    cmp r1, #8
    bne loc_800F1D4
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    bne loc_800F1D4
    mov r7, #0x10
    add r6, #0
    b loc_800F1BE
loc_800F170:
    cmp r0, #9
    bne loc_800F196
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800F1D4
    ldrb r1, [r0,#6]
    cmp r1, #9
    bne loc_800F1D4
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    bne loc_800F1D4
    mov r7, #0x11
    add r6, #0
    b loc_800F1BE
loc_800F196:
    cmp r0, #0xa
    bne loc_800F1BC
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_800F1D4
    ldrb r1, [r0,#6]
    cmp r1, #9
    bne loc_800F1D4
    ldrb r1, [r0,#9]
    mov r2, #1
    tst r1, r2
    bne loc_800F1D4
    mov r7, #0x12
    add r6, #0
    b loc_800F1BE
loc_800F1BC:
    b loc_800F1D4
loc_800F1BE:
    bl sub_800F49E
    cmp r0, #0xff
    beq loc_800F1D4
    add r1, r7, #0
    sub r1, #0xc
    mov r2, #0xf
    mul r1, r2
    add r0, r0, r1
    ldr r1, [pc, #0x800f20c-0x800f1d0-4] // =dword_8021300
    ldrb r6, [r1,r0]
loc_800F1D4:
    add r0, r6, #0
    add r1, r7, #0
    add sp, sp, #4
    pop {r4,r6,r7,pc}
// end of function sub_800F09E

.thumb
sub_800F1DC:
    push {r1,r6,r7,lr}
    ldr r3, [pc, #0x800f210-0x800f1de-2] // =0x150
    cmp r2, r3
    beq loc_800F1EC
    cmp r2, #0x5f 
    blt locret_800F204
    cmp r2, #0x61 
    bgt locret_800F204
loc_800F1EC:
    ldr r3, [r5,#0x54]
    ldrb r2, [r3,#6]
    cmp r2, #0
    beq locret_800F204
    cmp r2, #0x10
    bge locret_800F204
    cmp r2, #8
    bne loc_800F202
    ldrb r2, [r3,#0x16]
    cmp r2, #0
    beq locret_800F204
loc_800F202:
    add r0, #0x32 
locret_800F204:
    pop {r1,r6,r7,pc}
    .balign 4, 0x00
dword_800F208:    .word 0xFFFF
off_800F20C:    .word dword_8021300
off_800F210:    .word 0x150
// end of function sub_800F1DC

.thumb
sub_800F214:
    push {lr}
    bl sub_80182B4
    ldrb r2, [r0,#1]
    lsl r2, r2, #2
    ldr r1, [pc, #0x800f22c-0x800f21e-2] // =off_800F230
    ldr r1, [r1,r2]
    ldrb r2, [r0,#2]
    lsl r2, r2, #2
    ldr r0, [r1,r2]
    pop {pc}
    .balign 4, 0x00
off_800F22C:    .word off_800F230
off_800F230:    .word off_81090D0
    .word off_80F24D8
    .word off_80EA814
// end of function sub_800F214

.thumb
sub_800F23C:
    push {lr}
    bl sub_80182B4
    ldrb r2, [r0,#1]
    lsl r2, r2, #2
    ldr r1, [pc, #0x800f25c-0x800f246-2] // =off_800F260
    ldr r1, [r1,r2]
    ldrb r2, [r0,#2]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    ldrb r2, [r0]
    mov r3, #6
    mul r2, r3
    add r0, r1, r2
    pop {pc}
    .balign 4, 0x00
off_800F25C:    .word off_800F260
off_800F260:    .word off_8109150
    .word off_80F253C
    .word loc_80EA8D8
// end of function sub_800F23C

.thumb
sub_800F26C:
    push {lr}
    mov r2, #0xcd
    sub r2, r0, r2
    mov r1, #0x32 
    cmp r2, r1
    bls loc_800F286
    bl sub_800F214
    ldrb r1, [r0,#1]
    ldrb r0, [r0]
    mov r2, #0
    mov r3, #0
    pop {pc}
loc_800F286:
    sub r0, #0xcd
    mov r1, #5
    mul r0, r1
    ldr r3, [pc, #0x800f4d4-0x800f28c-4] // =dword_8021220
    add r3, r3, r0
    ldrb r0, [r3]
    ldrb r1, [r3,#1]
    ldrb r2, [r3,#2]
    ldrb r4, [r3,#4]
    ldrb r3, [r3,#3]
    pop {pc}
// end of function sub_800F26C

.thumb
sub_800F29C:
    push {lr}
    bl sub_80182B4
    ldrb r2, [r0]
    ldrb r1, [r0,#2]
    ldrb r0, [r0,#1]
    pop {pc}
// end of function sub_800F29C

.thumb
sub_800F2AA:
    push {lr}
    ldrh r1, [r5,#0x28]
    bl nullsub_3
    pop {pc}
// end of function sub_800F2AA

.thumb
nullsub_3:
    mov pc, lr
// end of function nullsub_3

.thumb
sub_800F2B6:
    push {lr}
    ldrh r1, [r5,#0x28]
    bl nullsub_3
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    pop {pc}
// end of function sub_800F2B6

.thumb
sub_800F2C6:
    push {lr}
    bl sub_800E456
    bl sub_8002F5C
    ldr r0, [r5,#0x58]
    tst r0, r0
    beq locret_800F2EE
    ldrb r1, [r0]
    cmp r1, #2
    bne loc_800F2EA
    mov r0, #3
    bl sub_8018856
    neg r1, r1
    bl sub_801DC06
    pop {pc}
loc_800F2EA:
    bl sub_801DBD4
locret_800F2EE:
    pop {pc}
// end of function sub_800F2C6

.thumb
sub_800F2F0:
    push {lr}
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x78]
    bl sub_800F2FC
    pop {pc}
// end of function sub_800F2F0

.thumb
sub_800F2FC:
    push {lr}
    ldrb r1, [r0,#0x12]
    ldrb r2, [r5,#0x12]
    mov r0, #0
    sub r1, r1, r2
    beq locret_800F316
    bgt loc_800F30C
    mov r0, #1
loc_800F30C:
    ldrb r1, [r5,#0x16]
    eor r0, r1
    strb r0, [r5,#0x17]
    bl sub_800F2C6
locret_800F316:
    pop {pc}
// end of function sub_800F2FC

.thumb
sub_800F318:
    ldr r1, [r5,#0x58]
    tst r1, r1
    beq locret_800F320
    str r0, [r1,#0x78]
locret_800F320:
    mov pc, lr
// end of function sub_800F318

.thumb
sub_800F322:
    ldrb r0, [r5,#0x1a]
    cmp r0, #0
    beq locret_800F332
    sub r0, #1
    strb r0, [r5,#0x1a]
    bne locret_800F332
    sub r0, #1
    strh r0, [r5,#0x2a]
locret_800F332:
    mov pc, lr
// end of function sub_800F322

.thumb
sub_800F334:
    ldr r0, [r5,#0x58]
    ldrb r1, [r0]
    ldrb r2, [r0,#0x16]
    ldrb r3, [r0,#3]
    cmp r1, #0
    bne loc_800F346
    mul r2, r3
    add r0, r2, #0
    mov pc, lr
loc_800F346:
    ldr r0, [pc, #0x800f350-0x800f346-2] // =dword_800F354
    ldrb r0, [r0,r2]
    mul r0, r3
    mov pc, lr
    .byte 0, 0
off_800F350:    .word dword_800F354
dword_800F354:    .word 0x0
    .byte 3
    .byte 1
    .byte 0
    .byte 0
// end of function sub_800F334

.thumb
sub_800F35C:
    push {lr}
    ldr r0, [pc, #0x800f368-0x800f35e-2] // =unk_800F36C
    bl loc_800F420
    pop {pc}
    .byte 0
    .byte 0
off_800F368:    .word unk_800F36C
unk_800F36C:    .byte 0x50 
    .byte 0x92
    .byte 0x10
    .byte 8
    .byte 4
    .byte 0x26 
    .byte 0xF
    .byte 8
    .byte 0xA0
    .byte 0xA9
    .byte 0xE
    .byte 8
// end of function sub_800F35C

.thumb
sub_800F378:
    push {lr}
    ldr r0, [pc, #0x800f384-0x800f37a-2] // =unk_800F388
    bl loc_800F420
    pop {pc}
    .byte 0
    .byte 0
off_800F384:    .word unk_800F388
unk_800F388:    .byte 0xD0
    .byte 0x92
    .byte 0x10
    .byte 8
    .byte 0x68 
    .byte 0x26 
    .byte 0xF
    .byte 8
    .byte 4
    .byte 0xAA
    .byte 0xE
    .byte 8
// end of function sub_800F378

.thumb
sub_800F394:
    push {lr}
    ldr r0, [pc, #0x800f3a0-0x800f396-2] // =unk_800F3A4
    bl loc_800F420
    pop {pc}
    .byte 0
    .byte 0
off_800F3A0:    .word unk_800F3A4
unk_800F3A4:    .byte 0x50 
    .byte 0x93
    .byte 0x10
    .byte 8
    .byte 0xCC
    .byte 0x26 
    .byte 0xF
    .byte 8
    .byte 0x68 
    .byte 0xAA
    .byte 0xE
    .byte 8
// end of function sub_800F394

.thumb
sub_800F3B0:
    push {lr}
    ldr r0, [pc, #0x800f3bc-0x800f3b2-2] // =unk_800F3C0
    bl loc_800F420
    pop {pc}
    .byte 0
    .byte 0
off_800F3BC:    .word unk_800F3C0
unk_800F3C0:    .byte 0xD0
    .byte 0x93
    .byte 0x10
    .byte 8
    .byte 0x30 
    .byte 0x27 
    .byte 0xF
    .byte 8
    .byte 0xCC
    .byte 0xAA
    .byte 0xE
    .byte 8
// end of function sub_800F3B0

.thumb
sub_800F3CC:
    push {lr}
    ldr r0, [pc, #0x800f3d8-0x800f3ce-2] // =unk_800F3DC
    bl loc_800F420
    pop {pc}
    .byte 0
    .byte 0
off_800F3D8:    .word unk_800F3DC
unk_800F3DC:    .byte 0x50 
    .byte 0x94
    .byte 0x10
    .byte 8
    .byte 0x94
    .byte 0x27 
    .byte 0xF
    .byte 8
    .byte 0x30 
    .byte 0xAB
    .byte 0xE
    .byte 8
// end of function sub_800F3CC

.thumb
sub_800F3E8:
    push {lr}
    ldr r0, [pc, #0x800f3f4-0x800f3ea-2] // =unk_800F3F8
    bl loc_800F420
    pop {pc}
    .byte 0
    .byte 0
off_800F3F4:    .word unk_800F3F8
unk_800F3F8:    .byte 0xD0
    .byte 0x94
    .byte 0x10
    .byte 8
    .byte 0xF8
    .byte 0x27 
    .byte 0xF
    .byte 8
    .byte 0x94
    .byte 0xAB
    .byte 0xE
    .byte 8
// end of function sub_800F3E8

.thumb
sub_800F404:
    push {lr}
    ldr r0, [pc, #0x800f410-0x800f406-2] // =unk_800F414
    bl loc_800F420
    pop {pc}
    .byte 0
    .byte 0
off_800F410:    .word unk_800F414
unk_800F414:    .byte 0x50 
    .byte 0x95
    .byte 0x10
    .byte 8
    .byte 0x5C 
    .byte 0x28 
    .byte 0xF
    .byte 8
    .byte 0xF8
    .byte 0xAB
    .byte 0xE
    .byte 8
// end of function sub_800F404

loc_800F420:
    push {lr}
    ldr r3, [r5,#0x58]
    ldrb r1, [r3]
    lsl r1, r1, #2
    ldr r2, [r0,r1]
    ldrb r1, [r3,#1]
    lsl r1, r1, #2
    ldr r0, [r2,r1]
    mov lr, pc
    bx r0
    pop {pc}
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    str r2, [sp]
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800E2CA
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
    ldr r1, [sp]
    tst r0, r1
    bne loc_800F466
    b loc_800F446
loc_800F462:
    mov r0, #0
    b loc_800F468
loc_800F466:
    mov r0, #1
loc_800F468:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
.thumb
sub_800F46C:
    push {lr}
    bl sub_802D26A
    cmp r0, #0x38 
    beq loc_800F482
    cmp r0, #0x30 
    beq loc_800F482
    cmp r0, #0x3c 
    beq loc_800F482
    ldrb r0, [r5,#0x17]
    pop {pc}
loc_800F482:
    mov r0, #0
    pop {pc}
// end of function sub_800F46C

.thumb
sub_800F486:
    cmp r0, #0xd3
    beq loc_800F49A
    cmp r0, #0xda
    beq loc_800F49A
    cmp r0, #0xe9
    beq loc_800F49A
    cmp r0, #0xea
    beq loc_800F49A
    mov r0, #1
    mov pc, lr
loc_800F49A:
    mov r0, #0
    mov pc, lr
// end of function sub_800F486

.thumb
sub_800F49E:
    ldr r1, [pc, #0x800f4d8-0x800f49e-2] // =dword_203CFA0
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov pc, lr
// end of function sub_800F49E

.thumb
sub_800F4A8:
    ldr r1, [pc, #0x800f4dc-0x800f4a8-4] // =dword_203F7E0
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov pc, lr
// end of function sub_800F4A8

.thumb
sub_800F4B2:
    push {lr}
    ldr r1, [pc, #0x800f4e0-0x800f4b4-4] // =dword_203F7E0
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #2
    ldr r3, [r1,r2]
    sub r3, r3, r0
    str r3, [r1,r2]
    push {r0}
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    cmp r0, #0
    pop {r0}
    bne locret_800F4D2
    bl sub_803D0C8
locret_800F4D2:
    pop {pc}
off_800F4D4:    .word dword_8021220
off_800F4D8:    .word dword_203CFA0
off_800F4DC:    .word dword_203F7E0
off_800F4E0:    .word dword_203F7E0
// end of function sub_800F4B2

    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl object_isValidPanel
    beq loc_800F4FE
    add r0, r6, #0
    add r1, r7, #0
    ldr r2, [pc, #0x800f504-0x800f4f4-4] // =0x10
    ldr r3, [pc, #0x800f508-0x800f4f6-2] // =0x3880080
    bl object_checkPanelParameters
    pop {r6,r7,pc}
loc_800F4FE:
    mov r0, #0
    pop {r6,r7,pc}
    .balign 4, 0x00
dword_800F504:    .word 0x10
dword_800F508:    .word 0x3880080
.thumb
sub_800F50C:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl object_isValidPanel
    beq loc_800F526
    add r0, r6, #0
    add r1, r7, #0
    ldr r2, [pc, #0x800f52c-0x800f51c-4] // =0x10
    ldr r3, [pc, #0x800f530-0x800f51e-2] // =0xF880080
    bl object_checkPanelParameters
    pop {r6,r7,pc}
loc_800F526:
    mov r0, #0
    pop {r6,r7,pc}
    .balign 4, 0x00
dword_800F52C:    .word 0x10
dword_800F530:    .word 0xF880080
// end of function sub_800F50C

.thumb
sub_800F534:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl object_isValidPanel
    beq loc_800F54E
    add r0, r6, #0
    add r1, r7, #0
    ldr r2, [pc, #0x800f554-0x800f544-4] // =0x10
    ldr r3, [pc, #0x800f558-0x800f546-2] // =0x3800000
    bl object_checkPanelParameters
    pop {r6,r7,pc}
loc_800F54E:
    mov r0, #0
    pop {r6,r7,pc}
    .balign 4, 0x00
dword_800F554:    .word 0x10
dword_800F558:    .word 0x3800000
// end of function sub_800F534

.thumb
sub_800F55C:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl object_isValidPanel
    beq loc_800F580
    ldrb r0, [r5,#0xc]
    sub r0, #1
    lsl r0, r0, #3
    ldr r3, [pc, #0x800f584-0x800f56e-2] // =off_800F588
    add r3, r3, r0
    ldr r2, [r3]
    ldr r3, [r3,#4]
    add r0, r6, #0
    add r1, r7, #0
    bl object_checkPanelParameters
    pop {r6,r7,pc}
loc_800F580:
    mov r0, #0
    pop {r6,r7,pc}
off_800F584:    .word off_800F588
off_800F588:    .word 0x30
    .byte 0
    .byte 0
    .byte 0x80
    .byte 3
    .byte 0x10
    .byte 0
    .byte 0
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0x80
    .byte 3
// end of function sub_800F55C

.thumb
sub_800F598:
    push {r4,r6,r7,lr}
    ldr r3, [r5,#0x54]
    mov r0, #1
    ldr r1, [r3,#0x70]
    mov r2, #0x54 
    ldr r2, [r3,r2]
    orr r1, r2
    ldr r2, [pc, #0x800f600-0x800f5a6-2] // =0xF3000000
    tst r1, r2
    beq loc_800F5BC
    ldr r2, [pc, #0x800f5f8-0x800f5ac-4] // =0xA2000000
    tst r1, r2
    bne loc_800F5B6
    neg r0, r0
    b loc_800F5C6
loc_800F5B6:
    ldr r2, [pc, #0x800f5fc-0x800f5b6-2] // =0x51000000
    tst r1, r2
    beq loc_800F5C6
loc_800F5BC:
    mov r0, #0
    mov r1, #0
    mov r2, #0
    mov r3, #0
    pop {r4,r6,r7,pc}
loc_800F5C6:
    push {r0}
    ldrb r1, [r3,#0xf]
    lsr r1, r1, #2
    mov r2, #0
loc_800F5CE:
    lsr r1, r1, #1
    bcs loc_800F5DA
    add r2, #1
    cmp r2, #4
    blt loc_800F5CE
    b loc_800F5E4
loc_800F5DA:
    mov r1, #3
    mul r2, r1
    ldr r1, [pc, #0x800f5f4-0x800f5de-2] // =unk_800F604
    add r2, r2, r1
    b loc_800F5E4
loc_800F5E4:
    mov r1, #0
    ldrsb r1, [r2,r1]
    mul r0, r1
    mov r1, #1
    ldrsb r1, [r2,r1]
    ldrb r2, [r2,#2]
    pop {r3}
    pop {r4,r6,r7,pc}
off_800F5F4:    .word unk_800F604
dword_800F5F8:    .word 0xA2000000
dword_800F5FC:    .word 0x51000000
dword_800F600:    .word 0xF3000000
unk_800F604:    .byte 0xFF
    .byte 0
    .byte 6
    .byte 1
    .byte 0
    .byte 6
    .byte 0xFF
    .byte 0
    .byte 1
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
// end of function sub_800F598

.thumb
sub_800F614:
    push {lr}
    mov r3, #0xc
    mul r3, r1
    mov r1, r10
    ldr r1, [r1,#0x18]
    add r1, r1, r3
    lsl r3, r2, #3
    add r1, r1, r3
    add r1, #0xa0
    tst r2, r2
    bne loc_800F648
    ldr r2, [r1]
    ldr r3, [r1,#4]
    tst r2, r2
    bne loc_800F636
    str r0, [r1]
    b locret_800F654
loc_800F636:
    tst r3, r3
    bne loc_800F63E
    str r0, [r1,#4]
    b locret_800F654
loc_800F63E:
    str r3, [r1]
    str r0, [r1,#4]
    mov r3, #0
    strh r3, [r2,#0x24]
    b locret_800F654
loc_800F648:
    ldr r2, [r1]
    str r0, [r1]
    tst r2, r2
    beq locret_800F654
    mov r3, #0
    strh r3, [r2,#0x24]
locret_800F654:
    pop {pc}
// end of function sub_800F614

.thumb
sub_800F656:
    mov r0, r10
    ldr r0, [r0,#0x18]
    add r0, #0xa0
    mov r1, #0
loc_800F65E:
    ldr r2, [r0]
    cmp r2, r5
    bne loc_800F668
    mov r2, #0
    str r2, [r0]
loc_800F668:
    add r0, #4
    add r1, #1
    cmp r1, #6
    blt loc_800F65E
    mov pc, lr
// end of function sub_800F656

.thumb
sub_800F672:
    push {lr}
    bl battle_isBattleOver
    tst r0, r0
    bne loc_800F690
    bl battle_isTimeStop
    bne locret_800F6AA
    bl battle_isPaused
    bne locret_800F6AA
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_800F69A
loc_800F690:
    bl sub_801A074
    mov r0, #0
    strh r0, [r5,#0x24]
    pop {pc}
loc_800F69A:
    cmp r0, #0xb4
    bhi locret_800F6AA
    lsr r0, r0, #2
    bcc locret_800F6AA
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
locret_800F6AA:
    pop {pc}
// end of function sub_800F672

    push {r5,lr}
    strb r2, [r0,#0x1c]
    strb r3, [r0,#0x1d]
    strb r4, [r0,#0x1e]
    str r6, [r0,#0x2c]
    add r5, r0, #0
    ldr r0, [pc, #0x800f944-0x800f6b8-4] // =0x400
    tst r1, r1
    beq loc_800F6C0
    ldr r0, [pc, #0x800f948-0x800f6be-2] // =0x800
loc_800F6C0:
    bl sub_801A16C
    pop {r5,pc}
    push {r4,r6,r7,lr}
    sub sp, sp, #0x14
    mov r7, sp
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r6, [pc, #0x800f740-0x800f6d0-4] // =off_800F748
    add r6, r6, r0
    ldr r2, [r6]
    ldr r3, [r6,#4]
    bl sub_800CEA0
    add r1, r0, #0
    beq loc_800F6F6
    push {r1}
    bl sub_8001532
    pop {r1}
    svc 6
    ldrb r0, [r7,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add sp, sp, #0x14
    pop {r4,r6,r7,pc}
loc_800F6F6:
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r6, [pc, #0x800f744-0x800f6fa-2] // =dword_800F758
    add r6, r6, r0
    ldr r2, [r6]
    ldr r3, [r6,#4]
    bl object_getPanelsExceptCurrentFilterred
    add r1, r0, #0
    beq loc_800F720
    push {r1}
    bl sub_8001532
    pop {r1}
    svc 6
    ldrb r0, [r7,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add sp, sp, #0x14
    pop {r4,r6,r7,pc}
loc_800F720:
    mov r2, #0
    mov r3, #0
    bl sub_800CEA0
    push {r0}
    bl sub_8001532
    pop {r1}
    svc 6
    ldrb r0, [r7,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add sp, sp, #0x14
    pop {r4,r6,r7,pc}
    .byte 0, 0
off_800F740:    .word off_800F748
off_800F744:    .word dword_800F758
off_800F748:    .word LCDControl
    .byte 0, 0, 0, 0
    .word start_
    .byte 0, 0, 0, 0
dword_800F758:    .word 0x20, 0x0, 0x0
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
.thumb
sub_800F768:
    push {lr}
    bl sub_800E276
    ldrh r2, [r5,#0x36]
    lsl r2, r2, #0x10
    ldrh r3, [r5,#0x3a]
    lsl r3, r3, #0x10
    sub r2, r0, r2
    sub r0, r1, r3
    add r1, r2, #0
    push {r0,r1}
    push {r5}
    bl calcAngle_800117C
    pop {r5}
    strb r0, [r5,#0xc]
    mov r1, #8
    lsl r1, r1, #0x10
    push {r1}
    bl sub_80011A0
    str r0, [r5,#0x40]
    str r1, [r5,#0x44]
    pop {r4}
    pop {r0,r1}
    lsr r0, r0, #8
    add r2, r0, #0
    mul r0, r2
    lsr r1, r1, #8
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    svc 8
    lsl r0, r0, #8
    add r1, r4, #0
    svc 6
    tst r0, r0
    beq loc_800F7C4
    push {r0}
    add r1, r0, #0
    mov r0, #0x40 
    lsl r0, r0, #0x10
    svc 6
    str r0, [r5,#0x48]
    pop {r0}
    pop {pc}
loc_800F7C4:
    mov r0, #8
    lsl r0, r0, #0x10
    str r0, [r5,#0x48]
    mov r0, #0
    str r0, [r5,#0x40]
    str r0, [r5,#0x44]
    mov r0, #8
    pop {pc}
    .byte 1
    .byte 0x20
    .byte 0x51 
    .byte 0x46 
    .byte 0x89
    .byte 0x69 
    .byte 0xA0
    .byte 0x31 
    .byte 0
    .byte 0x22 
    .byte 0xB
    .byte 0x68 
    .byte 0x1B
    .byte 0x42 
    .byte 0xA
    .byte 0xD0
    .byte 0x9C
    .byte 0x78 
    .byte 0x93
    .byte 0x2C 
    .byte 2
    .byte 0xD1
    .byte 0x5C 
    .byte 0x78 
    .byte 5
    .byte 0xD0
    .byte 9
    .byte 0xE0
    .byte 0x9C
    .byte 0x78 
    .byte 0x84
    .byte 0x2C 
    .byte 6
    .byte 0xD1
    .byte 0x5C 
    .byte 0x78 
    .byte 4
    .byte 0xD1
    .byte 4
    .byte 0x31 
    .byte 1
    .byte 0x32 
    .byte 8
    .byte 0x2A 
    .byte 0xED
    .byte 0xDB
    .byte 0
    .byte 0x20
    .byte 0xF7
    .byte 0x46 
// end of function sub_800F768

.thumb
sub_800F806:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    add r0, #0xa0
    mov r1, #0
loc_800F810:
    ldr r2, [r0]
    cmp r2, r5
    beq loc_800F81E
    add r0, #4
    add r1, #1
    cmp r1, #6
    blt loc_800F810
loc_800F81E:
    ldr r0, [pc, #0x800f824-0x800f81e-2] // =unk_800F828
    ldrb r0, [r0,r1]
    pop {pc}
off_800F824:    .word unk_800F828
unk_800F828:    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 1
    .byte 0xFF
    .byte 0
    .byte 0x20
    .byte 0xB5
    .byte 0xAA
    .byte 0x7D 
    .byte 0xEB
    .byte 0x6A 
    .byte 5
    .byte 0x1C
    .byte 0x44 
    .byte 0x48 
    .byte 9
    .byte 0x42 
    .byte 2
    .byte 0xD0
    .byte 0x44 
    .byte 0x48 
    .byte 0xAA
    .byte 0x75 
    .byte 0xEB
    .byte 0x62 
    .byte 0xA
    .byte 0xF0
    .byte 0x92
    .byte 0xFC
    .byte 0x20
    .byte 0xBD
    .byte 0x10
    .byte 0xB5
    .byte 0x6C 
    .byte 0x6D 
    .byte 0xA8
    .byte 0x7C 
    .byte 0xE9
    .byte 0x7C 
    .byte 0xFD
    .byte 0xF7
    .byte 0x5A 
    .byte 0xF8
    .byte 0
    .byte 0x24 
    .byte 0x81
    .byte 0x78 
    .byte 5
    .byte 0x29 
    .byte 0
    .byte 0xD1
    .byte 1
    .byte 0x24 
    .byte 0x6B 
    .byte 0x6D 
    .byte 0x82
    .byte 0x33 
    .byte 5
    .byte 0x21 
    .byte 0
    .byte 0x20
    .byte 0x1A
    .byte 0x88
    .byte 0x12
    .byte 0x19
    .byte 0xE2
    .byte 0x40 
    .byte 0x1A
    .byte 0x80
    .byte 0x80
    .byte 0x18
    .byte 2
    .byte 0x33 
    .byte 1
    .byte 0x39 
    .byte 0xF7
    .byte 0xDC
    .byte 0x1D
    .byte 0xF0
    .byte 0xCA
    .byte 0xFA
    .byte 0x6B 
    .byte 0x6D 
    .byte 0x80
    .byte 0x33 
    .byte 0x18
    .byte 0x80
    .byte 0x10
    .byte 0xBD
// end of function sub_800F806

.thumb
sub_800F884:
    push {r5,lr}
    add r5, r0, #0
    beq locret_800F896
    ldr r0, [r5,#0x54]
    tst r0, r0
    beq locret_800F896
    ldr r0, [pc, #0x800f954-0x800f890-4] // =0x0
    bl sub_801A16C
locret_800F896:
    pop {r5,pc}
// end of function sub_800F884

.thumb
sub_800F898:
    push {r5,lr}
    add r5, r0, #0
    beq locret_800F8AE
    bl sub_800F884
    ldr r0, [r5,#0x54]
    tst r0, r0
    beq locret_800F8AE
    ldr r0, [pc, #0x800f958-0x800f8a8-4] // =0x0
    bl sub_801A16C
locret_800F8AE:
    pop {r5,pc}
// end of function sub_800F898

.thumb
sub_800F8B0:
    push {r4,r5,lr}
    add r4, r5, #0
    add r5, r0, #0
    beq locret_800F8CC
    bl sub_800F884
    ldr r0, [r5,#0x54]
    tst r0, r0
    beq locret_800F8CC
    ldr r0, [pc, #0x800f95c-0x800f8c2-2] // =0x100000
    ldrb r1, [r4,#0x16]
    lsl r0, r1
    bl sub_801A16C
locret_800F8CC:
    pop {r4,r5,pc}
// end of function sub_800F8B0

.thumb
sub_800F8CE:
    push {r4,lr}
    mov r4, #2
    ldr r1, [pc, #0x800f958-0x800f8d2-2] // =0x0
    tst r0, r1
    beq loc_800F90A
    mov r4, #0
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_800F8E8
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x14
    strh r0, [r5,#0x20]
loc_800F8E8:
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    ldrh r0, [r5,#0x20]
    mov r1, #2
    tst r0, r1
    bne loc_800F900
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
loc_800F900:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bgt loc_800F90A
    mov r4, #1
loc_800F90A:
    add r0, r4, #0
    pop {r4,pc}
// end of function sub_800F8CE

.thumb
sub_800F90E:
    push {r4,r6,lr}
    add r4, r0, #0
    bl sub_801A180
    ldr r1, [pc, #0x800f960-0x800f916-2] // =0x0
    tst r0, r1
    beq loc_800F922
    mov r0, #1
    lsl r0, r0, #8
    orr r4, r0
loc_800F922:
    ldrb r0, [r5,#0x10]
    lsl r0, r0, #0x10
    orr r4, r0
    add r0, r5, #0
    bl sub_8002D8C
    lsl r0, r0, #0x18
    orr r4, r0
    bl sub_8002FB2
    mov r6, #0x34 
    add r6, r6, r5
    ldmia r6!, {r1-r3}
    bl sub_80E996E
    pop {r4,r6,pc}
    .byte 0
    .byte 0
off_800F944:    .word 0x400
off_800F948:    .word 0x800
    .word 0x1000
    .word 0x2000
unk_800F954:    .byte 0
    .byte 0x80
    .byte 0
    .byte 0
unk_800F958:    .byte 0
    .byte 0
    .byte 4
    .byte 0
dword_800F95C:    .word 0x100000
unk_800F960:    .byte 0
    .byte 0
    .byte 0x20
    .byte 0
// end of function sub_800F90E

.thumb
sub_800F964:
    push {r6,r7,lr}
    add r6, r0, #0
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0xc
    tst r0, r1
    bne loc_800F994
    add r0, r6, #0
    ldrb r1, [r5,#0x16]
    bl sub_800F9DE
    ldrb r6, [r5,#0x12]
    add r6, r6, r0
    ldrb r7, [r5,#0x13]
    add r7, r7, r1
    add r0, r6, #0
    add r1, r7, #0
    bl sub_800E618
    beq loc_800F994
    add r0, r6, #0
    add r1, r7, #0
    pop {r6,r7,pc}
loc_800F994:
    mov r0, #0
    pop {r6,r7,pc}
// end of function sub_800F964

.thumb
sub_800F998:
    push {r4,r6,r7,lr}
    sub sp, sp, #0xc
    add r6, r0, #0
    add r7, r1, #0
    lsl r2, r2, #2
    ldr r3, [pc, #0x800f9fc-0x800f9a2-2] // =unk_800FA00
    ldr r2, [r3,r2]
    str r2, [sp]
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0xc
    tst r0, r1
    bne loc_800F9D8
    mov r4, #0
loc_800F9B6:
    add r0, sp, #0
    ldrb r0, [r0,r4]
    ldrb r1, [r5,#0x16]
    bl sub_800F9DE
    add r0, r0, r6
    add r1, r1, r7
    str r0, [sp,#4]
    str r1, [sp,#8]
    bl sub_800E618
    ldr r0, [sp,#4]
    ldr r1, [sp,#8]
    bne loc_800F9DA
    add r4, #1
    cmp r4, #4
    blt loc_800F9B6
loc_800F9D8:
    mov r0, #0
loc_800F9DA:
    add sp, sp, #0xc
    pop {r4,r6,r7,pc}
// end of function sub_800F998

.thumb
sub_800F9DE:
    push {r4,lr}
    add r0, r0, r0
    ldr r4, [pc, #0x800f9f8-0x800f9e2-2] // =unk_800FA14
    add r4, r4, r0
    add r0, r1, #0
    bl sub_800E2C2
    mov r1, #0
    ldrsb r1, [r4,r1]
    mul r0, r1
    mov r1, #1
    ldrsb r1, [r4,r1]
    pop {r4,pc}
off_800F9F8:    .word unk_800FA14
off_800F9FC:    .word unk_800FA00
unk_800FA00:    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 3
    .byte 2
    .byte 4
    .byte 2
    .byte 4
    .byte 1
    .byte 3
    .byte 3
    .byte 2
    .byte 4
    .byte 1
    .byte 4
    .byte 1
    .byte 3
    .byte 2
unk_800FA14:    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 1
    .byte 0xFF
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
// end of function sub_800F9DE

.thumb
sub_800FA20:
    push {lr}
    sub sp, sp, #0x18
    ldrb r1, [r5,#0x16]
    bl sub_800F9DE
    str r0, [sp]
    str r1, [sp,#4]
    tst r1, r1
    bne loc_800FA42
    bl sub_8010368
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r4, [sp]
    bl sub_800D120
    .byte 6
    .byte 0xE0
loc_800FA42:
    bl sub_8010368
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r4, [sp,#4]
    bl sub_800D15A
    .byte 6
    .byte 0xB0
    .byte 0
    .byte 0xBD
// end of function sub_800FA20

.thumb
sub_800FA54:
    push {r6,r7,lr}
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0xc
    tst r0, r1
    bne loc_800FA9C
    ldr r0, [r5,#0x58]
    ldrh r1, [r0,#0x22]
    mov r6, #1
    mov r2, #0x40 
    tst r1, r2
    bne loc_800FA88
    mov r6, #2
    mov r2, #0x80
    tst r1, r2
    bne loc_800FA88
    mov r6, #4
    mov r2, #0x10
    tst r1, r2
    bne loc_800FA88
    mov r6, #3
    mov r2, #0x20 
    tst r1, r2
    bne loc_800FA88
    b loc_800FA9C
loc_800FA88:
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0xf
    tst r0, r1
    beq loc_800FA98
    ldr r2, [pc, #0x800faa0-0x800fa94-4] // =unk_800FAA4
    ldrb r6, [r2,r6]
loc_800FA98:
    add r0, r6, #0
    pop {r6,r7,pc}
loc_800FA9C:
    mov r0, #0
    pop {r6,r7,pc}
off_800FAA0:    .word unk_800FAA4
unk_800FAA4:    .byte 0
    .byte 2
    .byte 1
    .byte 4
    .byte 3
    .byte 0
    .byte 0
    .byte 0
// end of function sub_800FA54

.thumb
sub_800FAAC:
    push {r4,r6,r7,lr}
    sub sp, sp, #8
    add r4, r0, #0
    add r6, r1, #0
    add r7, r3, #0
    bl sub_800E2CA
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    str r0, [sp]
    str r1, [sp,#4]
    add r3, r7, #0
    bl sub_80C4FFE
    ldrb r0, [r5,#0x16]
    mov r1, #2
    bl sub_80136CC
    add r2, r0, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800FAF6
    .byte 2
    .byte 0xB0
    .byte 0xD0
    .byte 0xBD
// end of function sub_800FAAC

.thumb
sub_800FAE0:
    push {r4,lr}
    mov r4, r10
    ldr r4, [r4,#0x18]
    ldrb r0, [r4,#0xd]
    bl sub_80103BC
    tst r0, r0
    beq locret_800FAF4
    ldrh r1, [r0,#0x24]
    strh r1, [r4,#0x34]
locret_800FAF4:
    pop {r4,pc}
// end of function sub_800FAE0

.thumb
sub_800FAF6:
    push {r4,r6,r7,lr}
    sub sp, sp, #8
    str r2, [sp,#4]
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800E2CA
    add r4, r0, #0
    mov r0, #0
    str r0, [sp]
loc_800FB0A:
    add r0, r6, #0
    add r1, r7, #0
    bl object_getPanelParameters
// end of function sub_800FAF6

    tst r0, r0
    beq loc_800FB2C
    ldr r1, [pc, #0x800fb48-0x800fb16-2] // =unk_800FB4C
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    tst r0, r1
    bne loc_800FB2C
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    add r6, r6, r4
    b loc_800FB0A
loc_800FB2C:
    ldr r0, [sp]
    cmp r0, #5
    ble loc_800FB34
    mov r0, #5
loc_800FB34:
    ldr r1, [sp,#4]
    mov r2, #6
    mul r1, r2
    add r1, r1, r0
    ldr r0, [pc, #0x800fb44-0x800fb3c-4] // =dword_80209CC
    ldrb r0, [r0,r1]
    add sp, sp, #8
    pop {r4,r6,r7,pc}
off_800FB44:    .word dword_80209CC
off_800FB48:    .word unk_800FB4C
unk_800FB4C:    .byte 0x80
    .byte 0
    .byte 0x88
    .byte 0xD
    .byte 0x80
    .byte 0
    .byte 0x88
    .byte 0xE
.thumb
sub_800FB54:
    push {r4,r7,lr}
    ldr r7, [r5,#0x58]
    add r7, #0xa0
    bl object_getFlag
    ldr r1, [pc, #0x800fc28-0x800fb5e-2] // =0x1000
    tst r0, r1
    bne loc_800FB70
    bl sub_800FFFE
    add r4, r0, #0
    ldr r1, [pc, #0x800fed4-0x800fb6a-2] // =0x1000C
    and r4, r1
    bne loc_800FB74
loc_800FB70:
    ldr r0, [pc, #0x800fc2c-0x800fb70-4] // =0xFFFF
    pop {r4,r7,pc}
loc_800FB74:
    mov r0, #0
    mov r1, #8
    tst r4, r1
    beq loc_800FBEE
    add r0, r5, #0
    bl sub_800EDD0
    bl sub_8021AA4
    ldrb r0, [r0,#6]
    ldr r1, [r5,#0x58]
    cmp r0, #0xa
    bne loc_800FB9A
    mov r2, #0xa0
    add r2, r2, r1
    mov r0, #0
    strh r0, [r2,#0x14]
    ldrb r1, [r1,#0x11]
    b loc_800FB9C
loc_800FB9A:
    ldrb r1, [r1,#5]
loc_800FB9C:
    cmp r1, #0x18
    beq loc_800FBE6
    cmp r1, #0xff
    beq loc_800FBEE
    cmp r1, #0xd
    beq loc_800FBEC
    cmp r1, #0x1f
    beq loc_800FBEC
    cmp r1, #0x20 
    beq loc_800FBEC
    cmp r1, #0x29 
    beq loc_800FBEC
    cmp r1, #0x2d 
    beq loc_800FBEC
    cmp r1, #5
    beq loc_800FBEC
    mov r0, #0
    strb r0, [r7,#4]
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
    cmp r0, #0xf
    bne loc_800FC18
loc_800FBE0:
    mov r0, #1
    strb r0, [r7,#0x1d]
    b loc_800FC18
loc_800FBE6:
    bl sub_8012CB2
    b loc_800FBEE
loc_800FBEC:
    mov r0, #1
loc_800FBEE:
    bl sub_80127C0
    bl sub_8011688
    ldrb r0, [r7,#0x1b]
    cmp r0, #0
    bne loc_800FC0C
    mov r1, #0x2c 
    bl sub_8013774
    mov r1, #0
    cmp r0, #0xb
    blt loc_800FC18
    cmp r0, #0x18
    bgt loc_800FC18
loc_800FC0C:
    ldrh r0, [r7,#0x14]
    bl sub_8021AA4
    ldrb r0, [r0,#0xf]
    strb r0, [r7,#0x1d]
    b loc_800FC18
loc_800FC18:
    ldr r0, [pc, #0x800fed4-0x800fc18-4] // =0x1000C
    bl sub_800FFEE
    ldrh r0, [r7,#0x14]
    ldrh r1, [r7,#8]
    ldrh r2, [r7,#6]
    pop {r4,r7,pc}
    .balign 4, 0x00
off_800FC28:    .word 0x1000
dword_800FC2C:    .word 0xFFFF
// end of function sub_800FB54

.thumb
sub_800FC30:
    push {r4,r7,lr}
    add r0, r5, #0
    mov r1, #0
    bl sub_800EDD0
    ldr r1, [pc, #0x800fed8-0x800fc3a-2] // =0xFFFF
    cmp r0, r1
    beq locret_800FC7A
    mov r1, #0x52 
    cmp r0, r1
    beq loc_800FC58
    mov r1, #0x53 
    cmp r0, r1
    beq loc_800FC58
    bl sub_8021AA4
    ldrb r0, [r0,#9]
    mov r1, #1
    tst r0, r1
    beq loc_800FC5C
loc_800FC58:
    ldr r0, [pc, #0x800fed8-0x800fc58-4] // =0xFFFF
    b locret_800FC7A
loc_800FC5C:
    ldr r7, [r5,#0x58]
    add r7, #0xa0
    mov r0, #0
    bl sub_80127C0
    ldr r1, [pc, #0x800fcb8-0x800fc66-2] // =0x800FCD5
    cmp r0, r1
    beq locret_800FC7A
    bl sub_8011688
    mov r0, #1
    strb r0, [r7,#0x1d]
    ldrh r0, [r7,#0x14]
    ldrh r1, [r7,#8]
    ldrh r2, [r7,#6]
locret_800FC7A:
    pop {r4,r7,pc}
// end of function sub_800FC30

.thumb
sub_800FC7C:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_8010018
    add r3, r0, #0
    ldrb r0, [r3]
    cmp r0, #5
    bge locret_800FC9C
    lsl r1, r0, #1
    add r1, #2
    ldrh r1, [r3,r1]
    ldr r2, [pc, #0x800fed8-0x800fc92-2] // =0xFFFF
    cmp r1, r2
    beq locret_800FC9C
    add r0, #1
    strb r0, [r3]
locret_800FC9C:
    pop {pc}
// end of function sub_800FC7C

.thumb
sub_800FC9E:
    cmp r0, #0
    bne loc_800FCAA
    ldr r0, [pc, #0x800fcb4-0x800fca2-2] // =dword_800FCBC
    ldrb r2, [r0,r1]
    mov r1, #0
    mov pc, lr
loc_800FCAA:
    ldr r1, [pc, #0x800fcb8-0x800fcaa-2] // =0x800FCD5
    ldrb r2, [r0,r1]
    mov r1, #8
    mov pc, lr
    .balign 4, 0x00
off_800FCB4:    .word dword_800FCBC
dword_800FCB8:    .word 0x800FCD5
dword_800FCBC:    .word 0x0, 0x0
    .byte 0
    .byte 0
    .byte 0
    .byte 0xB
    .byte 0xC
    .byte 1
    .byte 2
    .byte 3
    .byte 4
    .byte 5
    .byte 6
    .byte 7
    .byte 8
    .byte 9
    .byte 0xA
    .byte 0xB
    .byte 0xC
    .byte 0
    .byte 1
    .byte 2
    .byte 3
    .byte 4
    .byte 5
    .byte 6
    .byte 7
    .byte 8
    .byte 9
    .byte 0xA
    .byte 0xB
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0xB5
    .byte 0x2C 
    .byte 0x21 
    .byte 3
    .byte 0xF0
    .byte 0x44 
    .byte 0xFD
    .byte 1
    .byte 0xB4
    .byte 0x29 
    .byte 0x21 
    .byte 3
    .byte 0xF0
    .byte 0x40 
    .byte 0xFD
    .byte 2
    .byte 0xBC
    .byte 0xFF
    .byte 0xF7
    .byte 0xD2
    .byte 0xFF
    .byte 0
    .byte 0xBD
// end of function sub_800FC9E

.thumb
sub_800FCFC:
    ldr r1, [pc, #0x800fedc-0x800fcfc-4] // =dword_8021220
    ldrb r0, [r1,r0]
    ldrb r2, [r5,#4]
    ldr r1, [pc, #0x800fd58-0x800fd02-2] // =unk_800FD5C
    ldrb r1, [r1,r2]
    mul r0, r1
    mov pc, lr
// end of function sub_800FCFC

.thumb
sub_800FD0A:
    push {r4,r7,lr}
    ldr r4, [r5,#0x58]
    mov r1, #0x29 
    bl sub_8013774
    ldr r1, [pc, #0x800fee0-0x800fd14-4] // =0xB8
    ldrb r7, [r1,r0]
    ldrb r0, [r5,#0x16]
    bl sub_8015B54
    cmp r0, #2
    bne loc_800FD26
    mov r0, #4
    b loc_800FD40
loc_800FD26:
    ldrb r0, [r4]
    cmp r0, #2
    bne loc_800FD3A
    bl sub_801032C
    ldr r1, [pc, #0x800fee4-0x800fd30-4] // =0x0
    tst r0, r1
    beq loc_800FD3A
    mov r0, #1
    b loc_800FD40
loc_800FD3A:
    ldrb r2, [r4,#0x16]
    ldr r1, [pc, #0x800fd58-0x800fd3c-4] // =unk_800FD5C
    ldrb r0, [r1,r2]
loc_800FD40:
    mul r0, r7
    pop {r4,r7,pc}
    .byte 0
    .byte 0xB5
    .byte 0x29 
    .byte 0x21 
    .byte 3
    .byte 0xF0
    .byte 0x14
    .byte 0xFD
    .byte 0x66 
    .byte 0x49 
    .byte 8
    .byte 0x5C 
    .byte 1
    .byte 0x21 
    .byte 0x48 
    .byte 0x43 
    .byte 0
    .byte 0xBD
    .byte 0
    .byte 0
off_800FD58:    .word unk_800FD5C
unk_800FD5C:    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 3
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0xB5
    .byte 0x50 
    .byte 0x46 
    .byte 0x80
    .byte 0x69 
    .byte 0x40 
    .byte 0x7B 
    .byte 0x29 
    .byte 0x21 
    .byte 3
    .byte 0xF0
    .byte 0xAD
    .byte 0xFC
    .byte 0
    .byte 0x18
    .byte 3
    .byte 0x4A 
    .byte 0x12
    .byte 0x18
    .byte 0
    .byte 0x20
    .byte 0x10
    .byte 0x56 
    .byte 1
    .byte 0x21 
    .byte 0x51 
    .byte 0x56 
    .byte 0
    .byte 0xBD
    .byte 0
    .byte 0
    .byte 0x88
    .byte 0xFD
    .byte 0
    .byte 8
    .byte 0
    .byte 0xC9
    .byte 0
    .byte 0xBD
    .byte 0xF8
    .byte 0xC5
    .byte 0xF4
    .byte 0xAC
    .byte 0
    .byte 0xC0
    .byte 3
    .byte 0xB8
    .byte 0xFC
    .byte 0xB8
    .byte 0xFF
    .byte 0xC2
    .byte 0xFB
    .byte 0xBA
    .byte 0xFB
    .byte 0xB1
    .byte 4
    .byte 0xC4
    .byte 0
    .byte 0xC9
    .byte 0x20
    .byte 0xB5
    .byte 2
    .byte 0xB4
    .byte 0
    .byte 0xF0
    .byte 0xA
    .byte 0xFB
    .byte 5
    .byte 0x1C
    .byte 2
    .byte 0xBC
    .byte 2
    .byte 0xD0
    .byte 4
    .byte 0x20
    .byte 0
    .byte 0xF0
    .byte 0x18
    .byte 0xF9
    .byte 0x20
    .byte 0xBD
// end of function sub_800FD0A

.thumb
sub_800FDB6:
    push {lr}
    mov r0, #0x10
    bl object_setCounterTime
    pop {pc}
// end of function sub_800FDB6

.thumb
sub_800FDC0:
    push {r4-r6,lr}
    mov r4, r10
    ldr r4, [r4,#0x18]
    add r4, #0x80
    mov r6, #0
loc_800FDCA:
    ldr r5, [r4]
    tst r5, r5
    beq loc_800FDE0
    ldr r0, [r5,#0x58]
    tst r0, r0
    beq loc_800FDE0
    ldrb r1, [r0]
    cmp r1, #2
    bne loc_800FDE0
    bl sub_800FDEA
loc_800FDE0:
    add r4, #4
    add r6, #1
    cmp r6, #8
    blt loc_800FDCA
    pop {r4-r6,pc}
// end of function sub_800FDC0

.thumb
sub_800FDEA:
    push {r4,lr}
    ldrb r0, [r5,#0x16]
    bl sub_8010018
    ldrb r1, [r0]
    add r1, r1, r1
    add r1, #2
    add r1, r1, r0
    mov r0, #0
    ldr r3, [pc, #0x800fed8-0x800fdfc-4] // =0xFFFF
    ldrh r4, [r1]
loc_800FE00:
    ldrh r2, [r1]
    cmp r2, r3
    beq loc_800FE0C
    add r0, #1
    add r1, #2
    b loc_800FE00
loc_800FE0C:
    strb r0, [r5,#0x1a]
    strh r4, [r5,#0x2a]
    pop {r4,pc}
// end of function sub_800FDEA

.thumb
sub_800FE12:
    ldr r1, [r5,#0x58]
    ldrb r2, [r1,#0x16]
    cmp r2, #4
    beq loc_800FE20
    add r2, r2, r2
    ldrh r0, [r0,r2]
    mov pc, lr
loc_800FE20:
    ldrb r2, [r1,#0xc]
    ldrh r0, [r0,#8]
    mul r0, r2
    mov pc, lr
// end of function sub_800FE12

.thumb
sub_800FE28:
    push {lr}
    push {r0}
    bl sub_800FE36
    pop {r1}
    ldrb r0, [r0,r1]
    pop {pc}
// end of function sub_800FE28

.thumb
sub_800FE36:
    ldr r1, [r5,#0x58]
    ldrb r0, [r1,#0x16]
    cmp r0, #4
    beq loc_800FE40
    mov pc, lr
loc_800FE40:
    mov r0, #0
    ldrb r2, [r1,#0xc]
    cmp r2, #3
    ble locret_800FE50
    mov r0, #1
    cmp r2, #6
    ble locret_800FE50
    mov r0, #2
locret_800FE50:
    mov pc, lr
// end of function sub_800FE36

.thumb
sub_800FE52:
    push {r4,lr}
    mov r4, #0
    mov r1, #0x31 
    bl sub_8013774
    cmp r0, #1
    bne loc_800FE62
    add r4, #1
loc_800FE62:
    mov r1, #0x13
    bl sub_8013774
    cmp r0, #0
    beq loc_800FE6E
    add r4, #1
loc_800FE6E:
    mov r1, #0x14
    bl sub_8013774
    cmp r0, #0
    beq loc_800FE7A
    add r4, #1
loc_800FE7A:
    mov r1, #0x16
    bl sub_8013774
    cmp r0, #0
    beq loc_800FE86
    add r4, #1
loc_800FE86:
    mov r1, #0x54 
    bl sub_8013790
    cmp r0, #0
    beq loc_800FE92
    add r4, #1
loc_800FE92:
    mov r1, #0x24 
    bl sub_8013774
    cmp r0, #0
    beq loc_800FE9E
    add r4, #1
loc_800FE9E:
    mov r1, #0x18
    bl sub_8013774
    cmp r0, #0
    beq loc_800FEAA
    add r4, #1
loc_800FEAA:
    mov r1, #0x19
    bl sub_8013774
    cmp r0, #0
    beq loc_800FEB6
    add r4, #1
loc_800FEB6:
    mov r1, #0x1a
    bl sub_8013774
    cmp r0, #0
    beq loc_800FEC2
    add r4, #1
loc_800FEC2:
    mov r1, #0x63 
    bl sub_8013774
    cmp r0, #0
    beq loc_800FECE
    add r4, #1
loc_800FECE:
    add r0, r4, #0
    pop {r4,pc}
    .byte 0
    .byte 0
dword_800FED4:    .word 0x1000C
dword_800FED8:    .word 0xFFFF
dword_800FEDC:    .word 0x80212BB
unk_800FEE0:    .byte 0xBB
    .byte 0x12
    .byte 2
    .byte 8
unk_800FEE4:    .byte 0
    .byte 2
    .byte 0
    .byte 0
    .byte 0xBB
    .byte 0x12
    .byte 2
    .byte 8
// end of function sub_800FE52

.thumb
sub_800FEEC:
    push {r4,lr}
    ldr r4, [r5,#0x58]
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0
    bne loc_800FF36
    bl sub_802D234
    cmp r0, #9
    bne loc_800FF0A
    mov r1, #0x44 
    bl sub_8013774
    b loc_800FF0C
loc_800FF0A:
    mov r0, #0xff
loc_800FF0C:
    strb r0, [r4,#4]
    mov r1, #4
    bl sub_8013774
    strb r0, [r4,#6]
    mov r1, #5
    bl sub_8013774
    bl sub_800FFAA
    mov r1, #0x39 
    bl sub_8013774
    strb r0, [r4,#5]
    mov r1, #7
    bl sub_8013774
    strb r0, [r4,#8]
    mov r0, #0xff
    strb r0, [r4,#0x11]
    pop {r4,pc}
loc_800FF36:
    mov r2, #6
    mul r0, r2
    ldr r1, [pc, #0x800ffe0-0x800ff3a-2] // =dword_8020354
    add r0, r0, r1
    ldrb r1, [r0]
    strb r1, [r4,#4]
    ldrb r1, [r0,#1]
    strb r1, [r4,#5]
    ldrb r1, [r0,#2]
    strb r1, [r4,#6]
    push {r0}
    ldrb r0, [r0,#3]
    bl sub_800FFAA
    pop {r0}
    ldrb r1, [r0,#4]
    strb r1, [r4,#8]
    ldrb r1, [r0,#5]
    strb r1, [r4,#0x11]
    pop {r4,pc}
// end of function sub_800FEEC

.thumb
sub_800FF5E:
    push {r4,lr}
    ldr r4, [r5,#0x58]
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0
    bne locret_800FFA8
    bl sub_802D234
    cmp r0, #9
    bne loc_800FF7C
    mov r1, #0x44 
    bl sub_8013774
    b loc_800FF7E
loc_800FF7C:
    mov r0, #0xff
loc_800FF7E:
    strb r0, [r4,#4]
    mov r1, #4
    bl sub_8013774
    strb r0, [r4,#6]
    mov r1, #5
    bl sub_8013774
    bl sub_800FFAA
    mov r1, #0x39 
    bl sub_8013774
    strb r0, [r4,#5]
    mov r1, #7
    bl sub_8013774
    strb r0, [r4,#8]
    mov r0, #0xff
    strb r0, [r4,#0x11]
    pop {r4,pc}
locret_800FFA8:
    pop {r4,pc}
// end of function sub_800FF5E

.thumb
sub_800FFAA:
    push {lr}
    cmp r0, #0x21 
    blt loc_800FFB4
    cmp r0, #0x26 
    ble loc_800FFBE
loc_800FFB4:
    ldrb r1, [r4,#7]
    cmp r1, #0x21 
    blt loc_800FFBE
loc_800FFBA:
    cmp r1, #0x26 
    ble loc_800FFC0
loc_800FFBE:
    strb r0, [r4,#7]
loc_800FFC0:
    ldrb r0, [r4,#7]
    cmp r0, #0x21 
    blt locret_800FFDE
    cmp r0, #0x26 
    bgt locret_800FFDE
    ldrb r0, [r4,#6]
    mov r2, #0
    cmp r0, #4
    beq loc_800FFDC
    cmp r0, #3
    beq loc_800FFDC
    mov r2, #0x2b 
    cmp r0, #0x2c 
    bne locret_800FFDE
loc_800FFDC:
    strb r2, [r4,#6]
locret_800FFDE:
    pop {pc}
off_800FFE0:    .word dword_8020354
// end of function sub_800FFAA

.thumb
sub_800FFE4:
    ldr r3, [r5,#0x58]
    ldr r1, [r3,#0x44]
    orr r1, r0
    str r1, [r3,#0x44]
    mov pc, lr
// end of function sub_800FFE4

.thumb
sub_800FFEE:
    ldr r3, [r5,#0x58]
    ldr r1, [r3,#0x44]
    bic r1, r0
    str r1, [r3,#0x44]
    mov pc, lr
// end of function sub_800FFEE

    ldr r3, [r5,#0x58]
    ldr r0, [r3,#0x44]
    mov pc, lr
.thumb
sub_800FFFE:
    ldr r3, [r5,#0x58]
    ldr r0, [r3,#0x44]
    mov pc, lr
// end of function sub_800FFFE

.thumb
sub_8010004:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_8010018
    add r2, r0, #0
    ldrb r1, [r2]
    add r1, r1, r1
    add r1, #2
    ldrh r0, [r2,r1]
    pop {pc}
// end of function sub_8010004

.thumb
sub_8010018:
    mov r1, #0x50 
    mul r0, r1
    ldr r1, [pc, #0x801021c-0x801001c-4] // =byte_20349C0
    add r0, r0, r1
    mov pc, lr
// end of function sub_8010018

.thumb
sub_8010022:
    push {lr}
    bl sub_80103BC
    ldr r0, [r0,#0x58]
    pop {pc}
// end of function sub_8010022

.thumb
sub_801002C:
    push {r4,r7,lr}
    ldr r7, [r5,#0x58]
    ldrb r0, [r7]
    cmp r0, #2
    bne loc_801009C
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0
    bne loc_8010096
    mov r4, #2
    bl sub_801032C
    ldr r1, [pc, #0x8010220-0x8010046-2] // =0x200
    tst r0, r1
    beq loc_8010050
    mov r4, #1
    b loc_8010082
loc_8010050:
    mov r1, #0x2c 
    bl sub_8013774
    mov r4, #0
    cmp r0, #0
    beq loc_801006A
    cmp r0, #0xb
    beq loc_801006A
    cmp r0, #0xc
    beq loc_801006A
    ldr r1, [pc, #0x8010224-0x8010064-4] // =dword_8020354
    ldrb r4, [r1,r0]
    b loc_801009E
loc_801006A:
    mov r1, #0xe
    bl sub_8013774
    mov r4, #4
    cmp r0, #0xff
    beq loc_8010078
    mov r4, #0
loc_8010078:
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0
    bne loc_801009E
loc_8010082:
    mov r1, #0x10
    bl sub_8013774
    cmp r0, #0
    beq loc_8010092
    mov r1, #5
    mul r0, r1
    add r0, #0x12
loc_8010092:
    add r4, r4, r0
    b loc_801009E
loc_8010096:
    bl sub_800FD0A
    pop {r4,r7,pc}
loc_801009C:
    mov r4, #0
loc_801009E:
    add r0, r4, #0
    pop {r4,r7,pc}
    .balign 4, 0x00
    .word unk_80100A8
unk_80100A8:    .byte 0
    .byte 5
    .byte 0x14
    .byte 0xA
    .byte 0xF
    .byte 0
    .byte 0
    .byte 0
    .byte 0x10
    .byte 0xB5
    .byte 4
    .byte 0x24 
    .byte 0xFA
    .byte 0x21 
    .byte 0x89
    .byte 0
    .byte 0x88
    .byte 0x42 
    .byte 0xA
    .byte 0xDA
    .byte 0
    .byte 0x24 
    .byte 0xFA
    .byte 0x21 
    .byte 0x49 
    .byte 0x18
    .byte 0x88
    .byte 0x42 
    .byte 5
    .byte 0xDA
    .byte 3
    .byte 0x24 
    .byte 0xEB
    .byte 0x21 
    .byte 0x49 
    .byte 0x18
    .byte 0x88
    .byte 0x42 
    .byte 0
    .byte 0xDA
    .byte 2
    .byte 0x24 
    .byte 0x20
    .byte 0x1C
    .byte 0x10
    .byte 0xBD
    .byte 0x10
    .byte 0xB5
    .byte 0x29 
    .byte 0x21 
    .byte 3
    .byte 0xF0
    .byte 0x4B 
    .byte 0xFB
    .byte 0
    .byte 0x28 
    .byte 1
    .byte 0xD1
    .byte 1
    .byte 0x20
    .byte 0x10
    .byte 0xBD
    .byte 0xFF
    .byte 0xF7
    .byte 0x2D 
    .byte 0xFE
    .byte 0x10
    .byte 0xBD
// end of function sub_801002C

.thumb
sub_80100EC:
    push {lr}
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0x17
    blt loc_8010102
    cmp r0, #0x18
    bgt loc_8010102
    bl sub_8016A38
    b locret_801010A
loc_8010102:
    bl sub_801002C
    bl sprite_setPallete
locret_801010A:
    pop {pc}
    .byte 0
    .byte 0xB5
    .byte 0xA8
    .byte 0x7D 
    .byte 0
    .byte 0xF0
    .byte 0x54 
    .byte 0xF9
    .byte 0x80
    .byte 0x6D 
    .byte 0xA8
    .byte 0x65 
// end of function sub_80100EC

    pop {pc}
.thumb
sub_801011A:
    push {lr}
    ldr r0, [r5,#0x58]
    add r0, #0xa0
    mov r1, #0
    strb r1, [r0,#0x1d]
    strh r1, [r0,#0x1e]
    bl sub_80E1662
    pop {pc}
// end of function sub_801011A

    push {r4,r7,lr}
    mov r7, #0x50 
    ldr r4, [r5,#0x54]
    bl object_getFlag
    mov r1, #4
    tst r0, r1
    beq loc_8010152
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    ldr r0, [r4,r7]
    tst r0, r0
    bne locret_8010160
    bl sub_80E4D8A
    str r0, [r4,r7]
    b locret_8010160
loc_8010152:
    ldr r0, [r4,r7]
    tst r0, r0
    beq locret_8010160
    bl sub_80E4DA2
    mov r0, #0
    str r0, [r4,r7]
locret_8010160:
    pop {r4,r7,pc}
.thumb
sub_8010162:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    ldrh r1, [r4,#0x26]
    ldr r2, [pc, #0x8010228-0x8010168-4] // =0xFFFF
    cmp r1, r2
    beq loc_801017E
    sub r1, #1
    blt loc_8010190
    strh r1, [r4,#0x26]
    tst r1, r1
    bne loc_801017E
    mov r0, #0x94
    bl sound_play
loc_801017E:
    bl object_getFlag
    ldr r1, [pc, #0x801022c-0x8010182-2] // =0x400000
    tst r0, r1
    bne loc_8010190
    mov r0, #4
    bl object_setFlag
    b locret_8010196
loc_8010190:
    mov r0, #4
    bl object_clearFlag
locret_8010196:
    pop {r4,pc}
// end of function sub_8010162

.thumb
sub_8010198:
    push {lr}
    ldr r3, [r5,#0x54]
    ldrh r1, [r3,#0x26]
    tst r1, r1
    beq locret_80101AC
    ldr r0, [r3,#0x70]
    tst r0, r0
    beq locret_80101AC
    mov r0, #0
    strh r0, [r3,#0x26]
locret_80101AC:
    pop {pc}
// end of function sub_8010198

.thumb
sub_80101AE:
    push {lr}
    ldr r1, [r5,#0x54]
    strh r0, [r1,#0x26]
    mov r0, #4
    bl object_setFlag
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    pop {pc}
// end of function sub_80101AE

.thumb
sub_80101C4:
    push {lr}
    ldr r1, [r5,#0x54]
    mov r0, #0
    strh r0, [r1,#0x26]
    mov r0, #4
    bl object_clearFlag
    pop {pc}
// end of function sub_80101C4

.thumb
sub_80101D4:
    push {r4,lr}
    add r4, r0, #0
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0xc
    beq loc_80101EE
    cmp r0, #0x12
    blt locret_80101F6
    cmp r0, #0x16
    ble loc_80101EE
    cmp r0, #0x18
    bne locret_80101F6
loc_80101EE:
    ldr r0, [r5,#0x50]
    strb r4, [r0,#0x10]
    mov r1, #0xff
    strb r1, [r0,#0x11]
locret_80101F6:
    pop {r4,pc}
// end of function sub_80101D4

.thumb
sub_80101F8:
    push {r4,lr}
    bl getPETNaviSelect
    add r4, r0, #0
    cmp r4, #0
    bne loc_8010216
    mov r0, #1
    mov r1, #0x63 
    bl sub_802F164
    bne loc_8010216
    bl sub_803F524
    beq loc_8010216
    mov r4, #0xd
loc_8010216:
    add r0, r4, #0
    pop {r4,pc}
    .balign 4, 0x00
off_801021C:    .word byte_20349C0
off_8010220:    .word 0x200
dword_8010224:    .word 0x80203EA
dword_8010228:    .word 0xFFFF
dword_801022C:    .word 0x400000
// end of function sub_80101F8

.thumb
sub_8010230:
    push {r4,lr}
    bl battle_isTimeStop
    bne locret_8010268
    bl battle_isPaused
    bne locret_8010268
    ldr r4, [r5,#0x58]
    ldrh r0, [r5,#0x24]
    cmp r0, #1
    ble locret_8010268
    mov r1, #0x18
    bl sub_8013774
    ldr r1, [pc, #0x80102a0-0x801024c-4] // =unk_80102A4
    ldrb r0, [r1,r0]
    tst r0, r0
    beq loc_8010264
    ldrb r3, [r4,#9]
    add r3, #1
    strb r3, [r4,#9]
    cmp r3, r0
    blt locret_8010268
    mov r0, #1
    bl object_subtractHP
loc_8010264:
    mov r0, #0
    strb r0, [r4,#9]
locret_8010268:
    pop {r4,pc}
// end of function sub_8010230

.thumb
sub_801026A:
    push {r4,lr}
    bl battle_isTimeStop
    bne locret_801029E
    bl battle_isPaused
    bne locret_801029E
    ldr r4, [r5,#0x58]
    ldrh r0, [r5,#0x24]
    cmp r0, #1
    ble locret_801029E
    ldrb r0, [r4,#0x12]
    ldr r1, [pc, #0x80102a0-0x8010282-2] // =unk_80102A4
    ldrb r0, [r1,r0]
    tst r0, r0
    beq loc_801029A
    ldrb r3, [r4,#9]
    add r3, #1
    strb r3, [r4,#9]
    cmp r3, r0
    blt locret_801029E
    mov r0, #1
    bl object_subtractHP
loc_801029A:
    mov r0, #0
    strb r0, [r4,#9]
locret_801029E:
    pop {r4,pc}
off_80102A0:    .word unk_80102A4
unk_80102A4:    .byte 0
    .byte 0x28 
    .byte 0x23 
    .byte 0x1E
    .byte 0x19
    .byte 0x14
    .byte 0xF
    .byte 0xA
// end of function sub_801026A

.thumb
sub_80102AC:
    push {r4-r6,lr}
    add r4, r0, #0
    bl sub_800A9E2
    mov r1, #5
    tst r0, r1
    beq locret_80102F0
    add r0, r4, #0
    mov r1, #0x19
    bl sub_80136CC
    ldr r1, [pc, #0x80102f4-0x80102c2-2] // =unk_80102F8
    ldrb r6, [r1,r0]
    tst r6, r6
    beq locret_80102F0
    add r0, r4, #0
    bl sub_80103BC
    add r5, r0, #0
    beq locret_80102F0
    ldr r4, [r5,#0x58]
    ldrh r0, [r5,#0x24]
    cmp r0, #1
    ble locret_80102F0
    ldrb r3, [r4,#0xa]
    add r3, #1
    strb r3, [r4,#0xa]
    cmp r3, r6
    blt locret_80102F0
    mov r0, #1
    bl object_subtractHP
    mov r0, #0
    strb r0, [r4,#0xa]
locret_80102F0:
    pop {r4-r6,pc}
    .balign 4, 0x00
off_80102F4:    .word unk_80102F8
unk_80102F8:    .byte 0
    .byte 0x28 
    .byte 0x1E
    .byte 0x14
    .byte 0xA
    .byte 5
    .byte 3
    .byte 2
// end of function sub_80102AC

.thumb
sub_8010300:
    mov r2, r10
    ldr r2, [r2,#0x18]
    lsl r1, r1, #2
    add r1, #0x80
    ldr r1, [r2,r1]
    ldr r1, [r1,#0x58]
    ldr r1, [r1,#0x48]
    and r0, r1
    mov pc, lr
// end of function sub_8010300

.thumb
sub_8010312:
    ldr r3, [r5,#0x58]
    ldr r1, [r3,#0x48]
    orr r1, r0
    str r1, [r3,#0x48]
    mov pc, lr
// end of function sub_8010312

.thumb
sub_801031C:
    ldr r3, [r5,#0x58]
    ldr r1, [r3,#0x48]
    bic r1, r0
    str r1, [r3,#0x48]
    mov pc, lr
// end of function sub_801031C

    ldr r3, [r5,#0x58]
    str r0, [r3,#0x48]
    mov pc, lr
.thumb
sub_801032C:
    ldr r3, [r5,#0x58]
    ldr r0, [r3,#0x48]
    mov pc, lr
// end of function sub_801032C

.thumb
sub_8010332:
    push {r4,lr}
    bl sub_802D234
    cmp r0, #9
    bne loc_8010340
    mov r0, #1
    b locret_8010360
loc_8010340:
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0
    bne loc_8010350
    mov r1, #4
    add r0, r1, #0
    pop {r4,pc}
loc_8010350:
    mov r4, #0xb
    mul r4, r0
    mov r1, #0x2b 
    bl sub_8013774
    ldr r1, [pc, #0x8010364-0x801035a-2] // =dword_8020FE0
    add r1, r1, r4
    ldrb r0, [r1,r0]
locret_8010360:
    pop {r4,pc}
    .balign 4, 0x00
off_8010364:    .word dword_8020FE0
// end of function sub_8010332

.thumb
sub_8010368:
    push {lr}
    bl object_getFlag
    ldr r1, [pc, #0x8010384-0x801036e-2] // =dword_8010388
    mov r2, #0x10
    tst r0, r2
    beq loc_8010378
    add r1, #0x10
loc_8010378:
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    pop {pc}
off_8010384:    .word dword_8010388
dword_8010388:    .word 0x10, 0xF8800A0, 0x30, 0xF880080, 0x0
    .byte 0xA0
    .byte 0
    .byte 0x88
    .byte 0xF
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0x88
    .byte 0xF
// end of function sub_8010368

.thumb
sub_80103A8:
    push {lr}
    mov r1, #0x31 
    bl sub_8013774
    mov r1, #0
    tst r0, r0
    beq loc_80103B8
    mov r1, #3
loc_80103B8:
    add r0, r1, #0
    pop {pc}
// end of function sub_80103A8

.thumb
sub_80103BC:
    push {r4-r6,lr}
    mov r6, r10
    ldr r6, [r6,#0x18]
    mov r1, #0x10
    mul r0, r1
    add r0, #0xd0
    add r6, r6, r0
    mov r4, #0
loc_80103CC:
    ldr r5, [r6]
    tst r5, r5
    beq loc_80103DC
    ldrh r0, [r5,#0x28]
    bl sub_800F29C
    cmp r0, #2
    beq loc_80103E8
loc_80103DC:
    add r5, #3
    add r4, #1
    cmp r4, #4
    blt loc_80103CC
    mov r0, #0
    pop {r4-r6,pc}
loc_80103E8:
    add r0, r5, #0
    pop {r4-r6,pc}
// end of function sub_80103BC

.thumb
sub_80103EC:
    push {lr}
    bl sub_800A7E2
    bl sub_80103BC
    pop {pc}
// end of function sub_80103EC

.thumb
sub_80103F8:
    push {r4-r7,lr}
    sub sp, sp, #8
    ldrb r1, [r5,#0x12]
    str r1, [sp]
    ldrb r1, [r5,#0x13]
    str r1, [sp,#4]
    mov r6, r10
    ldr r6, [r6,#0x18]
    mov r1, #0x10
    mul r0, r1
    add r0, #0xd0
    add r6, r6, r0
    mov r4, #4
    mov r7, #0
loc_8010414:
    ldr r5, [r6]
    tst r5, r5
    beq loc_8010454
    ldrb r0, [r5,#8]
    cmp r0, #8
    beq loc_8010454
    ldrh r0, [r5,#0x28]
    bl sub_800F29C
    cmp r0, #2
    beq loc_8010432
    cmp r0, #0
    beq loc_8010432
    cmp r0, #1
    bne loc_8010454
loc_8010432:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    add r3, sp, #0
    bl sub_8010460
    cmp r7, #0
    beq loc_8010452
    push {r0}
    ldrb r0, [r7,#0x12]
    ldrb r1, [r7,#0x13]
    add r3, sp, #4
    bl sub_8010460
    pop {r1}
    cmp r0, r1
    ble loc_8010454
loc_8010452:
    add r7, r5, #0
loc_8010454:
    add r6, #4
    sub r4, #1
    bne loc_8010414
    add r0, r7, #0
    add sp, sp, #8
    pop {r4-r7,pc}
// end of function sub_80103F8

.thumb
sub_8010460:
    ldr r2, [r3]
    sub r0, r2, r0
    add r2, r0, #0
    mul r0, r2
    ldr r2, [r3,#4]
    sub r1, r2, r1
    add r2, r1, #0
    mul r1, r2
    add r0, r0, r1
    mov pc, lr
// end of function sub_8010460

.thumb
sub_8010474:
    push {lr}
    ldr r2, [r5,#0x54]
    strh r4, [r2,#0x24]
    mov r0, #2
    bl object_setFlag
    mov r0, #0x93
    bl sound_play
    pop {pc}
// end of function sub_8010474

.thumb
sub_8010488:
    push {r4,r7,lr}
    ldr r7, [r5,#0x58]
    add r7, #0xa0
    ldrb r0, [r7,#0x1b]
    cmp r0, #0
    beq loc_80104B6
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    ldrb r1, [r7,#0xc]
    add r1, r1, r1
    add r1, #0x36 
    ldrh r2, [r7,#8]
    ldrh r3, [r7,#0xe]
    add r2, r2, r3
    ldrh r3, [r0,r1]
    add r3, r3, r2
    strh r3, [r0,r1]
    mov r0, #0x58 
    add r0, #0xff
    bl sound_play
    pop {r4,r7,pc}
loc_80104B6:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800E276
    add r2, r1, #0
    add r1, r0, #0
    push {r1,r2}
    bl sub_800E2C0
    pop {r1,r2}
    lsl r0, r0, #0x12
    add r1, r1, r0
    mov r3, #0x30 
    lsl r3, r3, #0x10
    mov r4, #0
    bl sub_80E1D7A
    mov r0, #0x90
    bl sound_play
    pop {r4,r7,pc}
// end of function sub_8010488

.thumb
sub_80104E0:
    push {r4,r7,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_800E276
    add r2, r1, #0
    add r1, r0, #0
    push {r1,r2}
    bl sub_800E2C0
    pop {r1,r2}
    lsl r0, r0, #0x12
    add r1, r1, r0
    mov r3, #0x30 
    lsl r3, r3, #0x10
    mov r4, #0
    bl sub_80E1D7A
    mov r0, #0x90
    bl sound_play
    pop {r4,r7,pc}
// end of function sub_80104E0

.thumb
sub_801050C:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #0xc
    mul r0, r1
    add r0, #0xa0
    mov r7, r10
    ldr r7, [r7,#0x18]
    add r7, r7, r0
    mov r6, #0
loc_801051E:
    ldr r0, [r7]
    tst r0, r0
    beq loc_801053E
    ldrh r1, [r0,#0x24]
    tst r1, r1
    beq loc_801053E
    ldrh r1, [r0,#0x26]
    strh r1, [r0,#0x24]
    add r0, #0x34 
    ldmia r0!, {r1-r3}
    mov r4, #6
    bl sub_80E05F6
    mov r0, #0x8a
    bl sound_play
loc_801053E:
    add r7, #4
    add r6, #1
    cmp r6, #3
    blt loc_801051E
    pop {r4,r6,r7,pc}
// end of function sub_801050C

.thumb
sub_8010548:
    push {r4,lr}
    add r4, r0, #0
    ldr r0, [r5,#0x58]
    ldrh r1, [r0,#0x20]
    add r1, r1, r4
    ldr r2, [pc, #0x80108ec-0x8010552-2] // =0xFFFF
    cmp r1, r2
    ble loc_801055A
    add r1, r2, #0
loc_801055A:
    strh r1, [r0,#0x20]
    pop {r4,pc}
// end of function sub_8010548

.thumb
sub_801055E:
    push {lr}
    bl sub_80103BC
    ldr r0, [r0,#0x58]
    ldrh r0, [r0,#0x20]
    pop {pc}
// end of function sub_801055E

.thumb
sub_801056A:
    push {r7,lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    ldr r7, [r5,#0x58]
    mov r0, #0
    str r0, [r5,#0x4c]
    str r0, [r7,#0x68]
    add r7, #0xa0
    ldr r0, [pc, #0x80108f0-0x801057e-2] // =0x810
    bl sub_801031C
    mov r0, #0x40 
    bl sub_801DACC
    bl sub_800E9FA
    ldrb r0, [r5,#0x16]
    bl sub_802CE78
    str r1, [r7,#8]
    strh r2, [r7,#6]
    strh r0, [r7,#0x14]
    mov r0, #0
    strb r0, [r7,#2]
    ldr r0, [sp,#4]
    strb r0, [r7,#5]
    ldr r0, [sp,#8]
    strb r0, [r7,#3]
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    tst r0, r0
    beq loc_80105BE
    ldrh r0, [r7,#0x14]
    tst r0, r0
    beq loc_80105BE
    ldrh r1, [r7,#8]
    ldrh r2, [r7,#6]
    bl sub_801EB18
loc_80105BE:
    ldr r1, [sp]
    ldr r2, [pc, #0x80108f4-0x80105c0-4] // =0x200
    tst r1, r2
    beq loc_80105D2
    mov r0, #0x47 
    bl sub_8011680
    bl loc_80EE90C
    b loc_80105EE
loc_80105D2:
    ldr r2, [pc, #0x80108f8-0x80105d2-2] // =0x400
    tst r1, r2
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
// end of function sub_801056A

.thumb
sub_80105F2:
    push {r7,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    ldr r7, [r5,#0x58]
    mov r0, #0
    str r0, [r5,#0x4c]
    str r0, [r7,#0x68]
    add r7, #0xa0
    ldr r0, [pc, #0x80108f0-0x8010608-4] // =0x810
    bl sub_801031C
    mov r0, #0x40 
    bl sub_801DACC
    bl sub_800E9FA
    ldr r0, [sp,#0xc]
    str r0, [r7,#8]
    mov r0, #0
    strh r0, [r7,#6]
    strh r0, [r7,#0x14]
    mov r0, #0
    strb r0, [r7,#2]
    ldr r0, [sp,#4]
    strb r0, [r7,#5]
    ldr r0, [sp,#8]
    strb r0, [r7,#3]
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    tst r0, r0
    beq loc_8010646
    ldrh r0, [r7,#0x14]
    tst r0, r0
    beq loc_8010646
    ldrh r1, [r7,#8]
    ldrh r2, [r7,#6]
    bl sub_801EB18
loc_8010646:
    ldr r1, [sp]
    ldr r2, [pc, #0x80108f4-0x8010648-4] // =0x200
    tst r1, r2
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
// end of function sub_80105F2

.thumb
sub_8010660:
    push {r4,r6,r7,lr}
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_80106B8
    mov r1, #0xd
    bl sub_8013774
    cmp r0, #0xff
    beq loc_80106B8
    mov r2, #4
    tst r0, r2
    beq loc_80106B8
    ldrh r0, [r5,#0x26]
    lsr r0, r0, #2
    ldrh r1, [r5,#0x24]
    cmp r0, r1
    bcc loc_80106B8
    mov r1, #0xd
    bl sub_8013774
    mov r2, #4
    bic r0, r2
    add r2, r0, #0
    mov r1, #0xd
    bl sub_8013754
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0
    mov r3, #0
    mov r4, #2
    mov r6, #0
    ldr r7, [pc, #0x80106bc-0x80106a4-4] // =0x179
    bl sub_80E90FE
    add r2, r0, #0
    mov r1, #1
    ldrb r0, [r5,#0x16]
    bl sub_800BF16
    mov r0, #1
    pop {r4,r6,r7,pc}
loc_80106B8:
    mov r0, #0
    pop {r4,r6,r7,pc}
dword_80106BC:    .word 0x17B
// end of function sub_8010660

.thumb
sub_80106C0:
    push {r4,r6,r7,lr}
    add r4, r0, #0
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8010738
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    add r6, r0, #0
    mov r1, #0xd
    bl sub_80136CC
    cmp r0, #0xff
    beq loc_8010738
    mov r2, #2
    tst r0, r2
    beq loc_8010738
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#7]
    cmp r1, #1
    beq loc_80106F6
    cmp r1, #2
    bne loc_8010738
loc_80106F6:
    add r0, r6, #0
    mov r1, #0xd
    bl sub_80136CC
    mov r2, #2
    bic r0, r2
    add r2, r0, #0
    mov r1, #0xd
    add r0, r6, #0
    bl sub_80136B0
    add r0, r6, #0
    bl sub_80103BC
    push {r5}
    add r5, r0, #0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0
    mov r3, #0
    mov r4, #1
    mov r6, #0
    ldr r7, [pc, #0x801073c-0x8010722-2] // =0x179
    bl sub_80E90FE
    add r2, r0, #0
    mov r1, #1
    ldrb r0, [r5,#0x16]
    bl sub_800BF16
    pop {r5}
    mov r0, #1
    pop {r4,r6,r7,pc}
loc_8010738:
    mov r0, #0
    pop {r4,r6,r7,pc}
dword_801073C:    .word 0x17A
// end of function sub_80106C0

.thumb
sub_8010740:
    push {r4,r6,r7,lr}
    add r4, r0, #0
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_80107B6
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    add r6, r0, #0
    mov r1, #0xd
    bl sub_80136CC
    cmp r0, #0xff
    beq loc_80107B6
    mov r2, #1
    tst r0, r2
    beq loc_80107B6
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#0x16]
    mov r2, #2
    tst r1, r2
    beq loc_80107B6
    add r0, r6, #0
    mov r1, #0xd
    bl sub_80136CC
    mov r2, #1
    bic r0, r2
    add r2, r0, #0
    mov r1, #0xd
    add r0, r6, #0
    bl sub_80136B0
    add r0, r6, #0
    bl sub_80103BC
    push {r5}
    add r5, r0, #0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0
    mov r3, #0
    lsl r4, r4, #0x10
    mov r6, #0
    ldr r7, [pc, #0x80107bc-0x80107a0-4] // =0x179
    bl sub_80E90FE
    add r2, r0, #0
    mov r1, #1
    ldrb r0, [r5,#0x16]
    bl sub_800BF16
    pop {r5}
    mov r0, #1
    pop {r4,r6,r7,pc}
loc_80107B6:
    mov r0, #0
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_80107BC:    .word 0x179
// end of function sub_8010740

.thumb
sub_80107C0:
    push {lr}
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    bne loc_80107D0
    mov r3, #0
    pop {pc}
loc_80107D0:
    mov r3, #3
    pop {pc}
// end of function sub_80107C0

.thumb
sub_80107D4:
    push {r4,lr}
    bl battle_isTimeStop
    bne locret_801081E
    ldr r4, [r5,#0x58]
    ldrb r0, [r4,#0x19]
    tst r0, r0
    beq loc_80107E8
    sub r0, #1
    strb r0, [r4,#0x19]
loc_80107E8:
    ldrb r0, [r4,#0x15]
    tst r0, r0
    beq loc_80107F2
    sub r0, #1
    strb r0, [r4,#0x15]
loc_80107F2:
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    add r4, r0, #0
    ldrb r0, [r4]
    tst r0, r0
    beq locret_801081E
    ldrh r1, [r4,#0x2e]
    tst r1, r1
    beq loc_801080A
    sub r1, #1
    strh r1, [r4,#0x2e]
loc_801080A:
    ldrh r1, [r4,#0x3a]
    tst r1, r1
    beq loc_8010814
    sub r1, #1
    strh r1, [r4,#0x3a]
loc_8010814:
    ldrh r1, [r4,#0x3c]
    tst r1, r1
    beq locret_801081E
    sub r1, #1
    strh r1, [r4,#0x3c]
locret_801081E:
    pop {r4,pc}
// end of function sub_80107D4

.thumb
sub_8010820:
    push {r4,lr}
    mov r0, #0xff
    and r4, r0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_80136CC
    add r2, r0, r4
    cmp r2, #0xa
    blt loc_8010836
    mov r2, #9
loc_8010836:
    ldrb r0, [r5,#0x16]
    mov r1, #1
    bl sub_80136B0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    push {r1-r3}
    ldrh r0, [r5,#0x28]
    mov r1, #0x20 
    ldrb r2, [r5,#0x16]
    ldrb r3, [r5,#0x17]
    bl sub_8018810
    lsl r0, r0, #0x10
    lsl r4, r1, #0x10
    pop {r1-r3}
    add r1, r1, r0
    add r3, r3, r4
    mov r4, #0x31 
    bl sub_80E05F6
    mov r0, #0x1a
    add r0, #0xff
    bl sound_play
    pop {r4,pc}
// end of function sub_8010820

.thumb
sub_801086C:
    push {r4,lr}
    ldr r4, [pc, #0x80108b0-0x801086e-2] // =dword_80108B8
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0
    bne loc_8010890
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0
    beq loc_8010888
    ldrb r0, [r4,r0]
    b loc_8010892
loc_8010888:
    mov r1, #0x10
    bl sub_8013774
    b loc_8010892
loc_8010890:
    ldrb r0, [r4,r0]
loc_8010892:
    bl sub_8019F8C
    ldr r4, [pc, #0x80108b4-0x8010896-2] // =0x80108C4
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0
    bne loc_80108A8
    mov r1, #0x29 
    bl sub_8013774
loc_80108A8:
    ldrb r0, [r4,r0]
    bl sub_8019F9E
    pop {r4,pc}
off_80108B0:    .word dword_80108B8
dword_80108B4:    .word 0x80108D1
dword_80108B8:    .word 0x30100, 0x4020100, 0x0
    .word 0x30100, 0x4020100, 0x0, 0x0
    .word 0x2010
    .word 0x40408000, 0x0
    .word 0x2010
    .word 0x40408000, 0x0
dword_80108EC:    .word 0xFFFF
off_80108F0:    .word 0x810
off_80108F4:    .word 0x200
off_80108F8:    .word 0x400
// end of function sub_801086C

.thumb
sub_80108FC:
    push {r4,r6,r7,lr}
    bl sub_8010018
    b loc_8010906
    push {r4,r6,r7,lr}
loc_8010906:
    add r7, r0, #0
    ldrb r4, [r7]
loc_801090A:
    add r0, r4, r4
    add r0, #2
    ldrh r1, [r7,r0]
    ldr r2, [pc, #0x801099c-0x8010910-4] // =0xFFFF
    cmp r1, r2
    beq locret_801092A
    ldr r2, [pc, #0x80109a0-0x8010916-2] // =0x190
    sub r1, r1, r2
    cmp r1, #0xa
    bhi loc_8010926
    add r0, r4, #0
    bl sub_801092C
    b loc_801090A
loc_8010926:
    add r4, #1
    b loc_801090A
locret_801092A:
    pop {r4,r6,r7,pc}
// end of function sub_80108FC

.thumb
sub_801092C:
    push {lr}
loc_801092E:
    add r1, r0, #1
    push {r0,r1}
    bl sub_8010940
    pop {r0,r1}
    add r0, #1
    cmp r0, #5
    blt loc_801092E
    pop {pc}
// end of function sub_801092C

.thumb
sub_8010940:
    push {r4-r6,lr}
    add r4, r0, r0
    add r5, r1, r1
    mov r2, #2
    add r2, r2, r4
    mov r3, #2
    add r3, r3, r5
    ldrh r6, [r7,r3]
    strh r6, [r7,r2]
    mov r2, #0xe
    add r2, r2, r4
    mov r3, #0xe
    add r3, r3, r5
    ldrh r6, [r7,r3]
    strh r6, [r7,r2]
    mov r2, #0x1a
    add r2, r2, r4
    mov r3, #0x1a
    add r3, r3, r5
    ldrh r6, [r7,r3]
    strh r6, [r7,r2]
    mov r2, #0x26 
    add r2, r2, r4
    mov r3, #0x26 
    add r3, r3, r5
    ldrh r6, [r7,r3]
    strh r6, [r7,r2]
    mov r2, #0x32 
    add r2, r2, r4
    mov r3, #0x32 
    add r3, r3, r5
    ldrh r6, [r7,r3]
    strh r6, [r7,r2]
    mov r2, #0x3e 
    add r2, r2, r0
    mov r3, #0x3e 
    add r3, r3, r1
    ldrb r6, [r7,r3]
    strb r6, [r7,r2]
    mov r2, #0x44 
    add r2, r2, r0
    mov r3, #0x44 
    add r3, r3, r1
    ldrb r6, [r7,r3]
    strb r6, [r7,r2]
    pop {r4-r6,pc}
dword_801099C:    .word 0xFFFF
off_80109A0:    .word 0x190
// end of function sub_8010940

loc_80109A4:
    push {r4,r7,lr}
    add r7, r0, #0
    add r4, r1, #0
    ldr r2, [pc, #0x80109d8-0x80109aa-2] // =0xFFFF
    cmp r0, r2
    beq loc_80109D0
    bl sub_8021AA4
    ldrh r0, [r0,#0x1a]
    mov r2, #0xfa
    lsl r2, r2, #2
    cmp r0, r2
    blt locret_80109D2
    sub r0, r0, r2
    lsl r0, r0, #2
    ldr r2, [pc, #0x80109d4-0x80109c2-2] // =off_80109DC
    ldr r2, [r0,r2]
    add r0, r7, #0
    add r1, r4, #0
    mov lr, pc
    bx r2
    pop {r4,r7,pc}
loc_80109D0:
    mov r0, #0
locret_80109D2:
    pop {r4,r7,pc}
off_80109D4:    .word off_80109DC
dword_80109D8:    .word 0xFFFF
off_80109DC:    .word sub_8010A90+1
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
.thumb
sub_8010A90:
    push {r4,lr}
    add r4, r1, #0
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    bne loc_8010ACE
    mov r0, r10
    ldr r0, [r0,#0x18]
    add r0, #0x90
    neg r1, r4
    add r1, r1, r1
    add r1, #3
    mov r3, #0
loc_8010AAC:
    ldr r2, [r0]
    tst r2, r2
    beq loc_8010ABA
    ldrh r2, [r2,#0x24]
    cmp r2, r3
    blt loc_8010ABA
    add r3, r2, #0
loc_8010ABA:
    add r0, #4
    sub r1, #1
    bgt loc_8010AAC
    mov r2, #0xfa
    add r2, r2, r2
    cmp r3, r2
    ble loc_8010ACA
    add r3, r2, #0
loc_8010ACA:
    add r0, r3, #0
    pop {r4,pc}
loc_8010ACE:
    mov r0, #1
    eor r0, r4
    bl sub_80103BC
    ldrh r0, [r0,#0x24]
    mov r1, #0xfa
    add r1, r1, r1
    cmp r0, r1
    ble locret_8010AE2
    add r0, r1, #0
locret_8010AE2:
    pop {r4,pc}
// end of function sub_8010A90

.thumb
sub_8010AE4:
    push {r4,lr}
    add r4, r1, #0
    bl sub_8021AA4
    ldrh r1, [r0,#0x1a]
    ldr r2, [pc, #0x8010d28-0x8010aee-2] // =0x3E9
    sub r1, r1, r2
    mov r2, #0x28 
    mul r2, r4
    ldr r3, [pc, #0x8010d2c-0x8010af6-2] // =unk_203EB00
    add r3, r3, r2
    add r2, r1, r1
    ldrh r0, [r3,r2]
    add r4, r1, #0
    bl sub_8000D84
    mov r1, #0
    ldr r2, [pc, #0x8010b24-0x8010b06-2] // =dword_8010B2C
loc_8010B08:
    ldr r3, [r2]
    cmp r0, r3
    ble loc_8010B16
    add r2, #4
    add r1, #1
    cmp r1, #0xa
    blt loc_8010B08
loc_8010B16:
    mov r0, #0x16
    mul r0, r4
    add r1, r1, r1
    ldr r2, [pc, #0x8010d30-0x8010b1c-4] // =dword_8020E54
    add r2, r2, r1
    ldrh r0, [r2,r0]
    pop {r4,pc}
off_8010B24:    .word dword_8010B2C
    .word unk_8010B54
dword_8010B2C:    .word 0x1000
    .word 0x1200
    .word 0x1400
    .word 0x1600
    .word 0x1800
    .word 0x2000
    .word 0x2200
    .word 0x2400
    .word 0x2600
    .word 0x2800
unk_8010B54:    .byte 0xD2
    .byte 0
    .byte 0xD2
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0xD2
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x5F 
    .byte 0
    .byte 0xE6
    .byte 0
    .byte 0xAF
    .byte 0
    .byte 0x69 
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0xDC
    .byte 0
    .byte 0xB4
    .byte 0
    .byte 0xD2
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0xA5
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x28 
    .byte 0
    .byte 0x64 
    .byte 0
// end of function sub_8010AE4

.thumb
sub_8010B78:
    push {lr}
    push {r0,r1}
    bl sub_800A8F8
    pop {r0,r1}
    beq loc_8010B92
    add r0, r1, #0
    bl sub_802E070
    ldrh r0, [r0,#0x28]
    ldr r1, [pc, #0x8010d34-0x8010b8c-4] // =0x1500
    add r0, r0, r1
    b loc_8010B96
loc_8010B92:
    bl sub_801DFE4
loc_8010B96:
    add r1, r0, #0
    mov r0, #0xa
    lsr r1, r1, #7
    cmp r1, #0x80
    bge locret_8010BCE
    cmp r1, #0x40 
    bgt loc_8010BB0
    mov r0, #0x16
    mul r0, r1
    mov r1, #0x40 
    svc 6
    add r0, #0xa
    b locret_8010BCE
loc_8010BB0:
    cmp r1, #0x70 
    bgt loc_8010BC2
    sub r1, #0x40 
    mov r0, #0x60 
    mul r0, r1
    mov r1, #0x30 
    svc 6
    add r0, #0x20 
    b locret_8010BCE
loc_8010BC2:
    sub r1, #0x70 
    mov r0, #0x80
    mul r0, r1
    mov r1, #0xf
    svc 6
    add r0, #0x80
locret_8010BCE:
    pop {pc}
// end of function sub_8010B78

.thumb
sub_8010BD0:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    add r0, r1, #0
    bl sub_80103BC
    tst r0, r0
    beq locret_8010BEE
    ldrh r1, [r0,#0x24]
    ldrh r0, [r0,#0x26]
    sub r0, r0, r1
    ldr r1, [pc, #0x8010d38-0x8010be6-2] // =0x1F4
    cmp r0, r1
    ble locret_8010BEE
    add r0, r1, #0
locret_8010BEE:
    pop {r6,r7,pc}
// end of function sub_8010BD0

.thumb
sub_8010BF0:
    push {lr}
    add r0, r1, #0
    bl sub_80103BC
    tst r0, r0
    beq locret_8010C04
    ldrh r0, [r0,#0x24]
    mov r1, #0x64 
    svc 6
    add r0, r1, #0
locret_8010C04:
    pop {pc}
// end of function sub_8010BF0

.thumb
sub_8010C06:
    push {r4,lr}
    add r4, r1, #0
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    bne loc_8010C36
    mov r0, #0
    mov r1, #0
    mov r2, r10
    ldr r2, [r2,#0x18]
    add r2, #0x90
loc_8010C1E:
    ldr r3, [r2]
    tst r3, r3
    beq loc_8010C2C
    ldrh r3, [r3,#0x26]
    cmp r3, r0
    blt loc_8010C2C
    add r0, r3, #0
loc_8010C2C:
    add r2, #4
    add r1, #1
    cmp r1, #3
    blt loc_8010C1E
    b loc_8010C44
loc_8010C36:
    mov r0, #1
    eor r0, r4
    bl sub_80103BC
    tst r0, r0
    beq locret_8010C4E
    ldrh r0, [r0,#0x26]
loc_8010C44:
    lsr r0, r0, #1
    ldr r1, [pc, #0x8010d3c-0x8010c46-2] // =0x3E0
    cmp r0, r1
    ble locret_8010C4E
    add r0, r1, #0
locret_8010C4E:
    pop {r4,pc}
// end of function sub_8010C06

.thumb
sub_8010C50:
    push {r4-r6,lr}
    add r4, r0, #0
    add r6, r1, #0
    add r0, r1, #0
    bl sub_80103BC
    add r5, r0, #0
    tst r5, r5
    beq locret_8010C74
    add r0, r4, #0
    bl sub_8021AA4
    ldrh r0, [r0,#0x1a]
    ldr r1, [pc, #0x8010d40-0x8010c6a-2] // =0x3FC
    sub r0, r0, r1
    add r1, r6, #0
    bl sub_8010D04
locret_8010C74:
    pop {r4-r6,pc}
// end of function sub_8010C50

.thumb
sub_8010C76:
    push {r4,lr}
    bl sub_8021AA4
    ldrh r1, [r0,#0x1a]
    ldr r2, [pc, #0x8010d28-0x8010c7e-2] // =0x3E9
    cmp r1, r2
    blt loc_8010CB0
    sub r1, r1, r2
    ldr r3, [pc, #0x8010d44-0x8010c86-2] // =unk_20018C0
    add r4, r1, r1
    ldrh r0, [r3,r4]
    bl sub_8000D84
    mov r1, #0
    ldr r2, [pc, #0x8010cb4-0x8010c92-2] // =dword_8010CB8
loc_8010C94:
    ldr r3, [r2]
    cmp r0, r3
    ble loc_8010CA2
    add r2, #4
    add r1, #1
    cmp r1, #0xa
    blt loc_8010C94
loc_8010CA2:
    mov r0, #0xb
    mul r0, r4
    add r1, r1, r1
    ldr r2, [pc, #0x8010d48-0x8010ca8-4] // =dword_8020E54
    add r2, r2, r1
    ldrh r0, [r2,r0]
    pop {r4,pc}
loc_8010CB0:
    add r0, r1, #0
    pop {r4,pc}
off_8010CB4:    .word dword_8010CB8
dword_8010CB8:    .word 0x1000
    .word 0x1200
    .word 0x1400
    .word 0x1600
    .word 0x1800
    .word 0x2000
    .word 0x2200
    .word 0x2400
    .word 0x2600
    .word 0x2800
// end of function sub_8010C76

.thumb
sub_8010CE0:
    push {r4,lr}
    bl sub_8021AA4
    ldrh r1, [r0,#0x1a]
    ldr r2, [pc, #0x8010d28-0x8010ce8-4] // =0x3E9
    cmp r1, r2
    blt loc_8010D00
    sub r1, r1, r2
    add r4, r1, r1
    mov r0, #0xb
    mul r0, r4
    mov r1, #0xa
    ldr r2, [pc, #0x8010d4c-0x8010cf8-4] // =dword_8020E54
    add r2, r2, r1
    ldrh r0, [r2,r0]
    pop {r4,pc}
loc_8010D00:
    add r0, r1, #0
    pop {r4,pc}
// end of function sub_8010CE0

.thumb
sub_8010D04:
    push {lr}
    mov r2, #2
    mul r0, r2
    ldr r2, [pc, #0x8010d50-0x8010d0a-2] // =dword_80212D4
    add r2, r2, r0
    ldrb r0, [r2]
    ldrb r1, [r2,#1]
    bl sub_8012642
    pop {pc}
// end of function sub_8010D04

    lsl r0, r0, #2
    ldr r1, [pc, #0x8010d54-0x8010d1a-2] // =dword_203CDF0
    ldr r0, [r1,r0]
    mov pc, lr
.thumb
sub_8010D20:
    push {r4,lr}
    mov r4, #0
    add r0, r4, #0
    pop {r4,pc}
off_8010D28:    .word 0x3E9
off_8010D2C:    .word unk_203EB00
off_8010D30:    .word dword_8020E54
off_8010D34:    .word 0x1500
off_8010D38:    .word 0x1F4
dword_8010D3C:    .word 0x3E7
dword_8010D40:    .word 0x3FF
off_8010D44:    .word unk_20018C0
off_8010D48:    .word dword_8020E54
off_8010D4C:    .word dword_8020E54
off_8010D50:    .word dword_80212D4
off_8010D54:    .word dword_203CDF0
// end of function sub_8010D20

.thumb
sub_8010D58:
    push {r6,lr}
    lsl r6, r0, #2
    cmp r0, #0xff
    beq loc_8010D7C
    bl sub_800F4A8
    cmp r0, #1
    blt loc_8010D70
    mov r0, #1
    bl sub_800F4B2
    b loc_8010D7C
loc_8010D70:
    ldr r1, [pc, #0x8010d80-0x8010d70-4] // =off_8010D84
    ldr r0, [r1,r6]
    mov lr, pc
    bx r0
    mov r4, #0
    b locret_8010D7E
loc_8010D7C:
    ldr r0, [pc, #0x8010dcc-0x8010d7c-4] // =0xFFFF
locret_8010D7E:
    pop {r6,pc}
off_8010D80:    .word off_8010D84
off_8010D84:    .word sub_8010D98+1
    .word sub_8010DA2+1
    .word sub_8010DAC+1
    .word sub_8010DB6+1
    .word sub_8010DC0+1
// end of function sub_8010D58

.thumb
sub_8010D98:
    push {lr}
    mov r0, #0x47 
    bl sub_800EF02
    pop {pc}
// end of function sub_8010D98

.thumb
sub_8010DA2:
    push {lr}
    mov r0, #0x1e
    bl sub_800EF02
    pop {pc}
// end of function sub_8010DA2

.thumb
sub_8010DAC:
    push {lr}
    mov r0, #0x9a
    bl sub_800EF02
    pop {pc}
// end of function sub_8010DAC

.thumb
sub_8010DB6:
    push {lr}
    mov r0, #0xb1
    bl sub_800EF02
    pop {pc}
// end of function sub_8010DB6

.thumb
sub_8010DC0:
    push {lr}
    mov r0, #0xc0
    bl sub_800EF02
    pop {pc}
    .balign 4, 0x00
dword_8010DCC:    .word 0xFFFF
// end of function sub_8010DC0

.thumb
sub_8010DD0:
    push {lr}
    ldrh r0, [r5,#0x28]
    bl loc_8010DDA
    pop {pc}
// end of function sub_8010DD0

loc_8010DDA:
    push {lr}
    bl sub_80182B4
    ldrb r1, [r0,#1]
    lsl r1, r1, #2
    ldrb r2, [r0,#2]
    lsl r2, r2, #2
    ldr r0, [pc, #0x8010e08-0x8010de8-4] // =off_8010E0C
    ldr r0, [r0,r1]
    ldr r0, [r0,r2]
    mov r2, #0
    mov lr, pc
    bx r0
    pop {pc}
loc_8010DF6:
    push {lr}
    lsl r0, r0, #2
    lsl r1, r1, #2
    ldr r3, [pc, #0x8010e08-0x8010dfc-4] // =off_8010E0C
    ldr r3, [r3,r0]
    ldr r3, [r3,r1]
    mov lr, pc
    bx r3
    pop {pc}
off_8010E08:    .word off_8010E0C
off_8010E0C:    .word off_8010E18
    .word off_8010EA4
    .word off_8010EA4
off_8010E18:    .word locret_80114D4+1
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
off_8010EA4:    .word locret_8010F68+1
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
    mov pc, lr
.thumb
sub_8010F6A:
    push {r4,lr}
    mov r4, #2
    lsl r2, r2, #0x10
    add r4, r4, r2
    bl sub_80C44A8
    str r0, [r5,#0x50]
    pop {r4,pc}
// end of function sub_8010F6A

.thumb
sub_8010F7A:
    push {r4,lr}
    mov r4, #0
    bl sub_80C41D8
    str r0, [r5,#0x50]
    pop {r4,pc}
// end of function sub_8010F7A

.thumb
sub_8010F86:
    push {r4,lr}
    mov r4, #0xb
    lsl r2, r2, #0x10
    add r4, r4, r2
    bl sub_80C44A8
    str r0, [r5,#0x50]
    pop {r4,pc}
// end of function sub_8010F86

.thumb
sub_8010F96:
    push {r4,lr}
    mov r4, #3
    lsl r2, r2, #0x10
    add r4, r4, r2
    mov r2, #0xa
    lsl r2, r2, #0x18
    add r4, r4, r2
    bl sub_80C44A8
    str r0, [r5,#0x50]
    pop {r4,pc}
// end of function sub_8010F96

.thumb
sub_8010FAC:
    push {r4,lr}
    mov r4, #0
    lsl r2, r2, #0x10
    add r4, r4, r2
    mov r2, #0xd
    lsl r2, r2, #0x18
    add r4, r4, r2
    bl sub_80C44A8
    str r0, [r5,#0x50]
    pop {r4,pc}
// end of function sub_8010FAC

.thumb
sub_8010FC2:
    push {r4,lr}
    mov r4, #0x10
    lsl r2, r2, #0x10
    add r4, r4, r2
    mov r2, #0x14
    lsl r2, r2, #0x18
    add r4, r4, r2
    bl sub_80C44A8
    str r0, [r5,#0x50]
    pop {r4,pc}
// end of function sub_8010FC2

.thumb
sub_8010FD8:
    push {r4,lr}
    push {r2}
    mov r4, #6
    lsl r2, r2, #0x10
    add r4, r4, r2
    mov r2, #0x14
    lsl r2, r2, #0x18
    add r4, r4, r2
    bl sub_80C44A8
    str r0, [r5,#0x50]
    pop {r2}
    mov r4, #7
    lsl r2, r2, #0x10
    add r4, r4, r2
    mov r2, #0x28 
    lsl r2, r2, #0x18
    add r4, r4, r2
    bl sub_80C44A8
    str r0, [r5,#0x60]
    pop {r4,pc}
// end of function sub_8010FD8

.thumb
sub_8011004:
    push {r4,lr}
    mov r4, #0xf
    lsl r2, r2, #0x10
    add r4, r4, r2
    mov r2, #1
    lsl r2, r2, #8
    add r4, r4, r2
    mov r2, #9
    lsl r2, r2, #0x18
    add r4, r4, r2
    bl sub_80C44A8
    str r0, [r5,#0x50]
    pop {r4,pc}
// end of function sub_8011004

.thumb
sub_8011020:
    push {lr}
    ldrh r0, [r5,#0x28]
    bl loc_801102A
    pop {pc}
// end of function sub_8011020

loc_801102A:
    push {lr}
    bl sub_80182B4
    ldrb r1, [r0,#1]
    lsl r1, r1, #2
    ldrb r2, [r0,#2]
    lsl r2, r2, #2
    ldr r0, [pc, #0x8011058-0x8011038-4] // =off_801105C
    ldr r0, [r0,r1]
    ldr r0, [r0,r2]
    mov lr, pc
    bx r0
    pop {pc}
loc_8011044:
    push {lr}
    lsl r0, r0, #2
    lsl r1, r1, #2
    ldr r2, [pc, #0x8011058-0x801104a-2] // =off_801105C
    ldr r2, [r2,r0]
    ldr r2, [r2,r1]
    mov lr, pc
    bx r2
    pop {pc}
    .balign 4, 0x00
off_8011058:    .word off_801105C
off_801105C:    .word off_8011068
    .word off_80110F4
    .word off_80110F4
off_8011068:    .word locret_80114D4+1
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
off_80110F4:    .word sub_80111B8+1
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
.thumb
sub_80111B8:
    push {lr}
    ldr r0, [r5,#0x50]
    tst r0, r0
    beq locret_80111C8
    bl sub_80C44C8
    mov r0, #0
    str r0, [r5,#0x50]
locret_80111C8:
    pop {pc}
// end of function sub_80111B8

.thumb
sub_80111CA:
    push {lr}
    ldr r0, [r5,#0x50]
    tst r0, r0
    beq locret_80111DA
    bl sub_80C44C8
    mov r0, #0
    str r0, [r5,#0x50]
locret_80111DA:
    pop {pc}
// end of function sub_80111CA

.thumb
sub_80111DC:
    push {lr}
    ldr r0, [r5,#0x50]
    tst r0, r0
    beq locret_80111EC
    bl sub_80C4204
    mov r0, #0
    str r0, [r5,#0x50]
locret_80111EC:
    pop {pc}
// end of function sub_80111DC

.thumb
sub_80111EE:
    push {lr}
    ldr r0, [r5,#0x50]
    tst r0, r0
    beq locret_80111FE
    bl sub_80C44C8
    mov r0, #0
    str r0, [r5,#0x50]
locret_80111FE:
    pop {pc}
// end of function sub_80111EE

.thumb
sub_8011200:
    push {lr}
    ldr r0, [r5,#0x50]
    tst r0, r0
    beq locret_8011210
    bl sub_80C44C8
    mov r0, #0
    str r0, [r5,#0x50]
locret_8011210:
    pop {pc}
// end of function sub_8011200

.thumb
sub_8011212:
    push {lr}
    ldr r0, [r5,#0x50]
    tst r0, r0
    beq locret_8011222
    bl sub_80C44C8
    mov r0, #0
    str r0, [r5,#0x50]
locret_8011222:
    pop {pc}
// end of function sub_8011212

.thumb
sub_8011224:
    push {lr}
    ldr r0, [r5,#0x50]
    tst r0, r0
    beq locret_8011234
    bl sub_80C44C8
    mov r0, #0
    str r0, [r5,#0x50]
locret_8011234:
    pop {pc}
// end of function sub_8011224

.thumb
sub_8011236:
    push {lr}
    ldr r0, [r5,#0x50]
    tst r0, r0
    beq loc_8011246
    bl sub_80C44C8
    mov r0, #0
    str r0, [r5,#0x50]
loc_8011246:
    ldr r0, [r5,#0x60]
    tst r0, r0
    beq locret_8011254
    bl sub_80C44C8
    mov r0, #0
    str r0, [r5,#0x60]
locret_8011254:
    pop {pc}
// end of function sub_8011236

.thumb
sub_8011256:
    push {lr}
    ldr r0, [r5,#0x50]
    tst r0, r0
    beq locret_8011266
    bl sub_80C44C8
    mov r0, #0
    str r0, [r5,#0x50]
locret_8011266:
    pop {pc}
// end of function sub_8011256

loc_8011268:
    push {lr}
    mov r2, #0
    lsl r0, r0, #2
    ldr r1, [pc, #0x8011278-0x801126e-2] // =off_801127C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_8011278:    .word off_801127C
off_801127C:    .word locret_8010F68+1
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
    .word 0x8011367, 0x80114D5, 0x80114D5, 0x80114D5, 0x80114D5
    .word 0x80114D5, 0x8011353, 0x8011357, 0x801135B, 0x801135F
    .word 0x8011363, 0x80114D5, 0x8011367
.thumb
sub_80112E0:
    push {lr}
    ldr r0, [pc, #0x80114d8-0x80112e2-2] // =0x104
    bl sub_8011344
    pop {pc}
// end of function sub_80112E0

.thumb
sub_80112EA:
    push {lr}
    ldr r0, [pc, #0x80114dc-0x80112ec-4] // =0x108
    bl sub_8011344
    pop {pc}
// end of function sub_80112EA

.thumb
sub_80112F4:
    push {lr}
    ldr r0, [pc, #0x80114e0-0x80112f6-2] // =0x10A
    bl sub_8011344
    pop {pc}
// end of function sub_80112F4

.thumb
sub_80112FE:
    push {lr}
    ldr r0, [pc, #0x80114e4-0x8011300-4] // =0x10A
    bl sub_8011344
    pop {pc}
// end of function sub_80112FE

.thumb
sub_8011308:
    push {lr}
    ldr r0, [pc, #0x80114e8-0x801130a-2] // =0x111
    bl sub_8011344
    pop {pc}
// end of function sub_8011308

.thumb
sub_8011312:
    push {lr}
    ldr r0, [pc, #0x80114ec-0x8011314-4] // =0x105
    bl sub_8011344
    pop {pc}
// end of function sub_8011312

.thumb
sub_801131C:
    push {lr}
    ldr r0, [pc, #0x80114f0-0x801131e-2] // =0x109
    bl sub_8011344
    pop {pc}
// end of function sub_801131C

.thumb
sub_8011326:
    push {lr}
    ldr r0, [pc, #0x80114f4-0x8011328-4] // =0x10A
    bl sub_8011344
    pop {pc}
// end of function sub_8011326

.thumb
sub_8011330:
    push {lr}
    ldr r0, [pc, #0x80114f8-0x8011332-2] // =0x10E
    bl sub_8011344
    pop {pc}
// end of function sub_8011330

.thumb
sub_801133A:
    push {lr}
    ldr r0, [pc, #0x80114fc-0x801133c-4] // =0x111
    bl sub_8011344
    pop {pc}
// end of function sub_801133A

.thumb
sub_8011344:
    push {r4,lr}
    lsl r4, r2, #0x10
    add r4, r4, r0
    bl sub_80C44A8
    str r0, [r5,#0x50]
    pop {r4,pc}
// end of function sub_8011344

.thumb
sub_8011352:
    mov r3, #2
    b loc_8011368
    mov r3, #4
    b loc_8011368
    mov r3, #6
    b loc_8011368
    mov r3, #8
    b loc_8011368
    mov r3, #0xa
    b loc_8011368
loc_8011366:
    mov r3, #0
loc_8011368:
    push {r4,r6,lr}
    add r6, r3, #0
    ldr r4, [pc, #0x8011500-0x801136c-4] // =0xA0C
    lsl r2, r2, #0x10
    orr r4, r2
    mov r2, #1
    bl sub_80C468C
    str r0, [r5,#0x50]
    cmp r6, #0
    bne locret_8011382
    bl sub_80C46C0
locret_8011382:
    pop {r4,r6,pc}
// end of function sub_8011352

loc_8011384:
    push {lr}
    lsl r0, r0, #2
    ldr r1, [pc, #0x8011394-0x8011388-4] // =off_8011398
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8011394:    .word off_8011398
off_8011398:    .word sub_80111B8+1
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
.thumb
sub_80113FC:
    push {lr}
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq locret_801140C
    bl sub_80C44C8
    mov r0, #0
    str r0, [r5,#0x50]
locret_801140C:
    pop {pc}
// end of function sub_80113FC

.thumb
sub_801140E:
    push {lr}
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq locret_801141E
    bl sub_80C46B0
    mov r0, #0
    str r0, [r5,#0x50]
locret_801141E:
    pop {pc}
// end of function sub_801140E

.thumb
sub_8011420:
    push {lr}
    cmp r0, #0
    bne loc_801142E
    add r0, r1, #0
    bl loc_8011268
    pop {pc}
loc_801142E:
    add r1, r0, #0
    mov r0, #2
    bl loc_8010DF6
    pop {pc}
// end of function sub_8011420

    push {lr}
    cmp r0, #0
    bne loc_8011446
    add r0, r1, #0
    bl loc_8011384
    pop {pc}
loc_8011446:
    add r1, r0, #0
    mov r0, #2
    bl loc_8011044
    pop {pc}
.thumb
sub_8011450:
    push {lr}
    ldr r2, [r5,#0x58]
    ldrb r0, [r2]
    ldrb r1, [r2,#1]
    cmp r0, #0
    beq locret_8011468
    lsl r1, r1, #2
    ldr r0, [pc, #0x801146c-0x801145e-2] // =off_8011470
    ldr r1, [r1,r0]
    ldr r0, [r5,#0x50]
    mov lr, pc
    bx r1
locret_8011468:
    pop {pc}
    .balign 4, 0x00
off_801146C:    .word off_8011470
off_8011470:    .word sub_80C44D2+1
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
// end of function sub_8011450

locret_80114D4:
    mov pc, lr
    .balign 4, 0x00
off_80114D8:    .word 0x104
off_80114DC:    .word 0x108
dword_80114E0:    .word 0x10A
off_80114E4:    .word 0x10C
off_80114E8:    .word 0x111
off_80114EC:    .word 0x105
off_80114F0:    .word 0x109
off_80114F4:    .word 0x10D
dword_80114F8:    .word 0x10E
dword_80114FC:    .word 0x112
off_8011500:    .word 0xA0C
.thumb
sub_8011504:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    mov r0, #0x80
    lsl r1, r6, #0x10
    lsr r1, r1, #0x18
    lsl r2, r6, #0x18
    lsr r2, r2, #0x18
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
// end of function sub_8011504

    lsr r0, r6, #0x18
    tst r0, r0
    beq loc_8011528
    bl sub_8002E3C
    b loc_801152C
loc_8011528:
    bl sub_8002F90
loc_801152C:
    lsl r0, r6, #8
    lsr r0, r0, #0x18
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_8019892
    tst r0, r0
    bne loc_8011540
    pop {r6,r7,pc}
loc_8011540:
    lsr r1, r7, #0x18
    lsl r2, r7, #8
    lsr r2, r2, #0x18
    lsl r3, r7, #0x10
    lsr r3, r3, #0x18
    bl sub_8019FB4
    bl sub_800E456
    bl sub_8002F5C
    mov r0, #1
    pop {r6,r7,pc}
.thumb
sub_801155A:
    strb r1, [r0,#0x12]
    strb r2, [r0,#0x13]
    strb r3, [r0,#0xe]
    str r6, [r0,#0x2c]
    ldrh r1, [r5,#0x16]
    strh r1, [r0,#0x16]
    str r5, [r0,#0x4c]
    mov pc, lr
// end of function sub_801155A

.thumb
sub_801156A:
    push {lr}
    sub sp, sp, #0x10
    str r0, [sp,#8]
    mov r0, #0
    str r0, [sp,#4]
    bl object_spawnHiteffect
    bl sub_800E3BE
    str r0, [sp]
    ldr r2, [sp,#8]
    cmp r2, #1
    beq loc_8011594
    ldrh r1, [r5,#0x24]
    sub r1, r1, r0
    strh r1, [r5,#0x24]
    bgt loc_8011594
    mov r0, #0
    sub r0, #1
    str r0, [sp,#4]
    b loc_80115C2
loc_8011594:
    bl sub_8002DD8
    ldr r0, [sp]
    tst r0, r0
    beq loc_80115C2
    bl sub_8002DB0
    ldr r0, [sp,#8]
    cmp r0, #0
    beq loc_80115B0
    cmp r0, #2
    beq loc_80115B8
    mov r0, #1
    b loc_80115C0
loc_80115B0:
    mov r0, #0x85
    bl sound_play
    b loc_80115BE
loc_80115B8:
    mov r0, #0x6d 
    bl sound_play
loc_80115BE:
    mov r0, #0
loc_80115C0:
    str r0, [sp,#4]
loc_80115C2:
    ldr r0, [sp]
    tst r0, r0
    beq loc_80115C8
loc_80115C8:
    ldr r0, [sp,#4]
    add sp, sp, #0x10
    pop {pc}
// end of function sub_801156A

    push {lr}
    sub sp, sp, #0x10
    str r0, [sp,#8]
    mov r0, #0
    str r0, [sp,#4]
    bl object_spawnHiteffect
    bl sub_800E3BE
    str r0, [sp]
    str r1, [sp,#0xc]
    add r0, r0, r1
    ldr r2, [sp,#8]
    tst r2, r2
    bne loc_80115FC
    ldrh r1, [r5,#0x24]
    sub r1, r1, r0
    strh r1, [r5,#0x24]
    bgt loc_80115FC
    mov r0, #0
    sub r0, #1
    str r0, [sp,#4]
    b loc_801161E
loc_80115FC:
    bl sub_8002DD8
    ldr r0, [sp]
    tst r0, r0
    beq loc_801161E
    bl sub_8002DB0
    ldr r0, [sp,#8]
    tst r0, r0
    beq loc_8011614
    mov r0, #1
    b loc_801161C
loc_8011614:
    mov r0, #0x85
    bl sound_play
    mov r0, #0
loc_801161C:
    str r0, [sp,#4]
loc_801161E:
    ldr r0, [sp]
    tst r0, r0
    beq loc_8011624
loc_8011624:
    ldr r0, [sp,#4]
    add sp, sp, #0x10
    pop {pc}
.thumb
sub_801162A:
    push {r4,lr}
    bl sub_801156A
    cmp r0, #0
    beq locret_801164A
    push {r0}
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0
    bl sub_80E05F6
    mov r0, #0x70 
    bl sound_play
    pop {r0}
locret_801164A:
    pop {r4,pc}
// end of function sub_801162A

.thumb
sub_801164C:
    push {lr}
    push {r0,r1}
    sub r2, r2, r0
    sub r3, r3, r1
    mul r2, r6
    mul r3, r6
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
// end of function sub_801164C

.thumb
sub_8011680:
    mov r2, #0
    b loc_8011698
// end of function sub_8011680

.thumb
sub_8011684:
    mov r2, #1
    b loc_8011698
// end of function sub_8011684

.thumb
sub_8011688:
    mov r2, #2
    b loc_8011698
loc_801168C:
    mov r2, #3
    b loc_8011698
loc_8011690:
    mov r2, #4
    b loc_8011698
loc_8011694:
    mov r2, #5
    b loc_8011698
loc_8011698:
    push {lr}
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    ldr r1, [r5,#0x58]
    add r1, #0xa0
    strh r0, [r1]
    strb r2, [r1,#0x1c]
    bl sub_801011A
    pop {pc}
// end of function sub_8011688

.thumb
sub_80116AE:
    push {r4,r7,lr}
    ldr r4, [r5,#0x58]
    mov r7, #0xa0
    add r7, r7, r4
    strb r0, [r7,#0xc]
    strh r1, [r7,#0x18]
    strb r2, [r7,#3]
    mov r0, #0
    str r0, [r7,#0x2c]
    mov r0, #0x10
    bl loc_8011690
    bl loc_80EB04C
    pop {r4,r7,pc}
// end of function sub_80116AE

    mov r0, #0x3f 
    bl loc_8011690
    bl loc_80EB234
    pop {r4,r7,pc}
.thumb
sub_80116D8:
    push {r7,lr}
    ldr r7, [r5,#0x58]
    add r7, #0xa0
    strb r0, [r7,#0xc]
    strh r1, [r7,#0x18]
    mov r0, #1
    strb r0, [r7,#3]
    mov r0, #0
    str r0, [r7,#0x2c]
    mov r0, #0x10
    bl loc_8011690
    bl loc_80EB04C
    pop {r7,pc}
// end of function sub_80116D8

    push {r7,lr}
    ldr r7, [r5,#0x58]
    add r7, #0xa0
    strb r0, [r7,#0x16]
    strb r1, [r7,#0x17]
    strb r2, [r7,#0x18]
    mov r0, #2
    strb r0, [r7,#3]
    str r3, [r7,#0x2c]
    mov r0, #0x10
    bl loc_8011690
    bl loc_80EB04C
    pop {r7,pc}
.thumb
sub_8011714:
    push {r6,r7,lr}
    mov r0, #0
    strb r0, [r5,#0x10]
    b loc_801171E
loc_801171C:
    push {r6,r7,lr}
loc_801171E:
    ldr r1, [r5,#0x58]
    mov r7, #0xa0
    add r7, r7, r1
    mov r0, #0
    strb r0, [r7,#0x1b]
    ldrb r6, [r7,#0x1c]
    cmp r6, #4
    beq loc_8011754
    cmp r6, #2
    bne loc_8011736
    ldrb r0, [r7,#5]
    strb r0, [r1,#0x19]
loc_8011736:
    cmp r6, #3
    bne loc_801173E
    ldrb r0, [r7,#5]
    strb r0, [r1,#0x15]
loc_801173E:
    mov r0, #0
    strb r0, [r1,#0x1a]
    ldr r0, [pc, #0x8011760-0x8011742-2] // =0x1000003F
    bl sub_800FFEE
    bl sub_8012EA8
    mov r0, #1
    lsl r0, r0, #0x16
    bl object_clearFlag
loc_8011754:
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r7]
    pop {r6,r7,pc}
    .byte 0, 0
dword_8011760:    .word 0x1000003F
// end of function sub_8011714

.thumb
sub_8011764:
    push {r6,r7,lr}
    ldr r6, [r5,#0x58]
    mov r7, #0xa0
    add r7, r7, r6
    ldr r1, [pc, #0x80117d0-0x801176c-4] // =off_80117D4
    ldrb r0, [r6,#6]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,r7,pc}
// end of function sub_8011764

.thumb
sub_801177A:
    push {r6,r7,lr}
    ldr r6, [r5,#0x58]
    mov r7, #0xa0
    add r7, r7, r6
    ldr r1, [pc, #0x80117d0-0x8011782-2] // =off_80117D4
    ldrb r0, [r6,#4]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,r7,pc}
// end of function sub_801177A

.thumb
sub_8011790:
    push {r6,r7,lr}
    mov r7, #0xa0
    add r7, r7, r6
    ldr r1, [pc, #0x80117d0-0x8011796-2] // =off_80117D4
    ldrb r0, [r6,#8]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,r7,pc}
// end of function sub_8011790

loc_80117A4:
    push {r6,r7,lr}
    ldr r6, [r5,#0x58]
    mov r7, #0xa0
    add r7, r7, r6
    ldr r1, [pc, #0x80117d0-0x80117ac-4] // =off_80117D4
    ldrb r0, [r6,#7]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r6,r7,pc}
loc_80117BA:
    push {r6,r7,lr}
    ldr r6, [r5,#0x58]
    mov r7, #0xa0
    add r7, r7, r6
    ldr r1, [pc, #0x80117d0-0x80117c2-2] // =off_80117D4
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,r7,pc}
    .byte 0, 0
off_80117D0:    .word off_80117D4
off_80117D4:    .word sub_8011A26+1
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
    mov r3, #0x83
    lsr r1, r0, #0x20
    mov r3, #0x8d
    lsr r1, r0, #0x20
    mov r3, #0x97
    lsr r1, r0, #0x20
    mov r3, #0xa1
    lsr r1, r0, #0x20
    mov r3, #0xab
    lsr r1, r0, #0x20
    mov r3, #0xc9
    lsr r1, r0, #0x20
    mov r3, #0xd3
    lsr r1, r0, #0x20
    mov r3, #0xdd
    lsr r1, r0, #0x20
    mov r3, #0xe7
    lsr r1, r0, #0x20
    mov r3, #0xf1
    lsr r1, r0, #0x20
    mov r3, #0xfb
    lsr r1, r0, #0x20
    mov r4, #5
    lsr r1, r0, #0x20
    mov r4, #0xf
    lsr r1, r0, #0x20
    mov r4, #0x19
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
    mov r4, #0x85
    lsr r1, r0, #0x20
    mov r4, #0x8f
    lsr r1, r0, #0x20
    mov r4, #0x99
    lsr r1, r0, #0x20
    mov r4, #0xb9
    lsr r1, r0, #0x20
    mov r4, #0xc3
    lsr r1, r0, #0x20
    sub r7, r4, r0
    lsr r1, r0, #0x20
    mov r4, #0xcd
    lsr r1, r0, #0x20
    sub r7, r4, r0
    lsr r1, r0, #0x20
    mov r4, #0xd7
    lsr r1, r0, #0x20
    sub r7, r4, r0
    lsr r1, r0, #0x20
    mov r4, #0xe1
    lsr r1, r0, #0x20
    mov r4, #0xeb
    lsr r1, r0, #0x20
    sub r7, r4, r0
    lsr r1, r0, #0x20
    mov r4, #0xf5
    lsr r1, r0, #0x20
    mov r4, #0xff
    lsr r1, r0, #0x20
    mov r5, #0x1d
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
    mov r5, #0x87
    lsr r1, r0, #0x20
    mov r5, #0xad
    lsr r1, r0, #0x20
    mov r5, #0xd1
    lsr r1, r0, #0x20
    mov r6, #9
    lsr r1, r0, #0x20
    mov r6, #0x13
    lsr r1, r0, #0x20
    mov r6, #0x1f
    lsr r1, r0, #0x20
    mov r6, #0x29 
    lsr r1, r0, #0x20
    mov r6, #0x33 
    lsr r1, r0, #0x20
    mov r6, #0x3b 
    lsr r1, r0, #0x20
locret_8011A24:
    mov pc, lr
.thumb
sub_8011A26:
    push {r4,lr}
    bl sub_8013D5E
    cmp r0, #0
    beq loc_8011A44
    cmp r0, #1
    bne loc_8011A3A
    bl sub_8011ADA
    pop {r4,pc}
loc_8011A3A:
    cmp r0, #2
    bne loc_8011A44
    bl sub_8011A7E
    pop {r4,pc}
loc_8011A44:
    bl sub_801265A
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r1, #0x4d 
    bl sub_8013774
    add r4, r0, #0
    cmp r4, #0
    beq loc_8011A74
    bl sub_8001532
    mov r1, #1
    cmp r4, #0x1e
    blt loc_8011A6E
    mov r1, #7
loc_8011A6E:
    and r0, r1
    beq loc_8011A74
    mov r4, #0
loc_8011A74:
    strb r4, [r7,#0xc]
    mov r1, #0
    strb r1, [r7,#3]
    mov r0, #0x11
    pop {r4,pc}
// end of function sub_8011A26

.thumb
sub_8011A7E:
    push {r4,lr}
    mov r1, #1
    bl sub_8013774
    add r0, #1
    push {r0}
    ldrb r0, [r5,#0x16]
    bl sub_8015B54
    cmp r0, #5
    pop {r0}
    bne loc_8011A98
    mov r0, #1
loc_8011A98:
    mov r1, #0xa
    mul r0, r1
    strh r0, [r7,#8]
    mov r1, #0x4f 
    bl sub_8013774
    add r4, r0, #0
    tst r4, r4
    beq loc_8011AC2
    cmp r4, #6
    beq loc_8011AC4
    bl sub_8001532
    mov r1, #1
    cmp r4, #9
    beq loc_8011ABC
    cmp r4, #0x23 
    bne loc_8011ABE
loc_8011ABC:
    mov r1, #7
loc_8011ABE:
    and r0, r1
    beq loc_8011AC4
loc_8011AC2:
    mov r4, #6
loc_8011AC4:
    str r4, [r7,#0xc]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r0, #0x16
    pop {r4,pc}
// end of function sub_8011A7E

.thumb
sub_8011ADA:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strh r0, [r7,#8]
    str r0, [r7,#0xc]
    mov r0, #0x33 
    mov pc, lr
// end of function sub_8011ADA

.thumb
sub_8011AF2:
    push {lr}
    bl sub_801265A
    cmp r0, #5
    ble loc_8011AFE
    mov r0, #5
loc_8011AFE:
    strh r0, [r7,#8]
    mov r0, #0
    strh r0, [r7,#0xa]
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strb r0, [r7,#5]
    mov r1, #0x4d 
    bl sub_8013774
    str r0, [r7,#0xc]
    mov r1, #0
    strb r1, [r7,#3]
    mov r0, #0
    str r0, [r7,#0x30]
    bl sub_800A8F8
    beq loc_8011B2C
    bl sub_802E4B8
    cmp r0, #0xd
    beq loc_8011B38
loc_8011B2C:
    mov r1, #0x2c 
    bl sub_8013774
    mov r1, #0
    cmp r0, #0x18
    bne loc_8011B3E
loc_8011B38:
    mov r0, #1
    strb r0, [r7,#0xe]
    mov r1, #8
loc_8011B3E:
    strb r1, [r7,#0xd]
    mov r1, #0
    ldr r0, [r5,#0x58]
    str r1, [r0,#0x68]
    mov r0, #0x1e
    pop {pc}
// end of function sub_8011AF2

.thumb
sub_8011B4A:
    push {lr}
    bl sub_801265A
    cmp r0, #5
    ble loc_8011B56
    mov r0, #5
loc_8011B56:
    strh r0, [r7,#8]
    mov r0, #0
    strh r0, [r7,#0xa]
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strb r0, [r7,#5]
    mov r1, #0x4d 
    bl sub_8013774
    str r0, [r7,#0xc]
    mov r1, #0
    strb r1, [r7,#3]
    mov r0, #0
    str r0, [r7,#0x30]
    bl sub_800A8F8
    beq loc_8011B84
    bl sub_802E4B8
    cmp r0, #0xd
    beq loc_8011B90
loc_8011B84:
    mov r1, #0x2c 
    bl sub_8013774
    mov r1, #0
    cmp r0, #0x17
    bne loc_8011B96
loc_8011B90:
    mov r0, #1
    strb r0, [r7,#0xe]
    mov r1, #8
loc_8011B96:
    strb r1, [r7,#0xd]
    mov r1, #0
    ldr r0, [r5,#0x58]
    str r1, [r0,#0x68]
    mov r0, #0x1d
    pop {pc}
// end of function sub_8011B4A

.thumb
sub_8011BA2:
    push {lr}
    mov r0, #0x1e
    mov r1, #0x14
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #1
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strb r0, [r7,#5]
    ldr r0, [pc, #0x8011bcc-0x8011bc2-2] // =0x23C
    str r0, [r7,#0xc]
    mov r0, #0x27 
    pop {pc}
    .balign 4, 0x00
off_8011BCC:    .word 0x23C
// end of function sub_8011BA2

.thumb
sub_8011BD0:
    push {lr}
    mov r0, #0x32 
    mov r1, #0x1e
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #1
    strb r0, [r7,#2]
    mov r0, #0x35 
    pop {pc}
// end of function sub_8011BD0

.thumb
sub_8011BE8:
    push {lr}
    mov r0, #0xa
    mov r1, #0xa
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x86
    strh r0, [r7,#0xa]
    mov r0, #2
    strb r0, [r7,#2]
    mov r0, #0x3a 
    pop {pc}
// end of function sub_8011BE8

.thumb
sub_8011C00:
    push {lr}
    mov r0, #0x28 
    mov r1, #0x1e
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #3
    strb r0, [r7,#2]
    mov r0, #0x3c 
    pop {pc}
// end of function sub_8011C00

.thumb
sub_8011C18:
    push {lr}
    mov r0, #0x1e
    mov r1, #0x14
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #0x20 
    strb r0, [r7,#2]
    ldr r0, [pc, #0x8011c34-0x8011c2c-4] // =0x2D3D00
    str r0, [r7,#0xc]
    mov r0, #0x3d 
    pop {pc}
dword_8011C34:    .word 0x2D3D00
// end of function sub_8011C18

.thumb
sub_8011C38:
    push {lr}
    mov r0, #0x28 
    mov r1, #0x14
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0
    strh r0, [r7,#6]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #3
    strb r0, [r7,#2]
    mov r0, #1
    lsl r0, r0, #8
    add r0, #0xf
    lsl r0, r0, #8
    str r0, [r7,#0xc]
    mov r0, #0x3e 
    pop {pc}
// end of function sub_8011C38

.thumb
sub_8011C5E:
    push {lr}
    mov r0, #0x14
    mov r1, #0xa
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0
    strh r0, [r7,#6]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #2
    strb r0, [r7,#3]
    ldr r0, [pc, #0x8011c84-0x8011c76-2] // =0xC
    str r0, [r7,#0xc]
    mov r0, #2
    strb r0, [r7,#2]
    mov r0, #0x25 
    pop {pc}
    .balign 4, 0x00
dword_8011C84:    .word 0xD
// end of function sub_8011C5E

.thumb
sub_8011C88:
    push {lr}
    mov r0, #0x28 
    mov r1, #0x14
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0
    strh r0, [r7,#6]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #1
    strb r0, [r7,#3]
    mov r0, #0x20 
    strb r0, [r7,#2]
    mov r0, #0x3f 
    pop {pc}
// end of function sub_8011C88

.thumb
sub_8011CA8:
    mov r0, #0x14
    strb r0, [r7,#3]
    mov r0, #0x28 
    strb r0, [r7,#5]
    mov r0, #0x1c
    mov pc, lr
// end of function sub_8011CA8

.thumb
sub_8011CB4:
    push {r4,lr}
    mov r0, #0
    bl sub_80127C0
    cmp r0, #0x53 
    beq loc_8011CC4
    cmp r0, #0x54 
    bne loc_8011CCA
loc_8011CC4:
    mov r1, #1
    strb r1, [r7,#4]
    b locret_8011CD4
loc_8011CCA:
    cmp r0, #0x40 
    bne loc_8011CD2
    mov r0, #0x11
    strb r0, [r7,#3]
loc_8011CD2:
    mov r0, #0x41 
locret_8011CD4:
    pop {r4,pc}
// end of function sub_8011CB4

.thumb
sub_8011CD6:
    push {lr}
    mov r0, #0x3c 
    mov r1, #0x14
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #0x10
    strb r0, [r7,#3]
    mov r0, #0x80
    strb r0, [r7,#2]
    mov r0, #0
    str r0, [r7,#0xc]
    strh r0, [r7,#6]
    mov r0, #0x41 
    pop {pc}
// end of function sub_8011CD6

.thumb
sub_8011CF8:
    push {lr}
    mov r0, #0x28 
    mov r1, #0x14
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r1, #0x2c 
    bl sub_8013774
    mov r1, #0
    cmp r0, #4
    beq loc_8011D16
    mov r1, #1
loc_8011D16:
    strb r1, [r7,#3]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0x45 
    pop {pc}
// end of function sub_8011CF8

.thumb
sub_8011D20:
    push {lr}
    mov r0, #0x46 
    mov r1, #0x1e
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x9e
    strh r0, [r7,#0xa]
    mov r0, #0x40 
    strb r0, [r7,#2]
    mov r0, #0x46 
    pop {pc}
// end of function sub_8011D20

.thumb
sub_8011D38:
    push {lr}
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x9e
    strh r0, [r7,#0xa]
    mov r0, #0x28 
    mov r1, #0x14
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x4a 
    pop {pc}
// end of function sub_8011D38

.thumb
sub_8011D54:
    push {lr}
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #0x5a 
    mov r1, #0x14
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x10
    strb r0, [r7,#2]
    mov r0, #0x1a
    pop {pc}
// end of function sub_8011D54

.thumb
sub_8011D74:
    push {lr}
    mov r0, #0xa
    mov r1, #0xa
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #0x10
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strb r0, [r7,#5]
    ldr r0, [pc, #0x8011d98-0x8011d90-4] // =0x1800
    str r0, [r7,#0xc]
    mov r0, #0x4d 
    pop {pc}
off_8011D98:    .word 0x1800
// end of function sub_8011D74

.thumb
sub_8011D9C:
    push {lr}
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x9e
    strh r0, [r7,#0xa]
    mov r0, #0x32 
    mov r1, #0x1e
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x80
    strb r0, [r7,#2]
    mov r0, #0x4c 
    pop {pc}
// end of function sub_8011D9C

.thumb
sub_8011DBC:
    push {lr}
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x9e
    strh r0, [r7,#0xa]
    mov r0, #0x32 
    mov r1, #0x14
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #4
    strb r0, [r7,#2]
    mov r0, #0x4e 
    pop {pc}
// end of function sub_8011DBC

.thumb
sub_8011DDC:
    push {lr}
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x9e
    strh r0, [r7,#0xa]
    mov r0, #0x46 
    mov r1, #0x1e
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #1
    strb r0, [r7,#2]
    mov r0, #0x4f 
    pop {pc}
// end of function sub_8011DDC

.thumb
sub_8011DFC:
    push {lr}
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x9e
    strh r0, [r7,#0xa]
    mov r0, #0x50 
    mov r1, #0x14
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x10
    strb r0, [r7,#2]
    mov r0, #0x50 
    pop {pc}
// end of function sub_8011DFC

.thumb
sub_8011E1C:
    push {lr}
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x9e
    strh r0, [r7,#0xa]
    mov r0, #0x32 
    mov r1, #0xa
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #2
    strh r0, [r7,#0x12]
    mov r0, #0x52 
    pop {pc}
// end of function sub_8011E1C

.thumb
sub_8011E40:
    push {lr}
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    mov r0, #0x14
    strb r0, [r7,#5]
    mov r0, #0x14
    strh r0, [r7,#0xa]
    mov r0, #0x80
    strb r0, [r7,#2]
    bl sub_800F4A8
    cmp r0, #1
    blt loc_8011E68
    mov r0, #1
    bl sub_800F4B2
    mov r0, #0xc8
    mov r1, #6
    b loc_8011E6C
loc_8011E68:
    mov r0, #0x50 
    mov r1, #0
loc_8011E6C:
    strh r0, [r7,#8]
    strb r1, [r7,#3]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r0, #0x13
    pop {pc}
// end of function sub_8011E40

.thumb
sub_8011E78:
    push {lr}
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    mov r0, #0x14
    strb r0, [r7,#5]
    mov r0, #0x14
    strh r0, [r7,#0xa]
    mov r0, #3
    strb r0, [r7,#2]
    bl sub_800F4A8
    cmp r0, #1
    blt loc_8011EA0
    mov r0, #1
    bl sub_800F4B2
    mov r0, #0xc8
    ldr r1, [pc, #0x8011f34-0x8011e9c-4] // =0x100C02
    b loc_8011EA4
loc_8011EA0:
    mov r0, #0x28 
    ldr r1, [pc, #0x8011f38-0x8011ea2-2] // =0x100501
loc_8011EA4:
    strh r0, [r7,#8]
    str r1, [r7,#0xc]
    mov r0, #0x1f
    pop {pc}
// end of function sub_8011E78

.thumb
sub_8011EAC:
    push {lr}
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    mov r0, #0x14
    strb r0, [r7,#5]
    mov r0, #0x14
    strh r0, [r7,#0xa]
    mov r0, #1
    strb r0, [r7,#2]
    mov r0, #0x64 
    strh r0, [r7,#8]
    mov r1, #8
    strb r1, [r7,#3]
    ldr r0, [pc, #0x8011f3c-0x8011ec8-4] // =0x300
    str r0, [r7,#0xc]
    mov r0, #0x1c
    pop {pc}
// end of function sub_8011EAC

.thumb
sub_8011ED0:
    push {lr}
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    mov r0, #0x14
    strb r0, [r7,#5]
    mov r0, #0x14
    strh r0, [r7,#0xa]
    mov r0, #2
    strb r0, [r7,#2]
    mov r0, #0x28 
    strh r0, [r7,#8]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r0, #0x32 
    pop {pc}
// end of function sub_8011ED0

.thumb
sub_8011EF0:
    push {lr}
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    mov r0, #0x14
    strb r0, [r7,#5]
    mov r0, #0x14
    strh r0, [r7,#0xa]
    mov r0, #3
    strb r0, [r7,#2]
    mov r0, #0x64 
    strh r0, [r7,#8]
    ldr r0, [pc, #0x8011f40-0x8011f08-4] // =0x3C1000
    str r0, [r7,#0xc]
    mov r0, #0x42 
    pop {pc}
// end of function sub_8011EF0

.thumb
sub_8011F10:
    push {lr}
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    mov r0, #0x14
    strb r0, [r7,#5]
    mov r0, #0x14
    strh r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r7,#2]
    mov r0, #0x64 
    strh r0, [r7,#8]
    mov r1, #1
    strb r1, [r7,#3]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r0, #0x1c
    pop {pc}
dword_8011F34:    .word 0x100C02
dword_8011F38:    .word 0x100501
off_8011F3C:    .word 0x300
dword_8011F40:    .word 0x3C1000
// end of function sub_8011F10

.thumb
sub_8011F44:
    push {lr}
    mov r0, #0x1e
    mov r1, #0x14
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #1
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strb r0, [r7,#5]
    mov r0, #0x56 
    pop {pc}
// end of function sub_8011F44

.thumb
sub_8011F64:
    push {lr}
    mov r0, #0x32 
    mov r1, #0xa
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #0x10
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strb r0, [r7,#5]
    mov r0, #0x57 
    pop {pc}
// end of function sub_8011F64

.thumb
sub_8011F84:
    mov r0, #0x28 
    strb r0, [r7,#5]
    mov r0, #0x58 
    mov pc, lr
// end of function sub_8011F84

.thumb
sub_8011F8C:
    push {lr}
    ldrb r0, [r6,#0xd]
    cmp r0, #0
    bne loc_8011F9A
    bl sub_8011A26
    b locret_8011FCC
loc_8011F9A:
    sub r0, #1
    strb r0, [r6,#0xd]
    add r0, #0x6c 
    ldrb r0, [r6,r0]
    ldr r2, [pc, #0x8012010-0x8011fa2-2] // =loc_80E98C0
    mov r1, #0xf
    and r1, r0
    lsl r1, r1, #1
    ldrh r1, [r2,r1]
    lsl r1, r1, #0x10
    orr r0, r1
    str r0, [r7,#0x30]
    mov r0, #0xc8
    strh r0, [r7,#8]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r1, #2
    strb r1, [r7,#3]
    mov r0, #0x11
locret_8011FCC:
    pop {pc}
// end of function sub_8011F8C

.thumb
sub_8011FCE:
    push {lr}
    ldrb r0, [r6,#0xd]
    cmp r0, #0
    bne loc_8011FDC
    bl sub_8011AF2
    b locret_801200E
loc_8011FDC:
    sub r0, #1
    strb r0, [r6,#0xd]
    add r0, #0x6c 
    ldrb r0, [r6,r0]
    ldr r2, [pc, #0x8012014-0x8011fe4-4] // =loc_80E98C0
    mov r1, #0xf
    and r1, r0
    lsl r1, r1, #1
    ldrh r1, [r2,r1]
    lsl r1, r1, #0x10
    orr r0, r1
    str r0, [r7,#0x30]
    mov r0, #0xc8
    strh r0, [r7,#8]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #0
    strb r0, [r7,#2]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r1, #2
    strb r1, [r7,#3]
    mov r0, #0x11
locret_801200E:
    pop {pc}
off_8012010:    .word loc_80E98C0
off_8012014:    .word loc_80E98C0
// end of function sub_8011FCE

.thumb
sub_8012018:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #4
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    mov r1, #0x48 
    bl sub_8013790
    strh r0, [r7,#8]
    ldr r0, [pc, #0x8012040-0x8012032-2] // =0x114
    str r0, [r7,#0xc]
    mov r0, #0x28 
    strb r0, [r7,#5]
    mov r0, #0x2b 
    pop {pc}
    .byte 0, 0
off_8012040:    .word 0x114
// end of function sub_8012018

.thumb
sub_8012044:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    mov r0, #1
    strb r0, [r7,#4]
    mov r0, #0
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x14
    strh r0, [r7,#0xa]
    mov r0, #0x50 
    mov r1, #0xa
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r0, #0x13
    pop {pc}
// end of function sub_8012044

.thumb
sub_801206E:
    push {lr}
    mov r0, #0x48 
    bl loc_80126EA
    push {r0}
    mov r0, #0x14
    ldrb r1, [r5,#0x16]
    bl sub_8010D04
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    pop {r0}
    pop {pc}
// end of function sub_801206E

.thumb
sub_801208A:
    push {lr}
    mov r0, #0x49 
    bl loc_80126EA
    push {r0}
    mov r0, #0x14
    ldrb r1, [r5,#0x16]
    bl sub_8010D04
    strh r0, [r7,#8]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    pop {r0}
    pop {pc}
// end of function sub_801208A

.thumb
sub_80120A6:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #3
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strh r0, [r7,#8]
    ldr r0, [pc, #0x80120c8-0x80120ba-2] // =0x114
    str r0, [r7,#0xc]
    mov r0, #0x28 
    strb r0, [r7,#5]
    mov r0, #0x2b 
    pop {pc}
    .balign 4, 0x00
off_80120C8:    .word 0x114
// end of function sub_80120A6

.thumb
sub_80120CC:
    push {lr}
    mov r0, #0x2b 
    bl loc_80126EA
    pop {pc}
// end of function sub_80120CC

.thumb
sub_80120D6:
    push {lr}
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #1
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #0x50 
    mov r1, #0xa
    bl sub_8012642
    strh r0, [r7,#8]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r0, #0x13
    pop {pc}
// end of function sub_80120D6

.thumb
sub_80120FE:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #4
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    mov r0, #0x32 
    strh r0, [r7,#8]
    ldr r0, [pc, #0x8012120-0x8012112-2] // =0x114
    str r0, [r7,#0xc]
    mov r0, #0x28 
    strb r0, [r7,#5]
    mov r0, #0x2b 
    mov pc, lr
    .byte 0, 0
off_8012120:    .word 0x114
// end of function sub_80120FE

.thumb
sub_8012124:
    push {lr}
    mov r1, #1
    bl sub_8013774
    add r0, #1
    mov r1, #5
    mul r0, r1
    strh r0, [r7,#8]
    mov r0, #0x85
    strh r0, [r7,#0xa]
    mov r0, #6
    str r0, [r7,#0xc]
    mov r0, #0
    strh r0, [r7,#0x12]
    mov r0, #0x5d 
    pop {pc}
// end of function sub_8012124

.thumb
sub_8012144:
    push {lr}
    mov r1, #1
    bl sub_8013774
    add r0, #1
    mov r1, #0xa
    mul r0, r1
    strh r0, [r7,#8]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #1
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strh r0, [r7,#6]
    mov r0, #6
    lsl r0, r0, #0x18
    str r0, [r7,#0xc]
    mov r0, #0x38 
    pop {pc}
// end of function sub_8012144

.thumb
sub_801216E:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #3
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strh r0, [r7,#8]
    ldr r0, [pc, #0x8012190-0x8012182-2] // =0x214
    str r0, [r7,#0xc]
    mov r0, #0x28 
    strb r0, [r7,#5]
    mov r0, #0x2b 
    mov pc, lr
    .byte 0, 0
off_8012190:    .word 0x214
// end of function sub_801216E

loc_8012194:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #4
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    mov r0, #0x32 
    strh r0, [r7,#8]
    ldr r0, [pc, #0x80121b8-0x80121aa-2] // =0x114
    str r0, [r7,#0xc]
    mov r0, #0x28 
    strb r0, [r7,#5]
    mov r0, #0x2b 
    mov pc, lr
    .balign 4, 0x00
off_80121B8:    .word 0x114
loc_80121BC:
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    str r0, [r7,#0xc]
    mov r0, #0x32 
    strh r0, [r7,#8]
    mov r0, #0x1e
    strh r0, [r7,#0x10]
    mov r0, #0x46 
    strb r0, [r7,#5]
    mov r0, #0x5a 
    mov pc, lr
.thumb
sub_80121DC:
    push {lr}
    mov r0, #0
    ldrb r1, [r5,#0x16]
    bl sub_8010D04
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #1
    strb r0, [r7,#2]
    mov r0, #0x1e
    strb r0, [r7,#0xc]
    mov r0, #9
    pop {pc}
// end of function sub_80121DC

.thumb
sub_80121F8:
    push {lr}
    mov r0, #0xa
    ldrb r1, [r5,#0x16]
    bl sub_8010D04
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #2
    strb r0, [r7,#2]
    mov r0, #9
    pop {pc}
// end of function sub_80121F8

.thumb
sub_8012210:
    push {lr}
    mov r0, #0xe
    ldrb r1, [r5,#0x16]
    bl sub_8010D04
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #9
    pop {pc}
// end of function sub_8012210

.thumb
sub_8012228:
    push {lr}
    mov r0, #4
    ldrb r1, [r5,#0x16]
    bl sub_8010D04
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #9
    pop {pc}
// end of function sub_8012228

.thumb
sub_8012240:
    push {lr}
    mov r0, #2
    ldrb r1, [r5,#0x16]
    bl sub_8010D04
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #3
    strb r0, [r7,#2]
    mov r0, #9
    pop {pc}
// end of function sub_8012240

.thumb
sub_8012258:
    push {lr}
    mov r0, #0xc
    ldrb r1, [r5,#0x16]
    bl sub_8010D04
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r7,#2]
    mov r0, #0x1e
    strb r0, [r7,#0xc]
    mov r0, #0x1e
    strb r0, [r7,#0xd]
    mov r0, #9
    pop {pc}
// end of function sub_8012258

.thumb
sub_8012278:
    push {lr}
    mov r0, #0xa
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #4
    strb r0, [r7,#2]
    mov r0, #6
    strb r0, [r7,#0xc]
    mov r0, #6
    strb r0, [r7,#0xd]
    mov r0, #9
    pop {pc}
// end of function sub_8012278

.thumb
sub_8012292:
    push {lr}
    mov r0, #6
    ldrb r1, [r5,#0x16]
    bl sub_8010D04
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #9
    pop {pc}
// end of function sub_8012292

.thumb
sub_80122AA:
    push {lr}
    mov r0, #8
    ldrb r1, [r5,#0x16]
    bl sub_8010D04
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #1
    strb r0, [r7,#2]
    mov r0, #9
    pop {pc}
// end of function sub_80122AA

.thumb
sub_80122C2:
    push {lr}
    mov r0, #0x12
    ldrb r1, [r5,#0x16]
    bl sub_8010D04
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #9
    pop {pc}
// end of function sub_80122C2

.thumb
sub_80122DA:
    push {lr}
    mov r0, #0x10
    ldrb r1, [r5,#0x16]
    bl sub_8010D04
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #9
    pop {pc}
// end of function sub_80122DA

.thumb
sub_80122F2:
    push {lr}
    mov r0, #0xa
    strh r0, [r7,#8]
    mov r0, #0
    strh r0, [r7,#0xa]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #6
    strb r0, [r7,#0xc]
    mov r0, #6
    strb r0, [r7,#0xd]
    mov r0, #0xb
    pop {pc}
// end of function sub_80122F2

.thumb
sub_801230C:
    push {lr}
    mov r0, #0xa
    strh r0, [r7,#8]
    mov r0, #0
    strh r0, [r7,#0xa]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #6
    strb r0, [r7,#0xc]
    mov r0, #6
    strb r0, [r7,#0xd]
    mov r0, #0xc
    pop {pc}
// end of function sub_801230C

.thumb
sub_8012326:
    mov r0, #1
    b loc_801232C
    mov r0, #3
loc_801232C:
    lsl r0, r0, #8
    str r0, [r7,#0xc]
    mov r0, #0x1e
    strh r0, [r7,#8]
    mov r0, #0x94
    strh r0, [r7,#0xa]
    mov r0, #0x5c 
    mov pc, lr
// end of function sub_8012326

    push {lr}
    mov r0, #3
    bl loc_80126EA
    pop {pc}
    push {lr}
    ldr r0, [pc, #0x80126d0-0x8012348-4] // =0x17C
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0x44 
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0xa2
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0x39 
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0x1f
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #9
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
    mov r0, #0xc7
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0x90
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0x46 
    strh r0, [r7,#8]
    mov r0, #0xa
    strh r0, [r7,#0xa]
    mov r0, #2
    strb r0, [r7,#3]
    ldr r0, [pc, #0x80123c4-0x80123b8-4] // =0x7
    str r0, [r7,#0xc]
    mov r0, #2
    strb r0, [r7,#2]
    mov r0, #0x25 
    pop {pc}
dword_80123C4:    .word 0x7
    push {lr}
    mov r0, #0x77 
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #1
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
    mov r0, #0xca
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #7
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0x96
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
    mov r0, #0xa4
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #8
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0xf
    bl loc_80126EA
    pop {pc}
    mov r0, #0x14
    strh r0, [r7,#8]
    mov r0, #0x8a
    strh r0, [r7,#0xa]
    ldr r0, [pc, #0x80126d4-0x8012452-2] // =0x33C00
    str r0, [r7,#0xc]
    mov r0, #0x5e 
    mov pc, lr
    push {lr}
    ldr r0, [pc, #0x80126d8-0x801245c-4] // =0x17D
    bl loc_80126EA
    pop {pc}
    push {lr}
    ldr r0, [pc, #0x80126dc-0x8012466-2] // =0x17D
    bl sub_8010740
    tst r0, r0
    beq loc_8012478
    bl sub_8011714
    mov r0, #8
    b locret_8012482
loc_8012478:
    mov r0, #2
    strb r0, [r7,#3]
    mov r0, #0x78 
    strb r0, [r7,#0xc]
    mov r0, #0x1c
locret_8012482:
    pop {pc}
    push {lr}
    mov r0, #0x49 
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0x1e
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0x28 
    strh r0, [r7,#8]
    mov r0, #0xa
    strh r0, [r7,#0xa]
    mov r0, #1
    strb r0, [r7,#3]
    ldr r0, [pc, #0x80124b4-0x80124a6-2] // =0x8
    str r0, [r7,#0xc]
    mov r0, #1
    strb r0, [r7,#2]
    mov r0, #0x25 
    pop {pc}
    .balign 4, 0x00
dword_80124B4:    .word 0x8
    push {lr}
    mov r0, #0x13
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0x83
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0x14
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
    strh r0, [r7,#8]
    mov r0, #0xa
    strh r0, [r7,#0xa]
    mov r0, #2
    strb r0, [r7,#3]
    ldr r0, [pc, #0x8012518-0x801250c-4] // =0x4
    str r0, [r7,#0xc]
    mov r0, #2
    strb r0, [r7,#2]
    mov r0, #0x25 
    pop {pc}
dword_8012518:    .word 0x4
    push {lr}
    mov r0, #0x59 
    bl loc_80126EA
    pop {pc}
    mov r0, #9
    strb r0, [r7,#3]
    mov r0, #0x78 
    strb r0, [r7,#5]
    mov r0, #0
    str r0, [r7,#8]
    mov r0, #0x1c
    mov pc, lr
    push {lr}
    mov r0, #0x8e
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0x33 
    bl loc_80126EA
    pop {pc}
    mov r0, #0x14
    strb r0, [r7,#3]
    mov r0, #0x1c
    mov pc, lr
    push {lr}
    mov r0, #0x3c 
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0x25 
    bl loc_80126EA
    mov r1, #0x28 
    strb r1, [r7,#5]
    mov r1, #3
    strb r1, [r7,#0x1c]
    mov r1, #1
    strb r1, [r7,#0xd]
    pop {pc}
    push {lr}
    mov r0, #0x56 
    bl loc_80126EA
    pop {pc}
    push {lr}
    ldr r0, [pc, #0x80126e0-0x801257e-2] // =0x11E
    bl loc_80126EA
    pop {pc}
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #4
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    mov r0, #0x32 
    strh r0, [r7,#8]
    ldr r0, [pc, #0x80125a8-0x801259c-4] // =0x114
    str r0, [r7,#0xc]
    mov r0, #0x28 
    strb r0, [r7,#5]
    mov r0, #0x2b 
    mov pc, lr
off_80125A8:    .word 0x114
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #3
    strb r0, [r7,#3]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#5]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strh r0, [r7,#8]
    ldr r0, [pc, #0x80125cc-0x80125c0-4] // =0x214
    str r0, [r7,#0xc]
    mov r0, #0x28 
    strb r0, [r7,#5]
    mov r0, #0x2b 
    mov pc, lr
off_80125CC:    .word 0x214
    push {lr}
    mov r1, #1
    bl sub_8013774
    add r0, #1
    mov r1, #0xa
    mul r0, r1
    strh r0, [r7,#8]
    mov r0, #0
    strb r0, [r7,#2]
    mov r0, #0
    strb r0, [r7,#3]
    strb r0, [r7,#4]
    strh r0, [r7,#6]
    strh r0, [r7,#0xa]
    strb r0, [r7,#5]
    mov r0, #0
    str r0, [r7,#0xc]
    mov r1, #0x4f 
    bl sub_8013774
    mov r1, #6
    tst r0, r0
    beq loc_8012602
    add r1, r0, #0
loc_8012602:
    str r1, [r7,#0xc]
    mov r0, #0x16
    pop {pc}
    push {lr}
    mov r0, #0x47 
    bl loc_80126EA
    pop {pc}
    push {lr}
    bl sub_8011A26
    mov r1, #1
    strb r1, [r7,#3]
    pop {pc}
    push {lr}
    mov r0, #0x74 
    bl loc_80126EA
    pop {pc}
    push {lr}
    mov r0, #0x17
    bl loc_80126EA
    pop {pc}
    push {lr}
    bl sub_8012124
    pop {pc}
    push {lr}
    bl sub_8012144
    pop {pc}
.thumb
sub_8012642:
    push {lr}
    push {r0,r1}
    bl sub_801265A
    add r2, r0, #0
    cmp r2, #5
    ble loc_8012652
    mov r2, #5
loc_8012652:
    pop {r0,r1}
    mul r1, r2
    add r0, r0, r1
    pop {pc}
// end of function sub_8012642

.thumb
sub_801265A:
    push {lr}
    mov r1, #0x29 
    bl sub_8013774
    push {r0}
    mov r1, #1
    bl sub_8013774
    pop {r1}
    ldr r2, [pc, #0x801269c-0x801266c-4] // =dword_80126A4
    ldrb r1, [r2,r1]
    add r0, r0, r1
    push {r0}
    ldrb r0, [r5,#0x16]
    bl sub_8015B54
    cmp r0, #5
    bne loc_8012684
    pop {r0}
    mov r0, #1
    b loc_8012692
loc_8012684:
    mov r1, #0x2c 
    bl sub_8013774
    ldr r1, [pc, #0x80126a0-0x801268a-2] // =off_80126B0
    ldrb r1, [r1,r0]
    pop {r0}
    add r0, r0, r1
loc_8012692:
    cmp r0, #0xa
    ble locret_8012698
    mov r0, #0xa
locret_8012698:
    pop {pc}
    .balign 4, 0x00
off_801269C:    .word dword_80126A4
off_80126A0:    .word off_80126B0
dword_80126A4:    .word 0x1010101, 0x1010101, 0x1010101
off_80126B0:    .word 0x100
    .word 0x0, 0x0
    .word 0x100
    .word 0x0, 0x0, 0x0, 0x0
off_80126D0:    .word 0x17C
dword_80126D4:    .word 0x33C00
off_80126D8:    .word 0x17D
dword_80126DC:    .word 0x17E
dword_80126E0:    .word 0x11E
// end of function sub_801265A

.thumb
sub_80126E4:
    push {r4,r6,r7,lr}
    mov r4, #1
    b loc_80126F6
loc_80126EA:
    push {r4,r6,r7,lr}
    mov r4, #0
    b loc_80126F6
    push {r4,r6,r7,lr}
    ldr r7, [r5,#0x58]
    add r7, #0xa0
loc_80126F6:
    strh r0, [r7,#0x14]
    bl sub_8021AA4
    add r6, r0, #0
    ldr r1, [r6,#0x10]
    str r1, [r7,#0xc]
    ldrh r0, [r7,#0x14]
    ldrb r1, [r5,#0x16]
    bl loc_80109A4
    ldrb r1, [r6,#0xa]
    lsl r1, r1, #0x10
    add r1, r1, r0
    str r1, [r7,#8]
    ldrb r1, [r6,#0x14]
    strb r1, [r7,#5]
    mov r1, #0
    strh r1, [r7,#6]
    ldrb r1, [r6,#0xc]
    strb r1, [r7,#3]
    ldrb r1, [r6,#4]
    ldrb r2, [r6,#6]
    ldr r0, [pc, #0x80129e0-0x8012722-2] // =dword_80129E4
    ldrb r0, [r0,r2]
    orr r1, r0
    strb r1, [r7,#2]
    mov r1, #0
    strb r1, [r7,#4]
    tst r4, r4
    beq loc_801273A
    ldrb r0, [r5,#0x16]
    ldrh r1, [r7,#0x14]
    bl sub_8021D14
loc_801273A:
    ldrb r0, [r6,#0xb]
    pop {r4,r6,r7,pc}
// end of function sub_80126E4

    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x16]
    push {r0}
    bl sub_800E2C2
    add r6, r0, #0
    pop {r0}
    lsl r1, r0, #3
    ldr r7, [pc, #0x8012778-0x801274e-2] // =dword_8012780
    add r7, r7, r1
    ldr r2, [r7]
    ldr r3, [r7,#4]
    ldr r7, [pc, #0x801277c-0x8012756-2] // =word_8012790
    ldrb r0, [r7,r0]
loc_801275A:
    mov r1, #3
loc_801275C:
    push {r0-r3,r6}
    bl object_checkPanelParameters
    tst r0, r0
    pop {r0-r3,r6}
    bne locret_8012776
    sub r1, #1
    bne loc_801275C
    add r0, r0, r6
    sub r4, r0, #1
    cmp r4, #6
    bls loc_801275A
    mov r0, #0
locret_8012776:
    pop {r4,r6,r7,pc}
off_8012778:    .word dword_8012780
off_801277C:    .word word_8012790
dword_8012780:    .word 0x200000, 0x20, 0x400020, 0x0
word_8012790:    .hword 0x601
.thumb
sub_8012792:
    push {r4,r6,r7,lr}
    add r4, r1, #0
    add r6, r2, #0
    add r7, r3, #0
loc_801279A:
    sub r0, #4
    bmi loc_80127BC
    sub r7, #1
    ldr r2, [r6,r0]
    ldrb r1, [r7]
    ldrh r3, [r2,r1]
    tst r3, r3
    beq loc_80127B8
    cmp r4, r3
    bne loc_801279A
    add r1, #2
    strb r1, [r7]
    ldr r3, [r2,r1]
    tst r3, r3
    bne loc_801279A
loc_80127B8:
    lsr r0, r0, #2
    pop {r4,r6,r7,pc}
loc_80127BC:
    mov r0, #0xff
    pop {r4,r6,r7,pc}
// end of function sub_8012792

.thumb
sub_80127C0:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x1c
    str r0, [sp]
    bl sub_800FFFE
    ldr r1, [pc, #0x80128f4-0x80127ca-2] // =0x10000
    tst r1, r4
    bne loc_80127DA
    add r0, r5, #0
    ldr r1, [sp]
    bl sub_800EDD0
    b loc_80127E4
loc_80127DA:
    mov r0, #1
    strb r0, [r7,#0x1b]
    add r0, r5, #0
    bl sub_800EE26
loc_80127E4:
    str r0, [sp,#4]
    str r1, [sp,#8]
    str r2, [sp,#0xc]
    str r3, [sp,#0x10]
    mov r6, #0xff
    and r6, r4
    str r6, [sp,#0x14]
    lsr r4, r4, #8
    str r4, [sp,#0x18]
    bl sub_8021AA4
    add r4, r0, #0
    ldrb r0, [r4,#0x1f]
    bl sub_8010D58
    ldr r3, [pc, #0x80128f8-0x8012802-2] // =0xFFFF
    cmp r0, r3
    beq loc_8012822
    str r0, [sp,#4]
    str r1, [sp,#8]
    str r2, [sp,#0xc]
    mov r3, #0
    str r3, [sp,#0x10]
    mov r6, #0xff
    and r6, r4
    str r6, [sp,#0x14]
    lsr r4, r4, #8
    str r4, [sp,#0x18]
    bl sub_8021AA4
    add r4, r0, #0
loc_8012822:
    ldr r0, [sp,#4]
    strh r0, [r7,#0x14]
    bl sub_80126E4
    ldr r0, [sp]
    strb r0, [r7,#4]
    ldr r0, [sp,#8]
    strh r0, [r7,#8]
    ldr r0, [sp]
    bl sub_8012C7C
    tst r0, r0
    beq loc_801284E
    ldrh r1, [r7,#8]
    cmp r0, #0xff
    bne loc_8012844
    add r0, r1, #0
loc_8012844:
    add r1, r1, r0
    strh r1, [r7,#8]
    mov r0, #0x87
    bl sound_play
loc_801284E:
    ldr r0, [sp,#0xc]
    strh r0, [r7,#6]
    add r0, r5, #0
    ldrh r1, [r7,#0x14]
    ldrh r2, [r7,#8]
    ldr r3, [sp]
    bl sub_8012A38
    strh r0, [r7,#8]
    tst r1, r1
    beq loc_8012880
    cmp r1, #1
    bne loc_8012872
    ldrb r0, [r5,#0x16]
    mov r1, #0x80
    bl sub_8015BEC
    b loc_801287A
loc_8012872:
    cmp r1, #2
    bne loc_8012880
    bl sub_80143A6
loc_801287A:
    mov r0, #0x87
    bl sound_play
loc_8012880:
    ldrh r0, [r7,#8]
    ldr r1, [sp,#0x14]
    bl sub_8012C34
    strh r0, [r7,#8]
    ldrh r0, [r7,#0x14]
    ldrh r1, [r7,#8]
    bl sub_8012C4A
    strh r0, [r7,#8]
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #6
    beq loc_80128A2
    cmp r0, #0x12
    bne loc_80128C0
loc_80128A2:
    ldrb r0, [r4,#4]
    cmp r0, #2
    bne loc_80128C0
    ldrb r0, [r4,#9]
    mov r1, #1
    tst r0, r1
    bne loc_80128C0
    mov r1, #0x3e 
    bl sub_8013790
    add r0, #0x13
    mov r1, #0x14
    svc 6
    add r2, r0, #0
    b loc_80128C2
loc_80128C0:
    mov r2, #0
loc_80128C2:
    push {r2}
    mov r1, #0x50 
    bl sub_8013790
    pop {r2}
    add r0, r0, r2
    beq loc_80128D6
    mov r1, #0
    bl sub_800E2FC
loc_80128D6:
    ldrb r0, [r4,#9]
    mov r1, #4
    tst r0, r1
    beq loc_80128E8
    ldrb r0, [r5,#0x16]
    mov r1, #6
    mov r2, #1
    bl sub_800AB46
loc_80128E8:
    ldrh r0, [r7,#0x14]
    bl loc_800B79A
    ldrb r0, [r4,#0xb]
    add sp, sp, #0x1c
    pop {r4,r6,r7,pc}
dword_80128F4:    .word 0x10000
dword_80128F8:    .word 0xFFFF
// end of function sub_80127C0

    push {r4,r6,r7,lr}
    sub sp, sp, #4
    str r1, [sp]
    add r4, r0, #0
    ldrb r6, [r5,#0x12]
    ldrb r7, [r5,#0x13]
    add r0, r6, #0
    add r1, r7, #0
    bl sub_800C90A
    tst r0, r0
    beq loc_8012950
    ldrb r1, [r0,#2]
    cmp r1, #6
    bne loc_8012998
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #7
    beq loc_8012928
    cmp r0, #0x13
    bne loc_8012998
loc_8012928:
    ldr r0, [sp]
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_8012998
    mov r2, #1
    tst r1, r2
    bne loc_8012998
    ldrb r1, [r0,#6]
    cmp r1, #3
    bne loc_8012998
    add r0, r6, #0
    add r1, r7, #0
    mov r2, #2
    bl object_setPanelType
    mov r0, #1
    b loc_8012952
loc_8012950:
    mov r0, #0
loc_8012952:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
.thumb
sub_8012956:
    ldrb r3, [r0]
    tst r3, r3
    bne loc_8012998
    ldrb r3, [r0,#2]
    add r3, #1
    strb r3, [r0,#2]
    cmp r3, #0xc
    ble loc_801296C
    mov r3, #1
    strb r3, [r0]
    b loc_8012998
loc_801296C:
    ldrb r3, [r0,#1]
    add r2, r3, r3
    add r3, #1
    cmp r3, #3
    blt loc_8012978
    mov r3, #0
loc_8012978:
    strb r3, [r0,#1]
    add r2, #4
    strh r1, [r0,r2]
    ldrh r1, [r0,#4]
    ldrh r2, [r0,#6]
    orr r1, r2
    ldrh r2, [r0,#8]
    orr r1, r2
    mov r2, #0x22 
    and r1, r2
    cmp r1, #0x22 
    bne loc_8012998
    mov r3, #1
    strb r3, [r0]
    mov r0, #1
    mov pc, lr
loc_8012998:
    mov r0, #0
    mov pc, lr
// end of function sub_8012956

.thumb
sub_801299C:
    push {lr}
    mov r1, #0x10  // numWords
    bl CpuSet_ZeroFillWord
    pop {pc}
// end of function sub_801299C

    push {r7,lr}
    strh r0, [r7,#0x14]
    bl sub_8021AA4
    ldr r1, [r0,#0x10]
    str r1, [r7,#0xc]
    ldrb r1, [r0,#0xa]
    lsl r1, r1, #0x10
    ldrh r2, [r0,#0x1a]
    add r1, r1, r2
    str r1, [r7,#8]
    ldrb r1, [r0,#0x14]
    strb r1, [r7,#5]
    mov r1, #0
    strh r1, [r7,#6]
    ldrb r1, [r0,#0xc]
    strb r1, [r7,#3]
    ldrb r1, [r0,#4]
    ldrb r2, [r0,#6]
    ldr r3, [pc, #0x80129e0-0x80129cc-4] // =dword_80129E4
    ldrb r2, [r3,r2]
    orr r1, r2
    strb r1, [r7,#2]
    ldrb r0, [r0,#0xb]
    pop {r7,pc}
    .word 0
    .byte 0, 0, 0, 0
off_80129E0:    .word dword_80129E4
dword_80129E4:    .word 0x0
    .word 0x408000, 0x1020, 0x0
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r1, [pc, #0x8012a24-0x80129fc-4] // =off_8012A28
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r7, sp, #0
    bl sub_800CEA0
    add r7, r0, #0
    beq loc_8012A20
    bl sub_8001532
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8012A20:
    add sp, sp, #0x18
    pop {r7,pc}
off_8012A24:    .word off_8012A28
off_8012A28:    .word 0x30
    .word 0xF880080, 0x10, 0xF8800A0
.thumb
sub_8012A38:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    add r5, r0, #0
    str r1, [sp]
    str r2, [sp,#4]
    str r3, [sp,#8]
    mov r6, #0
    add r0, r1, #0
    bl sub_8021AA4
    add r4, r0, #0
    ldrb r1, [r4,#9]
    mov r2, #2
    tst r1, r2
    beq loc_8012AB4
    ldrb r0, [r5,#0x16]
    bl sub_8015B54
    cmp r0, #2
    bne loc_8012A64
    mov r6, #1
    b loc_8012AAC
loc_8012A64:
    cmp r0, #3
    bne loc_8012A6C
    mov r6, #2
    b loc_8012AAC
loc_8012A6C:
    ldr r0, [sp]
    ldr r1, [sp,#8]
    bl sub_8012AFA
    tst r0, r0
    beq loc_8012A7C
    mov r6, #4
    b loc_8012AAC
loc_8012A7C:
    ldr r0, [sp]
    ldr r1, [sp,#8]
    bl sub_8012B4E
    tst r0, r0
    beq loc_8012A8C
    mov r6, #6
    b loc_8012AAC
loc_8012A8C:
    ldr r0, [sp]
    ldr r1, [sp,#8]
    bl sub_8012BA2
    tst r0, r0
    beq loc_8012A9C
    mov r6, #6
    b loc_8012AAC
loc_8012A9C:
    ldr r0, [sp]
    bl sub_8012ABC
    tst r0, r0
    beq loc_8012AAA
    mov r6, #4
    b loc_8012AAC
loc_8012AAA:
    b loc_8012AB4
loc_8012AAC:
    ldr r0, [sp,#4]
    ldr r1, [pc, #0x8012de4-0x8012aae-2] // =0x8000
    orr r0, r1
    str r0, [sp,#4]
loc_8012AB4:
    ldr r0, [sp,#4]
    add r1, r6, #0
    add sp, sp, #0xc
    pop {r4-r7,pc}
// end of function sub_8012A38

.thumb
sub_8012ABC:
    push {r6,r7,lr}
    mov r7, #0
    add r6, r0, #0
    bl sub_802D234
    cmp r0, #1
    beq loc_8012AF6
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0x17
    blt loc_8012AF6
    cmp r0, #0x18
    bgt loc_8012AF6
    mov r7, #0
    add r0, r6, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_8012AF6
    mov r2, #1
    tst r1, r2
    bne loc_8012AF6
    ldrb r1, [r0,#6]
    cmp r1, #0xa
    bne loc_8012AF6
    mov r7, #1
loc_8012AF6:
    add r0, r7, #0
    pop {r6,r7,pc}
// end of function sub_8012ABC

.thumb
sub_8012AFA:
    push {r6,r7,lr}
    add r6, r0, #0
    mov r7, #0
    add r4, r1, #0
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #7
    beq loc_8012B1A
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #7
    beq loc_8012B1A
    cmp r0, #0x13
    bne loc_8012B4A
loc_8012B1A:
    mov r7, #0
    add r0, r6, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_8012B4A
    mov r2, #1
    tst r1, r2
    bne loc_8012B4A
    ldrb r1, [r0,#4]
    cmp r1, #4
    bne loc_8012B4A
    cmp r4, #0
    bne loc_8012B48
    ldr r1, [r5,#0x58]
    ldrb r0, [r1,#0x1d]
    cmp r0, #2
    bne loc_8012B4A
    ldrb r0, [r1,#0x1e]
    cmp r0, #1
    bne loc_8012B4A
loc_8012B48:
    mov r7, #1
loc_8012B4A:
    add r0, r7, #0
    pop {r6,r7,pc}
// end of function sub_8012AFA

.thumb
sub_8012B4E:
    push {r6,r7,lr}
    add r6, r0, #0
    mov r7, #0
    add r4, r1, #0
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #6
    beq loc_8012B6E
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #6
    beq loc_8012B6E
    cmp r0, #0x12
    bne loc_8012B9E
loc_8012B6E:
    mov r7, #0
    add r0, r6, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_8012B9E
    mov r2, #1
    tst r1, r2
    bne loc_8012B9E
    ldrb r1, [r0,#4]
    cmp r1, #2
    bne loc_8012B9E
    cmp r4, #0
    bne loc_8012B9C
    ldr r1, [r5,#0x58]
    ldrb r0, [r1,#0x1d]
    cmp r0, #2
    bne loc_8012B9E
    ldrb r0, [r1,#0x1e]
    cmp r0, #1
    bne loc_8012B9E
loc_8012B9C:
    mov r7, #1
loc_8012B9E:
    add r0, r7, #0
    pop {r6,r7,pc}
// end of function sub_8012B4E

.thumb
sub_8012BA2:
    push {r6,r7,lr}
    add r6, r0, #0
    mov r7, #0
    add r4, r1, #0
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0xb
    bne loc_8012BE4
    mov r7, #0
    add r0, r6, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_8012BE4
    mov r2, #1
    tst r1, r2
    bne loc_8012BE4
    ldrb r1, [r0,#6]
    cmp r1, #5
    bne loc_8012BE4
    cmp r4, #0
    bne loc_8012BE2
    ldr r1, [r5,#0x58]
    ldrb r0, [r1,#0x1d]
    cmp r0, #2
    bne loc_8012BE4
    ldrb r0, [r1,#0x1e]
    cmp r0, #1
    bne loc_8012BE4
loc_8012BE2:
    mov r7, #1
loc_8012BE4:
    add r0, r7, #0
    pop {r6,r7,pc}
// end of function sub_8012BA2

    push {r6,r7,lr}
    mov r7, #0
    add r6, r0, #0
    add r4, r1, #0
    bl sub_802D234
    cmp r0, #1
    beq loc_8012C30
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0xb
    blt loc_8012C30
    cmp r0, #0x16
    bgt loc_8012C30
    mov r7, #0
    add r0, r6, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_8012C30
    mov r2, #1
    tst r1, r2
    bne loc_8012C30
    ldrb r1, [r0,#6]
    cmp r1, #0xa
    bne loc_8012C30
    cmp r4, #0
    bne loc_8012C2E
    ldr r0, [r5,#0x58]
    ldrb r0, [r0,#0x1d]
    cmp r0, #2
    bne loc_8012C30
loc_8012C2E:
    mov r7, #1
loc_8012C30:
    add r0, r7, #0
    pop {r6,r7,pc}
.thumb
sub_8012C34:
    ldr r2, [pc, #0x8012de8-0x8012c34-4] // =0x4000
    mov r3, #2
    tst r1, r3
    beq loc_8012C3E
    orr r0, r2
loc_8012C3E:
    ldr r2, [pc, #0x8012dec-0x8012c3e-2] // =0x2000
    mov r3, #4
    tst r1, r3
    beq locret_8012C48
    orr r0, r2
locret_8012C48:
    mov pc, lr
// end of function sub_8012C34

.thumb
sub_8012C4A:
    push {r4,lr}
    add r4, r1, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #2
    tst r1, r2
    beq loc_8012C78
    mov r2, #1
    tst r1, r2
    bne loc_8012C78
    ldrb r1, [r0,#6]
    cmp r1, #0xa
    bne loc_8012C78
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #4
    beq loc_8012C74
    cmp r0, #0x10
    bne loc_8012C78
loc_8012C74:
    ldr r0, [pc, #0x8012df0-0x8012c74-4] // =0x1000
    orr r4, r0
loc_8012C78:
    add r0, r4, #0
    pop {r4,pc}
// end of function sub_8012C4A

.thumb
sub_8012C7C:
    push {r4,lr}
    add r4, r0, #0
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #2
    beq loc_8012C8E
    cmp r0, #0xe
    bne loc_8012C94
loc_8012C8E:
    tst r4, r4
    bne loc_8012CAA
    b loc_8012CA2
loc_8012C94:
    cmp r0, #3
    beq loc_8012C9C
    cmp r0, #0xf
    bne loc_8012CA2
loc_8012C9C:
    tst r4, r4
    bne loc_8012CAE
    b loc_8012CA2
loc_8012CA2:
    mov r0, #0
    pop {r4,pc}
    mov r0, #0xff
    pop {r4,pc}
loc_8012CAA:
    ldr r0, [pc, #0x8012de8-0x8012caa-2] // =0x4000
    pop {r4,pc}
loc_8012CAE:
    mov r0, #0x28 
    pop {r4,pc}
// end of function sub_8012C7C

.thumb
sub_8012CB2:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x14
    mov r6, sp
    ldrb r3, [r5,#0x16]
    mov r2, #1
    eor r3, r2
    mov r1, #0
    mov r2, #0xba
    add r0, r6, #0
    bl object_getEnemyByNameRange
    add r4, r0, #0
    lsl r0, r0, #2
    add r0, r0, r6
    ldrb r3, [r5,#0x16]
    mov r2, #1
    eor r3, r2
    ldr r1, [pc, #0x8012df4-0x8012cd4-4] // =0x100
    ldr r2, [pc, #0x8012df8-0x8012cd6-2] // =0x1C1
    bl object_getEnemyByNameRange
    add r4, r4, r0
    beq loc_8012D20
    mov r0, #0x10
    add r0, r0, r6
    bl sub_8012D24
    add r6, #0x10
    mov r4, #3
loc_8012CEC:
    push {r6,r7}
    ldrb r0, [r6]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r2, #0x10
    push {r0-r3}
    mov r0, #0x1e
    mov r1, #0x14
    bl sub_8012642
    mov r6, #0x8a
    lsl r6, r6, #0x10
    orr r6, r0
    pop {r0-r3}
    mov r7, #0
    bl sub_80C7F20
    pop {r6,r7}
    add r6, #1
    sub r4, #1
    bne loc_8012CEC
    mov r0, #2
    mov r1, #0x14
    bl sub_80302A8
loc_8012D20:
    add sp, sp, #0x14
    pop {r4,r6,r7,pc}
// end of function sub_8012CB2

.thumb
sub_8012D24:
    push {r4-r7,lr}
    add r7, r0, #0
    mov r0, #0
    str r0, [r7]
    add r3, r4, #0
loc_8012D2E:
    ldr r2, [r6]
    ldrb r0, [r2,#0x12]
    ldrb r1, [r2,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7]
    add r7, #1
    add r6, #4
    sub r3, #1
    bne loc_8012D2E
    cmp r4, #3
    beq loc_8012D5C
    cmp r4, #2
    beq loc_8012D54
    sub r7, #1
    ldrb r0, [r7]
    strb r0, [r7,#1]
    strb r0, [r7,#2]
    b loc_8012D5E
loc_8012D54:
    sub r7, #2
    ldrb r0, [r7,#1]
    strb r0, [r7,#2]
    b loc_8012D5E
loc_8012D5C:
    sub r7, #3
loc_8012D5E:
    bl sub_8012D70
    pop {r4-r7,pc}
// end of function sub_8012D24

    push {lr}
    mov r0, #0
    mov r1, #1
    bl sub_8012D8C
    pop {pc}
.thumb
sub_8012D70:
    push {lr}
    mov r0, #0
    mov r1, #1
    bl sub_8012D8C
    mov r0, #0
    mov r1, #2
    bl sub_8012D8C
    mov r0, #1
    mov r1, #2
    bl sub_8012D8C
    pop {pc}
// end of function sub_8012D70

.thumb
sub_8012D8C:
    push {r4,r6,lr}
    add r4, r0, #0
    add r6, r1, #0
    ldrb r0, [r7,r4]
    ldrb r1, [r7,r6]
    cmp r0, r1
    bne locret_8012DB6
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    bl sub_801BB1C
    bl sub_8012DB8
    strb r0, [r7,r6]
    ldrb r0, [r7,r4]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    bl sub_801BB46
locret_8012DB6:
    pop {r4,r6,pc}
// end of function sub_8012D8C

.thumb
sub_8012DB8:
    push {lr}
    ldr r3, [pc, #0x8012dd0-0x8012dba-2] // =dword_8012DD4
    bl sub_81096FA
    bl sub_8015C94
// end of function sub_8012DB8

    cmp r0, #0
    beq locret_8012DCC
    lsl r1, r1, #4
    orr r0, r1
locret_8012DCC:
    pop {pc}
    .byte 0, 0
off_8012DD0:    .word dword_8012DD4
dword_8012DD4:    .word 0x20, 0x80, 0x0
    .word 0xA0
dword_8012DE4:    .word 0x8000
dword_8012DE8:    .word 0x4000
off_8012DEC:    .word 0x2000
off_8012DF0:    .word 0x1000
off_8012DF4:    .word 0x100
dword_8012DF8:    .word 0x1C3
.thumb
sub_8012DFC:
    push {r4,r6,lr}
    add r7, r0, #0
    bl sub_8010022
    add r4, r0, #0
    bl battle_isBattleOver
    tst r0, r0
    bne loc_8012E64
    add r0, r7, #0
    mov r1, #0x2c 
    bl sub_80136CC
    cmp r0, #0x17
    blt loc_8012E1E
    cmp r0, #0x18
    ble locret_8012E62
loc_8012E1E:
    ldr r1, [pc, #0x8012e70-0x8012e1e-2] // =dword_2036820
    mov r3, #8
    mul r3, r7
    add r1, r1, r3
    ldrh r6, [r1,#2]
    add r3, r6, #0
    ldrh r2, [r4,#0x22]
    strh r2, [r4,#0x28]
    strh r3, [r4,#0x22]
    mvn r0, r2
    and r0, r3
    strh r0, [r4,#0x24]
    mvn r0, r3
    and r0, r2
    strh r0, [r4,#0x26]
    bl battle_isTimeStop
    bne loc_8012E4E
    mov r0, #0
    strh r0, [r4,#0x30]
    strh r0, [r4,#0x2a]
    strh r0, [r4,#0x2c]
    strh r0, [r4,#0x2e]
    b locret_8012E62
loc_8012E4E:
    add r3, r6, #0
    ldrh r2, [r4,#0x2a]
    strh r2, [r4,#0x30]
    strh r3, [r4,#0x2a]
    mvn r0, r2
    and r0, r3
    strh r0, [r4,#0x2c]
    mvn r0, r3
    and r0, r2
    strh r0, [r4,#0x2e]
locret_8012E62:
    pop {r4,r6,pc}
loc_8012E64:
    mov r1, #0
    strh r1, [r4,#0x22]
    strh r1, [r4,#0x28]
    strh r1, [r4,#0x24]
    strh r1, [r4,#0x26]
    pop {r4,r6,pc}
off_8012E70:    .word dword_2036820
// end of function sub_8012DFC

.thumb
sub_8012E74:
    push {r4,r6,lr}
    ldr r4, [r5,#0x58]
    bl battle_isBattleOver
    tst r0, r0
    bne loc_8012E90
    bl battle_isPaused
    bne locret_8012E8E
    bl sub_8012EA0
    bl sub_8012EBC
locret_8012E8E:
    pop {r4,r6,pc}
loc_8012E90:
    mov r1, #0
    strh r1, [r4,#0x22]
    strh r1, [r4,#0x28]
    strh r1, [r4,#0x24]
    strh r1, [r4,#0x26]
    pop {r4,r6,pc}
    .word dword_2036820
// end of function sub_8012E74

.thumb
sub_8012EA0:
    push {lr}
    bl sub_8012FC8
    pop {pc}
// end of function sub_8012EA0

.thumb
sub_8012EA8:
    push {lr}
    ldr r3, [r5,#0x58]
    mov r0, #0
    strb r0, [r3,#0x1d]
    strb r0, [r3,#0x1b]
    strb r0, [r3,#0x1e]
    ldr r0, [pc, #0x8012fac-0x8012eb4-4] // =0x60000
    bl sub_800FFEE
    pop {pc}
// end of function sub_8012EA8

.thumb
sub_8012EBC:
    push {r4,r6,r7,lr}
    ldr r4, [r5,#0x58]
    bl battle_isTimeStop
    bne locret_8012F3C
    bl sub_8012F3E
    beq loc_8012F34
    ldrb r0, [r4,#0x1e]
    bl sub_8012F62
    add r7, r0, #0
    bl sub_800FFFE
    mov r3, #0
    ldr r1, [pc, #0x8012fac-0x8012eda-2] // =0x60000
    tst r0, r1
    bne loc_8012EE2
    b loc_8012F34
loc_8012EE2:
    ldr r1, [pc, #0x8012fb0-0x8012ee2-2] // =0x20000
    tst r0, r1
    beq loc_8012EF8
    ldrb r0, [r4,#0x1e]
    mov r1, #1
    strb r1, [r4,#0x1e]
    cmp r0, #1
    beq loc_8012F14
    cmp r0, #0
    bne loc_8012F0E
    b loc_8012F14
loc_8012EF8:
    ldr r1, [pc, #0x8012fb4-0x8012ef8-4] // =0x40000
    tst r0, r1
    beq loc_8012F14
    ldrb r0, [r4,#0x1e]
    mov r1, #2
    strb r1, [r4,#0x1e]
    cmp r0, #2
    beq loc_8012F14
    cmp r0, #0
    bne loc_8012F0E
    b loc_8012F14
loc_8012F0E:
    mov r0, #0
    strb r0, [r4,#0x1b]
    strb r0, [r4,#0x1d]
loc_8012F14:
    ldrb r0, [r4,#0x1b]
    add r0, #1
    strb r0, [r4,#0x1b]
    cmp r0, #0xa
    blt loc_8012F30
    mov r3, #1
    cmp r0, r7
    blt loc_8012F30
    strb r7, [r4,#0x1b]
    mov r3, #2
    b loc_8012F30
    mov r0, #0
    strb r0, [r4,#0x1b]
    mov r3, #0
loc_8012F30:
    strb r3, [r4,#0x1d]
    pop {r4,r6,r7,pc}
loc_8012F34:
    mov r0, #0
    strb r0, [r4,#0x1e]
    strb r0, [r4,#0x1b]
    strb r0, [r4,#0x1d]
locret_8012F3C:
    pop {r4,r6,r7,pc}
// end of function sub_8012EBC

.thumb
sub_8012F3E:
    push {lr}
    bl sub_800FFFE
    ldr r1, [pc, #0x8012fb8-0x8012f44-4] // =0x1000002F
    tst r0, r1
    bne loc_8012F5E
    bl sub_801032C
    ldr r1, [pc, #0x8012fbc-0x8012f4e-2] // =0x200
    tst r0, r1
    bne loc_8012F5E
    mov r1, #0x10
    tst r0, r1
    beq loc_8012F5E
    mov r0, #1
    pop {pc}
loc_8012F5E:
    mov r0, #0
    pop {pc}
// end of function sub_8012F3E

.thumb
sub_8012F62:
    push {r4,r7,lr}
    ldr r4, [r5,#0x58]
    mov r7, #7
    cmp r0, #2
    beq loc_8012F90
    mov r7, #5
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0xb
    blt loc_8012F90
    cmp r0, #0x18
    bgt loc_8012F90
    bl sub_8010004
    ldr r1, [pc, #0x8012fc0-0x8012f80-4] // =0xFFFF
    beq loc_8012F90
    bl sub_8021AA4
    ldrb r0, [r0,#6]
    cmp r0, #0xa
    bne loc_8012F90
    mov r7, #0x11
loc_8012F90:
    mov r1, #3
    bl sub_8013774
    lsl r3, r0, #1
    mov r0, #0xff
    ldrb r1, [r4,r7]
    cmp r1, #0xff
    beq locret_8012FAA
    mov r2, #0xa
    mul r1, r2
    add r1, r1, r3
    ldr r2, [pc, #0x8012fc4-0x8012fa6-2] // =dword_8020404
    ldrh r0, [r2,r1]
locret_8012FAA:
    pop {r4,r7,pc}
dword_8012FAC:    .word 0x60000
dword_8012FB0:    .word 0x20000
dword_8012FB4:    .word 0x40000
dword_8012FB8:    .word 0x1000002F
off_8012FBC:    .word 0x200
dword_8012FC0:    .word 0xFFFF
off_8012FC4:    .word dword_8020404
// end of function sub_8012F62

.thumb
sub_8012FC8:
    push {r4,r6,r7,lr}
    ldr r4, [r5,#0x58]
    bl sub_800FFFE
    add r6, r0, #0
    bl battle_isTimeStop
    beq loc_8013008
    ldrb r0, [r5,#0x16]
    bl sub_800A772
    tst r0, r0
    bne loc_8012FE4
    pop {r4,r6,r7,pc}
loc_8012FE4:
    ldr r1, [pc, #0x80133b0-0x8012fe4-4] // =0x800
    tst r1, r6
    bne locret_8013006
    bl sub_8010004
    add r1, r0, #1
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    beq locret_8013006
    ldrh r0, [r4,#0x2c]
    mov r1, #1
    tst r0, r1
    bne loc_8013000
    b locret_8013006
loc_8013000:
    ldr r0, [pc, #0x80133b0-0x8013000-4] // =0x800
    bl sub_800FFE4
locret_8013006:
    pop {r4,r6,r7,pc}
loc_8013008:
    bl sub_800A8F8
    beq loc_8013044
    ldrh r1, [r4,#0x24]
    mov r2, #4
    tst r1, r2
    beq loc_8013044
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    ldrh r0, [r0,#0x28]
    ldr r1, [pc, #0x80133b4-0x801301e-2] // =0x1500
    cmp r0, r1
    bge loc_801303C
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    ldrb r1, [r5,#0x16]
    cmp r0, r1
    bne loc_8013044
    mov r0, #0x69 
    bl sound_play
    bl sub_801EC44
    b loc_8013044
loc_801303C:
    ldr r0, [pc, #0x80133b8-0x801303c-4] // =unk_2000000
    bl sub_800FFE4
    b locret_8013234
loc_8013044:
    bl sub_802D234
    cmp r0, #1
    beq loc_801309C
    ldrh r7, [r4,#0x22]
    bl sub_801032C
    ldr r1, [pc, #0x80133bc-0x8013052-2] // =0x400
    tst r0, r1
    bne loc_8013072
    bl battle_getFlags
    mov r1, #2
    tst r0, r1
    beq loc_801309C
    ldrh r0, [r4,#0x24]
    ldr r1, [pc, #0x80133c0-0x8013064-4] // =0x300
    tst r0, r1
    beq loc_801309C
    mov r0, #0x10
    bl battle_setFlags
    b locret_8013234
loc_8013072:
    ldrh r7, [r4,#0x24]
    ldr r1, [pc, #0x80133c0-0x8013074-4] // =0x300
    tst r7, r1
    beq loc_801309C
    ldrb r0, [r5,#0x17]
    cmp r0, #0
    beq loc_801308E
    ldr r0, [pc, #0x80133c4-0x8013080-4] // =0x1000
    bl sub_800FFE4
    ldr r0, [pc, #0x80133c8-0x8013086-2] // =0x2000
    bl sub_800FFEE
    b loc_801309C
loc_801308E:
    ldr r0, [pc, #0x80133c8-0x801308e-2] // =0x2000
    bl sub_800FFE4
    ldr r0, [pc, #0x80133c4-0x8013094-4] // =0x1000
    bl sub_800FFEE
    b loc_801309C
loc_801309C:
    ldrh r7, [r4,#0x22]
    bl sub_800FFFE
    ldr r1, [pc, #0x80133cc-0x80130a2-2] // =0x60000
    tst r0, r1
    bne loc_80130D0
    bl sub_801336C
    beq loc_80130BC
    mov r1, #1
    tst r7, r1
    beq loc_80130BC
    ldr r0, [pc, #0x80133d0-0x80130b4-4] // =0x20000
    bl sub_800FFE4
    b loc_8013130
loc_80130BC:
    bl sub_8013396
    beq loc_80130D0
    mov r1, #2
    tst r7, r1
    beq loc_8013130
    ldr r0, [pc, #0x80133d4-0x80130c8-4] // =0x40000
    bl sub_800FFE4
    b loc_8013130
loc_80130D0:
    ldr r1, [pc, #0x80133d0-0x80130d0-4] // =0x20000
    tst r0, r1
    beq loc_80130FA
    ldrh r0, [r4,#0x24]
    mov r1, #2
    tst r0, r1
    beq loc_80130EC
    ldr r0, [pc, #0x80133d0-0x80130de-2] // =0x20000
    bl sub_800FFEE
    ldr r0, [pc, #0x80133d4-0x80130e4-4] // =0x40000
    bl sub_800FFE4
    b loc_8013130
loc_80130EC:
    bl sub_801336C
    beq loc_801312A
    mov r0, #1
    tst r7, r0
    beq loc_801312A
    b loc_8013130
loc_80130FA:
    ldr r1, [pc, #0x80133d4-0x80130fa-2] // =0x40000
    tst r0, r1
    beq loc_8013130
    bl sub_801336C
    beq loc_801311C
    ldrh r0, [r4,#0x24]
    mov r1, #1
    tst r0, r1
    beq loc_801311C
    ldr r0, [pc, #0x80133d4-0x801310e-2] // =0x40000
    bl sub_800FFEE
    ldr r0, [pc, #0x80133d0-0x8013114-4] // =0x20000
    bl sub_800FFE4
    b loc_8013130
loc_801311C:
    bl sub_8013396
    beq loc_801312A
    mov r0, #2
    tst r7, r0
    beq loc_801312A
    b loc_8013130
loc_801312A:
    ldr r0, [pc, #0x80133cc-0x801312a-2] // =0x60000
    bl sub_800FFEE
loc_8013130:
    ldrb r0, [r4,#8]
    cmp r0, #0xff
    beq loc_8013176
    ldrb r0, [r4,#0x15]
    tst r0, r0
    bne loc_8013176
    ldrh r2, [r4,#0x24]
    ldrb r0, [r4,#0x13]
    tst r0, r0
    bne loc_801314E
    mov r1, #2
    tst r2, r1
    beq loc_8013176
    mov r0, #8
    strb r0, [r4,#0x13]
loc_801314E:
    mov r1, #0x20 
    ldrb r3, [r5,#0x17]
    tst r3, r3
    beq loc_8013158
    mov r1, #0x10
loc_8013158:
    tst r2, r1
    beq loc_801316C
    ldrh r2, [r4,#0x22]
    mov r1, #2
    tst r1, r2
    beq loc_801316C
    mov r0, #0x10
    bl sub_800FFE4
    b loc_8013172
loc_801316C:
    sub r0, #1
    strb r0, [r4,#0x13]
    b loc_8013176
loc_8013172:
    mov r0, #0
    strb r0, [r4,#0x13]
loc_8013176:
    ldrb r1, [r4,#6]
    cmp r1, #0xff
    beq loc_80131D8
    mov r2, #3
    tst r2, r6
    bne loc_80131D8
    cmp r1, #4
    beq loc_801318E
    cmp r1, #0x2c 
    beq loc_801318E
    cmp r1, #3
    bne loc_80131B4
loc_801318E:
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0x14
    beq loc_801319C
    cmp r0, #0x16
    bne loc_80131A6
loc_801319C:
    bl sub_800FFFE
    mov r1, #0x10
    tst r0, r1
    bne loc_80131D8
loc_80131A6:
    bl sub_800FFFE
    ldr r1, [pc, #0x80133d8-0x80131aa-2] // =0x10000
    tst r0, r1
    bne loc_80131D8
    ldrh r0, [r4,#0x22]
    b loc_80131BE
loc_80131B4:
    ldrh r0, [r4,#0x24]
    ldrb r1, [r4,#7]
    cmp r1, #0xff
    beq loc_80131BE
    ldrh r0, [r4,#0x26]
loc_80131BE:
    mov r1, #2
    tst r0, r1
    beq loc_80131D8
    mov r0, #1
    ldrb r1, [r4,#0x1e]
    cmp r1, #2
    bne loc_80131D4
    ldrb r1, [r4,#0x1d]
    cmp r1, #2
    bne loc_80131D4
    mov r0, #2
loc_80131D4:
    bl sub_800FFE4
loc_80131D8:
    bl sub_802D234
    cmp r0, #9
    bne loc_80131EE
    ldrh r0, [r4,#0x24]
    mov r1, #1
    tst r0, r1
    beq loc_80131EE
    ldr r0, [pc, #0x80133dc-0x80131e8-4] // =0x10000000
    bl sub_800FFE4
loc_80131EE:
    ldrb r0, [r5,#0x16]
    bl sub_800A772
    tst r0, r0
    beq locret_8013234
    mov r1, #0xc
    tst r1, r6
    bne locret_8013234
    bl sub_8010004
    ldr r1, [pc, #0x80133e0-0x8013202-2] // =0xFFFF
    cmp r0, r1
    beq locret_8013234
    bl sub_801336C
    bne loc_8013218
    ldrh r0, [r4,#0x24]
    mov r1, #1
    tst r0, r1
    bne loc_8013220
    b locret_8013234
loc_8013218:
    ldrh r0, [r4,#0x26]
    mov r1, #1
    tst r0, r1
    beq locret_8013234
loc_8013220:
    mov r0, #4
    ldrb r1, [r4,#0x1e]
    cmp r1, #1
    bne loc_8013230
    ldrb r1, [r4,#0x1d]
    cmp r1, #2
    bne loc_8013230
    mov r0, #8
loc_8013230:
    bl sub_800FFE4
locret_8013234:
    pop {r4,r6,r7,pc}
// end of function sub_8012FC8

.thumb
sub_8013236:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    ldr r1, [pc, #0x80133e4-0x801323c-4] // =0x190
    cmp r0, r1
    blt loc_8013244
    b loc_8013360
loc_8013244:
    bl sub_8021AA4
    add r7, r0, #0
    ldrb r4, [r7,#6]
    mov r1, #0x2c 
    bl sub_8013774
    add r6, r0, #0
    ldrb r1, [r7,#9]
    cmp r6, #2
    bne loc_801326C
    cmp r4, #0xa
    bne loc_801326C
    mov r0, #2
    tst r0, r1
    beq loc_801326C
    mov r0, #1
    tst r0, r1
    bne loc_801326C
    b loc_8013366
loc_801326C:
    cmp r6, #3
    beq loc_8013274
    cmp r6, #0xf
    bne loc_8013290
loc_8013274:
    ldr r2, [sp]
    cmp r2, #0x4c 
    blt loc_801327E
    cmp r2, #0x4f 
    ble loc_8013282
loc_801327E:
    cmp r4, #5
    bne loc_8013290
loc_8013282:
    mov r0, #2
    tst r0, r1
    beq loc_8013290
    mov r0, #1
    tst r0, r1
    bne loc_8013290
    b loc_8013366
loc_8013290:
    cmp r6, #0xb
    blt loc_801329E
    cmp r6, #0x16
    bgt loc_801329E
    cmp r4, #0xa
    bne loc_801329E
    b loc_8013366
loc_801329E:
    cmp r6, #7
    beq loc_80132A6
    cmp r6, #0x13
    bne loc_80132BA
loc_80132A6:
    ldrb r3, [r7,#6]
    cmp r3, #3
    bne loc_80132BA
    mov r0, #2
    tst r0, r1
    beq loc_80132BA
    mov r0, #1
    tst r0, r1
    bne loc_80132BA
    b loc_8013366
loc_80132BA:
    cmp r6, #6
    beq loc_80132C2
    cmp r6, #0x12
    bne loc_80132D6
loc_80132C2:
    ldrb r3, [r7,#6]
    cmp r3, #1
    bne loc_80132D6
    mov r0, #2
    tst r0, r1
    beq loc_80132D6
    mov r0, #1
    tst r0, r1
    bne loc_80132D6
    b loc_8013366
loc_80132D6:
    cmp r6, #9
    beq loc_80132DE
    cmp r6, #0x15
    bne loc_80132F0
loc_80132DE:
    cmp r4, #9
    bne loc_80132F0
    mov r0, #2
    tst r0, r1
    beq loc_80132F0
    mov r0, #1
    tst r0, r1
    bne loc_80132F0
    b loc_8013366
loc_80132F0:
    cmp r6, #5
    beq loc_80132F8
    cmp r6, #0x11
    bne loc_801330C
loc_80132F8:
    ldrb r3, [r7,#6]
    cmp r3, #0
    bne loc_801330C
    mov r0, #2
    tst r0, r1
    beq loc_801330C
    mov r0, #1
    tst r0, r1
    bne loc_801330C
    b loc_8013366
loc_801330C:
    bl sub_800F49E
    cmp r0, #0xff
    beq loc_8013360
    add r6, r0, #0
    ldr r4, [pc, #0x80133e8-0x8013316-2] // =byte_8021369
    ldrb r1, [r7,#9]
    mov r0, #2
    tst r0, r1
    beq loc_8013338
    mov r0, #1
    tst r0, r1
    bne loc_8013360
    mov r1, #0x29 
    bl sub_8013774
    ldrb r3, [r7,#6]
    cmp r0, #5
    bne loc_8013338
    cmp r3, #0
    bne loc_8013360
    b loc_801335A
loc_8013338:
    cmp r0, #6
    bne loc_8013344
    cmp r3, #1
    bne loc_8013360
    add r4, #1
    b loc_801335A
loc_8013344:
    cmp r0, #7
    bne loc_8013350
    cmp r3, #3
    bne loc_8013360
    add r4, #2
    b loc_801335A
loc_8013350:
    cmp r0, #0xb
    bne loc_8013360
    cmp r3, #5
    bne loc_8013360
    add r4, #3
loc_801335A:
    ldrb r0, [r4]
    cmp r6, r0
    bge loc_8013366
loc_8013360:
    mov r0, #0
    add sp, sp, #4
    pop {r4,r6,r7,pc}
loc_8013366:
    mov r0, #1
    add sp, sp, #4
    pop {r4,r6,r7,pc}
// end of function sub_8013236

.thumb
sub_801336C:
    push {lr}
    ldr r1, [r5,#0x58]
    ldrb r0, [r1,#5]
    cmp r0, #0xff
    bne loc_801337C
    ldrb r0, [r1,#0x11]
    cmp r0, #0xff
    beq loc_8013392
loc_801337C:
    bl sub_8012F3E
    beq loc_8013392
    bl sub_8010004
    ldr r1, [pc, #0x80133e0-0x8013386-2] // =0xFFFF
    cmp r0, r1
    beq loc_8013392
    bl sub_8013236
    pop {pc}
loc_8013392:
    mov r0, #0
    pop {pc}
// end of function sub_801336C

.thumb
sub_8013396:
    push {lr}
    ldr r1, [r5,#0x58]
    ldrb r0, [r1,#7]
    cmp r0, #0xff
    beq loc_80133AA
    bl sub_8012F3E
    beq loc_80133AA
    mov r0, #1
    pop {pc}
loc_80133AA:
    mov r0, #0
    pop {pc}
    .byte 0, 0
off_80133B0:    .word 0x800
off_80133B4:    .word 0x1500
off_80133B8:    .word unk_2000000
off_80133BC:    .word 0x400
off_80133C0:    .word 0x300
off_80133C4:    .word 0x1000
off_80133C8:    .word 0x2000
dword_80133CC:    .word 0x60000
dword_80133D0:    .word 0x20000
dword_80133D4:    .word 0x40000
dword_80133D8:    .word 0x10000
dword_80133DC:    .word 0x10000000
dword_80133E0:    .word 0xFFFF
off_80133E4:    .word 0x190
off_80133E8:    .word byte_8021369
// end of function sub_8013396

.thumb
sub_80133EC:
    push {r5,r6,lr}
    mov r0, #0x4 // (dword_8013410 - 0x801340c)
    ldr r6, [pc, #0x8013408-0x80133f0-4] // =off_801340C
    ldr r6, [r6,r0]
    mov r5, #0
loc_80133F6:
    add r0, r5, #0
    ldrb r1, [r6,r5]
    bl sub_8013B4E
    add r5, #1
    cmp r5, #7
    blt loc_80133F6
    pop {r5,r6,pc}
    .balign 4, 0x00
off_8013408:    .word off_801340C
off_801340C:    .word dword_8013414
dword_8013410:    .word 0x801341B
dword_8013414:    .word 0x3020100, 0xB0504, 0x9080706
    .byte 0xA
    .byte 0xB
// end of function sub_80133EC

.thumb
sub_8013422:
    push {lr}
    ldr r2, [pc, #0x8013434-0x8013424-4] // =unk_203CE00
    mov r1, #0x64 
    mul r0, r1
    add r0, r0, r2
    bl sub_8013438
    pop {pc}
    .balign 4, 0x00
off_8013434:    .word unk_203CE00
// end of function sub_8013422

.thumb
sub_8013438:
    push {r4,lr}
    add r4, r0, #0
    add r0, r4, #0  // memBlock
    mov r1, #0x64   // numWords
    bl CpuSet_ZeroFillWord
    mov r0, #1
    mov r1, #0x20 
    strb r0, [r4,r1]
    mov r0, #1
    strb r0, [r4,#5]
    mov r0, #0xff
    strb r0, [r4,#7]
    mov r0, #0
    strb r0, [r4,#0x18]
    mov r0, #0
    strb r0, [r4,#0x19]
    mov r0, #0
    strb r0, [r4,#8]
    mov r0, #4
    strb r0, [r4,#9]
    mov r0, #5
    strb r0, [r4,#0xa]
    mov r0, #5
    strb r0, [r4,#0xb]
    mov r0, #1
    strb r0, [r4,#0xc]
    mov r0, #0
    strb r0, [r4,#0xd]
    mov r0, #0
    mov r1, #0x26 
    strb r0, [r4,r1]
    mov r0, #0xff
    strb r0, [r4,#0x12]
    mov r0, #0x1f
    mov r1, #0x27 
    strb r0, [r4,r1]
    mov r0, #0
    mov r1, #0x28 
    strb r0, [r4,r1]
    mov r0, #0x99
    mov r1, #0xe
    strb r0, [r4,r1]
    mov r0, #0x64 
    mov r1, #0x40 
    strh r0, [r4,r1]
    mov r1, #0x42 
    strh r0, [r4,r1]
    mov r1, #0x3e 
    strh r0, [r4,r1]
    mov r0, #0
    mov r1, #0x2c 
    strb r0, [r4,r1]
    mov r0, #0
    mov r1, #0x2d 
    strb r0, [r4,r1]
    mov r0, #0xff
    mov r1, #0x2e 
loc_80134AC:
    strb r0, [r4,r1]
    add r1, #1
    cmp r1, #0x30 
    ble loc_80134AC
    mov r0, #0xff
    mov r1, #0x56 
loc_80134B8:
    strb r0, [r4,r1]
    add r1, #1
    cmp r1, #0x5b 
    ble loc_80134B8
    mov r0, #3
    mov r1, #0x21 
    strb r0, [r4,r1]
    pop {r4,pc}
// end of function sub_8013438

.thumb
sub_80134C8:
    push {r4,lr}
    add r4, r0, #0
    add r0, r4, #0  // memBlock
    mov r1, #0x64   // numWords
    bl CpuSet_ZeroFillWord
    mov r0, #1
    mov r1, #0x20 
    strb r0, [r4,r1]
    mov r0, #1
    strb r0, [r4,#5]
    mov r0, #0xff
    strb r0, [r4,#7]
    mov r0, #0
    strb r0, [r4,#0x18]
    mov r0, #0
    strb r0, [r4,#0x19]
    mov r0, #0
    strb r0, [r4,#8]
    mov r0, #4
    strb r0, [r4,#9]
    mov r0, #5
    strb r0, [r4,#0xa]
    mov r0, #5
    strb r0, [r4,#0xb]
    mov r0, #1
    strb r0, [r4,#0xc]
    mov r0, #0
    strb r0, [r4,#0xd]
    mov r0, #0
    mov r1, #0x26 
    strb r0, [r4,r1]
    mov r0, #0xff
    strb r0, [r4,#0x12]
    mov r0, #0x1f
    mov r1, #0x27 
    strb r0, [r4,r1]
    mov r0, #0
    mov r1, #0x28 
    strb r0, [r4,r1]
    mov r0, #0x99
    mov r1, #0xe
    strb r0, [r4,r1]
    ldr r0, [pc, #0x8013550-0x801351e-2] // =0x1F4
    mov r1, #0x40 
    strh r0, [r4,r1]
    mov r1, #0x42 
    strh r0, [r4,r1]
    mov r1, #0x3e 
    strh r0, [r4,r1]
    mov r0, #2
    strb r0, [r4,#1]
    strb r0, [r4,#2]
    strb r0, [r4,#3]
    mov r0, #0
    mov r1, #0x2c 
    strb r0, [r4,r1]
    mov r0, #0xff
    mov r1, #0x2e 
    strb r0, [r4,r1]
    mov r1, #0x2f 
    strb r0, [r4,r1]
    mov r1, #0x30 
    strb r0, [r4,r1]
    mov r0, #1
    mov r1, #0x21 
    strb r0, [r4,r1]
    pop {r4,pc}
off_8013550:    .word 0x1F4
// end of function sub_80134C8

.thumb
sub_8013554:
    push {r4,lr}
    add r4, r0, #0
    add r0, r4, #0  // memBlock
    mov r1, #0x64   // numWords
    bl CpuSet_ZeroFillWord
    mov r0, #0x46 
    strb r0, [r4,#4]
    mov r0, #0xff
    strb r0, [r4,#5]
    mov r0, #0xff
    strb r0, [r4,#7]
    mov r0, #0
    strb r0, [r4,#0x18]
    mov r0, #0
    strb r0, [r4,#0x19]
    mov r0, #0
    strb r0, [r4,#8]
    mov r0, #4
    strb r0, [r4,#9]
    mov r0, #5
    strb r0, [r4,#0xa]
    mov r0, #5
    strb r0, [r4,#0xb]
    mov r0, #1
    strb r0, [r4,#0xc]
    mov r0, #0
    strb r0, [r4,#0xd]
    mov r0, #0
    mov r1, #0x26 
    strb r0, [r4,r1]
    mov r0, #0xff
    strb r0, [r4,#0x12]
    mov r0, #0x1f
    mov r1, #0x27 
    strb r0, [r4,r1]
    mov r0, #0
    mov r1, #0x28 
    strb r0, [r4,r1]
    mov r0, #0x99
    mov r1, #0xe
    strb r0, [r4,r1]
    mov r0, #1
    mov r1, #0x42 
    bl sub_8013740
    mov r1, #0x40 
    strh r0, [r4,r1]
    mov r1, #0x42 
    strh r0, [r4,r1]
    mov r1, #0x3e 
    strh r0, [r4,r1]
    mov r0, #0
    mov r1, #0x2c 
    strb r0, [r4,r1]
    mov r0, #7
    mov r1, #0x29 
    strb r0, [r4,r1]
    mov r0, #0
    mov r1, #0x2d 
    strb r0, [r4,r1]
    mov r0, #0xff
    mov r1, #0x2e 
loc_80135D2:
    strb r0, [r4,r1]
    add r1, #1
    cmp r1, #0x30 
    ble loc_80135D2
    mov r0, #0xff
    mov r1, #0x56 
loc_80135DE:
    strb r0, [r4,r1]
    add r1, #1
    cmp r1, #0x5b 
    ble loc_80135DE
    pop {r4,pc}
// end of function sub_8013554

.thumb
sub_80135E8:
    push {r4,lr}
    add r4, r0, #0
    add r0, r4, #0  // memBlock
    mov r1, #0x64   // numWords
    bl CpuSet_ZeroFillWord
    mov r0, #0x4c 
    strb r0, [r4,#4]
    mov r0, #0x4b 
    mov r1, #0x44 
    strb r0, [r4,r1]
    mov r0, #0xff
    strb r0, [r4,#5]
    mov r0, #0xff
    strb r0, [r4,#7]
    mov r0, #0
    strb r0, [r4,#0x18]
    mov r0, #0
    strb r0, [r4,#0x19]
    mov r0, #0
    strb r0, [r4,#8]
    mov r0, #4
    strb r0, [r4,#9]
    mov r0, #5
    strb r0, [r4,#0xa]
    mov r0, #5
    strb r0, [r4,#0xb]
    mov r0, #1
    strb r0, [r4,#0xc]
    mov r0, #0
    strb r0, [r4,#0xd]
    mov r0, #0
    mov r1, #0x26 
    strb r0, [r4,r1]
    mov r0, #0xff
    strb r0, [r4,#0x12]
    mov r0, #0x1f
    mov r1, #0x27 
    strb r0, [r4,r1]
    mov r0, #0
    mov r1, #0x28 
    strb r0, [r4,r1]
    mov r0, #0x99
    mov r1, #0xe
    strb r0, [r4,r1]
    mov r0, #1
    mov r1, #0x42 
    bl sub_8013740
    mov r1, #0x40 
    strh r0, [r4,r1]
    mov r1, #0x42 
    strh r0, [r4,r1]
    mov r1, #0x3e 
    strh r0, [r4,r1]
    mov r0, #0
    mov r1, #0x2c 
    strb r0, [r4,r1]
    mov r0, #0xa
    mov r1, #0x29 
    strb r0, [r4,r1]
    mov r0, #0
    mov r1, #0x2d 
    strb r0, [r4,r1]
    mov r0, #0xff
    mov r1, #0x2e 
loc_801366C:
    strb r0, [r4,r1]
    add r1, #1
    cmp r1, #0x30 
    ble loc_801366C
    mov r0, #0xff
    mov r1, #0x56 
loc_8013678:
    strb r0, [r4,r1]
    add r1, #1
    cmp r1, #0x5b 
    ble loc_8013678
    pop {r4,pc}
// end of function sub_80135E8

.thumb
sub_8013682:
    mov r1, #0x64 
    mul r0, r1
    ldr r1, [pc, #0x801368c-0x8013686-2] // =unk_203CE00
    add r0, r0, r1
    mov pc, lr
off_801368C:    .word unk_203CE00
// end of function sub_8013682

.thumb
sub_8013690:
    mov r1, #0x64 
    mul r0, r1
    ldr r1, [pc, #0x801369c-0x8013694-4] // =unk_203CB10
    add r0, r0, r1
    mov pc, lr
    .balign 4, 0x00
off_801369C:    .word unk_203CB10
// end of function sub_8013690

.thumb
sub_80136A0:
    mov r1, #0x64 
    mul r0, r1
    ldr r1, [pc, #0x80136ac-0x80136a4-4] // =unk_2034A60
    add r0, r0, r1
    mov pc, lr
    .balign 4, 0x00
off_80136AC:    .word unk_2034A60
// end of function sub_80136A0

.thumb
sub_80136B0:
    push {r6,r7,lr}
    add r6, r1, #0
    add r7, r2, #0
    bl sub_8013682
    strb r7, [r0,r6]
    pop {r6,r7,pc}
// end of function sub_80136B0

    push {r6,r7,lr}
    add r6, r1, #0
    add r7, r2, #0
    bl sub_8013682
    strh r7, [r0,r6]
    pop {r6,r7,pc}
.thumb
sub_80136CC:
    push {r6,lr}
    add r6, r1, #0
    bl sub_8013682
    ldrb r0, [r0,r6]
    pop {r6,pc}
// end of function sub_80136CC

.thumb
sub_80136D8:
    push {r6,lr}
    add r6, r1, #0
    bl sub_8013682
    ldrsb r0, [r0,r6]
    pop {r6,pc}
// end of function sub_80136D8

.thumb
sub_80136E4:
    push {r6,lr}
    add r6, r1, #0
    bl sub_8013682
    ldrh r0, [r0,r6]
    pop {r6,pc}
// end of function sub_80136E4

.thumb
sub_80136F0:
    cmp r0, #0
    beq loc_80136F6
    mov r0, #1
loc_80136F6:
    mov r3, #0x64 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x74]
    add r3, r3, r0
    strb r2, [r3,r1]
    mov pc, lr
// end of function sub_80136F0

.thumb
sub_8013704:
    cmp r0, #0
    beq loc_801370A
    mov r0, #1
loc_801370A:
    mov r3, #0x64 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x74]
    add r3, r3, r0
    ldrb r0, [r3,r1]
    mov pc, lr
// end of function sub_8013704

    cmp r0, #0
    beq loc_801371E
    mov r0, #1
loc_801371E:
    mov r3, #0x64 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x74]
    add r3, r3, r0
    ldrb r0, [r3,r1]
    mov pc, lr
    cmp r0, #0
    beq loc_8013732
    mov r0, #1
loc_8013732:
    mov r3, #0x64 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x74]
    add r3, r3, r0
    strh r2, [r3,r1]
    mov pc, lr
.thumb
sub_8013740:
    cmp r0, #0
    beq loc_8013746
    mov r0, #1
loc_8013746:
    mov r3, #0x64 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x74]
    add r3, r3, r0
    ldrh r0, [r3,r1]
    mov pc, lr
// end of function sub_8013740

.thumb
sub_8013754:
    push {r6,r7,lr}
    ldrb r0, [r5,#0x16]
    add r6, r1, #0
    add r7, r2, #0
    bl sub_8013682
    strb r7, [r0,r6]
    pop {r6,r7,pc}
// end of function sub_8013754

.thumb
sub_8013764:
    push {r6,r7,lr}
    ldrb r0, [r5,#0x16]
    add r6, r1, #0
    add r7, r2, #0
    bl sub_8013682
    strh r7, [r0,r6]
    pop {r6,r7,pc}
// end of function sub_8013764

.thumb
sub_8013774:
    push {r6,lr}
    ldrb r0, [r5,#0x16]
    add r6, r1, #0
    bl sub_8013682
    ldrb r0, [r0,r6]
    pop {r6,pc}
// end of function sub_8013774

    push {r6,lr}
    ldrb r0, [r5,#0x16]
    add r6, r1, #0
    bl sub_8013682
    ldrb r0, [r0,r6]
    pop {r6,pc}
.thumb
sub_8013790:
    push {r6,lr}
    ldrb r0, [r5,#0x16]
    add r6, r1, #0
    bl sub_8013682
    ldrh r0, [r0,r6]
    pop {r6,pc}
// end of function sub_8013790

.thumb
sub_801379E:
    push {lr}
    push {r1,r2}
    bl sub_8014018
    pop {r1,r2}
    mov r3, #0x64 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x74]
    add r3, r3, r0
    strb r2, [r3,r1]
    pop {pc}
// end of function sub_801379E

.thumb
sub_80137B6:
    push {lr}
    push {r1}
    bl sub_8014018
    pop {r1}
    mov r3, #0x64 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x74]
    add r3, r3, r0
    ldrb r0, [r3,r1]
    pop {pc}
// end of function sub_80137B6

    push {lr}
    push {r1}
    bl sub_8014018
    pop {r1}
    mov r3, #0x64 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x74]
    add r3, r3, r0
    ldrsb r0, [r3,r1]
    pop {pc}
.thumb
sub_80137E6:
    push {lr}
    push {r1,r2}
    bl sub_8014018
    pop {r1,r2}
    mov r3, #0x64 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x74]
    add r3, r3, r0
    strh r2, [r3,r1]
    pop {pc}
// end of function sub_80137E6

.thumb
sub_80137FE:
    push {lr}
    push {r1}
    bl sub_8014018
    pop {r1}
    mov r3, #0x64 
    mul r0, r3
    mov r3, r10
    ldr r3, [r3,#0x74]
    add r3, r3, r0
    ldrh r0, [r3,r1]
    pop {pc}
// end of function sub_80137FE

.thumb
sub_8013816:
    push {r4,lr}
    add r4, r1, #0
    bl sub_8013690
    ldrb r0, [r0,r4]
    pop {r4,pc}
// end of function sub_8013816

    push {r4,lr}
    add r4, r1, #0
    bl sub_8013690
    ldrh r0, [r0,r4]
    pop {r4,pc}
.thumb
sub_801382E:
    push {r6,lr}
    add r6, r1, #0
    bl sub_80136A0
    ldrb r0, [r0,r6]
    pop {r6,pc}
// end of function sub_801382E

    push {r6,lr}
    add r6, r1, #0
    bl sub_80136A0
    ldrh r0, [r0,r6]
    pop {r6,pc}
.thumb
sub_8013846:
    push {r4,lr}
    mov r0, #0
    bl sub_8013854
    bl sub_8013438
    pop {r4,pc}
// end of function sub_8013846

.thumb
sub_8013854:
    mov r1, #0x64 
    mul r0, r1
    ldr r1, [pc, #0x8013860-0x8013858-4] // =unk_203CCE0
    add r0, r0, r1
    mov pc, lr
    .byte 0, 0
off_8013860:    .word unk_203CCE0
// end of function sub_8013854

.thumb
sub_8013864:
    push {r6,r7,lr}
    mov r0, #0
    add r6, r1, #0
    add r7, r2, #0
    bl sub_8013854
    strb r7, [r0,r6]
    pop {r6,r7,pc}
// end of function sub_8013864

.thumb
sub_8013874:
    push {r6,r7,lr}
    mov r0, #0
    add r6, r1, #0
    add r7, r2, #0
    bl sub_8013854
    strh r7, [r0,r6]
    pop {r6,r7,pc}
// end of function sub_8013874

.thumb
sub_8013884:
    push {r6,lr}
    mov r0, #0
    add r6, r1, #0
    bl sub_8013854
    ldrb r0, [r0,r6]
    pop {r6,pc}
// end of function sub_8013884

.thumb
sub_8013892:
    push {r6,r7,lr}
    ldrb r0, [r5,#0x16]
    bl sub_8013682
    add r6, r0, #0
    ldr r7, [r5,#0x58]
    mov r0, #0xa
    strh r0, [r5,#0x2e]
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    bne loc_80138BC
    ldr r1, [pc, #0x8013908-0x80138ac-4] // =0x10000
    tst r0, r1
    bne loc_80138BC
    mov r1, #0xe
    bl sub_8013774
    cmp r0, #0xff
    beq loc_80138D2
loc_80138BC:
    mov r1, #0xf
    bl sub_8013774
    add r1, r0, #0
    mov r1, #0
    bl sub_8015C2C
    mov r1, #0xe
    add r2, r0, #0
    bl sub_8013754
loc_80138D2:
    mov r1, #6
    bl sub_8013774
    cmp r0, #0
    beq loc_80138F2
    push {r0}
    bl sub_801A7CC
    pop {r4}
    push {r7}
    ldr r0, [r5,#0x58]
    mov r7, #0x60 
    add r7, r7, r0
    bl sub_80E0D98
    pop {r7}
loc_80138F2:
    mov r1, #0x21 
    bl sub_8013774
    cmp r0, #0
    bne loc_8013900
    bl sub_801443C
loc_8013900:
    b loc_8013918
    .balign 4, 0x00
    .word 0x20000
dword_8013908:    .word 0x10000
// end of function sub_8013892

.thumb
sub_801390C:
    push {r6,r7,lr}
    ldrb r0, [r5,#0x16]
    bl sub_8013682
    add r6, r0, #0
    ldr r7, [r5,#0x58]
loc_8013918:
    ldrb r0, [r6,#5]
    strb r0, [r7,#7]
    ldrb r0, [r6,#7]
    strb r0, [r7,#8]
    ldr r0, [pc, #0x8013ca8-0x8013920-4] // =start_
    bl object_clearFlag
    bl sub_800EB08
    ldr r0, [r7,#0x50]
    tst r0, r0
    beq loc_8013938
    bl sub_80E5410
    mov r0, #0
    str r0, [r7,#0x50]
loc_8013938:
    b loc_8013956
// end of function sub_801390C

.thumb
sub_801393A:
    push {r6,r7,lr}
    ldrb r0, [r5,#0x16]
    bl sub_8013682
    add r6, r0, #0
    ldr r7, [r5,#0x58]
    mov r1, #0x2c 
    ldrb r0, [r6,r1]
    cmp r0, #0
    bne loc_8013956
    ldrb r0, [r6,#5]
    strb r0, [r7,#7]
    ldrb r0, [r6,#7]
    strb r0, [r7,#8]
loc_8013956:
    mov r0, #0x20 
    ldrb r1, [r6,#0x1b]
    tst r1, r1
    beq loc_8013970
    bl object_setFlag
    bl sub_80107C0
    mov r1, #0x10
    mov r2, #2
    bl sub_801A082
    b loc_8013980
loc_8013970:
    bl object_clearFlag
    bl sub_80107C0
    mov r1, #1
    mov r2, #2
    bl sub_801A082
loc_8013980:
    mov r0, #0x10
    ldrb r1, [r6,#0x1c]
    tst r1, r1
    beq loc_801398E
    bl object_setFlag
    b loc_8013992
loc_801398E:
    bl object_clearFlag
loc_8013992:
    ldr r0, [pc, #0x8013cac-0x8013992-2] // =unk_2000000
    bl object_setFlag
    mov r0, #1
    lsl r0, r0, #0x12
    ldrb r1, [r6,#0x1d]
    tst r1, r1
    beq loc_80139A8
    bl object_setFlag
    b loc_80139AC
loc_80139A8:
    bl object_clearFlag
loc_80139AC:
    mov r0, #1
    lsl r0, r0, #0x11
    mov r2, #0x23 
    ldrb r1, [r6,r2]
    tst r1, r1
    beq loc_80139BE
    bl object_setFlag
    b locret_80139C2
loc_80139BE:
    bl object_clearFlag
locret_80139C2:
    pop {r6,r7,pc}
// end of function sub_801393A

.thumb
sub_80139C4:
    push {r7,lr}
    ldr r7, [r5,#0x58]
    ldrh r0, [r5,#0x24]
    tst r0, r0
    beq locret_80139F4
    ldrb r0, [r7]
    cmp r0, #2
    bne locret_80139F4
    ldrb r0, [r7,#1]
    cmp r0, #0xb
    bgt locret_80139F4
    ldrb r0, [r5,#0x16]
    bl sub_8015B54
    cmp r0, #2
    bne locret_80139F4
    add r7, #0x5c 
    ldr r0, [r7]
    tst r0, r0
    bne locret_80139F4
    mov r1, #4
    mov r3, #0x10
    bl sub_80C4C12
locret_80139F4:
    pop {r7,pc}
// end of function sub_80139C4

.thumb
sub_80139F6:
    push {r4,lr}
    sub sp, sp, #8
    ldr r4, [r5,#0x54]
    mov r1, #0xa4
    ldrb r1, [r4,r1]
    str r1, [sp]
    tst r1, r1
    bne loc_8013A08
    b loc_8013ADC
loc_8013A08:
    mov r2, #0xa5
    ldrb r2, [r4,r2]
    str r2, [sp,#4]
    cmp r1, #0x18
    beq loc_8013A16
    cmp r1, #0x19
    bne loc_8013A26
loc_8013A16:
    bl sub_8013774
    ldr r2, [sp,#4]
    add r2, r2, r0
    cmp r2, #7
    ble loc_8013ACA
    mov r2, #7
    b loc_8013ACA
loc_8013A26:
    cmp r1, #0x54 
    bne loc_8013A34
    bl sub_8013790
    ldr r2, [sp,#4]
    add r2, r2, r0
    b loc_8013ACA
loc_8013A34:
    cmp r1, #0xff
    bne loc_8013A48
    mov r1, #0x14
    str r1, [sp]
    bl sub_8013774
    add r2, r0, #4
    ble loc_8013A46
    mov r2, #4
loc_8013A46:
    b loc_8013ACA
loc_8013A48:
    cmp r1, #0xfe
    bne loc_8013A5E
    mov r1, #0x12
    mov r2, #4
    bl sub_8013754
    mov r1, #0x13
    mov r2, #4
    bl sub_8013754
    b loc_8013ADC
loc_8013A5E:
    cmp r1, #0xfb
    bne loc_8013A68
    bl sub_8014080
    b loc_8013ADC
loc_8013A68:
    cmp r1, #0xfa
    bne loc_8013A7E
    mov r1, #0x12
    mov r2, #4
    bl sub_8013754
    mov r1, #0x13
    mov r2, #2
    bl sub_8013754
    b loc_8013ADC
loc_8013A7E:
    cmp r1, #0xf9
    bne loc_8013A94
    mov r1, #0x12
    mov r2, #4
    bl sub_8013754
    mov r1, #0x13
    mov r2, #1
    bl sub_8013754
    b loc_8013ADC
loc_8013A94:
    cmp r1, #0xf8
    bne loc_8013AB4
    bl sub_80140EE
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    ldr r0, [pc, #0x8013cb0-0x8013aa2-2] // =0x100000
    add r3, r3, r0
    mov r4, #0xe
    bl sub_80E08C4
    mov r0, #0x8e
    bl sound_play
    b loc_8013ADC
loc_8013AB4:
    cmp r1, #0xf5
    bne loc_8013ACA
    mov r1, #0x12
    mov r2, #3
    bl sub_8013754
    mov r1, #0x13
    mov r2, #1
    bl sub_8013754
    b loc_8013ADC
loc_8013ACA:
    ldr r1, [sp]
    cmp r1, #0x64 
    bge loc_8013ADC
    bl sub_8013754
    bl sub_801393A
    bl loc_801469C
loc_8013ADC:
    bl sub_800FF5E
    add sp, sp, #8
    pop {r4,pc}
// end of function sub_80139F6

.thumb
sub_8013AE4:
    push {lr}
    sub sp, sp, #8
    ldr r3, [r5,#0x54]
    mov r1, #0xa4
    ldrb r1, [r3,r1]
    str r1, [sp]
    tst r1, r1
    beq loc_8013B1C
    mov r2, #0xa5
    ldrb r2, [r3,r2]
    str r2, [sp,#4]
    cmp r1, #0x18
    beq loc_8013B02
    cmp r1, #0x19
    bne loc_8013B1C
loc_8013B02:
    bl sub_8013774
    ldr r2, [sp,#4]
    add r2, r2, r0
    cmp r2, #7
    ble loc_8013B12
    mov r2, #7
    b loc_8013B12
loc_8013B12:
    ldr r1, [sp]
    cmp r1, #0x64 
    bge loc_8013B1C
    bl sub_8013754
loc_8013B1C:
    add sp, sp, #8
    pop {pc}
// end of function sub_8013AE4

.thumb
sub_8013B20:
    push {r4,lr}
    sub sp, sp, #8
    ldr r3, [r5,#0x54]
    ldr r4, [r5,#0x58]
    mov r1, #0xa4
    ldrb r1, [r3,r1]
    str r1, [sp]
    tst r1, r1
    beq loc_8013B4A
    mov r2, #0xa5
    ldrb r2, [r3,r2]
    str r2, [sp,#4]
    cmp r1, #0x18
    bne loc_8013B4A
    ldrb r0, [r4,#0x12]
    ldr r2, [sp,#4]
    add r2, r2, r0
    cmp r2, #7
    ble loc_8013B48
    mov r2, #7
loc_8013B48:
    strb r2, [r4,#0x12]
loc_8013B4A:
    add sp, sp, #8
    pop {r4,pc}
// end of function sub_8013B20

.thumb
sub_8013B4E:
    push {r4,r6,r7,lr}
    cmp r0, #0
    beq loc_8013B56
    mov r0, #1
loc_8013B56:
    add r4, r1, #0
    mov r7, r10
    ldr r7, [r7,#0x74]
    mov r2, #0x64 
    mul r0, r2
    add r7, r7, r0
    b loc_8013B6E
loc_8013B64:
    push {r4,r6,r7,lr}
    add r4, r1, #0
    bl sub_8013682
    add r7, r0, #0
loc_8013B6E:
    add r0, r7, #0
    bl sub_8013438
    mov r0, #0x10
    mul r0, r4
    ldr r6, [pc, #0x8013cb4-0x8013b78-4] // =dword_8020FE0
    add r6, r6, r0
    mov r1, #0x29 
    strb r4, [r7,r1]
    ldrb r0, [r6]
    add r0, r0, r0
    mov r1, #0x40 
    strh r0, [r7,r1]
    mov r1, #0x42 
    strh r0, [r7,r1]
    mov r1, #0x3e 
    strh r0, [r7,r1]
    ldrb r0, [r6,#1]
    mov r1, #0x23 
    strb r0, [r7,r1]
    ldrb r0, [r6,#2]
    strb r0, [r7,#0x1b]
    ldrb r0, [r6,#3]
    strb r0, [r7,#0x1c]
    ldrb r0, [r6,#4]
    mov r1, #0x1d
    strb r0, [r7,r1]
    ldrb r0, [r6,#5]
    strb r0, [r7,#6]
    ldrb r0, [r6,#6]
    strb r0, [r7,#0xb]
    ldrb r0, [r6,#7]
    strb r0, [r7,#0xc]
    ldrb r0, [r6,#8]
    strb r0, [r7,#4]
    ldrb r0, [r6,#9]
    strb r0, [r7,#5]
    ldrb r0, [r6,#0xa]
    strb r0, [r7,#7]
    ldrb r0, [r6,#0xb]
    mov r1, #0x46 
    strh r0, [r7,r1]
    ldrb r0, [r6,#0xc]
    mov r1, #0x4a 
    strh r0, [r7,r1]
    ldrb r0, [r6,#0xd]
    mov r1, #0x48 
    strh r0, [r7,r1]
    ldrb r0, [r6,#0xe]
    strb r0, [r7]
    ldrb r0, [r6,#0xf]
    mov r1, #0x39 
    strb r0, [r7,r1]
    pop {r4,r6,r7,pc}
// end of function sub_8013B4E

    push {r4,r6,r7,lr}
    add r7, r0, #0
    add r4, r1, #0
    add r0, r7, #0
    bl sub_8013438
    mov r0, #0x10
    mul r0, r4
    ldr r6, [pc, #0x8013cb8-0x8013bea-2] // =dword_8020FE0
    add r6, r6, r0
    mov r1, #0x29 
    strb r4, [r7,r1]
    add r0, r4, r4
    ldr r1, [pc, #0x8013cbc-0x8013bf4-4] // =dword_802F0A8
    ldrh r0, [r0,r1]
    mov r1, #0x40 
    strh r0, [r7,r1]
    mov r1, #0x42 
    strh r0, [r7,r1]
    mov r1, #0x3e 
    strh r0, [r7,r1]
    ldrb r0, [r6,#1]
    mov r1, #0x23 
    strb r0, [r7,r1]
    ldrb r0, [r6,#2]
    strb r0, [r7,#0x1b]
    ldrb r0, [r6,#3]
    strb r0, [r7,#0x1c]
    ldrb r0, [r6,#4]
    mov r1, #0x1d
    strb r0, [r7,r1]
    ldrb r0, [r6,#5]
    strb r0, [r7,#6]
    ldrb r0, [r6,#6]
    strb r0, [r7,#0xb]
    ldrb r0, [r6,#7]
    strb r0, [r7,#0xc]
    ldrb r0, [r6,#8]
    strb r0, [r7,#4]
    ldrb r0, [r6,#9]
    strb r0, [r7,#5]
    ldrb r0, [r6,#0xa]
    strb r0, [r7,#7]
    ldrb r0, [r6,#0xb]
    mov r1, #0x46 
    strh r0, [r7,r1]
    ldrb r0, [r6,#0xc]
    mov r1, #0x4a 
    strh r0, [r7,r1]
    ldrb r0, [r6,#0xd]
    mov r1, #0x48 
    strh r0, [r7,r1]
    ldrb r0, [r6,#0xe]
    strb r0, [r7]
    ldrb r0, [r6,#0xf]
    mov r1, #0x39 
    strb r0, [r7,r1]
    pop {r4,r6,r7,pc}
    push {r4,r6,lr}
    ldr r0, [pc, #0x8013cc0-0x8013c50-4] // =0x20000
    bl object_clearFlag
    mov r1, #0x29 
    bl sub_8013774
    add r6, r0, #0
    lsl r6, r6, #2
    ldr r1, [pc, #0x8013c6c-0x8013c60-4] // =off_8013C70
    ldr r1, [r6,r1]
    mov lr, pc
    bx r1
    pop {r4,r6,pc}
    .balign 4, 0x00
off_8013C6C:    .word off_8013C70
off_8013C70:    .word locret_8013CA4+1
    .word locret_8013CA4+1
    .word locret_8013CA4+1
    .word locret_8013CA4+1
    .word locret_8013CA4+1
    .word locret_8013CA4+1
    .word locret_8013CA4+1
    .word locret_8013CA4+1
    .word locret_8013CA4+1
    .word locret_8013CA4+1
    .word locret_8013CA4+1
    .word locret_8013CA4+1
    .word locret_8013CA4+1
locret_8013CA4:
    mov pc, lr
    .balign 4, 0x00
dword_8013CA8:    .word 0x8000001
off_8013CAC:    .word unk_2000000
dword_8013CB0:    .word 0x100000
dword_8013CB4:    .word 0x80210DD
dword_8013CB8:    .word 0x80210DD
off_8013CBC:    .word dword_802F0A8
dword_8013CC0:    .word 0x20000
.thumb
sub_8013CC4:
    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    ldr r0, [r5,#0x58]
    ldrb r1, [r0]
    cmp r1, #2
    bne locret_8013D3C
    mov r1, #0x13
    bl sub_8013774
    add r4, r0, #0
    beq locret_8013D3C
    bl sub_8001532
    mov r1, #7
    and r0, r1
    sub r4, #1
    cmp r0, r4
    bgt locret_8013D3C
    mov r1, #0x12
    bl sub_8013774
    add r4, r0, #0
    add r0, r6, #0
    add r1, r7, #0
    bl sub_800C90A
    ldrb r5, [r0,#2]
    cmp r5, #1
    beq locret_8013D3C
    cmp r5, #0
    beq locret_8013D3C
    cmp r4, #1
    bne loc_8013D12
    add r0, r6, #0
    add r1, r7, #0
    bl object_breakPanel_dup2
    b locret_8013D3C
loc_8013D12:
    cmp r4, #3
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
    cmp r4, r5
    beq locret_8013D3C
    add r1, r4, r4
    ldr r0, [pc, #0x8013d40-0x8013d30-4] // =dword_8013D44
    ldrh r0, [r0,r1]
    tst r0, r0
    beq locret_8013D3C
    bl sound_play
locret_8013D3C:
    pop {r4-r7,pc}
    .byte 0, 0
off_8013D40:    .word dword_8013D44
dword_8013D44:    .word 0x0, 0x0
    .byte 0x90
    .byte 0
    .byte 0xA4
    .byte 0
    .byte 0x1B
    .byte 1
    .byte 0x18
    .byte 1
    .byte 0x1C
    .byte 1
    .byte 0xFC
    .byte 0
    .byte 0xFC
    .byte 0
    .byte 0xFC
    .byte 0
    .byte 0xFC
    .byte 0
// end of function sub_8013CC4

.thumb
sub_8013D5E:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    mov r4, #0
    add r7, sp, #0
    str r4, [sp]
    str r4, [sp,#4]
    str r4, [sp,#8]
    str r4, [sp,#0xc]
    mov r1, #0x14
    bl sub_8013774
    mov r1, #1
loc_8013D76:
    sub r0, #1
    blt loc_8013D80
    strb r1, [r7,r4]
    add r4, #1
    b loc_8013D76
loc_8013D80:
    mov r1, #0x15
    bl sub_8013774
    mov r1, #2
loc_8013D88:
    sub r0, #1
    blt loc_8013D92
    strb r1, [r7,r4]
    add r4, #1
    b loc_8013D88
loc_8013D92:
    bl sub_800151C
    mov r1, #0xf
    and r0, r1
    ldrb r0, [r7,r0]
    add sp, sp, #0x10
    pop {r4-r7,pc}
// end of function sub_8013D5E

.thumb
sub_8013DA0:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x10
    bl battle_isPaused
    bne loc_8013E38
    mov r1, #0x24 
    bl sub_8013774
    tst r0, r0
    beq loc_8013E38
    mov r1, #0x21 
    bl sub_8013774
    tst r0, r0
    beq loc_8013E38
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0
    beq loc_8013DD2
    bl sub_80143A6
    bl sub_8014446
    b loc_8013E38
loc_8013DD2:
    ldr r4, [r5,#0x58]
    ldrh r0, [r4,#0x3a]
    add r0, #1
    strh r0, [r4,#0x3a]
    cmp r0, #0x3c 
    blt loc_8013E38
    mov r0, #0
    strh r0, [r4,#0x3a]
    bl sub_80143A6
    bl sub_8014446
    ldrb r6, [r4,#0xb]
    ldr r0, [pc, #0x8013e3c-0x8013dec-4] // =dword_8013E44
    mov r2, #0
    mov r7, #0
loc_8013DF2:
    ldrb r1, [r0,r2]
    cmp r1, r6
    bne loc_8013E00
    mov r1, #1
    cmp r6, #0
    beq loc_8013E00
    mov r1, #0
loc_8013E00:
    add r3, sp, #0
    strb r1, [r3,r7]
    add r7, #1
    add r2, #1
    cmp r2, #0x10
    blt loc_8013DF2
    bl sub_8001532
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    strb r0, [r4,#0xb]
    cmp r0, #2
    beq loc_8013E2E
    cmp r0, #1
    beq loc_8013E34
    ldr r1, [pc, #0x8013e40-0x8013e22-2] // =unk_8013E54
    ldrb r1, [r1,r0]
    ldrb r0, [r5,#0x16]
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
off_8013E3C:    .word dword_8013E44
off_8013E40:    .word unk_8013E54
dword_8013E44:    .word 0x0
    .word 0x1010000, 0x1010101, 0x3020101
unk_8013E54:    .byte 0x99
    .byte 0x3C 
    .byte 0
    .byte 0xFF
// end of function sub_8013DA0

loc_8013E58:
    push {r4,lr}
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    bne loc_8013E6C
    bl sub_802D234
    cmp r0, #1
    beq loc_8013E6C
loc_8013E6C:
    mov r1, #0x1a
    bl sub_8013774
    mov r4, #0
    cmp r0, #9
    beq loc_8013E7E
    mov r4, #4
    cmp r0, #0xa
    bne loc_8013E8A
loc_8013E7E:
    bl sub_800151C
    mov r1, #3
    and r0, r1
    add r0, r0, r4
    add r0, #1
loc_8013E8A:
    lsl r0, r0, #2
    ldr r1, [pc, #0x8013e98-0x8013e8c-4] // =off_8013E9C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r4,pc}
    .balign 4, 0x00
off_8013E98:    .word off_8013E9C
off_8013E9C:    .word locret_8013EC0+1
    .word sub_8013EC2+1
    .word sub_8013ECC+1
    .word sub_8013ED6+1
    .word sub_8013EE6+1
    .word sub_8013EF0+1
    .word sub_8013EFA+1
    .word sub_8013F04+1
    .word sub_8013F14+1
locret_8013EC0:
    mov pc, lr
.thumb
sub_8013EC2:
    push {r4,lr}
    ldr r4, [pc, #0x80141bc-0x8013ec4-4] // =0x12C
    bl sub_8010474
    pop {r4,pc}
// end of function sub_8013EC2

.thumb
sub_8013ECC:
    push {lr}
    ldr r0, [pc, #0x80141bc-0x8013ece-2] // =0x12C
    bl object_setInvulnerableTime
    pop {pc}
// end of function sub_8013ECC

.thumb
sub_8013ED6:
    push {lr}
    ldr r0, [pc, #0x80141bc-0x8013ed8-4] // =0x12C
    ldr r1, [r5,#0x54]
    strh r0, [r1,#0x20]
    mov r0, #0x20 
    bl sub_801A16C
    pop {pc}
// end of function sub_8013ED6

.thumb
sub_8013EE6:
    push {lr}
    ldr r0, [pc, #0x80141bc-0x8013ee8-4] // =0x12C
    ldr r1, [r5,#0x54]
    strh r0, [r1,#0x1e]
    pop {pc}
// end of function sub_8013EE6

.thumb
sub_8013EF0:
    push {r4,lr}
    ldr r4, [pc, #0x80141c0-0x8013ef2-2] // =0x258
    bl sub_8010474
    pop {r4,pc}
// end of function sub_8013EF0

.thumb
sub_8013EFA:
    push {lr}
    ldr r0, [pc, #0x80141c0-0x8013efc-4] // =0x258
    bl object_setInvulnerableTime
    pop {pc}
// end of function sub_8013EFA

.thumb
sub_8013F04:
    push {lr}
    ldr r0, [pc, #0x80141c0-0x8013f06-2] // =0x258
    ldr r1, [r5,#0x54]
    strh r0, [r1,#0x20]
    mov r0, #0x20 
    bl sub_801A16C
    pop {pc}
// end of function sub_8013F04

.thumb
sub_8013F14:
    push {lr}
    ldr r0, [pc, #0x80141c0-0x8013f16-2] // =0x258
    ldr r1, [r5,#0x54]
    strh r0, [r1,#0x1e]
    pop {pc}
// end of function sub_8013F14

loc_8013F1E:
    push {lr}
    bl sub_801A180
    ldr r1, [pc, #0x80141c4-0x8013f24-4] // =0x104
    tst r0, r1
    beq locret_8013F68
    ldr r1, [r5,#0x54]
    ldr r0, [r1,#0x70]
    cmp r0, #0
    beq locret_8013F68
    add r1, #0x82
    ldr r0, [r1]
    ldr r2, [r1,#4]
    add r0, r0, r2
    ldr r2, [r1,#8]
    add r0, r0, r2
    cmp r0, #0
    beq locret_8013F68
    ldr r0, [r5,#0x58]
    ldrb r1, [r5,#0x18]
    cmp r1, #0
    bne loc_8013F4E
    strb r1, [r0,#0x1c]
    b loc_8013F58
loc_8013F4E:
    ldrb r1, [r0,#0x1c]
    cmp r1, #0
    bne locret_8013F68
    mov r1, #1
    strb r1, [r0,#0x1c]
loc_8013F58:
    mov r1, #0x16
    bl sub_8013774
    lsl r0, r0, #2
    ldr r1, [pc, #0x8013f6c-0x8013f60-4] // =off_8013F70
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
locret_8013F68:
    pop {pc}
    .balign 4, 0x00
off_8013F6C:    .word off_8013F70
off_8013F70:    .word locret_8013F80+1
    .word sub_8013F82+1
    .word sub_8013F8C+1
    .word sub_8013F96+1
locret_8013F80:
    mov pc, lr
.thumb
sub_8013F82:
    push {lr}
    mov r0, #0x32 
    bl sub_801A25E
    pop {pc}
// end of function sub_8013F82

.thumb
sub_8013F8C:
    push {lr}
    mov r0, #0x22 
    bl sub_801A25E
    pop {pc}
// end of function sub_8013F8C

.thumb
sub_8013F96:
    push {lr}
    mov r1, #0x18
    bl sub_8013774
    add r0, #1
    cmp r0, #7
    bgt locret_8013FAC
    add r2, r0, #0
    mov r1, #0x18
    bl sub_8013754
locret_8013FAC:
    pop {pc}
// end of function sub_8013F96

.thumb
sub_8013FAE:
    push {r4,lr}
    mov r1, #0x11
    bl sub_8013774
    add r4, r0, #0
    beq locret_8013FCE
    bl sub_800151C
    mov r1, #7
    and r0, r1
    sub r1, r4, #1
    cmp r0, r1
    bgt loc_8013FCC
    mov r0, #1
    pop {r4,pc}
loc_8013FCC:
    mov r0, #0
locret_8013FCE:
    pop {r4,pc}
// end of function sub_8013FAE

.thumb
sub_8013FD0:
    push {r5,lr}
    bl sub_80103BC
    add r5, r0, #0
    beq locret_8013FF6
    mov r1, #0x54 
    bl sub_8013790
    tst r0, r0
    beq locret_8013FF6
    ldrh r1, [r5,#0x24]
    cmp r1, r0
    bgt loc_8013FEC
    sub r0, r1, #1
loc_8013FEC:
    bl object_subtractHP
    mov r0, #0x6b 
    bl sound_play
locret_8013FF6:
    pop {r5,pc}
// end of function sub_8013FD0

.thumb
sub_8013FF8:
    push {lr}
    mov r1, #0x3d 
    bl sub_8013774
    tst r0, r0
    beq locret_8014016
    sub r2, r0, #1
    ldrh r1, [r5,#0x24]
    cmp r1, #1
    beq locret_8014016
    cmp r1, r2
    bgt loc_8014012
    sub r0, r1, #1
loc_8014012:
    bl object_subtractHP
locret_8014016:
    pop {pc}
// end of function sub_8013FF8

.thumb
sub_8014018:
    ldr r1, [pc, #0x8014030-0x8014018-4] // =byte_8014034
    ldrb r0, [r1,r0]
    mov pc, lr
// end of function sub_8014018

.thumb
sub_801401E:
    push {lr}
    bl sub_8014018
    mov r1, #0x64 
    mul r0, r1
    mov r1, r10
    ldr r1, [r1,#0x74]
    add r0, r0, r1
    pop {pc}
off_8014030:    .word byte_8014034
byte_8014034:    .byte 0x0, 0x1, 0x1, 0x1, 0x1
    .byte 0x1, 0x1, 0x1, 0x1, 0x1
    .byte 0x1, 0x1
// end of function sub_801401E

.thumb
sub_8014040:
    push {r4,r5,lr}
    bl sub_80103BC
    add r5, r0, #0
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    bne locret_801407E
    mov r1, #0x36 
    bl sub_8013774
    cmp r0, #1
    bne locret_801407E
    mov r1, #0x3e 
    bl sub_8013790
    add r0, #9
    mov r1, #0xa
    svc 6
    bl object_addHP
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #6
    bl sub_80E05F6
    mov r0, #0x8a
    bl sound_play
locret_801407E:
    pop {r4,r5,pc}
// end of function sub_8014040

.thumb
sub_8014080:
    push {lr}
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0
    bne locret_80140EC
    mov r0, #1
    lsl r0, r0, #0x11
    bl object_clearFlag
    mov r1, #0x23 
    mov r2, #0
    bl sub_8013754
    mov r0, #0x20 
    bl object_clearFlag
    bl sub_80107C0
    mov r1, #1
    mov r2, #2
    bl sub_801A082
    mov r1, #0x1b
    mov r2, #0
    bl sub_8013754
    mov r0, #1
    lsl r0, r0, #0x12
    bl object_clearFlag
    mov r1, #0x1d
    mov r2, #0
    bl sub_8013754
    mov r0, #0x10
    bl object_clearFlag
    mov r1, #0x1c
    mov r2, #0
    bl sub_8013754
    mov r1, #7
    mov r2, #0xff
    bl sub_8013754
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0
    bne locret_80140EC
    ldr r0, [r5,#0x58]
    mov r1, #0xff
    strb r1, [r0,#8]
locret_80140EC:
    pop {pc}
// end of function sub_8014080

.thumb
sub_80140EE:
    push {lr}
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0
    bne locret_801414E
    mov r0, #1
    lsl r0, r0, #0x11
    bl object_clearFlag
    mov r1, #0x23 
    mov r2, #0
    bl sub_8013754
    mov r0, #0x20 
    bl object_clearFlag
    bl sub_80107C0
    mov r1, #1
    mov r2, #2
    bl sub_801A082
    mov r1, #0x1b
    mov r2, #0
    bl sub_8013754
    mov r0, #0x10
    bl object_clearFlag
    mov r1, #0x1c
    mov r2, #0
    bl sub_8013754
    mov r1, #7
    mov r2, #0xff
    bl sub_8013754
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0
    bne loc_801414A
    ldr r0, [r5,#0x58]
    mov r1, #0xff
    strb r1, [r0,#8]
loc_801414A:
    bl loc_801469C
locret_801414E:
    pop {pc}
// end of function sub_80140EE

    push {r4,lr}
    mov r4, #2
    bl getPETNaviSelect
    mov r1, #0x38 
    bl sub_80137B6
    tst r0, r0
    bne loc_8014174
    mov r4, #1
    bl getPETNaviSelect
    mov r1, #0x37 
    bl sub_80137B6
    tst r0, r0
    bne loc_8014174
    mov r4, #0
loc_8014174:
    add r0, r4, #0
    pop {r4,pc}
.thumb
sub_8014178:
    push {r4,lr}
    mov r0, #0
    mov r1, #8
    bl sub_80136CC
    add r4, r0, #0
    mov r0, #1
    mov r1, #8
    bl sub_80136CC
    mov r1, #3
    mul r0, r1
    add r0, r0, r4
    ldr r4, [pc, #0x801419c-0x8014192-2] // =unk_80141A0
    ldrb r0, [r4,r0]
    bl sub_801DF8C
    pop {r4,pc}
off_801419C:    .word unk_80141A0
unk_80141A0:    .byte 0x20
    .byte 0x40 
    .byte 0x10
    .byte 0x40 
    .byte 0x40 
    .byte 0x20
    .byte 0x10
    .byte 0x20
    .byte 0x10
    .byte 0
    .byte 0
    .byte 0
// end of function sub_8014178

.thumb
sub_80141AC:
    push {lr}
    bl getPETNaviSelect
    mov r1, #0x21 
    mov r2, #3
    bl sub_801379E
    pop {pc}
off_80141BC:    .word 0x12C
off_80141C0:    .word 0x258
off_80141C4:    .word 0x104
// end of function sub_80141AC

.thumb
sub_80141C8:
    push {lr}
    mov r1, #0x42 
    bl sub_8013790
    strh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
    bl sub_802D246
    mov r1, #4
    tst r0, r1
    bne loc_80141E6
    mov r1, #0x40 
    bl sub_8013790
    strh r0, [r5,#0x24]
loc_80141E6:
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    bne locret_80141F2
    bl sub_801E0BC
locret_80141F2:
    pop {pc}
// end of function sub_80141C8

.thumb
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
    cmp r0, #9
    beq locret_8014214
    ldr r0, [pc, #0x80142d8-0x801420e-2] // =0x400
    bl sub_8010312
locret_8014214:
    pop {pc}
// end of function sub_80141F4

loc_8014216:
    push {lr}
    mov r0, #0x20 
    bl sub_801031C
    ldrb r0, [r5,#0x16]
    bl sub_8010018
    add r0, #0x26 
    mov r1, #0xc
    bl sub_80008C0
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8014256
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    tst r0, r0
    bne loc_8014256
    push {r5}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
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
    ldr r1, [pc, #0x8014268-0x801425e-2] // =off_801426C
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_8014268:    .word off_801426C
off_801426C:    .word sub_801429C+1
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
.thumb
sub_801429C:
    push {lr}
    bl loc_80144CA
    pop {pc}
// end of function sub_801429C

    push {lr}
    mov r0, #0x20 
    bl sub_8010312
    pop {pc}
locret_80142AE:
    mov pc, lr
.thumb
sub_80142B0:
    push {lr}
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq locret_80142C0
    mov r0, #0xa
    strh r0, [r5,#0x2c]
locret_80142C0:
    pop {pc}
// end of function sub_80142B0

.thumb
sub_80142C2:
    push {lr}
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq locret_80142D4
    mov r0, #0xa
    ldr r1, [r5,#0x54]
    strh r0, [r1,#0x2e]
locret_80142D4:
    pop {pc}
    .byte 0
    .byte 0
off_80142D8:    .word 0x400
// end of function sub_80142C2

.thumb
sub_80142DC:
    push {r4,lr}
    bl sub_802D234
    cmp r0, #1
    beq locret_8014324
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0
    bne locret_8014324
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0
    bne locret_8014324
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0x15
    tst r0, r1
    bne locret_8014324
    bl sub_801442C
    cmp r0, #0x78 
    bge loc_801431C
    ldr r0, [r5,#0x54]
    add r0, #0x80
    ldrh r0, [r0]
    lsr r0, r0, #1
    cmp r0, #0x96
    bge loc_801431C
    b locret_8014324
loc_801431C:
    mov r0, #1
    lsl r0, r0, #9
    bl sub_801A16C
locret_8014324:
    pop {r4,pc}
// end of function sub_80142DC

.thumb
sub_8014326:
    push {r4,lr}
    ldrh r0, [r5,#0x28]
    bl sub_800F29C
    cmp r0, #2
    bne locret_80143A4
    ldr r4, [r5,#0x58]
    ldrb r0, [r4,#1]
    ldrb r0, [r5,#0x16]
    bl sub_8015B54
    cmp r0, #5
    beq loc_8014394
    cmp r0, #1
    beq loc_8014394
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0x15
    tst r0, r1
    bne loc_801437A
    bl sub_801A180
    mov r1, #1
    lsl r1, r1, #9
    tst r0, r1
    beq locret_80143A4
    add r0, r1, #0
    bl sub_801A176
    mov r0, #1
    lsl r0, r0, #0x15
    bl object_setFlag
    mov r0, #0x96
    lsl r0, r0, #2
    strh r0, [r4,#0x34]
    ldrb r0, [r5,#0x16]
    mov r1, #0x80
    bl sub_8015BEC
    b locret_80143A4
loc_801437A:
    mov r0, #1
    lsl r0, r0, #9
    bl sub_801A176
    ldrh r0, [r4,#0x34]
    tst r0, r0
    beq loc_801438E
    sub r0, #1
    strh r0, [r4,#0x34]
    bgt locret_80143A4
loc_801438E:
    bl sub_80143A6
    b locret_80143A4
loc_8014394:
    mov r0, #1
    lsl r0, r0, #9
    bl sub_801A176
    mov r0, #1
    lsl r0, r0, #0x15
    bl object_clearFlag
locret_80143A4:
    pop {r4,pc}
// end of function sub_8014326

.thumb
sub_80143A6:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_8013682
    mov r1, #0x80
    strb r1, [r0,#0xe]
    b loc_80143B6
loc_80143B4:
    push {lr}
loc_80143B6:
    mov r0, #1
    lsl r0, r0, #0x15
    bl object_clearFlag
    ldr r0, [pc, #0x80144b4-0x80143be-2] // =0x200
    bl sub_801A176
    ldr r1, [r5,#0x58]
    mov r0, #0
    strh r0, [r1,#0x34]
    str r0, [r1,#0x4c]
    pop {pc}
// end of function sub_80143A6

.thumb
sub_80143CE:
    push {lr}
    bl sub_801445C
    bne locret_80143E2
    bl sub_8014490
    bne locret_80143E2
    ldr r0, [pc, #0x80144b4-0x80143dc-4] // =0x200
    bl sub_801A16C
locret_80143E2:
    pop {pc}
// end of function sub_80143CE

.thumb
sub_80143E4:
    push {lr}
    ldr r0, [r5,#0x58]
    ldrh r0, [r0,#0x34]
    tst r0, r0
    beq locret_80143F4
    ldr r0, [pc, #0x80143f8-0x80143ee-2] // =0xF
    bl sub_8002ED0
locret_80143F4:
    pop {pc}
    .balign 4, 0x00
dword_80143F8:    .word 0xF
// end of function sub_80143E4

.thumb
sub_80143FC:
    push {lr}
    bl battle_isTimeStop
    bne locret_801441E
    bl battle_isPaused
    bne locret_801441E
    bl object_getFlag
    ldr r1, [pc, #0x8014420-0x801440e-2] // =0xC00
    tst r0, r1
    beq loc_801441A
    bl sub_8014432
    b locret_801441E
loc_801441A:
    bl sub_8014424
locret_801441E:
    pop {pc}
off_8014420:    .word 0xC00
// end of function sub_80143FC

.thumb
sub_8014424:
    ldr r0, [r5,#0x58]
    mov r1, #0
    str r1, [r0,#0x4c]
    mov pc, lr
// end of function sub_8014424

.thumb
sub_801442C:
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x4c]
    mov pc, lr
// end of function sub_801442C

.thumb
sub_8014432:
    ldr r0, [r5,#0x58]
    ldr r1, [r0,#0x4c]
    add r1, #1
    str r1, [r0,#0x4c]
    mov pc, lr
// end of function sub_8014432

.thumb
sub_801443C:
    push {lr}
    ldr r3, [r5,#0x58]
    ldr r0, [pc, #0x80144b8-0x8014440-4] // =0xFFFF
    strh r0, [r3,#0x32]
    pop {pc}
// end of function sub_801443C

.thumb
sub_8014446:
    ldr r3, [r5,#0x58]
    mov r0, #0
    strh r0, [r3,#0x32]
    mov pc, lr
// end of function sub_8014446

    push {lr}
    bl sub_80103BC
    ldr r3, [r0,#0x58]
    mov r0, #0
    strh r0, [r3,#0x32]
    pop {pc}
.thumb
sub_801445C:
    ldr r0, [r5,#0x58]
    ldrh r0, [r0,#0x32]
    cmp r0, #0
    mov pc, lr
// end of function sub_801445C

.thumb
nullsub_6:
    mov pc, lr
// end of function nullsub_6

.thumb
sub_8014466:
    push {lr}
    ldr r3, [r5,#0x58]
    ldr r0, [pc, #0x80144bc-0x801446a-2] // =0x3C0
    strh r0, [r3,#0x36]
    ldrb r0, [r5,#0x16]
    mov r1, #0
    bl sub_8015BEC
    pop {pc}
// end of function sub_8014466

    push {lr}
    ldr r3, [r5,#0x58]
    mov r0, #0
    strh r0, [r3,#0x36]
    pop {pc}
    push {lr}
    bl sub_80103BC
    ldr r3, [r0,#0x58]
    mov r0, #0
    strh r0, [r3,#0x36]
    pop {pc}
.thumb
sub_8014490:
    ldr r0, [r5,#0x58]
    ldrh r0, [r0,#0x36]
    cmp r0, #0
    mov pc, lr
// end of function sub_8014490

.thumb
sub_8014498:
    push {lr}
    bl battle_isBattleOver
    tst r0, r0
    bne locret_80144B2
    ldr r3, [r5,#0x58]
    ldrh r0, [r3,#0x36]
    cmp r0, #0
    beq locret_80144B2
    ldrh r1, [r5,#0x24]
    sub r1, #1
    beq locret_80144B2
    strh r1, [r5,#0x24]
locret_80144B2:
    pop {pc}
off_80144B4:    .word 0x200
dword_80144B8:    .word 0xFFFF
off_80144BC:    .word 0x3C0
// end of function sub_8014498

.thumb
sub_80144C0:
    push {r4,r7,lr}
    mov r7, #0
    bl sub_801390C
    b loc_80144CE
loc_80144CA:
    push {r4,r7,lr}
    mov r7, #1
loc_80144CE:
    ldrb r0, [r5,#0x16]
    bl sub_8010018
    add r0, #0x26 
    mov r1, #0xc
    bl sub_80008C0
    mov r0, #0x20 
    bl sub_801031C
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_801450C
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    tst r0, r0
    bne loc_801450C
    push {r5}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
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
    mov r0, #1
    bl sub_801A07C
    bl sub_8012EA8
    tst r7, r7
    bne loc_8014528
    bl sub_800FEEC
loc_8014528:
    bl loc_8014536
    bl sub_801086C
    bl sub_80142C2
    pop {r4,r7,pc}
// end of function sub_80144C0

loc_8014536:
    push {r6,lr}
    ldr r6, [r5,#0x58]
    mov r1, #0x2c 
    bl sub_8013774
    lsl r0, r0, #2
    ldr r1, [pc, #0x801454c-0x8014542-2] // =off_8014550
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
off_801454C:    .word off_8014550
off_8014550:    .word locret_80145B4+1
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
    mov pc, lr
locret_80145B6:
    mov pc, lr
locret_80145B8:
    mov pc, lr
locret_80145BA:
    mov pc, lr
locret_80145BC:
    mov pc, lr
locret_80145BE:
    mov pc, lr
locret_80145C0:
    mov pc, lr
.thumb
sub_80145C2:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#7]
    cmp r0, #1
    beq locret_80145D2
    bl sub_801A264
locret_80145D2:
    pop {pc}
// end of function sub_80145C2

.thumb
sub_80145D4:
    push {lr}
    mov r0, #0x10
    bl object_setFlag
    pop {pc}
// end of function sub_80145D4

.thumb
sub_80145DE:
    push {lr}
    mov r0, #1
    lsl r0, r0, #0x11
    bl object_setFlag
    pop {pc}
// end of function sub_80145DE

.thumb
nullsub_4:
    mov pc, lr
// end of function nullsub_4

.thumb
sub_80145EC:
    push {r7,lr}
    mov r0, #1
    lsl r0, r0, #0x11
    bl object_setFlag
    mov r7, #0x40 
    add r7, r7, r6
    ldr r0, [r7]
    cmp r0, #0
    bne locret_8014604
    bl sub_80E1620
locret_8014604:
    pop {r7,pc}
// end of function sub_80145EC

.thumb
sub_8014606:
    push {r7,lr}
    mov r0, #0x30 
    bl object_setFlag
    bl sub_80107C0
    mov r1, #0x10
    mov r2, #2
    bl sub_801A082
    mov r7, #0x40 
    add r7, r7, r6
    ldr r0, [r7]
    cmp r0, #0
    bne locret_8014628
    bl sub_80E1620
locret_8014628:
    pop {r7,pc}
// end of function sub_8014606

.thumb
sub_801462A:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#7]
    cmp r0, #1
    beq loc_801463A
    bl sub_801A264
loc_801463A:
    bl sub_8014606
    pop {pc}
// end of function sub_801462A

.thumb
sub_8014640:
    push {lr}
    mov r0, #1
    lsl r0, r0, #0x11
    bl object_setFlag
    bl sub_8014606
    pop {pc}
// end of function sub_8014640

.thumb
sub_8014650:
    push {r7,lr}
    mov r0, #1
    lsl r0, r0, #0x11
    bl object_setFlag
    mov r7, #0x40 
    add r7, r7, r6
    ldr r0, [r7]
    cmp r0, #0
    bne loc_8014668
    bl sub_80E1620
loc_8014668:
    ldr r0, [pc, #0x80147d8-0x8014668-4] // =0xFFFF
    bl object_setInvulnerableTime
    bl sub_802D310
    pop {r7,pc}
// end of function sub_8014650

.thumb
sub_8014674:
    push {r7,lr}
    ldr r0, [pc, #0x80147dc-0x8014676-2] // =dword_8000004+44
    bl object_setFlag
    bl sub_80107C0
    mov r1, #0x10
    mov r2, #2
    bl sub_801A082
    mov r7, #0x40 
    add r7, r7, r6
    ldr r0, [r7]
    cmp r0, #0
    bne loc_8014696
    bl sub_80E1620
loc_8014696:
    bl sub_802D310
    pop {r7,pc}
// end of function sub_8014674

loc_801469C:
    push {r6,lr}
    ldr r6, [r5,#0x54]
    mov r1, #0x2c 
    bl sub_8013774
    lsl r0, r0, #2
    ldr r1, [pc, #0x80146b4-0x80146a8-4] // =off_80146B8
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_80146B4:    .word off_80146B8
off_80146B8:    .word dword_801471D
    .word dword_801471D+2
    .word dword_8014721
    .word dword_8014721+2
    .word 0x8014725
    .word 0x8014727
    .word 0x8014729
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
byte_801471C:    .byte 0xF7
dword_801471D:    .word 0xF746F746
dword_8014721:    .word 0xF746F746
    .word 0xF746F746
    .byte 0x46 
.thumb
sub_801472A:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#7]
    cmp r0, #1
    beq locret_801473A
    bl sub_801A264
locret_801473A:
    pop {pc}
// end of function sub_801472A

.thumb
sub_801473C:
    push {lr}
    mov r0, #0x10
    bl object_setFlag
    pop {pc}
// end of function sub_801473C

.thumb
sub_8014746:
    push {lr}
    mov r0, #1
    lsl r0, r0, #0x11
    bl object_setFlag
    pop {pc}
// end of function sub_8014746

.thumb
nullsub_5:
    mov pc, lr
// end of function nullsub_5

.thumb
sub_8014754:
    push {r7,lr}
    mov r0, #1
    lsl r0, r0, #0x11
    bl object_setFlag
    pop {r7,pc}
// end of function sub_8014754

.thumb
sub_8014760:
    push {lr}
    mov r0, #0x30 
    bl object_setFlag
    bl sub_80107C0
    mov r1, #0x10
    mov r2, #2
    bl sub_801A082
    pop {pc}
// end of function sub_8014760

.thumb
sub_8014776:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#7]
    cmp r0, #1
    beq loc_8014786
    bl sub_801A264
loc_8014786:
    bl sub_8014760
    pop {pc}
// end of function sub_8014776

.thumb
sub_801478C:
    push {lr}
    mov r0, #1
    lsl r0, r0, #0x11
    bl object_setFlag
    bl sub_8014760
    pop {pc}
// end of function sub_801478C

.thumb
sub_801479C:
    push {r7,lr}
    mov r0, #1
    lsl r0, r0, #0x11
    bl object_setFlag
    ldr r0, [pc, #0x80147d8-0x80147a6-2] // =0xFFFF
    bl object_setInvulnerableTime
    bl sub_802D310
    pop {r7,pc}
// end of function sub_801479C

.thumb
sub_80147B2:
    push {lr}
    mov r0, #0x30 
    bl object_setFlag
    bl sub_80107C0
    mov r1, #0x10
    mov r2, #2
    bl sub_801A082
    ldr r0, [pc, #0x80147e0-0x80147c6-2] // =start_
    bl object_setFlag
    ldr r0, [pc, #0x80147d8-0x80147cc-4] // =0xFFFF
    bl object_setInvulnerableTime
    bl sub_802D310
    pop {pc}
dword_80147D8:    .word 0xFFFF
off_80147DC:    .word dword_8000004+0x2C
off_80147E0:    .word start_
// end of function sub_80147B2

.thumb
sub_80147E4:
    push {r5-r7,lr}
    ldr r5, [pc, #0x8014820-0x80147e6-2] // =dword_20367F0
    add r6, r0, #0
    add r7, r1, #0
    mov r1, #8
    add r1, r1, r5
    mov r2, #0x10
    bl sub_800093C
    add r0, r6, #0
    ldr r1, [pc, #0x8014824-0x80147f8-4] // =unk_203A980
    mov r2, #0x10
    bl sub_800093C
    add r0, r7, #0
    mov r1, #0x18
    add r1, r1, r5
    mov r2, #0x10
    bl sub_800093C
    add r0, r7, #0
    ldr r1, [pc, #0x8014828-0x801480e-2] // =unk_203A990
    mov r2, #0x10
    bl sub_800093C
    mov r0, #0
    str r0, [r5]
    mov r0, #1
    strb r0, [r5,#0x4] // (byte_20367F4 - 0x20367f0)
    pop {r5-r7,pc}
off_8014820:    .word dword_20367F0
off_8014824:    .word unk_203A980
off_8014828:    .word unk_203A990
// end of function sub_80147E4

.thumb
sub_801482C:
    ldr r1, [pc, #0x8014838-0x801482c-4] // =dword_20367F0
    mov r0, #0
    str r0, [r1]
    mov r0, #1
    strb r0, [r1,#0x4] // (byte_20367F4 - 0x20367f0)
    mov pc, lr
off_8014838:    .word dword_20367F0
// end of function sub_801482C

loc_801483C:
    push {r5-r7,lr}
    ldr r5, [pc, #0x801485c-0x801483e-2] // =dword_20367F0
    mov r6, #8
    add r6, r6, r5
    mov r7, #0x18
    add r7, r7, r5
    ldr r1, [pc, #0x8014858-0x8014848-4] // =off_8014860
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldrb r0, [r5,#0x4] // (byte_20367F4 - 0x20367f0)
    pop {r5-r7,pc}
    .balign 4, 0x00
off_8014858:    .word off_8014860
off_801485C:    .word dword_20367F0
off_8014860:    .word sub_801486C+1
    .word sub_80148CC+1
    .word sub_8014A00+1
.thumb
sub_801486C:
    push {r4,lr}
    mov r4, #0
    ldrb r0, [r6,#4]
    cmp r0, #0xff
    beq loc_801487E
    ldr r0, [r6,#8]
    bl sub_802DCDE
    b loc_8014888
loc_801487E:
    ldrb r0, [r6]
    cmp r0, #0xff
    beq loc_8014888
    mov r4, #1
    b loc_8014898
loc_8014888:
    ldr r0, [r6,#8]
    bl sub_80159C6
    beq loc_8014898
    ldr r0, [r6,#8]
    bl sub_8015994
    b loc_8014898
loc_8014898:
    ldrb r0, [r7,#4]
    cmp r0, #0xff
    beq loc_80148A6
    ldr r0, [r7,#8]
    bl sub_802DCDE
    b loc_80148B0
loc_80148A6:
    ldrb r0, [r7]
    cmp r0, #0xff
    beq loc_80148B0
    mov r4, #1
    b loc_80148C0
loc_80148B0:
    ldr r0, [r7,#8]
    bl sub_80159C6
    beq loc_80148C0
    ldr r0, [r7,#8]
    bl sub_8015994
    b loc_80148C0
loc_80148C0:
    mov r0, #8
    tst r4, r4
    beq loc_80148C8
    mov r0, #4
loc_80148C8:
    str r0, [r5]
    pop {r4,pc}
// end of function sub_801486C

.thumb
sub_80148CC:
    push {lr}
    ldr r1, [pc, #0x80148dc-0x80148ce-2] // =off_80148E0
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_80148DC:    .word off_80148E0
off_80148E0:    .word sub_80148EC+1
    .word sub_8014944+1
    .word sub_801498E+1
// end of function sub_80148CC

.thumb
sub_80148EC:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_8014912
    bl sub_802D234
    cmp r0, #1
    bne loc_8014900
    mov r0, #0x70 
    b loc_8014902
loc_8014900:
    mov r0, #0x44 
loc_8014902:
    mov r1, #0x10
    bl engine_setScreeneffect
    ldr r0, [pc, #0x8014940-0x8014908-4] // =0x4000
    bl sub_801DACC
    mov r0, #4
    strb r0, [r5,#3]
loc_8014912:
    bl engine_isScreeneffectAnimating
    tst r0, r0
    bne locret_801493E
    bl sub_802D234
    cmp r0, #1
    bne loc_8014926
    mov r0, #0xa0
    b loc_8014932
loc_8014926:
    bl sub_802E09A
    bne loc_8014930
    mov r0, #0x90
    b loc_8014932
loc_8014930:
    ldr r0, [pc, #0x80149ec-0x8014930-4] // =0x20080
loc_8014932:
    bl sub_801DACC
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_801493E:
    pop {pc}
dword_8014940:    .word 0x4000
// end of function sub_80148EC

.thumb
sub_8014944:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_801496A
    ldrb r0, [r6]
    cmp r0, #0xff
    beq loc_8014958
    ldr r0, [r6,#8]
    bl sub_801596E
loc_8014958:
    ldrb r0, [r7]
    cmp r0, #0xff
    beq loc_8014964
    ldr r0, [r7,#8]
    bl sub_801596E
loc_8014964:
    mov r0, #4
    strb r0, [r5,#3]
    b locret_801498C
loc_801496A:
    ldr r0, [r6,#8]
    bl sub_801597C
    tst r0, r0
    bne locret_801498C
    ldr r0, [r7,#8]
    bl sub_801597C
    tst r0, r0
    bne locret_801498C
    mov r0, #0xff
    strb r0, [r6]
    strb r0, [r7]
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_801498C:
    pop {pc}
// end of function sub_8014944

.thumb
sub_801498E:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_80149AE
    bl sub_802D234
    cmp r0, #1
    bne loc_80149A2
    mov r0, #0x6c 
    b loc_80149A4
loc_80149A2:
    mov r0, #0x40 
loc_80149A4:
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5,#3]
loc_80149AE:
    bl engine_isScreeneffectAnimating
    tst r0, r0
    bne locret_80149EA
    bl sub_800A97A
    push {r0}
    bl sub_802D234
    cmp r0, #1
    pop {r0}
    bne loc_80149CA
    ldr r1, [pc, #0x80149f0-0x80149c6-2] // =0x40A0
    b loc_80149DA
loc_80149CA:
    push {r0}
    bl sub_802E09A
    pop {r0}
    bne loc_80149D8
    ldr r1, [pc, #0x80149f4-0x80149d4-4] // =0x4090
    b loc_80149DA
loc_80149D8:
    ldr r1, [pc, #0x80149f8-0x80149d8-4] // =0x24080
loc_80149DA:
    tst r0, r0
    beq loc_80149E0
    ldr r1, [pc, #0x80149fc-0x80149de-2] // =0x4080
loc_80149E0:
    add r0, r1, #0
    bl sub_801DA48
    mov r0, #8
    str r0, [r5]
locret_80149EA:
    pop {pc}
dword_80149EC:    .word 0x20080
dword_80149F0:    .word 0x40A0
dword_80149F4:    .word 0x4090
dword_80149F8:    .word 0x24080
dword_80149FC:    .word 0x4080
// end of function sub_801498E

.thumb
sub_8014A00:
    push {lr}
    ldr r0, [r6,#8]
    bl sub_80159A2
    tst r0, r0
    bne locret_8014A36
    ldr r0, [r7,#8]
    bl sub_80159A2
    tst r0, r0
    bne locret_8014A36
    ldr r0, [r6,#8]
    bl sub_802DCEC
    tst r0, r0
    bne locret_8014A36
    mov r0, #0xff
    strb r0, [r6,#4]
    ldr r0, [r7,#8]
    bl sub_802DCEC
    tst r0, r0
    bne locret_8014A36
    mov r0, #0xff
    strb r0, [r7,#4]
    mov r0, #0
    strb r0, [r5,#4]
locret_8014A36:
    pop {pc}
// end of function sub_8014A00

loc_8014A38:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    cmp r0, #1
    blt loc_8014AA8
    cmp r0, #0x18
    bgt loc_8014AA8
    cmp r0, #0x17
    blt loc_8014A58
    ldr r1, [pc, #0x8014aec-0x8014a4c-4] // =off_8014AF0
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    b loc_8014A98
loc_8014A58:
    cmp r0, #0xd
    blt loc_8014A72
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0xa
    bgt loc_8014A8E
    ldr r1, [pc, #0x8014ad8-0x8014a66-2] // =off_8014ADC
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    b loc_8014A98
loc_8014A72:
    cmp r0, #0xb
    blt loc_8014A82
    ldr r1, [pc, #0x8014ac4-0x8014a76-2] // =off_8014AC8
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    b loc_8014A98
loc_8014A82:
    ldr r1, [pc, #0x8014ab0-0x8014a82-2] // =off_8014AB4
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    b loc_8014A98
loc_8014A8E:
    ldr r1, [pc, #0x8014b00-0x8014a8e-2] // =off_8014B04
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
loc_8014A98:
    bl sub_801032C
    ldr r1, [pc, #0x8014b14-0x8014a9c-4] // =0x80000
    tst r0, r1
    bne locret_8014AA6
    bl sub_801BCD0
locret_8014AA6:
    pop {pc}
loc_8014AA8:
    mov r0, #0x80
    bl sub_801031C
    pop {pc}
off_8014AB0:    .word off_8014AB4
off_8014AB4:    .word sub_8014B18+1
    .word sub_8014B98+1
    .word sub_8014BEE+1
    .word sub_8014CC0+1
off_8014AC4:    .word off_8014AC8
off_8014AC8:    .word sub_8014D08+1
    .word sub_8014D70+1
    .word sub_8014E08+1
    .word sub_8014F04+1
off_8014AD8:    .word off_8014ADC
off_8014ADC:    .word sub_8014F40+1
    .word sub_8014FA8+1
    .word sub_8015040+1
    .word sub_8015128+1
off_8014AEC:    .word off_8014AF0
off_8014AF0:    .word sub_801516C+1
    .word sub_80151D4+1
    .word sub_80152C8+1
    .word sub_80153B0+1
off_8014B00:    .word off_8014B04
off_8014B04:    .word sub_80153EC+1
    .word sub_801544C+1
    .word sub_80154C8+1
    .word sub_80155CC+1
dword_8014B14:    .word 0x80000
.thumb
sub_8014B18:
    push {r4,lr}
    ldr r0, [pc, #0x8014b94-0x8014b1a-2] // =0x80000
    bl sub_8010312
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
// end of function sub_8014B18

    bl sub_800E29C
    bl sub_801A04C
    bl sub_800EB08
    bl sub_800F46C
    strb r0, [r5,#0x17]
    bl sub_800F2C6
    bl sub_8012EA8
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x5c]
    bl sub_80C4C3A
    bl sub_80158FA
    mov r0, #6
    strh r0, [r7,#0x10]
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #9
    bne loc_8014B8A
    ldrb r0, [r5,#0x10]
    cmp r0, #0x16
    bne loc_8014B8A
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    ldr r0, [pc, #0x8014b94-0x8014b72-2] // =0x80000
    bl sub_801031C
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_8014B8A
    mov r1, #1
    strb r1, [r0,#6]
    ldrb r1, [r0]
    mov r2, #0x14
    orr r1, r2
    strb r1, [r0]
loc_8014B8A:
    mov r0, #4
    strh r0, [r7]
    pop {r4,pc}
    .word 0x80111C40
dword_8014B94:    .word 0x80000
.thumb
sub_8014B98:
    push {r4,r6,lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_8014BCA
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bmi loc_8014BAA
    b locret_8014BEC
loc_8014BAA:
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    add r4, r0, #0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r3, #0x14
    bl sub_80BC844
    mov r0, #0x28 
    add r0, #8
    strh r0, [r7,#0x10]
    mov r0, #0
    str r0, [r7,#0x30]
    mov r0, #4
    strb r0, [r7,#1]
loc_8014BCA:
    ldr r0, [r7,#0x30]
    add r0, #1
    cmp r0, #6
    bgt loc_8014BD8
    str r0, [r7,#0x30]
    bl sub_8002DB0
loc_8014BD8:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_8014BEC
    mov r0, #6
    strh r0, [r7,#0x10]
    mov r0, #8
    strh r0, [r7]
    mov r0, #0
    str r0, [r7,#0x30]
locret_8014BEC:
    pop {r4,r6,pc}
// end of function sub_8014B98

.thumb
sub_8014BEE:
    push {r4,lr}
    bl sub_8002DB0
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_8014C9E
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    mov r1, #0x2c 
    bl sub_8013774
    bl loc_8011384
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    push {r0}
    mov r1, #0x29 
    bl sub_8013774
    pop {r1}
    bl sub_800FC9E
    mov r0, #0x80
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
    bl sub_8002E3C
    mov r0, #0
    bl sub_800F2B6
    ldrb r0, [r5,#0x10]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_800E456
    bl sub_8002F5C
    bl sub_8002DB0
    bl sub_800E29C
    mov r0, #0xa
    strh r0, [r7,#0x10]
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    mov r1, #0x2c 
    add r2, r0, #0
    bl sub_8013754
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #1
    blt loc_8014C72
    cmp r0, #0x18
    bgt loc_8014C72
    bl sub_8015B22
loc_8014C72:
    mov r1, #0x2c 
    bl sub_8013774
    mov r2, #0
    push {r0}
    bl loc_8011268
    pop {r0}
    mov r0, #3
    bl sub_8018856
    neg r1, r1
    bl sub_801DC06
    mov r0, #0x8d
    bl sound_play
    mov r0, #0x77 
    bl sound_play
    mov r0, #4
    strb r0, [r7,#1]
loc_8014C9E:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_8014CBE
    bl sub_80144C0
    bl sub_80143A6
    ldrb r0, [r5,#0x16]
    mov r1, #0x80
    bl sub_8015BEC
    bl sub_800EB08
    mov r0, #0xc
    strh r0, [r7]
locret_8014CBE:
    pop {r4,pc}
// end of function sub_8014BEE

.thumb
sub_8014CC0:
    push {r4,lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_8014CD0
    mov r0, #0x14
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_8014CD0:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_8014CFE
    ldrb r0, [r5,#0x16]
    mov r1, #0xb
    mov r2, #1
    bl sub_800AB2E
    mov r0, #0x80
    bl sub_801031C
    mov r0, #0x20 
    bl battle_clearFlags
    ldr r0, [pc, #0x8014d00-0x8014cee-2] // =0x80000
    bl sub_801031C
    ldr r0, [pc, #0x8014d04-0x8014cf4-4] // =0x80008600
    bl sub_800FFEE
    bl sub_8011714
locret_8014CFE:
    pop {r4,pc}
dword_8014D00:    .word 0x80000
dword_8014D04:    .word 0x80008600
// end of function sub_8014CC0

.thumb
sub_8014D08:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C
    bl sub_801A04C
    bl sub_800EB08
    bl sub_800F46C
    strb r0, [r5,#0x17]
    bl sub_800F2C6
    bl sub_8012EA8
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x5c]
    bl sub_80C4C3A
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    bl sub_80158FA
    mov r0, #0x11
    strb r0, [r5,#0x10]
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_8014D5A
    mov r1, #1
    strb r1, [r0,#6]
    ldrb r1, [r0]
    mov r2, #0x14
    orr r1, r2
    strb r1, [r0]
loc_8014D5A:
    mov r0, #6
    strh r0, [r7,#0x10]
    mov r0, #0xc
    mov r1, #5
    bl sub_8002B30
    mov r0, #4
    strh r0, [r7]
    pop {r4,pc}
    .word 0x80111C40
// end of function sub_8014D08

.thumb
sub_8014D70:
    push {r4,r6,lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_8014DE6
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bmi loc_8014D82
    b locret_8014DF2
loc_8014D82:
    ldr r0, [pc, #0x8014e04-0x8014d82-2] // =0x80000
    bl sub_8010312
    mov r0, #0xf7
    bl sound_play
    mov r4, #0x2e 
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #8
    orr r4, r0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    bl sub_80E05F6
    cmp r0, #0
    beq loc_8014DDE
    mov r1, #0x36 
    strh r1, [r0,#0x20]
    ldrb r1, [r0]
    mov r2, #4
    orr r1, r2
    strb r1, [r0]
    ldr r0, [r5,#0x38]
    ldr r1, [pc, #0x8014df8-0x8014db2-2] // =0xC00000
    add r0, r0, r1
    str r0, [r5,#0x38]
    ldrb r0, [r5,#0x16]
    mov r1, #2
    mov r2, #1
    bl sub_800AB2E
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    ldr r1, [pc, #0x8014dfc-0x8014dc8-4] // =0x1CC
    cmp r0, #0xb
    beq loc_8014DD0
    ldr r1, [pc, #0x8014e00-0x8014dce-2] // =0x1CD
loc_8014DD0:
    add r0, r1, #0
    bl sound_play
    mov r0, #2
    mov r1, #0x3c 
    bl sub_80302B6
loc_8014DDE:
    mov r0, #0x36 
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_8014DE6:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_8014DF2
    mov r0, #8
    strh r0, [r7]
locret_8014DF2:
    pop {r4,r6,pc}
    .word 0x200000
dword_8014DF8:    .word 0xC00000
off_8014DFC:    .word 0x1CC
off_8014E00:    .word 0x1CD
dword_8014E04:    .word 0x80000
// end of function sub_8014D70

.thumb
sub_8014E08:
    push {r4,lr}
    bl sub_8002DB0
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_8014EB8
    mov r1, #0x2c 
    bl sub_8013774
    bl loc_8011384
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    push {r0}
    mov r1, #0x29 
    bl sub_8013774
    pop {r1}
    bl sub_800FC9E
    mov r0, #0x80
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
    bl sub_8002E3C
    mov r0, #0
    bl sub_800F2B6
    ldrb r0, [r5,#0x10]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_800E456
    bl sub_8002F5C
    bl sub_800E29C
    mov r0, #0xa
    strh r0, [r7,#0x10]
    bl sub_8002DB0
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    mov r1, #0x2c 
    add r2, r0, #0
    bl sub_8013754
    ldr r4, [pc, #0x8014f00-0x8014e72-2] // =0x30E00
    bl sub_80E11E0
    mov r0, #1
    add r0, #0xff
    bl sound_play
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #1
    blt loc_8014E92
    cmp r0, #0x18
    bgt loc_8014E92
    bl sub_8015B22
loc_8014E92:
    mov r1, #0x2c 
    bl sub_8013774
    mov r2, #0
    bl loc_8011268
    ldr r0, [r5,#0x50]
    tst r0, r0
    beq loc_8014EA8
    mov r1, #0
    strb r1, [r0,#6]
loc_8014EA8:
    mov r0, #3
    bl sub_8018856
    neg r1, r1
    bl sub_801DC06
    mov r0, #4
    strb r0, [r7,#1]
loc_8014EB8:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_8014EFE
    ldrb r0, [r5,#0x16]
    bl sub_8015B54
    mov r1, #0
    cmp r0, #2
    bne loc_8014ECE
    mov r1, #1
loc_8014ECE:
    push {r1}
    bl sub_80144C0
    bl sub_80143A6
    pop {r0}
    cmp r0, #0
    beq loc_8014EE6
    ldrb r0, [r5,#0x16]
    mov r1, #0xff
    bl sub_8015BEC
loc_8014EE6:
    bl sub_800EB08
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_8014EFA
    push {r5}
    add r5, r0, #0
    bl sub_8002DD8
    pop {r5}
loc_8014EFA:
    mov r0, #0xc
    strh r0, [r7]
locret_8014EFE:
    pop {r4,pc}
dword_8014F00:    .word 0x30E00
// end of function sub_8014E08

.thumb
sub_8014F04:
    push {r4,lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_8014F14
    mov r0, #0x14
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_8014F14:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_8014F38
    mov r0, #0x80
    bl sub_801031C
    mov r0, #0x20 
    bl battle_clearFlags
    ldr r0, [pc, #0x8014f3c-0x8014f28-4] // =0x80000
    bl sub_801031C
    ldr r0, [pc, #0x80152b4-0x8014f2e-2] // =0x80008600
    bl sub_800FFEE
    bl sub_8011714
locret_8014F38:
    pop {r4,pc}
    .balign 4, 0x00
dword_8014F3C:    .word 0x80000
// end of function sub_8014F04

.thumb
sub_8014F40:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C
    bl sub_801A04C
    bl sub_800EB08
    bl sub_800F46C
    strb r0, [r5,#0x17]
    bl sub_800F2C6
    bl sub_8012EA8
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x5c]
    bl sub_80C4C3A
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    bl sub_80158FA
    mov r0, #0x11
    strb r0, [r5,#0x10]
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_8014F92
    mov r1, #1
    strb r1, [r0,#6]
    ldrb r1, [r0]
    mov r2, #0x14
    orr r1, r2
    strb r1, [r0]
loc_8014F92:
    mov r0, #6
    strh r0, [r7,#0x10]
    mov r0, #0xc
    mov r1, #5
    bl sub_8002B30
    mov r0, #4
    strh r0, [r7]
    pop {r4,pc}
    .word 0x80111C40
// end of function sub_8014F40

.thumb
sub_8014FA8:
    push {r4,r6,lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_801501E
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bmi loc_8014FBA
    b locret_801502A
loc_8014FBA:
    ldr r0, [pc, #0x801503c-0x8014fba-2] // =0x80000
    bl sub_8010312
    mov r0, #0xf7
    bl sound_play
    mov r4, #0x2e 
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #8
    orr r4, r0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    bl sub_80E05F6
    cmp r0, #0
    beq loc_8015016
    mov r1, #0x36 
    strh r1, [r0,#0x20]
    ldrb r1, [r0]
    mov r2, #4
    orr r1, r2
    strb r1, [r0]
    ldr r0, [r5,#0x38]
    ldr r1, [pc, #0x8015030-0x8014fea-2] // =0xC00000
    add r0, r0, r1
    str r0, [r5,#0x38]
    ldrb r0, [r5,#0x16]
    mov r1, #2
    mov r2, #1
    bl sub_800AB2E
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    ldr r1, [pc, #0x8015034-0x8015000-4] // =0x1CC
    cmp r0, #0x12
    blt loc_8015008
    ldr r1, [pc, #0x8015038-0x8015006-2] // =0x1CD
loc_8015008:
    add r0, r1, #0
    bl sound_play
    mov r0, #2
    mov r1, #0x3c 
    bl sub_80302B6
loc_8015016:
    mov r0, #0x36 
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_801501E:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_801502A
    mov r0, #8
    strh r0, [r7]
locret_801502A:
    pop {r4,r6,pc}
    .word 0x200000
dword_8015030:    .word 0xC00000
off_8015034:    .word 0x1CC
off_8015038:    .word 0x1CD
dword_801503C:    .word 0x80000
// end of function sub_8014FA8

.thumb
sub_8015040:
    push {r4,lr}
    bl sub_8002DB0
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_8015100
    mov r1, #0x2c 
    bl sub_8013774
    bl loc_8011384
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    push {r0}
    mov r1, #0x29 
    bl sub_8013774
    pop {r1}
    bl sub_800FC9E
    mov r0, #0x80
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
    bl sub_8002E3C
    mov r0, #0
    bl sub_800F2B6
    ldrb r0, [r5,#0x10]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_800E456
    bl sub_8002F5C
    bl sub_800E29C
    mov r0, #0xa
    strh r0, [r7,#0x10]
    bl sub_8002DB0
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    mov r1, #0x2c 
    add r2, r0, #0
    bl sub_8013754
    ldr r4, [pc, #0x8015124-0x80150aa-2] // =0x30E00
    bl sub_80E11E0
    mov r0, #1
    add r0, #0xff
    bl sound_play
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #1
    blt loc_80150CA
    cmp r0, #0x18
    bgt loc_80150CA
    bl sub_8015B22
loc_80150CA:
    mov r1, #0x2c 
    bl sub_8013774
    mov r2, #0
    push {r0}
    bl loc_8011268
    pop {r0}
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_80150F0
    mov r1, #0
    strb r1, [r0,#0x10]
    mov r1, #0
    strb r1, [r0,#6]
    ldrb r1, [r0]
    mov r2, #0x14
    orr r1, r2
    strb r1, [r0]
loc_80150F0:
    mov r0, #3
    bl sub_8018856
    neg r1, r1
    bl sub_801DC06
    mov r0, #4
    strb r0, [r7,#1]
loc_8015100:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_8015120
    bl sub_80144C0
    bl sub_80143A6
    ldrb r0, [r5,#0x16]
    mov r1, #0x80
    bl sub_8015BEC
    bl sub_800EB08
    mov r0, #0xc
    strh r0, [r7]
locret_8015120:
    pop {r4,pc}
    .balign 4, 0x00
dword_8015124:    .word 0x30E00
// end of function sub_8015040

.thumb
sub_8015128:
    push {r4,lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_8015138
    mov r0, #0x14
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_8015138:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_8015166
    ldrb r0, [r5,#0x16]
    mov r1, #0xb
    mov r2, #1
    bl sub_800AB2E
    mov r0, #0x80
    bl sub_801031C
    ldr r0, [pc, #0x8015168-0x8015150-4] // =0x80000
    bl sub_801031C
    mov r0, #0x20 
    bl battle_clearFlags
    ldr r0, [pc, #0x80152b4-0x801515c-4] // =0x80008600
    bl sub_800FFEE
    bl sub_8011714
locret_8015166:
    pop {r4,pc}
dword_8015168:    .word 0x80000
// end of function sub_8015128

.thumb
sub_801516C:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C
    bl sub_801A04C
    bl sub_800EB08
    bl sub_800F46C
    strb r0, [r5,#0x17]
    bl sub_800F2C6
    bl sub_8012EA8
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x5c]
    bl sub_80C4C3A
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    bl sub_80158FA
    mov r0, #0x11
    strb r0, [r5,#0x10]
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_80151BE
    mov r1, #1
    strb r1, [r0,#6]
    ldrb r1, [r0]
    mov r2, #0x14
    orr r1, r2
    strb r1, [r0]
loc_80151BE:
    mov r0, #6
    strh r0, [r7,#0x10]
    mov r0, #0xc
    mov r1, #5
    bl sub_8002B30
    mov r0, #4
    strh r0, [r7]
    pop {r4,pc}
    .word 0x80111C40
// end of function sub_801516C

.thumb
sub_80151D4:
    push {r4,r6,lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_8015288
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bmi loc_80151E6
    b locret_80152A6
loc_80151E6:
    ldr r0, [pc, #0x80152b0-0x80151e6-2] // =0x80000
    bl sub_8010312
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    sub r0, #0x17
    lsl r6, r0, #0x11
    mov r4, #0x3f 
    add r4, r4, r0
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #8
    orr r4, r0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    ldr r0, [pc, #0x80152b8-0x8015206-2] // =0x200000
    add r3, r3, r0
    bl sub_80E05F6
    cmp r0, #0
    beq loc_801527C
    mov r1, #0x36 
    strh r1, [r0,#0x20]
    ldrb r1, [r0]
    mov r2, #4
    orr r1, r2
    strb r1, [r0]
    mov r0, #0x9b
    add r0, #0xff
    bl sound_play
    mov r4, #0x3e 
    orr r4, r6
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #8
    orr r4, r0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    ldr r0, [pc, #0x80152b8-0x8015236-2] // =0x200000
    add r3, r3, r0
    bl sub_80E05F6
    cmp r0, #0
    beq loc_801527C
    mov r1, #0x45 
    strh r1, [r0,#0x20]
    ldrb r1, [r0]
    mov r2, #4
    orr r1, r2
    strb r1, [r0]
    ldr r0, [r5,#0x38]
    ldr r1, [pc, #0x80152bc-0x8015250-4] // =0xC00000
    add r0, r0, r1
    str r0, [r5,#0x38]
    ldrb r0, [r5,#0x16]
    mov r1, #2
    mov r2, #1
    bl sub_800AB2E
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    ldr r1, [pc, #0x80152c0-0x8015266-2] // =0x1CC
    cmp r0, #0x17
    beq loc_801526E
    ldr r1, [pc, #0x80152c4-0x801526c-4] // =0x1CD
loc_801526E:
    add r0, r1, #0
    bl sound_play
    mov r0, #2
    mov r1, #0x4b 
    bl sub_80302B6
loc_801527C:
    mov r0, #0x36 
    strh r0, [r7,#0x10]
    bl sub_80EA438
    mov r0, #4
    strb r0, [r7,#1]
loc_8015288:
    ldr r0, [r7,#0x10]
    cmp r0, #0x35 
    beq loc_8015292
    cmp r0, #0x25 
    bne loc_801529A
loc_8015292:
    mov r0, #0x9b
    add r0, #0xff
    bl sound_play
loc_801529A:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_80152A6
    mov r0, #8
    strh r0, [r7]
locret_80152A6:
    pop {r4,r6,pc}
    .word 0x200000, 0xC00000
dword_80152B0:    .word 0x80000
dword_80152B4:    .word 0x80008600
dword_80152B8:    .word 0x200000
dword_80152BC:    .word 0xC00000
off_80152C0:    .word 0x1CC
off_80152C4:    .word 0x1CD
// end of function sub_80151D4

.thumb
sub_80152C8:
    push {r4,lr}
    bl sub_8002DB0
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_801537C
    mov r1, #0x2c 
    bl sub_8013774
    bl loc_8011384
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    push {r0}
    mov r1, #0x29 
    bl sub_8013774
    pop {r1}
    bl sub_800FC9E
    mov r0, #0x80
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
    bl sub_8002E3C
    mov r0, #0
    bl sub_800F2B6
    ldrb r0, [r5,#0x10]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_800E456
    bl sub_8002F5C
    bl sub_800E29C
    mov r0, #0xa
    strh r0, [r7,#0x10]
    bl sub_801A264
    bl sub_8002DB0
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    mov r1, #0x2c 
    add r2, r0, #0
    bl sub_8013754
    ldr r4, [pc, #0x80153ac-0x8015336-2] // =0x30E00
    bl sub_80E11E0
    mov r0, #1
    add r0, #0xff
    bl sound_play
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #1
    blt loc_8015356
    cmp r0, #0x18
    bgt loc_8015356
    bl sub_8015B22
loc_8015356:
    mov r1, #0x2c 
    bl sub_8013774
    mov r2, #0
    bl loc_8011268
    ldr r0, [r5,#0x50]
    tst r0, r0
    beq loc_801536C
    mov r1, #0
    strb r1, [r0,#6]
loc_801536C:
    mov r0, #3
    bl sub_8018856
    neg r1, r1
    bl sub_801DC06
    mov r0, #4
    strb r0, [r7,#1]
loc_801537C:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_80153A8
    bl sub_80144C0
    bl sub_80143A6
    ldrb r0, [r5,#0x16]
    mov r1, #0x80
    bl sub_8015BEC
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_80153A4
    push {r5}
    add r5, r0, #0
    bl sub_8002DD8
    pop {r5}
loc_80153A4:
    mov r0, #0xc
    strh r0, [r7]
locret_80153A8:
    pop {r4,pc}
    .balign 4, 0x00
dword_80153AC:    .word 0x30E00
// end of function sub_80152C8

.thumb
sub_80153B0:
    push {r4,lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_80153C0
    mov r0, #0x14
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_80153C0:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_80153E4
    mov r0, #0x80
    bl sub_801031C
    ldr r0, [pc, #0x80153e8-0x80153ce-2] // =0x80000
    bl sub_801031C
    mov r0, #0x20 
    bl battle_clearFlags
    ldr r0, [pc, #0x8015610-0x80153da-2] // =0x80008600
    bl sub_800FFEE
    bl sub_8011714
locret_80153E4:
    pop {r4,pc}
    .balign 4, 0x00
dword_80153E8:    .word 0x80000
// end of function sub_80153B0

.thumb
sub_80153EC:
    push {r4,lr}
    ldr r0, [pc, #0x8015448-0x80153ee-2] // =0x80000
    bl sub_8010312
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
// end of function sub_80153EC

    bl sub_800E29C
    bl sub_801A04C
    bl sub_800EB08
    bl sub_800F46C
    strb r0, [r5,#0x17]
    bl sub_800F2C6
    bl sub_8012EA8
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x5c]
    bl sub_80C4C3A
    bl sub_80158FA
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_8015438
    mov r1, #1
    strb r1, [r0,#6]
    ldrb r1, [r0]
    mov r2, #0x14
    orr r1, r2
    strb r1, [r0]
loc_8015438:
    mov r0, #6
    strh r0, [r7,#0x10]
    mov r0, #4
    strh r0, [r7]
    pop {r4,pc}
    .balign 4, 0x00
    .word 0x80111C40
dword_8015448:    .word 0x80000
.thumb
sub_801544C:
    push {r4,r6,lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_8015480
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bmi loc_801545E
    b locret_80154C6
loc_801545E:
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    sub r0, #0xc
    add r4, r0, #0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r3, #0x14
    bl sub_80BC844
    mov r0, #0x28 
    add r0, #8
    strh r0, [r7,#0x10]
    mov r0, #0
    str r0, [r7,#0x30]
    mov r0, #4
    strb r0, [r7,#1]
loc_8015480:
    ldr r0, [r7,#0x30]
    add r0, #1
    cmp r0, #6
    bgt loc_801549E
    str r0, [r7,#0x30]
    bl sub_8002DB0
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_801549E
    push {r5}
    add r5, r0, #0
    bl sub_8002DB0
    pop {r5}
loc_801549E:
    cmp r0, #7
    bne loc_80154B2
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_80154B2
    push {r5}
    add r5, r0, #0
    bl sub_8002DD8
    pop {r5}
loc_80154B2:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_80154C6
    mov r0, #6
    strh r0, [r7,#0x10]
    mov r0, #8
    strh r0, [r7]
    mov r0, #0
    str r0, [r7,#0x30]
locret_80154C6:
    pop {r4,r6,pc}
// end of function sub_801544C

.thumb
sub_80154C8:
    push {r4,lr}
    bl sub_8002DB0
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_8015594
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_80154E2
    ldrb r1, [r0]
    mov r2, #0x14
    orr r1, r2
    strb r1, [r0]
loc_80154E2:
    mov r1, #0x2c 
    bl sub_8013774
    bl loc_8011384
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    push {r0}
    mov r1, #0x29 
    bl sub_8013774
    pop {r1}
    bl sub_800FC9E
    mov r0, #0x80
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
    bl sub_8002E3C
    mov r0, #0
    bl sub_800F2B6
    ldrb r0, [r5,#0x10]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_800E456
    bl sub_8002F5C
    bl sub_800E29C
    mov r0, #0xa
    strh r0, [r7,#0x10]
    bl sub_8002DB0
    ldrb r0, [r5,#0x16]
    bl sub_801595E
    mov r1, #0x2c 
    add r2, r0, #0
    bl sub_8013754
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #1
    blt loc_801555A
    cmp r0, #0x18
    bgt loc_801555A
    bl sub_8015B22
loc_801555A:
    mov r1, #0x2c 
    bl sub_8013774
    mov r2, #0
    push {r0}
    bl loc_8011268
    pop {r0}
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_8015578
    mov r1, #0
    strb r1, [r0,#0x10]
    mov r1, #0
    strb r1, [r0,#6]
loc_8015578:
    mov r0, #3
    bl sub_8018856
    neg r1, r1
    bl sub_801DC06
    mov r0, #0x8d
    bl sound_play
    mov r0, #0x77 
    bl sound_play
    mov r0, #4
    strb r0, [r7,#1]
loc_8015594:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_80155C4
    bl sub_80144C0
    bl sub_80143A6
    ldrb r0, [r5,#0x16]
    mov r1, #0x80
    bl sub_8015BEC
    bl sub_800EB08
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_80155C0
    push {r5}
    add r5, r0, #0
    bl sub_8002DD8
    pop {r5}
loc_80155C0:
    mov r0, #0xc
    strh r0, [r7]
locret_80155C4:
    pop {r4,pc}
    .balign 4, 0x00
    .byte 0
    .byte 0x14
    .byte 3
    .byte 0
// end of function sub_80154C8

.thumb
sub_80155CC:
    push {r4,lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_80155DC
    mov r0, #0x14
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_80155DC:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_801560A
    ldrb r0, [r5,#0x16]
    mov r1, #0xb
    mov r2, #1
    bl sub_800AB2E
    mov r0, #0x80
    bl sub_801031C
    ldr r0, [pc, #0x801560c-0x80155f4-4] // =0x80000
    bl sub_801031C
    mov r0, #0x20 
    bl battle_clearFlags
    ldr r0, [pc, #0x8015610-0x8015600-4] // =0x80008600
    bl sub_800FFEE
    bl sub_8011714
locret_801560A:
    pop {r4,pc}
dword_801560C:    .word 0x80000
dword_8015610:    .word 0x80008600
// end of function sub_80155CC

loc_8015614:
    push {lr}
    ldr r1, [pc, #0x8015624-0x8015616-2] // =off_8015628
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8015624:    .word off_8015628
off_8015628:    .word sub_801562C+1
.thumb
sub_801562C:
    push {r4,lr}
    bl sub_8002DB0
    ldrb r0, [r7,#1]
    tst r0, r0
    beq loc_801563A
    b loc_801573C
loc_801563A:
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_8015648
    ldrb r1, [r0]
    mov r2, #0x14
    orr r1, r2
    strb r1, [r0]
loc_8015648:
    mov r0, #0
    ldr r1, [r5,#0x5c]
    lsl r1, r1, #0x10
    lsr r1, r1, #0x18
    cmp r1, #4
    beq loc_801565C
    cmp r1, #6
    beq loc_801565C
    cmp r1, #7
    bne loc_801565E
loc_801565C:
    mov r0, #1
loc_801565E:
    add r0, #1
    strb r0, [r7,#1]
    mov r0, #0x8e
    bl sound_play
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C
    bl sub_801A04C
    bl sub_800F46C
    strb r0, [r5,#0x17]
    bl sub_800F2C6
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r0, #0x14
    lsl r0, r0, #0x10
    add r3, r3, r0
    mov r4, #3
    bl sub_80E05F6
    ldrb r1, [r0]
    mov r2, #4
    orr r1, r2
    strb r1, [r0]
    ldr r0, [pc, #0x8015928-0x80156a0-4] // =0x8001440
    bl object_clearFlag
    mov r0, #0x10
    bl sub_801A176
    mov r0, #0
    strb r0, [r5,#0x1f]
    mov r1, #0x2c 
    bl sub_8013774
    bl loc_8011384
    mov r0, #0
    mov r1, #0
    bl sub_800FC9E
    mov r0, #0x80
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
    bl sub_8002E3C
    ldrb r0, [r7,#1]
    cmp r0, #2
    beq loc_80156DC
    mov r0, #0
    bl sub_800F2B6
loc_80156DC:
    ldrb r0, [r5,#0x10]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_800E456
    bl sub_8002F5C
    bl sub_8002DB0
    bl sub_80158CC
    mov r1, #0x2c 
    mov r2, #0
    bl sub_8013754
    mov r0, #0
    bl sub_8015B22
    bl sub_80144C0
    bl loc_80143B4
    bl sub_800EB08
    mov r1, #0x2c 
    bl sub_8013774
    mov r2, #0
    bl loc_8011268
    mov r0, #3
    bl sub_8018856
    neg r1, r1
    bl sub_801DC06
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    str r0, [r1,#0x40]
    mov r0, #0xa1
    add r0, #0xff
    strh r0, [r5,#0x28]
    mov r0, #0x1e
    strh r0, [r7,#0x10]
loc_801573C:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_8015764
    ldr r0, [pc, #0x801592c-0x8015744-4] // =0x1000863D
    bl sub_800FFEE
    ldr r0, [pc, #0x8015930-0x801574a-2] // =0x200900
    bl sub_801031C
    ldrb r0, [r7,#1]
    cmp r0, #2
    beq loc_801575C
    bl sub_8011714
    b locret_8015764
loc_801575C:
    ldr r0, [r5,#0x5c]
    str r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x5c]
locret_8015764:
    pop {r4,pc}
// end of function sub_801562C

.thumb
sub_8015766:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    mov r6, #1
    ldr r7, [r5,#0x58]
    add r7, #0xa0
    bl sub_8002DB0
    ldrb r0, [r7,#1]
    tst r0, r0
    beq loc_801577C
    b loc_801589C
loc_801577C:
    mov r0, #4
    bl battle_setFlags
    mov r0, #0x8e
    bl sound_play
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C
    bl sub_801A04C
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_8011450
    bl sub_800F46C
    strb r0, [r5,#0x17]
    bl sub_800F2C6
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r0, #0x14
    lsl r0, r0, #0x10
    add r3, r3, r0
    mov r4, #3
    bl sub_80E05F6
    ldrb r1, [r0]
    mov r2, #4
    orr r1, r2
    strb r1, [r0]
    ldr r0, [pc, #0x8015934-0x80157cc-4] // =0x80111C40
    bl object_clearFlag
    mov r0, #0x10
    bl sub_801A176
    mov r0, #0
    strb r0, [r5,#0x1f]
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_80157EE
    mov r1, #1
    strb r1, [r0,#6]
    ldrb r1, [r0]
    mov r2, #0x14
    orr r1, r2
    strb r1, [r0]
loc_80157EE:
    mov r1, #0x2c 
    bl sub_8013774
    str r0, [sp]
    bl loc_8011384
    mov r1, #0
    ldr r0, [sp]
    cmp r0, #0xa
    ble loc_801580A
    mov r1, #0xb
    cmp r0, #0x11
    ble loc_801580A
    mov r1, #0xc
loc_801580A:
    str r1, [sp]
    mov r0, #0
    bl sub_800FC9E
    mov r0, #0x80
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
    bl sub_8002E3C
    mov r0, #0
    bl sub_800F2B6
    ldrb r0, [r5,#0x10]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_800E456
    bl sub_8002F5C
    bl sub_8002DB0
    mov r1, #0x2c 
    ldr r2, [sp]
    bl sub_8013754
    ldr r0, [sp]
    bl sub_8015B22
    ldrb r0, [r5,#0x16]
    mov r1, #0x80
    bl sub_8015BEC
    bl sub_80144C0
    bl loc_80143B4
    mov r1, #0x2c 
    bl sub_8013774
    mov r2, #0
    bl loc_8011268
    ldr r0, [r5,#0x50]
    cmp r0, #0
    beq loc_8015878
    mov r1, #1
    strb r1, [r0,#6]
    ldrb r1, [r0]
    mov r2, #0x14
    orr r1, r2
    strb r1, [r0]
loc_8015878:
    mov r0, #3
    bl sub_8018856
    neg r1, r1
    bl sub_801DC06
    bl sub_800EB08
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    bl sub_801A074
    mov r0, #0x1e
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_801589C:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt loc_80158C6
    ldr r0, [pc, #0x8015938-0x80158a4-4] // =0x240800
    bl sub_801031C
    ldr r0, [r5,#0x50]
    tst r0, r0
    beq loc_80158B4
    mov r1, #0
    strb r1, [r0,#6]
loc_80158B4:
    mov r0, #4
    bl battle_clearFlags
    mov r0, #1
    bl sub_801A07C
    mov r0, #0
    strh r0, [r7]
    mov r6, #0
loc_80158C6:
    add r0, r6, #0
    add sp, sp, #4
    pop {r4,r6,r7,pc}
// end of function sub_8015766

.thumb
sub_80158CC:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_8013682
    mov r1, #0x80
    strb r1, [r0,#0xe]
    bl sub_802D234
    cmp r0, #1
    beq locret_80158F8
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0xb
    blt locret_80158F8
    cmp r0, #0x16
    bgt loc_80158F4
    bl sub_801443C
    b locret_80158F8
loc_80158F4:
    bl sub_8014466
locret_80158F8:
    pop {pc}
// end of function sub_80158CC

.thumb
sub_80158FA:
    push {lr}
    ldr r0, [pc, #0x8015924-0x80158fc-4] // =0x80111C40
    bl object_clearFlag
    mov r0, #0x10
    bl sub_801A176
    mov r0, #0
    strb r0, [r5,#0x1f]
    ldr r0, [pc, #0x801593c-0x801590c-4] // =0x200800
    bl sub_801031C
    ldr r0, [r5,#0x54]
    mov r1, #0
    strh r1, [r0,#0x2c]
    strh r1, [r0,#0x2a]
    strh r1, [r0,#0x1c]
    str r1, [r0,#0x58]
    str r1, [r0,#0x60]
    pop {pc}
    .balign 4, 0x00
dword_8015924:    .word 0x80111C40
dword_8015928:    .word 0x8001440
dword_801592C:    .word 0x1000863D
dword_8015930:    .word 0x200900
dword_8015934:    .word 0x80111C40
dword_8015938:    .word 0x240800
dword_801593C:    .word 0x200800
// end of function sub_80158FA

.thumb
sub_8015940:
    push {r5,lr}
    ldr r5, [pc, #0x8015b34-0x8015942-2] // =byte_203CED0
    mov r1, #0xff
    strb r1, [r5]
    strb r1, [r5,#0x4] // (byte_203CED4 - 0x203ced0)
    bl sub_80103EC
    str r0, [r5,#0x8] // (dword_203CED8 - 0x203ced0)
    pop {r5,pc}
// end of function sub_8015940

.thumb
sub_8015952:
    push {r4,lr}
    ldr r4, [pc, #0x8015b38-0x8015954-4] // =byte_203CED0
    strb r0, [r4]
    strb r1, [r4,#0x1] // (byte_203CED1 - 0x203ced0)
    strb r2, [r4,#0x3] // (byte_203CED3 - 0x203ced0)
    pop {r4,pc}
// end of function sub_8015952

.thumb
sub_801595E:
    mov r3, #0x10
    mul r3, r0
    ldr r0, [pc, #0x8015b3c-0x8015962-2] // =unk_203A980
    add r3, r3, r0
    ldrb r0, [r3]
    ldrb r1, [r3,#1]
    ldrb r3, [r3,#3]
    mov pc, lr
// end of function sub_801595E

.thumb
sub_801596E:
    push {r5,lr}
    add r5, r0, #0
    beq locret_801597A
    ldr r0, [pc, #0x8015b40-0x8015974-4] // =0x4000
    bl sub_800FFE4
locret_801597A:
    pop {r5,pc}
// end of function sub_801596E

.thumb
sub_801597C:
    push {r5,lr}
    add r5, r0, #0
    beq locret_8015992
    bl sub_801032C
    mov r2, #0
    mov r1, #0x80
    tst r0, r1
    beq loc_8015990
    mov r2, #1
loc_8015990:
    add r0, r2, #0
locret_8015992:
    pop {r5,pc}
// end of function sub_801597C

.thumb
sub_8015994:
    push {r5,lr}
    add r5, r0, #0
    beq locret_80159A0
    mov r0, #0x40 
    bl sub_800FFE4
locret_80159A0:
    pop {r5,pc}
// end of function sub_8015994

.thumb
sub_80159A2:
    push {r5,r7,lr}
    mov r7, #0
    add r5, r0, #0
    beq loc_80159C2
    mov r7, #1
    bl sub_801032C
    ldr r1, [pc, #0x8015b44-0x80159b0-4] // =0x100
    tst r0, r1
    bne loc_80159C2
    bl sub_800FFFE
    mov r1, #0x40 
    tst r0, r1
    bne loc_80159C2
    mov r7, #0
loc_80159C2:
    add r0, r7, #0
    pop {r5,r7,pc}
// end of function sub_80159A2

.thumb
sub_80159C6:
    push {r5,r6,lr}
    mov r6, #0
    add r5, r0, #0
    beq loc_8015A12
    bl sub_802D234
    cmp r0, #1
    beq loc_80159F0
    ldr r0, [r5,#0x58]
    ldrb r1, [r0,#0xf]
    tst r1, r1
    bne loc_8015A12
    mov r1, #2
    strb r1, [r0,#0xf]
    mov r1, #0x21 
    bl sub_8013774
    cmp r0, #0
    bne loc_8015A12
    bl sub_801443C
loc_80159F0:
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0xb
    blt loc_8015A12
    cmp r0, #0x18
    bgt loc_8015A12
    bl sub_802D234
    cmp r0, #1
    beq loc_8015A10
    mov r1, #0x21 
    bl sub_8013774
    cmp r0, #0
    bne loc_8015A12
loc_8015A10:
    mov r6, #1
loc_8015A12:
    add r0, r6, #0
    pop {r5,r6,pc}
// end of function sub_80159C6

.thumb
sub_8015A16:
    push {r5,lr}
    add r5, r0, #0
    beq locret_8015A36
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0
    bne locret_8015A36
    ldr r1, [r5,#0x58]
    ldrb r2, [r1,#0xf]
    cmp r2, #0xff
    beq locret_8015A36
    tst r2, r2
    beq locret_8015A36
    sub r2, #1
    strb r2, [r1,#0xf]
locret_8015A36:
    pop {r5,pc}
// end of function sub_8015A16

.thumb
sub_8015A38:
    push {r5,r7,lr}
    mov r7, #0
    add r5, r0, #0
    beq loc_8015A7C
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0
    bne loc_8015A7C
    mov r1, #0x17
    bl sub_8013774
    cmp r0, #0xb
    beq loc_8015A7C
    cmp r0, #0xc
    beq loc_8015A7C
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0xb
    blt loc_8015A66
    cmp r0, #0x18
    ble loc_8015A68
loc_8015A66:
    b loc_8015A7C
loc_8015A68:
    mov r1, #0x21 
    bl sub_8013774
    cmp r0, #0
    beq loc_8015A7C
    sub r0, #1
    add r2, r0, #0
    mov r1, #0x21 
    bl sub_8013754
loc_8015A7C:
    add r0, r7, #0
    pop {r5,r7,pc}
// end of function sub_8015A38

    push {r5,lr}
    add r5, r0, #0
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0xb
    blt loc_8015A92
    cmp r0, #0x18
    ble locret_8015AA4
loc_8015A92:
    mov r1, #0x21 
    bl sub_8013774
    cmp r0, #3
    bge locret_8015AA4
    add r2, r0, #1
    mov r1, #0x21 
    bl sub_8013754
locret_8015AA4:
    pop {r5,pc}
.thumb
sub_8015AA6:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    bl sub_800E2CA
    str r0, [sp,#8]
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8015af4-0x8015ab8-4] // =off_8015AF8
    ldr r0, [r1,r0]
    str r0, [sp,#0xc]
loc_8015ABE:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl object_isValidPanel
    beq loc_8015AEE
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl object_getPanelParameters
    ldr r1, [sp,#0xc]
    tst r0, r1
    beq loc_8015AE4
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #0
    mov r3, #0
    mov r6, #0
    bl sub_80CC0B2
loc_8015AE4:
    ldr r0, [sp]
    ldr r1, [sp,#8]
    add r0, r0, r1
    str r0, [sp]
    b loc_8015ABE
loc_8015AEE:
    add sp, sp, #0x10
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_8015AF4:    .word off_8015AF8
off_8015AF8:    .word LCDControl
    .word start_
// end of function sub_8015AA6

.thumb
sub_8015B00:
    push {lr}
    bl sub_800E2CA
    add r0, r0, r0
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldr r2, [pc, #0x8015b48-0x8015b0e-2] // =0x10000
    ldr r3, [pc, #0x8015b4c-0x8015b10-4] // =0xF800000
    push {r0,r1}
    bl object_checkPanelParameters
// end of function sub_8015B00

    tst r0, r0
    pop {r0,r1}
    bne locret_8015B20
    mov r0, #0
locret_8015B20:
    pop {pc}
.thumb
sub_8015B22:
    ldr r1, [pc, #0x8015b50-0x8015b22-2] // =0x1A0
    cmp r0, #0
    beq loc_8015B2E
    sub r1, r0, #1
    add r1, #0xad
    add r1, #0xff
loc_8015B2E:
    strh r1, [r5,#0x28]
    mov pc, lr
    .balign 4, 0x00
off_8015B34:    .word byte_203CED0
off_8015B38:    .word byte_203CED0
off_8015B3C:    .word unk_203A980
dword_8015B40:    .word 0x4000
off_8015B44:    .word 0x100
dword_8015B48:    .word 0x10000
dword_8015B4C:    .word 0xF800000
off_8015B50:    .word 0x1A0
// end of function sub_8015B22

.thumb
sub_8015B54:
    push {lr}
    bl sub_8015B64
    pop {pc}
// end of function sub_8015B54

.thumb
sub_8015B5C:
    push {lr}
    bl sub_8015BA8
    pop {pc}
// end of function sub_8015B5C

.thumb
sub_8015B64:
    push {r4-r6,lr}
    add r4, r0, #0
    bl sub_8013682
    add r6, r0, #0
    add r0, r4, #0
    bl sub_80103BC
    add r5, r0, #0
    ldr r4, [r5,#0x58]
    mov r1, #0x2c 
    ldrb r1, [r6,r1]
    ldrb r2, [r6,#0xe]
    mov r0, #5
    ldrh r3, [r4,#0x36]
    tst r3, r3
    bne loc_8015BA2
    cmp r2, #0
    beq loc_8015BA2
    mov r0, #3
    ldrh r3, [r4,#0x34]
    tst r3, r3
    bne loc_8015BA2
    mov r0, #1
    ldrh r3, [r4,#0x32]
    tst r3, r3
    bne loc_8015BA2
    mov r0, #2
    cmp r2, #0xff
    beq loc_8015BA2
    mov r0, #0
loc_8015BA2:
    mov r3, #0x21 
    ldrb r3, [r6,r3]
    pop {r4-r6,pc}
// end of function sub_8015B64

.thumb
sub_8015BA8:
    push {r4-r6,lr}
    add r4, r0, #0
    bl sub_80136A0
    add r6, r0, #0
    add r0, r4, #0
    bl sub_80103BC
    add r5, r0, #0
    ldr r4, [r5,#0x58]
    mov r1, #0x2c 
    ldrb r1, [r6,r1]
    ldrb r2, [r6,#0xe]
    mov r0, #5
    ldrh r3, [r4,#0x36]
    tst r3, r3
    beq loc_8015BE6
    cmp r2, #0
    beq loc_8015BE6
    mov r0, #3
    ldrh r3, [r4,#0x34]
    tst r3, r3
    bne loc_8015BE6
    mov r0, #1
    ldrh r3, [r4,#0x32]
    tst r3, r3
    beq loc_8015BE6
    mov r0, #2
    cmp r2, #0xff
    beq loc_8015BE6
    mov r0, #0
loc_8015BE6:
    mov r3, #0x21 
    ldrb r3, [r6,r3]
    pop {r4-r6,pc}
// end of function sub_8015BA8

.thumb
sub_8015BEC:
    push {r4-r6,lr}
    add r6, r0, #0
    add r4, r1, #0
    bl sub_80103BC
    cmp r0, #0
    beq locret_8015C10
    add r5, r0, #0
    bl sub_801445C
    bne locret_8015C10
    bl sub_8014490
    bne locret_8015C10
    add r0, r6, #0
    bl sub_8013682
    strb r4, [r0,#0xe]
locret_8015C10:
    pop {r4-r6,pc}
// end of function sub_8015BEC

.thumb
sub_8015C12:
    push {r4,lr}
    add r4, r1, #0
    bl sub_8013682
    ldrb r1, [r0,#0xe]
    tst r1, r1
    beq locret_8015C2A
    sub r1, r1, r4
    cmp r1, #1
    bge loc_8015C28
    mov r1, #1
loc_8015C28:
    strb r1, [r0,#0xe]
locret_8015C2A:
    pop {r4,pc}
// end of function sub_8015C12

.thumb
sub_8015C2C:
    push {lr}
    mov r0, #0x80
    pop {pc}
// end of function sub_8015C2C

.thumb
sub_8015C32:
    push {r4,lr}
    mov r4, #0
loc_8015C36:
    add r0, r4, #0
    mov r1, #0xe
    mov r2, #0
    bl sub_80136F0
    add r4, #1
    cmp r4, #7
    blt loc_8015C36
    pop {r4,pc}
// end of function sub_8015C32

.thumb
sub_8015C48:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #3
    ldr r1, [pc, #0x8015c80-0x8015c50-4] // =dword_8015C84
    add r0, r0, r1
    ldr r2, [r0]
    ldr r3, [r0,#4]
    add r7, sp, #0
    bl object_getPanelsExceptCurrentFilterred
// end of function sub_8015C48

    tst r0, r0
    beq loc_8015C78
    add r7, r0, #0
    bl sub_8001532
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    b loc_8015C7C
loc_8015C78:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_8015C7C:
    add sp, sp, #0x18
    pop {r7,pc}
off_8015C80:    .word dword_8015C84
dword_8015C84:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
.thumb
sub_8015C94:
    push {r7,lr}
    sub sp, sp, #0x18
    add r7, sp, #0
    bl object_getPanelsExceptCurrentFilterred
// end of function sub_8015C94

    tst r0, r0
    beq loc_8015CB8
    add r7, r0, #0
    bl sub_8001532
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    b loc_8015CBC
loc_8015CB8:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_8015CBC:
    add sp, sp, #0x18
    pop {r7,pc}
.thumb
sub_8015CC0:
    push {lr}
    sub sp, sp, #0x34
    str r0, [sp,#8]
    str r1, [sp,#0xc]
    str r2, [sp,#0x18]
    str r3, [sp,#0x1c]
    str r4, [sp,#0x28]
    mov r0, #0
    str r0, [sp,#0x20]
    str r0, [sp,#0x24]
    str r0, [sp,#0x2c]
    str r0, [sp,#0x30]
    ldrb r0, [r5,#0x16]
    ldrb r1, [r5,#0x17]
    bl sub_800E2C2
    neg r0, r0
    str r0, [sp,#0x10]
    ldr r1, [sp,#8]
    add r1, r1, r0
    str r1, [sp,#8]
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8015d74-0x8015cee-2] // =unk_8015D78
    ldr r0, [r1,r0]
    str r0, [sp,#0x14]
loc_8015CF4:
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    bl object_getPanelParameters
// end of function sub_8015CC0

    ldr r1, [sp,#0x14]
    tst r0, r1
    beq loc_8015D16
    ldr r2, [sp,#8]
    str r2, [sp,#0x2c]
    ldr r2, [sp,#0xc]
    str r2, [sp,#0x30]
    ldr r0, [sp,#0x24]
    add r0, #1
    str r0, [sp,#0x24]
    ldr r1, [sp,#0x28]
    cmp r0, r1
    bgt loc_8015D52
loc_8015D16:
    ldr r0, [sp,#0x24]
    ldr r1, [sp,#0x28]
    cmp r0, r1
    bne loc_8015D40
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    ldr r2, [sp,#0x18]
    ldr r3, [sp,#0x1c]
    bl object_checkPanelParameters
    tst r0, r0
    beq loc_8015D40
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0
    ldr r2, [sp,#0x20]
    strb r0, [r1,r2]
    add r2, #1
    str r2, [sp,#0x20]
loc_8015D40:
    ldr r0, [sp,#8]
    ldr r1, [sp,#0x10]
    add r0, r0, r1
    str r0, [sp,#8]
    ldr r1, [sp,#0xc]
    bl object_isValidPanel
    tst r0, r0
    bne loc_8015CF4
loc_8015D52:
    ldr r0, [sp,#0x20]
    tst r0, r0
    beq loc_8015D6A
    bl sub_8001532
    ldr r1, [sp,#0x20]
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8015D6A:
    ldr r2, [sp,#0x2c]
    ldr r3, [sp,#0x30]
    add sp, sp, #0x34
    pop {pc}
    .balign 4, 0x00
off_8015D74:    .word unk_8015D78
unk_8015D78:    .byte 0
    .byte 0
    .byte 0x80
    .byte 1
    .byte 0
    .byte 0
    .byte 0x80
    .byte 2
.thumb
sub_8015D80:
    push {r4,lr}
    sub sp, sp, #0x38
    str r0, [sp,#0x1c]
    str r1, [sp,#0x20]
    str r2, [sp,#0x24]
    str r3, [sp,#0x28]
    bl sub_800E2C0
    str r0, [sp,#0x18]
    mov r0, #0
    str r0, [sp,#0x2c]
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_8015DD4
    ldr r1, [sp,#0x18]
    mul r0, r1
    ldr r2, [sp,#0x1c]
    add r0, r0, r2
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#0x20]
    add r1, r1, r2
    str r0, [sp,#0x30]
    str r1, [sp,#0x34]
    ldr r2, [sp,#0x24]
    ldr r3, [sp,#0x28]
    bl object_checkPanelParameters
    .byte 0
    .byte 0x42 
    .byte 8
    .byte 0xD0
    .byte 0xC
    .byte 0x98
    .byte 0xD
    .byte 0x99
    .byte 9
    .byte 1
    .byte 8
    .byte 0x43 
    .byte 0xB
    .byte 0x99
    .byte 0
    .byte 0xAA
    .byte 0x50 
    .byte 0x54 
    .byte 1
    .byte 0x31 
    .byte 0xB
    .byte 0x91
    .byte 2
    .byte 0x34 
    .byte 0xE0
    .byte 0xE7
loc_8015DD4:
    ldr r0, [sp,#0x2c]
    tst r0, r0
    beq loc_8015DEC
    bl sub_8001532
    ldr r1, [sp,#0x2c]
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8015DEC:
    add sp, sp, #0x38
    pop {r4,pc}
    .byte 0x10
    .byte 0xB5
    .byte 0x8E
    .byte 0xB0
    .byte 9
    .byte 0x92
    .byte 0xA
    .byte 0x93
    .byte 0
    .byte 0x20
    .byte 0xB
    .byte 0x90
    .byte 0x20
    .byte 0x78 
    .byte 0x7F 
    .byte 0x28 
    .byte 0x13
    .byte 0xD0
    .byte 0x61 
    .byte 0x78 
    .byte 0xC
    .byte 0x90
    .byte 0xD
    .byte 0x91
    .byte 9
    .byte 0x9A
    .byte 0xA
    .byte 0x9B
    .byte 0xF6
    .byte 0xF7
    .byte 0x3B 
    .byte 0xFF
    .byte 0
    .byte 0x42 
    .byte 8
    .byte 0xD0
    .byte 0xC
    .byte 0x98
    .byte 0xD
    .byte 0x99
    .byte 9
    .byte 1
    .byte 8
    .byte 0x43 
    .byte 0xB
    .byte 0x99
    .byte 0
    .byte 0xAA
    .byte 0x50 
    .byte 0x54 
    .byte 1
    .byte 0x31 
    .byte 0xB
    .byte 0x91
    .byte 2
    .byte 0x34 
    .byte 0xE8
    .byte 0xE7
    .byte 0xB
    .byte 0x98
    .byte 0
    .byte 0x42 
    .byte 8
    .byte 0xD0
    .byte 0xEB
    .byte 0xF7
    .byte 0x7F 
    .byte 0xFB
    .byte 0xB
    .byte 0x99
    .byte 6
    .byte 0xDF
    .byte 0
    .byte 0xA8
    .byte 0x40 
    .byte 0x5C 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 0xE
    .byte 0xB0
    .byte 0x10
    .byte 0xBD
// end of function sub_8015D80

.thumb
sub_8015E46:
    push {r4,r7,lr}
    ldr r7, [pc, #0x8015e54-0x8015e48-4] // =off_8019B78
    lsl r4, r4, #2
    ldr r4, [r7,r4]
    bl sub_8015E58
    pop {r4,r7,pc}
off_8015E54:    .word off_8019B78
// end of function sub_8015E46

.thumb
sub_8015E58:
    push {r4,r6,lr}
    sub sp, sp, #0x38
    str r0, [sp,#0x1c]
    str r1, [sp,#0x20]
    str r2, [sp,#0x24]
    str r3, [sp,#0x28]
    add r0, r6, #0
    bl sub_800E2C2
    str r0, [sp,#0x2c]
    mov r6, #0
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_8015EA8
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#0x2c]
    mul r0, r2
    ldr r2, [sp,#0x1c]
    add r0, r0, r2
    str r0, [sp,#0x30]
    ldr r2, [sp,#0x20]
    add r1, r1, r2
    str r1, [sp,#0x34]
    ldr r2, [sp,#0x24]
    ldr r3, [sp,#0x28]
    bl object_checkPanelParameters
    .byte 0
    .byte 0x42 
    .byte 6
    .byte 0xD0
    .byte 0xC
    .byte 0x98
    .byte 0xD
    .byte 0x99
    .byte 9
    .byte 1
    .byte 8
    .byte 0x43 
    .byte 0
    .byte 0xA9
    .byte 0x88
    .byte 0x55 
    .byte 1
    .byte 0x36 
    .byte 2
    .byte 0x34 
    .byte 0xE2
    .byte 0xE7
loc_8015EA8:
    add r2, r6, #0
    add r0, r6, #0
    beq loc_8015EC2
    bl sub_8001532
    add r1, r6, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add r2, r6, #0
loc_8015EC2:
    add sp, sp, #0x38
    pop {r4,r6,pc}
    .byte 0xD0
    .byte 0xB5
    .byte 0x84
    .byte 0xB0
    .byte 0xA8
    .byte 0x7D 
    .byte 0x80
    .byte 0
    .byte 0x18
    .byte 0x49 
    .byte 0xA
    .byte 0x58 
    .byte 0
    .byte 0x23 
    .byte 0
    .byte 0xAF
    .byte 0xF6
    .byte 0xF7
    .byte 0xC5
    .byte 0xFF
    .byte 4
    .byte 0x1C
    .byte 0x25 
    .byte 0xD0
    .byte 6
    .byte 0x26 
    .byte 0
    .byte 0xAF
    .byte 0x38 
    .byte 0x78 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 0xE8
    .byte 0x7C 
    .byte 0x40 
    .byte 0x1A
    .byte 0
    .byte 0x28 
    .byte 0
    .byte 0xDA
    .byte 0x40 
    .byte 0x42 
    .byte 0xB0
    .byte 0x42 
    .byte 1
    .byte 0xDA
    .byte 6
    .byte 0x1C
    .byte 1
    .byte 0x91
    .byte 1
    .byte 0x3C 
    .byte 0xF0
    .byte 0xDC
    .byte 0xA8
    .byte 0x7D 
    .byte 0xC0
    .byte 0
    .byte 0xB
    .byte 0x49 
    .byte 9
    .byte 0x18
    .byte 0xA
    .byte 0x68 
    .byte 0x4B 
    .byte 0x68 
    .byte 1
    .byte 0x98
    .byte 0
    .byte 0xAF
    .byte 0xF7
    .byte 0xF7
    .byte 0x7F 
    .byte 0xF8
    .byte 4
    .byte 0x1C
    .byte 8
    .byte 0xD0
    .byte 0xEB
    .byte 0xF7
    .byte 0xB
    .byte 0xFB
    .byte 0x21 
    .byte 0x1C
    .byte 6
    .byte 0xDF
    .byte 0
    .byte 0xA8
    .byte 0x40 
    .byte 0x5C 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 4
    .byte 0xB0
    .byte 0xD0
    .byte 0xBD
    .byte 0
    .byte 0
    .byte 0x38 
    .byte 0x5F 
    .byte 1
    .byte 8
    .byte 0x40 
    .byte 0x5F 
    .byte 1
    .byte 8
    .byte 0
    .byte 0
    .byte 0
    .byte 4
    .byte 0
    .byte 0
    .byte 0
    .byte 8
    .byte 0x10
    .byte 0
    .byte 0
    .byte 0
    .byte 0xA0
    .byte 0
    .byte 0x88
    .byte 0xF
    .byte 0x30 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0x88
    .byte 0xF
    .byte 0x10
    .byte 0xB5
    .byte 0xA8
    .byte 0x7D 
    .byte 0xC0
    .byte 0
    .byte 6
    .byte 0x49 
    .byte 0x40 
    .byte 0x18
    .byte 2
    .byte 0x68 
    .byte 0x43 
    .byte 0x68 
    .byte 3
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
    .byte 0
    .byte 0
    .byte 0x84
    .byte 0x5F 
    .byte 1
    .byte 8
    .byte 0x74 
    .byte 0x5F 
    .byte 1
    .byte 8
    .byte 0x10
    .byte 0
    .byte 0
    .byte 0
    .byte 0xA0
    .byte 0
    .byte 0x88
    .byte 0xF
    .byte 0x30 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0x88
    .byte 0xF
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 1
    .byte 0x7F 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0xB5
    .byte 0x81
    .byte 0xB0
    .byte 0xA8
    .byte 0x7D 
    .byte 0xE9
    .byte 0x7D 
    .byte 0
    .byte 0xAF
    .byte 0xF7
    .byte 0xF7
    .byte 0x2B 
    .byte 0xF9
    .byte 7
    .byte 0x1C
    .byte 8
    .byte 0xD0
    .byte 0xEB
    .byte 0xF7
    .byte 0xC8
    .byte 0xFA
    .byte 0x39 
    .byte 0x1C
    .byte 6
    .byte 0xDF
    .byte 0
    .byte 0xA8
    .byte 0x40 
    .byte 0x5C 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 1
    .byte 0xB0
    .byte 0x80
    .byte 0xBD
    .byte 0x80
    .byte 0xB5
    .byte 0x81
    .byte 0xB0
    .byte 0xA8
    .byte 0x7D 
    .byte 0xE9
    .byte 0x7D 
    .byte 0
    .byte 0xAF
    .byte 0xF7
    .byte 0xF7
    .byte 0x57 
    .byte 0xF9
    .byte 7
    .byte 0x1C
    .byte 8
    .byte 0xD0
    .byte 0xEB
    .byte 0xF7
    .byte 0xB4
    .byte 0xFA
    .byte 0x39 
    .byte 0x1C
    .byte 6
    .byte 0xDF
    .byte 0
    .byte 0xA8
    .byte 0x40 
    .byte 0x5C 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 1
    .byte 0xB0
    .byte 0x80
    .byte 0xBD
    .byte 0x80
    .byte 0xB5
    .byte 0x81
    .byte 0xB0
    .byte 0xA8
    .byte 0x7D 
    .byte 0xE9
    .byte 0x7D 
    .byte 0
    .byte 0xAF
    .byte 0xF7
    .byte 0xF7
    .byte 0x8B
    .byte 0xF9
    .byte 7
    .byte 0x1C
    .byte 8
    .byte 0xD0
    .byte 0xEB
    .byte 0xF7
    .byte 0xA0
    .byte 0xFA
    .byte 0x39 
    .byte 0x1C
    .byte 6
    .byte 0xDF
    .byte 0
    .byte 0xA8
    .byte 0x40 
    .byte 0x5C 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 1
    .byte 0xB0
    .byte 0x80
    .byte 0xBD
// end of function sub_8015E58

.thumb
sub_8016004:
    push {r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    add r7, sp, #0
    bl sub_801632C
    add r7, r0, #0
    beq loc_8016038
    bl sub_8001532
    add r1, r7, #0
    svc 6
    add r2, sp, #0
    ldrb r0, [r2,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r3, #1
    ldrb r2, [r5,#0x12]
    sub r2, r2, r0
    bge loc_8016034
    mov r3, #0
loc_8016034:
    ldrb r2, [r5,#0x16]
    eor r2, r3
loc_8016038:
    add sp, sp, #0x18
    pop {r7,pc}
    .byte 0x40 
    .byte 0x60 
    .byte 1
    .byte 8
    .byte 0
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .word 0x400000, 0x0
    push {r4,r6,r7,lr}
    sub sp, sp, #0x34
    ldrb r0, [r5,#0x16]
    str r0, [sp,#0x1c]
    ldrb r1, [r5,#0x17]
    str r1, [sp,#0x30]
    lsl r0, r0, #3
    ldr r1, [pc, #0x8016154-0x801605e-2] // =dword_8016158
    add r1, r1, r0
    ldr r2, [r1]
    ldr r3, [r1,#4]
    add r7, sp, #0
    bl object_getPanelsExceptCurrentFilterred
    add r7, r0, #0
    beq loc_801614E
    mov r4, #0
    mov r6, #0
loc_8016074:
    add r0, sp, #0
    ldrb r0, [r0,r6]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldrb r1, [r5,#0x12]
    ldr r2, [sp,#0x1c]
    ldr r3, [sp,#0x30]
    eor r2, r3
    tst r2, r2
    bne loc_8016090
    cmp r0, r1
    bgt loc_8016094
    b loc_801609E
loc_8016090:
    cmp r0, r1
    bge loc_801609E
loc_8016094:
    add r0, sp, #0
    ldrb r0, [r0,r6]
    add r1, sp, #0x18
    strb r0, [r1,r4]
    add r4, #1
loc_801609E:
    add r6, #1
    cmp r6, r7
    blt loc_8016074
    tst r4, r4
    beq loc_8016114
loc_80160A8:
    add r7, r4, #0
    add r1, sp, #0x18
    ldrb r0, [r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    str r0, [sp,#0x20]
    str r1, [sp,#0x24]
    ldrb r2, [r5,#0x12]
    sub r0, r0, r2
    cmp r0, #0
    bge loc_80160C2
    neg r0, r0
loc_80160C2:
    str r0, [sp,#0x28]
    ldrb r2, [r5,#0x13]
    sub r1, r1, r2
    cmp r1, #0
    bge loc_80160CE
    neg r1, r1
loc_80160CE:
    str r1, [sp,#0x2c]
    mov r6, #1
loc_80160D2:
    cmp r6, r7
    bge loc_801610E
    add r1, sp, #0x18
    ldrb r0, [r1,r6]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldrb r2, [r5,#0x12]
    sub r2, r2, r0
    cmp r2, #0
    bge loc_80160EA
    neg r2, r2
loc_80160EA:
    ldrb r3, [r5,#0x13]
    sub r3, r3, r1
    cmp r3, #0
    bge loc_80160F4
    neg r3, r3
loc_80160F4:
    ldr r4, [sp,#0x28]
    cmp r2, r4
    bgt loc_801610A
    blt loc_8016102
    ldr r4, [sp,#0x24]
    cmp r1, r4
    blt loc_8016102
loc_8016102:
    str r0, [sp,#0x20]
    str r1, [sp,#0x24]
    str r2, [sp,#0x28]
    str r3, [sp,#0x2c]
loc_801610A:
    add r6, #1
    b loc_80160D2
loc_801610E:
    ldr r0, [sp,#0x20]
    ldr r1, [sp,#0x24]
    b loc_801614E
loc_8016114:
    mov r4, #0
    mov r6, #0
loc_8016118:
    add r0, sp, #0
    ldrb r0, [r0,r6]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldrb r1, [r5,#0x12]
    ldr r2, [sp,#0x1c]
    ldr r3, [sp,#0x30]
    eor r2, r3
    tst r2, r2
    bne loc_8016134
    cmp r0, r1
    blt loc_8016138
    b loc_8016142
loc_8016134:
    cmp r0, r1
    ble loc_8016142
loc_8016138:
    add r0, sp, #0
    ldrb r0, [r0,r6]
    add r1, sp, #0x18
    strb r0, [r1,r4]
    add r4, #1
loc_8016142:
    add r6, #1
    cmp r6, r7
    blt loc_8016118
    tst r4, r4
    bne loc_80160A8
    mov r0, #0
loc_801614E:
    add sp, sp, #0x34
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_8016154:    .word dword_8016158
dword_8016158:    .word 0x200000, 0x0
    .word 0x400000, 0x0
    push {lr}
    ldrb r0, [r5,#0x16]
    lsl r2, r0, #3
    ldr r1, [pc, #0x801619c-0x801616e-2] // =dword_80161A4
    add r1, r1, r2
    ldr r2, [r1]
    ldr r3, [r1,#4]
    mov r1, #1
    eor r0, r1
    ldrb r1, [r5,#0x13]
    bl sub_800D086
    tst r0, r0
    bne locret_801619A
    ldrb r0, [r5,#0x16]
    lsl r2, r0, #3
    ldr r1, [pc, #0x80161a0-0x8016188-4] // =dword_80161B4
    add r1, r1, r2
    ldr r2, [r1]
    ldr r3, [r1,#4]
    mov r1, #1
    eor r0, r1
    ldrb r1, [r5,#0x13]
    bl sub_800D086
locret_801619A:
    pop {pc}
off_801619C:    .word dword_80161A4
off_80161A0:    .word dword_80161B4
dword_80161A4:    .word 0x200020
    .word 0x0
    .word 0x400000, 0x20
dword_80161B4:    .word 0x20, 0x0, 0x0, 0x20, 0xB088B580
    .word 0x93019200, 0x7CE97CA8, 0xFCA4F005, 0x9A007CE8, 0xAF029B01
    .word 0xFEE3F7F6, 0xD1074200, 0x9A007CE8, 0xAF029B01, 0xFF11F7F6
    .word 0xD0094200, 0xF7EB1C07, 0x1C39F99C, 0xA802DF06, 0x9015C40
    .word 0xF400740, 0x7CA8B403, 0xF0057CE9, 0xBC03FC9A, 0xBD80B008
// end of function sub_8016004

.thumb
sub_8016218:
    push {r4,lr}
    sub sp, sp, #0x10
    bl sub_800E2CA
    str r0, [sp]
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    str r0, [sp,#4]
    ldrb r0, [r5,#0x16]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8016288-0x801622c-4] // =unk_8016290
    ldr r0, [r1,r0]
    str r0, [sp,#0xc]
    mov r4, #0
    str r1, [sp,#8]
    ldr r0, [sp,#4]
    mov r1, #2
    bl object_isValidPanel
    beq loc_801626C
    ldrb r0, [r5,#0x13]
    sub r0, #1
    mov r1, #3
    mul r0, r1
    ldr r1, [pc, #0x801628c-0x8016248-4] // =unk_8016298
    add r1, r1, r0
    ldrb r1, [r1,r4]
    str r1, [sp,#8]
    ldr r0, [sp,#4]
    bl object_getPanelParameters
    .byte 3
    .byte 0x99
    .byte 8
    .byte 0x42 
    .byte 9
    .byte 0xD1
    .byte 1
    .byte 0x34 
    .byte 3
    .byte 0x2C 
    .byte 0xEE
    .byte 0xDB
    .byte 0
    .byte 0x98
    .byte 1
    .byte 0x99
    .byte 9
    .byte 0x18
    .byte 1
    .byte 0x91
    .byte 0xE2
    .byte 0xE7
loc_801626C:
    mov r0, #0
    b loc_8016282
    .byte 1
    .byte 0x98
    .byte 2
    .byte 0x99
    .byte 1
    .byte 0x23 
    .byte 0xAA
    .byte 0x7C 
    .byte 0x12
    .byte 0x1A
    .byte 0
    .byte 0xDA
    .byte 0
    .byte 0x23 
    .byte 0xAA
    .byte 0x7D 
    .byte 0x5A 
    .byte 0x40 
loc_8016282:
    add sp, sp, #0x10
    pop {r4,pc}
    .byte 0
    .byte 0
off_8016288:    .word unk_8016290
off_801628C:    .word unk_8016298
unk_8016290:    .byte 0
    .byte 0
    .byte 0
    .byte 4
    .byte 0
    .byte 0
    .byte 0
    .byte 8
unk_8016298:    .byte 1
    .byte 2
    .byte 3
    .byte 2
    .byte 1
    .byte 3
    .byte 3
    .byte 1
    .byte 2
    .byte 0
    .byte 0
    .byte 0
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
    .byte 4
    .byte 0x90
    .byte 6
    .byte 0x91
    .byte 0
    .byte 0xAF
    .byte 0xF6
    .byte 0xF7
    .byte 0x9C
    .byte 0xFF
    .byte 0
    .byte 0x42 
    .byte 0x2C 
    .byte 0xD0
    .byte 5
    .byte 0x90
    .byte 0
    .byte 0x26 
    .byte 0
    .byte 0x27 
    .byte 4
    .byte 0x98
    .byte 6
    .byte 0x99
    .byte 0xF8
    .byte 0xF7
    .byte 2
    .byte 0xF8
    .byte 2
    .byte 0x1C
    .byte 0
    .byte 0xA9
    .byte 0x88
    .byte 0x5D 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 0x80
    .byte 0x18
    .byte 0xF6
    .byte 0xF7
    .byte 0xE
    .byte 0xFB
    .byte 4
    .byte 0x9A
    .byte 0x92
    .byte 0
    .byte 0xE
    .byte 0x49 
    .byte 0x89
    .byte 0x58 
    .byte 8
    .byte 0x42 
    .byte 7
    .byte 0xD1
    .byte 0xD
    .byte 0x49 
    .byte 8
    .byte 0x42 
    .byte 4
    .byte 0xD0
    .byte 0
    .byte 0xA9
    .byte 1
    .byte 0xAA
    .byte 0x88
    .byte 0x5D 
    .byte 0xD0
    .byte 0x55 
    .byte 1
    .byte 0x37 
    .byte 1
    .byte 0x36 
    .byte 5
    .byte 0x98
    .byte 0x86
    .byte 0x42 
    .byte 0xE0
    .byte 0xDB
    .byte 0x38 
    .byte 0x1C
    .byte 8
    .byte 0xD0
    .byte 0xEB
    .byte 0xF7
    .byte 0x15
    .byte 0xF9
    .byte 0x39 
    .byte 0x1C
    .byte 6
    .byte 0xDF
    .byte 1
    .byte 0xA8
    .byte 0x40 
    .byte 0x5C 
    .byte 1
    .byte 9
    .byte 0x40 
    .byte 7
    .byte 0x40 
    .byte 0xF
    .byte 6
    .byte 0xB0
    .byte 0xC0
    .byte 0xBD
    .byte 0
    .byte 0
    .byte 0x24 
    .byte 0x63 
    .byte 1
    .byte 8
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 1
    .byte 0
    .byte 0
    .byte 0x80
    .byte 2
// end of function sub_8016218

.thumb
sub_801632C:
    push {r4-r7,lr}
    add r1, r0, #0
    mov r0, r10
    ldr r0, [r0,#0x18]
    lsl r1, r1, #2
    ldr r2, [pc, #0x8016368-0x8016336-2] // =unk_801636C
    ldr r1, [r2,r1]
    add r0, r0, r1
    mov r1, #0
    mov r6, #0
loc_8016340:
    push {r0,r1}
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    tst r0, r0
    beq loc_801635A
    ldrb r1, [r0,#0x12]
    ldrb r2, [r0,#0x13]
    add r0, r1, #0
    add r1, r2, #0
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7,r6]
    add r6, #1
loc_801635A:
    pop {r0,r1}
    add r1, #1
    cmp r1, #4
    blt loc_8016340
    add r0, r6, #0
    pop {r4-r7,pc}
    .byte 0
    .byte 0
off_8016368:    .word unk_801636C
unk_801636C:    .byte 0x80
    .byte 0
    .byte 0
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
// end of function sub_801632C

.thumb
sub_8016380:
    push {lr}
    ldr r0, [r5,#0x58]
    ldrb r0, [r0,#2]
    cmp r0, #0
    bne loc_8016390
    bl loc_8016396
    b locret_8016394
loc_8016390:
    bl loc_80164A0
locret_8016394:
    pop {pc}
// end of function sub_8016380

loc_8016396:
    push {lr}
    ldr r1, [pc, #0x80163a4-0x8016398-4] // =off_80163A8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80163A4:    .word off_80163A8
off_80163A8:    .word sub_80163B4+1
    .word sub_801641A+1
    .word sub_8016460+1
.thumb
sub_80163B4:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80163E2
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    ldrb r0, [r5,#0x16]
    eor r0, r1
    bne loc_80163D6
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #8
    strh r0, [r5,#0xa]
    b locret_8016418
loc_80163D6:
    mov r0, #0
    bl sub_800AA1A
    mov r0, #4
    strb r0, [r5,#0xb]
    b loc_8016410
loc_80163E2:
    bl sub_800139A
    mov r1, #1
    tst r0, r1
    beq loc_8016410
    mov r0, #0
    bl sub_800AA06
    tst r0, r0
    beq loc_8016410
    mov r0, #0x94
    bl sound_play
    mov r0, #2
    strh r0, [r5,#0x20]
    mov r0, #0x10
    strh r0, [r5,#0x22]
    mov r0, #0
    bl sub_8002C7A
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
loc_8016410:
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
locret_8016418:
    pop {pc}
// end of function sub_80163B4

.thumb
sub_801641A:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_801645E
    mov r0, #2
    strh r0, [r5,#0x20]
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    beq loc_801644C
    push {r0}
    add r1, r0, #0
    bl sub_8002EF6
    pop {r0}
    sub r0, #0x10
    neg r0, r0
    bl sub_8002C7A
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    b locret_801645E
loc_801644C:
    bl sub_8002CCE
    bl sub_8002F2C
    mov r0, #0
    bl sub_800AA40
    mov r0, #8
    strh r0, [r5,#0xa]
locret_801645E:
    pop {pc}
// end of function sub_801641A

.thumb
sub_8016460:
    push {lr}
    bl sub_800139A
    lsr r0, r0, #2
    bcc locret_801649E
    bl sub_802D234
    cmp r0, #6
    beq loc_801647E
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    ldrb r0, [r5,#0x16]
    eor r0, r1
    beq loc_8016496
loc_801647E:
    mov r0, #0
    mov r1, #0
    ldrh r2, [r5,#0x28]
    cmp r2, #0x49 
    blt loc_8016492
    cmp r2, #0x4e 
    bgt loc_8016492
    mov r0, #0x20 
    neg r0, r0
    mov r1, #3
loc_8016492:
    bl sub_801DC7C
loc_8016496:
    mov r0, #1
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_801649E:
    pop {pc}
// end of function sub_8016460

loc_80164A0:
    push {lr}
    ldr r1, [pc, #0x80164b0-0x80164a2-2] // =off_80164B4
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_80164B0:    .word off_80164B4
off_80164B4:    .word sub_80164C0+1
    .word sub_8016520+1
    .word sub_801657E+1
.thumb
sub_80164C0:
    push {lr}
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_801BB1C
// end of function sub_80164C0

    bl sub_801A074
    mov r0, #4
    strb r0, [r5,#0xb]
    mov r0, #0x94
    bl sound_play
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #0x1e
    strh r0, [r5,#0x22]
    mov r1, #0x1f
    add r0, r1, #0
    lsl r0, r0, #5
    add r0, r0, r1
    lsl r0, r0, #5
    add r0, r0, r1
    bl sub_8002ED0
    ldr r0, [pc, #0x801651c-0x80164fc-4] // =0xFFFF
    bl object_setInvulnerableTime
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #6
    bl sub_80E05F6
    ldrb r1, [r0]
    mov r2, #4
    orr r1, r2
    strb r1, [r0]
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
dword_801651C:    .word 0xFFFF
.thumb
sub_8016520:
    push {lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #0
    beq loc_8016552
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_801655A
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #3
    bl sub_80E05F6
    ldrb r1, [r0]
    mov r2, #4
    orr r1, r2
    strb r1, [r0]
    mov r0, #0x2a 
    add r0, #0xff
    bl sound_play
loc_8016552:
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    beq loc_8016574
loc_801655A:
    ldrh r0, [r5,#0x22]
    add r1, r0, #0
    lsl r1, r1, #5
    add r1, r1, r0
    lsl r1, r1, #5
    add r0, r0, r1
    bl sub_8002ED0
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    b locret_801657C
loc_8016574:
    bl sub_8002EE8
    mov r0, #8
    strh r0, [r5,#0xa]
locret_801657C:
    pop {pc}
// end of function sub_8016520

.thumb
sub_801657E:
    push {lr}
    bl sub_802D234
    cmp r0, #6
    beq loc_8016594
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    ldrb r0, [r5,#0x16]
    eor r0, r1
    beq loc_801659C
loc_8016594:
    mov r0, #0
    mov r1, #0
    bl sub_801DC7C
loc_801659C:
    bl sub_800EB08
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
// end of function sub_801657E

    mov r0, #1
    bl sub_801A07C
    mov r0, #1
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {pc}
.thumb
sub_80165B8:
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov pc, lr
// end of function sub_80165B8

loc_80165C2:
    push {lr}
    bl object_getFlag
    ldr r1, [pc, #0x80165ec-0x80165c8-4] // =0x40000000
    tst r0, r1
    bne loc_80165E0
    bl battle_isPaused
    bne locret_80165E4
    ldr r1, [pc, #0x80165e8-0x80165d4-4] // =off_80165F0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
loc_80165E0:
    bl loc_8016EC4
locret_80165E4:
    pop {pc}
    .balign 4, 0x00
off_80165E8:    .word off_80165F0
dword_80165EC:    .word 0x40000000
off_80165F0:    .word sub_80165F8+1
    .word sub_801664E+1
.thumb
sub_80165F8:
    push {lr}
    bl sub_801A074
    bl sub_801A5E2
    bl sub_80101C4
    bl sub_801DC36
    mov r0, #0
    strb r0, [r5,#0x1a]
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r0, #0
    str r0, [r5,#0x4c]
    bl sub_801A7F4
    ldrh r0, [r5,#0x28]
    bl sub_80182B4
    ldrb r1, [r0,#1]
    cmp r1, #0
    bne loc_801663A
    ldrb r1, [r0]
    cmp r1, #4
    bge loc_8016634
    ldrb r0, [r0,#2]
    bl sub_802D644
    b loc_801663A
loc_8016634:
    ldrb r0, [r0,#2]
    bl sub_802D65E
loc_801663A:
    ldrb r0, [r5,#5]
    cmp r0, #1
    bge loc_8016644
    bl sub_800A11C
loc_8016644:
    bl sub_802EF5C
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80165F8

.thumb
sub_801664E:
    push {r4,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8016672
    bl battle_isTimeStop
    bne locret_80166AC
    bl sub_800AE44
    mov r4, #0
    ldr r7, [r5,#0x58]
    add r7, #0x74 
    bl sub_80E1A6A
    mov r0, #0x20 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8016672:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge loc_80166A4
    bl sub_802CDD0
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
    add r0, r5, #0
    bl sub_80077B4
    mov r1, #0
    ldr r0, [r5,#0x58]
    str r1, [r0,#0x74]
    bl sub_8011020
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #8
    str r0, [r5,#8]
    b locret_80166AC
loc_80166A4:
    lsr r0, r0, #2
    bcc locret_80166AC
    bl sub_8002DB0
locret_80166AC:
    pop {r4,r7,pc}
// end of function sub_801664E

.thumb
sub_80166AE:
    push {lr}
    bl sub_800F3E8
    pop {pc}
// end of function sub_80166AE

loc_80166B6:
    push {lr}
    ldr r1, [pc, #0x80166c4-0x80166b8-4] // =off_80166C8
    ldrb r0, [r5,#0x1f]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80166C4:    .word off_80166C8
off_80166C8:    .word sub_80166D0+1
    .word sub_8016730+1
.thumb
sub_80166D0:
    push {r6,r7,lr}
    mov r0, #1
    lsl r0, r0, #0xc
    bl object_setFlag
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800E29C
    bl sub_801A066
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
// end of function sub_80166D0

    bl sub_800E468
    strb r0, [r5,#0x1c]
    strb r1, [r5,#0x1d]
    strb r2, [r5,#0x1b]
    tst r2, r2
    beq loc_8016716
    ldrb r3, [r5,#0x12]
    add r0, r0, r3
    ldrb r3, [r5,#0x13]
    add r1, r1, r3
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_801BB1C
    mov r0, #4
    strb r0, [r5,#0x1e]
    mov r0, #4
    strb r0, [r5,#0x1f]
    pop {r6,r7,pc}
loc_8016716:
    ldrb r0, [r5,#0xf]
    cmp r0, #3
    bne loc_8016722
    mov r0, #5
    ldr r1, [r5,#0x58]
    strh r0, [r1,#0x38]
loc_8016722:
    mov r0, #0
    strb r0, [r5,#0xf]
    mov r0, #1
    lsl r0, r0, #0xc
    bl object_clearFlag
    pop {r6,r7,pc}
.thumb
sub_8016730:
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x1e]
    sub r0, #1
    strb r0, [r5,#0x1e]
    bgt loc_801680E
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800E29C
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800C90A
    ldrb r4, [r0,#2]
    cmp r4, #7
    bne loc_8016768
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#2]
    cmp r0, #2
    beq loc_8016768
    ldrb r0, [r5,#0x1b]
    add r0, #1
    strb r0, [r5,#0x1b]
    b loc_80167B2
loc_8016768:
    cmp r4, #9
    blt loc_80167B2
    cmp r4, #0xc
    bgt loc_80167B2
    bl object_getFlag
    mov r1, #0x24 
    tst r0, r1
    bne loc_80167B2
    ldrb r0, [r5,#0xf]
    cmp r0, #3
    bne loc_8016788
    mov r0, #5
    ldr r1, [r5,#0x58]
    strh r0, [r1,#0x38]
    b loc_80167E6
loc_8016788:
    mov r0, #0x1c
    ldrsb r0, [r5,r0]
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldrb r2, [r5,#0x16]
    bl sub_801683C
    ldr r1, [r5,#0x54]
    strb r0, [r1,#0xc]
    mov r0, #3
    strb r0, [r5,#0xf]
    bl sub_800E468
    strb r0, [r5,#0x1c]
    strb r1, [r5,#0x1d]
    tst r2, r2
    beq loc_80167E6
    ldrb r0, [r5,#0x1b]
    add r0, #1
    strb r0, [r5,#0x1b]
    b loc_80167B2
loc_80167B2:
    ldrb r0, [r5,#0x1b]
    sub r0, #1
    strb r0, [r5,#0x1b]
    ble loc_80167E6
    mov r2, #0x1c
    ldrsb r2, [r5,r2]
    ldrb r0, [r5,#0x14]
    add r0, r0, r2
    mov r2, #0x1d
    ldrsb r2, [r5,r2]
    ldrb r1, [r5,#0x15]
    add r1, r1, r2
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800E5AC
    beq loc_80167E6
    mov r0, #4
    strb r0, [r5,#0x1e]
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_801BB1C
    pop {r4,r6,r7,pc}
loc_80167E6:
    mov r0, #0x1c
    ldrsb r0, [r5,r0]
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldrb r2, [r5,#0x16]
    bl sub_801683C
    ldr r1, [r5,#0x54]
    strb r0, [r1,#0xc]
    mov r0, #0
    strb r0, [r5,#0x1f]
    mov r0, #1
    lsl r0, r0, #0xc
    bl object_clearFlag
    mov r0, #0
    strb r0, [r5,#0xf]
    bl sub_801A066
    pop {r4,r6,r7,pc}
loc_801680E:
    mov r0, #0x1c
    ldrsb r0, [r5,r0]
    ldr r2, [pc, #0x8016834-0x8016812-2] // =0xA0000
    mul r2, r0
    ldr r0, [r5,#0x34]
    add r0, r0, r2
    str r0, [r5,#0x34]
    mov r0, #0x1d
    ldrsb r0, [r5,r0]
    ldr r2, [pc, #0x8016838-0x8016820-4] // =0x60000
    mul r2, r0
    ldr r0, [r5,#0x38]
    add r0, r0, r2
    str r0, [r5,#0x38]
    bl sub_800E2AC
    bl sub_801A066
    pop {r4,r6,r7,pc}
dword_8016834:    .word 0xA0000
dword_8016838:    .word 0x60000
// end of function sub_8016730

.thumb
sub_801683C:
    tst r2, r2
    beq loc_8016842
    neg r0, r0
loc_8016842:
    mov r3, #4
    tst r0, r0
    beq loc_801684E
    bgt loc_801685C
    mov r3, #3
    b loc_801685C
loc_801684E:
    mov r3, #1
    tst r1, r1
    beq loc_801685A
    blt loc_801685C
    mov r3, #2
    b loc_801685C
loc_801685A:
    mov r3, #5
loc_801685C:
    add r0, r3, #0
    mov pc, lr
// end of function sub_801683C

.thumb
sub_8016860:
    push {r4,lr}
    mov r1, #0x2c 
    bl sub_8013774
    cmp r0, #0x17
    blt loc_8016870
    cmp r0, #0x18
    ble locret_80168A2
loc_8016870:
    ldrb r0, [r5,#9]
    cmp r0, #0
    beq locret_80168A2
    cmp r0, #0x56 
    beq locret_80168A2
    bl object_getFlag
    mov r1, #8
    tst r0, r1
    beq locret_80168A2
    mov r4, #5
    bl sub_802D234
    cmp r0, #1
    bne loc_8016890
    mov r4, #0
loc_8016890:
    bl sub_800A704
    mov r1, #0x1f
    and r0, r1
    ldr r1, [pc, #0x80168a4-0x8016898-4] // =unk_80168A8
    ldrb r0, [r1,r0]
    lsl r0, r4
    bl sub_8002ED0
locret_80168A2:
    pop {r4,pc}
off_80168A4:    .word unk_80168A8
unk_80168A8:    .byte 0
    .byte 2
    .byte 4
    .byte 6
    .byte 8
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
    .byte 0xE
    .byte 0xC
    .byte 0xA
    .byte 8
    .byte 6
    .byte 4
    .byte 2
    .byte 0
// end of function sub_8016860

.thumb
sub_80168C8:
    push {lr}
    bl object_getFlag
    mov r1, #8
    lsl r1, r1, #8
    tst r0, r1
    beq locret_80168E6
    bl sub_800A704
    mov r1, #2
    and r0, r1
    ldr r1, [pc, #0x80168e8-0x80168de-2] // =unk_80168EC
    ldrh r0, [r1,r0]
    bl sub_8002ED0
locret_80168E6:
    pop {pc}
off_80168E8:    .word unk_80168EC
unk_80168EC:    .byte 0
    .byte 0
    .byte 0xFF
    .byte 3
// end of function sub_80168C8

.thumb
sub_80168F0:
    push {lr}
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0x10
    tst r0, r1
    beq locret_8016904
    ldr r0, [pc, #0x8016908-0x80168fe-2] // =0x94
    bl sub_8002ED0
locret_8016904:
    pop {pc}
    .byte 0
    .byte 0
unk_8016908:    .byte 0x94
    .byte 0x7E 
// end of function sub_80168F0

.thumb
sub_801690A:
    push {lr}
    bl object_getFlag
    mov r1, #0x40 
    lsl r1, r1, #8
    tst r0, r1
    beq locret_8016928
    bl sub_800A704
    mov r1, #2
    and r0, r1
    ldr r1, [pc, #0x801692c-0x8016920-4] // =unk_8016930
    ldrh r0, [r1,r0]
    bl sub_8002ED0
locret_8016928:
    pop {pc}
    .byte 0
    .byte 0
off_801692C:    .word unk_8016930
unk_8016930:    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
// end of function sub_801690A

.thumb
sub_8016934:
    push {lr}
    bl battle_isTimeStop
    bne loc_8016944
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
loc_8016944:
    bl object_getFlag
    ldr r1, [pc, #0x8016a28-0x8016948-4] // =0x100
    tst r0, r1
    bne locret_80169BC
    ldr r1, [pc, #0x8016a2c-0x801694e-2] // =0x201
    tst r0, r1
    beq loc_8016964
    ldr r0, [r5,#0x54]
    ldrh r0, [r0,#0x24]
    lsr r0, r0, #2
    bcc loc_8016964
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
loc_8016964:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0xd]
    ldrb r1, [r5,#0x16]
    eor r0, r1
    beq loc_8016998
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103BC
    tst r0, r0
    beq locret_80169BC
    push {r5}
    add r5, r0, #0
    bl object_getFlag
    ldr r1, [pc, #0x8016a30-0x8016986-2] // =0x2000
    tst r0, r1
    pop {r5}
    beq locret_80169BC
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    b locret_80169BC
loc_8016998:
    ldrb r0, [r5,#9]
    cmp r0, #0
    beq locret_80169BC
    ldr r0, [r5,#0x58]
    ldrb r0, [r0]
    cmp r0, #2
    bne locret_80169BC
    mov r0, #5
    bl sub_801DA48
    bl object_getFlag
    ldr r1, [pc, #0x8016a34-0x80169b0-4] // =0x2000
    tst r0, r1
    beq locret_80169BC
    mov r0, #5
    bl sub_801DACC
locret_80169BC:
    pop {pc}
// end of function sub_8016934

.thumb
sub_80169BE:
    push {lr}
    bl battle_isTimeStop
    bne loc_80169CE
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
loc_80169CE:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0xd]
    ldrb r1, [r5,#0x16]
    eor r0, r1
    beq loc_8016A02
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103BC
    tst r0, r0
    beq locret_8016A26
    push {r5}
    add r5, r0, #0
    bl object_getFlag
    ldr r1, [pc, #0x8016a30-0x80169f0-4] // =0x2000
    tst r0, r1
    pop {r5}
    beq locret_8016A26
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    b locret_8016A26
loc_8016A02:
    ldrb r0, [r5,#9]
    cmp r0, #0
    beq locret_8016A26
    ldr r0, [r5,#0x58]
    ldrb r0, [r0]
    cmp r0, #2
    bne locret_8016A26
    mov r0, #5
    bl sub_801DA48
    bl object_getFlag
    ldr r1, [pc, #0x8016a34-0x8016a1a-2] // =0x2000
    tst r0, r1
    beq locret_8016A26
    mov r0, #5
    bl sub_801DACC
locret_8016A26:
    pop {pc}
off_8016A28:    .word 0x100
dword_8016A2C:    .word 0x202
off_8016A30:    .word 0x2000
off_8016A34:    .word 0x2000
// end of function sub_80169BE

.thumb
sub_8016A38:
    push {r4,lr}
    ldr r4, [pc, #0x8016a60-0x8016a3a-2] // =dword_8016A68
    cmp r0, #0x18
    bne loc_8016A42
    ldr r4, [pc, #0x8016a64-0x8016a40-4] // =dword_8016A9C
loc_8016A42:
    bl sub_800A704
    mov r1, #0x1a
    svc 6
    lsl r1, r1, #1
    ldrh r0, [r4,r1]
    bl sub_8002ED0
    pop {r4,pc}
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
off_8016A60:    .word dword_8016A68
off_8016A64:    .word dword_8016A9C
dword_8016A68:    .word 0x0
    .word 0x4610041, 0xCC20881, 0x110210E2, 0x19831543, 0x21E41DC3
    .word 0x22042204, 0x1DC321E4, 0x15431983, 0x10E21102, 0xCA20CC2
    .word 0x8610881, 0x4210441
dword_8016A9C:    .word 0x0
// end of function sub_8016A38

    lsl r2, r0, #0x10
    lsl r3, r4, #0x10
    lsl r4, r0, #0x11
    lsr r6, r4, #1
    lsr r7, r0, #2
    lsr r0, r1, #2
    lsr r2, r5, #0x12
    lsr r4, r1, #0x13
    lsr r6, r5, #0x13
    asr r7, r1, #4
    asr r0, r2, #4
    asr r0, r2, #4
    asr r7, r1, #4
    lsr r6, r5, #0x13
    lsr r4, r1, #0x13
    lsr r2, r5, #0x12
    lsr r0, r1, #2
    lsr r7, r0, #2
    lsr r6, r4, #1
    lsr r5, r4, #1
    lsl r4, r0, #0x11
    lsl r3, r0, #0x11
    lsl r2, r4, #0x10
    lsl r1, r4, #0x10
    push {lr}
    bl sub_800A704
    mov r1, #0x1a // (byte_8016B02 - 0x8016ae8)
    svc 6
    ldr r0, [pc, #0x8016ae4-0x8016ada-2] // =off_8016AE8
    ldrb r0, [r0,r1]
    bl sprite_setPallete
    pop {pc}
off_8016AE4:    .word off_8016AE8
off_8016AE8:    .word unk_2020000
    .word 0x2020202, 0x3030303, 0x3030303, 0x2020303, 0x2020202
    .byte 0x2, 0x2
byte_8016B02:    .byte 0x0
byte_8016B03:    .byte 0xB5
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8016B20
    ldr r0, [pc, #0x8016bd4-0x8016b0a-2] // =0x100000
    bl object_clearFlag
    bl sub_800F394
    bl sub_80101C4
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8016B20:
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0xb
    tst r0, r1
    bne locret_8016B34
    ldr r0, [r5,#0x5c]
    str r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x5c]
locret_8016B34:
    pop {pc}
.thumb
sub_8016B36:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8016B5C
    ldr r0, [pc, #0x8016bd4-0x8016b3e-2] // =0x100000
    bl object_clearFlag
    bl sub_800F3B0
    bl sub_80101C4
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #0x19
    add r0, #0xff
    bl sound_play
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8016B5C:
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0x10
    tst r0, r1
    bne locret_8016B70
    ldr r0, [r5,#0x5c]
    str r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x5c]
locret_8016B70:
    pop {pc}
// end of function sub_8016B36

.thumb
sub_8016B72:
    push {r4,lr}
    ldr r4, [r5,#0x58]
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8016B9A
    ldr r0, [pc, #0x8016bd4-0x8016b7c-4] // =0x100000
    bl object_clearFlag
    bl sub_800F3CC
    bl sub_80101C4
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #0x2e 
    add r0, #0xff
    bl sound_play
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8016B9A:
    ldr r0, [r5,#0x54]
    mov r2, #0x2c 
    ldrsh r1, [r0,r2]
    lsr r1, r1, #2
    mov r0, #0x1f
    and r0, r1
    ldr r1, [pc, #0x8016bd8-0x8016ba6-2] // =unk_8016BDC
    ldrsb r0, [r1,r0]
    ldrh r1, [r4,#0x3c]
    add r0, r0, r1
    strh r0, [r5,#0x3e]
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0x1f
    tst r0, r1
    bne locret_8016BD0
    mov r0, #0x25 
    add r0, #0xff
    bl sound_play
    ldr r0, [r5,#0x5c]
    str r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x5c]
    ldrh r0, [r4,#0x3c]
    strh r0, [r5,#0x3e]
locret_8016BD0:
    pop {r4,pc}
    .balign 4, 0x00
dword_8016BD4:    .word 0x100000
off_8016BD8:    .word unk_8016BDC
unk_8016BDC:    .byte 1
    .byte 2
    .byte 3
    .byte 4
    .byte 4
    .byte 5
    .byte 5
    .byte 6
    .byte 6
    .byte 6
    .byte 5
    .byte 4
    .byte 3
    .byte 2
    .byte 1
    .byte 0
    .byte 0xFF
    .byte 0xFE
    .byte 0xFD
    .byte 0xFC
    .byte 0xFC
    .byte 0xFB
    .byte 0xFB
    .byte 0xFA
    .byte 0xFA
    .byte 0xFA
    .byte 0xFB
    .byte 0xFC
    .byte 0xFD
    .byte 0xFE
    .byte 0xFF
    .byte 0
// end of function sub_8016B72

.thumb
sub_8016BFC:
    push {lr}
    ldrb r0, [r5,#0x18]
    tst r0, r0
    bne loc_8016C14
    ldrh r0, [r5,#0x36]
    strh r0, [r5,#0x30]
    ldrh r0, [r5,#0x3e]
    strh r0, [r5,#0x32]
    mov r0, #0
    strb r0, [r5,#0x19]
    mov r0, #4
    strb r0, [r5,#0x18]
loc_8016C14:
    ldr r0, [r5,#0x54]
    mov r1, #0x80
    ldrh r1, [r0,r1]
    tst r1, r1
    beq loc_8016C22
    mov r0, #0x1e
    strb r0, [r5,#0x19]
loc_8016C22:
    ldrb r0, [r5,#0x19]
    tst r0, r0
    beq loc_8016C44
    sub r0, #1
    strb r0, [r5,#0x19]
    ldrh r1, [r5,#0x30]
    lsl r1, r1, #0x10
    ldr r2, [r5,#0x38]
    ldrh r3, [r5,#0x32]
    lsl r3, r3, #0x10
    mov r0, #3
    bl sub_801BDDE
    mov r0, #0x34 
    add r0, r0, r5
    stmia r0!, {r1-r3}
    b locret_8016C4C
loc_8016C44:
    ldrh r0, [r5,#0x30]
    strh r0, [r5,#0x36]
    ldrh r0, [r5,#0x32]
    strh r0, [r5,#0x3e]
locret_8016C4C:
    pop {pc}
// end of function sub_8016BFC

.thumb
sub_8016C4E:
    push {r4,lr}
    ldr r4, [r5,#0x58]
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne locret_8016C88
    bl sub_801BB78
    ldr r0, [r5,#0x54]
    bl sub_80198CE
    bl sub_800A104
    ldrb r0, [r4,#0xe]
    cmp r0, #0xff
    beq loc_8016C72
    ldrh r1, [r5,#0x24]
    mov r0, #0xff
    strb r0, [r4,#0xe]
loc_8016C72:
    mov r0, #4
    strb r0, [r5,#0xb]
    ldrb r1, [r4,#2]
    cmp r1, #0
    beq locret_8016C88
    add r0, r4, #0
    beq loc_8016C84
    bl sub_800ED80
loc_8016C84:
    bl object_freeMemory
locret_8016C88:
    pop {r4,pc}
// end of function sub_8016C4E

.thumb
sub_8016C8A:
    push {lr}
    bl sub_801BB78
    ldr r0, [r5,#0x54]
    bl sub_80198CE
    bl object_freeMemory
    pop {pc}
// end of function sub_8016C8A

.thumb
sub_8016C9C:
    push {lr}
    bl object_freeMemory
    pop {pc}
// end of function sub_8016C9C

.thumb
sub_8016CA4:
    push {lr}
    bl battle_isBattleOver
    tst r0, r0
    bne locret_8016CDE
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    ldrb r0, [r5,#0x16]
    eor r1, r0
    beq locret_8016CDE
    mov r1, #1
    eor r0, r1
    bl sub_8015B54
    cmp r0, #2
    bne locret_8016CDE
    ldr r3, [r5,#0x54]
    ldrb r0, [r3,#0xd]
    tst r0, r0
    beq locret_8016CDE
    bl sub_800A704
    mov r1, #2
    and r0, r1
    ldr r1, [pc, #0x8016ce0-0x8016cd6-2] // =unk_8016CE4
    ldrh r0, [r1,r0]
    bl sub_8002ED0
locret_8016CDE:
    pop {pc}
off_8016CE0:    .word unk_8016CE4
unk_8016CE4:    .byte 0
    .byte 0
    .byte 0
    .byte 0x7C 
// end of function sub_8016CA4

loc_8016CE8:
    push {lr}
    ldr r1, [pc, #0x8016cf8-0x8016cea-2] // =off_8016CFC
    ldrb r0, [r5,#0xd]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8016CF8:    .word off_8016CFC
off_8016CFC:    .word sub_8016D08+1
    .word sub_8016D8C+1
    .word sub_8016E3C+1
.thumb
sub_8016D08:
    push {r6,r7,lr}
    mov r0, #1
    lsl r0, r0, #0x14
    bl object_setFlag
    bl sub_800F404
    mov r0, #0
    str r0, [r5,#0x4c]
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800E29C
    bl sub_801A04C
    ldr r0, [pc, #0x8016d80-0x8016d26-2] // =0x1000
    bl object_clearFlag
    bl sub_80101C4
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
// end of function sub_8016D08

    bl sub_800E45E
    strb r0, [r5,#0x1c]
    strb r1, [r5,#0x1d]
    strb r2, [r5,#0xb]
    tst r2, r2
    beq loc_8016D74
    mov r1, #0x1c
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8016d84-0x8016d4a-2] // =0xA0000
    mul r0, r1
    str r0, [r5,#0x40]
    ldrb r6, [r5,#0x12]
    add r6, r6, r1
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8016d88-0x8016d58-4] // =0x60000
    mul r0, r1
    str r0, [r5,#0x44]
    ldrb r7, [r5,#0x13]
    add r7, r7, r1
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_801BB1C
    mov r0, #4
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
loc_8016D74:
    mov r0, #0x18
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
    .byte 0, 0
dword_8016D80:    .word 0x1000
dword_8016D84:    .word 0xA0000
dword_8016D88:    .word 0x60000
.thumb
sub_8016D8C:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800E276
    add r2, r0, #0
    add r4, r1, #0
    ldr r1, [r5,#0x34]
    ldr r0, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800E6E8
    tst r0, r0
    bne loc_8016DBC
    add r2, r4, #0
    ldr r1, [r5,#0x38]
    ldr r0, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800E6E8
    tst r0, r0
    beq loc_8016E2A
loc_8016DBC:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800C90A
    ldrb r4, [r0,#2]
    cmp r4, #7
    bne loc_8016DE2
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#2]
    cmp r0, #2
    beq loc_8016DE2
    ldrb r0, [r5,#0xb]
    add r0, #1
    strb r0, [r5,#0xb]
    b loc_8016DE4
loc_8016DE2:
    b loc_8016DE4
loc_8016DE4:
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    ble loc_8016E14
    mov r2, #0x1c
    ldrsb r2, [r5,r2]
    ldrb r0, [r5,#0x14]
    add r0, r0, r2
    mov r2, #0x1d
    ldrsb r2, [r5,r2]
    ldrb r1, [r5,#0x15]
    add r1, r1, r2
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800E5AC
    beq loc_8016E14
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_801BB1C
    pop {r4,pc}
loc_8016E14:
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800E29C
    bl sub_801A04C
    mov r0, #0x14
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r4,pc}
loc_8016E2A:
    bl sub_800E2AC
    bl sub_801A04C
    pop {r4,pc}
    .word 0xA0000, 0x60000
// end of function sub_8016D8C

.thumb
sub_8016E3C:
    push {lr}
    ldrb r0, [r5,#0xa]
    sub r0, #1
    strb r0, [r5,#0xa]
    bge locret_8016E5E
    ldr r0, [pc, #0x8016e60-0x8016e46-2] // =0x101000
    bl object_clearFlag
    mov r0, #0x10
    bl sub_801A176
    mov r0, #0
    strb r0, [r5,#0x1f]
    ldr r0, [r5,#0x5c]
    str r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x5c]
locret_8016E5E:
    pop {pc}
dword_8016E60:    .word 0x101000
// end of function sub_8016E3C

.thumb
sub_8016E64:
    push {lr}
    ldrb r0, [r5]
    mov r1, #8
    tst r0, r1
    bne locret_8016EBE
    bl battle_isTimeStop
    bne locret_8016EBE
    ldrh r0, [r5,#0x28]
    cmp r0, #0x49 
    blt loc_8016E7E
    cmp r0, #0x4e 
    ble loc_8016E84
loc_8016E7E:
    ldrh r0, [r5,#0x24]
    tst r0, r0
    beq locret_8016EBE
loc_8016E84:
    bl sub_802D234
    cmp r0, #1
    beq loc_8016E92
    bl battle_isPaused
    bne locret_8016EBE
loc_8016E92:
    bl object_getFlag
    ldr r1, [pc, #0x8016ec0-0x8016e96-2] // =0x80110C00
    tst r0, r1
    bne locret_8016EBE
    bl sub_801A180
    mov r1, #8
    tst r0, r1
    bne locret_8016EBE
    ldrb r0, [r5,#0x10]
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    beq loc_8016EBA
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
loc_8016EBA:
    bl anim_80026C4
locret_8016EBE:
    pop {pc}
dword_8016EC0:    .word 0x80110C00
// end of function sub_8016E64

loc_8016EC4:
    push {lr}
    ldr r1, [pc, #0x8016ed4-0x8016ec6-2] // =off_8016ED8
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8016ED4:    .word off_8016ED8
off_8016ED8:    .word sub_8016EE0+1
    .word sub_8016F1A+1
.thumb
sub_8016EE0:
    push {lr}
    bl sub_801A074
    bl sub_801A5E2
    bl sub_80101C4
    bl sub_801DC36
    mov r0, #0
    strb r0, [r5,#0x1a]
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r0, #0
    str r0, [r5,#0x4c]
    bl sub_801A7F4
    ldrb r0, [r5,#5]
    cmp r0, #1
    bge loc_8016F0C
    bl sub_800A11C
loc_8016F0C:
    bl sub_802EF5C
    mov r0, #0
    strh r0, [r5,#0x24]
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_8016EE0

.thumb
sub_8016F1A:
    push {r4,lr}
    bl battle_isTimeStop
    bne locret_8016F54
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x14
    bl sub_80E05F6
    ldrb r1, [r0]
    mov r2, #4
    orr r1, r2
    strb r1, [r0]
    bl sub_802CDD0
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x74]
    bl sub_80E1A86
    add r0, r5, #0
    bl sub_80077B4
    mov r0, #8
    str r0, [r5,#8]
locret_8016F54:
    pop {r4,pc}
// end of function sub_8016F1A

.thumb
sub_8016F56:
    push {r4,r6,r7,lr}
    bl sub_800F35C
    ldr r6, [r5,#0x58]
    ldrh r0, [r5,#0x28]
    bl sub_800F214
    add r7, r0, #0
    mov r0, #0x80
    ldrb r1, [r7]
    ldrb r2, [r7,#1]
    bl sub_80026E4
    ldrb r0, [r7,#7]
    cmp r0, #0
    bne loc_8016F7C
    bl sub_8002F90
    b loc_8016F80
loc_8016F7C:
    bl sub_8002E3C
loc_8016F80:
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r1, #0xff
    strb r1, [r5,#0x11]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
// end of function sub_8016F56

    bl sub_800F334
    bl sprite_setPallete
    bl sub_800E456
    bl sub_8002F5C
    ldrb r0, [r7,#5]
    ldrb r1, [r5,#0xe]
    orr r1, r0
    strb r1, [r5,#0xe]
    bl sub_802D234
    cmp r0, #6
    bne loc_8016FBE
    ldrb r0, [r7,#4]
    ldr r1, [pc, #0x80170a0-0x8016fb2-2] // =dword_80170A4
    ldrb r0, [r1,r0]
    cmp r0, #0
    bne loc_8016FBE
    mov r0, #0
    str r0, [r5,#0x2c]
loc_8016FBE:
    bl sub_8019892
    tst r0, r0
    bne loc_8016FCC
    bl object_freeMemory
    b locret_8017092
loc_8016FCC:
    push {r0}
    ldrh r0, [r5,#0x28]
    bl sub_800F23C
    ldrb r4, [r0,#3]
    pop {r0}
    mov r1, #1
    mov r2, #2
    mov r3, #4
    tst r4, r3
    beq loc_8016FE6
    mov r1, #0x10
    mov r2, #2
loc_8016FE6:
    mov r3, #3
    bl sub_8019FB4
    ldrb r0, [r7,#6]
    bl sub_8019F9E
    mov r3, #0x10
    tst r4, r3
    beq loc_8017000
    mov r0, #1
    lsl r0, r0, #0x1b
    bl object_setFlag
loc_8017000:
    mov r3, #8
    tst r4, r3
    beq loc_801700E
    mov r0, #1
    lsl r0, r0, #0x19
    bl object_setFlag
loc_801700E:
    mov r3, #4
    tst r4, r3
    beq loc_801701A
    mov r0, #0x20 
    bl object_setFlag
loc_801701A:
    mov r3, #2
    tst r4, r3
    beq loc_8017026
    mov r0, #0x10
    bl object_setFlag
loc_8017026:
    mov r3, #1
    tst r4, r3
    beq loc_8017034
    mov r0, #1
    lsl r0, r0, #0x11
    bl object_setFlag
loc_8017034:
    bl sub_801DB84
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
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
    mov r0, #0
    strb r0, [r5,#0x17]
    bl sub_800F2C6
loc_8017064:
    bl sub_8010DD0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    mov r1, #0x3e 
    bl sub_80136E4
    mov r1, #0x64 
    svc 6
    cmp r0, #0xa
    ble loc_8017080
    mov r0, #0xa
    b loc_8017086
loc_8017080:
    cmp r0, #0
    bgt loc_8017086
    mov r0, #1
loc_8017086:
    ldr r1, [r5,#0x58]
    strb r0, [r1,#0xc]
    bl sub_800F378
    mov r0, #4
    str r0, [r5,#8]
locret_8017092:
    pop {r4,r6,r7,pc}
    .word 0, 0
    .byte 0, 0, 0, 0
off_80170A0:    .word dword_80170A4
dword_80170A4:    .word 0x1000000, 0x1000000, 0x0, 0x0
    .word 0x1, 0x0
    .word 0x1010001, 0x0
.thumb
sub_80170C4:
    push {lr}
    bl battle_isPaused
    bne locret_80170D6
    ldr r1, [pc, #0x80170d8-0x80170cc-4] // =off_80170DC
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
locret_80170D6:
    pop {pc}
off_80170D8:    .word off_80170DC
off_80170DC:    .word sub_80170E4+1
    .word sub_8017122+1
// end of function sub_80170C4

.thumb
sub_80170E4:
    push {lr}
    bl sub_801A074
    bl sub_801A5E2
    bl sub_80101C4
    bl sub_8012EA8
    bl sub_801DC36
    mov r0, #0
    strb r0, [r5,#0x1a]
    sub r0, #1
    strh r0, [r5,#0x2a]
    bl sub_800E456
    bl sub_8002F5C
    bl sub_801A7F4
    ldrb r0, [r5,#5]
    cmp r0, #1
    bge loc_8017118
    bl sub_800A11C
loc_8017118:
    bl sub_802EF5C
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_80170E4

.thumb
sub_8017122:
    push {r4,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8017168
    bl battle_isTimeStop
    bne locret_80171A4
    mov r0, #0
    strb r0, [r5,#0x18]
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r2, [r5,#0x58]
    str r0, [r2,#0x68]
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r4, #1
    ldr r7, [r5,#0x58]
    add r7, #0x74 
    bl sub_80E1A6A
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x20 
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #3
    bl sub_80E05F6
    mov r1, #0x5a 
    strh r1, [r0,#0x20]
    mov r0, #0x5a 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8017168:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge loc_801719C
    bl sub_802CDD0
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x74]
    bl sub_80E1A86
    bl sub_8011020
    add r0, r5, #0
    bl sub_80077B4
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #8
    str r0, [r5,#8]
    b locret_80171A4
loc_801719C:
    lsr r0, r0, #2
    bcc locret_80171A4
    bl sub_8002DB0
locret_80171A4:
    pop {r4,r7,pc}
// end of function sub_8017122

    push {lr}
    bl battle_isPaused
    bne locret_80171B8
    ldr r1, [pc, #0x80171bc-0x80171ae-2] // =off_80171C0
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
locret_80171B8:
    pop {pc}
    .balign 4, 0x00
off_80171BC:    .word off_80171C0
off_80171C0:    .word sub_80171CC+1
    .word sub_80171D8+1
    .word sub_8017274+1
.thumb
sub_80171CC:
    push {lr}
    bl sub_80170E4
    bl sub_8000784
    pop {pc}
// end of function sub_80171CC

.thumb
sub_80171D8:
    push {r4,r7,lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_801722C
    bl battle_isTimeStop
    bne locret_8017272
    mov r0, #0
    strb r0, [r5,#0x18]
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r2, [r5,#0x58]
    str r0, [r2,#0x68]
    ldrh r0, [r5,#0x28]
    ldr r1, [pc, #0x80172e8-0x80171f4-4] // =0x171
    cmp r0, r1
    blt loc_8017200
    ldr r1, [pc, #0x80172ec-0x80171fa-2] // =0x17D
    cmp r0, r1
    ble loc_8017204
loc_8017200:
    mov r0, #2
    strb r0, [r5,#0x10]
loc_8017204:
    mov r4, #1
    ldr r7, [r5,#0x58]
    add r7, #0x74 
    bl sub_80E1A6A
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x20 
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #3
    bl sub_80E05F6
    mov r1, #0x5a 
    strh r1, [r0,#0x20]
    mov r0, #0x5a 
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_801722C:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge loc_801726A
    bl sub_802CDD0
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
    ldr r0, [r5,#0x58]
    ldr r0, [r0,#0x74]
    bl sub_80E1A86
    bl sub_8011020
    add r0, r5, #0
    bl sub_80077B4
    mov r0, #4
    mov r1, #4
    bl engine_setScreeneffect
    mov r4, #1
    ldr r7, [r5,#0x58]
    add r7, #0x74 
    bl sub_80E1A6A
    mov r0, #8
    strh r0, [r5,#0xa]
    b locret_8017272
loc_801726A:
    lsr r0, r0, #2
    bcc locret_8017272
    bl sub_8002DB0
locret_8017272:
    pop {r4,r7,pc}
// end of function sub_80171D8

.thumb
sub_8017274:
    push {r4,lr}
    bl engine_isScreeneffectAnimating
    tst r0, r0
    bne loc_8017284
    mov r0, #8
    str r0, [r5,#8]
    b locret_801728C
loc_8017284:
    lsr r0, r0, #2
    bcc locret_801728C
    bl sub_8002DB0
locret_801728C:
    pop {r4,pc}
// end of function sub_8017274

.thumb
sub_801728E:
    push {lr}
    bl sub_800A8F8
    tst r0, r0
    beq locret_80172C0
    ldrb r0, [r5,#9]
    cmp r0, #0
    beq locret_80172C0
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    mov r1, #0x50 
    ldrb r1, [r0,r1]
    tst r1, r1
    beq locret_80172C0
    bl sub_800A704
    mov r1, #0x1f
    and r0, r1
    ldr r1, [pc, #0x80172c4-0x80172b4-4] // =dword_80172C8
    ldrb r0, [r1,r0]
    lsl r1, r0, #5
    add r0, r0, r1
    bl sub_8002ED0
locret_80172C0:
    pop {pc}
    .balign 4, 0x00
off_80172C4:    .word dword_80172C8
dword_80172C8:    .word 0x6040200, 0xE0C0A08, 0x16141210, 0x1E1C1A18, 0x181A1C1E
    .word 0x10121416, 0x80A0C0E, 0x20406
dword_80172E8:    .word 0x173
dword_80172EC:    .word 0x17E
// end of function sub_801728E

.thumb
sub_80172F0:
    push {r4,r7,lr}
    bl sub_800F35C
    ldrb r0, [r5,#0x16]
    mov r1, #0x17
    bl sub_80136CC
    add r2, r0, #0
    mov r1, #0x2c 
    bl sub_8013754
    ldr r4, [r5,#0x58]
    mov r1, #0x2c 
    bl sub_8013774
    push {r0}
    mov r1, #0x29 
    bl sub_8013774
    pop {r1}
    bl sub_800FC9E
    mov r0, #0x80
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
// end of function sub_80172F0

    bl sub_8002E3C
    mov r0, #0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_801002C
    bl sprite_setPallete
    bl sub_800E456
    bl sub_8002F5C
    bl sub_80142B0
    bl sub_8019892
    tst r0, r0
    bne loc_801735A
    bl object_freeMemory
    b locret_80173F2
loc_801735A:
    push {r0}
    bl sub_80107C0
    pop {r0}
    mov r1, #1
    mov r2, #2
    bl sub_8019FB4
    bl sub_80141C8
    bl sub_8013892
    bl sub_801086C
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0
    bne loc_801738A
    mov r1, #0x2c 
    bl sub_8013774
    bl sub_8015B22
loc_801738A:
    ldrb r0, [r5,#0x16]
    mov r1, #0x2c 
    bl sub_80136CC
    bl loc_8011268
    bl sub_80144C0
    bl loc_8013E58
    bl sub_801DB84
    mov r0, #3
    bl sub_8018856
    neg r1, r1
    bl sub_801DC06
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_80173C6
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    tst r0, r0
    beq loc_80173C6
    bl sub_801DC36
loc_80173C6:
    bl sub_80141F4
    mov r7, #0x58 
    add r7, r7, r4
    bl sub_80E0F02
    bl sub_800F378
    ldrb r0, [r5,#0x16]
    mov r1, #0x2c 
    bl sub_80136CC
    cmp r0, #0
    bne loc_80173E6
    bl sub_8010DD0
loc_80173E6:
    bl sub_802DFC8
    bl sub_8013FF8
    mov r0, #4
    str r0, [r5,#8]
locret_80173F2:
    pop {r4,r7,pc}
.thumb
sub_80173F4:
    push {lr}
    bl sub_8002DB0
    ldr r1, [pc, #0x8017408-0x80173fa-2] // =off_801740C
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8017408:    .word off_801740C
off_801740C:    .word sub_801741C+1
    .word sub_801746E+1
    .word sub_80174AA+1
    .word sub_80174BE+1
// end of function sub_80173F4

.thumb
sub_801741C:
    push {lr}
    bl sub_801A074
    bl sub_801A5E2
    bl sub_80101C4
    bl sub_8012EA8
    bl sub_801DC36
    mov r0, #0
    strb r0, [r5,#0x1a]
    sub r0, #1
    strh r0, [r5,#0x2a]
    bl sub_800E456
    bl sub_8002F5C
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
// end of function sub_801741C

    bl sub_801A7F4
    ldr r2, [r5,#0x58]
    ldr r1, [r2,#0x58]
    tst r1, r1
    beq loc_801745A
    mov r1, #0
    str r1, [r2,#0x58]
loc_801745A:
    ldrb r0, [r5,#5]
    cmp r0, #1
    bge loc_8017464
    bl sub_800A11C
loc_8017464:
    bl sub_802EF5C
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
.thumb
sub_801746E:
    push {lr}
    bl battle_isTimeStop
    bne locret_80174A8
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0
    str r0, [r5,#0x4c]
    mov r0, #0
    strb r0, [r5,#0x18]
    ldr r1, [r5,#0x58]
    mov r0, #0
    str r0, [r1,#0x5c]
    str r0, [r1,#0x68]
    mov r0, #0x6c 
    bl sound_play
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #3
    bl sub_80E05F6
    bl sub_80E05F6
    mov r0, #0x15
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_80174A8:
    pop {pc}
// end of function sub_801746E

.thumb
sub_80174AA:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne locret_80174BC
    mov r0, #0
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_80174BC:
    pop {pc}
// end of function sub_80174AA

.thumb
sub_80174BE:
    push {lr}
    ldrh r0, [r5,#0x20]
    add r0, #1
    strh r0, [r5,#0x20]
    cmp r0, #0x20 
    beq loc_80174E0
    lsr r0, r0, #1
    push {r0}
    add r1, r0, #0
    bl sub_8002EF6
    pop {r0}
    sub r0, #0x10
    neg r0, r0
    bl sub_8002C7A
    pop {pc}
loc_80174E0:
    bl sub_8002F2C
    bl sub_8002CCE
    bl sub_802CDD0
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    bl sub_8011020
    mov r0, #8
    str r0, [r5,#8]
    pop {pc}
// end of function sub_80174BE

.thumb
sub_80174FE:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8017582
    bl sub_800F3E8
    ldr r0, [pc, #0x80175b0-0x801750a-2] // =0x400400
    bl object_setFlag
    bl sub_801A284
    bl sub_801A29A
    bl sub_801A2B0
    bl sub_80101C4
    ldr r0, [pc, #0x80175b4-0x8017520-4] // =0x20005F
    bl sub_801031C
    ldr r0, [pc, #0x80175a4-0x8017526-2] // =0x100041
    bl object_clearFlag
    bl sub_8012EA8
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0xc
    tst r0, r1
    bne loc_8017554
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C
    bl sub_801A04C
    mov r0, #0
    str r0, [r5,#0x3c]
loc_8017554:
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_8011450
    bl sub_800E456
    bl sub_8002F5C
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    ldrb r0, [r5,#0x16]
    mov r1, #3
    mov r2, #1
    bl sub_800AB46
    mov r0, #0x17
    strh r0, [r5,#0x20]
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8017582:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_80175A2
    ldr r0, [pc, #0x80175b0-0x801758a-2] // =0x400400
    bl object_clearFlag
    ldr r0, [pc, #0x80175a8-0x8017590-4] // =0x1000043F
    bl sub_800FFEE
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_80175A2:
    pop {pc}
dword_80175A4:    .word 0x100041
dword_80175A8:    .word 0x1000043F
    .word 0x400
dword_80175B0:    .word 0x400400
dword_80175B4:    .word 0x20005F
// end of function sub_80174FE

.thumb
sub_80175B8:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8017628
    bl sub_800F394
    ldr r0, [pc, #0x8017674-0x80175c4-4] // =0x400000
    bl object_setFlag
    ldr r0, [pc, #0x801766c-0x80175ca-2] // =0x100441
    bl object_clearFlag
    bl sub_80101C4
    ldr r0, [pc, #0x8017684-0x80175d4-4] // =0x20005F
    bl sub_801031C
    bl sub_8012EA8
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0xc
    tst r0, r1
    bne loc_8017602
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C
    bl sub_801A04C
    mov r0, #0
    str r0, [r5,#0x3c]
loc_8017602:
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_800E456
    bl sub_8002F5C
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    ldrb r0, [r5,#0x16]
    mov r1, #3
    mov r2, #1
    bl sub_800AB46
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8017628:
    ldr r0, [r5,#0x58]
    ldrh r1, [r0,#0x24]
    tst r1, r1
    beq loc_8017646
    ldr r0, [r5,#0x54]
    mov r2, #0x1c
    ldrsh r1, [r0,r2]
    sub r1, #1
    strh r1, [r0,r2]
    bgt loc_8017646
    mov r1, #0
    strh r1, [r0,r2]
    ldr r0, [pc, #0x8017678-0x8017640-4] // =0x800
    bl object_clearFlag
loc_8017646:
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0xb
    tst r0, r1
    bne locret_801766A
    ldr r0, [pc, #0x801767c-0x8017652-2] // =0x1000003F
    bl sub_800FFEE
    ldr r0, [pc, #0x8017680-0x8017658-4] // =0x400000
    bl object_clearFlag
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_801766A:
    pop {pc}
dword_801766C:    .word 0x100441
    .word 0x400
dword_8017674:    .word 0x400000
off_8017678:    .word 0x800
dword_801767C:    .word 0x1000003F
dword_8017680:    .word 0x400000
dword_8017684:    .word 0x20005F
// end of function sub_80175B8

.thumb
sub_8017688:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_8017708
    bl sub_800F3B0
    ldr r0, [pc, #0x8017754-0x8017694-4] // =0x400000
    bl object_setFlag
    ldr r0, [pc, #0x801774c-0x801769a-2] // =0x100441
    bl object_clearFlag
    bl sub_801A67E
    bl sub_80101C4
    bl sub_800EB08
    mov r0, #0x19
    add r0, #0xff
    bl sound_play
    ldr r0, [pc, #0x8017764-0x80176b4-4] // =0x20005F
    bl sub_801031C
    bl sub_8012EA8
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0xc
    tst r0, r1
    bne loc_80176E2
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C
    bl sub_801A04C
    mov r0, #0
    str r0, [r5,#0x3c]
loc_80176E2:
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_800E456
    bl sub_8002F5C
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    ldrb r0, [r5,#0x16]
    mov r1, #3
    mov r2, #1
    bl sub_800AB46
    mov r0, #4
    strb r0, [r5,#0xb]
loc_8017708:
    ldr r0, [r5,#0x58]
    ldrh r1, [r0,#0x24]
    tst r1, r1
    beq loc_8017726
    ldr r0, [r5,#0x54]
    mov r2, #0x2a 
    ldrsh r1, [r0,r2]
    sub r1, #1
    strh r1, [r0,r2]
    bgt loc_8017726
    mov r1, #0
    strh r1, [r0,r2]
    ldr r0, [pc, #0x8017758-0x8017720-4] // =0x10000
    bl object_clearFlag
loc_8017726:
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0x10
    tst r0, r1
    bne locret_801774A
    ldr r0, [pc, #0x801775c-0x8017732-2] // =0x1000003F
    bl sub_800FFEE
    ldr r0, [pc, #0x8017760-0x8017738-4] // =0x400000
    bl object_clearFlag
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_801774A:
    pop {pc}
dword_801774C:    .word 0x100441
    .word 0x400
dword_8017754:    .word 0x400000
dword_8017758:    .word 0x10000
dword_801775C:    .word 0x1000003F
dword_8017760:    .word 0x400000
dword_8017764:    .word 0x20005F
// end of function sub_8017688

.thumb
sub_8017768:
    push {lr}
    ldrb r0, [r5,#0xb]
    tst r0, r0
    bne loc_80177E4
    bl sub_800F3CC
    ldr r0, [pc, #0x8017850-0x8017774-4] // =0x400000
    bl object_setFlag
    ldr r0, [pc, #0x8017848-0x801777a-2] // =0x100441
    bl object_clearFlag
    bl sub_80101C4
    bl sub_800EB08
    mov r0, #0x2e 
    add r0, #0xff
    bl sound_play
    ldr r0, [pc, #0x8017860-0x8017790-4] // =0x20005F
    bl sub_801031C
    bl sub_8012EA8
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0xc
    tst r0, r1
    bne loc_80177BE
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C
    bl sub_801A04C
    mov r0, #0
    str r0, [r5,#0x3c]
loc_80177BE:
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_800E456
    bl sub_8002F5C
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    ldrb r0, [r5,#0x16]
    mov r1, #3
    mov r2, #1
    bl sub_800AB46
    mov r0, #4
    strb r0, [r5,#0xb]
loc_80177E4:
    ldr r0, [r5,#0x58]
    ldrh r1, [r0,#0x24]
    tst r1, r1
    beq loc_8017802
    ldr r0, [r5,#0x54]
    mov r2, #0x2c 
    ldrsh r1, [r0,r2]
    sub r1, #1
    strh r1, [r0,r2]
    bgt loc_8017802
    mov r1, #0
    strh r1, [r0,r2]
    ldr r0, [pc, #0x8017854-0x80177fc-4] // =0x80000000
    bl object_clearFlag
loc_8017802:
    ldr r0, [r5,#0x54]
    mov r2, #0x2c 
    ldrsh r1, [r0,r2]
    lsr r1, r1, #2
    mov r0, #0x1f
    and r0, r1
    ldr r1, [pc, #0x8017864-0x801780e-2] // =unk_8017868
    ldrsb r0, [r1,r0]
    lsl r0, r0, #0x10
    str r0, [r5,#0x3c]
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0x1f
    tst r0, r1
    bne locret_8017846
    ldr r0, [pc, #0x8017858-0x8017822-2] // =0x1000003F
    bl sub_800FFEE
    ldr r0, [pc, #0x801785c-0x8017828-4] // =0x400000
    bl object_clearFlag
    mov r0, #0
    str r0, [r5,#0x3c]
    mov r0, #0x25 
    add r0, #0xff
    bl sound_play
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_8017846:
    pop {pc}
dword_8017848:    .word 0x100441
    .word 0x400
dword_8017850:    .word 0x400000
dword_8017854:    .word 0x80000000
dword_8017858:    .word 0x1000003F
dword_801785C:    .word 0x400000
dword_8017860:    .word 0x20005F
off_8017864:    .word unk_8017868
unk_8017868:    .byte 1
    .byte 2
    .byte 3
    .byte 4
    .byte 4
    .byte 5
    .byte 5
    .byte 6
    .byte 6
    .byte 6
    .byte 5
    .byte 4
    .byte 3
    .byte 2
    .byte 1
    .byte 0
    .byte 0xFF
    .byte 0xFE
    .byte 0xFD
    .byte 0xFC
    .byte 0xFC
    .byte 0xFB
    .byte 0xFB
    .byte 0xFA
    .byte 0xFA
    .byte 0xFA
    .byte 0xFB
    .byte 0xFC
    .byte 0xFD
    .byte 0xFE
    .byte 0xFF
    .byte 0
// end of function sub_8017768

.thumb
sub_8017888:
    push {r4,r7,lr}
    bl sub_800A8F8
    beq loc_80178AC
    ldrh r0, [r5,#0x28]
    bl sub_80182B4
    ldrb r1, [r0,#1]
    cmp r1, #2
    bne loc_80178AC
    mov r7, #0x40 
    ldr r0, [r5,#0x58]
    add r7, r7, r0
    ldr r0, [r7]
    cmp r0, #0
    bne loc_80178AC
    bl sub_80E1620
loc_80178AC:
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {r4,r7,pc}
// end of function sub_8017888

loc_80178B6:
    push {lr}
    ldr r1, [pc, #0x80178c4-0x80178b8-4] // =off_80178C8
    ldrb r0, [r5,#0xd]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_80178C4:    .word off_80178C8
off_80178C8:    .word sub_80178D4+1
    .word sub_8017992+1
    .word sub_8017A38+1
.thumb
sub_80178D4:
    push {r6,r7,lr}
    bl sub_800F404
    ldr r0, [pc, #0x8017a90-0x80178da-2] // =0x500000
    bl object_setFlag
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    bl object_getFlag
    mov r2, #2
    mov r1, #1
    lsl r1, r1, #0xb
    tst r0, r1
    bne loc_8017900
    mov r2, #1
    ldr r1, [pc, #0x8017a94-0x80178f8-4] // =0x20000
    tst r0, r1
    beq loc_8017900
    mov r2, #0
loc_8017900:
    strb r2, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_8011450
    bl sub_8012EA8
    bl sub_800E456
    bl sub_8002F5C
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800E29C
    bl sub_801A04C
    mov r0, #0
    strh r0, [r5,#0x3c]
    ldr r0, [pc, #0x8017a98-0x8017926-2] // =0x1440
    bl object_clearFlag
    bl sub_80101C4
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
// end of function sub_80178D4

    ldrb r0, [r5,#0x16]
    mov r1, #3
    mov r2, #1
    bl sub_800AB46
    bl sub_800E45E
    strb r0, [r5,#0x1c]
    strb r1, [r5,#0x1d]
    strh r2, [r5,#0x22]
    tst r2, r2
    beq loc_8017988
    ldrb r3, [r5,#0x12]
    add r0, r0, r3
    ldrb r3, [r5,#0x13]
    add r1, r1, r3
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800E5AC
    beq loc_8017988
    mov r1, #0x1c
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8017a9c-0x8017966-2] // =0xA0000
    mul r0, r1
    str r0, [r5,#0x40]
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8017aa0-0x8017970-4] // =0x60000
    mul r0, r1
    str r0, [r5,#0x44]
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_801BB1C
    mov r0, #4
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
loc_8017988:
    mov r0, #0x18
    strh r0, [r5,#0x20]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
.thumb
sub_8017992:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800E276
    add r2, r0, #0
    add r4, r1, #0
    ldr r1, [r5,#0x34]
    ldr r0, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800E6E8
    tst r0, r0
    bne loc_80179C2
    add r2, r4, #0
    ldr r1, [r5,#0x38]
    ldr r0, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800E6E8
    tst r0, r0
    beq loc_8017A2E
loc_80179C2:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800C90A
    ldrb r4, [r0,#2]
    cmp r4, #7
    bne loc_80179E8
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#2]
    cmp r0, #2
    beq loc_80179E8
    ldrh r0, [r5,#0x22]
    add r0, #1
    strh r0, [r5,#0x22]
    b loc_80179E8
loc_80179E8:
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    ble loc_8017A18
    mov r2, #0x1c
    ldrsb r2, [r5,r2]
    ldrb r0, [r5,#0x14]
    add r0, r0, r2
    mov r2, #0x1d
    ldrsb r2, [r5,r2]
    ldrb r1, [r5,#0x15]
    add r1, r1, r2
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800E5AC
    beq loc_8017A18
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_801BB1C
    pop {r4,pc}
loc_8017A18:
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800E29C
    bl sub_801A04C
    mov r0, #0x14
    strh r0, [r5,#0x20]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r4,pc}
loc_8017A2E:
    bl sub_800E2AC
    bl sub_801A04C
    pop {r4,pc}
// end of function sub_8017992

.thumb
sub_8017A38:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_8017A8E
    bl object_getFlag
    mov r1, #1
    lsl r1, r1, #0xb
    tst r0, r1
    beq loc_8017A5E
    ldr r0, [pc, #0x8017aa4-0x8017a4e-2] // =0x100000
    bl object_clearFlag
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    b locret_8017A8E
loc_8017A5E:
    ldr r0, [pc, #0x8017aa8-0x8017a5e-2] // =0x501800
    bl object_clearFlag
    ldr r0, [pc, #0x8017aac-0x8017a64-4] // =0x1000043F
    bl sub_800FFEE
    ldr r0, [pc, #0x8017ab0-0x8017a6a-2] // =0x200000
    bl sub_801031C
    mov r0, #0x10
    bl sub_801A176
    mov r0, #0
    strb r0, [r5,#0x1f]
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    bl sub_8011450
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_8017A8E:
    pop {pc}
dword_8017A90:    .word 0x500000
dword_8017A94:    .word 0x20000
dword_8017A98:    .word 0x1441
dword_8017A9C:    .word 0xA0000
dword_8017AA0:    .word 0x60000
dword_8017AA4:    .word 0x100000
dword_8017AA8:    .word 0x501800
dword_8017AAC:    .word 0x1000043F
dword_8017AB0:    .word 0x200000
// end of function sub_8017A38

loc_8017AB4:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x50
    ldrh r0, [r5,#0x28]
    bl sub_800F29C
    cmp r0, #2
    bne loc_8017B64
    bl sub_802D246
    mov r1, #8
    tst r0, r1
    beq loc_8017B64
    bl sub_800FFFE
    ldr r1, [pc, #0x8017c94-0x8017ad0-4] // =0x800
    tst r0, r1
    beq loc_8017B64
    bl sub_800BEDA
    tst r0, r0
    beq loc_8017B5E
    bl sub_8010004
    add r1, r0, #1
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    beq loc_8017B5E
    bl sub_8021AA4
    ldrb r0, [r0,#9]
    mov r1, #1
    tst r0, r1
    beq loc_8017B5E
    mov r0, #0
    add r7, sp, #0
    bl sub_80127C0
    cmp r0, #0x15
    bne loc_8017B26
    push {r7}
    ldr r6, [r7,#8]
    ldr r4, [r7,#0xc]
    ldrb r1, [r7,#3]
    lsl r1, r1, #2
    ldr r3, [pc, #0x8017bb8-0x8017b0c-4] // =off_802CCB4
    ldr r3, [r3,r1]
    ldrb r2, [r7,#2]
    ldrh r1, [r7,#6]
    lsl r1, r1, #0x10
    ldrh r7, [r7,#0x14]
    add r7, r7, r1
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov lr, pc
    bx r3
    pop {r7}
    b loc_8017B4A
loc_8017B26:
    cmp r0, #0x1b
    bne loc_8017B48
    push {r7}
    ldrb r2, [r7,#2]
    ldrb r3, [r7,#3]
    ldr r4, [r7,#0xc]
    ldr r6, [r7,#8]
    ldrh r1, [r7,#6]
    lsl r1, r1, #0x10
    ldrh r7, [r7,#0x14]
    add r7, r7, r1
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_80E192C
    pop {r7}
    b loc_8017B4A
loc_8017B48:
    b loc_8017B5E
loc_8017B4A:
    add r2, r0, #0
    ldrb r0, [r5,#0x16]
    mov r1, #0
    bl loc_800BF30
    ldrb r0, [r5,#0x16]
    bl sub_800B8EE
    bl sub_800FC7C
loc_8017B5E:
    ldr r0, [pc, #0x8017c98-0x8017b5e-2] // =0x80C
    bl sub_800FFEE
loc_8017B64:
    ldrb r0, [r5,#0x18]
    tst r0, r0
    bne loc_8017B7A
    ldrh r0, [r5,#0x36]
    strh r0, [r5,#0x30]
    ldrh r0, [r5,#0x3e]
    strh r0, [r5,#0x32]
    mov r0, #0
    strb r0, [r5,#0x19]
    mov r0, #4
    strb r0, [r5,#0x18]
loc_8017B7A:
    ldr r0, [r5,#0x54]
    mov r1, #0x80
    ldrh r1, [r0,r1]
    tst r1, r1
    beq loc_8017B88
    mov r0, #0x1e
    strb r0, [r5,#0x19]
loc_8017B88:
    ldrb r0, [r5,#0x19]
    tst r0, r0
    beq loc_8017BAA
    sub r0, #1
    strb r0, [r5,#0x19]
    ldrh r1, [r5,#0x30]
    lsl r1, r1, #0x10
    ldr r2, [r5,#0x38]
    ldrh r3, [r5,#0x32]
    lsl r3, r3, #0x10
    mov r0, #3
    bl sub_801BDDE
    mov r0, #0x34 
    add r0, r0, r5
    stmia r0!, {r1-r3}
    b loc_8017BB2
loc_8017BAA:
    ldrh r0, [r5,#0x30]
    strh r0, [r5,#0x36]
    ldrh r0, [r5,#0x32]
    strh r0, [r5,#0x3e]
loc_8017BB2:
    add sp, sp, #0x50
    pop {r4,r6,r7,pc}
    .byte 0
    .byte 0
off_8017BB8:    .word off_802CCB4
    .byte 0x5C 
    .byte 0xCD
    .byte 2
    .byte 8
.thumb
sub_8017BC0:
    push {r4,r6,r7,lr}
    ldr r6, [r5,#0x58]
    mov r7, #0xa0
    add r7, r7, r6
    bl sub_801032C
    mov r1, #0x80
    tst r0, r1
    beq loc_8017BD8
    bl loc_8014A38
    pop {r4,r6,r7,pc}
loc_8017BD8:
    bl sub_801032C
    ldr r1, [pc, #0x8017c9c-0x8017bdc-4] // =0x100
    tst r0, r1
    beq loc_8017BE8
    bl loc_8015614
    pop {r4,r6,r7,pc}
loc_8017BE8:
    bl sub_801032C
    ldr r1, [pc, #0x8017ca0-0x8017bec-4] // =0x1000
    tst r0, r1
    beq loc_8017BF8
    bl loc_802D714
    pop {r4,r6,r7,pc}
loc_8017BF8:
    bl sub_801032C
    ldr r1, [pc, #0x8017ca4-0x8017bfc-4] // =0x2000
    tst r0, r1
    beq loc_8017C0C
    mov r0, #0
    strb r0, [r7,#3]
    bl loc_802D926
    pop {r4,r6,r7,pc}
loc_8017C0C:
    bl sub_800FFFE
    ldr r1, [pc, #0x8017ca8-0x8017c10-4] // =0x4000
    tst r0, r1
    beq loc_8017C2A
    add r0, r1, #0
    bl sub_800FFEE
    mov r0, #0x80
    bl sub_8010312
    mov r0, #0x1c
    bl sub_8011680
    pop {r4,r6,r7,pc}
loc_8017C2A:
    bl sub_800FFFE
    mov r1, #0x40 
    tst r0, r1
    beq loc_8017C56
    add r0, r1, #0
    bl sub_800FFEE
    ldr r0, [pc, #0x8017c9c-0x8017c3a-2] // =0x100
    bl sub_8010312
    mov r0, #0
    str r0, [r5,#0x5c]
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_8017C4E
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_8017C4E:
    mov r0, #0x1c
    bl sub_8011680
    pop {r4,r6,r7,pc}
loc_8017C56:
    bl sub_800FFFE
    ldr r1, [pc, #0x8017cac-0x8017c5a-2] // =LCDControl
    tst r0, r1
    beq loc_8017C74
    add r0, r1, #0
    bl sub_800FFEE
    ldr r0, [pc, #0x8017ca0-0x8017c66-2] // =0x1000
    bl sub_8010312
    mov r0, #0x1c
    bl sub_8011680
    pop {r4,r6,r7,pc}
loc_8017C74:
    bl sub_800FFFE
    ldr r1, [pc, #0x8017cb0-0x8017c78-4] // =start_
    tst r0, r1
    beq locret_8017C92
    add r0, r1, #0
    bl sub_800FFEE
    ldr r0, [pc, #0x8017ca4-0x8017c84-4] // =0x2000
    bl sub_8010312
    mov r0, #0x1c
    bl sub_8011680
    pop {r4,r6,r7,pc}
locret_8017C92:
    pop {r4,r6,r7,pc}
off_8017C94:    .word 0x800
off_8017C98:    .word 0x80C
off_8017C9C:    .word 0x100
off_8017CA0:    .word 0x1000
off_8017CA4:    .word 0x2000
dword_8017CA8:    .word 0x4000
off_8017CAC:    .word LCDControl
off_8017CB0:    .word start_
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
// end of function sub_8017BC0

.thumb
sub_8017CC0:
    push {lr}
    ldr r1, [pc, #0x8017cd0-0x8017cc2-2] // =off_8017CD4
    ldrb r0, [r5,#0xd]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8017CD0:    .word off_8017CD4
off_8017CD4:    .word sub_8017CE0+1
    .word sub_8017D64+1
    .word sub_8017E0A+1
// end of function sub_8017CC0

.thumb
sub_8017CE0:
    push {r6,r7,lr}
    mov r0, #1
    lsl r0, r0, #0x14
    bl object_setFlag
    mov r0, #0
    str r0, [r5,#0x4c]
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800E29C
    bl sub_801A04C
    ldr r0, [pc, #0x8017d58-0x8017cfa-2] // =0x1040
    bl object_clearFlag
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
// end of function sub_8017CE0

    bl sub_800F598
    strb r0, [r5,#0x1c]
    strb r1, [r5,#0x1d]
    strb r2, [r5,#0xb]
    tst r2, r2
    beq loc_8017D4E
    ldrb r3, [r5,#0x12]
    add r0, r0, r3
    ldrb r3, [r5,#0x13]
    add r1, r1, r3
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800F50C
    beq loc_8017D4E
    mov r1, #0x1c
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8017d5c-0x8017d2c-4] // =0xA0000
    mul r0, r1
    str r0, [r5,#0x40]
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8017d60-0x8017d36-2] // =0x60000
    mul r0, r1
    str r0, [r5,#0x44]
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_801BB1C
    mov r0, #4
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
loc_8017D4E:
    mov r0, #0x18
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r6,r7,pc}
off_8017D58:    .word 0x1040
dword_8017D5C:    .word 0xA0000
dword_8017D60:    .word 0x60000
.thumb
sub_8017D64:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800E276
    add r2, r0, #0
    add r4, r1, #0
    ldr r1, [r5,#0x34]
    ldr r0, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800E6E8
    tst r0, r0
    bne loc_8017D94
    add r2, r4, #0
    ldr r1, [r5,#0x38]
    ldr r0, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800E6E8
    tst r0, r0
    beq loc_8017E00
loc_8017D94:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#2]
    cmp r0, #2
    beq loc_8017DBA
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800C90A
    ldrb r0, [r0,#2]
    cmp r0, #7
    bne loc_8017DBA
    ldrb r0, [r5,#0xb]
    add r0, #1
    strb r0, [r5,#0xb]
    b loc_8017DBA
loc_8017DBA:
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    ble loc_8017DEA
    mov r2, #0x1c
    ldrsb r2, [r5,r2]
    ldrb r0, [r5,#0x14]
    add r0, r0, r2
    mov r2, #0x1d
    ldrsb r2, [r5,r2]
    ldrb r1, [r5,#0x15]
    add r1, r1, r2
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800F50C
    beq loc_8017DEA
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_801BB1C
    pop {r4,pc}
loc_8017DEA:
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800E29C
    bl sub_801A04C
    mov r0, #0x14
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r4,pc}
loc_8017E00:
    bl sub_800E2AC
    bl sub_801A04C
    pop {r4,pc}
// end of function sub_8017D64

.thumb
sub_8017E0A:
    push {lr}
    ldrb r0, [r5,#0xa]
    sub r0, #1
    strb r0, [r5,#0xa]
    bge locret_8017E24
    mov r0, #1
    lsl r0, r0, #0x14
    bl object_clearFlag
    ldr r0, [r5,#0x5c]
    str r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x5c]
locret_8017E24:
    pop {pc}
// end of function sub_8017E0A

loc_8017E26:
    push {lr}
    ldr r1, [pc, #0x8017e34-0x8017e28-4] // =off_8017E38
    ldrb r0, [r5,#0xd]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_8017E34:    .word off_8017E38
off_8017E38:    .word sub_8017E44+1
    .word sub_8017F38+1
    .word sub_8017FE6+1
.thumb
sub_8017E44:
    push {r4,r6,r7,lr}
    mov r0, #1
    lsl r0, r0, #0x14
    bl object_setFlag
    mov r0, #0
    str r0, [r5,#0x4c]
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800E29C
    bl sub_801A04C
    ldr r0, [pc, #0x8017f2c-0x8017e5e-2] // =0x1040
    bl object_clearFlag
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
// end of function sub_8017E44

    bl sub_800F598
    strb r0, [r5,#0x1c]
    strb r1, [r5,#0x1d]
    strb r3, [r5,#0xc]
    mov r2, #6
    strb r2, [r5,#0xb]
    tst r2, r2
    beq loc_8017F08
    mov r4, #0
    ldrb r2, [r5,#0xc]
    cmp r2, #1
    beq loc_8017E88
    add r4, #4
loc_8017E88:
    ldrb r0, [r5,#0x1c]
    cmp r0, r2
    beq loc_8017E90
    add r4, #2
loc_8017E90:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl object_getPanelParameters
    ldrb r2, [r5,#0xc]
    mov r1, #0x20 
    tst r0, r1
    beq loc_8017EA2
    add r4, #1
loc_8017EA2:
    ldr r0, [pc, #0x8017f20-0x8017ea2-2] // =dword_8017F24
    ldrb r0, [r0,r4]
    cmp r0, #0
    beq loc_8017EC8
    strb r0, [r5,#0xc]
    mov r0, #0x1c
    ldrsb r0, [r5,r0]
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldrb r3, [r5,#0x12]
    add r0, r0, r3
    ldrb r3, [r5,#0x13]
    add r1, r1, r3
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800F55C
    beq loc_8017F08
    b loc_8017EE6
loc_8017EC8:
    mov r0, #0
    strb r0, [r5,#0xc]
    mov r0, #0x1c
    ldrsb r0, [r5,r0]
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldrb r3, [r5,#0x12]
    add r0, r0, r3
    ldrb r3, [r5,#0x13]
    add r1, r1, r3
    add r6, r0, #0
    add r7, r1, #0
    bl sub_800F534
    beq loc_8017F08
loc_8017EE6:
    mov r1, #0x1c
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8017f30-0x8017eea-2] // =0xA0000
    mul r0, r1
    str r0, [r5,#0x40]
    mov r1, #0x1d
    ldrsb r1, [r5,r1]
    ldr r0, [pc, #0x8017f34-0x8017ef4-4] // =0x60000
    mul r0, r1
    str r0, [r5,#0x44]
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    mov r0, #4
    strb r0, [r5,#0xd]
    pop {r4,r6,r7,pc}
loc_8017F08:
    mov r0, #0x18
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r4,r6,r7,pc}
    .word 0, 0, 0
    .byte 0, 0
off_8017F20:    .word dword_8017F24
dword_8017F24:    .word 0x1010000, 0x2020000
off_8017F2C:    .word 0x1040
dword_8017F30:    .word 0xA0000
dword_8017F34:    .word 0x60000
.thumb
sub_8017F38:
    push {r4,lr}
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800E276
    add r2, r0, #0
    add r4, r1, #0
    ldr r1, [r5,#0x34]
    ldr r0, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800E6E8
    tst r0, r0
    bne loc_8017F68
    add r2, r4, #0
    ldr r1, [r5,#0x38]
    ldr r0, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_800E6E8
    tst r0, r0
    beq loc_8017FDC
loc_8017F68:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
    ldr r0, [r5,#0x54]
    ldrb r0, [r0,#2]
    cmp r0, #2
    beq loc_8017F8E
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_800C90A
    ldrb r0, [r0,#2]
    cmp r0, #7
    bne loc_8017F8E
    ldrb r0, [r5,#0xb]
    add r0, #1
    strb r0, [r5,#0xb]
    b loc_8017F8E
loc_8017F8E:
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    ble loc_8017FC6
    mov r2, #0x1c
    ldrsb r2, [r5,r2]
    ldrb r0, [r5,#0x14]
    add r0, r0, r2
    mov r2, #0x1d
    ldrsb r2, [r5,r2]
    ldrb r1, [r5,#0x15]
    add r1, r1, r2
    add r6, r0, #0
    add r7, r1, #0
    ldrb r2, [r5,#0xc]
    cmp r2, #0
    bne loc_8017FB6
    bl sub_800F534
    b loc_8017FBA
loc_8017FB6:
    bl sub_800F55C
loc_8017FBA:
    beq loc_8017FC6
    add r0, r6, #0
    add r1, r7, #0
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    pop {r4,pc}
loc_8017FC6:
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x12]
    bl sub_800E29C
    bl sub_801A04C
    mov r0, #0x14
    strb r0, [r5,#0xa]
    mov r0, #8
    strb r0, [r5,#0xd]
    pop {r4,pc}
loc_8017FDC:
    bl sub_800E2AC
    bl sub_801A04C
    pop {r4,pc}
// end of function sub_8017F38

.thumb
sub_8017FE6:
    push {lr}
    ldrb r0, [r5,#0xa]
    sub r0, #1
    strb r0, [r5,#0xa]
    bge locret_8018000
    mov r0, #1
    lsl r0, r0, #0x14
    bl object_clearFlag
    ldr r0, [r5,#0x5c]
    str r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x5c]
locret_8018000:
    pop {pc}
// end of function sub_8017FE6

loc_8018002:
    push {lr}
    ldr r1, [pc, #0x8018010-0x8018004-4] // =off_8018014
    ldrb r0, [r5,#0x18]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_8018010:    .word off_8018014
off_8018014:    .word sub_801802C+1
    .word sub_8018076+1
    .word sub_8018094+1
    .word sub_80180A8+1
    .word sub_80180EC+1
    .word locret_8018138+1
.thumb
sub_801802C:
    push {lr}
    bl sub_801A180
    mov r2, #0
    ldr r1, [pc, #0x8018294-0x8018034-4] // =0x400
    tst r0, r1
    bne loc_801803C
    mov r2, #1
loc_801803C:
    strb r2, [r5,#0x16]
    ldr r0, [pc, #0x8018298-0x801803e-2] // =0xC00
    bl sub_801A176
    ldr r0, [pc, #0x801829c-0x8018044-4] // =LCDControl
    bl object_setFlag
    mov r0, #0x40 
    lsl r0, r0, #0x10
    ldr r1, [r5,#0x3c]
    sub r0, r0, r1
    mov r1, #0x20 
    svc 6
    str r0, [r5,#0x48]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
// end of function sub_801802C

    mov r0, #0x20 
    strb r0, [r5,#0x19]
    mov r0, #0x2b 
    add r0, #0xff
    bl sound_play
    bl sub_801A074
    mov r0, #4
    strb r0, [r5,#0x18]
    pop {pc}
.thumb
sub_8018076:
    push {lr}
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x48]
    add r0, r0, r1
    str r0, [r5,#0x3c]
    ldrb r0, [r5,#0x19]
    sub r0, #1
    strb r0, [r5,#0x19]
    bne locret_8018092
    mov r0, #0x40 
    lsl r0, r0, #0x10
    str r0, [r5,#0x3c]
    mov r0, #8
    strb r0, [r5,#0x18]
locret_8018092:
    pop {pc}
// end of function sub_8018076

.thumb
sub_8018094:
    push {lr}
    ldrh r0, [r5,#0x1e]
    strb r0, [r5,#0x19]
    ldrh r0, [r5,#0x36]
    strh r0, [r5,#0x30]
    ldrh r0, [r5,#0x3e]
    strh r0, [r5,#0x32]
    mov r0, #0xc
    strb r0, [r5,#0x18]
    pop {pc}
// end of function sub_8018094

.thumb
sub_80180A8:
    push {r7,lr}
    ldrh r1, [r5,#0x30]
    lsl r1, r1, #0x10
    ldr r2, [r5,#0x38]
    ldrh r3, [r5,#0x32]
    lsl r3, r3, #0x10
    mov r0, #3
    bl sub_801BDDE
    mov r7, #0x34 
    add r7, r7, r5
    stmia r7!, {r1-r3}
    ldrb r0, [r5,#0x19]
    sub r0, #1
    strb r0, [r5,#0x19]
    bne locret_80180EA
    ldrh r0, [r5,#0x30]
    strh r0, [r5,#0x36]
    ldrh r0, [r5,#0x32]
    strh r0, [r5,#0x3e]
    ldrb r0, [r5,#0x1c]
    ldrb r1, [r5,#0x1d]
    strb r0, [r5,#0x14]
    strb r1, [r5,#0x15]
    bl sub_800F768
    strb r0, [r5,#0x19]
    mov r0, #0xd
    add r0, #0xff
    bl sound_play
    mov r0, #0x10
    strb r0, [r5,#0x18]
locret_80180EA:
    pop {r7,pc}
// end of function sub_80180A8

.thumb
sub_80180EC:
    push {r4,r6,r7,lr}
    mov r7, #0x34 
    add r7, r7, r5
    ldmia r7!, {r0-r4,r6}
    add r0, r0, r3
    add r1, r1, r4
    sub r2, r2, r6
    mov r7, #0x34 
    add r7, r7, r5
    stmia r7!, {r0-r2}
    ldrb r0, [r5,#0x19]
    sub r0, #1
    strb r0, [r5,#0x19]
    bne locret_8018132
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    strb r0, [r5,#0x12]
    strb r1, [r5,#0x13]
    bl sub_800E29C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldrb r2, [r5,#0xe]
    mov r3, #0
    ldr r4, [pc, #0x8018134-0x801811c-4] // =0x6050001
    ldr r6, [r5,#0x2c]
    mov r7, #3
    bl sub_80C53A6
    mov r0, #0
    strh r0, [r5,#0x24]
    mov r0, #2
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_8018132:
    pop {r4,r6,r7,pc}
dword_8018134:    .word 0x6050001
// end of function sub_80180EC

locret_8018138:
    mov pc, lr
loc_801813A:
    push {lr}
    ldr r1, [pc, #0x8018148-0x801813c-4] // =off_801814C
    ldrb r0, [r5,#0x18]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_8018148:    .word off_801814C
off_801814C:    .word sub_8018154+1
    .word sub_8018186+1
.thumb
sub_8018154:
    push {lr}
    bl sub_801A180
    ldr r1, [pc, #0x80182a0-0x801815a-2] // =0x10000000
    ldr r2, [pc, #0x80182a4-0x801815c-4] // =0x1000
    tst r0, r2
    bne loc_8018164
    ldr r1, [pc, #0x80182a8-0x8018162-2] // =0x20000000
loc_8018164:
    add r0, r1, #0
    bl object_setFlag
    ldr r0, [pc, #0x80182ac-0x801816a-2] // =0x3000
    bl sub_801A176
    mov r0, #0x3c 
    strb r0, [r5,#0x19]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
// end of function sub_8018154

    bl sub_801A074
    mov r0, #4
    strb r0, [r5,#0x18]
    pop {pc}
.thumb
sub_8018186:
    push {r4,lr}
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    ldrb r0, [r5,#0x19]
    lsr r0, r0, #2
    bcs loc_80181AA
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x42 
    bl sub_80E05F6
loc_80181AA:
    ldrb r0, [r5,#0x19]
    sub r0, #1
    strb r0, [r5,#0x19]
    bne locret_80181F4
    bl sub_800F806
    mov r4, #1
    lsl r4, r4, #8
    add r4, r4, r0
    lsl r4, r4, #8
    bl sub_800F656
    add r0, r5, #0
    bl sub_80E544C
    bl object_getFlag
    ldr r1, [pc, #0x80182a0-0x80181cc-4] // =0x10000000
    tst r0, r1
    beq loc_80181E2
    add r4, #3
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldrb r2, [r5,#0x16]
    ldr r6, [r5,#0x2c]
    bl sub_80CFBC4
    b loc_80181F0
loc_80181E2:
    mov r4, #1
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldrb r2, [r5,#0x16]
    ldr r6, [r5,#0x2c]
    bl sub_80D99EC
loc_80181F0:
    mov r0, #8
    str r0, [r5,#8]
locret_80181F4:
    pop {r4,pc}
// end of function sub_8018186

.thumb
sub_80181F6:
    push {lr}
    bl battle_isTimeStop
    bne loc_8018206
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
loc_8018206:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#0xd]
    ldrb r1, [r5,#0x16]
    eor r0, r1
    beq locret_801823A
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103BC
    tst r0, r0
    beq locret_801823A
    push {r5}
    add r5, r0, #0
    bl object_getFlag
    ldr r1, [pc, #0x80182b0-0x8018228-4] // =0x2000
    tst r0, r1
    pop {r5}
    beq locret_801823A
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    b locret_801823A
locret_801823A:
    pop {pc}
// end of function sub_80181F6

.thumb
sub_801823C:
    push {lr}
    bl sub_80181F6
    ldrb r0, [r5,#0x18]
    tst r0, r0
    bne loc_8018258
    ldrh r0, [r5,#0x36]
    strh r0, [r5,#0x30]
    ldrh r0, [r5,#0x3e]
    strh r0, [r5,#0x32]
    mov r0, #0
    strb r0, [r5,#0x19]
    mov r0, #4
    strb r0, [r5,#0x18]
loc_8018258:
    ldr r0, [r5,#0x54]
    mov r1, #0x80
    ldrh r1, [r0,r1]
    tst r1, r1
    beq loc_8018266
    mov r0, #0x1e
    strb r0, [r5,#0x19]
loc_8018266:
    ldrb r0, [r5,#0x19]
    tst r0, r0
    beq loc_8018288
    sub r0, #1
    strb r0, [r5,#0x19]
    ldrh r1, [r5,#0x30]
    lsl r1, r1, #0x10
    ldr r2, [r5,#0x38]
    ldrh r3, [r5,#0x32]
    lsl r3, r3, #0x10
    mov r0, #3
    bl sub_801BDDE
    mov r0, #0x34 
    add r0, r0, r5
    stmia r0!, {r1-r3}
    b locret_8018290
loc_8018288:
    ldrh r0, [r5,#0x30]
    strh r0, [r5,#0x36]
    ldrh r0, [r5,#0x32]
    strh r0, [r5,#0x3e]
locret_8018290:
    pop {pc}
    .balign 4, 0x00
off_8018294:    .word 0x400
off_8018298:    .word 0xC00
off_801829C:    .word LCDControl
dword_80182A0:    .word 0x10000000
off_80182A4:    .word 0x1000
dword_80182A8:    .word 0x20000000
off_80182AC:    .word 0x3000
off_80182B0:    .word 0x2000
// end of function sub_801823C

.thumb
sub_80182B4:
    mov r1, #3
    mul r1, r0
    ldr r0, [pc, #0x80182c0-0x80182b8-4] // =dword_80182C4
    add r0, r0, r1
    mov pc, lr
    .byte 0, 0
off_80182C0:    .word dword_80182C4
dword_80182C4:    .word 0x0
    .word 0x10100, 0x1000201, 0x4010003, 0x50100, 0x2000001
    .word 0x2020001, 0x30200, 0x2000402, 0x20005, 0x10300
    .word 0x3000203, 0x4030003, 0x50300, 0x4000003, 0x2040001
    .word 0x30400, 0x4000404, 0x40005, 0x10500, 0x5000205
    .word 0x4050003, 0x50500, 0x6000005, 0x2060001, 0x30600
    .word 0x6000406, 0x60005, 0x10700, 0x7000207, 0x4070003
    .word 0x50700, 0x8000007, 0x2080001, 0x30800, 0x8000408
    .word 0x80005, 0x10900, 0x9000209, 0x4090003, 0x50900
    .word 0xA000009, 0x20A0001, 0x30A00, 0xA00040A, 0xA0005
    .word 0x10B00, 0xB00020B, 0x40B0003, 0x50B00, 0xC00000B
    .word 0x20C0001, 0x30C00, 0xC00040C, 0xC0005, 0x10D00
    .word 0xD00020D, 0x40D0003, 0x50D00, 0xE00000D, 0x20E0001
    .word 0x30E00, 0xE00040E, 0xE0005, 0x10F00, 0xF00020F
    .word 0x40F0003, 0x50F00, 0x1000000F, 0x2100001, 0x31000
    .word 0x10000410, 0x100005, 0x11100, 0x11000211, 0x4110003
    .word 0x51100, 0x12000011, 0x2120001, 0x31200, 0x12000412
    .word 0x120005, 0x11300, 0x13000213, 0x4130003, 0x51300
    .word 0x14000013, 0x2140001, 0x31400, 0x14000414, 0x140005
    .word 0x11500, 0x15000215, 0x4150003, 0x51500, 0x16000015
    .word 0x2160001, 0x31600, 0x16000416, 0x160005, 0x11700
    .word 0x17000217, 0x4170003, 0x51700, 0x18000017, 0x2180001
    .word 0x31800, 0x18000418, 0x180005, 0x11900, 0x19000219
    .word 0x4190003, 0x51900, 0x1A000019, 0x21A0001, 0x31A00
    .word 0x1A00041A, 0x1A0005, 0x11B00, 0x1B00021B, 0x41B0003
    .word 0x51B00, 0x1C00001B, 0x21C0001, 0x31C00, 0x1C00041C
    .word 0x1C0005, 0x11D00, 0x1D00021D, 0x41D0003, 0x51D00
    .word 0x1E00001D, 0x21E0001, 0x31E00, 0x1E00041E, 0x1E0005
    .word 0x11F00, 0x1F00021F, 0x41F0003, 0x51F00, 0x100001F
    .word 0x2010001, 0x30100, 0x1000401, 0x10005, 0x10100
    .word 0x1000201, 0x4010003, 0x50100, 0x1000001, 0x2010001
    .word 0x30100, 0x1000401, 0x10005, 0x10100, 0x1000201
    .word 0x4010003, 0x50100, 0x1000001, 0x2010001, 0x30100
    .word 0x1000401, 0x10005, 0x10100, 0x1000201, 0x4010003
    .word 0x50100, 0x1000001, 0x2010001, 0x30100, 0x1000401
    .word 0x10005, 0x10100, 0x1000201, 0x4010003, 0x50100
    .word 0x1000001, 0x2010001, 0x30100, 0x1000401, 0x10005
    .word 0x10100, 0x1000201, 0x4010003, 0x50100, 0x1000001
    .word 0x2010001, 0x30100, 0x1000401, 0x10005, 0x100
    .word 0x1000001, 0x100, 0x1010101, 0x1010201, 0x4010103
    .word 0x1050101, 0x2010001, 0x2020101, 0x1030201, 0x2010402
    .word 0x20105, 0x1010301, 0x3010203, 0x4030103, 0x50301
    .word 0x4010003, 0x2040101, 0x1030401, 0x4010404, 0x40105
    .word 0x1010501, 0x5010205, 0x4050103, 0x1050501, 0x6010005
    .word 0x2060101, 0x1030601, 0x6010406, 0x60105, 0x1010701
    .word 0x7010207, 0x4070103, 0x1050701, 0x8010007, 0x2080101
    .word 0x1030801, 0x8010408, 0x80105, 0x1010901, 0x9010209
    .word 0x4090103, 0x1050901, 0xA010009, 0x20A0101, 0x1030A01
    .word 0xA01040A, 0xA0105, 0x1010B01, 0xB01020B, 0x40B0103
    .word 0x1050B01, 0xC01000B, 0x20C0101, 0x1030C01, 0xC01040C
    .word 0xC0105, 0x1010D01, 0xD01020D, 0x40D0103, 0x1050D01
    .word 0xE01000D, 0x20E0101, 0x1030E01, 0xE01040E, 0xE0105
    .word 0x1010F01, 0xF01020F, 0x40F0103, 0x1050F01, 0x1001000F
    .word 0x2100101, 0x1031001, 0x10010410, 0x100105, 0x1011101
    .word 0x11010211, 0x4110103, 0x1051101, 0x12010011, 0x2120101
    .word 0x1031201, 0x12010412, 0x120105, 0x1011301, 0x13010213
    .word 0x4130103, 0x1051301, 0x14010013, 0x2140101, 0x1031401
    .word 0x14010414, 0x140105, 0x1011501, 0x15010215, 0x4150103
    .word 0x1051501, 0x16010015, 0x2160101, 0x1031601, 0x16010416
    .word 0x160105, 0x1011701, 0x17010217, 0x4170103, 0x1051701
    .word 0x18010017, 0x2180101, 0x1031801, 0x18010418, 0x180105
    .word 0x1000001, 0x10000, 0x100, 0x1000001, 0x10000
    .word 0x100, 0x1000001, 0x10000, 0x100, 0x1000001
    .word 0x10000, 0x200, 0x2000102, 0x3020002, 0x40200
    .word 0x2000502, 0x7020006, 0x80200, 0x2000902, 0xB02000A
    .word 0x190200, 0x2001A02, 0x1C02001B, 0x1D0200, 0x2001E02
    .word 0x2002001F, 0x210200, 0x2002202, 0x24020023, 0x250200
    .word 0x2002602, 0x28020027, 0x290200, 0x2002A02, 0x2C02002B
    .word 0x2D0200, 0x2002E02, 0x3002002F
// end of function sub_80182B4

.thumb
sub_8018810:
    push {r4-r6,lr}
    cmp r0, #0xcd
    blt loc_801881A
    cmp r0, #0xff
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
    bl object_getFlipDirection
    add r2, r0, #0
    pop {r0,r1}
    mul r0, r2
    pop {r4-r6,pc}
loc_801883C:
    mov r0, #0
    mov r1, #7
    pop {r4-r6,pc}
// end of function sub_8018810

.thumb
sub_8018842:
    push {r4,lr}
    add r4, r2, r2
    bl sub_8018886
    add r4, r4, r0
    mov r0, #0
    ldrsb r0, [r4,r0]
    mov r1, #1
    ldrsb r1, [r4,r1]
    pop {r4,pc}
// end of function sub_8018842

.thumb
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
    bl sub_800E2CA
    add r2, r0, #0
    pop {r0,r1}
    mul r0, r2
    pop {pc}
// end of function sub_8018856

.thumb
sub_8018886:
    cmp r0, #0
    bne loc_801888E
    ldr r2, [pc, #0x80188ac-0x801888a-2] // =dword_80188B0
    ldrb r1, [r2,r1]
loc_801888E:
    ldr r2, [pc, #0x801889c-0x801888e-2] // =off_80188A0
    ldr r0, [r2,r0]
    mov r3, #0x44 
    mul r1, r3
    add r0, r0, r1
    mov pc, lr
    .balign 4, 0x00
off_801889C:    .word off_80188A0
off_80188A0:    .word dword_80188C0
    .word dword_801898C
    .word dword_80191C8
off_80188AC:    .word dword_80188B0
dword_80188B0:    .word 0x1010100, 0x2020101, 0x1020202, 0x2
dword_80188C0:    .word 0x20002, 0x30080002, 0x30083008, 0x18100010, 0x18181810
    .word 0x18121812, 0x18181812, 0x18181917, 0xB051A28, 0x1A28191F
    .word 0x10021914, 0x19181818, 0x19161718, 0x1202191C, 0xFC781058
    .word 0x104010F8, 0x2, 0x60006, 0x2C100006, 0x2C102C10
    .word 0x111B0018, 0x12261118, 0x121F121F, 0x1123111D, 0x11231323
    .word 0xA081433, 0x13301429, 0x10061320, 0x12201223, 0x13201020
    .word 0x10081124, 0xF67C0868, 0xE5018F8, 0x4000006, 0x18041004
    .word 0x40091004, 0x40094009, 0x25100010, 0x26182610, 0x26112611
    .word 0x26162612, 0x25182716, 0x17092728, 0x2728281D, 0x20042712
    .word 0x27162616, 0x27142718, 0x20042619, 0x8721C58, 0x22411CF8
    .word 0x8040A04
dword_801898C:    .word 0x0, 0x0, 0x0, 0x0
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
    .word start_
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
dword_80191C8:    .word 0x0, 0x0, 0x0, 0x0
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
    .word loc_8040000
    .word 0x360A0000, 0x2E0A320A, 0x150D0018, 0x1416150D, 0x14121410
    .word 0x15161412, 0x14141516, 0x8061622, 0x1522151F, 0x16041512
    .word 0x15161416, 0x15161410, 0x8061416, 0xF8780B58, 0x10401604
    .word 0x8080000, 0x1E001802, 0x4E021802, 0x4E064802, 0x33100014
    .word 0x32143210, 0x3210320E, 0x3213320E, 0x31153316, 0x20053328
    .word 0x33203020, 0x28003310, 0x32133216, 0x33133010, 0x20053216
    .word 0x10781C58, 0x284025F8, 0x18040802, 0x16FE04FC, 0x400004FC
    .word 0x3A004000, 0x210C0016, 0x2010210C, 0x20102008, 0x20102010
    .word 0x1F0E2110, 0x10FC2128, 0x201E211E, 0x16FE210E, 0x20102010
    .word 0x210E2010, 0x10FC1F12, 0x781058, 0x164016FE, 0x8FC
    .word 0x6020602, 0x3F000602, 0x3D083C00, 0x1D17001D, 0x1D1E1810
    .word 0x1D191D18, 0x1C1D1D1B, 0x1C1B1D20, 0x19001F42, 0x1F2B1E27
    .word 0x19001E1B, 0x1E201D20, 0x1F1D1C1C, 0x19001E1E, 0xFF76146A
    .word 0x184E1900, 0x400, 0x40004, 0x320A0004, 0x320A320A
    .word 0x18100010, 0x191B1810, 0x1A141A14, 0x18181914, 0x19181B18
    .word 0xC061C2B, 0x1B281B1E, 0x14021B14, 0x1B181A18, 0x1B181718
    .word 0x1604191B, 0xFC72085A, 0x164414F8, 0x4, 0x0
    .word 0x48080000, 0x48084808, 0x0
    .word 0x18181810, 0x18121812, 0x18181812, 0x18181818, 0x20040000
    .word 0x0
    .word 0x10000000, 0x1A181719, 0x1A181718, 0x1200191C, 0x14281918
    .word 0x14002300, 0x10080000, 0x0
    .word 0x40040000, 0x3D0A3D08, 0x10, 0x18181810, 0x18121812
    .word 0x18181812, 0x18181818, 0x100A0000, 0x0
    .word 0x10000000, 0x1A181719, 0x1A181718, 0x1200191C, 0x14281918
    .word 0x0
    .word 0x0

