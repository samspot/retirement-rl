/// @description player movement

var right = IRight()// || oFlickListener.right > 0
var down = IDown()// || oFlickListener.down > 0
var left = ILeft()// || oFlickListener.left > 0
var up = IUp()// || oFlickListener.up > 0

// sync player grid coords with the controller
if(hspeed == 0 && vspeed == 0){
	gX = PixelToGrid(x)
	gY = PixelToGrid(y)
	
	// and fix any x/y discrepancies
	x = GridToPixel(gX)
	y = GridToPixel(gY)
	ds_grid_set(c.grid, gX, gY, entity.player)
}

var dirX = gX, dirY = gY, dir = -1;

if(right)      { dirX++; dir = dirs.right }
else if (down) { dirY++; dir = dirs.down }
else if (left) { dirX--; dir = dirs.left }
else if (up)   { dirY--; dir = dirs.up }

if(canMove && dir >= 0){
	if (!CheckGridCollision(dirX, dirY, entity.wall)){
		Move(dir)	
	}
}