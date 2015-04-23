; Rise of the Leech King
; Original composition by Mark Roebbelen
; from the album Helix Symphony
; released in 2015/03/01
; demake by pigdevil2010 in 2015/03/08
; Thanks for the MIDI!

Music_Leech_Ch1:
; Pat 0 Row 0
	tempo $85
	duty $1
	notetype $c, $b, $6
	vibrato $a, $3, $3
	octave 4
	G# 12
	G# 4
	G# 8
	F# 8
	E_ 12
	D# 4
	E_ 8
	D# 8
; Pat 1 Row 0
	notetype $c, $b, $3
	octave 5
	G# 4
	A_ 4
	E_ 4
	D# 4
	octave 4
	F# 4
	A_ 4
	notetype $c, $b, $6
	F# 4
	A_ 4
	G# 12
	A_ 4
	G# 16
; Pat 2 Row 0
	notetype $c, $b, $3
	octave 3
	callchannel Music_Leech_Ch1_C1
	callchannel Music_Leech_Ch1_C1
	F# 1
	C# 1
	G# 1
	C# 1
	callchannel Music_Leech_Ch1_C1
	callchannel Music_Leech_Ch1_C2
	callchannel Music_Leech_Ch1_C2
	F# 1
	C_ 1
	G# 1
	C_ 1
	callchannel Music_Leech_Ch1_C2
; Pat 3 Row 0
	notetype $c, $a, $7
	callchannel Music_Leech_Ch1_C3
; Pat 4 Row 0
	octave 4
	C# 16
	octave 3
	B_ 6
	notetype $c, $b, $3
	octave 4
	C# 4
	D# 4
	octave 3
	A# 8
	G# 10
	notetype $c, $a, $7
	G# 16
; Pat 5 Row 0
; Pat 7 Row 0
; Pat 6 Row 0
Music_Leech_Ch1_L1:
	callchannel Music_Leech_Ch1_C3
	loopchannel 3, Music_Leech_Ch1_L1
; Pat 8 Row 0
	callchannel Music_Leech_Ch1_C8
; Pat 9 Row 0
	duty $1
	notetype $c, $b, $6
	vibrato $a, $3, $3
Music_Leech_Ch1_L2:
	callchannel Music_Leech_Ch1_C4
	loopchannel 4, Music_Leech_Ch1_L2
	callchannel Music_Leech_Ch1_C5
; Pat 10 Row 0
Music_Leech_Ch1_L3:
	callchannel Music_Leech_Ch1_C4
	loopchannel 2, Music_Leech_Ch1_L3
Music_Leech_Ch1_L4:
	callchannel Music_Leech_Ch1_C6
	loopchannel 2, Music_Leech_Ch1_L4
	callchannel Music_Leech_Ch1_C5
; Pat 11 Row 0
; Pat 12 Row 0
	callchannel Music_Leech_Ch1_C7
; Pat 3 Row 0
	notetype $c, $a, $7
	callchannel Music_Leech_Ch1_C3
; Pat 4 Row 0
	octave 4
	C# 16
	octave 3
	B_ 6
	notetype $c, $b, $3
	octave 4
	C# 4
	D# 4
	octave 3
	A# 8
	G# 10
	notetype $c, $a, $7
	G# 16
; Pat 5 Row 0
; Pat 7 Row 0
Music_Leech_Ch1_L5:
	callchannel Music_Leech_Ch1_C3
	loopchannel 2, Music_Leech_Ch1_L5
; Pat 14 Row 0
	callchannel Music_Leech_Ch1_C8
; Pat 9 Row 0
	duty $1
	notetype $c, $b, $6
	vibrato $a, $3, $3
Music_Leech_Ch1_L6:
	callchannel Music_Leech_Ch1_C4
	loopchannel 4, Music_Leech_Ch1_L6
	callchannel Music_Leech_Ch1_C5
; Pat 10 Row 0
Music_Leech_Ch1_L7:
	callchannel Music_Leech_Ch1_C4
	loopchannel 2, Music_Leech_Ch1_L7
Music_Leech_Ch1_L8:
	callchannel Music_Leech_Ch1_C6
	loopchannel 2, Music_Leech_Ch1_L8
	callchannel Music_Leech_Ch1_C5
; Pat 11 Row 0
; Pat 12 Row 0
	callchannel Music_Leech_Ch1_C7
; Pat 16 Row 0
	notetype $c, $a, $7
	octave 3
	C# 16
	E_ 8
	C# 8
	D# 4
	C# 4
	octave 2
	B_ 16
	octave 3
	D# 8
; Pat 17 Row 0
	C# 16
	D# 8
	E_ 8
	octave 2
	B_ 4
	octave 3
	C# 4
	D# 4
	octave 2
	F# 4
	G# 4
	F# 4
	B_ 4
	G# 4
