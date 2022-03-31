function gainFeat(argument0, argument1, argument2, argument3) {
	mem = argument0;
	featN = argument1;
	scoreN = argument2;
	scoreB = argument3;

	global.feats[featN] = true;

	if(featNum == 3) learnPower(mem, 5);
	if(featNum == 4) learnPower(mem, 4);
	if(featNum == 5) learnAbility(mem, 1);
	if(featNum == 6) learnAbility(mem, 2);
	if(featNum == 7){
		global.equipCodes[0,11] = true;
		global.equipCodes[0,12] = true;
		global.equipCodes[0,13] = true;
		global.equipCodes[0,14] = true;
		global.equipCodes[0,16] = true;
	}
	if(featNum == 8) global.equipCodes[0,33] = true;
	if(featNum == 9){
		global.equipCodes[0,22] = true;
	}
	if(featNum == 10){
		global.equipCodes[0,8] = true;
		global.equipCodes[0,16] = true;
	}
	if(featNum == 15){
		global.equipCodes[0,17] = true;
		global.equipCodes[0,18] = true;
		global.equipCodes[0,19] = true;
	}
	if(featNum == 16) learnAbility(mem, 3);
	if(featNum == 17) learnAbility(mem, 4);
	if(featNum == 18) learnAbility(mem, 5);
	if(featNum == 19) learnAbility(mem, 6);
	if(featNum == 20) learnAbility(mem, 7);
	if(featNum == 20) learnPower(mem, 7);
	if(featNum == 22){
		learnPower(mem, 8);
		learnPower(mem, 9);
		learnPower(mem, 10);
	}
	if(featNum == 23) learnPower(mem, 11);
	if(featNum == 24) learnPower(mem, 3);
	if(featNum == 25) learnPower(mem, 2);

	if(featNum == 103) learnPower(mem, 203);
	if(featNum == 104) global.equipCodes[1,21] = true;
	if(featNum == 105) learnAbility(mem, 102);
	if(featNum == 106) learnAbility(mem, 101);

	if(featNum == 108) learnPower(mem, 209);
	if(featNum == 109) global.equipCodes[1,32] = true;
	if(featNum == 110) learnPower(mem, 210);
	if(featNum == 112) learnPower(mem, 211);

	if(featNum == 115) learnAbility(mem, 105);

	if(featNum == 116){
		learnPower(mem, 214);
		learnPower(mem, 215);
		learnPower(mem, 216);
	}

	if(featNum == 117) learnPower(mem, 212);
	if(featNum == 118) learnPower(mem, 213);
	if(featNum == 120) learnPower(mem, 204);
	if(featNum == 121){
		global.equipCodes[1,7] = true;
		global.equipCodes[1,15] = true;
	}

	if(featNum == 122) learnAbility(mem, 103);
	if(featNum == 123) learnPower(mem, 205);
	if(featNum == 124) learnPower(mem, 206);
	if(featNum == 126) learnAbility(mem, 104);
	if(featNum == 127) learnPower(mem, 208);
	if(featNum == 128) learnPower(mem, 207);

	if(featNum == 203) learnAbility(mem, 201);
	if(featNum == 205) learnPower(mem, 302);
	if(featNum == 206) learnPower(mem, 303);
	if(featNum == 207){
		learnPower(mem, 304);
		learnPower(mem, 305);
	}
	if(featNum == 209){
		learnPower(mem, 306);
		learnPower(mem, 307);
	}
	if(featNum == 210){
		learnAbility(mem, 211);
		learnAbility(mem, 212);
	}
	if(featNum == 212) global.equipCodes[2,1] = true;
	if(featNum == 214){
		learnAbility(mem, 202);
		learnAbility(mem, 203);
		learnAbility(mem, 204);
	}
	if(featNum == 215){
		learnPower(mem, 313);
		learnPower(mem, 314);
		learnPower(mem, 315);
	}
	if(featNum == 216){
		learnAbility(mem, 205);
		learnAbility(mem, 206);
	}
	if(featNum == 217){
		learnPower(mem, 319);
		learnPower(mem, 320);
		learnPower(mem, 321);
	}
	if(featNum == 218) global.equipCodes[2,20] = true;
	if(featNum == 220)
	{
		learnAbility(mem, 208);
		learnAbility(mem, 209);
		learnAbility(mem, 210);
	}
	if(featNum == 222) learnPower(mem, 322);
	if(featNum == 223) learnPower(mem, 323);
	if(featNum == 224) learnPower(mem, 324);
	if(featNum == 225){
		learnPower(mem, 325);
		learnPower(mem, 326);
		learnPower(mem, 327);
	}
	if(featNum == 226) learnPower(mem, 336);
	if(featNum == 227) learnPower(mem, 337);
	if(featNum == 228) learnPower(mem, 333);

	if(featNum == 303) learnAbility(mem,301);
	if(featNum == 305) learnAbility(mem,302);
	if(featNum == 306) learnAbility(mem,303);
	if(featNum == 308) learnAbility(mem,304);
	if(featNum == 309) learnPower(mem,103);
	if(featNum == 310) learnAbility(mem,305);
	if(featNum == 312) learnAbility(mem,314);
	if(featNum == 313) learnAbility(mem,306);
	if(featNum == 315) learnAbility(mem,307);
	if(featNum == 317){
		global.equipCodes[3,17] = true;
		global.equipCodes[3,18] = true;
	}
	if(featNum == 318) learnAbility(mem,308);
	if(featNum == 319) learnPower(mem,105);
	if(featNum == 320) learnAbility(mem,309);
	if(featNum == 322) learnAbility(mem,310);
	if(featNum == 324) learnAbility(mem,311);
	if(featNum == 325) global.equipCodes[3,21] = true;
	if(featNum == 326) learnAbility(mem,312);
	if(featNum == 328) learnAbility(mem,313);


	if(scoreN >= 0 && scoreN <= 7)boostScore(mem, scoreN, scoreB);
	else
	{
		if(scoreN < 0)
		{
			scoreMenu = instance_create_depth(0,0,-1000,obj_scoreBooster);
			scoreMenu.character = mem;
			scoreMenu.boostAmount = scoreB;
			scoreMenu.scoreSet = scoreN;
		}
		else if(scoreN == 8)
		{
			boostScoreAll(mem, scoreB);
		}
	}



}
