// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function isCovered(characterIndex){
	if(characterIndex.col == 0) return false;
	else{
		if(characterIndex.friend){
			for(i = 0; i < ds_list_size(global.ally); i++){
				if(global.ally[| i].col < characterIndex.col && global.ally[| i].row == characterIndex.row &&
					global.ally[| i].conds[0] == 0){
						return true;
				}
			}
		}else{
			for(i = 0; i < ds_list_size(global.enemy); i++){
				if(global.enemy[| i].col < characterIndex.col && global.enemy[| i].row == characterIndex.row &&
					global.enemy[| i].conds[0] == 0){
					return true;
				}
			}
		}
		return false;
	}
	return false;
}