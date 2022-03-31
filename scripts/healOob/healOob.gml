function healOob(argument0, argument1, argument2, argument3) {
	attacker = argument0;
	defender = argument1;

	randDist = argument2;
	spellPow = argument3;
	
	

	if(defender.curHp == defender.maxHp || defender.conditions[0] != 0)
	{
		return false;
	}
	
	sound(snd_heal);
	att = attacker.dmAtk;

	def = 0;

	diff = att-def;
	
	midpoint = 100-att;
	
	if(randDist == 0)
	{
		randRoll = random_range(0.95,1.05);
	}
	healAmount = (spellPow/(1+exp(-0.04*(diff-midpoint))))*randRoll;
	if(attacker.conditions[31] > 0){
		healAmount *= attacker.conditions[31];
	}

	defender.curHp += round(healAmount);
	if(defender.conditions[42] > 0) defender.conditions[42] = 0;
	if(defender.curHp >= defender.maxHp)
	{
		defender.curHp = defender.maxHp;
	}
	return true;



}
