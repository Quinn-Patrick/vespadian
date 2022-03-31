// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateSoundLog(){
	listSize = ds_list_size(global.soundLog);
	for(h = 0; h < listSize; h++){
		global.soundLog[| h][1]--;
		
		if(global.soundLog[| h][1] <= 0){
			ds_list_delete(global.soundLog, h);
			h--;
			listSize--;
		}
	}
}