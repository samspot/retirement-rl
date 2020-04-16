/// @description Insert description here
// You can write your code in this editor
if(show && !IsMovingSwiping()) {
	x += GetGameX()
	y -= GetGameY()
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
		// Rate of Return
		//return_all_rate = (lifetime_returns - lifetime_investments) / lifetime_investments
		// Annualized Rate of Return
		var currentValue = balance + lifetime_withdrawals
		var originalValue = lifetime_investments
		var numberOfYears = global.age - oBalance.pAge
		return_all_rate = (currentValue / originalValue) ^ (1/numberOfYears)
		var ror = 0 
		if(originalValue != 0){
			ror = (currentValue - originalValue) / originalValue * 100
		}
		
		return_all_rate = ror
		show_debug_message("Annualized RoR = (" + string(currentValue) + " / " + string(originalValue) + ") ^ 1/" + string(numberOfYears) + " = " + string(return_all_rate) 
		+ " lifetime_inv: " + string(lifetime_investments) + " lifetime_red: " + string(lifetime_withdrawals) 
		+ " RoR = (" + string(currentValue) + " - " + string(originalValue) + ") / " + string(originalValue) + " = " + string(ror))
	
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
	y += GetGameY()
}