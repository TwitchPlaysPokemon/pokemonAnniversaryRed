LastIsland2F_h:
	db CAVERN ; tileset
	db LASTISLAND_2F_HEIGHT, LASTISLAND_2F_WIDTH ; dimensions (y, x)
	dw LastIsland2FBlocks, LastIsland2FTextPointers, LastIsland2FScript ; blocks, texts, scripts
	db $00 ; connections
	dw LastIsland2FObject ; objects
