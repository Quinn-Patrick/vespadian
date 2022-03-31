// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkAbFieldParty(abilityId){
	if(abilityId == 444 || abilityId == 445){
		return checkFieldAbilityList(abilityId);
	}
	
	for(i = 0; i < 4; i++){
		if(!is_undefined(global.party[i])){
			if(checkAbField(global.party[i], abilityId)){
				return true;
			}
		}
	}
	return false;
}