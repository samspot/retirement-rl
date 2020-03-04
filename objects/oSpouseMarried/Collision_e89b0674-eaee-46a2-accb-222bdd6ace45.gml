/// @description Insert description here
// You can write your code in this editor


oPlayer.cash -= other.cash
oPlayer.expenses += other.expenses
oPlayer.happiness += other.happiness
if(other.married){
	oPlayer.married = true	
}

var str = other.text
with(instance_create_layer(0, 0, "Instances", oFloatingText)){
	text = str
}

with(other) instance_destroy()