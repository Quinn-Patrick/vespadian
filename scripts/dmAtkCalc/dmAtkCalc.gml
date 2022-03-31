function dmAtkCalc(argument0) {
	ind = argument0;
	//abi = argument1;

	if(!is_undefined(ind))
	{
		base = ind.wis+global.equipmentStats[9];
		if(checkAbField(ind, 214)) base = round(base + (ind.cha/4));
		return base;
	}
	else
	{
		base = ind.wis+ind.eqStatsTot[9];
		if(checkAbField(ind, 214)) base = round(base + (ind.cha/4));
		return base;
	}


}
