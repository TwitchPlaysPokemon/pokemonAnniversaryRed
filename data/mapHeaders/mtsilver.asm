MtSilver_h: ; 0x49202 to 0x4920e (12 bytes) (bank=12) (id=139)
	db CAVERN ; tileset
	db MTSILVER_HEIGHT, MTSILVER_WIDTH ; dimensions (y, x)
	dw MtSilverBlocks, MtSilverTextPointers, MtSilverScript ; blocks, texts, scripts
	db $00 ; connections
	dw MtSilverObject ; objects
