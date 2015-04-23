LastIslandSummitObject: ; 0x1dd9b (size=38)
	db $03 ; border block

	db $1 ; warps
	db $6, $8, $4, LASTISLAND_2F

	db $0 ; signs

	db $1 ; people
	db SPRITE_SLOWBRO, $4 + 4, $4 + 4, $ff, $d0, TRAINER | $1, MEW, 80 ; person

	; warp-to
	EVENT_DISP LASTISLAND_SUMMIT_WIDTH, $6, $8
