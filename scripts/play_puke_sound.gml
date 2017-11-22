
var _pukeid = irandom(3);
var _temp_sound;
if _pukeid = 0 { _temp_sound = aPuke1 } 
if _pukeid = 1 { _temp_sound = aPuke2 }
if _pukeid = 2 { _temp_sound = aPuke3 }
if _pukeid = 3 { _temp_sound = aPuke4 }
//audio_emitter_pitch(s_emit, random_range(-.9,1.1));
audio_emitter_pitch(s_emit, 1);
audio_play_sound_on(s_emit, _temp_sound, false, 1);
