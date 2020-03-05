/// @description Insert description here
// You can write your code in this editor


x = room_width / 2




var text_width = string_width_ext(text, 16, room_width*.9)
var text_height = string_height_ext(text, 16, room_width*.9)

//draw_roundrect_color(room_width*.05, y-text_height/2, room_width*.95, y+text_height/2, c_black, c_black, false)
draw_roundrect_color(x-text_width/2-2, y-text_height/2, x+text_width/2+2, y+text_height/2, c_black, c_black, false)

draw_set_halign(fa_center)
draw_set_font(fntFloating)
//DrawTextShadowed(x, y, text)
draw_set_color(c_white)
draw_text_ext(x, y, text, 16, text_width)
draw_set_halign(fa_left)