if (x >= mainBarObject.x) {
	var dir = sign(mainBarObject.x - x);
	x += buttonSpeed * dir;
	
} else {
	if (!selfDestruct) {
	 	controllerObject.currentScore -= 2;
	}
	instance_destroy();
}

if (place_meeting(x, y, inputCatcherObject) && !selfDestruct && getRhythmGameAnyInput()) {
	//if (global.quarterNotePulse) {
	sprite_index = dissolveSprite;
	selfDestruct = true;
	if (global.quarterNotePulse) {
		show_debug_message("PERFECT HIT!");	
	}
	
	var dist = point_distance(x, y, inputCatcherObject.x, inputCatcherObject.y);
	var addAmount = (1 - (dist / (inputCatcherObject.sprite_width / 2))) + 1;

	
	if (script_execute(inputCheckScript)) {
		controllerObject.currentScore += addAmount;
		if (global.quarterNotePulse) {
			controllerObject.perfectHits++;
		}
	} else {
		controllerObject.currentScore -= wrongButtonPenalty;
	}
	
	// Trigger animation
	with (inputCatcherObject) {
		event_user(0);
	}
}