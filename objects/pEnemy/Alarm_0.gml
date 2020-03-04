/// @description stop the enemy and update the queue

// stop the enemy and update the controller grid
path_end()
moves--
moving = false

gX = PixelToGrid(x)
gY = PixelToGrid(y)

// and fix any x/y discrepancies
x = GridToPixel(gX)
y = GridToPixel(gY)

ds_grid_set(c.grid, gX, gY, entity.enemy)


// check if moves remain
if(moves == 0){
	moves = maxMoves
	Dequeue()
} else {
	// let enemy move again if it had moves left
	canMove = true	
}