/// @description debug stuff

draw_set_font(fDebug)
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


DrawTextShadowed(0, 360, "age: " + string(oPlayer.age))
DrawTextShadowed(0, 380, "expenses: " + string(oPlayer.expenses))
DrawTextShadowed(0, 400, "cash: " + string(oPlayer.cash))