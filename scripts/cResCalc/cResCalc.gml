function cResCalc(argument0) {
	ind = argument0;

	if(!is_undefined(ind))
	{
		return ind.frt+global.equipmentStats[11];
	}
	else
	{
		return ind.frt+ind.eqStatsTot[11];
	}


}
