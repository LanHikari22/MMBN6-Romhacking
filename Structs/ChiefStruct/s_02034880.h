#ifndef S_02034880_H
#define S_02034880_H

#include "../../include/inttypes.h"

typedef struct {
	u8 unk_00;     // loc=0x0 CONFLICT u32
	u8 unk_01;     // loc=0x1
	u8 unk_02;     // loc=0x2 CONFLICT u16
	u8 unk_03;     // loc=0x3
	u8 unk_04;     // loc=0x4 CONFLICT u16
	u8 unk_05;     // loc=0x5
	u8 unk_06;     // loc=0x6
	u8 unk_07;     // loc=0x7
	u8 unk_08;     // loc=0x8
	u8 unk_09;     // loc=0x9
	u8 unk_0A;     // loc=0xA
	u8 unk_0B;     // loc=0xB
		u8 pad_0C[0x01]; 
	u8 unk_0D;     // loc=0xD
	u8 unk_0E;     // loc=0xE
	u8 unk_0F;     // loc=0xF
	u8 unk_10;     // loc=0x10
	u8 unk_11;     // loc=0x11
	u8 unk_12;     // loc=0x12 CONFLICT u16
	u8 unk_13;     // loc=0x13
	u8 unk_14;     // loc=0x14
	u8 unk_15;     // loc=0x15
	u8 unk_16;     // loc=0x16
	u8 unk_17;     // loc=0x17
	u8 unk_18;     // loc=0x18
	u8 unk_19;     // loc=0x19
	u8 unk_1A;     // loc=0x1A
	u8 unk_1B;     // loc=0x1B
	u8 unk_1C;     // loc=0x1C
	u8 unk_1D;     // loc=0x1D
	u8 unk_1E;     // loc=0x1E
	u8 unk_1F;     // loc=0x1F
		u8 pad_20[0x08]; 
	u16 unk_28;    // loc=0x28
		u8 pad_2A[0x08]; 
	u16 unk_32;    // loc=0x32
	u16 unk_34;    // loc=0x34
	u16 unk_36;    // loc=0x36
		u8 pad_38[0x02]; 
	u16 unk_3A;    // loc=0x3A
	u32 unk_3C;    // loc=0x3C
	u32 unk_40;    // loc=0x40
	u8 unk_44;     // loc=0x44
	u8 unk_45;     // loc=0x45
		u8 pad_46[0x06]; 
	u16 unk_4C;    // loc=0x4C
		u8 pad_4E[0x06]; 
	u16 unk_54;    // loc=0x54
	u16 unk_56;    // loc=0x56
		u8 pad_58[0x04]; 
	u32 unk_5C;    // loc=0x5C
	u32 unk_60;    // loc=0x60
	u32 unk_64;    // loc=0x64
		u8 pad_68[0x18]; 
	u32 unk_80;    // loc=0x80
		u8 pad_84[0x0C]; 
	u32 unk_90;    // loc=0x90
	// size=0x94
}s_02034880;

#pragma region Docs

/*
	[Header]
		[Name] s_02034880
		[Size] 0x94
		[Description]
	Offset  Type  Name 
	0x00    u8    ?    
	0x01    u8    ?    
	0x02    u8    ?    
	0x03    u8    ?    
	0x04    u8    ?    
	0x05    u8    ?    
	0x06    u8    ?    
	0x07    u8    ?    
	0x08    u8    ?    
	0x09    u8    ?    
	0x0A    u8    ?    
	0x0B    u8    ?    
	0x0D    u8    ?    
	0x0E    u8    ?    
	0x0F    u8    ?    
	0x10    u8    ?    
	0x11    u8    ?    
	0x12    u8    ?    
	0x13    u8    ?    
	0x14    u8    ?    
	0x15    u8    ?    
	0x16    u8    ?    
	0x17    u8    ?    
	0x18    u8    ?    
	0x19    u8    ?    
	0x1A    u8    ?    
	0x1B    u8    ?    
	0x1C    u8    ?    
	0x1D    u8    ?    
	0x1E    u8    ?    
	0x1F    u8    ?    
	0x28    u16   ?    
	0x32    u16   ?    
	0x34    u16   ?    
	0x36    u16   ?    
	0x3A    u16   ?    
	0x3C    u32   ?    
	0x40    u32   ?    
	0x44    u8    ?    
	0x45    u8    ?    
	0x4C    u16   ?    
	0x54    u16   ?    
	0x56    u16   ?    
	0x5C    u32   ?    
	0x60    u32   ?    
	0x64    u32   ?    
	0x80    u32   ?    
	0x90    u32   ?    
*/

