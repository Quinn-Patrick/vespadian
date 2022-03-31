function cmd_savageBite(argument0) {
	user = argument0;

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
			if(!statContest(user, target, user.str, target.frt, 0, 0)){
				applyStatus(target, 42, 1);
			}
			
			damage = calcDamF(user, target, 0, 0);
			
			attackModifiers();
		
			doDamage(target, damage);
			
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
