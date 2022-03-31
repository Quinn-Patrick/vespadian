// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function musicUpdate(){
	if(global.musicCategory == 0){
		baseGain = ds_map_find_value(global.audioGain, global.mainBgm);
		if(is_undefined(baseGain))baseGain = 0.5;
		audio_sound_gain(global.mainBgm, baseGain*global.musicGain, 0);
		if(audio_is_playing(global.battleBgm) && !global.noBattleMusic){
			audio_stop_sound(global.battleBgm);
			global.battleBgm = mus_battle1;
		}
		if(audio_is_paused(global.mainBgm)){
			audio_resume_sound(global.mainBgm);
		}
		if(global.mainBgm == -1){
			audio_stop_sound(global.mainBgm);
		}
		else if(global.mainBgm != global.lastBgm){
			audio_stop_sound(global.lastBgm);
			audio_stop_sound(global.mainBgm);
			audio_play_sound(global.mainBgm, 10, true);
		}else if(!audio_is_playing(global.mainBgm)){
			audio_play_sound(global.mainBgm, 10, true);
		}

	}else if(global.musicCategory == 1){
		if(global.noBattleMusic) global.battleBgm = global.mainBgm;
		baseGain = ds_map_find_value(global.audioGain, global.battleBgm);
		if(is_undefined(baseGain))baseGain = 0.5;
		audio_sound_gain(global.battleBgm, baseGain*global.musicGain, 0);
		if(audio_is_playing(global.mainBgm) && !global.noBattleMusic){
			audio_pause_sound(global.mainBgm);
		}
		if(!audio_is_playing(global.battleBgm)){
			audio_play_sound(global.battleBgm, 10, true);
		}

	}
	
	global.lastBgm = global.mainBgm;
}