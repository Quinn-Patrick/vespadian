function cmd_eyeBeam(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = findTarget(0, user, 8);

	damType = 9;



	global.anim = 50;
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
			if(!statContest(user, target, user.str, target.wis, 0, 0)){
				if(random(1) < 0.25){
					applyStatus(target, 38, user.wis);
				}else{
					applyStatus(target, 41, user.wis);
				}
			}
			
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
	}

	return damage;


}
