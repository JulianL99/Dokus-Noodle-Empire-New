songId = m_doku_EDM_test;
bpm = 136;
bps = 136/60;
gameSpeed = game_get_speed(gamespeed_fps);


audio_play_sound(songId, 100, true);

muted = false;

event_user(0);