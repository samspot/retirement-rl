/// CheckEndGame() - See if the player died or ran out of $$

if(debug_mode){
	return false
	/*
	global.deathmsg = "debug msg"
	if(oPlayer.age > 25){
		return true
	}
	*/
}

var gameOver = false


if(oPlayer.age > 70){
	if(GetNetWorth() < 0) {
		gameOver = true
		global.deathmsg = "You ran out of money!"
	}

}

//var deathChance = oPlayer.age - 70
if(random_range(0, 100) <= GetDeathRisk()){
	gameOver = true	
	
	if(oPlayer.age < 50){
		global.deathmsg = choose("You died of dysentery.", "You were killed by angry creditors!", "Stress induced heart attack!")
	} else if (oPlayer.age < 60){
		global.deathmsg = choose("Cancer claimed you.", "A minor stroke followed by a massive aneurysm.")
	} else if (oPlayer.age < 70){
		global.deathmsg = choose("Stress shortened your lifespan but you did prety well.")
	} else {
		global.deathmsg = choose("You lived a long and fulfilling life.")
	}
}
	
return gameOver