; Pat 18 Row 0
	octave 3
	C# 16
	E_ 16
	C# 4
	D# 4
	E_ 8
	octave 4
	D# 8
	octave 3
	B_ 8
; Pat 19 Row 0
	A_ 16
	B_ 16
	octave 4
	C# 16
	octave 3
	F_ 16
; Pat 20 Row 0
	notetype $c, $8, $3
	vibrato $7, $4, $5
	callchannel Music_Leech_Ch2_C11
	notetype $8, $8, $3
	octave 5
	E_ 1
	F# 1
	B_ 1
	notetype $c, $8, $3
	callchannel Music_Leech_Ch2_C12
	notetype $8, $8, $3
	callchannel Music_Leech_Ch2_C13
; Pat 15 Row 0
	duty $2
	notetype $c, $b, $b
	rest 16
	octave 3
	F# 1
	E_ 1
	C# 1
	F# 1
	G# 1
	F# 1
	G# 1
	B_ 1
	octave 4
	C# 1
	octave 3
	B_ 1
	octave 4
	C# 1
	D# 1
	E_ 1
	C# 1
	E_ 1
	F# 1
	G# 1
	F# 1
	E_ 1
	C# 1
	octave 3
	B_ 1
	octave 4
	C# 1
	octave 3
	B_ 1
	G# 1
	F# 1
	G# 1
	F# 1
	E_ 1
	notetype $8, $b, $b
	C# 2
	octave 2
	B_ 2
	octave 3
	C# 4
	endchannel

Music_Leech_Ch1_C1:
	E_ 1
	C# 1
	G# 1
	C# 1
	endchannel

Music_Leech_Ch1_C2:
	D# 1
	C_ 1
	G# 1
	C_ 1
	endchannel

Music_Leech_Ch1_C3:
	octave 4
	C# 16
	octave 3
	B_ 16
	A# 16
	G# 16
	endchannel

Music_Leech_Ch1_C4:
	C# 1
	E_ 1
	octave 3
	C# 1
	E_ 1
	G# 1
	E_ 1
	C# 1
	octave 2
	E_ 1
	endchannel

Music_Leech_Ch1_C5:
	octave 1
	B_ 1
	octave 2
	D# 1
	B_ 1
	octave 3
	D# 1
	F# 1
	D# 1
	octave 2
	B_ 1
	D# 1
	loopchannel 4, Music_Leech_Ch1_C5
	endchannel

Music_Leech_Ch1_C6:
	C# 1
	E_ 1
	octave 3
	C# 1
	F# 1
	G# 1
	F# 1
	C# 1
	octave 2
	E_ 1
	endchannel

Music_Leech_Ch1_C7:
	octave 1
	A_ 1
	octave 2
	E_ 1
	A_ 1
	octave 3
	C# 1
	E_ 1
	A_ 1
	octave 4
	C# 1
	octave 3
	A_ 1
	E_ 1
	C# 1
	octave 2
	A_ 1
	E_ 1
	octave 3
	C# 1
	E_ 1
	A_ 1
	octave 4
	C# 1
	octave 2
	E_ 1
	B_ 1
	octave 3
	E_ 1
	G# 1
	B_ 1
	G# 1
	E_ 1
	octave 2
	B_ 1
	E_ 1
	A_ 1
	octave 3
	C# 1
	F# 1
	A_ 1
	F# 1
	C# 1
	octave 2
	A_ 1
	C# 1
	E_ 1
	octave 3
	C# 1
	octave 4
	C# 1
	octave 2
	D# 1
	F# 1
	octave 3
	D# 1
	octave 4
	D# 1
	octave 2
	E_ 1
	G# 1
	octave 3
	E_ 1
	octave 4
	E_ 1
	octave 3
	G# 1
	E_ 1
	octave 2
	G# 1
	E_ 1
	D# 1
	F# 1
	B_ 1
	octave 3
	F# 1
	B_ 1
	octave 4
	D# 1
	octave 3
	F# 1
	octave 2
	B_ 1
	F# 1
	B_ 1
	octave 3
	D# 1
	F# 1
	B_ 1
	octave 4
	D# 1
	octave 3
	F# 1
	D# 1
	notetype $8, $b, $6
	octave 4
	A_ 1
	E_ 1
	C# 1
	E_ 1
	C# 1
	octave 3
	A_ 1
	octave 4
	C# 1
	octave 3
	A_ 1
	E_ 1
	A_ 1
	E_ 1
	C# 1
	E_ 1
	C# 1
	octave 2
	A_ 1
	octave 3
	C# 1
	octave 2
	A_ 1
	E_ 1
	A_ 1
	E_ 1
	C# 1
	E_ 1
	C# 1
	octave 1
	A_ 1
	octave 4
	B_ 1
	F# 1
	D# 1
	F# 1
	D# 1
	octave 3
	B_ 1
	octave 4
	D# 1
	octave 3
	B_ 1
	F# 1
	B_ 1
	F# 1
	D# 1
	F# 1
	D# 1
	octave 2
	B_ 1
	octave 3
	D# 1
	octave 2
	B_ 1
	F# 1
	B_ 1
	F# 1
	D# 1
	F# 1
	D# 1
	octave 1
	B_ 1
	octave 5
	C# 1
	octave 4
	G# 1
	E_ 1
	G# 1
	E_ 1
	C# 1
	E_ 1
	C# 1
	octave 3
	G# 1
	octave 4
	C# 1
	octave 3
	G# 1
	E_ 1
	G# 1
	E_ 1
	C# 1
	E_ 1
	C# 1
	octave 2
	G# 1
	octave 3
	C# 1
	octave 2
	G# 1
	E_ 1
	G# 1
	E_ 1
	C# 1
	notetype $c, $b, $6
