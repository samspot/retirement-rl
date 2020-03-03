/// @description save high scores to a file

#macro SAVEFILE "scores.sav"

yS = 190
netWorth = string(global.netWorth)
age = string(global.age)
msg = string(global.deathmsg)

scores = ds_list_create()
ds_list_add(scores, "Age: " + age + " Net Worth: $" + netWorth)
if(file_exists(SAVEFILE)){
	var file = file_text_open_read(SAVEFILE)
	while(!file_text_eof(file)){
		var line = file_text_readln(file)
		line = string_replace(line, "\n", "")
		line = string_replace(line, "\r", "")
		if(string_letters(line) != ""){
			ds_list_add(scores, line)
		}
	}
	file_text_close(file)
}

if(file_exists(SAVEFILE)){
	file_delete(SAVEFILE)
}

var file = file_text_open_write(SAVEFILE)

for(i=0; i<ds_list_size(scores); i++){
	var scoreline = ds_list_find_value(scores, i)
	
	if(string_letters(scoreline) != ""){
		file_text_write_string(file, scoreline)
		file_text_writeln(file)
	}
}
	
file_text_close(file)
