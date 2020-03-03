/// @description draw game end stats

DrawTextShadowed(0, yS, "Net Worth " + netWorth)
DrawTextShadowed(0, yS+20, "Age " + age)
DrawTextShadowed(0, yS+40, msg)


for(i=0; i<ds_list_size(scores); i++){
	var line = ds_list_find_value(scores, i)
	if(string_letters(line) != ""){
		DrawTextShadowed(0, yS+100 + (20*i), string(i+1) + ") " + line)
	}
}