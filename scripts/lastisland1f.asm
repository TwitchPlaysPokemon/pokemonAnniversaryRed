LastIsland1FScript:
	call EnableAutoTextBoxDrawing
	ld a, LASTISLAND_B1F
	ld [wDungeonWarpDestinationMap], a
	ld hl, LastIsland1FHolesCoords
	jp Func_46981_2
	
LastIsland1FHolesCoords:
	db $0D,$05
	db $05,$06
	db $0D,$06
	db $07,$0A
	db $0B,$0D
	db $0E,$0E
	db $0C,$10
	db $09,$11
	db $02,$16
	db $0E,$18
	db $ff

LastIsland1FTextPointers:
	dw LastIsland1FText1
	
LastIsland1FText1:
	TX_FAR _LastIsland1FText1
	db "@"