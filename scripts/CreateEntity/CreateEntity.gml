/// CreateEntity(type, gridtype)
var o = argument0
var t = argument1


do {
	eX = irandom_range(1, gridWidth-2)
	eY = irandom_range(1, gridHeight-2) 
} until (ds_grid_get(oController.grid, eX, eY) == entity.empty)
	
instance_create_layer(GridToPixel(eX), GridToPixel(eY), "Instances", o)

ds_grid_set(oController.grid, eX, eY, t)