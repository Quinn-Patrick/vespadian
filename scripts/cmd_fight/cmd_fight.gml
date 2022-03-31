function cmd_fight(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	if(global.targStore == -1)target = findTarget(0, user, user.atkRange);
	else target = global.targStore;

	hello = user.eq[0];

	damType = getItemDat(user.eq[0], 1);



	
	if(damType == 3) global.anim = 8;
	else if(damType == 4) global.anim = 5;
	else if(damType == 5) global.anim = 4;
	else if(getItemDat(user.eq[0], 20) == 34)  global.anim = 45;
	else global.anim = damType+19;
	global.animTimeMax = 30;
	global.animTime = 30;
	
	



	if(target == -2)
	{
		if(user.player)
		{
			global.turnPhase = 0;
			global.selLevel = 0;
		}
		global.anim = -1;
		return -2;
	}


	if(target != -1)
	{
		extraAttacks = checkAbBatt(user, 8);
		for(v = 0; v < extraAttacks; v++){
			ds_stack_push(global.actionBuffer, 1007);
		}
		
		if(user.player)weaponSwing(user, user.eq[0]);
		global.targStore = target;
		if(!calcHit(user, target, user.hitEff, target.evaEff))
		{
			damage = 0;
			doDamage(target, damage);
		}
		else
		{
			

			damage = calcDamF(user, target, damType, 0);
			
			
			attackModifiers();
		
			doDamage(target, damage);
			
			if(getItemDat(user.eq[0], 23) == 3)
			{
				if(!statContest(user, target, user.wis, target.wis, 0, 0)) applyStatus(target, 32, user.wis);
			}

		
			
		}
		if(user.conds[20] == 1)
		{
			if(checkAbBatt(user, 307))
			{
				if(!statContest(target, user, target.wis, user.agi, 10, 0)) user.conds[20] = 0;
			}
			else user.conds[20] = 0;
			
			
		}
		
		user.conds[33] = 0;
	}



	return damage;


}
