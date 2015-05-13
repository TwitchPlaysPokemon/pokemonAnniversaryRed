CeladonMartBasementScript: 
	jp EnableAutoTextBoxDrawing

CeladonMartBasementTextPointers: 
	dw CeladonMartBasementText1
	dw CeladonMartBasementText2
	dw CeladonMartBasementText3
	dw CeladonMartBasementText4
	dw CeladonMartBasementText5
	dw CeladonMartBasementText6
	dw CeladonMartBasementGuy
	dw CeladonMartBasementSign
	
CeladonMartBasementSign: 
	TX_FAR _CeladonMartBasementSign
	db "@"
	
CeladonMartBasementGuy: 
	TX_FAR _CeladonMartBasementGuy
	db "@"
