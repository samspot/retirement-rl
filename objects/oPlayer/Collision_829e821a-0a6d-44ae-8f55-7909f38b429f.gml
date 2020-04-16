/// @description destroy item, add stats, and launch the item's floating text from user_event[0]

show_debug_message("collision with " + object_get_name(other.object_index))

with(other){
	if(sound != noone){
		audio_play_sound(sound, soundPriority, false)
	}
	event_user(0)
	//text = ""
	instance_destroy()
}

hp += other.hp
damage += other.damage
maxMoves += other.maxMoves
income += other.income
//cash += other.cash
AddCash(other.cash, true)

var pira = other.ira
var pemp = other.emp
var psma = other.sma

with(oMarket){
	ira += pira
	emp += pemp
	sma += psma
}
