function cmd_toxicCloud(argument0) {
	user = argument0;


	target = -1;
	damage = -1;



	global.anim = 38;
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
			target = global.enemy[| s];
			if(!checkAbBatt(target, 103) && target.conds[0] == 0)
			{
				if(!statContest(user, target, user.int, target.pResEff, 10, 0)){
					applyStatus(target, 16, 0.05);
					damage = 0;
				}
		
				damage = calcDamM(user, target, 4, 0, 4500);
				doDamage(target, damage);
			}	
	
		}
		if(global.multicast > 0){
			ds_stack_push(global.actionBuffer, global.currentPower);
			global.targStore = target;
			global.multicast--;
			global.freeCast = true;
		}
	}
	else{
		global.PorEgrid = 1;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			target = global.ally[| s];
			if(!checkAbBatt(target, 103) && target.conds[0] == 0)
			{
				if(!statContest(user, target, user.int, target.pResEff, 10, 0)){
					applyStatus(target, 16, 0.05);
					damage = 0;
				}
		
				damage = calcDamM(user, target, 4, 0, 4500);
				doDamage(target, damage);
			}	
		}
	}

	return damage;


}
