if (play) {
	noteDTime += delta_time;
	var newNoteCount = (round(noteDTime div beatMs) mod 4) + 1;
	
	if (newNoteCount != noteCount) {
		global.quarterNotePulse = true;
	} else {
		global.quarterNotePulse = false;
	}
	
	noteCount = newNoteCount;
}