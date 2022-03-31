function cmd_immolate(argument0) {
	user = argument0;


	target = -1;
	damage = -1;



	global.anim = 52;
	global.animTimeMax = 120;
	global.animTime = 120;

	if(target = -2)
	{
		//global.turnPhase = 0;
		return -2;
	}


	if(user.friend){
		global.PorEgrid = 0;
		for(s = 0; s < ds_list_size(global.enemy); s++)
		{
			if(global.enemy[| s].conds[0] == 0)
			{
				target = global.enemy[| s];
				damage = calcDamM(user, target, 1, 0, 6500)
				doDamage(target, damage);
				if(damage > 2 && !statContest(user, target, user.mAtkEff, target.hResEff, 0, 0)){
					deltaStatus(target, 43, damage);
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
				damage = calcDamM(user, target, 1, 0, 6500)
				doDamage(target, damage);
				if(damage > 2 && !statContest(user, target, user.mAtkEff, target.hResEff, 0, 0)){
					deltaStatus(target, 43, damage);
				}
		
			}	
		}
	}

	return damage;


}
