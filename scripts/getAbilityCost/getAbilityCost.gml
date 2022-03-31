// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getAbilityCost(abilityId){
	abArray = ds_map_find_value(global.abilityData, abilityId);
	if(!is_undefined(abArray)){
		hello = abArray[0];
		return abArray[0];
	}
	else return 1;
}