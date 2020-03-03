/// @description init
#macro PLAYER_WAIT 1
event_inherited()

toolTipText = "It's you!  Live as long as you can before you run out of money."

c = oController
canMove = true
mSpeed = 4
mSpeed = 12
hp = 9
maxMoves = 2
moves = maxMoves
damage = 1
cash = 20000
age = 18
//cash = 5000
//age = 65
expenses = 3000
dead = false
happiness = 0
married = false

if(debug_mode){
	cash = 1000000
	expenses = 1
}


image_xscale = 1.1
image_yscale = 1.3