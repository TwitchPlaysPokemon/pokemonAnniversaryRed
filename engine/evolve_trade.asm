EvolveTradeMon: ; 17d7d (5:7d7d)
; Verify the TradeMon's species name before
; attempting to initiate a trade evolution.

; The names of the trade evolutions in Blue (JP)
; are checked. In that version, TradeMons that
; can evolve are Graveler and Haunter.

; In localization, this check was translated
; before monster names were finalized.
; Then, Haunter's name was "Spectre".
; Since its name no longer starts with
; "SP", it is prevented from evolving.

; This may have been why Red/Green's trades
; were used instead, where none can evolve.

; This was fixed in Yellow.

; This was changed for the hack, fixed in Patch 3.3
; rip that kadabra won't evolve :(

	ld a, [wTradeMonNick]
	
	; GRAVELER -> GOLEM
	cp "G"
	jr z, .ok

	; HAUNTER -> GENGAR
	cp "H"
	jr z, .ok
	
	; KADABRA -> ALAKAZAM
	cp "K"
	jr z, .ok
	
	; MACHOKE -> MACHAMP
	cp "M"
	ret nz

.ok
	ld a, [wPartyCount] ; wPartyCount
	dec a
	ld [wWhichPokemon], a ; wWhichPokemon
	ld a, $1
	ld [wccd4], a
	ld a, $32
	ld [W_ISLINKBATTLE], a ; W_ISLINKBATTLE
	callab TryEvolvingMon
	xor a
	ld [W_ISLINKBATTLE], a ; W_ISLINKBATTLE
	jp PlayDefaultMusic
