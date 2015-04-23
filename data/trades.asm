TradeMons: ; 71b7b (1c:5b7b)
; givemonster, getmonster, textstring, nickname (11 bytes), 14 bytes total
IF DEF(_YELLOW)
	db LICKITUNG, DUGTRIO,   0,"GURIO@@@@@@"
	db CLEFAIRY,  MR_MIME,   0,"MILES@@@@@@"
	db BUTTERFREE,BEEDRILL,  2,"STINGER@@@@"
	db KANGASKHAN,MUK,       0,"STICKY@@@@@"
	db MEW,       MEW,       2,"BART@@@@@@@"
	db TANGELA,   PARASECT,  0,"SPIKE@@@@@@"
	db PIDGEOT,   PIDGEOT,   1,"MARTY@@@@@@"
	db GOLDUCK,   RHYDON,    1,"BUFFY@@@@@@"
	db GROWLITHE, DEWGONG,   2,"CEZANNE@@@@"
	db CUBONE,    MACHOKE,   2,"RICKY@@@@@@"
ELSE
	db DUGTRIO,   PORYGON,   0,"TERRY@@@@@@"
	db ABRA,      MR_MIME,   0,"MARCEL@@@@@"
	db BUTTERFREE,BEEDRILL,  2,"CHIKUCHIKU@"
	db GOLBAT,    HAUNTER,   0,"HAUNTER@@@@"
	db SPEAROW,   FARFETCH_D,2,"DUX@@@@@@@@"
	db SLOWBRO,   KADABRA,   0,"KADABRA@@@@"
	db POLIWHIRL, JYNX,      1,"LOLA@@@@@@@"
	db RAICHU,    GRAVELER,  1,"GRAVELER@@@"
	db TANGELA,   MACHOKE,   2,"MACHOKE@@@@"
	db NIDORAN_M, NIDORAN_F, 2,"SPOT@@@@@@@"
ENDC
