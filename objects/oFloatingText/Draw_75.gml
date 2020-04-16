/// @description draw floating text

draw_set_font(fntFloating)
var text_width = string_width_ext(text, 16, room_width*.9)
var text_height = string_height_ext(text, 16, room_width*.9)

draw_roundrect_color(x-text_width/2-8, y-text_height/2, x+text_width/2+8, y+text_height/2, c_black, c_black, false)

draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text_ext(x, y, text, 16, text_width)