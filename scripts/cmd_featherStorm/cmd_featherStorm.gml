function cmd_featherStorm(argument0) {
	user = argument0;


	target = -1;
	damage = -1;



	global.anim = 47;
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
				if(!statContest(user, target, user.wis, target.wis, 0, 0)){
					deltaStatus(target, 1, -15);
					deltaStatus(target, 2, -15);
				}
			}	
		}
	}
	else{
		global.PorEgrid = 1;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] == 0 && global.ally[| s].conds[32] == 0)
			{
				target = global.ally[| s];
				if(!statContest(user, target, user.wis, target.wis, 0, 0)){
					deltaStatus(target, 1, -15);
					deltaStatus(target, 2, -15);	
				}
			}	
		}
	}

	return damage;


}
