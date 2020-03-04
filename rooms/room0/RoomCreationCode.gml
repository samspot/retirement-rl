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