/// CreateCash()
do {
	eX = irandom_range(1, gridWidth-2)
	eY = irandom_range(1, gridWidth-2) 
} until (ds_grid_get(oController.grid, eX, eY) == entity.empty)
	
instance_create_layer(GridToPixel(eX), GridToPixel(eY), "Instances", oItemCash)
ds_grid_set(oController.grid, eX, eY, entity.item)