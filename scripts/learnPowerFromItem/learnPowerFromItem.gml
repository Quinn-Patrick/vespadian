function learnPowerFromItem(partyMember, powerNumber) {
	
	
	spellLevel = getArcaneSpellLevel(powerNumber);
	if(is_undefined(spellLevel)) return -1;

	
	if(spellLevel > partyMember.amLevel) return -1;

	if(key(9)){
		success = learnPower(partyMember, powerNumber);
		if(success)sound(snd_gainFeat);
		return success;
	}


}
