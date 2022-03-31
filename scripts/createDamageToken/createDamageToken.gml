// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createDamageToken(argument0, argument1){
	newToken = instance_create_depth(0,0,0,obj_damageMemoryToken);
	newToken.owner = argument0;
	newToken.damageType = argument1;
	ds_list_add(global.damageTokenStorage, newToken);
}