/*
s_02034880
	Description
		Has CURRENT BATTLE Information. Modifying this can change immediate
		battle pointer!
	Function Accesses
		<> Simple indicates that this does something significant when CALLED by pressing R.
		XX indicates a CRASH, or a situation that may ultimately leads to it.
		08007204(Modifies Battle pointer)
		--
		0800A2F8, 0800794C <>, 080079A8, 080079D0, 0800A3E4, 080079F0 <>, 08007A0C <>, 080077D2,
		0800799C, 080071FE <> XX, 08007778 <> XX, 08007368 <>
		---
		080091F0, 0800927C <>, 08009338 <>, 08026840 <>
		---
		080094DA <>, 0800A998, 0801FF18, 0800A840, 0800AABC <endsBattleNoGM>, 08007BD0, 08007C14, 08007CA0 <>
	[Definition]
	Offset	Type	Name
	0x3C	ptr		*pcurrBattle
*/
#pragma endregion Docs

#pragma region Accesses

/*
	name=s_02034880, size=0x94
	0800A9E2?::0800A9E8 u8(0x14), 08007204::08007216 u32(0x3C), 08007204::0800721A u8(0x0A), 
	0802D234::0802D23A u32(0x3C), 08007204::08007242 u8(0x1B), 080823C8::080823CE u32(0x3C), 
	0800A2F8::0800A30C u32(0x3C), 0800A2F8::0800A310 u8(0x0F), 0800A2F8::0800A314 u8(0x06), 
	080013A2?::080013A6 u32(0x5C), 08007800::08007810 u8(0x00), 0801FF18::0801FF6E u8(0x15), 
	0801FF18::0801FF94 u8(0x11), 08007850::0800790E u8(0x01), 0802D246::0802D24C u32(0x3C), 
	0800A2F0?::0800A2F4 u16(0x32), 0800794C::08007974 u8(0x01), 08007800::08007818 u32(0x60), 
	08007800::0800781C u32(0x60), 0800A832?::0800A836 u8(0x1F), 08007800::0800782C u8(0x0A), 
	0801FF18::0801FF3C u8(0x14), 08007978::0800797C u8(0x02), 0800799C::080079A4 u8(0x02), 
	080079A8::080079BC u8(0x0D), 0800B144::0800B152 u32(0x3C), 080079A8::080079C8 u8(0x02), 
	080079D0::080079E6 u8(0x02), 0802D26A::0802D270 u32(0x3C), 080079F0::080079F8 u8(0x06), 
	0800A3E4::0800A44C u8(0x17), 0800A3E4::0800A466 u8(0x44), 0800A3E4::0800A4C4 u8(0x17), 
	0800A3E4::0800A4CC u8(0x44), 0800A570::0800A64C u8(0x45), 080079F0::08007A04 u8(0x01), 
	080079F0::08007A08 u16(0x02), 08007A0C::08007A2E u32(0x3C), 08007A0C::08007A3C u32(0x00), 
	08009158::0800915C u8(0x01), 080091F0::080091F2 u8(0x03), 080091F0::08009202 u32(0x3C), 
	080091F0::08009206 u8(0x1A), 08007358::0800735A u32(0x3C), 08007778::0800778A u32(0x80+0x00), 
	08007778::08007790 u32(0x80+0x00), 08007778::0800779E u8(0x04), 08007778::080077A2 u8(0x04), 
	080077D2::080077E0 u8(0x08), 080077D2::080077E4 u8(0x08), 080077D2::080077EE u16(0x4C), 
	08007368::08007384 u16(0x04), 08007368::08007386 u16(0x12), 080AC0FC::080AC112 u32(0x90+0x00), 
	080091F0::0800922E u32(0x3C), 080091F0::0800923C u8(0x03), 08001382?::08001386 u32(0x5C), 
	08001382?::0800138A u32(0x5C), 080E19C0::080E19EA u32(0x3C), 0800A9EC?::0800A9F0 u8(0x0D), 
	0800FDC0::0800FDCA u32(0x80+0x00), 08007A44::08007B0A u32(0x64), 08007A44::08007B0E u32(0x64), 
	0800C01C::0800C024 u8(0x0D), 0800C100::0800C108 u8(0x0D), 080091F0::08009240 u8(0x02), 
	0800A7E2?::0800A7E6 u8(0x0D), 080091F0::0800924C u8(0x02), 0800139A?::0800139E u32(0x5C), 
	0800A18E?::0800A194 u8(0x12), 0800A18E?::0800A19A u8(0x13), 0800A18E?::0800A1A0 u8(0x0B), 
	08016934::08016968 u8(0x0D), 08016CA4::08016CB2 u8(0x0D), 080163B4::080163C0 u8(0x0D), 
	0802CE60?::0802CE64 u8(0x0D), 0801CADC::0801CAE8 u8(0x0D), 08016460::08016476 u8(0x0D), 
	080091F0::08009270 u8(0x01), 080091F0::08009274 u16(0x02), 080092A0::080092A4 u8(0x02), 
	080092C0::080092C2 u8(0x03), 080092C0::080092C8 u8(0x1A), 080092E6?::080092E8 u8(0x01), 
	080092E6?::080092EC u16(0x02), 08009338::0800933A u8(0x03), 0800A9CA?::0800A9CE u8(0x11), 
	0800A9CA?::0800A9D2 u8(0x11), 08009338::08009348 u8(0x03), 08026840::08026846 u8(0x07), 
	0802A20C::0802A20E u8(0x15), 0800A2E4?::0800A2E8 u16(0x32), 0800A2E4?::0800A2EC u16(0x32), 
	08026840::08026876 u8(0x0D), 0802A560::0802A566 u8(0x0D), 08026840::080268DA u8(0x0D), 
	08026840::08026920 u8(0x07), 08026840::08026924 u8(0x07), 0802A498::0802A4C2 u8(0x0D), 
	0802A408::0802A42C u8(0x0D), 0802A408::0802A43E u8(0x0D), 0802A59C::0802A5C4 u8(0x0D), 
	0802A408::0802A46E u8(0x0D), 0802A642::0802A64A u8(0x44), 0802A642::0802A652 u8(0x45), 
	08027E2C::08027E48 u8(0x17), 08027E2C::08027E5C u8(0x0D), 0802A5D6::0802A604 u8(0x0D), 
	0800AFBA::0800AFF4 u8(0x0D), 0800B022::0800B05C u8(0x0D), 080284E2::0802850C u8(0x0D), 
	08026B04::08026BAA u8(0x07), 0800A998::0800A9A0 u8(0x0D), 0800A998::0800A9B2 u32(0x90+0x00), 
	0802A21C::0802A248 u8(0x0D), 0802899C::080289A2 u8(0x17), 08029110::08029194 u8(0x0D), 
	08029110::080291FC u8(0x07), 080293F8::08029444 u8(0x44), 080293F8::0802944C u8(0x45), 
	080293F8::08029450 u8(0x45), 080293F8::08029438 u8(0x17), 0800A9D6?::0800A9DA u8(0x11), 
	0800A9D6?::0800A9DE u8(0x11), 08027D78::08027DAC u8(0x07), 0800B3A2::0800B3B8 u8(0x0D), 
	0801C082::0801C0BC u8(0x0D), 08009338::08009382 u8(0x01), 08009338::08009386 u16(0x02), 
	0800938A::0800938C u8(0x03), 0800938A::08009398 u8(0x03), 0800B090::0800B0A4 u8(0x0D), 
	0800A2D8?::0800A2DC u16(0x32), 0800A2D8?::0800A2E0 u16(0x32), 0800AE0C::0800AE12 u8(0x1C), 
	0800AE0C::0800AE14 u8(0x1B), 0800AE0C::0800AE32 u8(0x1D), 0800AE0C::0800AE40 u8(0x1C), 
	0800A6A6::0800A6C8 u32(0x40), 0800A6A6::0800A6D4 u32(0x40), 0800A152::0800A15E u8(0x0D), 
	0800A152::0800A160 u8(0x04), 0800A152::0800A170 u8(0x05), 0800A152::0800A180 u8(0x0B), 
	08007A44::08007AD8 u8(0x0E), 08007A44::08007AE2 u8(0x0E), 08007A44::08007AE4 u8(0x16), 
	08007A44::08007AEE u8(0x16), 0800C0BA::0800C0C2 u8(0x0D), 0800B090::0800B0E2 u8(0x0D), 
	0800938A::080093A8 u8(0x01), 0800938A::080093AC u16(0x02), 0800A704?::0800A708 u32(0x40), 
	0802A118::0802A124 u8(0x0D), 0800EBD4::0800EBE6 u32(0x90+0x00), 0802A642::0802A65E u8(0x44), 
	0800A11C?::0800A124 u8(0x12), 0800A11C?::0800A128 u8(0x12), 0800A11C?::0800A12E u32(0x80+0x00), 
	0800A11C?::0800A136 u32(0x80+0x00), 0800A0FE?::0800A114 u8(0x04), 0800A0FE?::0800A118 u8(0x04), 
	080080D2::0800812A u8(0x19), 080080D2::0800812E u8(0x19), 0800825A::08008272 u8(0x0D), 
	0800825A::08008278 u8(0x10), 0800938A::080093B6 u8(0x07), 0800A840::0800A846 u8(0x1F), 
	0800AC20::0800ACBA u8(0x1B), 0800938A::08009422 u8(0x1E), 0800938A::08009454 u8(0x01), 
	0800938A::08009458 u16(0x02), 080094DA::080094DC u8(0x03), 080094DA::08009504 u8(0x03), 
	080094DA::0800951A u32(0x00), 08007B80::08007B84 u8(0x01), 08007B9C::08007BA4 u8(0x02), 
	08007BD0::08007BD2 u8(0x03), 08007BD0::08007BDA u16(0x28), 08007BD0::08007BDE u8(0x03), 
	08007BD0::08007BE2 u16(0x28), 08007BD0::08007BE6 u16(0x28), 08007BD0::08007BEC u16(0x02), 
	08007C14::08007C46 u8(0x01), 08007C14::08007C4A u16(0x02), 0800FAE0::0800FAE6 u8(0x0D), 
	0800FAE0::0800FAF2 u16(0x34), 0800A86E::0800A878 u32(0x80+0x00), 08007CA0::08007D66 u16(0x34), 
	08007CA0::08007E5A u8(0x0A), 

	0800A9E2?::0800A9E8 u8(0x14), 08007204::08007216 u32(0x3C), 08007204::0800721A u8(0x0A), 
	0802D234::0802D23A u32(0x3C), 08007204::08007242 u8(0x1B), 080823C8::080823CE u32(0x3C), 
	0800A2F8::0800A30C u32(0x3C), 0800A2F8::0800A310 u8(0x0F), 0800A2F8::0800A314 u8(0x06), 
	080013A2?::080013A6 u32(0x5C), 08007800::08007810 u8(0x00), 0801FF18::0801FF6E u8(0x15), 
	0801FF18::0801FF94 u8(0x11), 08007850::0800790E u8(0x01), 0802D246::0802D24C u32(0x3C), 
	0800A2F0?::0800A2F4 u16(0x32), 0800794C::08007974 u8(0x01), 08007800::08007818 u32(0x60), 
	08007800::0800781C u32(0x60), 0800A832?::0800A836 u8(0x1F), 08007800::0800782C u8(0x0A), 
	0801FF18::0801FF3C u8(0x14), 08007978::0800797C u8(0x02), 0800799C::080079A4 u8(0x02), 
	080079A8::080079BC u8(0x0D), 0800B144::0800B152 u32(0x3C), 080079A8::080079C8 u8(0x02), 
	080079D0::080079E6 u8(0x02), 0802D26A::0802D270 u32(0x3C), 080079F0::080079F8 u8(0x06), 
	0800A3E4::0800A44C u8(0x17), 0800A3E4::0800A466 u8(0x44), 0800A3E4::0800A4C4 u8(0x17), 
	0800A3E4::0800A4CC u8(0x44), 0800A570::0800A64C u8(0x45), 080079F0::08007A04 u8(0x01), 
	080079F0::08007A08 u16(0x02), 08007A0C::08007A2E u32(0x3C), 08007A0C::08007A3C u32(0x00), 
	08009158::0800915C u8(0x01), 080091F0::080091F2 u8(0x03), 080091F0::08009202 u32(0x3C), 
	080091F0::08009206 u8(0x1A), 08007358::0800735A u32(0x3C), 08007778::0800778A u32(0x80+0x00), 
	08007778::08007790 u32(0x80+0x00), 08007778::0800779E u8(0x04), 08007778::080077A2 u8(0x04), 
	080077D2::080077E0 u8(0x08), 080077D2::080077E4 u8(0x08), 080077D2::080077EE u16(0x4C), 
	08007368::08007384 u16(0x04), 08007368::08007386 u16(0x12), 080AC0FC::080AC112 u32(0x90+0x00), 
	080091F0::0800922E u32(0x3C), 080091F0::0800923C u8(0x03), 08001382?::08001386 u32(0x5C), 
	08001382?::0800138A u32(0x5C), 080E19C0::080E19EA u32(0x3C), 0800A9EC?::0800A9F0 u8(0x0D), 
	0800FDC0::0800FDCA u32(0x80+0x00), 08007A44::08007B0A u32(0x64), 08007A44::08007B0E u32(0x64), 
	0800C01C::0800C024 u8(0x0D), 0800C100::0800C108 u8(0x0D), 080091F0::08009240 u8(0x02), 
	0800A7E2?::0800A7E6 u8(0x0D), 080091F0::0800924C u8(0x02), 0800139A?::0800139E u32(0x5C), 
	0800A18E?::0800A194 u8(0x12), 0800A18E?::0800A19A u8(0x13), 0800A18E?::0800A1A0 u8(0x0B), 
	08016934::08016968 u8(0x0D), 08016CA4::08016CB2 u8(0x0D), 080163B4::080163C0 u8(0x0D), 
	0802CE60?::0802CE64 u8(0x0D), 0801CADC::0801CAE8 u8(0x0D), 08016460::08016476 u8(0x0D), 
	080091F0::08009270 u8(0x01), 080091F0::08009274 u16(0x02), 080092A0::080092A4 u8(0x02), 
	080092C0::080092C2 u8(0x03), 080092C0::080092C8 u8(0x1A), 080092E6?::080092E8 u8(0x01), 
	080092E6?::080092EC u16(0x02), 08009338::0800933A u8(0x03), 0800A9CA?::0800A9CE u8(0x11), 
	0800A9CA?::0800A9D2 u8(0x11), 08009338::08009348 u8(0x03), 08026840::08026846 u8(0x07), 
	0802A20C::0802A20E u8(0x15), 0800A2E4?::0800A2E8 u16(0x32), 0800A2E4?::0800A2EC u16(0x32), 
	08026840::08026876 u8(0x0D), 0802A560::0802A566 u8(0x0D), 08026840::080268DA u8(0x0D), 
	08026840::08026920 u8(0x07), 08026840::08026924 u8(0x07), 0802A498::0802A4C2 u8(0x0D), 
	0802A408::0802A42C u8(0x0D), 0802A408::0802A43E u8(0x0D), 0802A59C::0802A5C4 u8(0x0D), 
	0802A408::0802A46E u8(0x0D), 0802A642::0802A64A u8(0x44), 0802A642::0802A652 u8(0x45), 
	0802A642::0802A65E u8(0x44), 08027E2C::08027E48 u8(0x17), 08027E2C::08027E5C u8(0x0D), 
	0802A5D6::0802A604 u8(0x0D), 0800AFBA::0800AFF4 u8(0x0D), 0800B022::0800B05C u8(0x0D), 
	080284E2::0802850C u8(0x0D), 08026B04::08026BAA u8(0x07), 0800A998::0800A9A0 u8(0x0D), 
	0800A998::0800A9B2 u32(0x90+0x00), 0802A21C::0802A248 u8(0x0D), 0802899C::080289A2 u8(0x17), 
	08029110::08029194 u8(0x0D), 08029110::080291FC u8(0x07), 080293F8::08029438 u8(0x17), 
	080293F8::08029444 u8(0x44), 0800A9D6?::0800A9DA u8(0x11), 0800A9D6?::0800A9DE u8(0x11), 
	08027D78::08027DAC u8(0x07), 0800B3A2::0800B3B8 u8(0x0D), 0801C082::0801C0BC u8(0x0D), 
	08009338::08009382 u8(0x01), 08009338::08009386 u16(0x02), 0800938A::0800938C u8(0x03), 
	0800938A::08009398 u8(0x03), 0800B090::0800B0A4 u8(0x0D), 0800B090::0800B0E2 u8(0x0D), 
	0800A2D8?::0800A2DC u16(0x32), 0800A2D8?::0800A2E0 u16(0x32), 0800AE0C::0800AE12 u8(0x1C), 
	0800AE0C::0800AE14 u8(0x1B), 0800AE0C::0800AE32 u8(0x1D), 0800AE0C::0800AE40 u8(0x1C), 
	0800A6A6::0800A6C8 u32(0x40), 0800A6A6::0800A6D4 u32(0x40), 0800A152::0800A15E u8(0x0D), 
	0800A152::0800A160 u8(0x04), 0800A152::0800A170 u8(0x05), 0800A152::0800A180 u8(0x0B), 
	08007A44::08007AD8 u8(0x0E), 08007A44::08007AE2 u8(0x0E), 08007A44::08007AE4 u8(0x16), 
	08007A44::08007AEE u8(0x16), 0800A11C?::0800A124 u8(0x13), 0800A11C?::0800A128 u8(0x13), 
	0800A11C?::0800A12E u32(0x80+0x00), 0800A11C?::0800A136 u32(0x90+0x00), 0800AE44?::0800AE48 u8(0x1C), 
	0800AE44?::0800AE4C u8(0x1C), 0800AE44?::0800AE50 u8(0x1D), 0800AE0C::0800AE1A u8(0x1B), 
	0800AE0C::0800AE3A u8(0x1D), 080077B4::080077BE u32(0x80+0x00), 0800A0FE?::0800A114 u8(0x05), 
	0800A0FE?::0800A118 u8(0x05), 080080D2::0800810A u16(0x3A), 080080D2::08008116 u8(0x18), 
	080080D2::0800811A u8(0x18), 080081A4::080081C4 u8(0x0D), 080081A4::080081C6 u8(0x10), 
	0800938A::080093B6 u8(0x07), 0800A840::0800A846 u8(0x1F), 0800A704?::0800A708 u32(0x40), 
	0800AC20::0800ACBA u8(0x1B), 0800938A::080093CC u8(0x1E), 0800B6F2::0800B712 u8(0x05), 
	0800B6F2::0800B71A u16(0x54+0x00), 0800938A::08009454 u8(0x01), 0800938A::08009458 u16(0x02), 
	0800945C::08009460 u8(0x02), 08009478::0800947A u8(0x03), 0802C8FA::0802C926 u8(0x1E), 
	0802C8FA::0802C94C u8(0x09), 080AC2AC::080AC2C2 u16(0x54+0x02), 080AC150::080AC174 u16(0x36), 
	08009478::08009486 u16(0x28), 08009478::0800948A u8(0x03), 080094A6?::080094A6 u16(0x28), 
	080094A6?::080094AA u16(0x28), 08009478::080094A2 u16(0x02), 080094B6::080094B8 u8(0x03), 
	0802C34E::0802C354 u8(0x0D), 080094B6::080094C6 u8(0x03), 0802C8EA?::0802C8EE u8(0x0D), 
	0802CA1E::0802CA32 u16(0x54+0x00), 080094B6::080094D2 u8(0x01), 080094B6::080094D6 u16(0x02), 
	080094DA::080094DC u8(0x03), 080094DA::08009504 u8(0x03), 080094DA::0800951A u32(0x00), 
	08007B80::08007B84 u8(0x01), 08007B9C::08007BA4 u8(0x02), 08007BD0::08007BD2 u8(0x03), 
	08007BD0::08007BDA u16(0x28), 08007BD0::08007BDE u8(0x03), 08007BD0::08007BE2 u16(0x28), 
	08007BD0::08007BE6 u16(0x28), 08007BD0::08007BEC u16(0x02), 08007C14::08007C46 u8(0x01), 
	08007C14::08007C4A u16(0x02), 0800FAE0::0800FAE6 u8(0x0D), 0800FAE0::0800FAF2 u16(0x34), 
	0800A86E::0800A878 u32(0x80+0x00), 08007CA0::08007D66 u16(0x34), 08007CA0::08007D84 u8(0x0D), 
	08007CA0::08007DA6 u8(0x0D), 08007CA0::08007DB0 u8(0x0D), 08007CA0::08007E5A u8(0x0A), 
	0800EBD4::0800EBE6 u32(0x90+0x00), 0800C0BA::0800C0C2 u8(0x0D), 0800938A::080093A8 u8(0x01), 
	0800938A::080093AC u16(0x02), 08110370::0811038A u32(0x90+0x00), 0800ABC6::0800ABDC u8(0x0D), 

Accesses*/

