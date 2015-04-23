LastIsland1FObject: ; 0x1dd9b (size=38)
	db $03 ; border block

	db $7 ; warps
	db $10, $0, $5, VERMILION_CITY
	db $3, $3, $0, LASTISLAND_B1F
	db $2, $1a, $1, LASTISLAND_B1F
	db $b, $b, $0, LASTISLAND_2F
	db $5, $f, $1, LASTISLAND_2F
	db $d, $17, $2, LASTISLAND_2F
	db $7, $1a, $3, LASTISLAND_2F

	db $1 ; signs
	db $D, $3, $1 ; LastIsland1FText1

	db $0 ; people

	; warp-to
	EVENT_DISP LASTISLAND_1F_WIDTH, $10, $0
	EVENT_DISP LASTISLAND_1F_WIDTH, $3, $3
	EVENT_DISP LASTISLAND_1F_WIDTH, $2, $1a
	EVENT_DISP LASTISLAND_1F_WIDTH, $b, $b
	EVENT_DISP LASTISLAND_1F_WIDTH, $5, $f
	EVENT_DISP LASTISLAND_1F_WIDTH, $d, $17
	EVENT_DISP LASTISLAND_1F_WIDTH, $7, $1a ; to isolated platform
