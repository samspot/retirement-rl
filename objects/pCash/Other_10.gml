/// @description spawn floating text
/*
with(instance_create_layer(0, 0, "Instances", oFloatingText)){
	text = "+" + string(other.ira) + "% IRA contribution per cash pickup."
}
*/

event_inherited()

with(instance_create_layer(0, 0, "Instances", oFloatingText)){
	text = "Got $" + string(other.cash)
}
instance_destroy()