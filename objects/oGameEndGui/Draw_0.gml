/// @description draw game end stats
draw_self()

draw_set_valign(fa_top);

// Debug
//oGameEnd.age = "110"
//oGameEnd.netWorth = 2111111
//oGameEnd.msg = "a message that is really quite too long, and shouldn't be here"

DrawTextShadowed(x+70, y, "Net Worth " + CashFmt(oGameEnd.netWorth), fntGui, sprite_width)
DrawTextShadowed(x, y, "Age " + oGameEnd.age, fntGui, sprite_width)
DrawTextShadowed(x, y+40, oGameEnd.msg, fntGui, sprite_width-16)

var text = "Market Returns " + string(oPerformance.return_all_rate) + "%  " + CashFmt(oPerformance.lifetime_returns)
DrawTextShadowed(x, y+20, text, fntGui, 0)

for(i=0; i<ds_list_size(oGameEnd.scoreDisplayList); i++){
	var key = ds_list_find_value(oGameEnd.scoreDisplayList, i)
	var entry = ds_map_find_value(oGameEnd.readMap, key)
	
	var a = ds_map_find_value(entry, "age")
	var worth = ds_map_find_value(entry, "netWorth")
	var line = "Age " + a + ", Net Worth" + CashFmt(worth)
	//var line = "Age " + a + ", Net Worth" + string(worth)
	if(string_letters(line) != ""){
		var drawX = x
		if(i == 9) drawX -= 9
		DrawTextShadowed(drawX, y+100 + (20*i), string(i+1) + ") " + line,fntGui, sprite_width)
	}
	if(i>=9){ break }
}

draw_set_valign(fa_middle);