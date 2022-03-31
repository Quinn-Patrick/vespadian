function restoreMana(argument0, argument1) {
	partyMember = argument0;
	amount = argument1;

	if(key(9))
	{
		if(partyMember.curSp == partyMember.maxSp)
			return -1;
	
		partyMember.curSp += amount;

		if(partyMember.curSp > partyMember.maxSp)
			partyMember.curSp = partyMember.maxSp;
		sound(snd_heal);
		return 1;
	}
	else
	{
		return -1;
	}


}
