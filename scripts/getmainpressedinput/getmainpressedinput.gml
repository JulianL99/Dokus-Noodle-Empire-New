// Main Pressed Input

function getMainPressedInput(){
	return mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, GP_MAIN_BUTTON);
}