Music_Leech_Ch1_C7L:
	octave 5
	C# 1
	octave 4
	C# 1
	octave 3
	C# 1
	octave 4
	C# 1
	loopchannel 4, Music_Leech_Ch1_C7L
	endchannel

Music_Leech_Ch1_C8:
	octave 4
	C# 16
	octave 3
	B_ 16
	A# 16
	G# 8
	duty $2
	notetype $c, $b, $b
	vibrato $7, $4, $5
	C# 1
	octave 2
	G# 1
	B_ 1
	octave 3
	C# 1
	E_ 1
	C# 1
	octave 2
	B_ 1
	rest 1
	endchannel

Music_Leech_Ch2:
; Pat 0 Row 0
	duty $1
	notetype $c, $b, $6
	vibrato $a, $3, $3
	octave 4
	C# 12
	C# 4
	octave 3
	B_ 8
	B_ 8
	G# 12
	G# 4
	octave 4
	C_ 8
	C_ 16
; Pat 1 Row 8
	rest 16
	notetype $c, $a, $7
	C# 8
	C_ 16
	C_ 16
; Pat 2 Row 0
	C_ 16
	rest 16
	callchannel Music_Leech_Ch2_C2
; Pat 6 Row 0
	callchannel Music_Leech_Ch2_C3
; Pat 8 Row 0
	duty $1
	notetype $c, $b, $3
	vibrato $a, $3, $3
	callchannel Music_Leech_Ch2_C3
; Pat 9 Row 0
	duty $2
	notetype $c, $b, $b
	vibrato $7, $4, $5
Music_Leech_Ch2_L1:
	callchannel Music_Leech_Ch2_C4
	loopchannel 4, Music_Leech_Ch2_L1
	callchannel Music_Leech_Ch2_C5
	E_ 1
	D# 1
	E_ 1
	F# 1
	E_ 1
	D# 1
	C# 1
	E_ 1
	G# 1
	F# 1
	G# 1
	A_ 1
	G# 1
	F# 1
	E_ 1
	rest 1
; Pat 10 Row 0
Music_Leech_Ch2_L2:
	callchannel Music_Leech_Ch2_C4
	loopchannel 2, Music_Leech_Ch2_L2
	C# 1
	rest 1
	C# 1
	rest 1
	C# 1
	E_ 1
	G# 1
	rest 1
	C# 1
	rest 1
	C# 1
	rest 1
	C# 1
	D# 1
	F# 1
	rest 1
	callchannel Music_Leech_Ch2_C5
	callchannel Music_Leech_Ch2_C11
	notetype $8, $b, $b
	octave 5
	E_ 1
	F# 1
	B_ 1
	notetype $c, $b, $b
	callchannel Music_Leech_Ch2_C12
	notetype $8, $b, $b
	callchannel Music_Leech_Ch2_C13
	callchannel Music_Leech_Ch2_C14
	callchannel Music_Leech_Ch2_C2
; Pat 14 Row 0
	duty $1
	notetype $c, $b, $3
	vibrato $a, $3, $3
	callchannel Music_Leech_Ch2_C3
; Pat 9 Row 0
	duty $2
	notetype $c, $b, $b
	vibrato $7, $4, $5
Music_Leech_Ch2_L3:
	callchannel Music_Leech_Ch2_C4
	loopchannel 4, Music_Leech_Ch2_L3
	callchannel Music_Leech_Ch2_C5
	E_ 1
	D# 1
	E_ 1
	F# 1
	E_ 1
	D# 1
	C# 1
	E_ 1
	G# 1
	F# 1
	G# 1
	A_ 1
	G# 1
	F# 1
	E_ 1
	rest 1
