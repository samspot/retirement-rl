/// IncAge()

oPlayer.age++

if(oPlayer.age < 35){
	oController.enemyNum = 2
} else if (oPlayer.age >= 35 && oPlayer.age < 50){
	oController.enemyNum = 3
} else if (oPlayer.age >= 50 && oPlayer.age < 65){
	oController.enemyNum = 4
} else if (oPlayer.age >= 65){
	oController.enemyNum = 5
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