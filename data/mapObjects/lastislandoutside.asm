LastIslandOutsideObject: ; 0x1dd9b (size=38)
	db $43 ; border block

	db $3 ; warps
	db $e, $c, $5, VERMILION_CITY
	db $e, $d, $6, VERMILION_CITY
	db $5, $6, $0, LASTISLAND_1F

	db $0 ; signs

	db $1 ; people
	db SPRITE_SAILOR, $e + 4, $d + 4, $ff, $d2, $1 ; person

	; warp-to
	EVENT_DISP LASTISLAND_OUTSIDE_WIDTH, $e, $c
	EVENT_DISP LASTISLAND_OUTSIDE_WIDTH, $e, $d
	EVENT_DISP LASTISLAND_OUTSIDE_WIDTH, $5, $6
