/// @description Insert description here
// You can write your code in this editor

event_inherited()

with(instance_create_layer(0, 0, "Instances", oFloatingText)){
	text = "Got $" + string(other.cash)
}