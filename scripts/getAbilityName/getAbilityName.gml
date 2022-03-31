// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getAbilityName(abilityId){
	abArray = ds_map_find_value(global.abilityData, abilityId);
	if(!is_undefined(abArray))return abArray[1];
	else return "???";
}