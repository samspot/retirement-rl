/// @description draw game end stats


draw_set_valign(fa_top);
DrawTextShadowed(0, yS, "Net Worth " + netWorth,fntGui)
DrawTextShadowed(0, yS+20, "Age " + age,fntGui)
DrawTextShadowed(0, yS+40, msg,fntGui)


for(i=0; i<ds_list_size(scores); i++){
	var key = ds_list_find_value(scores, i)
	var entry = ds_map_find_value(readMap, key)
	
	var a = ds_map_find_value(entry, "age")
	var worth = ds_map_find_value(entry, "netWorth")
	var line = "Age: " + a + " Net Worth: $" + worth
	if(string_letters(line) != ""){
		DrawTextShadowed(0, yS+100 + (20*i), string(i+1) + ") " + line,fntGui)
	}
}

draw_set_valign(fa_middle);