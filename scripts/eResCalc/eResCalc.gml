function eResCalc(argument0) {
	ind = argument0;

	if(!is_undefined(ind))
	{
		return ind.spr+global.equipmentStats[12];
	}
	else
	{
		return ind.spr+ind.eqStatsTot[12];
	}


}
