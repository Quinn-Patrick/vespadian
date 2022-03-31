function calcDamF(argument0, argument1, argument2, argument3) {
	attacker = argument0;
	defender = argument1;
	damType = argument2;
	randDist = argument3;
	bonus = 1;

	distance = attacker.col + defender.col;

	weak = false;
	resist = false;
	immune = false;

	if(defender.conds[33] > 0) return 0;

	if(attacker.conds[20] == 1 || attacker.conds[33] > 0)
	{
		bonus += 1;
	}
	att = attacker.pAtkEff - getItemDat(attacker.eq[1], 4);
	if(damType <= 2)
	{
		def = defender.pDefEff;
		if(damType == 0 && checkAbBatt(attacker, 5) == 1) def *= 0.5;
		if(checkAbBatt(defender, 450)) {
			immune = true;
		}
	}
	else if(damType == 3)
	{
		def = defender.hResEff;
		if(checkAbBatt(defender, 407)) weak = true;
		if(checkAbBatt(defender, 408)) resist = true;
		if(checkAbBatt(defender, 409)) {
			immune = true;
		}
	}
	else if(damType == 4)
	{
		def = defender.cResEff;
		if(checkAbBatt(defender, 410)) weak = true;
		if(checkAbBatt(defender, 411)) resist = true;
		if(checkAbBatt(defender, 412)) {
			immune = true;
		}
	}
	else if(damType == 5)
	{
		def = defender.eResEff;
		if(checkAbBatt(defender, 413)) weak = true;
		if(checkAbBatt(defender, 414)) resist = true;
		if(checkAbBatt(defender, 415)) {
			immune = true;
		}
	}
	else if(damType == 6)
	{
		def = defender.pResEff;
		if(checkAbBatt(defender, 416)) weak = true;
		if(checkAbBatt(defender, 417)) resist = true;
		if(checkAbBatt(defender, 418)) {
			immune = true;
		}
	}
	else if(damType == 7)
	{
		def = defender.aResEff;
		if(checkAbBatt(defender, 419)) weak = true;
		if(checkAbBatt(defender, 420)) resist = true;
		if(checkAbBatt(defender, 421)) {
			immune = true;
		}
	}
	else if(damType == 8)
	{
		def = defender.vResEff;
		if(checkAbBatt(defender, 422)) weak = true;
		if(checkAbBatt(defender, 423)) resist = true;
		if(checkAbBatt(defender, 424)) {
			immune = true;
		}
	}
	else if(damType == 9)
	{
		def = defender.mResEff;
		if(checkAbBatt(defender, 425)) weak = true;
		if(checkAbBatt(defender, 426)) resist = true;
		if(checkAbBatt(defender, 427)) {
			immune = true;
		}
	}

	diff = att-def;

	if(randDist == 0)
	{
		randRoll = random_range(0.95,1.05);
	}

	if(att-5 < 1)
	{
		att = 6;
	}

	if(diff >= 0)
	{
		raw = round(((((((att-5)*(att-5)))*((sqrt(0.5*(diff/100)))+0.5))*randRoll)/2)*bonus);
		if(checkAbBatt(attacker, 6) == 1){
			for(i = 0; i < 6; i++){
				abAppliesTemp = true;
				armorTypeTemp = getItemDat(attacker.eq[i], 20)
				if(armorTypeTemp == 21 || armorTypeTemp == 22){
					abAppliesTemp = false;
				}
			}
			if(abAppliesTemp)
			{
				raw *= 1.5;
			}
		}
	
	}
	else
	{
		if(diff < -99)
		{
			return 1;
		}
		else
		{
			raw =  round((((sqr(att-5))*(0.5-(0.5*(power(((diff*-1)/100),0.2)))))*randRoll)*bonus);
			if(checkAbBatt(attacker, 6) == 1){
				for(i = 0; i < 6; i++){
					abAppliesTemp = true;
					armorTypeTemp = getItemDat(attacker.eq[i], 20)
					if(armorTypeTemp == 21 || armorTypeTemp == 22){
						abAppliesTemp = false;
					}
				}
				if(abAppliesTemp)
				{
					raw *= 1.5;
				}
			}
		}
	
	}
	
	if(attacker.conds[34] == 2) raw *= 1.5;
	if(defender.conds[34] == 1) raw *= 0.5;
	
	if(defender.conds[34] == 2) raw *= 1.5;
	if(attacker.conds[34] == 1) raw *= 0.5;
	
	if(isCovered(defender)){
		raw = round(raw/2);
	}

	if(checkAbBatt(defender, 308)){
		raw *= round(0.5+sqrt(distance));
	}

	if(weak){
		raw *= 2;
		sendMessage(defender.name, "Weakness!!");
	}
	if(resist){
		raw /= 2;
		sendMessage(defender.name, "Resisted...");
	}
	if(immune){
		sendMessage(defender.name, "Immune!");
		raw = 0;
	}
	
	raw = creatureTypeDamage(attacker, defender, raw);

	createDamageToken(defender, damType);

	if(raw < 1) raw = 1;

	return round(raw);


}
