; Animation Engine

BattleTransition_TPPRed:
	; duration may not be accurate because of some
	; long-running codes like random tiles generation
	
	; prepare for animation #1
	; duration - 7 frames (0.12 seconds)
	
	ld hl, vChars2 + $500
	ld de, TPPRedTransitionTiles
	ld bc, (BANK(TPPRedTransitionTiles) << 8) + $08
	call CopyVideoDataDouble
	xor a
	ld [H_AUTOBGTRANSFERDEST], a
	ld [hSCX], a
	ld [hSCY], a
	
	ld a, vBGMap0 / $100
	ld [H_AUTOBGTRANSFERDEST + 1], a
	ld a, 1
	ld [H_AUTOBGTRANSFERENABLED], a
	call Delay3 ; copy current tiles to the BGMap0 too
	ld a, $90
	ld [hWY], a ; get rid of a window, it will be used for black scrolling
	ld a, vBGMap1 / $100
	ld [H_AUTOBGTRANSFERDEST + 1], a
	; fill BGMap1 with black tiles
	ld hl, wTileMap
	ld bc, 20 * 18
	ld a, $57 ; black tile
	call FillMemory
	call Delay3 ; wait for transfer to complete
	
	; animation #1 - black wipe from bottom
	; duration - 48 frames (0.8 seconds)
	
	ld b, $90
.anim1loop
	call DelayFrame
	ld a, b
	ld [hWY], a
	sub 3
	ld b, a
	jr nc, .anim1loop
	xor a
	ld [hWY], a
	call DelayFrame
	
	; prepare for animation #2
	; duration - 6 frames (0.1 seconds)
	
	ld a, vBGMap0 / $100
	ld [H_AUTOBGTRANSFERDEST + 1], a
	call GenRandomCommandTiles
	call Delay3 ; wait for transfer to complete
	ld a, (vBGMap0 + $1c0) / $100
	ld [H_AUTOBGTRANSFERDEST + 1], a
	ld a, (vBGMap0 + $1c0) % $100
	ld [H_AUTOBGTRANSFERDEST], a
	call GenRandomCommandTiles
	call Delay3 ; wait for transfer to complete
	xor a
	ld [H_AUTOBGTRANSFERENABLED], a ; no more transfers needed now
	
	; animation #2 - revealing the command chaos
	; duration - 144 frames (2.4 seconds)
	
	ld bc, 0 ; b = hWY, c = frame count
	ld de, $1 ; d = hSCY, e = rate
.anim2loop
	call DelayFrameWithCommandChaos
	ld a, b
	ld [hWY], a
	inc b
	ld a, b
	cp $90
	jr nz, .anim2loop
	ld [hWY], a
	
	; animation #3 - increasing the command chaos speed
	; duration - 288 frames (4.8 seconds)
	
	ld c, 0 ; reset the counter
.anim3loop
	call DelayFrameWithCommandChaos
	ld a, c
	and $1f ; increase every 32 frames
	jr nz, .anim3loop
	inc e
	ld a, e
	cp 10
	jr nz, .anim3loop
	
	; restore the original transfer destination
	ld a, vBGMap1 / $100
	ld [H_AUTOBGTRANSFERDEST + 1], a
	xor a
	ld [H_AUTOBGTRANSFERDEST], a
	jp GBFadeOutToWhite
	
GenRandomCommandTiles:
	; used for TPP Red battle transition
	ld hl, wTileMap
	ld d, 20 * 18 / 2
.loop
	; quick dsum random
	ld a, [rDIV]
	ld b, a
	ld a, [hRandomAdd]
	adc b
	ld [hRandomAdd], a
	ld b, a
	
	ld a, b
	and $7
	add $50
	ld [hli], a
	ld a, b
	swap a
	and $7
	add $50
	ld [hli], a
	dec d
	jr nz, .loop
	ret
	
DelayFrameWithCommandChaos:
	; used for TPP Red battle transition
	inc c
	ld a, d
	add e
	ld [hSCY], a
	ld d, a
	jp DelayFrame
	
; this is moved here because home bank is filled up
_PlaceMenuCursor:
	ld a,[wTopMenuItemY]
	and a ; is the y coordinate 0?
	jr z,.adjustForXCoord
	ld hl,wTileMap
	ld bc,SCREEN_WIDTH
.topMenuItemLoop
	add hl,bc
	dec a
	jr nz,.topMenuItemLoop
.adjustForXCoord
	ld a,[wTopMenuItemX]
	ld b,0
	ld c,a
	add hl,bc
	push hl
	ld a,[wLastMenuItem]
	and a ; was the previous menu id 0?
	jr z,.checkForArrow1
	push af
	ld a,[$fff6]
	bit 1,a ; is the menu double spaced?
	jr z,.doubleSpaced1
	ld bc,20
	jr .getOldMenuItemScreenPosition
