var cy = 0
if(!IsLandscape()){
	var iosmap = json_decode(iOS_get_safe_area())
	var topPx = ds_map_find_value(iosmap, "top")
	cy -= topPx
}
return cy