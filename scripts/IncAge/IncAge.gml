/// IncAge()

oPlayer.age++
global.age = oPlayer.age

if(oPlayer.age < PLAYER_AGE_ADULT){
	oController.enemyNum = YOUNG_ENEMY_SPAWNS
	oPlayer.expenseRate = YOUNG_EXP_RATE
	/*
	global.deathmsg = choose("You died of dysentery.", 
		"You were killed by angry creditors!", 
		"Stress induced heart attack!")
		*/
		
	//global.deathmsg = "this is a really long sentence, like way longer than it should be.  seriously please shorten it"
	global.deathmsg = "Stress & poor health led to your pre-mature death. Avoid debt!"
} else if (oPlayer.age >= PLAYER_AGE_ADULT && oPlayer.age < PLAYER_AGE_MIDDLE){
	oController.enemyNum = ADULT_ENEMY_SPAWNS
	oPlayer.expenseRate = ADULT_EXP_RATE
	/*
	global.deathmsg = choose("You died of dysentery.", 
		"You were killed by angry creditors!", 
		"Stress induced heart attack!")
		*/
	global.deathmsg = "Stress & poor health led to your pre-mature death. Avoid debt!"
} else if (oPlayer.age >= PLAYER_AGE_MIDDLE && oPlayer.age < PLAYER_AGE_OLD){
	oController.enemyNum = MIDDLE_ENEMY_SPAWNS
	oPlayer.expenseRate = MIDDLE_EXP_RATE
	//global.deathmsg = choose("Cancer claimed you.", "A minor stroke followed by a massive aneurysm.")
	global.deathmsg = "Stress & poor health led to your pre-mature death. Avoid debt!"
} else if (oPlayer.age >= PLAYER_AGE_OLD && oPlayer.age < PLAYER_AGE_ANCIENT){
	oPlayer.hasEmpMatch = false
	oPlayer.hasIncome = false
	
	oController.enemyNum = OLD_ENEMY_SPAWNS
	oPlayer.expenseRate = OLD_EXP_RATE
	global.deathmsg = choose("Reduce debt and increase happiness to live longer.")
} else if (oPlayer.age >= PLAYER_AGE_ANCIENT){
	oController.enemyNum = ANCIENT_ENEMY_SPAWNS
	oPlayer.expenseRate = ANCIENT_EXP_RATE
	global.deathmsg = choose("You lived a long and fulfilling life.")
}

if(GetNetWorth() < 0 && oPlayer.age > DEATH_CONSTANT){
	oPlayer.willStarve = true
	global.deathmsg = "You ran out of money! Make sure you are saving for retirement!"
}

if(oPlayer.age == PLAYER_AGE_ADULT){
	with(instance_create_layer(0, 0, "Instances", oFloatingText)){
		x = 10
		y = room_height * .6
		text = "You turned 36! Life is getting more expensive."
	}	
}
if(oPlayer.age == PLAYER_AGE_MIDDLE){
	with(instance_create_layer(0, 0, "Instances", oFloatingText)){
		x = 10
		y = room_height * .6
		text = "You turned 50! Life is getting more expensive."
	}	
}
if(oPlayer.age == PLAYER_AGE_OLD){
	with(instance_create_layer(0, 0, "Instances", oFloatingText)){
		x = 10
		y = room_height * .6
		text = "You retired at age 65, no more income piockups, and your expenses have gone up again."
	}	
}