function cmd_gravity(argument0) {
	user = argument0;
	//powerLevel = argument1;

	target = -1;
	damage = -1;


	global.anim = 30;
	global.animTimeMax = 60;
	global.animTime = 60;

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
				doDamage(target, round(target.curHp/2));
				//if(!statContest(user, target, user.mAtkEff, target.aResEff, 0, 0)) applyStatus(target, 21, 1);
			}
	
		}
	}else{
		global.PorEgrid = 1;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] == 0)
			{
				target = global.ally[| s];
				doDamage(target, round(target.curHp/2));
				//if(!statContest(user, target, user.mAtkEff, target.aResEff, 0, 0)) applyStatus(target, 21, 1);
			}
	
		}
	}

	return damage;


}
