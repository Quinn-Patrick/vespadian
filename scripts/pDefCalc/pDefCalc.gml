function pDefCalc(argument0) {
	ind = argument0;

	if(!is_undefined(ind))
	{
		return global.equipmentStats[5];
	}
	else
	{
		return ind.eqStatsTot[5];
	}


}
