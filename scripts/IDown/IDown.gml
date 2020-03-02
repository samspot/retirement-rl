/// IDown()

var key_pressed = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
	
key_pressed = key_pressed || gamepad_button_check_pressed(0, gp_padd)
	
if(!key_pressed && abs(gamepad_axis_value(0, gp_axislv)) > 0.95){	
	key_pressed = max(gamepad_axis_value(0, gp_axislv), 0)
}
	
return key_pressed > 0
	