function calcDamMFixedPower(argument0, argument1, argument2, argument3, argument4, argument5) {
	attacker = argument0;
	defender = argument1;
	damType = argument2;
	randDist = argument3;
	spellPow = argument4;
	fixedPower = argument5;

	weak = false;
	resist = false;
	immune = false;

	if(defender.conds[33] > 0) return 0;

	if(damType == 0)
	{
		att = fixedPower;
		def = defender.pDefEff;
		if(checkAbBatt(defender, 450)) {
			immune = true;
		}
	}
	else if(damType == 1) //heat
	{
		att = fixedPower;
		def = defender.hResEff;
		if(checkAbBatt(defender, 407)) weak = true;
		if(checkAbBatt(defender, 408)) resist = true;
		if(checkAbBatt(defender, 409)) {
			immune = true;
		}
	}
	else if(damType == 2) //cold
	{
		att = fixedPower;
		def = defender.cResEff;
		if(checkAbBatt(defender, 410)) weak = true;
		if(checkAbBatt(defender, 411)) resist = true;
		if(checkAbBatt(defender, 412)){
			immune = true;
		}
	}
	else if(damType == 3) //electric
	{
		att = fixedPower;
		def = defender.eResEff;
		if(checkAbBatt(defender, 413)) weak = true;
		if(checkAbBatt(defender, 414)) resist = true;
		if(checkAbBatt(defender, 415)){
			immune = true;
		}
	}
	else if(damType == 4) //poison
	{
		att = fixedPower;
		def = defender.pResEff;
		if(checkAbBatt(defender, 416)) weak = true;
		if(checkAbBatt(defender, 417)) resist = true;
		if(checkAbBatt(defender, 418)){
			immune = true;
		}
	}
	else if(damType == 5) //aether
	{
		att = fixedPower;
		def = defender.aResEff;
		if(checkAbBatt(defender, 419)) weak = true;
		if(checkAbBatt(defender, 420)) resist = true;
		if(checkAbBatt(defender, 421)){
			immune = true;
		}
	}
	else if(damType == 6) //vital
	{
		att = fixedPower;
		def = defender.vResEff;
		if(checkAbBatt(defender, 422)) weak = true;
		if(checkAbBatt(defender, 423)) resist = true;
		if(checkAbBatt(defender, 424)){
			immune = true;
		}
	}
	else if(damType == 7) //mind
	{
		att = fixedPower;
		def = defender.mResEff;
		if(checkAbBatt(defender, 425)) weak = true;
		if(checkAbBatt(defender, 426)) resist = true;
		if(checkAbBatt(defender, 427)){
			immune = true;
		}
	}

	diff = att-def;

	if(randDist == 0)
	{
		randRoll = random_range(0.95,1.05);
	}
	midpoint = 100-att

	outp = (spellPow/(1+exp(-0.04*(diff-midpoint))))*randRoll

	if(damType == 1)
	{
		if(checkAbBatt(attacker, 208))
		{
			outp *= 1.5;
		}
		if(global.temp == 2)
		{
			if(checkAbBatt(attacker, 201)) outp *= 2;
			else outp *= 1.5;
		}
		else if(global.temp == 0)
		{
			if(!checkAbBatt(attacker, 201)) outp *= 0.5;
		}
		if(global.precip == 1){
			if(!checkAbBatt(attacker, 201)) outp *= 0.5;
		}
	}
	else if(damType == 2)
	{
		if(checkAbBatt(attacker, 209))
		{
			outp *= 1.5;
		}
		if(global.temp == 0)
		{
			if(checkAbBatt(attacker, 201)) outp *= 2;
			else outp *= 1.5;
		}
		else if(global.temp == 2)
		{
			if(!checkAbBatt(attacker, 201)) outp *= 0.5;
		}
	}
	else if(damType == 3)
	{
		if(checkAbBatt(attacker, 210))
		{
			outp *= 1.5;
		}
		if(global.precip == 1)
		{
			if(checkAbBatt(attacker, 201)) outp *= 2;
			else outp *= 1.5;
		}
	
	}
	else if(damType == 5)
	{
		if(checkAbBatt(attacker, 102))
		{
			outp *= 1.5;
		}
	
	}
	else if(damType == 6)
	{
		if(checkAbBatt(attacker, 104))
		{
			outp *= 1.5;
		}
	
	}
	
	if(isCovered(defender)){
		outp = round(outp/2);
	}

	if(weak){
		outp *= 2;
		sendMessage(defender.name, "Weakness!!");
	}
	if(resist){
		outp /= 2;
		sendMessage(defender.name, "Resisted...");
	}
	if(immune){
		sendMessage(defender.name, "Immune!");
		outp = 0;
	}
	createDamageToken(defender, damType);
	outp = round(outp);
	return round(outp);


}
