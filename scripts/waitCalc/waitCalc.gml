function waitCalc(argument0) {
	ind = argument0;

	if(!is_undefined(ind))
	{
		if(ind.spd > 20){
			hello = power(ind.spd-20, -0.6*sqrt(ind.spd-20));
			return round(300*(power(ind.spd-20, -0.06*sqrt(ind.spd-20))));
		}
		else return round(300+(sqr(ind.spd-22)));
		//return round(((-sqrt(ind.spd))*10)+120);
	}
	else
	{
		if(ind.spd > 20)return round(300*(power(ind.spd-20, -0.05*sqrt(ind.spd-20))));
		else return round(300+(sqr(ind.spd-22)));
		//return round(((-sqrt(ind.spd))*10)+120);
	}
}
