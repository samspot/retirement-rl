/// ResizeGame()

/*
var _check = true;
var _rm = room_next(room);
var  _rprev = _rm;

while (_check = true)
    {
    var _cam = room_get_camera(_rm, 0);
    camera_destroy(_cam);
    var _newcam = camera_create_view((1024 - VIEW_WIDTH) div 2, (768 - VIEW_HEIGHT) div 2, VIEW_WIDTH, VIEW_HEIGHT);
    room_set_camera(_rm, 0, _newcam);
    room_set_viewport(_rm, 0, true, 0, 0, VIEW_WIDTH, VIEW_HEIGHT);
    room_set_view_enabled(_rm, true);
    if _rm = room_last
        {
        _check = false;
        }
    else
        {
        _rprev = _rm;
        _rm = room_next(_rprev);
        }
    }
	*/
	
	/*
var base_w = 256;
var base_h = 384;
var aspect = base_w / base_h ; // get the GAME aspect ratio
if (display_get_width() < display_get_height())
    {
    //portrait
    var ww = min(base_w, display_get_width());
    var hh = ww / aspect;
    }
else
    {
    //landscape
    var hh = min(base_h, display_get_height());
    var ww = hh * aspect;
    }
surface_resize(application_surface, ww, hh);
*/
//*
var base_w = 256;
var base_h = 384;
var max_w = display_get_width();
var max_h = display_get_height();
var aspect = display_get_width() / display_get_height();

var VIEW_HEIGHT = 0
var VIEW_WIDTH = 0
	// landscape
    // VIEW_HEIGHT = min(base_h, max_h);
    // VIEW_WIDTH = VIEW_HEIGHT * aspect;
	
    // portait
    //VIEW_WIDTH = min(base_w, max_w);
    //VIEW_HEIGHT = VIEW_WIDTH / aspect;
	
	//VIEW_HEIGHT = min(base_h, max_h);
	//VIEW_WIDTH = VIEW_HEIGHT * aspect;
//*
if (max_w < max_h){
    // portait
	//aspect = base_w / base_h
    VIEW_WIDTH = min(base_w, max_w);
    VIEW_HEIGHT = VIEW_WIDTH / aspect;
} else {
    // landscape
	
	//aspect = base_w / base_h
    VIEW_HEIGHT = min(base_h, max_h);
    VIEW_WIDTH = VIEW_HEIGHT * aspect;
}//*/

	
//camera_set_view_size(view_camera[0], floor(VIEW_WIDTH), floor(VIEW_HEIGHT))
view_wport[0] = max_w;
view_hport[0] = max_h;
surface_resize(application_surface, view_wport[0], view_hport[0]);
//*/
//display_set_gui_size(view_wport[0], view_hport[0]);
display_set_gui_size(view_wview[0], view_hview[0]);