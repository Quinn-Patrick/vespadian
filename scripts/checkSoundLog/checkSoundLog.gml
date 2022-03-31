// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkSoundLog(soundId){
	for(h = 0; h < ds_list_size(global.soundLog); h++){
		entryArray = global.soundLog[| h];
		if(entryArray[0] == soundId) return true;
	}
	return false;
}