function restoreHealth(argument0, argument1) {
	partyMember = argument0;
	amount = argument1;

	if(key(9))
	{
		if(partyMember.curHp == partyMember.maxHp || partyMember.conditions[0] != 0)
			return -1;
	
		partyMember.curHp += amount;

		if(partyMember.curHp > partyMember.maxHp)
			partyMember.curHp = partyMember.maxHp;
		sound(snd_heal);
		return 1;
	}
	else
	{
		return -1;
	}


}
