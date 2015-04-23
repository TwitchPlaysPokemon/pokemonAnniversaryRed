LastIslandSummit_h:
	db CAVERN ; tileset
	db LASTISLAND_SUMMIT_HEIGHT, LASTISLAND_SUMMIT_WIDTH ; dimensions (y, x)
	dw LastIslandSummitBlocks, LastIslandSummitTextPointers, LastIslandSummitScript ; blocks, texts, scripts
	db $00 ; connections
	dw LastIslandSummitObject ; objects
