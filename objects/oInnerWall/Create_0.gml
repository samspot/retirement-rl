/// @description Insert description here
// You can write your code in this editor
event_inherited()

gX = PixelToGrid(x)
gY = PixelToGrid(y)

image_speed = 0
image_index = floor(random(sprite_get_number(sprite_index)))

image_xscale = global.spriteScale
image_yscale = global.spriteScale

toolTipText = "An impassible barrier."