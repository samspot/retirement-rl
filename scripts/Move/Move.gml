/// move(direction)
var dir = argument0

if (dir == dirs.right) hspeed = mSpeed
else if (dir == dirs.down) vspeed = mSpeed
else if (dir == dirs.left) hspeed = -mSpeed
else if (dir == dirs.up) vspeed = -mSpeed

// clear while movement is happening.  Set again when movement is over
ds_grid_set(c.grid, gX, gY, entity.empty)

alarm[0] = c.dim / mSpeed // how much time is needed to make it from one tile to the next
//alarm[0] = 10
moves--
canMove = false

IncAge()

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