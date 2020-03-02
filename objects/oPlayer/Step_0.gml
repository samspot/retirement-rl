/// @description player movement

//var right = keyboard_check(vk_right)
var right = IRight()
var down = IDown()
//var left = keyboard_check(vk_left)
var left = ILeft()
var up = IUp()

// sync player grid coords with the controller
if(hspeed == 0 && vspeed == 0){
	gX = PixelToGrid(x)
	gY = PixelToGrid(y)
	ds_grid_set(c.grid, gX, gY, entity.player)
}

var dirX = gX, dirY = gY, dir = -1;

if(right)      { dirX++; dir = dirs.right }
else if (down) { dirY++; dir = dirs.down }
else if (left) { dirX--; dir = dirs.left }
else if (up)   { dirY--; dir = dirs.up }

if(canMove && dir >= 0){
	if(CheckGridCollision(dirX, dirY, entity.enemy)){
		Attack(dir)
	} else if (!CheckGridCollision(dirX, dirY, entity.wall)){
		Move(dir)	
	}
}