; Pat 10 Row 0
Music_Leech_Ch2_L4:
	callchannel Music_Leech_Ch2_C4
	loopchannel 2, Music_Leech_Ch2_L4
	C# 1
	rest 1
	C# 1
	rest 1
	C# 1
	E_ 1
	G# 1
	rest 1
	C# 1
	rest 1
	C# 1
	rest 1
	C# 1
	D# 1
	F# 1
	rest 1
	callchannel Music_Leech_Ch2_C5
	callchannel Music_Leech_Ch2_C11
	notetype $8, $b, $b
	octave 5
	E_ 1
	F# 1
	B_ 1
	notetype $c, $b, $b
	callchannel Music_Leech_Ch2_C12
	notetype $8, $b, $b
	callchannel Music_Leech_Ch2_C13
	callchannel Music_Leech_Ch2_C14
; Pat 16 Row 0
	duty $1
	vibrato $a, $3, $3
	notetype $c, $a, $7
	octave 4
	C# 16
	C# 8
	C# 8
	octave 3
	B_ 8
	B_ 16
	B_ 8
; Pat 17 Row 0
	octave 4
	C# 16
	C# 8
	C# 8
	octave 3
	B_ 8
	octave 4
	D# 4
	octave 3
	F# 4
	G# 4
	F# 4
	B_ 4
	G# 4
; Pat 18 Row 0
	octave 4
	E_ 16
	E_ 16
	E_ 4
	F# 4
	G# 4
	B_ 4
	G# 8
	B_ 8
; Pat 19 Row 0
	C# 16
	C# 8
	D# 8
	F_ 16
	C# 16
; Pat 20 Row 0
	duty $2
	notetype $c, $b, $b
	vibrato $7, $4, $5
	callchannel Music_Leech_Ch2_C6
	notetype $8, $b, $b
	octave 5
	E_ 1
	F# 1
	B_ 1
	notetype $c, $b, $b
	callchannel Music_Leech_Ch2_C12
; Pat 21 Row 0
	notetype $8, $b, $b
	callchannel Music_Leech_Ch2_C13
	callchannel Music_Leech_Ch2_C14
; Pat 15 Row 0
	F# 1
	E_ 1
	C# 1
	F# 1
	G# 1
	F# 1
	G# 1
	B_ 1
	octave 5
	C# 1
	octave 4
	B_ 1
	octave 5
	C# 1
	D# 1
	E_ 1
	C# 1
	E_ 1
	F# 1
	G# 1
	F# 1
	E_ 1
	C# 1
	octave 4
	B_ 1
	octave 5
	C# 1
	octave 4
	B_ 1
	G# 1
	F# 1
	G# 1
	F# 1
	E_ 1
	notetype $8, $b, $b
	C# 2
	octave 3
	B_ 2
	octave 4
	C# 4
	endchannel

Music_Leech_Ch2_C11:
	octave 3
	E_ 1
	D# 1
	E_ 1
	F# 1
	E_ 1
	C# 1
	E_ 1
	G# 1
	B_ 1
	G# 1
	B_ 1
	octave 4
	C# 1
	E_ 1
	F# 1
	G# 1
	B_ 1
Music_Leech_Ch2_C6:
	octave 5
	E_ 1
	C# 1
	E_ 1
	G# 1
	E_ 1
	C# 1
	octave 4
	B_ 1
	octave 5
	C# 1
	F# 1
	G# 1
	F# 1
	E_ 1
	C# 1
	octave 4
	G# 1
	E_ 1
	G# 1
	endchannel
	
Music_Leech_Ch2_C12:
	G# 1
	E_ 1
	C# 1
	octave 4
	B_ 1
	octave 5
	E_ 1
	C# 1
	D# 1
	E_ 1
	D# 1
	octave 4
	B_ 1
	G# 1
	F# 1
	E_ 1
	C# 1
	F# 1
	G# 1
	octave 5
	C# 1
	E_ 1
	octave 4
	E_ 1
	B_ 1
	octave 5
	E_ 1
	F# 1
	octave 4
	G# 1
	octave 5
	E_ 1
	F# 1
	B_ 1
	G# 1
	F# 1
	E_ 1
	C# 1
	G# 1
	A_ 1
	G# 1
	E_ 1
	D# 1
	octave 4
	B_ 1
	G# 1
	B_ 1
	B_ 1
	octave 5
	C# 1
	octave 4
	B_ 1
	G# 1
	E_ 1
	D# 1
	octave 3
	B_ 1
	octave 4
	D# 1
	endchannel
	
