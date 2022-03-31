function boostScoreFromItem(argument0, argument1, argument2) {
	partyMember = argument0;
	scoreNumber = argument1;
	amount = argument2;


	if(key(9)){
		success = boostScore(partyMember, scoreNumber, amount);
		if(success)sound(snd_gainFeat);
		return success;
	}


}
