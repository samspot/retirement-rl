/// @description setup grid and basic level gen

randomize()

dim = 20

gridWidth = 10
gridHeight = 10

enum entity {
	empty = 0,	
	player = 1,	
	enemy = 2,	
	wall = 3,	
	item = 4
}

enum dirs {
	right,
	down,
	left,
	up
}


grid = ds_grid_create(gridWidth, gridHeight)

var iy, ix

for(iy = 0; iy < gridHeight; iy++){
	for(ix = 0; ix < gridWidth; ix++){
		if(ix == 0 || iy == 0 || ix = gridWidth-1 || iy = gridHeight-1){
			instance_create_layer(GridToPixel(ix), GridToPixel(iy), "Walls", oWall)
			ds_grid_set(grid, ix, iy, entity.wall)
		}
	}
}

// randomly place player
var pX = irandom_range(1, gridWidth-2)
var pY = irandom_range(1, gridHeight-2)

instance_create_layer(GridToPixel(pX), GridToPixel(pY), "Instances", oPlayer)
ds_grid_set(grid, pX, pY, entity.player)

// randomly place enemies
enemyQueue = ds_list_create()
enemyGrid = mp_grid_create(0, 0, gridWidth, gridHeight, dim, dim)

level = 0
enemyInc = 2


Populate()