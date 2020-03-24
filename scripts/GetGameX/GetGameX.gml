/// GetGameX()

/*
var max_w = window_get_width();
var max_h = window_get_height();
var aspect = max_w / max_h;

var VIEW_HEIGHT = 0
var VIEW_WIDTH = 0
*/

var cx = 0
/*
//var isLandscape = 0
if (max_w < max_h){
    // portait
	//aspect = base_w / base_h
    VIEW_WIDTH = min(global.base_w, max_w);
    VIEW_HEIGHT = VIEW_WIDTH / aspect;
	
	var cx = 0
} else {
    // landscape
	//isLandscape = 1
	//aspect = base_w / base_h
    VIEW_HEIGHT = min(global.base_h, max_h);
    VIEW_WIDTH = VIEW_HEIGHT * aspect;
	
	var cx = (VIEW_WIDTH * .5) - (room_width * .5)
}
*/

if(IsLandscape()){
	cx = (GetViewW() * .5) - (room_width * .5)	
}

return cx