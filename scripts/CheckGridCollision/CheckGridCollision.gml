/// CheckGridCollision(grid x coordinate, grid y coordinate, type)

var gX = argument0
var gY = argument1
var t = argument2

return (ds_grid_get(oController.grid, gX, gY) == t)
