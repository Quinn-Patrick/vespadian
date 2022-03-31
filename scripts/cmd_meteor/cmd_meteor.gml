function cmd_meteor(argument0) {
	user = argument0;

	target = -1;
	damage = -1;


	global.anim = 31;
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
				doDamage(target, calcDamM(user, target, 0, 0, 13000));
				//if(!statContest(user, target, user.mAtkEff, target.aResEff, 0, 0)) applyStatus(target, 21, 1);
			}
	
		}
		if(global.multicast > 0){
			ds_stack_push(global.actionBuffer, global.currentPower);
			global.targStore = target;
			global.multicast--;
			global.freeCast = true;
		}
	}else{
		global.PorEgrid = 1;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] == 0)
			{
				target = global.ally[| s];
				doDamage(target, calcDamM(user, target, 0, 0, 10000));
				//if(!statContest(user, target, user.mAtkEff, target.aResEff, 0, 0)) applyStatus(target, 21, 1);
			}
	
		}
	}

	return damage;


}
