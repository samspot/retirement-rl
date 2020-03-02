/// @description draw game end stats
var yS = 190
DrawTextShadowed(0, yS, "Net Worth " + string(global.netWorth))
DrawTextShadowed(0, yS+20, "Age " + string(global.age))
DrawTextShadowed(0, yS+40, string(global.deathmsg))
