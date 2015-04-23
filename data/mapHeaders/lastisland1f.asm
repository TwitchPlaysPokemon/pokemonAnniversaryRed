LastIsland1F_h:
	db CAVERN ; tileset
	db LASTISLAND_1F_HEIGHT, LASTISLAND_1F_WIDTH ; dimensions (y, x)
	dw LastIsland1FBlocks, LastIsland1FTextPointers, LastIsland1FScript ; blocks, texts, scripts
	db $00 ; connections
	dw LastIsland1FObject ; objects