/// populate()

level++
var eX, eY, i

with(pEnemy) instance_destroy()

for(i = 0; i < enemyNum; i++){
	do {
		eX = irandom_range(1, gridWidth-2)
		eY = irandom_range(1, gridHeight-2) 
	} until (ds_grid_get(oController.grid, eX, eY) == entity.empty)
	
	if(oPlayer.age < PLAYER_AGE_OLD){
		instance_create_layer(GridToPixel(eX), GridToPixel(eY), "Instances", choose(WORKING_AGE_ENEMIES))
	} else {
		instance_create_layer(GridToPixel(eX), GridToPixel(eY), "Instances", choose(RETIREMENT_AGE_ENEMIES))
	}
	//instance_create_layer(GridToPixel(eX), GridToPixel(eY), "Instances", choose(oEnemyPhishing))
	ds_grid_set(oController.grid, eX, eY, entity.enemy)
}

if(!oPlayer.married && irandom_range(1, 100) > SPOUSE_SPAWN_CHANCE){
	do {
		eX = irandom_range(1, gridWidth-2)
		eY = irandom_range(1, gridHeight-2) 
	} until (ds_grid_get(oController.grid, eX, eY) == entity.empty)
	
	instance_create_layer(GridToPixel(eX), GridToPixel(eY), "Instances", choose(oEnemySpouse))
	ds_grid_set(oController.grid, eX, eY, entity.enemy)
}


with(pItem) instance_destroy()
with(oInnerWall) instance_destroy()

CreateEntity(oExit, entity.item)

for(i = 0; i < WALLS_TO_SPAWN; i++){	
	CreateEntity(oInnerWall, entity.wall)
}

for(i = 0; i < PICKUPS_TO_SPAWN; i++){
	if(oPlayer.age < PLAYER_AGE_ADULT){
		CreateEntity(choose(YOUNG_CASH_SPAWNS), entity.item)
	} else if(oPlayer.age >= PLAYER_AGE_ADULT && oPlayer.age < PLAYER_AGE_MIDDLE){
		CreateEntity(choose(ADULT_CASH_SPAWNS), entity.item)
	} else if(oPlayer.age >= PLAYER_AGE_MIDDLE && oPlayer.age < PLAYER_AGE_OLD) {
		CreateEntity(choose(MIDDLE_CASH_SPAWNS), entity.item)
	}
}

for(i=0; i < VEHICLES_TO_SPAWN; i++){
	if(oPlayer.age < PLAYER_AGE_OLD){
		if(GetNetWorth() >= SMA_SPAWN_MINIMUM_AMOUNT){			
			CreateEntity(choose(POST_SMA_VEHICLE_SPAWNS), entity.item)
		} else {
			CreateEntity(choose(PRE_SMA_VEHICLE_SPAWNS), entity.item)
		}
	}
}

if(oPlayer.age < PLAYER_AGE_OLD){
	CreateEntity(oJob, entity.item)	
}

for(i=0; i < oPlayer.pets; i++){
	CreateEntity(oPet, entity.enemy)
}
if(oPlayer.married){
	CreateEntity(oSpouseMarried, entity.enemy)
}


audio_play_sound(sndGameStart, 1, false)
// make sure player moves first
oPlayer.moves = oPlayer.maxMoves
oPlayer.canMove = true