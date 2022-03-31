function healStatus(argument0, argument1) {
	partyMember = argument0;
	statusNum = argument1;
	
	
	if(key(9))
	{
		
		if(partyMember.conditions[statusNum] == 0)
			return -1;
		sound(snd_heal);
		partyMember.conditions[statusNum] = 0
			return 1;
	}
	else
	{
		return -1;
	}


}
