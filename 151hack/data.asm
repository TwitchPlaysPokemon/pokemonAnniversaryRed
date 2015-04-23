; Data Tables
	
TPPRedMovesTable:
; Copied directly from the save file
	db THUNDERSHOCK, DRILL_PECK, TAKE_DOWN, THUNDER ; Zapdos
	db SURF, POISON_STING, STRENGTH, FURY_ATTACK ; Nidoking
	db HYDRO_PUMP, WITHDRAW, SURF, HORN_ATTACK ; Omastar
	db DISABLE, POISONPOWDER, LEECH_LIFE, STUN_SPORE ; Venomoth
	db CONFUSE_RAY, MIST, SURF, STRENGTH ; Lapras
	db MIRROR_MOVE, SAND_ATTACK, QUICK_ATTACK, SKY_ATTACK; Pidgeot
	
TPPRedNicksTable:
; Copied directly from the save file
; Some nicknaming traces are shown
	db "AA-j@@@@@@L"
	db "AAAAAAAAAA@"
	db "OMASTAR@@@@"
	db "AATTVVV@ALL"
	db "AIIIIIIRRR@"
	db "aaabaaajss@"
	
LegendaryList:
	db ARTICUNO, ZAPDOS, MOLTRES, MEWTWO, MEW, $ff
	
LegendaryRanText:
	TX_FAR _LegendaryRanText
	db "@"
	
AfterSSTable:
	db $1, $d, $15, $1
	db $d, $d,  $d, $d
	
TruckOAMTable:
	db $50, $28, $C0, $10
	db $50, $30, $C1, $10
	db $50, $38, $C2, $10
	db $50, $40, $C3, $10
	db $58, $28, $C4, $10
	db $58, $30, $C5, $10
	db $58, $38, $C6, $10
	db $58, $40, $C7, $10
	
LedgeHoppingShadowOAM2:
	db $FF,$10,$FF,$20
	db $FF,$40,$FF,$60
	
RedDownOAMTable:
	db $0,$0,$1,$0
	db $2,$2,$3,$3
	
RedLeftOAMTable:
	db $8,$0,$9,$0
	db $a,$2,$b,$3
	
MewOAMTable:
	db $c,$0,$d,$0
	db $e,$2,$f,$3
	
JumpLambdaTable: ; round(-128(x-.5)^2 + 32) ; x = {1/30,1,1/30}
	db  4,  8, 12, 15, 18, 20, 23, 25, 27, 28
	db 30, 31, 31, 32, 32, 32, 31, 31, 30, 28
	db 27, 25, 23, 20, 18, 15, 12,  8,  4,  0
	
BTTrainerClassList:
; structure:  
; common - has 2 entries each in order to make the entire list exactly 32
	db YOUNGSTER, SPRITE_BUG_CATCHER, 0
	db YOUNGSTER, SPRITE_BUG_CATCHER, 0
	db JR__TRAINER_M, SPRITE_BLACK_HAIR_BOY_1, 0
	db JR__TRAINER_M, SPRITE_BLACK_HAIR_BOY_1, 0
	db JR__TRAINER_F, SPRITE_LASS, 0
	db JR__TRAINER_F, SPRITE_LASS, 0
	db COOLTRAINER_M, SPRITE_BLACK_HAIR_BOY_1, 9
	db COOLTRAINER_M, SPRITE_BLACK_HAIR_BOY_1, 9
	db COOLTRAINER_F, SPRITE_LASS, 9
	db COOLTRAINER_F, SPRITE_LASS, 9
