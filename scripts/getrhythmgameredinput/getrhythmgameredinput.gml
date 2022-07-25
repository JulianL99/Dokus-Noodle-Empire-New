// Input for rhythm game

function getRhythmGameRedInput(){
	return keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_face2);
}