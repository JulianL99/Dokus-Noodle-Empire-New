songId = m_doku_EDM_test;


priority = 100;
loops = true;

globalvar bpm, stepsPerBeat;
bpm = 136;
beatMs = 60000000/(bpm);
noteDTime = 0;
noteCount = 0;

stepsPerBeat = 1 / (bpm/3600);


muted = true;
audio_sound_gain(songId, 0, 0);
play = false;
event_user(1);

global.quarterNotePulse = false;