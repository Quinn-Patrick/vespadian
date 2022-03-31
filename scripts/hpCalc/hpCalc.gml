function hpCalc(argument0) {
	ind = argument0;
	
	
	if(is_struct(ind) && !is_undefined(ind))
	{
		baseHp = round(ind.frt*(((power(ind.level+2,1.3))*(0.35))+0.6));
		for(i = 0; i < 6; i++){
			if(getItemDat(ind.equipment[i, 0], 21) == 1){
				baseHp = round(baseHp*1.1);
			}
			else if(getItemDat(ind.equipment[i, 0], 21) == 3){
				baseHp = round(baseHp*1.2);
			}
			else if(getItemDat(ind.equipment[i, 0], 21) == 5){
				baseHp = round(baseHp*1.4);
			}
		}
		return baseHp;
	}
	else
	{
		return round(ind.frt*((power(ind.lvl,1.2))*0.35)+0.6);
	}


}
