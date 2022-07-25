// Rhythm Game Any Input
function getRhythmGameAnyInput(){
	return getRhythmGameBlueInput() || getRhythmGameGreenInput() || getRhythmGameRedInput() ||
		getRhythmGameYellowInput();
}