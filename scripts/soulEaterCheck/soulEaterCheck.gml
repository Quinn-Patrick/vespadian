// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function soulEaterCheck(){
	for(v = 0; v < ds_list_size(global.ally); v++){
		abilityCheckCharacter = global.ally[| v];
		if(abilityCheckCharacter.conds[0] < 1 && abilityCheckCharacter.curHp > 0){
			if(checkAbBatt(abilityCheckCharacter, 458)){
				abilityCheckCharacter.curHp = abilityCheckCharacter.maxHp;
			}
		}
	}
	for(v = 0; v < ds_list_size(global.enemy); v++){
		abilityCheckCharacter = global.enemy[| v];
		if(abilityCheckCharacter.conds[0] < 1 && abilityCheckCharacter.curHp > 0){
			if(checkAbBatt(abilityCheckCharacter, 458)){
				abilityCheckCharacter.curHp = abilityCheckCharacter.maxHp;
			}
		}
	}
}