; uncommon
	db BUG_CATCHER, SPRITE_BUG_CATCHER, 1
	db LASS, SPRITE_LASS, 7
	db HIKER, SPRITE_HIKER, 2
	db SAILOR, SPRITE_SAILOR, 3
	db POKEMANIAC, SPRITE_BLACK_HAIR_BOY_2, 0
	db SUPER_NERD, SPRITE_BLACK_HAIR_BOY_2, 0
	db BURGLAR, SPRITE_BLACK_HAIR_BOY_2, 0
	db ENGINEER, SPRITE_BLACK_HAIR_BOY_2, 4
	db FISHER, SPRITE_FISHER, 3
	db CUE_BALL, SPRITE_HIKER, 0
	db GAMBLER, SPRITE_GAMBLER, 0
	db BEAUTY, SPRITE_FOULARD_WOMAN, 7
	db PSYCHIC_TR, SPRITE_BUG_CATCHER, 5
	db ROCKER, SPRITE_ROCKER, 4
	db JUGGLER, SPRITE_ROCKER, 5
	db TAMER, SPRITE_ROCKER, 0
	db BIRD_KEEPER, SPRITE_BLACK_HAIR_BOY_1, 6
	db BLACKBELT, SPRITE_HIKER, 2
	db SCIENTIST, SPRITE_OAK_AIDE, 8
	db ROCKET, SPRITE_ROCKET, 0
	db GENTLEMAN, SPRITE_GENTLEMAN, 0
	db CHANNELER, SPRITE_MEDIUM, 8
	
BTMonList:
; List of 'mons, grouped in 8 roughly by types
; Normal+Bug set
	db BUTTERFREE
	db BEEDRILL
	db PARASECT
	db VENOMOTH
	db PINSIR
	db PERSIAN
	db LICKITUNG
	db CHANSEY
; Rock+Fighting set
	db GOLEM
	db ONIX
	db PRIMEAPE
	db MACHAMP
	db HITMONLEE
	db HITMONCHAN
	db RHYDON
	db POLIWRATH
; Water set
	db BLASTOISE
	db TENTACRUEL
	db DEWGONG
	db KINGLER
	db SEADRA
	db SEAKING
	db VAPOREON
	db CLOYSTER
; Electric+Fire set
	db RAICHU
	db MAGNETON
	db ELECTRODE
	db ELECTABUZZ
	db JOLTEON
	db FLAREON
	db MAGMAR
	db RAPIDASH
; Psychic set
	db ALAKAZAM
	db SLOWBRO
	db GOLDUCK
	db HYPNO
	db MR_MIME
	db JYNX
	db STARMIE
	db LAPRAS
; Flying+Fire set
	db CHARIZARD
	db PIDGEOT
	db FEAROW
	db GOLBAT
	db FARFETCH_D
	db DODRIO
	db ARCANINE
	db NINETALES
; Normal+Grass set
	db VENUSAUR
	db RATICATE
	db CLEFABLE
	db WIGGLYTUFF
	db VILEPLUME
	db VICTREEBEL
	db EXEGGUTOR
	db TANGELA
; Ghost+Ground+Poison set
	db ARBOK
	db NIDOQUEEN
	db NIDOKING
	db MUK
	db GENGAR
	db WEEZING
	db DUGTRIO
	db MAROWAK
; Normal+Dragon set
	db KANGASKHAN
	db TAUROS
	db GYARADOS
	db PORYGON
	db AERODACTYL
	db OMASTAR
	db KABUTOPS
	db SNORLAX
	

RematchMusicList:
	db LORELEI + $c8, BRUNO + $c8, AGATHA + $c8, LANCE + $c8, $ff
	
FinalMusicList:
	db SONY3 + $c8, PROF_OAK + $c8, $ff
	
TehUrnOAMTable:
	db $50, $28, $0, 0 ; T
	db $50, $38, $4, 0 ; E
	db $50, $48, $2, 0 ; H
	db $50, $60, $a, 0 ; U
	db $50, $70, $c, 0 ; R
	db $50, $80, $6, 0 ; N
	
TehUrnTextString2:
; "T E H  U R N"
	db $60," ",$64," ",$62,"  ",$6a," ",$6c," ",$66,"@"
	db $61," ",$65," ",$63,"  ",$6b," ",$6d," ",$67,"@"

CreditScrollerOAMTable:
	; top
	db $54, $0, $10, $00
	db $5c, $0, $18, $00
	db $64, $0, $18, $00
	db $6c, $0, $10, $40
	; bottom
	db $64, $0, $10, $00
	db $6c, $0, $10, $40
	
RematchPCList:
	db LEAGUES_PC + $c8, $ff
	
LanceList: ; just here to prevent breaking, not redundant
	db LANCE + $c8, $ff