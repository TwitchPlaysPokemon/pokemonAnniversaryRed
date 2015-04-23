BattleTent_h:
	db CLUB ; tileset
	db BATTLE_TENT_HEIGHT, BATTLE_TENT_WIDTH ; dimensions (y, x)
	dw BattleTentBlocks, BattleTentTextPointers, BattleTentScript ; blocks, texts, scripts
	db $00 ; connections
	dw BattleTentObject ; objects
