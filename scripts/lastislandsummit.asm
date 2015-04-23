LastIslandSummitScript:
	call EnableAutoTextBoxDrawing
	ld hl, LastIslandSummitTrainerHeaders
	ld de, LastIslandSummitScriptPointers
	ld a, [W_LASTISLANDCURSCRIPT]
	call ExecuteCurMapScriptInTable
	ld [W_LASTISLANDCURSCRIPT], a
	ld a, [wReappearCounter + 2] ; Mew
	and $f
	ret nz ; it's not appeared yet
	ld hl, wRanFlag
	bit 4, [hl]
	ret z
	res 4, [hl]
	ld bc, MEWTRAINERFLAG
	ld hl, wRoamingFlag
	predef FlagActionPredef
	ld a, HS_MEW
	ld [wcc4d], a
	predef_jump ShowObject ; Show the legendary mon

LastIslandSummitScriptPointers: ; 1e2d9 (7:62d9)
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

LastIslandSummitTextPointers:
	dw LastIslandSummitText1
	
LastIslandSummitTrainerHeaders:
LastIslandSummitTrainerHeader0:
	db MEWTRAINERFLAG
	db ($0 << 4) ; trainer's view range
	dw wRoamingFlag
	dw LastIslandSummitMew ; TextBeforeBattle
	dw LastIslandSummitMew ; TextAfterBattle
	dw LastIslandSummitMew ; TextEndBattle
	dw LastIslandSummitMew ; TextEndBattle
	
	db $ff
	
LastIslandSummitText1:
	db $08 ; asm
	ld hl, LastIslandSummitTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd
	
LastIslandSummitMew:
	TX_FAR _UnknownDungeon3MewtwoText ; Mew!
	db $8
	ld a, MEW
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
	