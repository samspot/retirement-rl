/// ResizeGame()


var max_w = window_get_width();//display_get_width(); 
var max_h = window_get_height(); //display_get_height();
var aspect = max_w / max_h;

var VIEW_HEIGHT = GetViewH()
var VIEW_WIDTH = GetViewW()

var cam = view_get_camera(0)
var cx = GetGameX()
var cy = 0
	
// Scale the camera	
camera_set_view_size(view_camera[0], floor(VIEW_WIDTH), floor(VIEW_HEIGHT))
camera_set_view_pos(cam, -cx, cy)

// Scale the gui
var guiscale = camera_get_view_width(view_get_camera(0)) / camera_get_view_height(view_get_camera(0))
var guiscale= VIEW_WIDTH / VIEW_HEIGHT
var guix = cx
var guiscale = 1
//display_set_gui
//display_set_gui_maximize(guiscale, guiscale, guix, 0)
display_set_gui_size(floor(VIEW_WIDTH), floor(VIEW_HEIGHT))
global.guix_offset = cx


view_wport[0] = max_w;
view_hport[0] = max_h;
surface_resize(application_surface, view_wport[0], view_hport[0]);

//show_debug_message("guiscale: " + string(guiscale) + " guix: " + string(guix) + " aspect: " + string(aspect) + " VIEW_WIDTH: " + string(VIEW_WIDTH) + " base_w: " + string(global.base_h) + " cx: " + string(cx))


	///// at stopping point
	/*
		* landscape ios perfect on 1 device - test others
		* portrait ios busted, (too tall goes off bottom)
		* macOs possibly busted, seemed like i needed to reverse polarity on the x coordinate., BUT it works ok in portrait.
		* need to make a GetCamX and use in the set gui code too.
	*/

//display_set_gui_maximize(aspect, aspect, cx, 0)
//if(isLandscape){
						//var guiscale = VIEW_WIDTH / global.base_w
						//guiscale = 1
//} else {
//	var guiscale = VIEW_HEIGHT / global.base_h	
//}
//guiscale *= 2
//guiscale = VIEW_HEIGHT / global.base_h

//guiscale = floor(guiscale)
//var guix = cx * guiscale
//var guix = -cx
//display_set_gui_maximize(guiscale, guiscale, guix, 0)
