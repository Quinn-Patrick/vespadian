function act_alterParty(argument0, argument1) {
	inOrOut = argument0;
	partyMemberId = argument1;

	if(inOrOut == 0){
		partyLeave(partyMemberId);
	}
	else{
		partyJoin(partyMemberId);
	}

	return true;


}
