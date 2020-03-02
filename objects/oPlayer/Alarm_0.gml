/// @description stop the player's motion

if(hspeed != 0 || vspeed != 0){
	hspeed = 0
	vspeed = 0
	if(moves == 0){
		moves = maxMoves
		if(!QueueEnemies()){
			alarm[0] = 10
		}
	} else {
		alarm[0] = 10
	}
} else {
	if(moves == 0){
		moves = maxMoves
		if(!QueueEnemies()){
			with(c) Populate()
			canMove = true
		}
	} else {
		canMove = true
	}
}
