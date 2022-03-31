// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clearDamageTokens(argument0){
	for(i = 0; i < ds_list_size(global.damageTokenStorage); i++){
		token = ds_list_find_value(global.damageTokenStorage, i)
		if(token.owner == argument0){
			instance_destroy(token);
			ds_list_delete(global.damageTokenStorage, i);
			i--;
		}
	}
}