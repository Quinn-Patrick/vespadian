function partyJoin(argument0) {
	character = argument0;
	for(i = 0; i < 4; i++) //make sure that this character isn't already in the party
	{
		if(global.party[i,0] == character) return false; //return false if that character is already in the party
	}
	for(i = 0; i < 4; i++){
		if(global.party[i,0] == -1) //find an empty slot
		{
			//position = i;
			global.party[i, 0] = character; //insert the character
			break;
		}
		if(i == 3) return false; //return false if there isn't a free spot
	}

	occupied[0] = false;
	occupied[1] = false;
	occupied[2] = false;
	occupied[3] = false;

	//place the character in the formation

	global.partyPos[character, 0] = 0;
	global.partyPos[character, 1] = 0;

	for(jk = 0; jk < 4; jk++)
	{
		if(jk != character && partyCheck(jk))
		{
			occupied[global.partyPos[jk, 1]] = true;
		}
	}
	for(i = 0; i < 4; i++)
	{
		if(!occupied[i]){
			global.partyPos[character, 1] = i;
			break;
		}
	}

	//Give them the correct name and portrait
	//global.parNames[position] = partyN(global.party[position,0]);

	//global.parPorts[position] = partyP(global.party[position,0]);



}
