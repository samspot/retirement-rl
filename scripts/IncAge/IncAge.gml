/// IncAge()

oPlayer.age++
global.age = oPlayer.age

if(oPlayer.age < 35){
	oController.enemyNum = 2
	oPlayer.expenseRate = 1.0
	global.deathmsg = choose("You died of dysentery.", 
		"You were killed by angry creditors!", 
		"Stress induced heart attack!")
} else if (oPlayer.age >= 35 && oPlayer.age < 50){
	oController.enemyNum = 3
	oPlayer.expenseRate = 1.3
	global.deathmsg = choose("You died of dysentery.", 
		"You were killed by angry creditors!", 
		"Stress induced heart attack!")
} else if (oPlayer.age >= 50 && oPlayer.age < 65){
	oController.enemyNum = 4
	oPlayer.expenseRate = 1.6
	global.deathmsg = choose("Cancer claimed you.", "A minor stroke followed by a massive aneurysm.")
} else if (oPlayer.age >= 65 && oPlayer.age < 80){
	oPlayer.hasEmpMatch = false
	oPlayer.hasIncome = false
	
	oController.enemyNum = 5
	oPlayer.expenseRate = 2.2
	global.deathmsg = choose("Stress shortened your lifespan but you did prety well.")
} else if (oPlayer.age >= 80){
	oController.enemyNum = 5
	oPlayer.expenseRate = 1.9
	global.deathmsg = choose("You lived a long and fulfilling life.")
}

if(GetNetWorth() < 0 && oPlayer.age > 70){
	oPlayer.willStarve = true
	global.deathmsg = "You ran out of money!"
}

if(oPlayer.age == 35){
	with(instance_create_layer(0, 0, "Instances", oFloatingText)){
		x = 10
		y = room_height * .6
		text = "You turned 36! Life is getting more expensive"
	}	
}
if(oPlayer.age == 50){
	with(instance_create_layer(0, 0, "Instances", oFloatingText)){
		x = 10
		y = room_height * .6
		text = "You turned 50! Life is getting more expensive"
	}	
}
if(oPlayer.age == 65){
	with(instance_create_layer(0, 0, "Instances", oFloatingText)){
		x = 10
		y = room_height * .6
		text = "You retired at age 65, no more income generated in levels and your expenses have gone up again."
	}	
}