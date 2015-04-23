; Engines

; If the wild mon is legendary, say that it got tired
; and ran then change the roaming flag
_LegendaryCheck:
	ld a, [W_ISINBATTLE]
	dec a
	ret nz ; We don't want a legendary to run away in trainer battle
	ld a, [wEnemyMonSpecies2]
	ld hl, LegendaryList
	ld de, 1
	call IsInArray
	ret nc
; Legendary found
	ld hl, wRoamingFlag
	set RANOCCURED, [hl]
	call Random
	and 7
	add 5 ; 5-11 x256 steps
	ld c, a
	ld hl, wReappearCounter
	ld a, b
	srl a
	ld e, a
	jr c, .odd
	add hl, de
	ld a, [hl]
	add c
	ld [hl], a
	jr .done
.odd
	add hl, de
	ld a, [hl]
	swap c
	add c
	ld [hl], a
.done	
	ld c, b
	ld b, 1
	ld hl, wRanFlag
	predef FlagActionPredef
	ld hl, LegendaryRanText
	call PrintText
	ld a, (SFX_08_44 - SFX_Headers_08) / 3
	call PlaySoundWaitForCurrent
	xor a
	ld [H_WHOSETURN], a
	jpba AnimationSlideEnemyMonOut
	
RedsBed:
	ld a, [wd5a2] ; number of HoF teams
	and a
	ret z ; return if no HoF teams exist
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, [wRoamingFlag]
	bit TPPREDBATTLE, a ; check if dream red was beaten
	jr z, .warptomtsilver
	ld a, $2
	ld [H_SPRITEINDEX], a
	call DisplayTextID ; "Was it just a dream?"
	ret
.warptomtsilver
	ld a, (SFX_02_5c - SFX_Headers_02) / 3
	call PlaySound
	ld a, $10 ; fade speed
	ld [wcfc8], a
	ld [wcfc9], a
	ld a, $ff
	ld [wMusicHeaderPointer], a ; fade the music
	; call PlayMusic
	xor a
	ld [wUpdateSpritesEnabled], a
	call GBFadeOutToWhite
	call ClearScreen
	call ClearSprites
	call DisableLCD
	ld hl, $9800
	ld bc, $400
	ld a, " "
	call FillMemory
	call EnableLCD
	ld c, 60
	call DelayFrames
	call GBPalNormal
	ld a, $1
	ld [H_SPRITEINDEX], a
	call DisplayTextID ; "Later that night..."
	ld a, MTSILVER
	ld [wd72d],a
	callba SpecialWarpIn
	callba SpecialEnterMap
	ld c, 60
	call DelayFrames
	jp Func_2312
	
; Decrease reappear counter by 1 every 256 steps
DecrementReappearCounter:
	ld a, [wStepCounter]
	dec a
	ret nz ; only counts down when wStepCounter is 1
	ld c, 3
	ld hl, wReappearCounter
.loop
	ld a, [hl]
	ld b, a
	and $f
	jr z, .skip ; It's already 0
	dec [hl]
.skip
	ld a, b
	swap a
	and $f
	jr z, .skip2 ; It's already 0
	ld a, b
	sub $10
	ld [hl], a
.skip2
	inc hl
	dec c
	jr nz, .loop
	ret
	
; Give TPP Red's moves
_ApplyTPPRedMoves:
	ld hl, wEnemyMon1Moves
	ld bc, $604
	ld de, TPPRedMovesTable
; move copying
.monloop
	ld a, [de]
	ld [hli], a
	inc de
	dec c
	jr nz, .monloop
	ld c, $4
	push de
	ld de, wEnemyMon2Moves - wEnemyMon1Moves - 4
	add hl, de
	pop de
	dec b
	jr nz, .monloop
; name copying
	ld hl, TPPRedNicksTable
	ld bc, 11 * 6
	ld de, wEnemyMonNicks
	jp CopyData
	
; get overworld map coordinate from bc to hl
GetOWCoord:
	ld hl, wOverworldMap + 2
	ld a, [W_CURMAPWIDTH]
	add $6
	ld e, a
	ld d, $0
	add hl, de
	add hl, de
	inc b
	inc c
.bloop
	add hl, de
	dec b
	jr nz, .bloop
.cloop
	inc hl
	dec c
	jr nz, .cloop
	ret
	
; remove the S.S. Anne ship and check for a truck
AfterSS:
	ld bc, $105
	call GetOWCoord
	ld de, AfterSSTable
	ld bc, $204
	ld a, [de]
	cp [hl]
	jr z, .truckCheck
