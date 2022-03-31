// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function isBuffed(battler){ //returns whether the given character is buffed
	return(battler.conds[1] > 0 || battler.conds[2] > 0 ||
	battler.conds[3] > 0 || battler.conds[4] > 0 ||
	battler.conds[5] > 0 || battler.conds[6] > 0 ||
	battler.conds[7] > 0 || battler.conds[8] > 0 ||
	battler.conds[9] > 0 || battler.conds[10] > 0 ||
	battler.conds[11] > 0 || battler.conds[12] > 0 ||
	battler.conds[13] > 0 || battler.conds[22] < 0 ||
	battler.conds[39] > 0 || battler.conds[36] > 0
	|| battler.conds[37] > 0);

}