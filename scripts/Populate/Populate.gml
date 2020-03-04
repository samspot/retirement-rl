/// populate()

level++
enemyNum = level + enemyInc
var eX, eY, i

with(pEnemy) instance_destroy()

with(oController){
	//ds_list_destroy(enemyQueue)
	//enemyQueue = ds_list_create()
}

for(i = 0; i < enemyNum; i++){
	do {
		eX = irandom_range(1, gridWidth-2)
		eY = irandom_range(1, gridWidth-2) 
	} until (ds_grid_get(oController.grid, eX, eY) == entity.empty)
	
	instance_create_layer(GridToPixel(eX), GridToPixel(eY), "Instances", choose(oEnemyCreditCard, oEnemyVacation, oEnemyTv, oEnemyBaby, oEnemyPet))
	//instance_create_layer(GridToPixel(eX), GridToPixel(eY), "Instances", choose(oEnemyBaby))
	ds_grid_set(oController.grid, eX, eY, entity.enemy)
}

if(!oPlayer.married && irandom_range(1, 100) > 50){
	do {
		eX = irandom_range(1, gridWidth-2)
		eY = irandom_range(1, gridWidth-2) 
	} until (ds_grid_get(oController.grid, eX, eY) == entity.empty)
	
	instance_create_layer(GridToPixel(eX), GridToPixel(eY), "Instances", choose(oEnemySpouse))
	ds_grid_set(oController.grid, eX, eY, entity.enemy)
}


with(pItem) instance_destroy()
with(oInnerWall) instance_destroy()

CreateEntity(oExit, entity.item)

for(i = 0; i < 3; i++){	
	CreateEntity(oInnerWall, entity.wall)
}

for(i = 0; i < 10; i++){
	if(oPlayer.age < 35){
		CreateEntity(choose(oItemCash, oItemCash, oItemCash, oItemCash2), entity.item)
	} else if(oPlayer.age >= 35 && oPlayer.age < 50){
		CreateEntity(choose(oItemCash, oItemCash2, oItemCash2, oItemCash3), entity.item)
	} else if(oPlayer.age >= 50 && oPlayer.age < 65) {
		CreateEntity(choose(oItemCash, oItemCash2, oItemCash3, oItemCash3), entity.item)
	}
}

for(i=0; i < 4; i++){
	if(oPlayer.age < 65){
		if(GetNetWorth() >= 100000){			
			CreateEntity(choose(oItemSma, oItemEmp, oItemSma), entity.item)
		} else {
			CreateEntity(choose(oItemIra, oItemEmp, oItemEmp), entity.item)
		}
	}
}

for(i=0; i < oPlayer.pets; i++){
	CreateEntity(oPet, entity.enemy)
}
if(oPlayer.married){
	CreateEntity(oSpouseMarried, entity.enemy)
}