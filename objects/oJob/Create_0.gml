/// @description create job

event_inherited()
income = 1500

image_index = floor(random(sprite_get_number(sprite_index)))

toolTipText = "A job paying $" + string_format(income, 5, 2) + " per year (turn)."

image_xscale = global.spriteScale
image_yscale = global.spriteScale

icon = sJobIcon