ParasBaseStats: ; 388ca (e:48ca)
db DEX_PARAS ; pokedex id
db $32 ; base hp
db $5a ; base attack
db $4b ; base defense
db $2d ; base speed
db $3c ; base special
db BUG ; species type 1
db GRASS ; species type 2
db 190 ; catch rate
db 70 ; base exp yield
INCBIN "pic/bmon/paras.pic",0,1 ; 55, sprite dimensions
dw ParasPicFront
dw ParasPicBack
; attacks known at lvl 0
db SCRATCH
db 0
db 0
db 0
db 0 ; growth rate
; learnset
db %10100100
db %00000011
db %00111000
db %11001000
db %10000011
db %00001000
db %00000110
db 0 ; padding