Music_Leech_Ch2_C13:
	C# 1
	E_ 1
	G# 1
	octave 5
	C# 1
	E_ 1
	G# 1
	octave 6
	C# 1
	octave 5
	G# 1
	E_ 1
	C# 1
	octave 4
	G# 1
	E_ 1
	C# 1
	E_ 1
	G# 1
	octave 5
	C# 1
	E_ 1
	G# 1
	octave 6
	C# 1
	octave 5
	G# 1
	E_ 1
	C# 1
	octave 4
	G# 1
	E_ 1
	D# 1
	F# 1
	B_ 1
	octave 5
	D# 1
	F# 1
	B_ 1
	octave 6
	C# 1
	octave 5
	B_ 1
	F# 1
	D# 1
	octave 4
	B_ 1
	F# 1
	D# 1
	F# 1
	B_ 1
	octave 5
	D# 1
	F# 1
	B_ 1
	octave 6
	C# 1
	octave 5
	B_ 1
	F# 1
	D# 1
	octave 4
	B_ 1
	F# 1
	endchannel

Music_Leech_Ch2_C14:
	E_ 1
	G# 1
	octave 5
	C# 1
	E_ 1
	G# 1
	B_ 1
	octave 6
	C# 1
	octave 5
	B_ 1
	G# 1
	E_ 1
	C# 1
	octave 4
	G# 1
	E_ 1
	G# 1
	octave 5
	C# 1
	E_ 1
	G# 1
	B_ 1
	octave 6
	C# 1
	octave 5
	B_ 1
	G# 1
	E_ 1
	C# 1
	octave 4
	G# 1
	notetype $c, $b, $b
	octave 5
	C# 1
	E_ 1
	C# 1
	octave 4
	B_ 1
	G# 1
	B_ 1
	G# 1
	E_ 1
	F# 1
	G# 1
	F# 1
	C# 1
	C# 1
	rest 3
	endchannel

Music_Leech_Ch2_C2:
	rest 16
	rest 16
	rest 6
; Pat 3 Row 38
	duty $1
	notetype $c, $b, $3
	C# 4
	octave 3
	B_ 4
	A# 8
	B_ 1
	A# 1
	G# 4
	duty $2
	notetype $c, $b, $b
	vibrato $7, $4, $5
	octave 4
	C# 1
	octave 3
	G# 1
	octave 4
	C# 1
	E_ 1
; Pat 4 Row 0
	F# 1
	E_ 1
	C# 1
	F# 1
	G# 1
	F# 1
	G# 1
	B_ 1
	octave 5
	C# 1
	octave 4
	B_ 1
	octave 5
	C# 1
	D# 1
	E_ 1
	C# 1
	E_ 1
	F# 1
	G# 1
	F# 1
	E_ 1
	C# 1
	octave 4
	B_ 1
	octave 5
	C# 1
	octave 4
	B_ 1
	G# 1
	F# 1
	G# 1
	F# 1
	E_ 1
	C# 1
	E_ 1
	D# 1
	C# 1
	octave 3
	A# 1
	F# 1
	C# 1
	F# 1
	A# 1
	F# 1
	C# 1
	F# 1
	B_ 1
	F# 1
	C# 1
	F# 1
	A# 1
	F# 1
	C# 1
	F# 1
	octave 4
	C# 1
	octave 3
	G# 1
	E_ 1
	G# 1
	octave 4
	C# 1
	octave 3
	G# 1
	E_ 1
	G# 1
	octave 4
	D# 1
	octave 3
	G# 1
	E_ 1
	G# 1
	octave 4
	C# 1
	octave 3
	G# 1
	E_ 1
	C# 1
; Pat 5 Row 0
	octave 4
	E_ 1
	C# 1
	octave 3
	G# 1
	octave 4
	C# 1
	E_ 1
	C# 1
	octave 3
	G# 1
	octave 4
	C# 1
	F# 1
	C# 1
	octave 3
	G# 1
	octave 4
	C# 1
	E_ 1
	C# 1
	octave 3
	G# 1
	octave 4
	C# 1
	D# 1
	C# 1
	octave 3
	G# 1
	octave 4
	C# 1
	D# 1
	C# 1
	octave 3
	G# 1
	octave 4
	C# 1
	F# 1
	G# 1
	F# 1
	E_ 1
	octave 3
	B_ 1
	G# 1
	B_ 1
	octave 4
	E_ 1
	octave 3
	A# 1
	G# 1
	C# 1
	G# 1
	A# 1
	G# 1
	notetype $8, $b, $b
	F# 1
	A# 1
	octave 4
	C# 1
	notetype $c, $b, $b
	F# 1
	A# 1
	F# 1
	C# 1
	octave 3
	A# 1
	F# 1
	notetype $8, $b, $b
	A# 1
	octave 4
	C# 1
	F# 1
	notetype $c, $b, $b
	G# 1
	A# 1
	B_ 1
	A# 1
	F# 1
	C# 1
	E_ 1
	G# 1
	F# 1
	C# 1
	octave 3
	A# 1
	octave 4
	C# 1
	octave 3
	A# 1
	F# 1
	C# 1
	F# 1
