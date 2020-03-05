/// @description save high scores to a file

//#macro SAVEFILE "scores.sav"
#macro SAVEFILE "scores.json"

yS = 190
netWorth = string(global.netWorth)
age = string(global.age)
msg = string(global.deathmsg)

var newEntry = ds_map_create()
ds_map_add(newEntry, "netWorth", netWorth)
ds_map_add(newEntry, "age", age)
ds_map_add(newEntry, "msg", msg)

var key = string(age)+"-"+string(netWorth)
/*
var entryMap = ds_map_create()
ds_map_add_map(entryMap, key, newEntry)
*/
scores = ds_list_create()
//ds_list_add(scores, "Age: " + age + " Net Worth: $" + netWorth)
//ds_list_add(scores, newEntry)


if(file_exists(SAVEFILE)){
	
	var file = file_text_open_read(SAVEFILE)
	var json = file_text_read_string(file)
	
	var readMap = json_decode(json)
	
} else {
	var readMap = ds_map_create()
}

ds_map_add_map(readMap, key, newEntry)

if(file_exists(SAVEFILE)){
	file_delete(SAVEFILE)
}

var file = file_text_open_write(SAVEFILE)
file_text_write_string(file, json_encode(readMap))
file_text_close(file)

var k = ds_map_find_first(readMap)
while (!is_undefined(k)) {
  ds_list_add(scores, k)
  k = ds_map_find_next(readMap, k);
}

/// WE AHVE A LIST OF KEYS, NOW WHAT?

/*
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
*/
/*
for(i=0; i<ds_list_size(scores); i++){
	var scoreline = ds_list_find_value(scores, i)

	
	if(string_letters(scoreline) != ""){
		file_text_write_string(file, scoreline)
		file_text_writeln(file)
	}
}
*/
	

