// Input for rhythm game

function getRhythmGameYellowInput(){
	return keyboard_check_pressed(ord("F")) || gamepad_button_check_pressed(0, gp_face4);
}