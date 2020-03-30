/// @description Insert description here
// You can write your code in this editor

/*
if(right > 0 || left > 0 || up > 0 || down > 0){
	with(pToolTip){
		showToolTip = 0
	}
}
*/

right--
left--
up--
down--

// horizontal movement
if(abs(flickVelX) > abs(flickVelY)){
	flickVelY = 0	
	
	if(flickVelX > 0.5){
		right = 3
	
		//with(instance_create_layer(128, 192, "Instances", oFloatingText)){
		//	text = "right vX " + string(other.flickVelX) + " vY " + string(other.flickVelY)
		//}
	}
	
	
	if(flickVelX < -0.5){
		left = 3
		//with(instance_create_layer(128, 192, "Instances", oFloatingText)){
		//	text = "left vX " + string(other.flickVelX) + " vY " + string(other.flickVelY)
		//}
	}
	flickVelX = 0
} 
// vertical movement
else if(abs(flickVelY) > abs(flickVelX)){
	flickVelX = 0
	
	if(flickVelY > 0.5){
		down = 3
		//with(instance_create_layer(128, 192, "Instances", oFloatingText)){
		//	text = "down vX " + string(other.flickVelX) + " vY " + string(other.flickVelY)
		//}
	}

	if(flickVelY < -0.5){
		up = 3
	
		//with(instance_create_layer(128, 192, "Instances", oFloatingText)){
		//	text = "up vX " + string(other.flickVelX) + " vY " + string(other.flickVelY)
		//}
	}
	flickVelY = 0
}

/*

if(flickVelX > 0.5){
	right = 3
	
	with(instance_create_layer(128, 192, "Instances", oFloatingText)){
		text = "right vX " + string(other.flickVelX) + " vY " + string(other.flickVelY)
	}
	flickVelX = 0
	flickVelY = 0
}

if(flickVelX < -0.5){
	left = 3
	with(instance_create_layer(128, 192, "Instances", oFloatingText)){
		text = "left vX " + string(other.flickVelX) + " vY " + string(other.flickVelY)
	}
	
	flickVelX = 0
	flickVelY = 0
}

if(flickVelY > 0.5){
	down = 3
	with(instance_create_layer(128, 192, "Instances", oFloatingText)){
		text = "down vX " + string(other.flickVelX) + " vY " + string(other.flickVelY)
	}
	flickVelX = 0
	flickVelY = 0
}

if(flickVelY < -0.5){
	up = 3
	with(instance_create_layer(128, 192, "Instances", oFloatingText)){
		text = "up vX " + string(other.flickVelX) + " vY " + string(other.flickVelY)
	}
	flickVelX = 0
	flickVelY = 0
}
*/