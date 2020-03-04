/// @description Draw current balances
draw_self()

// draw cashflow	
var incomeDelta = min(68, ceil((GetPlayerIncome() - GetExpenses()) / 100))
incomeDelta = max(-68, incomeDelta)
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
	+ "Annual Income: $" + string(GetPlayerIncome()) + "\n"
	+ "Expenses: $" + string(GetExpenses()) + "\n"
	
	
event_inherited()		