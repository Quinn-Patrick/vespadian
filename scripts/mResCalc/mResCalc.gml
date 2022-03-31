function mResCalc(argument0) {
	ind = argument0;

	if(!is_undefined(ind))
	{
		return round(ind.wis)+global.equipmentStats[16];
	}
	else
	{
		return round(ind.wis)+ind.eqStatsTot[16];
	}


}
