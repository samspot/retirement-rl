/// populate()

level++
enemyNum = level + enemyInc
var eX, eY, i

for(i = 0; i < enemyNum; i++){
	do {
		eX = irandom_range(1, gridWidth-2)
		eY = irandom_range(1, gridWidth-2) 
	} until (ds_grid_get(oController.grid, eX, eY) == entity.empty)
	
	instance_create_layer(GridToPixel(eX), GridToPixel(eY), "Instances", choose(oEnemy1, oEnemy2, oEnemy3))
	ds_grid_set(oController.grid, eX, eY, entity.enemy)
}

if(instance_exists(pItem)) with(pItem) instance_destroy()
// create items
do {
	eX = irandom_range(1, gridWidth-2)
	eY = irandom_range(1, gridWidth-2) 
} until (ds_grid_get(oController.grid, eX, eY) == entity.empty)
	
instance_create_layer(GridToPixel(eX), GridToPixel(eY), "Instances", choose(oItemHp, oItemDmg, oItemMv))
ds_grid_set(oController.grid, eX, eY, entity.item)

// create cash
for(i = 0; i < 3; i++){
	CreateCash()	
}