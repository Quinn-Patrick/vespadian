function partyCheck(argument0) {
	//check to see whether a certain character is in the party
	charInParty = argument0;
	for(i = 0; i < 4; i++){
		if(global.party[i, 0] == charInParty) return true;
	}
	return false;


}
