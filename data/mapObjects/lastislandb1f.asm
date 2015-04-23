LastIslandB1FObject: ; 0x1dd9b (size=38)
	db $03 ; border block

	db $2 ; warps
	db $3, $3, $1, LASTISLAND_1F
	db $3, $19, $2, LASTISLAND_1F

	db $0 ; signs

	db $0 ; people

	; warp-to
	EVENT_DISP LASTISLAND_B1F_WIDTH, $3, $3
	EVENT_DISP LASTISLAND_B1F_WIDTH, $3, $19