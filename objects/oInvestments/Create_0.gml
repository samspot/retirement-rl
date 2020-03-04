event_inherited()

//x = room_width - sprite_width - 32 - 16
//y = room_height - sprite_height


x = room_width - 96
y = room_height - 15

image_xscale = global.spriteScale
image_yscale = global.spriteScale

//gTop = y-23
//gBottom = y+10
gTop = y-23
gBottom = y

hDelta = abs(gTop - gBottom) - 3

gCash = x
gIra = x+10
gEmp = x+23
gSma = x+35