function pStatUpdate(argument0, argument1) {
	memberIndex = argument0;
	memberId = argument1;

	//memberId.lvl = global.scores[memberIndex,8];

	//global.stats[memberIndex,14] = memberId.maxHp;
	//global.stats[memberIndex,15] = memberId.maxMp;
	memberIndex.curHp = memberId.curHp;
	memberIndex.curSp = memberId.curMp;

	/*global.party[memberIndex,1] = memberId.col;
	global.party[memberIndex,2] = memberId.row;*/

	/*memberId.powers[ds_list_size(global.ePowers)] = 0;

	for(i = 0; i < ds_list_size(global.powerList[memberIndex]); i++)
	{
		ds_list_replace(global.powerList[memberIndex], i, memberId.powers[i]);
	}*/

	memberId.conds[127] = 0;
	//return status conditions
	for(i = 127; i > -1; i--)
	{
		memberIndex.conditions[i] = memberId.conds[i];
	
	}

	//reset volatile status conditions
	memberIndex.conditions[1] = 0;
	memberIndex.conditions[2] = 0;
	memberIndex.conditions[3] = 0;
	memberIndex.conditions[4] = 0;
	memberIndex.conditions[5] = 0;
	memberIndex.conditions[6] = 0;
	memberIndex.conditions[7] = 0;
	memberIndex.conditions[8] = 0;
	memberIndex.conditions[9] = 0;
	memberIndex.condition[10] = 0;
	memberIndex.conditions[11] = 0;
	memberIndex.conditions[12] = 0;
	memberIndex.conditions[13] = 0;
	memberIndex.conditions[17] = 0;
	memberIndex.conditions[19] = 0;
	memberIndex.conditions[20] = 0;
	memberIndex.conditions[22] = 0;
	memberIndex.conditions[32] = 0;
	memberIndex.conditions[35] = 0;
	memberIndex.conditions[36] = 0;
	memberIndex.conditions[37] = 0;
	memberIndex.conditions[39] = 0;
	memberIndex.conditions[40] = 0;

}
