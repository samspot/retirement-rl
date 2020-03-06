/// @description Insert description here
// You can write your code in this editor
if(show) {
	draw_self()
	
	
	balance = oMarket.balance_ira + oMarket.balance_emp + oMarket.balance_sma
	
	var i = 0
	var total_return = 0
	for(i=0; i<ds_list_size(return_list); i++){
		total_return += ds_list_find_value(return_list, i)
	}
	if(i>0){
		return_all_rate = total_return / i
	} else {
		return_all_rate = 0	
	}
	
	//draw_sprite_stretched(sBackgroundStreet, 0, x-sprite_width/2, y-sprite_height/2, sprite_width, sprite_height)
	//draw_sprite_tiled(sBackgroundStreet, 0, x-sprite_width/2, y-sprite_height/2)
	//draw_sprite_tiled(sBackgroundStreet, 0, x, y)
	//draw_sprite_stretched()
	//draw_sprite(sBackgroundStreet, 0, x-sprite_width/2, y-sprite_height/2)
	/*
	for(i=0; i<oController.gridHeight; i++){
		for(j=0; j<oController.gridWidth; j++){
			var xx = x-sprite_width/2+i*32
			var yy = x-sprite_height/2+j*32
			draw_sprite(sBackgroundStreet, 0, xx, yy)
		}
	}
	*/
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
	var text = CashFmt(lifetime_returns) + " (" + string(return_all_rate) + "%)"
	DrawTextShadowedColor(x, yStart + sprite_height*0.75, text, fntGui, sprite_width, fColor)
}