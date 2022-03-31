function battleItemSwitch(argument0, argument1, argument2) {
	scriptNum = argument0;
	partyMem = argument1;
	itemSlot = argument2;
	ret = -1;
	switch(scriptNum)
	{
		case 1:
		ret = cmd_batPotion(150,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 2:
		ret = cmd_batPotion(500,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 3:
		ret = cmd_batPotion(2000,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 4:
		ret = cmd_batPotion(5000,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 5:
		ret = cmd_batEther(20,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 6:
		ret = cmd_batEther(100,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 7:
		ret = cmd_batEther(500,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 8:
		ret = cmd_batCondFix(16,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 9:
		ret = cmd_batCondFix(17,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 10:
		ret = cmd_batCondFix(18,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 11:
		ret = cmd_batCondFix(21,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 12:
		ret = cmd_batLife(1,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 13:
		ret = cmd_batFireScroll1(global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 14:
		ret = cmd_batIceScroll1(global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 15:
		ret = cmd_batLitScroll1(global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 16:
		ret = cmd_batPotionEther(50, 20, global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 26:
		ret = cmd_batLife(4, global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 27:
		ret = cmd_batCondFix(41,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 28:
		ret = cmd_batCondFix(38,global.top);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 29:
		ret = cmd_batDynamite(global.top);
		global.turnPhase = 2;
		break;
	}

	if(ret != -1 && ret != -2)
	{
		partyMem.inven[itemSlot] = -1;
	}
	return ret;


}
