// Input for rhythm game

function getRhythmGameBlueInput(){
	return keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0, gp_face3);
}