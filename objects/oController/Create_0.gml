/// @description setup grid and basic level gen

if(debug_mode){
	random_set_seed(3)
} else {
	randomize()
}

global.netWorth = 0

draw_set_valign(fa_middle);

//dim = 52
//global.spriteScale = 1.625

dim = 32
global.spriteScale = 1.0

//dim = 64
//global.spriteScale = 2.0

gridWidth = 8
gridHeight = 9

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


#macro C_CASH c_yellow
#macro C_IRA c_navy
#macro C_EMP c_black
#macro C_SMA c_green

// ui spacing
#macro BOTTOM_BUFFER 5
#macro LEFT_BUFFER 5
#macro RIGHT_BUFFER 5

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
enemyInc = 1


instance_create_layer(room_width - 32, room_height - 32, "Instances", oMarket)
instance_create_layer(0, 0, "Instances", oInvestments)
instance_create_layer(0, 0, "Instances", oIncome)
instance_create_layer(0, 0, "Instances", oStress)
instance_create_layer(0, 0, "Instances", oInvBalance)

Populate()
/*
VIEW_HEIGHT = 0
VIEW_WIDTH = 0
ResizeGame()
*/