/// enemy stuff

if(canMove){
	//var pRight = CheckGridCollision(gX + 1, gY, entity.player)
	//var pDown = CheckGridCollision(gX, gY + 1, entity.player)
	//var pLeft = CheckGridCollision(gX - 1, gY, entity.player)
	//var pUp = CheckGridCollision(gX, gY - 1, entity.player)
	
	// attack if player adjacent
	/*if(pRight || pDown || pLeft || pUp){
		target.hp -= damage
		moves = 1
		alarm[0] = 10
		canMove = false
	} else { // prepare to pathfind */
		mp_grid_clear_all(c.enemyGrid)  // TODO enemyGrid should be in the enemy since its never shared... maybe.  Perf benefit to thsi way?
		var iy, ix
		
		// fill blank grid with all obstacles
		for(iy = 0; iy < c.gridHeight; iy++){
			for(ix = 0; ix < c.gridWidth; ix++){
				var entityHere = ds_grid_get(c.grid, ix, iy)
				if(entityHere != entity.empty){
					if(itemsBlock){
						mp_grid_add_cell(c.enemyGrid, ix, iy)
					} else if(entityHere != entity.item){
						// don't make items obstacles if this is a companion
						mp_grid_add_cell(c.enemyGrid, ix, iy)
					}
				}
			}
		}
		
		// make sure player and my location are not considered obstacles
		mp_grid_clear_cell(c.enemyGrid, target.gX, target.gY)
		mp_grid_clear_cell(c.enemyGrid, gX, gY)
		// refresh the path
		path_delete(path)
		path = path_add()
		// create the path and start it if it's completable
		if(mp_grid_path(c.enemyGrid,path,x,y,target.x, target.y, false)){
			path_start(path, mSpeed, path_action_stop, false)
			ds_grid_set(c.grid, gX, gY, entity.empty)
			alarm[0] = c.dim / mSpeed
			canMove = false
		} 
		// otherwise move on to the next enemy
		else {
			alarm[0] = 1
			canMove = false
			moving = true
		}
	//}
}

if(hp <= 0) instance_destroy()