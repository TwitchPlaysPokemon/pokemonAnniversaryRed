UnknownDungeon3Script: ; 45ef0 (11:5ef0)
	call EnableAutoTextBoxDrawing
	ld hl, UnknownDungeon3TrainerHeaders
	ld de, UnknownDungeon3ScriptPointers
	ld a, [W_UNKNOWNDUNGEON3CURSCRIPT]
	call ExecuteCurMapScriptInTable
	ld [W_UNKNOWNDUNGEON3CURSCRIPT], a
	ld a, [wReappearCounter + 1] ; Mewtwo
	swap a
	and $f
	ret nz ; it's not appeared yet
	ld hl, wRanFlag
	bit 3, [hl]
	ret z
	res 3, [hl]
	ld bc, 1
	ld hl, wd85f
	predef FlagActionPredef
	ld a, HS_MEWTWO
	ld [wcc4d], a
	predef_jump ShowObject ; Show the legendary mon

UnknownDungeon3ScriptPointers: ; 45f03 (11:5f03)
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

UnknownDungeon3TextPointers: ; 45f09 (11:5f09)
	dw UnknownDungeon3Text1
	dw Predef5CText
	dw Predef5CText

UnknownDungeon3TrainerHeaders: ; 45f0f (11:5f0f)
UnknownDungeon3TrainerHeader0: ; 45f0f (11:5f0f)
	db $1 ; flag's bit
	db ($0 << 4) ; trainer's view range
	dw wd85f ; flag's byte
	dw UnknownDungeon3MewtwoText ; 0x5f26 TextBeforeBattle
	dw UnknownDungeon3MewtwoText ; 0x5f26 TextAfterBattle
	dw UnknownDungeon3MewtwoText ; 0x5f26 TextEndBattle
	dw UnknownDungeon3MewtwoText ; 0x5f26 TextEndBattle

	db $ff

UnknownDungeon3Text1: ; 45f1c (11:5f1c)
	db $08 ; asm
	ld hl, UnknownDungeon3TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon3MewtwoText: ; 45f26 (11:5f26)
	TX_FAR _UnknownDungeon3MewtwoText
	db $8
	ld a, MEWTWO
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