; Pat 7 Row 0
	E_ 1
	C# 1
	G# 1
	C# 1
	E_ 1
	C# 1
	G# 1
	C# 1
	F# 1
	C# 1
	G# 1
	C# 1
	E_ 1
	C# 1
	G# 1
	C# 1
	D# 1
	C# 1
	G# 1
	C# 1
	D# 1
	C# 1
	G# 1
	C# 1
	F# 1
	G# 1
	F# 1
	E_ 1
	octave 2
	B_ 1
	octave 3
	G# 1
	octave 2
	B_ 1
	octave 3
	E_ 1
	octave 2
	A# 1
	octave 3
	G# 1
	C# 1
	G# 1
	octave 2
	A# 1
	octave 3
	G# 1
	notetype $8, $b, $b
	F# 1
	octave 2
	A# 1
	octave 3
	C# 1
	notetype $c, $b, $b
	F# 1
	A# 1
	F# 1
	C# 1
	octave 2
	A# 1
	octave 3
	F# 1
	notetype $8, $b, $b
	octave 2
	A# 1
	octave 3
	C# 1
	F# 1
	notetype $c, $b, $b
	G# 1
	A# 1
	B_ 1
	A# 1
	F# 1
	C# 1
	E_ 1
	G# 1
	F# 1
	C# 1
	octave 2
	A# 1
	octave 3
	C# 1
	octave 2
	A# 1
	octave 3
	F# 1
	C# 1
	F# 1
	endchannel

Music_Leech_Ch2_C3:
	E_ 1
	C# 1
	G# 1
	C# 1
	E_ 1
	C# 1
	G# 1
	C# 1
	F# 1
	C# 1
	G# 1
	C# 1
	E_ 1
	C# 1
	G# 1
	C# 1
	D# 1
	C# 1
	G# 1
	C# 1
	D# 1
	C# 1
	G# 1
	C# 1
	D# 1
	C# 1
	G# 1
	E_ 1
	octave 2
	B_ 1
	octave 3
	G# 1
	octave 2
	B_ 1
	octave 3
	D# 1
	C# 1
	octave 2
	A# 1
	octave 3
	G# 1
	C# 1
	octave 2
	A# 1
	octave 3
	G# 1
	F# 1
	C# 1
	F# 1
	A# 1
	F# 1
	C# 1
	octave 2
	A# 1
	octave 3
	C# 1
	C# 1
	F# 1
	G# 1
	A# 1
	B_ 1
	A# 1
	F# 1
	C# 1
	E_ 1
	G# 1
	F# 1
	C# 1
	octave 2
	G# 1
	octave 3
	C# 1
	octave 2
	B_ 1
	octave 3
	D# 1
	C# 1
	F# 1
	endchannel

Music_Leech_Ch2_C4:
	C# 1
	rest 1
	C# 1
	rest 1
	C# 1
	D# 1
	E_ 1
	rest 1
	endchannel

Music_Leech_Ch2_C5:
	octave 2
	B_ 1
	rest 1
	B_ 1
	rest 1
	B_ 1
	octave 3
	C# 1
	D# 1
	rest 1
	loopchannel 2, Music_Leech_Ch2_C5
	endchannel

Music_Leech_Ch3:
; Pat 3 Row 0
	notetype $c, $1, $2
	callchannel Music_Leech_BeginRest
Music_Leech_Ch3_L2:
	callchannel Music_Leech_Ch3_C1
	loopchannel 6, Music_Leech_Ch3_L2
; Pat 9 Row 0
strum: MACRO
	rept \2
	callchannel Music_Leech_Ch3_\1
	endr
ENDM
	strum A_C#, 2
	strum A_E_, 1
	strum A_C#, 1
	strum C_D#, 1
	strum C_C#, 1
	strum A_B_, 3
; Pat 10 Row 0
	strum A_C#, 2
	strum A_D#, 1
	strum A_E_, 1
	strum B_B_, 1
	strum C_C#, 1
	strum C_D#, 1
	strum B_F#, 1
	strum B_G#, 1
	strum B_F#, 1
	strum B_B_, 1
	strum B_G#, 1
; Pat 11 Row 0
	strum C_C#, 4
	strum C_E_, 5
	strum C_F#, 1
	strum C_G#, 2
	strum C_D#, 2
	strum B_B_, 2