.loop
	ld a, [de]
	ld [hli], a
	inc de
	dec c
	jr nz, .loop
	ld c, $4
	push de
	ld a, [W_CURMAPWIDTH]
	add $2
	ld e, a
	ld d, $0
	add hl, de
	pop de
	dec b
	jr nz, .loop
	callba RedrawMapView
.truckCheck
	ld a, [wRoamingFlag]
	bit MEWFLYAWAY, a ; is mew is ready to fly away?
	jp nz, MewFlyAway
	bit MEWINTRUCK, a ; is mew in the truck?
	jp nz, ChangeTruckTile
	ld c, HS_MEW_VERMILLION_DOCK
	ld b, $2
	ld hl, W_MISSABLEOBJECTFLAGS
	predef FlagActionPredef
	ld a, c
	and a
	jr nz, .skiphidingmew
	ld a, HS_MEW_VERMILLION_DOCK
	ld [wcc4d], a
	predef HideObject
.skiphidingmew
	ld a, [wRoamingFlag] ; is mew in the island?
	bit MEWINISLAND, a 
	jp nz, ChangeTruckTile
	ld a, [wd728]
	bit 0, a ; using Strength?
	ret z
	; the position for moving truck is $00, $15
	ld hl, W_YCOORD
	ld a, [hli]
	and a
	ret nz
	ld a, [hl]
	cp $16
	ret nz
	; if the player is trying to walk left
	ld a, [wd528]
	cp 2
	ret nz
	
	xor a
	ld [$ff8c], a
	ld a, $8
	ld [$ff8d], a
	call SetSpriteFacingDirection
	ld a, $ff
	ld [wJoyIgnore], a
	ld [wUpdateSpritesEnabled], a
	xor a
	ld bc, $4c48
	ld de, RedLeftOAMTable
	call WriteOAMBlock
	ld bc, (Bank(TruckSpriteGFX) << 8) | 8
	ld hl, vChars1 + $400
	ld de, TruckSpriteGFX
	call CopyVideoData
	ld hl, TruckOAMTable
	ld bc, $20
	ld de, wOAMBuffer + $20
	call CopyData
	ld a, $c
	ld [wd09f], a
	ld bc, $a
	predef ReplaceTileBlock
	; moving the truck
	ld a, (SFX_02_53 - SFX_Headers_02) / 3
	call PlaySound
	ld b, 32
	ld de, 4
.movingtruck
	ld hl, wOAMBuffer + $21
	ld a, 8
.movingtruck2
	dec [hl]
	add hl, de
	dec a
	jr nz, .movingtruck2
	ld c, 2
	call DelayFrames
	dec b
	jr nz, .movingtruck
	ld a, $3
	ld [wd09f], a
	ld bc, $9
	predef ReplaceTileBlock
	; show mew and print its dialogue
	ld a, 1
	ld [wUpdateSpritesEnabled], a
	ld a, HS_MEW_VERMILLION_DOCK
	ld [wcc4d], a
	predef ShowObject
	ld c, 60
	call DelayFrames
	xor a
	ld [wJoyIgnore], a
	ld hl, wRoamingFlag
	set MEWINTRUCK, [hl]
	ret
	
; Script to make mew fly away
MewFlyAway:
	ld a, [wcfc4] ; is the text box still open?
	and a
	ret nz
	ld a, $ff
	ld [wJoyIgnore], a
	ld [wUpdateSpritesEnabled], a
	ld c, 60
	call DelayFrames
	callba LoadHoppingShadowOAM
; loading mew's position
	ld a, [wOAMBuffer + $13]
	bit 5, a ; Mew is facing right, reversing OAM order
	ld hl, wOAMBuffer + $10
	jr z, .skipfixing
	ld hl, wOAMBuffer + $14
.skipfixing
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld c, a
	push bc
; set hopping shadow to where mew is
	ld hl, vChars1 + $7f0
	ld de, LedgeHoppingShadow
	ld bc, (BANK(LedgeHoppingShadow) << 8) + $01
	call CopyVideoDataDouble
	ld de, LedgeHoppingShadowOAM2
	pop bc
	push bc
	ld a, b
	add 8
	ld b, a
	ld a, $9
	call WriteOAMBlock
	pop bc
; jump #1
	ld a, (SFX_02_4e - SFX_Headers_02) / 3
	call PlaySound
	ld a, 30
	ld de, JumpLambdaTable
