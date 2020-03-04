draw_self()

var xStart = x+1
var yStart = y - 25

//oMarket.balance_ira = 5000000
if(oMarket.balance_ira > 0){
	var xStop = x + min(115, floor(oMarket.balance_ira / 1000)*3)
	draw_set_color(C_IRA)
	draw_rectangle(xStart, yStart, xStop, yStart+3, false)
}


//oMarket.balance_emp = 15000000
//var xStart = x
if(oMarket.balance_emp > 0){
	var xStop = x + min(115, floor(oMarket.balance_emp / 1000)*3)
	draw_set_color(C_EMP)
	draw_rectangle(xStart, yStart+10, xStop, yStart+13, false)
}


//oMarket.balance_sma = 25000000
//var xStart = x
if(oMarket.balance_sma > 0){
	var xStop = x + min(115, floor(oMarket.balance_sma / 1000)*3)
	draw_set_color(C_SMA)
	draw_rectangle(xStart, yStart+20, xStop, yStart+23, false)
}

toolTipText = ""
	+ "ira: $" + string(oMarket.balance_ira) + "\n"
	+ "emp: $" + string(oMarket.balance_emp) + "\n"
	+ "sma: $" + string(oMarket.balance_sma) + "\n"
	
event_inherited()		