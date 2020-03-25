/// GetViewH()

var max_w = window_get_width()
var max_h = window_get_height()
var aspect = max_w / max_h;

var VIEW_WIDTH = 0
var VIEW_HEIGHT = 0

if (max_w < max_h){
    // portait
    VIEW_WIDTH = min(global.base_w, max_w);
    VIEW_HEIGHT = VIEW_WIDTH / aspect;
} else {
    // landscape
	VIEW_HEIGHT = min(global.base_h, max_h);
    VIEW_WIDTH = VIEW_HEIGHT * aspect;
}

if(VIEW_HEIGHT < 384){
	var diff = 384 - VIEW_HEIGHT
	VIEW_HEIGHT = 384
	VIEW_WIDTH += diff
}


return VIEW_HEIGHT
//return 384