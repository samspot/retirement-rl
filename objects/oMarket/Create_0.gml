/// @description Insert description here
// You can write your code in this editor

event_inherited()

enum marketState {
	BEAR, BULL, STABLE
}


// percent income in each ret vehicle
ira = 0
emp = 0
sma = 0

balance_ira = 0
balance_emp = 0
balance_sma = 0


SimMarkets()


x = room_width - sprite_width / 2 - 5
y = room_height - sprite_height / 2 - 5

y -= 37

image_xscale = global.spriteScale
image_yscale = global.spriteScale
