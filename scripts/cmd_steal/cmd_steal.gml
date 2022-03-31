function cmd_steal(argument0, argument1) {
	user = argument0;
	modifier = argument1;

	target = -1;
	damage = -1;
	if(global.targStore == -1)target = findTarget(0, user, user.atkRange);
	else target = global.targStore;

	itemClear = false;

	global.anim = 0;
	global.animTimeMax = 30;
	global.animTime = 30;

	if(target = -2)
	{
		//global.turnPhase = 0;
		global.anim = -1;
		return -2;
	}


	


	if(target != -1)
	{
		messages[0] = 0;
		messages = loadMisc(2, 0, 2);
		
		if(checkAbBatt(user,306)){
			damage = calcHeal(user, user, 6, 0, 300);
			doDamage(user, damage);
		}
		
		if(target.stealIt == -1)
		{
			sendMessage(user.name, messages[2]);
			damage = 0;
			return damage;
		}
	
		if(modifier == 1){
			if(!statContest(user, target, user.cha, target.wis, 0, 0)) target.conds[17] = user.wis;
		}
	
		stealMod = 0;
		if(checkAbBatt(user, 304)) stealMod += 20;
	
		if(statContest(user, target, user.dex, target.wis, stealMod, 0) && !checkAbBatt(user, 317))
		{
			sendMessage(user.name, messages[0]);
			damage = 0;
		}
		else
		{
			sendMessage(user.name,cleanString(messages[1] + getItemDat(target.stealIt, -1) + "!"));
			if(checkAbBatt(user, 314)){
				if(!statContest(user, target, user.wis, target.wis, 0, 0)){
					applyStatus(target, 19, 1);
				}
			}
			if(checkAbBatt(user,301))applyStatus(user, 23, 0.5);
			if(checkAbBatt(user,305))applyStatus(user, 20, 1);
			itemT = getItemDat(target.stealIt, 0);
			if(itemT != 0 && itemT != 8) 
			{
				stockItem(target.stealIt, 1);
				itemClear = true;
			}
			else{
				for(i = 0; i < user.num.invenSize; i++){
					if(user.num.inven[i] == -1)
					{
						if(!itemClear)giveItem(target.stealIt, user.num, i);
						itemClear = true;
					}
				}
			}
			if(!itemClear) stockItem(target.stealIt, 1);
		
		
			target.stealIt = -1;
			damage = 1;
		}
	}

	return damage;


}