; Pat 13 Row 0
	strum C_C#, 6
	strum B_B_, 1
	strum C_D#, 1
	strum C_C#, 8
Music_Leech_Ch3_L3:
	callchannel Music_Leech_Ch3_C1
	loopchannel 4, Music_Leech_Ch3_L3
; Pat 14 Row 0
Music_Leech_Ch3_L4:
	rest 16
	loopchannel 4, Music_Leech_Ch3_L4
; Pat 9 Row 0
	strum A_C#, 2
	strum A_E_, 1
	strum A_C#, 1
	strum C_D#, 1
	strum C_C#, 1
	strum A_B_, 3
; Pat 10 Row 0
	strum A_C#, 2
	strum A_D#, 1
	strum A_E_, 1
	strum B_B_, 1
	strum C_C#, 1
	strum C_D#, 1
	strum B_F#, 1
	strum B_G#, 1
	strum B_F#, 1
	strum B_B_, 1
	strum B_G#, 1
; Pat 11 Row 0
	strum C_C#, 4
	strum C_E_, 5
	strum C_F#, 1
	strum C_G#, 2
	strum C_D#, 2
	strum B_B_, 2
; Pat 13 Row 0
	strum C_C#, 6
	strum B_B_, 1
	strum C_D#, 1
	strum C_C#, 8
; Pat 16 Row 0
	strum A_C#, 2
	strum A_E_, 1
	strum A_C#, 1
	strum C_D#, 1
	strum C_C#, 1
	strum A_B_, 3
; Pat 17 Row 0
	strum A_C#, 2
	strum A_D#, 1
	strum A_E_, 1
	strum B_B_, 1
	strum C_C#, 1
	strum C_D#, 1
	strum B_F#, 1
	strum B_G#, 1
	strum B_F#, 1
	strum B_B_, 1
	strum B_G#, 1
; Pat 18 Row 0
	strum C_C#, 4
	strum C_E_, 5
	strum C_F#, 1
	strum C_G#, 2
	strum C_D#, 2
	strum B_B_, 2
; Pat 19 Row 0
	strum C_C#, 6
	strum B_B_, 1
	strum C_D#, 1
	strum C_C#, 8
; Pat 20 Row 0
	strum C_C#, 4
	strum C_E_, 5
	strum C_F#, 1
	strum C_G#, 2
	strum C_D#, 2
	strum B_B_, 2
; Pat 22 Row 0
	strum C_C#, 6
	strum B_B_, 1
	strum C_D#, 1
	strum C_C#, 8
; Pat 15 Row 0
	octave 2
	F# 1
	E_ 1
	C# 1
	F# 1
	G# 1
	F# 1
	G# 1
	B_ 1
	octave 3
	C# 1
	octave 2
	B_ 1
	octave 3
	C# 1
	D# 1
	E_ 1
	C# 1
	E_ 1
	F# 1
	G# 1
	F# 1
	E_ 1
	C# 1
	octave 2
	B_ 1
	octave 3
	C# 1
	octave 2
	B_ 1
	G# 1
	F# 1
	G# 1
	F# 1
	E_ 1
	notetype $8, $1, $2
	C# 2
	octave 1
	B_ 2
	octave 2
	C# 4
	endchannel

Music_Leech_Ch3_C1:
	octave 2
	C# 2
	octave 3
	C# 2
	octave 2
	C# 2
	octave 3
	C# 2
	octave 2
	C# 2
	octave 3
	C# 2
	octave 2
	C# 2
	octave 3
	C# 2
	octave 2
	B_ 2
	octave 3
	B_ 2
	octave 2
	B_ 2
	octave 3
	B_ 2
	octave 2
	B_ 2
	octave 3
	B_ 2
	octave 2
	B_ 2
	octave 3
	B_ 2
	octave 2
	F# 2
	octave 3
	F# 2
	octave 2
	F# 2
	octave 3
	F# 2
	octave 2
	F# 2
	octave 3
	F# 2
	octave 2
	F# 2
	octave 3
	F# 2
	C# 2
	octave 4
	C# 2
	octave 3
	C# 2
	octave 4
	C# 2
	octave 3
	C# 2
	octave 4
	C# 2
	octave 3
	C# 2
	octave 4
	D# 2
	endchannel

def_strumA1: MACRO
	db $E7     ;octave 1
	db \1 << 4 ; \1 1
	db $E6     ;octave 2
	db \1 << 4 ; \1 1
	db $E7     ;octave 1
	db \1 << 4 ; \1 1
	db $C0     ; rest 1
	db \1 << 4 ; \1 1
	db $C0     ; rest 1
	db \1 << 4 ; \1 1
	db $C0     ; rest 1
	db $FF     ; endchannel
