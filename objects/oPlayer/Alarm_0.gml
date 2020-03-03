/// @description stop the player's motion

if(hspeed != 0 || vspeed != 0){
	hspeed = 0
	vspeed = 0
	if(moves == 0){
		moves = maxMoves
		if(!QueueEnemies()){
			//alarm[0] = 10
			alarm[0] = PLAYER_WAIT
		}
	} else {
		//alarm[0] = 10
		alarm[0] = PLAYER_WAIT
	}
} else {
	if(moves == 0){
		moves = maxMoves
		if(!QueueEnemies()){
			//with(c) Populate()
			if(!dead){
				canMove = true
			}
		}
	} else {
		if(!dead){
			canMove = true
		}
	}
}
