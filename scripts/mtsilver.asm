MtSilverScript:
	call EnableAutoTextBoxDrawing
	ld hl, MtSilverTrainerHeaders
	ld de, MtSilverScriptPointers
	ld a, [W_MTSILVERCURSCRIPT]
	call ExecuteCurMapScriptInTable
	ld [W_MTSILVERCURSCRIPT], a
	ret
	
MtSilverScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw TehUrn_TPPRed
	
TehUrn_TPPRed:
	ld [TPPREDBATTLE], a
	call EndTrainerBattle
	ld a, [W_ISINBATTLE] ; W_ISINBATTLE
	cp $ff
	jp z, ResetButtonPressedAndMapScript
	call UpdateSprites
	ld a, $f0
	ld [wJoyIgnore], a
	ld a, $2
	ld [H_SPRITEHEIGHT], a
	call DisplayTextID
	call GBFadeOutToBlack
	ld a, HS_TPP_RED
	ld [wcc4d], a
	predef HideObject
	call UpdateSprites
	ld c, 30
	call DelayFrames
	call GBFadeInFromBlack
	ld c, 60
	call DelayFrames
	xor a
	ld [wJoyIgnore], a
	ld [W_MTSILVERCURSCRIPT], a
	ld [W_CURMAPSCRIPT], a
	ld [wd732], a
	call GBFadeOutToWhite
	callba SpecialWarpIn
	ld c, 60
	call DelayFrames
	callba SpecialEnterMap
	jp GBFadeInFromWhite

MtSilverTextPointers:
	dw TPPRedText
	dw Red12dots

MtSilverTrainerHeaders:
	db TPPREDBATTLE ; flag's bit
	db ($0 << 4) ; trainer's view range
	dw wRoamingFlag ; flag's byte
	dw Red12dots ; TextBeforeBattle
	dw Red12dots ; TextAfterBattle
	dw Red3dotsText ; TextEndBattle
	dw Red3dotsText ; again i guess

	db $ff
	
TPPRedText: ; 5a3a4 (16:63a4)
	db $08 ; asm
	ld hl, MtSilverTrainerHeaders
	call TalkToTrainer
	jp TextScriptEnd
	
Red12dots:
	TX_FAR _Red12dots
	db "@"

Red3dotsText:
	TX_FAR _Red3dots
	db "@"
