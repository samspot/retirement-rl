/// DrawTextShadowed(x, y, str)
var xp = argument0
var yp = argument1
var str = argument2
var fnt = argument3

draw_set_color(c_black)
draw_set_font(fnt)
draw_text(xp+1, yp+1, str)
	
draw_set_color(c_white)
draw_text(xp, yp, str)
	