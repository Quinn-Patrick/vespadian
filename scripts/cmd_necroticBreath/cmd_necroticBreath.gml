function cmd_necroticBreath(argument0) {
	user = argument0;


	target = -1;
	damage = -1;



	global.anim = 46;
	global.animTimeMax = 120;
	global.animTime = 120;

	if(target = -2)
	{
		//global.turnPhase = 0;
		return -2;
	}


	if(user.friend){
		for(s = 0; s < ds_list_size(global.enemy); s++)
		{
			if(global.enemy[| s].conds[0] == 0)
			{
				target = global.enemy[| s];
				damage = calcDamM(user, target, 6, 0, 3500)
				doDamage(target, damage);
				if(damage > 1){
					if(!statContest(user, target, user.frt, target.wis, 0, 0)){
							applyStatus(target, 41, 1);
					}
				}
		
			}
	
		}
	}
	else{
		global.PorEgrid = 1;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] == 0)
			{
				target = global.ally[| s];
				damage = calcDamM(user, target, 6, 0, 3500)
				doDamage(target, damage);
				if(damage > 1){
					if(!statContest(user, target, user.frt, target.wis, 0, 0)){
							applyStatus(target, 41, 1);
					}
				}
		
			}	
		}
	}

	return damage;


}
