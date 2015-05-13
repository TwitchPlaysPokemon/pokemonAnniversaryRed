CeladonMartBasement_h: 
	db LOBBY ; tileset
	db CELADON_MART_BASEMENT_HEIGHT, CELADON_MART_BASEMENT_WIDTH ; dimensions (y, x)
	dw CeladonMartBasementBlocks, CeladonMartBasementTextPointers, CeladonMartBasementScript ; blocks, texts, scripts
	db $00 ; connections
	dw CeladonMartBasementObject ; objects
