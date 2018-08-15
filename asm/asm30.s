.include "asm30.inc"

.func
.thumb_func
sub_80AED50:
    push {lr}
    bl sub_80182B4
    ldrb r1, [r0,#1]
    ldrb r2, [r0,#2]
    ldrb r3, [r0]
    ldr r0, off_80AED70 // =off_80AED74 
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    mov r1, #0x20 
    mul r3, r1
    add r0, r0, r3
    pop {pc}
    .byte 0, 0
off_80AED70:    .word off_80AED74
    // <endpool>
off_80AED74:    .word off_80AED80
    .word off_80AEE0C
    .word off_80AEE0C
.endfunc // sub_80AED50

off_80AED80:    .word dword_8109AA4
    .word dword_8109BFC
    .word dword_810A2EC
    .word dword_810A86C
    .word dword_810AE70
    .word unk_810B7B8
    .word dword_810BEF8
    .word dword_810C388
    .word dword_810C8F8
    .word dword_810D034
    .word dword_810D198
    .word dword_810D724
    .word dword_810DD3C
    .word dword_810E414
    .word dword_810ECAC
    .word dword_810F22C
    .word dword_810F510
    .word dword_81102BC
    .word unk_8110654
    .word dword_811115C
    .word dword_8111938
    .word dword_8112024
    .word dword_8112708
    .word dword_8112BC0
    .word dword_8113268
    .word dword_8113780
    .word dword_81143F4
    .word dword_81150D8
    .word dword_8115730
    .word dword_8115C18
    .word dword_8109AA4
    .word dword_8109AA4
    .word dword_8109AA4
    .word dword_8109AA4
    .word dword_8109AA4
off_80AEE0C:    .word dword_80F28F0
    .word dword_80F2A54
    .word dword_80F390C
    .word dword_80F47D4
    .word dword_80F5838
    .word dword_80F6394
    .word dword_80F757C
    .word dword_80F8334
    .word dword_80F8EEC
    .word dword_80F9C80
    .word dword_80FACDC
    .word dword_80FB8E0
    .word dword_80FD044
    .word dword_80FDCF0
    .word dword_80FE7D0
    .word 0x80FF7F0, 0x81001E8, 0x80F28F0, 0x8101268, 0x8101880
    .word 0x8103BB4, 0x81053BC
    .word dword_80F28F0
    .word 0x8106828, 0x8107B50
battleSettingsList0:    .word 0x1226400, 0x380008, 0x86, 0x80AFF44, 0x166400, 0x3800FF
    .word 0x189D7, 0x80AFF4D, 0x166400, 0x3800FF, 0x189D7, 0x80AFF5E
    .word 0x166400, 0x3800FF, 0x189D7, 0x80AFF67, 0x166400, 0x3800FF
    .word 0x189D7, 0x80AFF70, 0x166400, 0x3800FF, 0x189D7, 0x80AFF79
    .word 0x166400, 0x3800FF, 0x189D7, 0x80AFF82, 0x166400, 0x3800FF
    .word 0x189D7, 0x80AFF8B, 0x166400, 0x3800FF, 0x4198D7, 0x80AFF94
    .word 0x166400, 0x3800FF, 0x4198D7, 0x80AFF9D, 0x166400, 0x3800FF
    .word 0x4198D7, 0x80AFFA6, 0x166400, 0x3800FF, 0x4198D7, 0x80AFFAF
    .word 0x166400, 0x3800FF, 0x4198D7, 0x80AFFB8, 0x166400, 0x3800FF
    .word 0x4198D7, 0x80AFFC1, 0x166400, 0x3800FF, 0x4198D7, 0x80AFFCA
    .word 0x166400, 0x3800FF, 0x4198D7, 0x80AFFD3, 0x166400, 0x3800FF
    .word 0x4198D7, 0x80AFFDC, 0x166400, 0x3800FF, 0x4198D7, 0x80AFFE5
    .word 0x166400, 0x3800FF, 0x4198D7, 0x80AFFEE, 0x166400, 0x3800FF
    .word 0x4198D7, 0x80AFFF7, 0x166400, 0x3800FF, 0x4198D7, 0x80B0000
    .word 0x166400, 0x3800FF, 0x4198D7, 0x80B0009, 0x166400, 0x3800FF
    .word 0x4198D7, 0x80B0012, 0x166400, 0x3800FF, 0x4198D7, 0x80B001B
    .word 0x166400
    .word 0x3800FF
    .word 0x4198D7, 0x80B0024, 0x166400, 0x3800FF, 0x4198D7
    .word 0x80B002D, 0x6156401, 0x3801FF, 0x80A0, 0x80B0036
    .word 0x6156402, 0x3802FF, 0x80A0, 0x80B003F, 0x6166403
    .word 0x3803FF, 0x80A0, 0x80B0048, 0x6156440, 0x3801FF
    .word 0x80A0, 0x80B0051, 0x6156443, 0x3802FF, 0x80A0
    .word 0x80B005A, 0x6156441, 0x3803FF, 0x80A0, 0x80B0063
    .word 0x615643F, 0x3804FF, 0x80A0, 0x80B006C, 0x6166444
    .word 0x3805FF, 0x80A0, 0x80B0075, 0x6156435, 0x3801FF
    .word 0x80A0, 0x80B007E, 0x615643B, 0x3802FF, 0x80A0
    .word 0x80B0087, 0x6156436, 0x3803FF, 0x80A0, 0x80B0098
    .word 0x61564A7, 0x3804FF, 0x80A0, 0x80B00A9, 0x61664A3
    .word 0x3805FF, 0x80A0, 0x80B00B2, 0x6156400, 0x3801FF
    .word 0x80A0, 0x80B00BB, 0x61564D4, 0x3802FF, 0x80A0
    .word 0x80B00C4, 0x61564D1, 0x3803FF, 0x80A0, 0x80B00CD
    .word 0x61564D2, 0x3804FF, 0x80A0, 0x80B00D6, 0x61564CB
    .word 0x3805FF, 0x80A0, 0x80B00DF, 0x61564CA, 0x3806FF
    .word 0x80A0, 0x80B00E8, 0x6156492, 0x3807FF, 0x80A0
    .word 0x80B00F1, 0x6156493, 0x3808FF, 0x80A0, 0x80B00FA
    .word 0x6156495, 0x3809FF, 0x80A0, 0x80B0103, 0x6166497
    .word 0x380AFF, 0x80A0, 0x80B010C, 0x6156400, 0x3801FF
    .word 0x80A0, 0x80B0115, 0x6156415, 0x3802FF, 0x80A0
    .word 0x80B011E, 0x6156402, 0x3803FF, 0x80A0, 0x80B0127
    .word 0x6156403, 0x3804FF, 0x80A0, 0x80B0130, 0x615640C
    .word 0x3805FF, 0x80A0, 0x80B0139, 0x6156416, 0x3806FF
    .word 0x80A0, 0x80B0142, 0x615641B, 0x3807FF, 0x80A0
    .word 0x80B014B, 0x6156421, 0x3808FF, 0x80A0, 0x80B0154
    .word 0x6156422, 0x3809FF, 0x80A0, 0x80B015D, 0x6166424
    .word 0x380AFF, 0x80A0, 0x80B0166, 0x2156400, 0x3800FF
    .word 0x438004, 0x80B016F, 0x3156400, 0x3800FF, 0x438004
    .word 0x80B017C, 0x4156400, 0x3800FF, 0x438004, 0x80B018D
    .word 0x5156400, 0x3800FF, 0x438004, 0x80B019E, 0x8156400
    .word 0x3800FF, 0x438004, 0x80B01AF, 0x156400, 0x3800FF
    .word 0x89D0, 0x80B01C0, 0x166400, 0x3800FF, 0x1C9C3
    .word 0x80B01CD, 0x156400, 0x3800FF, 0x89C0, 0x80B01DE
    .word 0x166400, 0x3800FF, 0x1C9C3, 0x80B01EF, 0x156400
    .word 0x3800FF, 0x1C9C1, 0x80B01F8, 0x166400, 0x3800FF
    .word 0x1C9C3, 0x80B0209, 0x156400, 0x3800FF, 0x4188D0
    .word 0x80B0212, 0x166400, 0x3800FF, 0x4188C3, 0x80B0223
    .word 0x166400, 0x3800FF, 0x4188C3, 0x80B022C, 0x150000
    .word 0x3800FF, 0x88B0, 0x80B0235, 0x150000, 0x3800FF
    .word 0x88B0, 0x80B0246, 0x150000, 0x3800FF, 0x88B0
    .word 0x80B0257, 0x150000, 0x3800FF, 0x88B0, 0x80B0268
    .word 0x156400, 0x3801FF, 0x89C0, 0x80B0279, 0x156400
    .word 0x3802FF, 0x89C0, 0x80B028A, 0x156400, 0x3803FF
    .word 0x89C0, 0x80B029B, 0x156400, 0x3800FF, 0x89C0
    .word 0x80B02AC, 0x166400, 0x3800FF, 0x1C9C3, 0x80B02BD
    .word 0x166400, 0x3800FF, 0x4188C3, 0x80B02C6, 0x166400
    .word 0x3800FF, 0x4188C3, 0x80B02CF, 0x156400, 0x3801FF
    .word 0x8088C0, 0x80B02D8, 0x156400, 0x3802FF, 0x8088C0
    .word 0x80B02E5, 0x156400, 0x3803FF, 0x88D0, 0x80B02F2
    .word 0x156400, 0x3801FF, 0x8088C0, 0x80B02FF, 0x156400
    .word 0x3802FF, 0x8088C0, 0x80B030C, 0x156400, 0x3803FF
    .word 0x8088C0, 0x80B0319, 0x156400, 0x3804FF, 0x8088C0
    .word 0x80B0326, 0x156400, 0x3805FF, 0x88D0, 0x80B0333
    .word 0x156400, 0x3801FF, 0x8088C0, 0x80B0340, 0x156400
    .word 0x3802FF, 0x8088C0, 0x80B034D, 0x156400, 0x3803FF
    .word 0x8088C0, 0x80B035A, 0x156400, 0x3804FF, 0x8088C0
    .word 0x80B0367, 0x156400, 0x3805FF, 0x88D0, 0x80B0374
    .word 0x156400, 0x3801FF, 0x8088C0, 0x80B0381, 0x156400
    .word 0x3802FF, 0x8088C0, 0x80B038E, 0x156400, 0x3803FF
    .word 0x8088C0, 0x80B039B, 0x156400, 0x3804FF, 0x8088C0
    .word 0x80B03A8, 0x156400, 0x3805FF, 0x8088C0, 0x80B03B5
    .word 0x156400, 0x3806FF, 0x8088C0, 0x80B03C2, 0x156400
    .word 0x3807FF, 0x8088C0, 0x80B03CF, 0x156400, 0x3808FF
    .word 0x8088C0, 0x80B03DC, 0x156400, 0x3809FF, 0x8088C0
    .word 0x80B03E9, 0x156400, 0x380AFF, 0x88D0, 0x80B03F6
    .word 0x156400, 0x3800FF, 0x89C0, 0x80B0403, 0x156400
    .word 0x3800FF, 0x89C0, 0x80B0410, 0x156400, 0x3800FF
    .word 0x89C0, 0x80B041D, 0x156400, 0x3800FF, 0x89C0
    .word 0x80B042E, 0x156400, 0x3800FF, 0x89C0, 0x80B043F
    .word 0x166400, 0x3800FF, 0x1C9C3, 0x80B0450, 0x166400
    .word 0x3800FF, 0x4188C3, 0x80B0459, 0x166400, 0x3800FF
    .word 0x4188C3, 0x80B0462, 0x7150000, 0xFF, 0x88B0
    .word 0x80B046B, 0x7150000, 0xFF, 0x88B0, 0x80B0474
    .word 0x7150000, 0xFF, 0x88B0, 0x80B047D, 0x7150000
    .word 0xFF, 0x88B0, 0x80B0486, 0x166400, 0x3800FF
    .word 0x1C9C1, 0x80B048F, 0x166400, 0x3800FF, 0x1C9C1
    .word 0x80B04A0, 0x166400, 0x3800FF, 0x1C9C1, 0x80B04A9
    .word 0x166400, 0x3800FF, 0x1C9C1, 0x80B04B2, 0x166400
    .word 0x3800FF, 0x1C9C3, 0x80B04BB, 0x166400, 0x3800FF
    .word 0x4188C3, 0x80B04C4, 0x166400, 0x3800FF, 0x4188C3
    .word 0x80B04CD, 0x9156400, 0xFF, 0x88B0, 0x80B04D6
    .word 0x9156400, 0xFF, 0x88B0, 0x80B04DF, 0x9156400
    .word 0xFF, 0x88B0, 0x80B04E8, 0x166400, 0x3800FF
    .word 0x1C9C1, 0x80B04F1, 0x166400, 0x3800FF, 0x1C9C1
    .word 0x80B04FA, 0x166400, 0x3800FF, 0x1C9C1, 0x80B0503
    .word 0x1764EC, 0x3800FF, 0x1C9C1, 0x80B050C, 0x1764EC
    .word 0x3800FF, 0x1C9C1, 0x80B0515, 0x166400, 0x3800FF
    .word 0x4188C3, 0x80B051E, 0x166400, 0x3800FF, 0x4188C3
    .word 0x80B0527, 0x166400, 0x3800FF, 0x1C9C1, 0x80B0530
    .word 0x166400, 0x3800FF, 0x1C9C1, 0x80B0539, 0xA166400
    .word 0x3800FF, 0x1C9C1, 0x80B0542, 0xB166400, 0x3800FF
    .word 0x1C9C1, 0x80B054B, 0x166400, 0x3800FF, 0x1C9C1
    .word 0x80B0554, 0x166400, 0x3800FF, 0x1C9C1, 0x80B055D
    .word 0x166400, 0x3800FF, 0x1C9C3, 0x80B0566, 0x166400
    .word 0x3800FF, 0x1C9C3, 0x80B0577, 0x166400, 0x3800FF
    .word 0x1C9C3, 0x80B0580, 0x166400, 0x3800FF, 0x1C9C3
    .word 0x80B0589, 0x166400, 0x3800FF, 0x1C9C3, 0x80B0592
    .word 0x166400, 0x3800FF, 0x1C9C3, 0x80B059B, 0x156400
    .word 0x3800FF, 0x4189D0, 0x80B05A4, 0x156400, 0x3800FF
    .word 0x4189D0, 0x80B05B5, 0x156400, 0x3800FF, 0x4189D0
    .word 0x80B05C6, 0x156400, 0x3800FF, 0x4189D0, 0x80B05D7
    .word 0x156400, 0x3800FF
    .word 0x4189D0, 0x80B05E8, 0x156400, 0x3800FF, 0x4189D0
    .word 0x80B05F9, 0x156400, 0x3800FF, 0x4189D0, 0x80B060A
    .word 0x156400, 0x3800FF, 0x4189D0, 0x80B061B, 0x156400
    .word 0x3800FF, 0x4189D0, 0x80B062C, 0x156400, 0x3800FF
    .word 0x4189D0, 0x80B063D, 0x156400, 0x3800FF, 0x4189D0
    .word 0x80B064E, 0x156400, 0x3800FF, 0x4189D0, 0x80B065F
    .word 0x156400, 0x3800FF, 0x4189D0, 0x80B0670, 0x156400
    .word 0x3800FF, 0x4189D0, 0x80B0681, 0x156400, 0x3800FF
    .word 0x4189D0, 0x80B0692, 0x156400, 0x3800FF, 0x4189D0
    .word 0x80B06A3, 0x156400, 0x3800FF, 0x4189D0, 0x80B06B4
    .word 0x156400, 0x3800FF, 0x4189D0, 0x80B06C5, 0x156400
    .word 0x3800FF, 0x4189D0, 0x80B06D6, 0x156400, 0x3800FF
    .word 0x4189D0, 0x80B06E7, 0x156400, 0x3800FF, 0x4189D0
    .word 0x80B06F8, 0x156400, 0x3800FF, 0x4189D0, 0x80B0709
    .word 0x156400, 0x3800FF, 0x4189D0, 0x80B071A, 0x156400
    .word 0x3800FF, 0x4189D0, 0x80B072B, 0x156400, 0x3800FF
    .word 0x4189D0, 0x80B073C, 0x156400, 0x3800FF, 0x4189D0
    .word 0x80B074D, 0x156400, 0x3800FF, 0x4189D0, 0x80B075E
    .word 0x156400, 0x3800FF, 0x89C0, 0x80B076F, 0x156400
    .word 0x3800FF, 0x89C0, 0x80B0780, 0x156400, 0x3800FF
    .word 0x89C0, 0x80B0791, 0x156400, 0x3800FF, 0x89C0
    .word 0x80B07A2, 0x156400, 0x3800FF, 0x89C0, 0x80B07B3
    .word 0x156400, 0x3800FF, 0x89C0, 0x80B07C4, 0x156400
    .word 0x3800FF, 0x89C0, 0x80B07D5, 0x156400, 0x3800FF
    .word 0x89C0, 0x80B07E6, 0x156400, 0x3800FF, 0x89C0
    .word 0x80B07F7, 0x156400, 0x3800FF, 0x89C0, 0x80B0808
    .word 0x156400, 0x3800FF, 0x89C0, 0x80B0819, 0x156400
    .word 0x3800FF, 0x89C0, 0x80B082A, 0x156400, 0x3800FF
    .word 0x89C0, 0x80B083B, 0x156400, 0x3800FF, 0x89C0
    .word 0x80B084C, 0x156400, 0x3800FF, 0x8088C0, 0x80B085D
    .word 0x156415, 0x3800FF, 0x8088C0, 0x80B086E, 0x156400
    .word 0x3800FF, 0x8088C0, 0x80B087F, 0x156400, 0x3800FF
    .word 0x49C0, 0x80B0890, 0x156400, 0x3800FF, 0x49C0
    .word 0x80B08A1, 0x156400, 0x3800FF, 0x49C0, 0x80B08B2
    .word 0x156400, 0x3800FF, 0x89C0, 0x80B08C3, 0x156400
    .word 0x3800FF, 0x89C0, 0x80B08D4, 0x156400, 0x3800FF
    .word 0x89C0, 0x80B08E5, 0x156400, 0x3800FF, 0x89C0
    .word 0x80B08F6, 0x156400, 0x3800FF, 0x89C0, 0x80B0907
    .word 0x156400, 0x3800FF, 0x89C0, 0x80B0918, 0x156400
    .word 0x3800FF, 0x89C0, 0x80B0929, 0x156400, 0x3800FF
    .word 0x89C0, 0x80B093A, 0x156400, 0x3800FF, 0x89C0
    .word 0x80B094B, 0x156400, 0x3800FF, 0x89D0, 0x80B095C
    .word 0x156400, 0x3800FF, 0x88D0, 0x80B096D, 0x156400
    .word 0x3800FF, 0x89C0, 0x80B097E, 0x156400, 0x3800FF
    .word 0x88D0, 0x80B098F, 0x156400, 0x3800FF, 0x88D0
    .word 0x80B09A0, 0x156400, 0x3800FF, 0x88D0, 0x80B09A9
    .word 0x156400, 0x3800FF, 0x88D0, 0x80B09B2, 0x156400
    .word 0x3800FF, 0x88D0, 0x80B09BB, 0x156400, 0x3801FF
    .word 0x89C0, 0x80B09C4, 0x156400, 0x3802FF, 0x89C0
    .word 0x80B09D5, 0x156400, 0x3803FF, 0x89C0, 0x80B09E6
    .word 0x156400, 0x3804FF, 0x89C0, 0x80B09F7, 0x156400
    .word 0x3805FF, 0x89C0, 0x80B0A08, 0x156400, 0x3806FF
    .word 0x89C0, 0x80B0A19, 0x156400, 0x3807FF, 0x89C0
    .word 0x80B0A2A, 0x156400, 0x3801FF, 0x89C0, 0x80B0A3B
    .word 0x156400, 0x3802FF, 0x89C0, 0x80B0A4C, 0x156400
    .word 0x3800FF, 0x89D0, 0x80B0A5D, 0x156400, 0x3800FF
    .word 0x4189D0, 0x80B0A6E, 0x156400, 0x3800FF, 0x89D0
    .word 0x80B0A7F, 0x156400, 0x3800FF, 0x89D0, 0x80B0A90
    .word 0x156400, 0x3800FF, 0x4189D0, 0x80B0AA1, 0x156400
    .word 0x3800FF, 0x89C0, 0x80B0AB2, 0x156400, 0x3800FF
    .word 0x89C0, 0x80B0AC3, 0x156400, 0x3800FF, 0x89C0
    .word 0x80B0AD4, 0x156400, 0x3800FF, 0x89C0, 0x80B0AE5
    .word 0x150000, 0x3800FF, 0x89C0, 0x80B0AF6, 0x150000
    .word 0x3800FF, 0x89C0, 0x80B0B07, 0x150000, 0x3800FF
    .word 0x89C0, 0x80B0B18, 0x156400, 0x3800FF, 0x89C0
    .word 0x80B0B29, 0x156400, 0x3800FF, 0x89C0, 0x80B0B3A
    .word 0x156400, 0x3800FF, 0x89C0, 0x80B0B4B, 0x156400
    .word 0x3800FF, 0x89C0, 0x80B0B5C, 0x156400, 0x3800FF
    .word 0x89C0, 0x80B0B6D, 0x156400, 0x3800FF, 0x89C0
    .word 0x80B0B7E, 0x156400, 0x3800FF, 0x89C0, 0x80B0B8F
    .word 0x156400, 0x3800FF, 0x89C0, 0x80B0BA0, 0x156400
    .word 0x3800FF, 0x89C0, 0x80B0BB1, 0x156400, 0x3800FF
    .word 0x89C0, 0x80B0BC2, 0x156400, 0x3800FF, 0x89D0
    .word 0x80B0BD3, 0x156400, 0x3801FF, 0x8498C0, 0x80B0BE4
    .word 0x156400, 0x3802FF, 0x8498C0, 0x80B0BF5, 0x156400
    .word 0x3803FF, 0x8498C0, 0x80B0C06, 0x156400, 0x3804FF
    .word 0x8498C0, 0x80B0C17, 0x156400, 0x3805FF, 0x8498C0
    .word 0x80B0C28, 0x156400, 0x3806FF, 0x8498C0, 0x80B0C39
    .word 0x156400, 0x3807FF, 0x8498C0, 0x80B0C4A, 0x156400
    .word 0x3808FF, 0x8498C0, 0x80B0C5B, 0x156400, 0x3809FF
    .word 0x8498C0, 0x80B0C6C, 0x156400, 0x380AFF, 0x8498C0
    .word 0x80B0C7D, 0x156400, 0x380BFF, 0x8498C0, 0x80B0C8E
    .word 0x156400, 0x380CFF, 0x8498C0, 0x80B0C9F, 0x156400
    .word 0x380DFF, 0x8498C0, 0x80B0CB0, 0x156400, 0x380EFF
    .word 0x8498C0, 0x80B0CC1, 0x156400, 0x380FFF, 0x8498C0
    .word 0x80B0CCE, 0x156400, 0x3810FF, 0x8498C0, 0x80B0CDB
    .word 0x156400, 0x3811FF, 0x8498C0, 0x80B0CEC, 0x156400
    .word 0x3812FF, 0x8498C0, 0x80B0CFD, 0x156400, 0x3813FF
    .word 0x8498C0, 0x80B0D0E, 0x156400, 0x3814FF, 0x4188D0
    .word 0x80B0D1F, 0x156400, 0x3801FF, 0x89C0, 0x80B0D30
    .word 0x156400, 0x3802FF, 0x89C0, 0x80B0D41, 0x156400
    .word 0x3803FF, 0x89C0, 0x80B0D52, 0x156400, 0x3804FF
    .word 0x89C0, 0x80B0D63, 0x156400, 0x3805FF, 0x89D0
    .word 0x80B0D74, 0xFF, 0x2200, 0x17F2511, 0x2100F0
    .word 0x44261100, 0x22A001, 0x25A000, 0x2200F000, 0x25110000
    .word 0xF0014A, 0x11000022, 0xF0015025, 0x2200, 0x1562511
    .word 0x2200F0, 0x5C251100, 0x2200F001, 0x25110000, 0xF00168
    .word 0x11000022, 0xF0016225, 0x2200, 0x11F2511, 0x2200F0
    .word 0x20251100, 0x2200F001, 0x25110000, 0xF00121, 0x11000022
    .word 0xF0013125, 0x2200, 0x1322511, 0x2200F0, 0x33251100
    .word 0x2200F001, 0x25110000, 0xF0012B, 0x11000022, 0xF0012C25
    .word 0x2200, 0x12D2511, 0x2200F0, 0x25251100, 0x2200F001
    .word 0x25110000, 0xF00126
    .word 0x11000022, 0xF0012725, 0x2200, 0x1372511, 0x2200F0
    .word 0x38251100, 0x2200F001, 0x25110000, 0xF00139, 0x11000022
    .word 0xF0013D25, 0x2200, 0x13F2511, 0x2200F0, 0x40251100
    .word 0x1511F001, 0x26110001, 0x11F00085, 0x11003D15, 0xF0002B26
    .word 0x11411, 0x3D3611, 0x71411F0, 0x7261100, 0x3411F000
    .word 0x2611001F, 0x11F0004F, 0x11004F15, 0xF0005536, 0x71511
    .word 0x1F2611, 0x4F1611F0, 0x55361100, 0x3511F000, 0x1611009D
    .word 0x11F0007F, 0x11007F14, 0x30007936, 0x30000033, 0xF0000016
    .word 0x731411, 0x733611, 0x2230, 0x2530, 0x733411F0
    .word 0x7F161100, 0x1411F000, 0x2611009D, 0x11F00073, 0x11006725
    .word 0xF0008B36, 0x671411, 0x252611, 0x252411F0, 0x25351100
    .word 0x1611F000, 0x3611008B, 0x11F0008B, 0x11006714, 0xF0006736
    .word 0x253511, 0x252611, 0x8B3411F0, 0x25261100, 0x1511F000
    .word 0x3511008B, 0x11F0008B, 0x11006724, 0xF0008B16, 0x673411
    .word 0x671511, 0x132411F0, 0x97361100, 0x3511F000, 0x16110001
    .word 0x11F000A9, 0x11009125, 0xF0001936, 0x252411, 0x5B3611
    .word 0x672411F0, 0x7F361100, 0x3411F000, 0x2511009D, 0x11F0008B
    .word 0x11004324, 0xF0003D36, 0x6D1411, 0x1F3511, 0x2B2411F0
    .word 0x7361100, 0x3411F000, 0x25110001, 0xF00143, 0x11000022
    .word 0x11000114, 0xF0000135, 0x2200, 0x11511, 0x13511
    .word 0x12611, 0x2200F0, 0x1251100, 0x1161100, 0x1361100
    .word 0x2200F000, 0x25110000, 0x16110002, 0x36110086, 0xF00086
    .word 0x11000022, 0x11000125, 0x11000216, 0xF0000236, 0x2200
    .word 0x3D1511, 0x3D3611, 0x2200F0, 0x43251100, 0x31A001
    .word 0x14A000, 0x2200F000, 0x24110000, 0x15110001, 0x36110002
    .word 0xF00003, 0x11000022, 0xF0014925, 0x2200, 0x31411
    .word 0x1F3511, 0x872611, 0x2200F0, 0x4F251100, 0x2200F001
    .word 0x24110000, 0x15110007, 0x3611004F, 0xF00055, 0x11000022
    .word 0xF0010125, 0x2200, 0x11F2511, 0x2200F0, 0x1141100
    .word 0x49251100, 0x1361100, 0x2200F000, 0x34110000, 0x1511002B
    .word 0x2611002B, 0xF00049, 0x11000022, 0x11004914, 0x11004934
    .word 0xF0003D36, 0x2200, 0x491411, 0x492511, 0x493611
    .word 0x2200F0, 0x1241100, 0x7151100, 0x86361100, 0x2200F000
    .word 0x14110000, 0x3511004F, 0x26110007, 0xF00086, 0x11000022
    .word 0x11000314, 0x11000334, 0xF0004F26, 0x2200, 0x743411
    .word 0x192511, 0x741611, 0x2200F0, 0x55251100, 0x2200F001
    .word 0x25110000, 0xF0010D, 0x11000022, 0xF0012B25, 0x2200
    .word 0x3E1411, 0x3F3511, 0x2200F0, 0x8341100, 0x9251100
    .word 0x2200F000, 0x14110000, 0x26110074, 0xF00075, 0x11000022
    .word 0x11003E14, 0xF0002D26, 0x2200, 0x203411, 0x511511
    .word 0x2200F0, 0x80241100, 0x7B351100, 0x2200F000, 0x14110000
    .word 0x35110067, 0xF00069, 0x11000022, 0x11003E14, 0xF0008126
    .word 0x2200, 0x42411, 0x882611, 0x2200F0, 0x22141100
    .word 0x21351100, 0x2200F000, 0x34110000, 0x15110081, 0xF000A6
    .word 0x11000022, 0x11008D14, 0xF0008E25, 0x2200, 0x9F3411
    .word 0x562611, 0x2200F0, 0x4141100, 0x2361100, 0x2200F000
    .word 0x14110000, 0x2611003E, 0xF00086, 0x11000022, 0x11005635
    .word 0xF0002016, 0x2200, 0x203411, 0x501511, 0x2200F0
    .word 0x7B241100, 0xA6351100, 0x2200F000, 0x24110000, 0x16110064
    .word 0xF00069, 0x11000022, 0x11002E14, 0xF0000426, 0x2200
    .word 0x81411, 0x523511, 0x2200F0, 0xA4341100, 0x74161100
    .word 0x2200F000, 0x24110000, 0x36110062, 0xF0008E, 0x11000022
    .word 0x11007B34, 0xF0008225, 0x2200, 0x8B1511, 0x8E2611
    .word 0x2200F0, 0x57141100, 0x9251100, 0x31361100, 0x2200F000
    .word 0x34110000, 0x1511003E, 0x2611003F, 0xF00040, 0x11000022
    .word 0x11005014, 0x11005135, 0xF0005226, 0x2200, 0x15B2511
    .word 0x2200F0, 0x7251100, 0x2200F001, 0x25110000, 0xF00125
    .word 0x11000022, 0xF000B525, 0x2200, 0xB62511, 0x2200F0
    .word 0xB7251100, 0x2200F000, 0x25110000, 0xF000B8, 0x11000021
    .word 0xA0014426, 0xA0000022, 0xF0000025, 0x2200, 0x14A2511
    .word 0x2200F0, 0x85251100, 0x2200F001, 0x25110000, 0xF0018B
    .word 0x11000022, 0xF0016725, 0x2200, 0x1132511, 0x2200F0
    .word 0x37251100, 0x2200F001, 0x26110000, 0xF000AF, 0x11000022
    .word 0xF000B026, 0x2200, 0xB12611, 0x2200F0, 0x56251100
    .word 0x2200F001, 0x25110000, 0xF0015C, 0x11000022, 0xF0015025
    .word 0x2200, 0x1792511, 0x2200F0, 0x7B251100, 0x2200F001
    .word 0x25110000, 0xF00131, 0x11000022, 0xF0011925, 0x2200
    .word 0x16D2511, 0x2200F0, 0x70251100, 0x2200F001, 0x25110000
    .word 0xF00161, 0x11000022, 0xF0016125, 0x2200, 0x18D2511
    .word 0x2200F0, 0x6E251100, 0x2100F001, 0x26110000, 0x22A00146
    .word 0x25A00000, 0xF00000, 0x11000022, 0xF0014C25, 0x2200
    .word 0x1522511, 0x2200F0, 0x58251100, 0x2200F001, 0x25110000
    .word 0xF0015E, 0x11000022, 0xF0016A25, 0x2200, 0x2E3411
    .word 0x401511, 0x402611, 0x2200F0, 0xA141100, 0xA341100
    .word 0xA251100, 0x2200F000, 0x34110000, 0x1511006A, 0x2611008E
    .word 0xF0008E, 0x11000022, 0x11008224, 0x11007C16, 0xF0007C36
    .word 0x2200, 0x461411, 0x523511, 0x222611, 0x2200F0
    .word 0x76341100, 0x64251100, 0x76161100, 0x2200F000, 0x14110000
    .word 0x25110094, 0x36110094, 0xF0002E, 0x11000022, 0x11000A34
    .word 0x11005825, 0xF0000A16, 0x2200, 0x582411, 0x8E1611
    .word 0x8E3611, 0x2200F0, 0xA0141100, 0x4C351100, 0x4C261100
    .word 0x2200F000, 0x24110000, 0x1611004C, 0x3611009A, 0xF0009A
    .word 0x11000022, 0x11000E24, 0x11000F15, 0xF0001036, 0x2200
    .word 0xAC1511, 0xA63511, 0x582611, 0x2200F0, 0x28151100
    .word 0x28351100, 0x70261100, 0x2200F000, 0x14110000, 0x34110046
    .word 0x26110046, 0xF00022, 0x11000022, 0x11008834, 0x11008815
    .word 0xF0001626, 0x2200, 0x42411, 0x41511, 0x43611
    .word 0x2200F0, 0xA0141100, 0xA0341100, 0x1C251100, 0x2200F000
    .word 0x15110000, 0x35110052, 0x26110052, 0xF0006A, 0x11000022
    .word 0x11008224, 0x11004C16, 0xF0008236, 0x2200, 0x402411
    .word 0x221611, 0x403611, 0x2200F0, 0x2E341100, 0x40151100
    .word 0x40261100, 0x2200F000, 0x14110000, 0x3411000A, 0x2511000A
    .word 0xF0000A, 0x11000022, 0x11006A34, 0x11008E15, 0xF0008E26
    .word 0x2200, 0x822411, 0x7C1611, 0x7C3611, 0x2200F0
    .word 0x46141100, 0x52351100, 0x22261100, 0x2200F000, 0x14110000
    .word 0x25110094, 0x36110094, 0xF0002E, 0x11000022, 0x11000A34
    .word 0x11005825, 0xF0000A16, 0x2200, 0x582411, 0x8E1611
    .word 0x8E3611, 0x2200F0, 0xA0141100, 0x4C351100, 0x4C261100
    .word 0x2200F000, 0x24110000, 0x1611004C, 0x3611009A, 0xF0009A
    .word 0x11000022, 0x11000E24, 0x11000F15, 0xF0001036, 0x2200
    .word 0xAC1511, 0xA63511, 0x582611, 0x2200F0, 0x28151100
    .word 0x28351100, 0x70261100, 0x2200F000, 0x14110000, 0x25110046
    .word 0x36110022, 0xF00022
battleSettingsList1:    .word 0x11000022, 0x11008834, 0x11008815, 0xF0001626, 0x2200
    .word 0x42411, 0x41511, 0x43611, 0x2200F0, 0xA0141100
    .word 0xA0341100, 0x1C251100, 0x2200F000, 0x15110000, 0x35110052
    .word 0x26110052, 0xF0006A, 0x11000022, 0x11008224, 0x11004C16
    .word 0xF0008236, 0x2200, 0x402411, 0x221611, 0x223611
    .word 0x2200F0, 0x9E151100, 0x9E351100, 0x6F261100, 0x2200F000
    .word 0x24110000, 0x3511001A, 0x16110091, 0xF000A9, 0x11000022
    .word 0x11007414, 0x11007435, 0xF0008726, 0x2200, 0x912411
    .word 0x971511, 0x973611, 0x2200F0, 0x5B241100, 0x4351100
    .word 0x4161100, 0x2200F000, 0x24110000, 0x35110014, 0x16110004
    .word 0xF00046, 0x11000022, 0x11007414, 0x11007435, 0xF0006D26
    .word 0x2200, 0x12411, 0x11511, 0x13511, 0x2200F0
    .word 0x4241100, 0x4351100, 0x6A161100, 0x2200F000, 0x34110000
    .word 0x15110004, 0x26110052, 0xF0008E, 0x11000022, 0x11000414
    .word 0x11000435, 0xF0006426, 0x2200, 0x41411, 0x753511
    .word 0x692611, 0x2200F0, 0x4341100, 0x4251100, 0x94161100
    .word 0x2200F000, 0x14110000, 0x3411009D, 0x2511009E, 0xF0009D
    .word 0x11000022, 0x11009E14, 0x1100A034, 0xF0009E25, 0x2200
    .word 0x6F1411, 0x573511, 0x3B2611, 0x2200F0, 0xA3141100
    .word 0x2C351100, 0x52261100, 0x2200F000, 0x24110000, 0x15110091
    .word 0x36110087, 0xF0003C, 0x11000022, 0xA0014325, 0xA0000031
    .word 0xF0000014, 0x2200, 0x1492511, 0x2200F0, 0x4F251100
    .word 0x2200F001, 0x25110000, 0xF00155, 0x11000022, 0xF0015B25
    .word 0x2200, 0x42411, 0x41511, 0x6D3611, 0x2200F0
    .word 0xA0141100, 0xA0351100, 0x6D261100, 0x2200F000, 0x34110000
    .word 0x25110052, 0x16110058, 0xF0006E, 0x11000022, 0x1100A625
    .word 0x11009216, 0xF0006E36, 0x2200, 0x101411, 0x103511
    .word 0x6F2611, 0x2200F0, 0x16141100, 0x16341100, 0x6F361100
    .word 0x2200F000, 0x14110000, 0x2511005B, 0x3611005C, 0xF00070
    .word 0x11000022, 0x11008614, 0x11008635, 0xF0006F26, 0x2200
    .word 0x871511, 0x873511, 0x702611, 0x2200F0, 0x2241100
    .word 0x20151100, 0x86361100, 0x2200F000, 0x34110000, 0x15110008
    .word 0x26110008, 0xF00050, 0x11000022, 0x11002034, 0x11005015
    .word 0xF0005626, 0x2200, 0x681411, 0x622511, 0x8C3611
    .word 0x2200F0, 0x10341100, 0x1C251100, 0x4D161100, 0x2200F000
    .word 0x14110000, 0x35110002, 0x26110002, 0xF00002, 0x11000022
    .word 0x11000234, 0x11000225, 0xF0000216, 0x2200, 0x22511
    .word 0x21611, 0x23611, 0x2200F0, 0x2241100, 0x2151100
    .word 0x2361100, 0x2200F000, 0x15110000, 0x35110002, 0x26110002
    .word 0xF00049, 0x11000022, 0x11003E14, 0x11003E25, 0xF0004936
    .word 0x2200, 0x2C3411, 0x3E1511, 0x492611, 0x2200F0
    .word 0x9E141100, 0x9E351100, 0x76261100, 0x2200F000, 0x34110000
    .word 0x25110002, 0x16110002, 0xF00003, 0x11000022, 0x11000214
    .word 0x11000235, 0xF000A416, 0x2200, 0x741511, 0x743511
    .word 0x152611, 0x2200F0, 0x74141100, 0x74351100, 0x75261100
    .word 0x2200F000, 0x14110000, 0x3511000E, 0x1611000F, 0xF000AA
    .word 0x11000022, 0x11004424, 0x1100A416, 0xF0009336, 0x2200
    .word 0x501411, 0x563511, 0x6F1611, 0x2200F0, 0x20341100
    .word 0x20151100, 0x88261100, 0x2200F000, 0x14110000, 0x35110080
    .word 0x2611004B, 0xF0009A, 0x11000022, 0x11000E14, 0x11009235
    .word 0xF0006F26, 0x2200, 0x11511, 0x13511, 0x12611
    .word 0x2200F0, 0x85151100, 0x1351100, 0x1261100, 0x2200F000
    .word 0x34110000, 0x2511002B, 0x1611003D, 0xF0002C, 0x11000022
    .word 0x11001325, 0x11004F16, 0xF0005036, 0x2200, 0x81411
    .word 0x72511, 0x143611, 0x2200F0, 0x56141100, 0x20251100
    .word 0x1F361100, 0x2200F000, 0x15110000, 0x35110074, 0x26110074
    .word 0xF00080, 0x11000022, 0x11009E34, 0x11009E25, 0xF0009E16
    .word 0x2200, 0x9F2511, 0xA41611, 0x23611, 0x2200F0
    .word 0x51251100, 0x8C161100, 0x62361100, 0x2200F000, 0x24110000
    .word 0x15110015, 0x36110063, 0xF00062, 0x11000022, 0x11008714
    .word 0x11002725, 0xF0008636, 0x2200, 0x871411, 0x6F3511
    .word 0x872611, 0x2200F0, 0x1B151100, 0x1B361100, 0x2200F000
    .word 0x15110000, 0x35110093, 0xF00076, 0x11000022, 0x11000F34
    .word 0x11001015, 0xF0000F26, 0x2200, 0xF1511, 0x1C3511
    .word 0x462611, 0x2200F0, 0x99141100, 0x4251100, 0x5E361100
    .word 0x2200F000, 0x14110000, 0x34110004, 0x26110004, 0xF00094
    .word 0x11000022, 0x11004B25, 0x11004C16, 0xF0004D36, 0x2200
    .word 0x23411, 0x861511, 0x3E2611, 0x2200F0, 0x20151100
    .word 0x20351100, 0x50261100, 0x2200F000, 0x14110000, 0x3511003E
    .word 0x2611002C, 0xF0002C, 0x11000022, 0x11000824, 0x11000815
    .word 0xF0005636, 0x2200, 0x201411, 0x862511, 0x3E3611
    .word 0xF0, 0x156400, 0x380007, 0x88C, 0x80B1989
    .word 0x156400, 0x380007, 0x88C, 0x80B1992, 0x156400
    .word 0x380007, 0x88C, 0x80B1A69, 0x156400, 0x380007
    .word 0x88C, 0x80B1A7A, 0x156400, 0x380007, 0x88C
    .word 0x80B1A25, 0x156400, 0x380007, 0x88C, 0x80B1A36
    .word 0x156400, 0x380007, 0x88C, 0x80B1A47, 0x156400
    .word 0x380007, 0x88C, 0x80B1A58, 0x1564D1, 0x380007
    .word 0x88C, 0x80B1989, 0x1564D1, 0x380007, 0x88C
    .word 0x80B1992, 0x1564D3, 0x380007, 0x88C, 0x80B1989
    .word 0x1564D3, 0x380007, 0x88C, 0x80B1992, 0x1564D2
    .word 0x380007, 0x88C, 0x80B1989, 0x1564D2, 0x380007
    .word 0x88C, 0x80B1992, 0x15641B, 0x380007, 0x88C
    .word 0x80B19AD, 0x15641B, 0x380007, 0x88C, 0x80B19B6
    .word 0x1564D6, 0x380007, 0x88C, 0x80B1989, 0x1564D6
    .word 0x380007, 0x88C, 0x80B1992, 0x1564D7, 0x380007
    .word 0x88C, 0x80B1989, 0x1564D7, 0x380007, 0x88C
    .word 0x80B1992, 0x1564BD, 0x380007, 0x88C, 0x80B1989
    .word 0x1564BD, 0x380007, 0x88C, 0x80B1992, 0x1564BD
    .word 0x380007, 0x88C, 0x80B19E1, 0x1564BD, 0x380007
    .word 0x88C, 0x80B19F2, 0x1564BD, 0x380007, 0x88C
    .word 0x80B1A03, 0x1564BD, 0x380007, 0x88C, 0x80B1A14
    .word 0x1564BD, 0x380007, 0x88C, 0x80B19BF, 0x1564BD
    .word 0x380007, 0x88C, 0x80B19D0, 0x1564D9, 0x380007
    .word 0x88C, 0x80B1989, 0x1564D9, 0x380007, 0x88C
    .word 0x80B1992, 0x1564DB, 0x380007, 0x88C, 0x80B1989
    .word 0x1564DB, 0x380007, 0x88C, 0x80B1992, 0x1564DC
    .word 0x380007, 0x88C, 0x80B1989, 0x1564DC, 0x380007
    .word 0x88C, 0x80B1992, 0x1564DA, 0x380007, 0x88C
    .word 0x80B1989, 0x1564DA, 0x380007, 0x88C, 0x80B1992
    .word 0x1564DE, 0x380007, 0x88C, 0x80B19AD, 0x1564DE
    .word 0x380007, 0x88C, 0x80B19B6, 0x1564DF, 0x380007
    .word 0x88C, 0x80B1989
    .word 0x1564DF, 0x380007, 0x88C, 0x80B1992, 0x1564DE, 0x380007
    .word 0x88C, 0x80B1A8B, 0x1564DE, 0x380007, 0x88C, 0x80B1A9C
    .word 0x1564DE, 0x380007, 0x88C, 0x80B1AAD, 0x1564DE, 0x380007
    .word 0x88C, 0x80B1ABE, 0x1564DE, 0x380007, 0x88C, 0x80B1ACF
    .word 0x1564DE, 0x380007, 0x88C, 0x80B1AE0, 0x156434, 0x380007
    .word 0x88C, 0x80B1989, 0x156434, 0x380007, 0x88C, 0x80B1992
    .word 0x156492, 0x380007, 0x88C, 0x80B19AD, 0x156492, 0x380007
    .word 0x88C, 0x80B19B6, 0x1564E3, 0x380007, 0x88C, 0x80B1989
    .word 0x1564E3, 0x380007, 0x88C, 0x80B1992, 0x1564E4, 0x380007
    .word 0x88C, 0x80B1989, 0x1564E4, 0x380007, 0x88C, 0x80B1992
    .word 0x1564E2, 0x380007, 0x88C, 0x80B1989, 0x1564E2, 0x380007
    .word 0x88C, 0x80B1992, 0x1564E6, 0x380007, 0x88C, 0x80B1989
    .word 0x1564E6, 0x380007, 0x88C, 0x80B1992, 0x1564E7, 0x380007
    .word 0x88C, 0x80B1989, 0x1564E7, 0x380007, 0x88C, 0x80B1992
    .word 0x1564E9, 0x380007, 0x88C, 0x80B1989, 0x1564E9, 0x380007
    .word 0x88C, 0x80B1992, 0x1564CD, 0x380007, 0x88C, 0x80B1989
    .word 0x1564CD, 0x380007, 0x88C, 0x80B1992, 0x1564CF, 0x380007
    .word 0x88C, 0x80B19AD, 0x1564CF, 0x380007, 0x88C, 0x80B19B6
    .word 0x1564CE, 0x380007, 0x88C, 0x80B19AD, 0x1564CE, 0x380007
    .word 0x88C, 0x80B19B6, 0x15640C, 0x380007, 0x88C, 0x80B1989
    .word 0x15640C, 0x380007, 0x88C, 0x80B1992, 0x1564CC, 0x380007
    .word 0x88C, 0x80B19AD, 0x1564CC, 0x380007, 0x88C, 0x80B19B6
    .word 0x1564E1, 0x380007, 0x88C, 0x80B19AD, 0x1564E1, 0x380007
    .word 0x88C, 0x80B19B6, 0x156487, 0x380007, 0x88C, 0x80B1989
    .word 0x156487, 0x380007, 0x88C, 0x80B1992, 0x1564E5, 0x380007
    .word 0x88C, 0x80B1989, 0x1564E5, 0x380007, 0x88C, 0x80B1992
    .word 0x1564EA, 0x380007, 0x88C, 0x80B19AD, 0x1564EA, 0x380007
    .word 0x88C, 0x80B19B6, 0x1564BE, 0x380007, 0x88C, 0x80B1AF1
    .word 0x1564BE, 0x380007, 0x88C, 0x80B1B02, 0x1564BE, 0x380007
    .word 0x88C, 0x80B1B13, 0x1564BE, 0x380007, 0x88C, 0x80B1B24
    .word 0x1564BD, 0x380007, 0x88C, 0x80B1B35, 0x1564BD, 0x380007
    .word 0x88C, 0x80B1B46, 0x15645D, 0x380007, 0x88C, 0x80B1989
    .word 0x15645D, 0x380007, 0x88C, 0x80B1992, 0x15641E, 0x380007
    .word 0x88C, 0x80B1989, 0x15641E, 0x380007, 0x88C, 0x80B1992
    .word 0x1564EB, 0x380007, 0x88C, 0x80B1989, 0x1564EB, 0x380007
    .word 0x88C, 0x80B1992, 0x1564E7, 0x380007, 0x88C, 0x80B1A25
    .word 0x1564E7, 0x380007, 0x88C, 0x80B1A36, 0x1564E7, 0x380007
    .word 0x88C, 0x80B1A47, 0x1564E7, 0x380007, 0x8C, 0x80B1A58
    .word 0x156400, 0x380007, 0x20088C, 0x80B1989, 0x156400, 0x380007
    .word 0x20088C, 0x80B1992, 0x156400, 0x380007, 0x20088C, 0x80B1A69
    .word 0x156400, 0x380007, 0x20088C, 0x80B1A7A, 0x156400, 0x380007
    .word 0x20088C, 0x80B1A25, 0x156400, 0x380007, 0x20088C, 0x80B1A36
    .word 0x156400, 0x380007, 0x20088C, 0x80B1A47, 0x156400, 0x380007
    .word 0x20088C, 0x80B1A58, 0x1564D1, 0x380007, 0x20088C, 0x80B1989
    .word 0x1564D1, 0x380007, 0x20088C, 0x80B1992, 0x1564D3, 0x380007
    .word 0x20088C, 0x80B1989, 0x1564D3, 0x380007, 0x20088C, 0x80B1992
    .word 0x1564D2, 0x380007, 0x20088C, 0x80B1989, 0x1564D2, 0x380007
    .word 0x20088C, 0x80B1992, 0x15641B, 0x380007, 0x20088C, 0x80B19AD
    .word 0x15641B, 0x380007, 0x20088C, 0x80B19B6, 0x1564D6, 0x380007
    .word 0x20088C, 0x80B1989, 0x1564D6, 0x380007, 0x20088C, 0x80B1992
    .word 0x1564D7, 0x380007, 0x20088C, 0x80B1989, 0x1564D7, 0x380007
    .word 0x20088C, 0x80B1992, 0x1564BD, 0x380007, 0x20088C, 0x80B1989
    .word 0x1564BD, 0x380007, 0x20088C, 0x80B1992, 0x1564BD, 0x380007
    .word 0x20088C, 0x80B19E1, 0x1564BD, 0x380007, 0x20088C, 0x80B19F2
    .word 0x1564BD, 0x380007, 0x20088C, 0x80B1A03, 0x1564BD, 0x380007
    .word 0x20088C, 0x80B1A14, 0x1564BD, 0x380007, 0x20088C, 0x80B19BF
    .word 0x1564BD, 0x380007, 0x20088C, 0x80B19D0, 0x1564D9, 0x380007
    .word 0x20088C, 0x80B1989, 0x1564D9, 0x380007, 0x20088C, 0x80B1992
    .word 0x1564DB, 0x380007, 0x20088C, 0x80B1989, 0x1564DB, 0x380007
    .word 0x20088C, 0x80B1992, 0x1564DC, 0x380007, 0x20088C, 0x80B1989
    .word 0x1564DC, 0x380007, 0x20088C, 0x80B1992, 0x1564DA, 0x380007
    .word 0x20088C, 0x80B1989, 0x1564DA, 0x380007, 0x20088C, 0x80B1992
    .word 0x1564DE, 0x380007, 0x20088C, 0x80B19AD, 0x1564DE, 0x380007
    .word 0x20088C, 0x80B19B6, 0x1564DF, 0x380007, 0x20088C, 0x80B1989
    .word 0x1564DF, 0x380007, 0x20088C, 0x80B1992, 0x1564DE, 0x380007
    .word 0x20088C, 0x80B1A8B, 0x1564DE, 0x380007, 0x20088C, 0x80B1A9C
    .word 0x1564DE, 0x380007, 0x20088C, 0x80B1AAD, 0x1564DE, 0x380007
    .word 0x20088C, 0x80B1ABE, 0x1564DE, 0x380007, 0x20088C, 0x80B1ACF
    .word 0x1564DE, 0x380007, 0x20088C, 0x80B1AE0, 0x156434, 0x380007
    .word 0x20088C, 0x80B1989, 0x156434, 0x380007, 0x20088C, 0x80B1992
    .word 0x156492, 0x380007, 0x20088C, 0x80B19AD, 0x156492, 0x380007
    .word 0x20088C, 0x80B19B6, 0x1564E3, 0x380007, 0x20088C, 0x80B1989
    .word 0x1564E3, 0x380007, 0x20088C, 0x80B1992, 0x1564E4, 0x380007
    .word 0x20088C, 0x80B1989, 0x1564E4, 0x380007, 0x20088C, 0x80B1992
    .word 0x1564E2, 0x380007, 0x20088C, 0x80B1989, 0x1564E2, 0x380007
    .word 0x20088C, 0x80B1992, 0x1564E6, 0x380007, 0x20088C, 0x80B1989
    .word 0x1564E6, 0x380007, 0x20088C, 0x80B1992, 0x1564E7, 0x380007
    .word 0x20088C, 0x80B1989, 0x1564E7, 0x380007, 0x20088C, 0x80B1992
    .word 0x1564E9, 0x380007, 0x20088C, 0x80B1989, 0x1564E9, 0x380007
    .word 0x20088C, 0x80B1992, 0x1564CD, 0x380007, 0x20088C, 0x80B1989
    .word 0x1564CD, 0x380007, 0x20088C, 0x80B1992, 0x1564CF, 0x380007
    .word 0x20088C, 0x80B19AD, 0x1564CF, 0x380007, 0x20088C, 0x80B19B6
    .word 0x1564CE, 0x380007, 0x20088C, 0x80B19AD, 0x1564CE, 0x380007
    .word 0x20088C, 0x80B19B6, 0x15640C, 0x380007, 0x20088C, 0x80B1989
    .word 0x15640C, 0x380007, 0x20088C, 0x80B1992, 0x1564CC, 0x380007
    .word 0x20088C, 0x80B19AD
    // <endfile>
    .word 0x1564CC, 0x380007, 0x20088C, 0x80B19B6, 0x1564E1
    .word 0x380007, 0x20088C, 0x80B19AD, 0x1564E1, 0x380007
    .word 0x20088C, 0x80B19B6, 0x156487, 0x380007, 0x20088C
    .word 0x80B1989, 0x156487, 0x380007, 0x20088C, 0x80B1992
    .word 0x1564E5, 0x380007, 0x20088C, 0x80B1989, 0x1564E5
    .word 0x380007, 0x20088C, 0x80B1992, 0x1564EA, 0x380007
    .word 0x20088C, 0x80B19AD, 0x1564EA, 0x380007, 0x20088C
    .word 0x80B19B6, 0x1564BE, 0x380007, 0x20088C, 0x80B1AF1
    .word 0x1564BE, 0x380007, 0x20088C, 0x80B1B02, 0x1564BE
    .word 0x380007, 0x20088C, 0x80B1B13, 0x1564BE, 0x380007
    .word 0x20088C, 0x80B1B24, 0x1564BD, 0x380007, 0x20088C
    .word 0x80B1B35, 0x1564BD, 0x380007, 0x20088C, 0x80B1B46
    .word 0x15645D, 0x380007, 0x20088C, 0x80B1989, 0x15645D
    .word 0x380007, 0x20088C, 0x80B1992, 0x15641E, 0x380007
    .word 0x20088C, 0x80B1989, 0x15641E, 0x380007, 0x20088C
    .word 0x80B1992, 0x1564EB, 0x380007, 0x20088C, 0x80B1989
    .word 0x1564EB, 0x380007, 0x20088C, 0x80B1992, 0x1564E7
    .word 0x380007, 0x20088C, 0x80B1A25, 0x1564E7, 0x380007
    .word 0x20088C, 0x80B1A36, 0x1564E7, 0x380007, 0x20088C
    .word 0x80B1A47, 0x1564E7, 0x380007, 0x20088C, 0x80B1A58
    .word 0x2200FF, 0x250100, 0x2501F000, 0x22000000, 0xF00000
    .word 0x1000012, 0xF0000015, 0x1501, 0x1200, 0x2100F0
    .word 0x260100, 0x2601F000, 0x21000000, 0xF00000, 0x1000021
    .word 0x30000026, 0x30000022, 0xF0000025, 0x2601, 0x2100
    .word 0x2530, 0x2230, 0x2200F0, 0x250100, 0x323000
    .word 0x153000, 0x2501F000, 0x22000000, 0x15300000, 0x32300000
    .word 0xF00000, 0x1000022, 0x30000025, 0x30000012, 0xF0000035
    .word 0x2501, 0x2200, 0x3530, 0x1230, 0x2200F0
    .word 0x250100, 0x1338000, 0x1148000, 0x2501F000, 0x22000000
    .word 0x14800000, 0x33800001, 0xF00001, 0x1000022, 0x80000025
    .word 0x80000113, 0xF0000134, 0x2501, 0x2200, 0x13480
    .word 0x11380, 0x2100F0, 0x260100, 0x1228000, 0x1258000
    .word 0x2601F000, 0x21000000, 0x25800000, 0x22800001, 0xF00001
    .word 0x1000021, 0x80000026, 0x80000313, 0xF0000334, 0x2601
    .word 0x2100, 0x33480, 0x31380, 0x2100F0, 0x260100
    .word 0x3338000, 0x3148000, 0x2601F000, 0x21000000, 0x14800000
    .word 0x33800003, 0xF00003, 0x1000021, 0x80000026, 0x80000322
    .word 0xF0000325, 0x2601, 0x2100, 0x32580, 0x32280
    .word 0x2200F0, 0x250100, 0x3118000, 0x3368000, 0x2501F000
    .word 0x22000000, 0x36800000, 0x11800003, 0xF00003, 0x1000022
    .word 0x80000025, 0x80000331, 0xF0000316, 0x2501, 0x2200
    .word 0x31680, 0x33180, 0x2200F0, 0x250100, 0x119000
    .word 0x169000, 0x2501F000, 0x22000000, 0x16900000, 0x11900000
    .word 0xF00000, 0x1000022, 0x30000025, 0x30000021, 0xF0000026
    .word 0x2501, 0x2200, 0x2630, 0x2130, 0xF0
/*For debugging purposes, connect comment at any range!*/
