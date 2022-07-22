// Item Drag Input

function getItemDragInput(){
	return mouse_check_button(mb_left) || gamepad_button_check(0, GP_MAIN_BUTTON);
}