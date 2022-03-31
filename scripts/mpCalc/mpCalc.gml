function mpCalc(argument0) {
	ind = argument0;

	if(is_struct(ind) && !is_undefined(ind))
	{
		baseMp =  round(ind.spr*(((power((ind.level+5),1.2))*0.035)+0.6));
		for(i = 0; i < 6; i++){
			if(getItemDat(ind.equipment[i, 0], 21) == 2){
				baseMp = round(baseMp*1.1);
			}
			else if(getItemDat(ind.equipment[i, 0], 21) == 4){
				baseMp = round(baseMp*1.2);
			}
			else if(getItemDat(ind.equipment[i, 0], 21) == 6){
				baseMp = round(baseMp*1.4);
			}
		}
		return baseMp;
	}
	else
	{
		return round(((ind.spr))*(((ind.lvl+5)^1.2)*(0.035)+(0.6)));
	
	}


}
