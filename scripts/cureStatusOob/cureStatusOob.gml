function cureStatusOob(argument0, argument1, argument2) {
	attacker = argument0;
	defender = argument1;
	statusNum = argument2;

	if(defender.conditions[statusNum] == 0)
	{
		return false;
	}

	defender.conditions[statusNum] = 0;
	sound(snd_heal);
	return true;



}
