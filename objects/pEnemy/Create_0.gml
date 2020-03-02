/// @description enemy parent init

c = oController

canMove = false
moving = false
target = oPlayer
mSpeed = 5
path = path_add()

moves = maxMoves

gX = PixelToGrid(x)
gY = PixelToGrid(y)

ds_grid_set(c.grid, gX, gY, entity.enemy)

damage = 1

event_inherited()
toolTipText = "This is the ENEMY parent item \nChildren should override it."