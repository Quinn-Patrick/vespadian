function calcHeal(argument0, argument1, argument2, argument3, argument4) {
	attacker = argument0;
	defender = argument1;
	damType = argument2;
	randDist = argument3;
	spellPow = argument4;

	if(damType == 0)
	{
		att = attacker.pAtkEff;
		def = defender.pDefEff;
	}
	else if(damType == 1)
	{
		att = attacker.mAtkEff;
		def = defender.hResEff;
	}
	else if(damType == 2)
	{
		att = attacker.mAtkEff;
		def = defender.cResEff;
	}
	else if(damType == 3)
	{
		att = attacker.mAtkEff;
		def = defender.eResEff;
	}
	else if(damType == 4)
	{
		att = attacker.mAtkEff;
		def = defender.pResEff;
	}
	else if(damType == 5)
	{
		att = attacker.dmAtkEff;
		def = defender.aResEff;
	}
	else if(damType == 6)
	{
		att = attacker.dmAtkEff;
		def = defender.vResEff;
	}
	else if(damType == 7)
	{
		att = attacker.dmAtkEff;
		def = defender.mResEff;
	}
	else
	{
		att = attacker.mAtkEff;
	}

	def = 0;

	diff = att;

	if(randDist == 0)
	{
		randRoll = random_range(0.95,1.05);
	}

	if(att < 11) att = 11;

	//if(diff >= 0)
	//{
	//outp =  -1*round((((att-10)*((sqrt(0.5*((att-10)/100)))+0.5))*randRoll)*spellPow);
	
	midpoint = 100-att;

	outp = -1*(spellPow/(1+exp(-0.04*(diff-midpoint))))*randRoll;

	if(attacker.conds[31] > 0){
		outp *= attacker.conds[31];
	}
	
	if(defender.conds[41] > 0){
		outp = outp*0.5;
	}

	return round(outp);

	/*}
	else
	{
		if(diff < -99)
		{
			return -1;
		}
		else
		{
			return -1*round((((sqr(att-10))*(0.5-(0.5*(power(((diff*-1)/100),0.2)))))*randRoll)*spellPow);
		}
	
	}*/


}
