// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function learnLevelUpSpell(char, spellList){
	if(ds_list_find_index(global.divineMagicLevels, char.dmLevel) > -1){
		for(i = 0; i < ds_list_size(spellList); i++){
			if(ds_list_find_index(char.powers, spellList[| i]) == -1){
				learnPower(char, spellList[| i]);
				return getPowerName(spellList[| i]);
			}
		}
	}
	return false;
}