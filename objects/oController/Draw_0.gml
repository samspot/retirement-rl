/// @description debug stuff

//draw_set_font(fDebug)

draw_set_font(fntFloating)
draw_set_color(c_dkgray)

if(debug_mode){
	var iy, ix

	for(iy = 0; iy < gridHeight; iy++){
		for(ix = 0; ix < gridWidth; ix++){
			draw_text(GridToPixel(ix)-5, 
				GridToPixel(iy)-7, 
				ds_grid_get(grid, ix, iy))
		}
	}
}

// Set alignment to right
//draw_set_halign(fa_right);

// Draw rect around the text
draw_roundrect_color( 0+2, room_height - 120, room_width-3, room_height-3, c_black, c_black, false);
	
	
//draw_set_halign(fa_left);

// y starting point for gui
var ys = 460

DrawTextShadowed(4, ys, "cash: " + string(oPlayer.cash))
DrawTextShadowed(4, ys+20, "expenses: " + string(GetExpenses()))
DrawTextShadowed(4, ys+40, "happiness: " + string(oPlayer.happiness))
DrawTextShadowed(4, ys+60, "age: " + string(oPlayer.age))
DrawTextShadowed(4, ys+80, "death risk: " + string(GetDeathRisk()))

var market = "Stable"
if(oMarket.market_state == 1) market = "Bull"
if(oMarket.market_state == 0) market = "Bear"

//DrawTextShadowed(150, 300, "Dead? " + string(oPlayer.dead))

DrawTextShadowed(220, ys, "ira$: " + string(oMarket.balance_ira))
DrawTextShadowed(220, ys+20, "emp$: " + string(oMarket.balance_emp))
DrawTextShadowed(220, ys+40, "sma$: " + string(oMarket.balance_sma))
DrawTextShadowed(220, ys+60, "market: " + market)
DrawTextShadowed(220, ys+80, "ira: " 	+ string(oMarket.ira)
	+ ", emp: " + string(oMarket.emp)
	+ ", sma: " + string(oMarket.sma))
	
if(debug_mode){
	var num = ds_list_size(oController.enemyQueue)
	for(i=0; i<num; i++){
		var en = ds_list_find_value(oController.enemyQueue, i)
		DrawTextShadowed(0, 10+i*20, "Enemy queue" + string(i) + " " + string(en))	
	}
	
	DrawTextShadowed(0, 10+i*20, "player canmove" + string(oPlayer.canMove))	
}