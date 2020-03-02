/// @description Insert description here
// You can write your code in this editor


cash -= other.cash
expenses += other.expenses

var str = other.text
with(instance_create_layer(0, 0, "Instances", oFloatingText)){
	text = str
}

with(other) instance_destroy()