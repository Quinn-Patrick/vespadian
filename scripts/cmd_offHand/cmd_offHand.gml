function cmd_offHand(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = global.targStore;
	damType = getItemDat(user.eq[1], 1);

	global.anim = damType+19;
	global.animTimeMax = 15;
	global.animTime = 15;

	global.atkPowMod = 0;

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

	/*if(getItemDat(user.equip[1], 0) == 2)
	{
		ds_stack_push(global.actionBuffer, 1000);
		global.atkPowMod = -1*getItemDat(user.equip[1], 4)
	}*/

	offScore = getItemDat(user.eq[1], 3);
	switch(offScore){
		case 0: 
			baseStat = user.str;
			break;
		case 1: 
			baseStat = user.dex;
			break;
		case 2: 
			baseStat = user.int;
			break;
		case 3: 
			baseStat = user.cha;
			break;
		default:
			baseStat = user.str;
			break;
	}

	offPow = baseStat + getItemDat(user.eq[1], 4) + user.conds[1];

	if(target != -1)
	{
		if(user.player)weaponSwing(user, user.eq[1]);
		global.targStore = target;
		if(!calcHit(user, target, user.hitEff, target.evaEff))
		{
			damage = 0;
			doDamage(target, damage);
		}
		else
		{
			damage = round(calcDamGen(user, target, 0, getItemDat(user.eq[1], 1), offPow));
			
			if(!checkAbBatt(user, 443)) damage = round(damage/2);
		
			if(getItemDat(user.eq[1], 23) == 1)
			{
				ds_stack_push(global.actionBuffer, 1006);
			}
		
			if(getItemDat(user.eq[1], 23) == 2)
			{
				ds_stack_push(global.actionBuffer, 1001);
			}
		
			if(calcCrit(user, target, user.hitEff, target.evaEff)) 
			{
				if(checkAbBatt(user, 430))damage *= 2;
				else damage *= 1.5;
			}
		
			doDamage(target, damage);
		}
	}

	return damage;


}
