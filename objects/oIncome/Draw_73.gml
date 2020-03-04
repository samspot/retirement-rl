/// @description Draw current balances
draw_self()

/*
DrawTextShadowed(4, room_height-80, "annual income: " + string(oPlayer.income))
DrawTextShadowed(4, room_height-60, "cash: " + string(oPlayer.cash))
DrawTextShadowed(4, room_height-40, "expenses: " + string(GetExpenses()))

DrawTextShadowed(room_width / 2, room_height-80, "ira$: " + string(oMarket.balance_ira))
DrawTextShadowed(room_width / 2, room_height-60, "emp$: " + string(oMarket.balance_emp))
DrawTextShadowed(room_width / 2, room_height-40, "sma$: " + string(oMarket.balance_sma))
*/


// draw cashflow	
var incomeDelta = ceil((oPlayer.income - GetExpenses()) / 100)
var xStop = x
var xStart = x
if(incomeDelta <= 0){
	draw_set_colour(c_red)
	xStart -= abs(incomeDelta)
	xStop = x
} else {
	draw_set_colour(c_green)	
	xStart = x
	xStop += abs(incomeDelta)
}
draw_rectangle(xStart, y-20, xStop, y-15, false)

//DrawTextShadowed(x - sprite_width/4, y-4, "Cash $" + string(oPlayer.cash))
// manual DrawTextShadowed
var xp = x - sprite_width/4
var yp = y-4
var str = "Cash $" + string(oPlayer.cash)

draw_set_color(c_black)
draw_set_font(fntGui)
draw_text(xp+1, yp+1, str)
	
draw_set_color(c_gray)
draw_text(xp, yp, str)
	


toolTipText = "Your Net Worth - "
	+ "Cash: $" + string(oPlayer.cash) + "\n"
	+ "Annual Income: $" + string(oPlayer.income) + "\n"
	+ "Expenses: $" + string(GetExpenses()) + "\n"
	//+ "ira: $" + string(oMarket.balance_ira) + "\n"
	//+ "emp: $" + string(oMarket.balance_emp) + "\n"
	//+ "sma: $" + string(oMarket.balance_sma) + "\n"
	
	
event_inherited()		