.j1loop
	push af
	push bc
	call DelayFrame
	ld a, [de]
	inc de
	push de
	ld e, a
	ld a, b
	sub e
	ld b, a
	ld a, $1
	ld de, MewOAMTable
	call WriteOAMBlock
	pop de
	pop bc
	pop af
	dec a
	jr nz, .j1loop

	push bc
	xor a
	ld bc, $4c48
	ld de, RedDownOAMTable
	call WriteOAMBlock
	ld c, 15
	call DelayFrames
	pop bc
	call MewFlyAway2
	call MewFlyAway2
	
	ld a, $ff
	ld [wJoyIgnore], a
	ld a, 1
	ld [wUpdateSpritesEnabled], a
	ld a, HS_MEW_VERMILLION_DOCK
	ld [wcc4d], a
	predef HideObject
	xor a
	ld [wJoyIgnore], a
	ld hl, wRoamingFlag
	res MEWINTRUCK, [hl]
	res MEWFLYAWAY, [hl]
	set MEWINISLAND, [hl]
	ret
	
MewFlyAway2:
	ld a, (SFX_02_4e - SFX_Headers_02) / 3
	call PlaySound
	call Random
	ld l, a
	ld a, 30
	ld de, JumpLambdaTable
.j2loop
	push af
	push hl
	ld a, l
	and $3
	cp 1
	jr z, .incc
	cp 2
	jr nz, .skipc
	dec c
	dec c
	jr .skipc
.incc
	inc c
	inc c
.skipc
	inc b
	inc b
	push bc
	call DelayFrame
	push de
	ld a, b
	add $8
	ld b, a
	ld a, $9
	ld de, LedgeHoppingShadowOAM2
	call WriteOAMBlock
	pop de
	pop bc
	push bc
	ld a, [de]
	inc de
	push de
	ld e, a
	ld a, b
	sub e
	ld b, a
	ld a, $1
	ld de, MewOAMTable
	call WriteOAMBlock
	pop de
	pop bc
	pop hl
	pop af
	dec a
	jr nz, .j2loop
	ret
	
ChangeTruckTile:
	ld bc, $9
	call GetOWCoord
	ld a, [hl]
	cp $3
	ret z
	ld a, $3
	ld [hli], a
	ld a, $c
	ld [hl], a
	jpba RedrawMapView
	
Func_46981_2: ; Duplicate of Func_46981 because of hl
	xor a
	ld [wWhichDungeonWarp], a
	ld a, [wd72d]
	bit 4, a
	ret nz
	call ArePlayerCoordsInArray
	ret nc
	ld a, [wWhichTrade]
	ld [wWhichDungeonWarp], a
	ld hl, wd72d
	set 4, [hl]
	ld hl, wd732
	set 4, [hl]
	ret
	
ReadBattleTentTrainer:
	ld a, 50
	ld [W_CURENEMYLVL],a
	ld a, [wBTClass]
	ld hl, BTTrainerClassList + 2 ; Team selector
	ld bc, 3
	call AddNTimes
	ld a, [hl]
	and a
	jr z, .anyTeam
	dec a
	ld hl, BTMonList
	ld bc, 8
	call AddNTimes ; now hl points to the specific team
	ld b, 3
.SpecificTeam
	push hl
	push bc
	call Random
	and 7
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wcf91],a
	ld a,1
	ld [wcc49],a
	call AddPartyMon
	pop bc
	pop hl
	dec b
	jr nz, .SpecificTeam
	ret
.anyTeam
	ld hl, BTMonList
	ld b, 3
.anyTeamLoop
	push hl
	push bc
	call Random
	and 63
	ld c, a ; max = 63
	ld a, [hRandomSub]
	bit 7, a
	jr z, .skipinc
	inc c ; max = 64
.skipinc
	and 7
	add c
	ld c, a ; max = 71
	ld b, 0
	add hl, bc
	ld a, [hl]
	ld [wcf91],a
	ld a,1
	ld [wcc49],a
	call AddPartyMon
	pop bc
	pop hl
	dec b
	jr nz, .anyTeamLoop
	ret
	
; Since the music bank is so filled up, I have to continue the code here

_PlayBattleMusic::
	ld a, [W_GYMLEADERNO]
	and a
	jr nz, .gymLeaderBattle
	ld a, [W_CUROPPONENT]
	cp $c8
	jr c, .wildBattle
	ld de, 1
	ld hl, FinalMusicList
	call IsInArray
	jr c, .finalBattle
	ld a, [wd5a2] ; HOF data
	and a
	jr z, .skip
	ld a, [W_CUROPPONENT]
	ld hl, RematchPCList
	call IsInArray
	jr c, .gymLeaderBattle
	ld a, [W_CUROPPONENT]
	ld hl, RematchMusicList
	call IsInArray
	jr c, .checkLance
