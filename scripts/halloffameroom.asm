HallofFameRoomScript: ; 5a49e (16:649e)
	call EnableAutoTextBoxDrawing
	ld hl, HallofFameRoomScriptPointers
	ld a, [W_HALLOFFAMEROOMCURSCRIPT]
	jp CallFunctionInTable

HallofFameRoomScript_5a4aa: ; 5a4aa (16:64aa)
	xor a
	ld [wJoyIgnore], a
	ld a, $3
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ret

HallofFameRoomScriptPointers: ; 5a4b2 (16:64b2)
	dw HallofFameRoomScript0
	dw HallofFameRoomScript1
	dw HallofFameRoomScript2
	dw HallofFameRoomScript3
	dw InitOakBattle
	dw InitOakBattle2
	dw AfterOakBattle
	dw AfterOakBattle2

HallofFameRoomScript3: ; 5a4ba (16:64ba)
	ret

HallofFameRoomScript2: ; 5a4bb (16:64bb)
	call Delay3
	ld a, [wd358]
	push af
	xor a
	ld a, $fc
	ld [wJoyIgnore], a
	predef HallOfFamePC
	pop af
	ld [wd358], a
	ld hl, W_FLAGS_D733
	res 1, [hl]
	inc hl
	set 0, [hl]
	xor a
	ld hl, W_LORELEICURSCRIPT
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [W_LANCECURSCRIPT], a
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ld [wJoyIgnore], a
	ld a, PALLET_TOWN
	ld [wLastBlackoutMap], a
	callba SaveSAVtoSRAM
	rst IsOakable
	jr nz, .nottehurn
	ld c, 180
	call DelayFrames
	ld a, MUSIC_LEECH
	ld c, BANK(Music_Leech)
	call PlayMusic
	ld b, 6
.wait13sec
	ld c, 130
	call DelayFrames
	dec b
	jr nz, .wait13sec
	jpba PlayHackCredits
.nottehurn
	ld b, 5
.asm_5a4ff
	ld c, 600 / 5
	call DelayFrames
	dec b
	jr nz, .asm_5a4ff ; 0x5a505 $f8
	call WaitForTextScrollButtonPress
	jp Init

HallofFameRoomScript0: ; 5a50d (16:650d)
	ld a, $ff
	ld [wJoyIgnore], a
	xor a
	ld hl, wd863 ; reset E4 (have to do this before in case we lose to Oak)
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	callba Music_Cities1AlternateTempo2 ; the game somehow failed to override the music loading engine
	; lots of game progress checkup
	ld a, [wd5a2] ; HOF data
	and a
	jr z, .skip
	ld hl, wPokedexOwned ; Pokedex
	ld b, wPokedexOwnedEnd - wPokedexOwned
	call CountSetBits
	ld a, [wd11e]
	cp 151 ; Catch all 151 or riot!
	jr c, .skip
	rst IsOakable
	jr nz, .skip
	ld a, $ff
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, RLEMovementOakBattle
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $4
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ret
.skip
	ld hl, wSimulatedJoypadStatesEnd
	ld de, RLEMovement5a528
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $1
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ret

RLEMovement5a528: ; 5a528 (16:6528)
	db $40,$5
	db $ff
	
RLEMovementOakBattle:
	db D_UP, 3, $ff

MovementData_OakBattle:
	db 0, 0, $ff
	
MovementData_OakBattle2:
	db $40, $40, $ff

HallofFameRoomScript1: ; 5a52b (16:652b)
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld a, $ff
	ld [wJoyIgnore], a
	ld a, $1
	ld [wd528], a
	ld a, $1
	ld [$ff8c], a
	call SetSpriteMovementBytesToFF
	ld a, $8
	ld [$ff8d], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3
	ld a, $fc ; setting this to ff won't let the player scroll the text!
	ld [wJoyIgnore], a
	xor a
	inc a
	ld [wd528], a
	ld a, $1
	ld [$ff8c], a
	call DisplayTextID
	ld a, $ff
	ld [wJoyIgnore], a
	ld a, HS_UNKNOWN_DUNGEON_GUY
	ld [wcc4d], a
	predef HideObject
	ld a, $2
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ret
	
InitOakBattle:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld a, $ff
	ld [wJoyIgnore], a
	ld a, 1
	ld [$ff8c], a
	ld de, MovementData_OakBattle
	call MoveSprite
	ld a, $5
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ret
	
InitOakBattle2:
	ld a, $ff
	ld [wJoyIgnore], a
	ld a, [wcf0f]
	and a
	ret nz
	ld a, $fc
	ld [wJoyIgnore], a
	call RedOakFace2Face
	ld [wJoyIgnore], a
	ld a, $2
	ld [$ff8c], a
	call DisplayTextID
	call Delay3
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, OakVictorySpeech
	ld de, OakVictorySpeech
	call SaveEndBattleTextPointers
	ld a, PROF_OAK + $c8
	ld [W_CUROPPONENT], a
	
	; select which team to use during the encounter
	ld a, [W_RIVALSTARTER]
	cp STARTER2
	jr nz, .NotSquirtle ; 0x75f9f $4
	ld a, $1
	jr .done
.NotSquirtle
	cp STARTER3
	jr nz, .Charmander ; 0x75fa7 $4
	ld a, $2
	jr .done
.Charmander
	ld a, $3
.done
	ld [W_TRAINERNO], a

	xor a
	ld [hJoyHeld], a
	ld a, $6
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ret
	
AfterOakBattle:
	ld a, [W_ISINBATTLE]
	cp $ff
	jp nz, .tehurn
	xor a
	ld [wJoyIgnore], a
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ret
.tehurn
	callba Music_Cities1AlternateTempo
	call UpdateSprites ; move sprites
	ld a, $ff
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, RLEMovementOakBattle
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $1
	ld [$ff8c], a
	ld de, MovementData_OakBattle2
	call MoveSprite
	ld a, $7
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ret
	
AfterOakBattle2:
	ld a, $ff
	ld [wJoyIgnore], a
	ld a, [wSimulatedJoypadStatesIndex]
	ld b, a
	ld a, [wcf0f]
	or b
	ret nz
	call RedOakFace2Face
	ld a, $1
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ret
	
RedOakFace2Face:
	ld a, $0
	ld [$ff8c], a
	ld a, $c
	ld [$ff8d], a
	call SetSpriteFacingDirection
	ld a, $1
	ld [$ff8c], a
	ld a, $8
	ld [$ff8d], a
	jp SetSpriteFacingDirectionAndDelay

HallofFameRoomTextPointers: ; 5a56a (16:656a)
	dw HallofFameRoomText1
	dw OakPreBattleText
	
HallofFameRoomText1:
	db $8
	ld hl, HallofFameRoomText1_int
	call PrintText
	rst IsOakable
	ld hl, HallofFameRoomText1_norm
	jr nz, .skip
	ld hl, HallofFameRoomText1_tehurn
.skip
	call PrintText
	jp TextScriptEnd

HallofFameRoomText1_int: ; 5a56c (16:656c)
	TX_FAR _HallofFameRoomText1
	db "@"
	
HallofFameRoomText1_norm: ; 5a56c (16:656c)
	TX_FAR _HallofFameRoomText1_norm
	db "@"
	
HallofFameRoomText1_tehurn: ; 5a56c (16:656c)
	TX_FAR _HallofFameRoomText1_tehurn
	db "@"
	
OakPreBattleText:
	TX_FAR _OakPreBattleText
	db "@"
	
OakVictorySpeech:
	TX_FAR _OakVictorySpeech
	db "@"