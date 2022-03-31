function cmd_massParalysis(argument0) {
	user = argument0;


	target = -1;
	damage = -1;



	global.anim = 34;
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
			if(global.enemy[| s].conds[0] == 0 && global.enemy[| s].conds[32] == 0)
			{
				target = global.enemy[| s];
				if(!statContest(user, target, user.mAtkEff, target.wis, 0, 0)) applyStatus(target, 17, user.mAtkEff);	
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
			if(global.ally[| s].conds[0] == 0 && global.ally[| s].conds[32] == 0)
			{
				target = global.ally[| s];
				if(!statContest(user, target, user.mAtkEff, target.wis, 0, 0)) applyStatus(target, 17, user.mAtkEff);	
			}	
		}
	}

	return damage;


}
