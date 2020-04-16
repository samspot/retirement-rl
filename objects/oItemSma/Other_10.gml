/// @description spawn floating text
event_inherited()

with(instance_create_layer(0, 0, "Instances", oFloatingText)){
	text = "+" + string(other.sma) + "% SMA contribution per turn."
}
instance_destroy()