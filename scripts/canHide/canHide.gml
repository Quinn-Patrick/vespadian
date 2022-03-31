// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function canHide(charac){
	if(charac.friend) formationGrid = global.ally;
	else formationGrid = global.enemy;
	
	for(p = 0; p < ds_list_size(formationGrid); p++){
		hideBehind = formationGrid[| p];
		if(hideBehind != charac && hideBehind.conds[0] == 0){
			if(hideBehind.col <= charac.col) return true;
		}
	}
	return false;
	
}