/// @description Insert description here
// You can write your code in this editor

show_debug_message("collision with " + object_get_name(other.object_index))

cash -= other.cash
expenses += other.expenses
happiness += other.happiness

if(other.retirement > 0){
	var vehicle = invVehicles.emp
	
	if(oMarket.balance_ira > oMarket.balance_emp){
		if(oMarket.balance_sma > oMarket.balance_ira){
			vehicle = invVehicles.sma	
		} else {
			vehicle = invVehicles.ira
		}
	} else if (oMarket.balance_sma > oMarket.balance_emp){
		vehicle = invVehicles.sma 
	}
	
	if(vehicle == invVehicles.ira){
		var amount = oMarket.balance_ira * other.retirement
		oMarket.balance_ira -= amount
	} else if (vehicle = invVehicles.emp){
		var amount = oMarket.balance_emp * other.retirement
		oMarket.balance_emp -= amount
	} else if (vehicle = invVehicles.sma){
		var amount = oMarket.balance_sma * other.retirement
		oMarket.balance_sma -= amount
	}
	
	//with(instance_create_layer(0, 0, "Instances", oFloatingText)){
	//	text = "Took " + string(amount) + " from " + string(vehicle)
	//}
	
}

if(other.married){
	oPlayer.married = true	
}

var str = other.text
with(instance_create_layer(0, 0, "Instances", oFloatingText)){
	text = str
}

with(other){
	if(sound != noone){
		audio_play_sound(sound, soundPriority, false)
	}
	event_user(0)
	instance_destroy()
}