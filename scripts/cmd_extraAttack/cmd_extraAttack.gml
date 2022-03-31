function cmd_extraAttack(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = global.targStore;
	damType = getItemDat(user.eq[0], 1);

	global.anim = damType+19;
	global.animTimeMax = 30;
	global.animTime = 30;

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

	offScore = getItemDat(user.eq[1], 3)*2;
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


	if(target != -1)
	{
		if(user.player)weaponSwing(user, user.eq[0]);
		global.targStore = target;
		if(!calcHit(user, target, user.hitEff, target.evaEff))
		{
			damage = 0;
			doDamage(target, damage);
		}
		else
		{
			damage = round(calcDamGen(user, target, 0, 0, user.pAtkEff));
		
			attackModifiers();
		
			doDamage(target, damage);
			
			if(getItemDat(user.eq[0], 23) == 3)
			{
				if(!statContest(user, target, user.wis, target.wis, 0, 0)) applyStatus(target, 32, user.wis);
			}
		}
	}

	return damage;


}
