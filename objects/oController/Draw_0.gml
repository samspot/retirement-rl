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


DrawTextShadowed(0, 360, "cash: " + string(oPlayer.cash))
DrawTextShadowed(0, 380, "expenses: " + string(GetExpenses()))
DrawTextShadowed(0, 400, "age: " + string(oPlayer.age))

var market = "Stable"
if(oMarket.market_state == 1) market = "Bull"
if(oMarket.market_state == 0) market = "Bear"

//DrawTextShadowed(150, 300, "Dead? " + string(oPlayer.dead))

DrawTextShadowed(150, 320, "ira$: " + string(oMarket.balance_ira))
DrawTextShadowed(150, 340, "emp$: " + string(oMarket.balance_emp))
DrawTextShadowed(150, 360, "sma$: " + string(oMarket.balance_sma))
DrawTextShadowed(150, 380, "market: " + market)
DrawTextShadowed(120, 400, "ira: " 	+ string(oMarket.ira)
	+ ", emp: " + string(oMarket.emp)
	+ ", sma: " + string(oMarket.sma))