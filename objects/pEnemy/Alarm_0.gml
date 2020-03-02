/// @description stop the enemy and update the queue

// stop the enemy and update the controller grid
path_end()
moves--
moving = false

gX = PixelToGrid(x)
gY = PixelToGrid(y)

ds_grid_set(c.grid, gX, gY, entity.enemy)


// check if moves remain
if(moves == 0){
	moves = maxMoves
	ds_list_delete(c.enemyQueue, 0) // remove this enemy from the queue
	if(ds_list_size(c.enemyQueue) == 0){
		target.canMove = true	
	} else {
		var enemy = ds_list_find_value(c.enemyQueue, 0)
		with(enemy) canMove = true
	}
} else {
	// let enemy move again if it had moves left
	canMove = true	
}