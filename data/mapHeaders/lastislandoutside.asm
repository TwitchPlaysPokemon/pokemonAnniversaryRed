LastIslandOutside_h:
	db OVERWORLD ; tileset
	db LASTISLAND_OUTSIDE_HEIGHT, LASTISLAND_OUTSIDE_WIDTH ; dimensions (y, x)
	dw LastIslandOutsideBlocks, LastIslandOutsideTextPointers, LastIslandOutsideScript ; blocks, texts, scripts
	db $00 ; connections
	dw LastIslandOutsideObject ; objects