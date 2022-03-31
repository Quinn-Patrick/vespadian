function cmd_raiseTheDead(argument0, argument1) {
	user = argument0;
	hitPointsBack = argument1;
	target = -1;
	damage = -1;

	global.anim = 2;
	global.animTimeMax = 30;
	global.animTime = 30;

	if(target = -2)
	{
		//global.turnPhase = 0;
		return -2;
	}

	if(user.friend){
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] != 0)
			{
				target = global.ally[| s];
				if(hitPointsBack == 2) amount = target.maxHp*0.1;
				if(hitPointsBack == 3) amount = target.maxHp*0.25;
				if(hitPointsBack == 4) amount = target.maxHp*0.5;
				if(hitPointsBack == 5) amount = target.maxHp*0.75;
				if(hitPointsBack > 5) amount = target.maxHp;
				round(amount);
				target.conds[0]=0;
				damage = amount*-1;
				
				doDamage(target, damage);
			}
	
		}
	}else{
		for(s = 0; s < ds_list_size(global.enemy); s++)
		{
			if(global.enemy[| s].conds[0] != 0)
			{
				target = global.enemy[| s];
				if(hitPointsBack == 2) amount = target.maxHp*0.1;
				if(hitPointsBack == 3) amount = target.maxHp*0.25;
				if(hitPointsBack == 4) amount = target.maxHp*0.5;
				if(hitPointsBack == 5) amount = target.maxHp*0.75;
				if(hitPointsBack > 5) amount = target.maxHp;
				round(amount);
				target.conds[0]=0;
				amount = target.maxHp*0.75;
				damage = amount*-1;
				
				doDamage(target, damage);
			}
	
		}
	}

	return damage;


}
