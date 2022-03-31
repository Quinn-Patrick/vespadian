function healAllOob(argument0, argument1, argument2) {
	attacker = argument0;

	success = false;

	randDist = argument1;
	spellPow = argument2;

	att = attacker.dmAtk;

	def = 0;
	sound(snd_heal);
	for(k = 0; k < 4; k++)
	{
		if(!is_undefined(global.party[k]))
		{
			if(global.party[k].curHp < global.party[k].maxHp){
				success = true;
				if(randDist == 0)
				{
					randRoll = random_range(0.95,1.05);
				}
			
				diff = att-def;
				midpoint = 100-att;
				healAmount = round((spellPow/(1+exp(-0.04*(diff-midpoint))))*randRoll);

				if(attacker.conditions[31] > 0){
					healAmount *= attacker.conditions[31];
				}


				global.party[k].curHp += round(healAmount);
				if(global.party[k].curHp >= global.party[k].maxHp)
				{
					global.party[k].curHp = global.party[k].maxHp;
				}
			}
		}
	}
	return success;
}
