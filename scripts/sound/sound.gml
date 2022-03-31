// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sound(soundId){
	if(!checkSoundLog(soundId)){
		baseGain = ds_map_find_value(global.audioGain, soundId);
		if(is_undefined(baseGain))baseGain = 0.5;
		audio_sound_gain(soundId, baseGain*global.sfxGain, 0);
		audio_play_sound(soundId, 10, false);
	
		soundLogAdd(soundId);
	}
	
	return;
}