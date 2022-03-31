function cmd_elemAtk(argument0, argument1) {
	user = argument0;
	elem = argument1;

	target = -1;
	damage = -1;
	target = findTarget(0, user, user.atkRange);

	damType = getItemDat(user.eq[0], 1);



	global.anim = damType+19;
	global.animTimeMax = 15;
	global.animTime = 15;



	if(target = -2)
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
		global.targStore = target;
		if(!calcHit(user, target, user.hitEff, target.evaEff))
		{
			damage = 0;
			doDamage(target, damage);
		}
		else
		{
			if(getItemDat(user.eq[1], 0) == 2)
			{
				ds_stack_push(global.actionBuffer, 1000);
				global.atkPowMod = -1*getItemDat(user.eq[1], 4)
			}

			damage = calcDamF(user, target, 0, 0);
		
			if(getItemDat(user.eq[0], 23) == 1)
			{
				ds_stack_push(global.actionBuffer, 1006);
			}
		
			if(getItemDat(user.eq[0], 23) == 2)
			{
				ds_stack_push(global.actionBuffer, 1001);
			}
		
			if(elem == 0)
			{
				ds_stack_push(global.actionBuffer, 1001);
			}
		
			if(elem == 1)
			{
				ds_stack_push(global.actionBuffer, 1003);
			}
		
			if(elem == 2)
			{
				ds_stack_push(global.actionBuffer, 1002);
			}
			
			if(checkAbBatt(user, 202))
			{
				ds_stack_push(global.actionBuffer, 1001);
			}
		
			if(checkAbBatt(user, 203))
			{
				ds_stack_push(global.actionBuffer, 1003);
			}
		
			if(checkAbBatt(user, 204))
			{
				ds_stack_push(global.actionBuffer, 1002);
			}
		
			if(checkAbBatt(user, 205))
			{
				ds_stack_push(global.actionBuffer, 1005);
			}
		
			if(checkAbBatt(user, 206))
			{
				ds_stack_push(global.actionBuffer, 1004);
			}
		
			if(calcCrit(user, target, user.hitEff, target.evaEff)) 
			{
				if(checkAbBatt(user, 430))damage *= 2;
				else damage *= 1.5;
			}
		
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
	}

	return damage;


}
