// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getPowerDescription(powerId){
	return ds_map_find_value(global.powerData, powerId)[1];
}