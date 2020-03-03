/// @description Insert description here
// You can write your code in this editor
event_inherited()

gX = PixelToGrid(x)
gY = PixelToGrid(y)

image_speed = 0
image_index = floor(random(sprite_get_number(sprite_index)))

var scale = 1.6
image_xscale = scale
image_yscale = scale