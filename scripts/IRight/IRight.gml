/// IRight()

var key_pressed = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))
	
key_pressed = key_pressed || gamepad_button_check_pressed(0, gp_padr)
	
if(!key_pressed && abs(gamepad_axis_value(0, gp_axislh)) > 0.95){	
	key_pressed = max(gamepad_axis_value(0, gp_axislh), 0)
}
	
return key_pressed > 0
	