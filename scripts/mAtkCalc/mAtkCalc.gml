function mAtkCalc(argument0) {
	ind = argument0;
	//abi = argument1;

	if(!is_undefined(ind))
	{
		base = ind.int+global.equipmentStats[9];
		if(checkAbField(ind, 213)) base = round(base + (ind.cha/4));
		return base;
	}
	else
	{
		base = ind.int+ind.eqStatsTot[9];
		if(checkAbField(ind, 213)) base = round(base + (ind.cha/4));
		return base;
	}


}
