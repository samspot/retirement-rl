/// GetGameX()

var cx = 0

//if(IsLandscape()){
	cx = (GetViewW() * .5) - (room_width * .5)	
//}

/*
if(IsLandscape()){
	var iosmap = json_decode(iOS_get_safe_area())
	var leftPx = ds_map_find_value(iosmap, "left")
	cx += leftPx
}
*/

return cx
