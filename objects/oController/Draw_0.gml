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
//draw_roundrect_color( 0+2, room_height - 95, room_width-3, room_height-3, c_black, c_black, false);
	


var market = "Stable"
if(oMarket.market_state == 1) market = "Bull"
if(oMarket.market_state == 0) market = "Bear"


if(debug_mode){
	var num = ds_list_size(oController.enemyQueue)
	for(i=0; i<num; i++){
		var en = ds_list_find_value(oController.enemyQueue, i)
		DrawTextShadowed(0, 10+i*20, "Enemy queue" + string(i) + " " + string(en))	
	}
	
	DrawTextShadowed(0, 10+i*20, "player canmove" + string(oPlayer.canMove))	
}