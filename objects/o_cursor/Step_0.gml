if (global.gameState == GAME_STATE.rhythm_game) {
	if (visible) {
		visible = false;
	}
	window_mouse_set(x, y);
	
} else {
	if (!visible) visible = true;
	
	x = mouse_x * viewXScale;
	y = mouse_y * viewYScale;

	// Handle controller motion
	var x_axis = gamepad_axis_value(0, gp_axislh);
	var y_axis = gamepad_axis_value(0, gp_axislv);

	if (x_axis != 0 || y_axis != 0) {
		var x_movement = cursor_speed * x_axis;
		var y_movement = cursor_speed * y_axis;
		var new_x = clamp(x + x_movement, 0, windowWidth);
		var new_y = clamp(y + y_movement, 0, windowHeight);
		window_mouse_set(new_x, new_y);
	}


	if (global.pickedUpItemId != noone && getItemReleaseInput()) {
		// Check if over kitchenware
		var inst = instance_position(mouse_x, mouse_y, o_kitchenware_parent);
		if (inst != noone) {
			with (inst) {
				event_user(0);
			}
			exit;
		}
	
		// Check if over finished meal
		inst = instance_position(mouse_x, mouse_y, o_finished_meal_parent);
		if (inst != noone) {
			with (inst) {
				event_user(0);
			}
			exit;
		}
	
		// Check if over trash can
		inst = instance_position(mouse_x, mouse_y, o_trash_can);
		if (inst != noone) {
			destroyPickedUpItem();
			exit;
		}
	}
}