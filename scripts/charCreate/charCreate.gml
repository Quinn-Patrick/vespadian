function charCreate(argument0, argument1, argument2, argument3) {
	charid = argument0;
	charx = argument1;
	chary = argument2;
	playerCharacter = argument3;

	if(playerCharacter){
		global.playerCharacterPointer = charid;
		instId = instance_create_depth(100,100,1,obj_battlePC);
	}
	else{
		instId = charSwitch(charid);
	}

	instId.col = charx;
	instId.row = chary;

	if(!instId.friend)
	{
		global.eGrid[instId.col, instId.row] = instId;
	}

	charInit(instId);


}
