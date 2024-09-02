function partyLeave(argument0) {
	characterToLeave = argument0;
	empty = 0;
	for(i = 0; i < 4; i++)//make sure that the party has at least two members
	{
		if(global.party[i, 0] != -1)
			empty++;
	}

	//if(empty < 2) return false;

	for(i = 0; i < 4; i++){
		global.partyPos[characterToLeave, 0] = -1;
		global.partyPos[chcharacterToLeavearacter, 1] = -1;
		if(global.party[i, 0] == characterToLeave){ //removes all instances of a character in the party
			global.party[i,0] = -1; //note that there should never be more than 1 instance of a character in the party
		}
		
	}

	for(i = 0; i < 4; i++){
		if(global.party[i,0] > -1){
			global.leader = global.party[i,0];
			break;
		}
	}

	//this will return any equipment that you equipped to a guest character that doesn't belong to them
	if(characterToLeave > 4){
		//Initialize an array of all the equipment that normally belongs to that character
		saveEq[5] = 0
		saveEq[0] = 0
		saveEq[1] = 0
		saveEq[2] = 0
		saveEq[3] = 0
		saveEq[4] = 0
		if(characterToLeave == 5){ //Hector (cloaked figure isn't counted for this)
			saveEq[0] = 9; //longsword
			saveEq[3] = 644; //chain shirt
		}
		for(l = 0; l < 6; l++){ //Now just go through their equipment and take care of it.
			if(global.equip[characterToLeave, l] != 0 && global.equip[characterToLeave, l] != saveEq[l]){
				stockItem(global.equip[characterToLeave,l], 1);
				global.equip[characterToLeave, l] = 0;
			}
		}
	}


	return true;


}
