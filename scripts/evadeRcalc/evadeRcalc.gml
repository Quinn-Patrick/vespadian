function evadeRcalc(argument0) {
	ind = argument0;

	if(!is_undefined(ind))
	{
		if(!checkAbField(ind, 2))return round(ind.agi)+global.equipmentStats[8];
		else return round(ind.frt)+global.equipmentStats[8];
	}
	else
	{
		return round((ind.agi))+ind.eqStatsTot[8];
	}


}
