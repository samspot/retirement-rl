/// populate()

level++
enemyNum = level + enemyInc
var eX, eY, i

with(pEnemy) instance_destroy()

with(oController){
	ds_list_destroy(enemyQueue)
	enemyQueue = ds_list_create()
}
/*
for(i = 0; i < enemyNum; i++){
	do {
		eX = irandom_range(1, gridWidth-2)
		eY = irandom_range(1, gridWidth-2) 
	} until (ds_grid_get(oController.grid, eX, eY) == entity.empty)
	
	instance_create_layer(GridToPixel(eX), GridToPixel(eY), "Instances", choose(oEnemy1, oEnemy2, oEnemy3))
	ds_grid_set(oController.grid, eX, eY, entity.enemy)
}
*/

with(pItem) instance_destroy()

CreateEntity(choose(oItemIra, oItemEmp, oItemSma), entity.item)
CreateEntity(oExit, entity.item)

for(i = 0; i < 3; i++){
	CreateEntity(oItemCash, entity.item)
	CreateEntity(oInnerWall, entity.wall)
}