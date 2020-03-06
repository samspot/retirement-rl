/// ILeft()

var key_pressed = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || keyboard_check_pressed(ord("H"))
	
key_pressed = key_pressed || gamepad_button_check_pressed(0, gp_padl)
	
if(!key_pressed && abs(gamepad_axis_value(0, gp_axislh)) > 0.95){	
	key_pressed = abs(min(gamepad_axis_value(0, gp_axislh), 0))	
}
	
return key_pressed > 0