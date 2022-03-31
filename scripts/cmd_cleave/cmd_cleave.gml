function cmd_cleave(argument0) {
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

	cleaveTargets = ds_list_create();

	if(target != -1)
	{
		cleaveColumn = target.col;
	
		if(!target.friend){
			for(i = 0; i < 4; i++){
				if(global.eGrid[cleaveColumn, i] != -1 && global.eGrid[cleaveColumn, i] != target && global.eGrid[cleaveColumn, i].conds[0] == 0){
					ds_list_add(cleaveTargets, global.eGrid[cleaveColumn, i]);
				}
			}
		}
	
		global.targStore = target;
		if(!calcHit(user, target, user.hitEff, target.evaEff))
		{
			damage = 0;
			doDamage(target, damage);
		}
		else
		{
			

			damage = calcDamF(user, target, 0, 0);
		
			attackModifiers();
		
			doDamage(target, damage);
			
			if(getItemDat(user.eq[0], 23) == 3)
			{
				if(!statContest(user, target, user.wis, target.wis, 0, 0)) applyStatus(target, 32, user.wis);
			}
		
			
			for(i = 0; i < ds_list_size(cleaveTargets); i++){
				damage = calcDamF(user, cleaveTargets[| i], 0, 0);
				if(calcCrit(user, cleaveTargets[| i], user.hitEff, target.evaEff)) 
				{
					if(checkAbBatt(user, 430))damage *= 2;
					else damage *= 1.5;
				}
		
				doDamage(cleaveTargets[| i], round(damage/4));
				
				
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
	ds_list_destroy(cleaveTargets);
	return damage;


}
