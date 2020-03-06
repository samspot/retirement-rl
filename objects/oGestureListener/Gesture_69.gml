/// @description Insert description here
// You can write your code in this editor

flickVelX = ds_map_find_value(event_data, "diffX")
flickVelY = ds_map_find_value(event_data, "diffY")

/*
var diffX = ds_map_find_value(event_data, "diffX")
var diffY = ds_map_find_value(event_data, "diffY")

if(diffX != 0 && diffY != 0){
	if(diffX > diffY){
		if(diffX > 0){
			right = 3
			left = 0; up = 0; down = 0;
		}
		if(diffX < 0){
			left = 3
			right = 0; up = 0; down = 0;
		}
	} else if (diffY > diffX){
		if(diffY < 0){
			up = 3
			left = 0; right = 0; down = 0;
		}
		if(diffY > 0){
			down = 3
			up = 0; left = 0; right = 0;
		}
	}
} else {
	if(diffX > 0){
		right = 3
		left = 0; up = 0; down = 0;
	}
	if(diffX < 0){
		left = 3
		right = 0; up = 0; down = 0;
	}
	if(diffY < 0){
		up = 3
		left = 0; right = 0; down = 0;
	}
	if(diffY > 0){
		down = 3
		up = 0; left = 0; right = 0;
	}
}
*/