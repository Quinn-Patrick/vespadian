// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateFieldAbilities(){
	ds_list_clear(global.fieldAbilities);
	for(l = 0; l < 4; l++){
		if(!is_undefined(global.party[l])){
			if(checkAbField(global.party[l], 444)) ds_list_add(global.fieldAbilities, 444);
			if(checkAbField(global.party[l], 445)) ds_list_add(global.fieldAbilities, 445);
		}
	}
}