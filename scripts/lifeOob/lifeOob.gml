function lifeOob(argument0, argument1, argument2) {
	attacker = argument0;
	defender = argument1;
	amount = argument2;


	if(defender.conditions[0] == 0)
	{
		return false;
	}
	
	sound(snd_crit);
	sound(snd_light);
	defender.conditions[0] = 0;

	if(amount == -1){
		defender.curHp = 1;
	}
	else{
		defender.curHp = round(defender.maxHp*amount);
	}


	return true;



}
