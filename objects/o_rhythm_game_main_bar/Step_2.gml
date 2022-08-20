if (global.quarterNotePulse == true && sequenceIndex < array_length(buttonSequenceArray)) {
	var nextSequenceObject = buttonSequenceArray[sequenceIndex];
	if (nextSequenceObject != noone) {
		instance_create_depth(buttonCreateX, y, depth - 2, nextSequenceObject);
	}
	
	sequenceIndex++;
}

if (sequenceIndex >= array_length(buttonSequenceArray) && !instance_exists(o_rhythm_game_button_parent)) {

		with (kitchenwareObjectId) {
			event_user(6);
		}
		
		instance_destroy(id);
	}
