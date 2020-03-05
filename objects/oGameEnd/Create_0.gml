/// @description save high scores to a file






//#macro SAVEFILE "scores.sav"
#macro SAVEFILE "scores.json"

audio_play_sound(sndDeath, 1, false)

netWorth = string(global.netWorth)
age = string(global.age)
msg = string(global.deathmsg)

// to clean up scores, newEntry, readMap
readMap = noone
scores = ds_list_create()
newEntry = ds_map_create()

ds_map_add(newEntry, "netWorth", netWorth)
ds_map_add(newEntry, "age", age)
ds_map_add(newEntry, "msg", msg)

var key = string(age)+"-"+string(netWorth)

if(file_exists(SAVEFILE)){
	var file = file_text_open_read(SAVEFILE)
	var json = file_text_read_string(file)
	
	readMap = json_decode(json)
	
} else {
	readMap = ds_map_create()
}

if(key != "default"){
	ds_map_add_map(readMap, key, newEntry)
}


if(!file_exists(SAVEFILE)){
	var file = file_text_open_write(SAVEFILE)
	file_text_write_string(file, "Hello World")
	file_text_close(file)
	
	file_delete(SAVEFILE)
}

if(file_exists(SAVEFILE)){
	file_delete(SAVEFILE)
}

var file = file_text_open_write(SAVEFILE)
file_text_write_string(file, json_encode(readMap))
file_text_close(file)


ds_map_delete(readMap, "default")
	
var k = ds_map_find_first(readMap)
while (!is_undefined(k)) {
  ds_list_add(scores, k)
  k = ds_map_find_next(readMap, k);
}

ds_list_sort(scores, false)

	

