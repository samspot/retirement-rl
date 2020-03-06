/// @description draw game end stats
draw_self()

draw_set_valign(fa_top);
DrawTextShadowed(x, y, "Net Worth " + CashFmt(oGameEnd.netWorth), fntGui, sprite_width)
DrawTextShadowed(x, y+20, "Age " + oGameEnd.age, fntGui, sprite_width)
DrawTextShadowed(x, y+40, oGameEnd.msg, fntGui, sprite_width-16)

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

//var key = ds_priority_delete_min(oGameEnd.scores);
//var i = 0
//for(i=0; i<ds_list_size(oGameEnd.scores); i++){
/*
for(i=0; i<ds_priority_size(oGameEnd.scores); i++){
	//var key = ds_list_find_value(oGameEnd.scores, i)
//while(!is_undefined(key)){
	//var key = ds_priority_find_value(oGameEnd.scores, i)
	var key = ds_priority_find_priority(oGameEnd.scores, i)
	var entry = ds_map_find_value(oGameEnd.readMap, key)
	if(is_undefined(entry)){ break }
	var a = ds_map_find_value(entry, "age")
	var worth = ds_map_find_value(entry, "netWorth")
	var line = "Age " + a + ", Net Worth" + CashFmt(worth)
	//var line = "Age " + a + ", Net Worth" + string(worth)
	if(string_letters(line) != ""){
		var drawX = x
		if(i == 9) drawX -= 9
		DrawTextShadowed(drawX, y+100 + (20*i), string(i+1) + ") " + line,fntGui, sprite_width)
	}
	//i++
	if(i>=9){ break }
	//key = ds_priority_delete_min(oGameEnd.scores);
}
*/

draw_set_valign(fa_middle);