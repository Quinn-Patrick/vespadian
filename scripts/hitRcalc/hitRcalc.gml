function hitRcalc(argument0) {
	ind = argument0;

	if(!is_undefined(ind))
	{
		return round(ind.dex+global.equipmentStats[7]);
	}
	else
	{
		return round(((ind.dex))+ind.eqStatsTot[7]);
	}


}
