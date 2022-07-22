/// @description Mute or Unmute


var vol;
if (muted) {
	vol = 1;
} else {
	vol = 0;
}

audio_sound_gain(songId, vol, 0);
muted = !muted;


