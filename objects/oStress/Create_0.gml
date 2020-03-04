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

x = sprite_width
y = room_height - sprite_height

image_xscale = global.spriteScale
image_yscale = global.spriteScale
