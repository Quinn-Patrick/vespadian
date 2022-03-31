function hResCalc(argument0) {
	ind = argument0;

	if(!is_undefined(ind))
	{
		return round(ind.wis)+global.equipmentStats[10];
	}
	else
	{
		return round(ind.wis)+ind.eqStatsTot[10];
	}


}
