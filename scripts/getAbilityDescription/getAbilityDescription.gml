// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getAbilityDescription(abilityId){
	abArray = ds_map_find_value(global.abilityData, abilityId);
	if(!is_undefined(abArray)){
		return abArray[2];
	}
	else return "Unknown Ability";
}