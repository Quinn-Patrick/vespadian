function calcDamGen(argument0, argument1, argument2, argument3, argument4) {
	attacker = argument0;
	defender = argument1;
	damType = argument2;
	randDist = argument3;
	att = argument4;
	bonus = 1;
	
	immune = false;
	
	if(attacker.conds[20] == 1)
	{
		bonus += 1;
	}

	if(damType <= 2)
	{
		def = defender.pDefEff;
		if(checkAbBatt(defender, 450)) {
			immune = true;
		}
	}
	else if(damType == 3)
	{
		def = defender.hResEff;
	}
	else if(damType == 4)
	{
		def = defender.cResEff;
	}
	else if(damType == 5)
	{
		def = defender.eResEff;
	}
	else if(damType == 6)
	{
		def = defender.pResEff;
	}
	else if(damType == 7)
	{
		def = defender.aResEff;
	}
	else if(damType == 8)
	{
		def = defender.vResEff;
	}
	else if(damType == 9)
	{
		def = defender.mResEff;
	}

	if(immune) return 0;

	diff = att-def;

	if(randDist == 0)
	{
		randRoll = random_range(0.95,1.05);
	}

	if(att-5 < 1)
	{
		att = 6;
	}
	createDamageToken(defender, damType);

	if(diff >= 0)
	{
		raw = round(((((((att-5)*(att-5)))*((sqrt(0.5*(diff/100)))+0.5))*randRoll)/2)*bonus);
		return raw;
	}
	else
	{
		if(diff < -99)
		{
			return 1;
		}
		else
		{
			raw = round((((sqr(att-5))*(0.5-(0.5*(power(((diff*-1)/100),0.2)))))*randRoll)*bonus);
			return raw;
		}
	
	}


}
