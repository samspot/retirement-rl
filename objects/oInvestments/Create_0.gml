event_inherited()

x = room_width - sprite_width - 32 - 16
y = room_height - sprite_height

image_xscale = global.spriteScale
image_yscale = global.spriteScale

gTop = y-23
gBottom = y+10

hDelta = abs(gTop - gBottom)

gCash = x-39
gIra = x-20
gEmp = x
gSma = x+20