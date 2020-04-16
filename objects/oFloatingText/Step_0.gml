time--
if(time % 2 == 0){
	y++
}

//if(time <= 0) {
if(y > room_height){
	instance_destroy()
	with(oController){
		var index = ds_list_find_index(messageList, other)	
		ds_list_delete(messageList, index)
	}
}