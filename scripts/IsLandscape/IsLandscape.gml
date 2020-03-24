/// IsLandscape()

var max_w = window_get_width()
var max_h = window_get_height()

var isLandscape = 0
if (max_w < max_h){
    // portait
	isLandscape = 0
} else {
    // landscape
	isLandscape = 1
}

return isLandscape