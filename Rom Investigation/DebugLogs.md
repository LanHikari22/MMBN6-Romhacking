[address]!
[address]?

Subroutines that access a pointer:
	Subroutines that access pCurrBattle (0x020348BC):
		0x00000B4C
		0x08007204
		0x0802D234  br@0802D23C br@0802D24E

	Subroutines that access pCurrScript (0x02009CFC):
		0x00000B4C
		0x08040358
		0x0803FF24  br@0802FF2C
		0x0803FF24? br@0803FFA6 (After bx)

	Subroutines that access pCurrBattleData(0x02001B9C):
		0x080014EC  br@080014F4
		0x0800531C  br@08005346


How the game accesses a pointer:
	pCurrBattle (0x020348BC) accessed as:
		0x080B0860[0x18][0x3C]

	pCurrScript (0x02009CFC) accessed as:
		0x02009CD0[0x2C]

	pCurrBattleData(0x02001B9C) accessed as:
		0x02001B80[0x1C]