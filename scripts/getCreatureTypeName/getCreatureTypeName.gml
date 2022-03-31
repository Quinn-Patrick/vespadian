// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getCreatureTypeName(typeId){
	return(ds_list_find_value(global.creatureTypes, typeId));
}