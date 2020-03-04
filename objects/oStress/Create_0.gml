event_inherited()

enum stress {
	HAPPY,
	GREAT,
	GOOD,
	OK,
	STRESSED,
	WORRIED,
	FREAKING,
	NEARDEATH,
	DYING,
	DANGER
}

stressLevel = stress.DANGER
image_index = stressLevel

x = sprite_width / 2 
y = room_height - sprite_height / 2

//x = 0
//y = 

image_xscale = global.spriteScale
image_yscale = global.spriteScale
