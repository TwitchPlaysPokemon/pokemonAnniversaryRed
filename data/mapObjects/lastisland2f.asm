LastIsland2FObject: ; 0x1dd9b (size=38)
	db $03 ; border block

	db $5 ; warps
	db $a, $8, $3, LASTISLAND_1F
	db $2, $a, $4, LASTISLAND_1F
	db $d, $17, $5, LASTISLAND_1F
	db $8, $18, $6, LASTISLAND_1F
	db $3, $17, $0, LASTISLAND_SUMMIT
	
	db $0 ; signs

	db $0 ; people

	; warp-to
	EVENT_DISP LASTISLAND_2F_WIDTH, $a, $8
	EVENT_DISP LASTISLAND_2F_WIDTH, $2, $a
	EVENT_DISP LASTISLAND_2F_WIDTH, $d, $17
	EVENT_DISP LASTISLAND_2F_WIDTH, $8, $18
	EVENT_DISP LASTISLAND_2F_WIDTH, $3, $17
