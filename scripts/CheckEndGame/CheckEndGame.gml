/// CheckEndGame() - See if the player died or ran out of $$

if(debug_mode){
	//return false
}

var gameOver = oPlayer.willStarve

if(random_range(0, 100) <= GetDeathRisk()){
	gameOver = true	
}
	
return gameOver