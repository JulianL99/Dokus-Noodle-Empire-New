if (position_meeting(mouse_x, mouse_y, id)) {
	// Open the trash can
	if (image_index < lastFrame) {
		image_speed = 1;
	} else {
		image_speed = 0;
	}
	
} else {
	if (image_index > 0) {
		image_speed = -1;	
	} else {
		image_speed = 0;
	}
}