.doubleSpaced1
	ld bc,40
.getOldMenuItemScreenPosition
	pop af
.oldMenuItemLoop
	add hl,bc
	dec a
	jr nz,.oldMenuItemLoop
.checkForArrow1
	ld a,[hl]
	cp a,"▶" ; was an arrow next to the previously selected menu item?
	jr nz,.skipClearingArrow
.clearArrow
	ld a,[wTileBehindCursor]
	ld [hl],a
.skipClearingArrow
	pop hl
	ld a,[wCurrentMenuItem]
	and a
	jr z,.checkForArrow2
	push af
	ld a,[$fff6]
	bit 1,a ; is the menu double spaced?
	jr z,.doubleSpaced2
	ld bc,20
	jr .getCurrentMenuItemScreenPosition
.doubleSpaced2
	ld bc,40
.getCurrentMenuItemScreenPosition
	pop af
.currentMenuItemLoop
	add hl,bc
	dec a
	jr nz,.currentMenuItemLoop
.checkForArrow2
	ld a,[hl]
	cp a,"▶" ; has the right arrow already been placed?
	jr z,.skipSavingTile ; if so, don't lose the saved tile
	ld [wTileBehindCursor],a ; save tile before overwriting with right arrow
.skipSavingTile
	ld a,"▶" ; place right arrow
	ld [hl],a
	ld a,l
	ld [wMenuCursorLocation],a
	ld a,h
	ld [wMenuCursorLocation + 1],a
	ld a,[wCurrentMenuItem]
	ld [wLastMenuItem],a
	ret
	
delayc: MACRO
	ld bc, \1
	call Delay_S
ENDM
	
PlayHackCredits::
	call LoadFontTilePatterns
	ld de, TheEndGfx
	ld hl, vChars0
	ld bc, (BANK(TheEndGfx) << 8) + $0e
	call CopyVideoData
	ld de, HackCreditScrollerGFX
	ld hl, vChars0 + $100
	ld bc, (BANK(HackCreditScrollerGFX) << 8) + $10
	call CopyVideoData
	ld de, ThanksForWatchingGFX
	ld hl, vChars2
	ld bc, (BANK(ThanksForWatchingGFX) << 8) + $30
	call CopyVideoData
	ld hl, rLCDC
	set 2, [hl] ; enable the 8x16 sprite mode
	ld a, $e4
	ld [rBGP], a
	ld [rOBP0], a
	ld hl, TehUrnOAMTable
	ld bc, 4 * 6
	ld de, wOAMBuffer
	call CopyData
	hlCoord 4, 8
	ld bc, $20c
	call ClearScreenArea
	delayc 3
	ld hl, wOAMBuffer
	ld bc, $1006
	ld de, 4
.moveuploop
	dec [hl]
	add hl, de
	dec c
	jr nz, .moveuploop
	call DelayFrame_Credits
	ld hl, wOAMBuffer
	ld c, 6
	dec b
	jr nz, .moveuploop
	hlCoord 4, 6
	ld de, TehUrnTextString2
	call PlaceString
	hlCoord 4, 7
	inc de
	call PlaceString
	delayc 3
	call ClearSprites
	ld hl, rLCDC
	res 2, [hl] ; enable the 8x8 sprite mode
	call ResetScroller

PlayHackCreditsLoop:
	delayc 200
	ld hl, HackCreditsText
.playcredits
	ld a, [hli]
	cp $ff
	jp z, ShowThanksForWatching
	ld b, a
	ld a, [hli]
	ld c, a
	ld d, h
	ld e, l
.skiploop
	ld a, [hli]
	cp "@"
	jr nz, .skiploop
	ld a, [hli]
	push bc
	ld b, a
	xor a
	ld [wRemFuncArg], a
	ld a, 1
	
.topscroll
	push af
	push hl
	push bc
	ld hl, wOAMBuffer + 1
	ld b, 4
	call ApplyScrollerMod
	and $7
	pop bc
	pop hl
	jr nz, .skipprint
	push hl
	ld hl, wRemFuncArg
	ld a, [hl]
	inc [hl]
	haCoord 9
	ld a, c
	and a
	jr z, .printde
	dec c
	jr .skipde
.printde
	ld a, [de]
	cp "@"
	jr z, .skipde
	ld [hl], a
	inc de
	jr .skip7f
.skipde
	ld a, $7f
	ld [hl], a
