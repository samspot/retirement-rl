/// CheckEndGame() - See if the player died or ran out of $$

var gameOver = false

if(GetNetWorth() < 0) {
	gameOver = true
	global.deathmsg = "You ran out of money!"
}
if(oPlayer.age > 70){
	var deathChance = oPlayer.age - 70
	if(random_range(0, 100) <= deathChance){
		gameOver = true	
		global.deathmsg = "You died of dysentery."
	}
}

return gameOver