.skip
	ld a, [W_CUROPPONENT]
	cp TPPRED + $c8 ; he has his special music
	jr z, .tppRedBattle
	cp LANCE + $c8 ; lance also plays gym leader theme
	jr nz, .normalTrainerBattle
.checkLance
	ld a, [W_CUROPPONENT]
	ld hl, LanceList
	call IsInArray
	jr z, .gymLeaderBattle
.checkE4
	rst IsOakable
	jr nz, .normalTrainerBattle
.gymLeaderBattle
	ld a, MUSIC_GYM_LEADER_BATTLE
	jr .playSong
.normalTrainerBattle
	ld a, MUSIC_TRAINER_BATTLE
	jr .playSong
.finalBattle
	ld a, MUSIC_FINAL_BATTLE
	jr .playSong
.wildBattle
	ld a, MUSIC_WILD_BATTLE
	jr .playSong
.tppRedBattle
	ld a, MUSIC_TPPRED
.playSong
	ld c, BANK(Music_GymLeaderBattle)
	jp PlayMusic
	
PlayTrainerVictoryMusic:
	ld a, [W_GYMLEADERNO]
	and a
	jr nz, .gym
	ld a, [W_CUROPPONENT]
	ld de, 1
	ld hl, FinalMusicList
	call IsInArray
	jr c, .gym
	ld a, [W_CUROPPONENT]
	cp TPPRED + $c8 ; he has his special music
	jr z, .gym
	rst IsOakable
	jr nz, .skip
	ld a, [W_CUROPPONENT]
	ld hl, RematchMusicList
	call IsInArray
	jr c, .gym
.skip
	ld b, MUSIC_DEFEATED_TRAINER
	jr .finish
.gym
	ld b, MUSIC_DEFEATED_GYM_LEADER
.finish
	ld a, [W_ISLINKBATTLE]
	cp $4
	ld a, b
	ret z
	push af
	ld a, $ff
	ld [wc0ee], a
	call PlaySoundWaitForCurrent
	ld c, BANK(Music_DefeatedTrainer)
	pop af
	call PlayMusic
	jp Delay3
	
_HandleRematch:
	ld a, [wd5a2]
	and a
	jr z, _HandleRematch3
	push de
	ld a, [wRemFuncArg]
	and $f
	ld c, a
	ld hl, wRematchFlag
	ld b, $2
	predef FlagActionPredef
	ld a, c
	and a
	jr nz, .popde
	ld hl, RematchPrompt
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .popde
	pop hl
	ld b, 0
	ld a, [wRemFuncArg]
	swap a
	and $f
	ld c, a
	predef FlagActionPredef
	ld hl, wRoamingFlag
	set RANOCCURED, [hl]
	ld hl, wRanFlag
	set 7, [hl]
	ret
.popde
	pop de

_HandleRematch3:
	ld hl, wRanFlag
	res 7, [hl]
	ret
	
_HandleRematchAfter:
	ld hl, wRanFlag
	bit 7, [hl]
	res 7, [hl]
	ret z
	ld h, d
	ld l, e
	ld a, [wRemFuncArg]
	swap a
	and $f
	ld c, a
	ld b, 1
	predef FlagActionPredef
	ld hl, wRematchFlag
	ld a, [wRemFuncArg]
	and $f
	ld c, a
	ld b, 1
	predef FlagActionPredef
	ld hl, wRoamingFlag
	set RANOCCURED, [hl]
	ret
	
_OverwriteRoster:
	ld hl, W_MAPSPRITEEXTRADATA - 1
	sla d
	ld b, 0
	ld c, d
	add hl, bc
	ld a, e
	ld [hl], a
	ret
	
LeaguePC: ; no, not that HoF PC
	ld a, [wSpriteStateData1 + 9]
	cp $4 ; check to see if player is facing up
	ret nz
	ld a, $36
	ld hl, wOverworldMap + 4 + (VIRIDIAN_GYM_WIDTH + 6) * 4
	cp [hl] ; is the pc tile present?
	ret nz
	ld a, [wd5a2]
	and a
	ret z
	ld a, [wd751]
	bit 0, a
	ret z
	ld a, 15
	ld [H_DOWNARROWBLINKCNT2], a ; $ff8c
	jp DisplayTextID
