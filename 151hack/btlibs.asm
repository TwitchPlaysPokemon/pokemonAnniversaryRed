BTLib1:
	db "ready@@@@"
	db "prepared@"
	db "excited@@"
	db "hyped@@@@"
	
BTLib2:
	db "go@@@@@"
	db "do it@@"
	db "battle@"
	db "rock@@@"
	
BTLib3:
	db "Oh no@@@@@"
	db "Argh no@@@"
	db "Oh well@@@"
	db "My streak@"
	
BTLib4:
	db "game@@@"
	db "battle@"
	db "play@@@"
	db "job@@@@"

BTBeforeBattlePtrTable:
	dw BTBeforeBattleTemplate1
	dw BTBeforeBattleTemplate2
	dw BTBeforeBattleTemplate3
	dw BTBeforeBattleTemplate4
	dw BTBeforeBattleTemplate5
	dw BTBeforeBattleTemplate6
	dw BTBeforeBattleTemplate7
	dw BTBeforeBattleTemplate8
	
BTAfterBattlePtrTable:
	dw BTAfterBattleTemplate1
	dw BTAfterBattleTemplate2
	dw BTAfterBattleTemplate3
	dw BTAfterBattleTemplate4
	dw BTAfterBattleTemplate5
	dw BTAfterBattleTemplate6
	dw BTAfterBattleTemplate7
	dw BTAfterBattleTemplate8

BTBeforeBattleTemplate1:
	text "I'm @"
	TX_RAM wStringBuffer1
	text "!"
	done
	
BTBeforeBattleTemplate2:
	text "Get @"
	TX_RAM wStringBuffer1
	text "!"
	done
	
BTBeforeBattleTemplate3:
	text "Let's @"
	TX_RAM wStringBuffer2
	text "!"
	done
	
BTBeforeBattleTemplate4:
	text "I'm @"
	TX_RAM wStringBuffer1
	db 0
	line "for this!"
	
	para "Let's @"
	TX_RAM wStringBuffer2
	text "!"
	done
	
BTBeforeBattleTemplate5:
	text "Here I come!"
	
	line "Let's @"
	TX_RAM wStringBuffer2
	text "!"
	done
	
BTBeforeBattleTemplate6:
	text "Let's @"
	TX_RAM wStringBuffer2
	db 0
	line "together!"
	done

BTBeforeBattleTemplate7:
	text "I'm waiting for"
	line "a while now."
	
	para "Let's @"
	TX_RAM wStringBuffer2
	text "!"
	done

BTBeforeBattleTemplate8:
	text "Well, I'm"
	line "@"
	TX_RAM wStringBuffer1
	text " now."
	
	para "Let's @"
	TX_RAM wStringBuffer2
	text "."
	done
	
BTAfterBattleTemplate1:
	text "@"
	TX_RAM wStringBuffer1
	text "!"
	
	para "Oh man.."
	prompt
	
BTAfterBattleTemplate2:
	text "@"
	TX_RAM wStringBuffer1
	text "!"
	prompt
	
BTAfterBattleTemplate3:
	text "@"
	TX_RAM wStringBuffer1
	text "!"
	
	line "Good @"
	TX_RAM wStringBuffer2
	text "!"
	prompt
	
BTAfterBattleTemplate4:
	text "That was a nice"
	line "@"
	TX_RAM wStringBuffer2
	text "!"
	prompt
	
BTAfterBattleTemplate5:
	text "I did the best"
	line "I could."
	
	para "I have no"
	line "regrets!"
	prompt

BTAfterBattleTemplate6:
	text "@"
	TX_RAM wStringBuffer1
	text "!"
	
	line "Nice @"
	TX_RAM wStringBuffer2
	text "!"
	prompt
	
BTAfterBattleTemplate7:
	text "That was a nice"
	line "@"
	TX_RAM wStringBuffer2
	text ","
	cont "don't you think?"
	prompt
	
BTAfterBattleTemplate8:
	text "Awesome"
	line "@"
	TX_RAM wStringBuffer2
	text "!"
	
	para "Shall we do this"
	line "again?"
	prompt