/// ResizeGame()


var max_w = window_get_width()
var max_h = window_get_height()
//var aspect = max_w / max_h

var VIEW_HEIGHT = GetViewH()
var VIEW_WIDTH = GetViewW()

var cam = view_get_camera(0)
var cx = GetGameX()
var cy = 0
	
// Scale the camera	
camera_set_view_size(view_camera[0], floor(VIEW_WIDTH), floor(VIEW_HEIGHT))
camera_set_view_pos(cam, -cx, cy)

// Scale the gui
display_set_gui_size(floor(VIEW_WIDTH), floor(VIEW_HEIGHT))

view_wport[0] = max_w;
view_hport[0] = max_h;
surface_resize(application_surface, view_wport[0], view_hport[0]);

//show_debug_message("guiscale: " + string(guiscale) + " guix: " + string(cx) + " aspect: " + string(aspect) + " VIEW_WIDTH: " + string(VIEW_WIDTH) + " base_w: " + string(global.base_h) + " cx: " + string(cx))


