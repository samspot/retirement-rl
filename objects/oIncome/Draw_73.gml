/// @description Draw current balances
draw_self()

//oPlayer.income = 0
//oPlayer.expenses = 30000

// draw cashflow	
var incomeDelta = min(68, ceil((GetPlayerIncome() - GetExpenses()) / 500))
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
var xp = x - sprite_width/3
var yp = y-4-2
var str = "Cash" + CashFmt(oPlayer.cash)

draw_set_halign(fa_left)
draw_set_color(c_black)
draw_set_font(fntGui)
draw_text(xp+1, yp+1, str)
	/*
draw_set_color(c_gray)
draw_text(xp, yp, str)
	*/


toolTipText = "Cash Flow\n"
	+ "Cash" + CashFmt(oPlayer.cash) + "\n"
	+ "Income" + CashFmt(GetPlayerIncome()) + "\n"
	+ "Expenses" + CashFmt(GetExpenses()) + "\n"
	
	
event_inherited()		