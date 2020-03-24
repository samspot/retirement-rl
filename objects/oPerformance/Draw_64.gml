/// @description Insert description here
// You can write your code in this editor
if(show && !GestureMoving()) {
	x += GetGameX()
	draw_self()
	
	
	balance = oMarket.balance_ira + oMarket.balance_emp + oMarket.balance_sma
	
	draw_set_halign(fa_middle)
	var yStart = y - sprite_height/2
	
	var fColor = c_white
	//var cash = 1731.07
	fColor = balance < 0 ? c_red : c_white
	
	
	DrawTextShadowedColor(x, yStart + sprite_height*0.2, CashFmt(balance), fntGuiLarge, sprite_width, fColor)
	
	
	// last year rate of return (1 yr)
	//if(return1_rate < 0) fColor = c_red
	fColor = return1_rate < 0 ? c_red : c_white
	DrawTextShadowedColor(x, yStart + sprite_height*0.45, CashFmt(return1_amt) + " (" + string(return1_rate) + "%)", fntGui, sprite_width, fColor)
	
	// lifetime return
	//if(lifetime_returns < 0) fColor = c_red
	fColor = lifetime_returns < 0 ? c_red : c_white
	//var text = string(return_all_rate) + "%  " + CashFmt(lifetime_returns)
	if(lifetime_investments > 0){
		return_all_rate = (lifetime_returns - lifetime_investments) / lifetime_investments
	}
	//var text = CashFmt(lifetime_returns) + " (" + string(return_all_rate) + "%)"
	var text = CashFmt(lifetime_returns) + " (" + string(return_all_rate) + "%)"
	DrawTextShadowedColor(x, yStart + sprite_height*0.75, text, fntGui, sprite_width, fColor)
	/*
	if(lifetime_investments > 0){
		text = string((lifetime_returns - lifetime_investments) / lifetime_investments) + "%"
		DrawTextShadowedColor(x, yStart + sprite_height*0.65, text, fntGui, sprite_width, fColor)
	}
	*/
	x -= GetGameX()
}