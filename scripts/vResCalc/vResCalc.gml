function vResCalc(argument0) {
	ind = argument0;

	if(!is_undefined(ind))
	{
		return round(ind.frt)+global.equipmentStats[15];
	}
	else
	{
		return round(ind.frt)+ind.eqStatsTot[15];
	}


}
