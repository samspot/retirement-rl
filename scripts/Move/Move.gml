/// move(direction)
var dir = argument0

if (dir == dirs.right) hspeed = mSpeed
else if (dir == dirs.down) vspeed = mSpeed
else if (dir == dirs.left) hspeed = -mSpeed
else if (dir == dirs.up) vspeed = -mSpeed

// clear while movement is happening.  Set again when movement is over
ds_grid_set(c.grid, gX, gY, entity.empty)

alarm[0] = c.dim / mSpeed // how much time is needed to make it from one tile to the next
moves--
canMove = false


age++
if(age == 35){
	with(instance_create_layer(0, 0, "Instances", oFloatingText)){
		x = 10
		y = 400
		text = "You turned 36! Life is getting more expensive"
	}	
}
if(age == 50){
	with(instance_create_layer(0, 0, "Instances", oFloatingText)){
		x = 10
		y = 400
		text = "You turned 50! Life is getting more expensive"
	}	
}
if(age == 65){
	with(instance_create_layer(0, 0, "Instances", oFloatingText)){
		x = 10
		y = 400
		text = "You retired at age 65, no more income generated in levels and your expenses have gone up again."
	}	
}

//cash -= GetExpenses()
SubtractExpenses()
with(oMarket){
	event_user(0)
}

if(CheckEndGame() && !oPlayer.dead){
	oPlayer.dead = true	
	global.netWorth = GetNetWorth()
	global.age = oPlayer.age

	room_goto(roomGameEnd)
}