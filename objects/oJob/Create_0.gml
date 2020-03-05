/// @description create job

event_inherited()
income = oBalance.jobIncome //3500

image_index = floor(random(sprite_get_number(sprite_index)))

//toolTipText = "A job paying" + CashFmt(income) + " per turn."
toolTipText = "A job that gives you cash every turn."

image_xscale = global.spriteScale
image_yscale = global.spriteScale

icon = sJobIcon
sound = sndJob