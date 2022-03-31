// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function findDamageToken(argument0, argument1){
	for(listIndex = 0; listIndex < ds_list_size(global.damageTokenStorage); listIndex++){
		token = ds_list_find_value(global.damageTokenStorage, listIndex);
		if(token.owner = argument0 && token.damageType = argument1){
			return true;
		}
	}
	return false;
}