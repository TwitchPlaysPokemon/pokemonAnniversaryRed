LastIsland2FScript:
	call EnableAutoTextBoxDrawing
	ld a, LASTISLAND_1F
	ld [wDungeonWarpDestinationMap], a
	ld hl, LastIsland2FHolesCoords
	jp Func_46981_2
	
LastIsland2FHolesCoords:
	db $0D,$03
	db $0C,$05
	db $05,$05
	db $0D,$06
	db $07,$07
	db $0C,$09
	db $04,$08
	db $0C,$0F
	db $06,$0C
	db $08,$11
	db $02,$13
	db $08,$15
	db $0D,$18
	db $06,$19
	db $ff

LastIsland2FTextPointers:
	db "@"