.skip7f
	pop hl
	push de
	ld a, [wRemFuncArg]
	dec a
	daCoord 11
	ld a, b
	and a
	jr z, .printhl
	dec b
	jr .skiphl
.printhl
	ld a, [hl]
	cp "@"
	jr z, .skiphl
	ld [de], a
	inc hl
	jr .skip7f2
.skiphl
	ld a, $7f
	ld [de], a
.skip7f2
	pop de
.skipprint
	call DelayFrame_Credits
	pop af
	inc a
	cp $a9
	jr nz, .topscroll
.finishsub
	delayc 300
	pop bc
	inc hl
	dec b
	jp z, .playcredits
	
	call ResetScroller
	ld a, [hli]
	push bc
	ld b, a
	xor a
	ld [wRemFuncArg], a
	ld a, 1
.bottomscroll
	push af
	push hl
	push bc
	ld hl, wOAMBuffer + $11
	ld b, 2
	call ApplyScrollerMod
	and $7
	pop bc
	pop hl
	jr nz, .skipprint2
	push hl
	ld hl, wRemFuncArg
	ld a, [hl]
	inc [hl]
	pop hl
	daCoord 11
	ld a, b
	and a
	jr z, .printhl2
	dec b
	jr .skiphl2
.printhl2
	ld a, [hl]
	cp "@"
	jr z, .skiphl2
	ld [de], a
	inc hl
	jr .skipprint2
.skiphl2
	ld a, $7f
	ld [de], a
.skipprint2
	call DelayFrame_Credits
	pop af
	inc a
	cp $a9
	jr nz, .bottomscroll
	jr .finishsub

ShowThanksForWatching:
	call ResetScroller
	xor a
	ld [wRemFuncArg], a
	inc a
.loop
	ld hl, wOAMBuffer + 1
	ld b, 4
	call ApplyScrollerMod
	push af
	and $7
	jr nz, .skip
	ld hl, wRemFuncArg
	ld a, [hl]
	inc [hl]
	haCoord 9
	ld c, a
	ld b, 3
	ld de, 20
	ld a, [wRemFuncArg]
	dec a
	cp 2
	jr c, .load7f
	cp 18
	jr nc, .load7f
	ld a, c
	sub 2
	jr .place
.load7f
	ld a, $7f
	ld [hl], a
	add hl, de
	dec b
	jr nz, .load7f
	jr .skip
.place
	ld [hl], a
	add hl, de
	add $10
	dec b
	jr nz, .place
.skip
	call DelayFrame_Credits
	pop af
	inc a
	cp $a9
	jr nz, .loop
	; Anax told me not to do repeated credits, welp.
.forever
	call DelayFrame_Credits
	jr .forever
	delayc 36000 ; 10 minutes
	
AfterThanksForWatching:
	ld a, MUSIC_LEECH
	ld c, BANK(Music_Leech)
	call PlayMusic
	call ResetScroller
	xor a
	ld [wRemFuncArg], a
	inc a
.loop
	ld hl, wOAMBuffer + 1
	ld b, 4
	call ApplyScrollerMod
	push af
	and $7
	jr nz, .skip
	ld hl, wRemFuncArg
	ld a, [hl]
	inc [hl]
	haCoord 9
	ld b, 3
	ld de, 20
.loop2
	ld a, $7f
	ld [hl], a
	add hl, de
	dec b
	jr nz, .loop2
.skip
	call DelayFrame_Credits
	pop af
	inc a
	cp $a9
	jr nz, .loop
	delayc 700
	jp PlayHackCreditsLoop
	
ResetScroller:
	push bc
	push de
	push hl
	ld hl, CreditScrollerOAMTable ; load credit scroller
	ld bc, 4 * 6
	ld de, wOAMBuffer
	call CopyData
	pop hl
	pop de
	pop bc
	ret
	
ApplyScrollerMod:
	push af
	ld [hli], a
	and $7
	bit 3, [hl]
	jr z, .skip
	add $8
.skip
	add $10
	ld [hli], a
	inc hl
	inc hl
	pop af
	dec b
	jr nz, ApplyScrollerMod
	ret
	
HACoord:
	push bc
	ld b, 0
	ld c, a
	add hl, bc
	pop bc
	ret
	
DACoord:
	push hl
	ld h, 0
	ld l, a
	add hl, de
	ld d, h
	ld e, l
	pop hl
	ret
	
Delay_S:
	call DelayFrame_Credits
	dec bc
	ld a, b
	or c
	jr nz, Delay_S
	ret

DelayFrame_Credits:
	push bc
	push de
	call JoypadLowSensitivity
	ld a, [hJoy5]
	cp START | SELECT
	pop de
	pop bc
	jp z, Init
	jp DelayFrame
	
