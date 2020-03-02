/// IUp()

// TODO Swipe: https://forum.yoyogames.com/index.php?threads/tutorial-swipe-controls-for-mouse-and-touch.20978/

var key_pressed = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
	
key_pressed = key_pressed || gamepad_button_check_pressed(0, gp_padu)
	
if(!key_pressed && abs(gamepad_axis_value(0, gp_axislv)) > 0.95){	
	key_pressed = abs(min(gamepad_axis_value(0, gp_axislv), 0))	
}
	
return key_pressed > 0
	