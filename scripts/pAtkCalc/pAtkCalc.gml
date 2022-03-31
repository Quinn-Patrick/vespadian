function pAtkCalc(argument0) {
	ind = argument0;

	damStat = 0;
	if(is_struct(ind))
	{
		damStat = global.equipmentStatsIndi[0,3];
		if(damStat == 0){
			damStat = ind.str;
		}
		else if(damStat == 1){
			damStat = ind.dex;
		}
		else if(damStat == 2){
			damStat = ind.int;
		}
		else if(damStat == 3) damStat = ind.cha;
		else{
			damStat = ind.str;
		}
	}
	else
	{
		if(ind.eqStats[0,3]==0)
		{
			damStat=ind.str;
		}
		else if(ind.eqStats[0,3]==1)
		{
			damStat=ind.dex;
		}
		else if(ind.eqStats[0,3]==2)
		{
			damStat=ind.int;
		}
		else if(ind.eqStats[0,3]==3)
		{
			damStat=ind.cha;
		}
	}

	if(damStat < 0) damStat = 0;

	if(is_struct(ind))
	{
		return damStat+global.equipmentStats[4];
	}
	else
	{
		return damStat+ind.eqStatsTot[4];
	}


}
