LastIslandB1F_h:
	db CAVERN ; tileset
	db LASTISLAND_B1F_HEIGHT, LASTISLAND_B1F_WIDTH ; dimensions (y, x)
	dw LastIslandB1FBlocks, LastIslandB1FTextPointers, LastIslandB1FScript ; blocks, texts, scripts
	db $00 ; connections
	dw LastIslandB1FObject ; objects
