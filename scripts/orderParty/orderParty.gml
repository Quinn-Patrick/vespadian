// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function orderParty(){
	slot = 0;
	newParty = [undefined, undefined, undefined, undefined];
	for(i = 0; i < 4; i++){
		for(j = 0; j < 4; j++){
			checkCharacter = partyMemberOnPosition(j,i);
			if(checkCharacter != -1){
				newParty[slot] = checkCharacter;
				slot++;
			}
		}
	}
	global.party = newParty;
}