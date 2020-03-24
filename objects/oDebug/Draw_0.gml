/// @description Insert description here
// You can write your code in this editor


draw_set_font(fntGui)

var cam = view_get_camera(0)
var camX = camera_get_view_x(cam);
var camY = camera_get_view_y(cam)

var camW = camera_get_view_width(cam)
var camH = camera_get_view_height(cam)

draw_set_color(c_black)
draw_set_alpha(0.5)
draw_rectangle(camX, camY, camX+camW, camY+camH, false)

draw_set_color(c_white)
draw_set_alpha(1)
draw_text(camX+10, camY+10, "Camera Box")

var viewX = view_get_xport(0)
var viewY = view_get_yport(0)
var viewW = view_get_wport(0)
var viewH = view_get_hport(0)

draw_set_color(c_green)
draw_set_alpha(0.5)
draw_rectangle(viewX, viewY, viewX+viewW, viewY+viewH, false)


draw_set_color(c_white)
draw_set_alpha(1)
draw_text(viewX+10, viewY+10, "Viewport Box")