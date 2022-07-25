/// @description Pause or Play

if (play) {
	if (audio_is_playing(songId)) {
		audio_pause_sound(songId);
	}
} else {
	if (audio_is_paused(songId)) {
		audio_resume_sound(songId);
	} else {
		audio_play_sound(songId, priority, loops);
	}
}


play = !play;