/*
	08001382? 0800139A? 080013A2? 08007204 08007358 
	08007368 08007778 080077B4 080077D2 08007800 
	08007850 0800794C 08007978 0800799C 080079A8 
	080079D0 080079F0 08007A0C 08007A44 08007B80 
	08007B9C 08007BD0 08007C14 08007CA0 080080D2 
	080081A4 0800825A 08009158 080091F0 080092A0 
	080092C0 080092E6? 08009338 0800938A 0800945C 
	08009478 080094A6? 080094B6 080094DA 0800A0FE? 
	0800A11C? 0800A152 0800A18E? 0800A2D8? 0800A2E4? 
	0800A2F0? 0800A2F8 0800A3E4 0800A570 0800A6A6 
	0800A704? 0800A7E2? 0800A832? 0800A840 0800A86E 
	0800A998 0800A9CA? 0800A9D6? 0800A9E2? 0800A9EC? 
	0800ABC6 0800AC20 0800AE0C 0800AE44? 0800AFBA 
	0800B022 0800B090 0800B144 0800B3A2 0800B6F2 
	0800C01C 0800C0BA 0800C100 0800EBD4 0800FAE0 
	0800FDC0 080163B4 08016460 08016934 08016CA4 
	0801C082 0801CADC 0801FF18 08026840 08026B04 
	08027D78 08027E2C 080284E2 0802899C 08029110 
	080293F8 0802A118 0802A20C 0802A21C 0802A408 
	0802A498 0802A560 0802A59C 0802A5D6 0802A642 
	0802C34E 0802C8EA? 0802C8FA 0802CA1E 0802CE60? 
	0802D234 0802D246 0802D26A 080823C8 080AC0FC 
	080AC150 080AC2AC 080E19C0 08110370 
Functions*/
#pragma endregion Accesses

#endif /* S_02034880_H */