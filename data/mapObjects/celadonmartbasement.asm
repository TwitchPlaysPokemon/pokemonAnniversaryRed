CeladonMartBasementObject: ; 0x485a8 (size=36)
	db $0F ; border block

	db $1 ; warps
	db $1, $3, $0, CELADON_MART_ELEVATOR

	db 1 ; signs
	db $1, $10, $8 ; Basement Sign

	db $7 ; people
	db SPRITE_MART_GUY, $8 + 4, $0 + 4, $ff, $d3, $1 ; person
	db SPRITE_MART_GUY, $B + 4, $3 + 4, $ff, $d1, $2 ; person
	db SPRITE_MART_GUY, $3 + 4, $8 + 4, $ff, $d0, $3 ; person
	db SPRITE_MART_GUY, $3 + 4, $B + 4, $ff, $d0, $4 ; person
	db SPRITE_MART_GUY, $B + 4, $10 + 4, $ff, $d1, $5 ; person
	db SPRITE_MART_GUY, $8 + 4, $13 + 4, $ff, $d2, $6 ; person
	db SPRITE_BLACK_HAIR_BOY_2, $7 + 4, $a + 4, $fc, $3, $7 ; person

	; warp-to
	EVENT_DISP CELADON_MART_BASEMENT_WIDTH, $1, $3 ; CELADON_MART_5
