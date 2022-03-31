function menuItemSwitch(argument0) {
	scriptNum = argument0;
	out = -1;
	if(scriptNum > 199){
		out = learnPowerFromItem(global.party[menuSelect[menuLevel,0]], scriptNum);
	}
	
	switch(scriptNum)
	{
		case 1:
		out = restoreHealth(global.party[menuSelect[menuLevel,0]],150);
		break;
	
		case 2:
		out = restoreHealth(global.party[menuSelect[menuLevel,0]],500);
		break;
	
		case 3:
		out = restoreHealth(global.party[menuSelect[menuLevel,0]],2000);
		break;
	
		case 4:
		out = restoreHealth(global.party[menuSelect[menuLevel,0]],5000);
		break;
	
		case 5:
		out = restoreMana(global.party[menuSelect[menuLevel,0]],20);
		break;
	
		case 6:
		out = restoreMana(global.party[menuSelect[menuLevel,0]],100);
		break;
	
		case 7:
		out = restoreMana(global.party[menuSelect[menuLevel,0]],500);
		break;
	
		case 8:
		out = healStatus(global.party[menuSelect[menuLevel,0]],16);
		break;
	
		case 9:
		out = healStatus(global.party[menuSelect[menuLevel,0]],17);
		break;
	
		case 10:
		out = healStatus(global.party[menuSelect[menuLevel,0]],18);
		break;
	
		case 11:
		out = healStatus(global.party[menuSelect[menuLevel,0]],21);
		break;
	
		case 12:
		out = life(global.party[menuSelect[menuLevel,0]],1);
		break;
	
		case 16:
		out = restoreHealthAndMana(global.party[menuSelect[menuLevel,0]], 50, 500);
		break;
	
		case 17:
		out = learnPowerFromItem(global.party[menuSelect[menuLevel,0]], 341);
		break;
	
		case 18:
		out = boostScoreFromItem(global.party[menuSelect[menuLevel,0]], 0, 1);
		break;
	
		case 19:
		out = boostScoreFromItem(global.party[menuSelect[menuLevel,0]], 1, 1);
		break;
	
		case 20:
		out = boostScoreFromItem(global.party[menuSelect[menuLevel,0]], 2, 1);
		break;
	
		case 21:
		out = boostScoreFromItem(global.party[menuSelect[menuLevel,0]], 3, 1);
		break;
	
		case 22:
		out = boostScoreFromItem(global.party[menuSelect[menuLevel,0]], 4, 1);
		break;
	
		case 23:
		out = boostScoreFromItem(global.party[menuSelect[menuLevel,0]], 5, 1);
		break;
	
		case 24:
		out = boostScoreFromItem(global.party[menuSelect[menuLevel,0]], 6, 1);
		break;
	
		case 25:
		out = boostScoreFromItem(global.party[menuSelect[menuLevel,0]], 7, 1);
		break;
		
		case 26:
		out = life(global.party[menuSelect[menuLevel,0]],global.party[menuSelect[menuLevel,0]].maxHp*0.5);
		break;
		
		case 27:
		out = healStatus(global.party[menuSelect[menuLevel,0]],41);
		break;
		
		case 28:
		out = healStatus(global.party[menuSelect[menuLevel,0]],38);
		break;
	}
	return out;


}
