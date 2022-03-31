function cmd_multishot(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = findTarget(0, user, user.atkRange);

	damType = getItemDat(user.eq[0], 1);


	global.anim = damType+19;
	global.animTimeMax = 30;
	global.animTime = 30;



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

	multiTargets = ds_list_create();

	if(target != -1)
	{
	
	
	
		for(i = 0; i < floor(user.agi/20); i++){
			if(user.friend)ds_list_add(multiTargets, global.enemy[| irandom_range(0, ds_list_size(global.enemy)-1)]);
			else ds_list_add(multiTargets, global.ally[| irandom_range(0, ds_list_size(global.ally)-1)]);
		}
	
		global.targStore = target;
		if(!calcHit(user, target, user.hitEff, target.evaEff) || target.conds[33] > 0)
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
		
			if(calcCrit(user, target, user.hitEff, target.evaEff)) 
			{
				if(checkAbBatt(user, 430))damage *= 2;
				else damage *= 1.5;
			}
		
			doDamage(target, damage);
		
			
			for(k = 0; k < ds_list_size(multiTargets); k++){
				damage = calcDamF(user, multiTargets[| k], 0, 0);
				damage /= 2;
				damage = round(damage);
				if(calcCrit(user, multiTargets[| k], user.hitEff, target.evaEff)) 
				{
					if(checkAbBatt(user, 430))damage *= 2;
					else damage *= 1.5;
				}
		
				doDamage(multiTargets[| k], damage);
			}
		
		
		
			if(getItemDat(user.eq[0], 23) == 1)
			{
				ds_stack_push(global.actionBuffer, 1006);
			}
		
			if(getItemDat(user.eq[0], 23) == 2)
			{
				ds_stack_push(global.actionBuffer, 1001);
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
	ds_list_destroy(multiTargets);
	return damage;


}
