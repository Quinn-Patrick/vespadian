function aResCalc(argument0) {
	ind = argument0;

	if(!is_undefined(ind))
	{
		return ind.wis+global.equipmentStats[14];
	}
	else
	{
		return ind.wis+ind.eqStatsTot[14];
	}


}
