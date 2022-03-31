function life(argument0, argument1) {
	partyMember = argument0;
	healthAmount = argument1;
	
	
	if(key(9))
	{
		if(partyMember.conditions[0] == 0)
			return -1;
	
		partyMember.conditions[0] = 0
		partyMember.curHp += healthAmount;
		sound(snd_heal);
		return 1;
	}
	else
	{
		return -1;
	}


}
