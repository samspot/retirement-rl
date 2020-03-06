/// @description save high scores to a file

//#macro SAVEFILE "scores.sav"
#macro SAVEFILE "scores.json"

audio_play_sound(sndDeath, 1, false)

netWorth = string(global.netWorth)
age = string(global.age)
msg = string(global.deathmsg)

// to clean up scores, newEntry, readMap
readMap = noone
//scores = ds_list_create()
newEntry = ds_map_create()

ds_map_add(newEntry, "netWorth", netWorth)
ds_map_add(newEntry, "age", age)
ds_map_add(newEntry, "msg", msg)

//var key = string(age)+"-"+string(netWorth)
var key = string(netWorth)+"-"+string(age)

if(file_exists(SAVEFILE)){
	var file = file_text_open_read(SAVEFILE)
	var json = file_text_read_string(file)
	
	
	// debug code
	jsonx = "{ " 
		+ "\"2000-24\": { \"age\": \"24\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"2000\" }"
		+ ", \"17000-24\": { \"age\": \"19\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"17000\" }"
		+ ", \"1000-24\": { \"age\": \"24\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"1000\" }"
		+ ", \"-1000-24\": { \"age\": \"24\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"-1000\" }"
		+ ", \"2000-24\": { \"age\": \"24\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"2000\" }"
		
		
		+ ", \"2000-82\": { \"age\": \"82\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"311836\" }"
		+ ", \"2000-112\": { \"age\": \"112\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"296417\" }"
		+ ", \"2000-86\": { \"age\": \"86\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"274513\" }"
		+ ", \"2000-89\": { \"age\": \"89\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"199604\" }"
		+ ", \"2000-91\": { \"age\": \"91\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"1026517\" }"
		+ ", \"2000-114\": { \"age\": \"114\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"1013777\" }"
		+ ", \"2000-82\": { \"age\": \"82\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"-3029\" }"
		+ ", \"2000-121\": { \"age\": \"121\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"-25168\" }"
		+ ", \"2000-87\": { \"age\": \"87\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"-19675\" }"
		+ ", \"2000-90\": { \"age\": \"90\", \"msg\": \"Stress induced heart attack!\", \"netWorth\": \"-19133\" }"
		
		+ " }"
	
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
	
	
scores = ds_priority_create()	
var k = ds_map_find_first(readMap)
while (!is_undefined(k)) {
  var entity = ds_map_find_value(readMap, k)
  var a = real(ds_map_find_value(entity, "age"))
  //var n = real(ds_map_find_value(entity, "netWorth"))
  //var priority = n ^ a
  var priority = -a
  ds_priority_add(scores, k, priority)
  k = ds_map_find_next(readMap, k);
}

scoreDisplayList = ds_list_create()
while(ds_priority_size(scores) > 0){
	k = ds_priority_delete_min(scores);
	ds_list_add(scoreDisplayList, k)
}
ds_priority_destroy(scores)

	

