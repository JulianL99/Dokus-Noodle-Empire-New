// Input for rhythm game

function getRhythmGameGreenInput(){
	return keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_face1);
}