ENDM

def_strumA2: MACRO
	db $E6     ;octave 2
	db \1 << 4 ; \1 1
	db $E5     ;octave 3
	db \1 << 4 ; \1 1
	db $E6     ;octave 2
	db \1 << 4 ; \1 1
	db $C0     ; rest 1
	db \1 << 4 ; \1 1
	db $C0     ; rest 1
	db \1 << 4 ; \1 1
	db $C0     ; rest 1
	db $FF     ; endchannel
ENDM

def_strumB: MACRO
	db $E7     ;octave 1
	db \1 << 4 ; \1 1
	db $E6     ;octave 2
	db \1 << 4 ; \1 1
	db $E5     ;octave 3
	db \1 << 4 ; \1 1
	db $E6     ;octave 2
	db \1 << 4 ; \1 1
	db $FF     ; endchannel
ENDM

def_strumC: MACRO
	db $E6     ;octave 2
	db \1 << 4 ; \1 1
	db $E5     ;octave 3
	db \1 << 4 ; \1 1
	db $E4     ;octave 4
	db \1 << 4 ; \1 1
	db $E5     ;octave 3
	db \1 << 4 ; \1 1
	db $FF     ; endchannel
ENDM

Music_Leech_Ch3_A_B_: def_strumA1 11 ; B_
Music_Leech_Ch3_A_C#: def_strumA2 1  ; C#
Music_Leech_Ch3_A_D#: def_strumA2 3  ; D#
Music_Leech_Ch3_A_E_: def_strumA2 4  ; E_
Music_Leech_Ch3_B_F#: def_strumB  6  ; F#
Music_Leech_Ch3_B_G#: def_strumB  8  ; G#
Music_Leech_Ch3_B_B_: def_strumB  11 ; B_
Music_Leech_Ch3_C_C#: def_strumC  1  ; C#
Music_Leech_Ch3_C_D#: def_strumC  3  ; D#
Music_Leech_Ch3_C_E_: def_strumC  4  ; E_
Music_Leech_Ch3_C_F#: def_strumC  6  ; F#
Music_Leech_Ch3_C_G#: def_strumC  8  ; G#

Music_Leech_Ch4:
; Pat 3 Row 0
	dspeed $c
	callchannel Music_Leech_BeginRest
Music_Leech_Ch4_L1:
	snare1 4
	loopchannel 94, Music_Leech_Ch4_L1
	snare1 2
	mutedsnare3 2
	snare1 2
	mutedsnare3 1
	mutedsnare4 1
; Pat 9 Row 0
	callchannel Music_Leech_Ch4_C1
; Pat 11 Row 0
	callchannel Music_Leech_Ch4_C1
; Pat 3 Row 0
Music_Leech_Ch4_L2:
	snare1 4
	loopchannel 64, Music_Leech_Ch4_L2
; Pat 14 Row 0
	snare5 16
	rest 16
	rest 16
	rest 16
; Pat 9 Row 0
	callchannel Music_Leech_Ch4_C1
; Pat 11 Row 0
	callchannel Music_Leech_Ch4_C1
; Pat 16 Row 0
	callchannel Music_Leech_Ch4_C1
; Pat 18 Row 0
	callchannel Music_Leech_Ch4_C1
; Pat 20 Row 0
	cymbal3 1
	mutedsnare4 1
	snare6 1
	snare6 1
	snare1 1
	mutedsnare4 1
	snare6 1
	snare6 1
Music_Leech_Ch4_L3:
	snare3 1
	mutedsnare4 1
	snare6 1
	snare6 1
	snare1 1
	mutedsnare4 1
	snare6 1
	snare6 1
	loopchannel 14, Music_Leech_Ch4_L3
; Pat 22 Row 56
	snare3 1
	mutedsnare4 1
	snare6 1
	snare6 1
	snare1 1
	mutedsnare4 1
	snare6 1
Music_Leech_Ch4_L4:
	snare1 1
	loopchannel 29, Music_Leech_Ch4_L4
	dspeed $8
	snare1 2
	snare1 2
	snare1 2
	endchannel

Music_Leech_BeginRest:
	rest 16
	loopchannel 10, Music_Leech_BeginRest
	endchannel

Music_Leech_Ch4_C1:
	cymbal3 1
	mutedsnare4 1
	snare6 1
	snare6 1
	snare1 1
	mutedsnare4 1
	snare6 1
	snare6 1
Music_Leech_Ch4_C1L:
	snare3 1
	mutedsnare4 1
	snare6 1
	snare6 1
	snare1 1
	mutedsnare4 1
	snare6 1
	snare6 1
	loopchannel 15, Music_Leech_Ch4_C1L
	endchannel
