function restoreHealthAndMana(argument0, argument1, argument2) {
	partyMember = argument0;
	amount1 = argument1;
	amount2 = argument2;

	if(key(9)){
		failed = 0;
		if(partyMember.curSp == partyMember.maxSp)
			failed++;
		else{
			partyMember.curSp += amount1;

			if(partyMember.curSp > partyMember.maxSp)
				partyMember.curSp = partyMember.maxSp;
		}
	
		if(partyMember.curHp == partyMember.maxHp || partyMember.conditions[0] != 0)
			failed++;
		else{
			partyMember.curHp += amount2;

			if(partyMember.curHp > partyMember.maxHp)
				partyMember.curHp = partyMember.maxHp;
		}
		if(failed == 2) return -1;
		sound(snd_heal);
		return 1;
	}


}
