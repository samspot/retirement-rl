/// @description add item stats to player

event_inherited()

hp = 0
maxMoves = 0
damage = 0
cash = 0
ira = 0
emp = 0
sma = 0
income = 0

gX = PixelToGrid(x)
gY = PixelToGrid(y)

icon = sPickupIcon


sound = sndPickup
soundPriority = 5