function speedCalc(argument0) {
	ind = argument0;
	outp = 0;
	if(!is_undefined(ind))
	{
		if(!checkAbField(ind, 1))outp = round(((ind.agi)))+global.equipmentStats[6];
		else outp = round(((ind.str)))+global.equipmentStats[6];
		if(is_struct(ind)){
			if(checkAbField(ind, 219)){
					bonusValue = floor(index.cha/4);
					outp += bonusValue;
			}
		}else{
			if(checkAbBatt(ind, 219)){
					bonusValue = floor(index.cha/4);
					outp += bonusValue;
			}
		}
		if(outp < 1) outp = 1;
		return outp;
	}
	else
	{
		return round(((ind.agi)))+ind.eqStatsTot[6];
	}


}
