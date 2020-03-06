draw_self()

var xStart = x+1
var yStart = y - 25

#macro INV_SCALE 10000
#macro INV_MULT 1

//oMarket.balance_ira = 5000000
if(oMarket.balance_ira > 0){
	var xStop = x + min(115, floor(oMarket.balance_ira / INV_SCALE)*INV_MULT)
	draw_set_color(C_IRA)
	draw_rectangle(xStart, yStart, xStop, yStart+3, false)
}


//oMarket.balance_emp = 15000000
//var xStart = x
if(oMarket.balance_emp > 0){
	var xStop = x + min(115, floor(oMarket.balance_emp / INV_SCALE)*INV_MULT)
	draw_set_color(C_EMP)
	draw_rectangle(xStart, yStart+10, xStop, yStart+13, false)
}


//oMarket.balance_sma = 25000000
//var xStart = x
if(oMarket.balance_sma > 0){
	var xStop = x + min(115, floor(oMarket.balance_sma / INV_SCALE)*INV_MULT)
	draw_set_color(C_SMA)
	draw_rectangle(xStart, yStart+20, xStop, yStart+23, false)
}

toolTipText = "Investment Balances\n"
	+ "IRA   " + CashFmt(oMarket.balance_ira) + "\n"
	+ "401(k)" + CashFmt(oMarket.balance_emp) + "\n"
	+ "SMA" + CashFmt(oMarket.balance_sma) + "\n"
	
event_inherited()		