BattleTentObject: ; 0x1dd9b (size=38)
	db $e ; border block

	db $2 ; warps TBD
	db $13, $2, $8, CELADON_CITY
	db $13, $3, $8, CELADON_CITY

	db $0 ; signs

	db $4 ; people TBD
	db SPRITE_WAITER, $E + 4, $2 + 4, $ff, $d0, $1 ; person
	db SPRITE_MART_GUY, $E + 4, $7 + 4, $ff, $d0, $2 ; person
	db SPRITE_WAITER, $4 + 4, $2 + 4, $ff, $d3, $3 ; person
	db SPRITE_BUG_CATCHER, $4 + 4, $a + 4, $ff, $d2, $4; person

	; warp-to
	EVENT_DISP BATTLE_TENT_WIDTH, $13, $2
	EVENT_DISP BATTLE_TENT_WIDTH, $13, $3
