// Item Release Input

function getItemReleaseInput(){
	return mouse_check_button_released(mb_left) || gamepad_button_check_released(0, GP_MAIN_BUTTON);
}