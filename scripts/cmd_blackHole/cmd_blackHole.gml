function cmd_blackHole(argument0) {
	user = argument0;


	target = -1;
	damage = -1;
	
	sendMessage(user.name, "Stat changes eliminated!");


	global.anim = 2;
	global.animTimeMax = 60;
	global.animTime = 60;

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
				for(l = 0; l < 14; l++){
					target.conds[l] = 0;
				}
				target.conds[20] = 0;
				if(target.conds[22] < 0)target.conds[22] = 0;
				target.conds[36] = 0;
				target.conds[37] = 0;
				target.conds[39] = 0;
		
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
				for(l = 0; l < 14; l++){
					target.conds[l] = 0;
				}
				target.conds[20] = 0;
				if(target.conds[22] < 0)target.conds[22] = 0;
				target.conds[36] = 0;
				target.conds[37] = 0;
				target.conds[39] = 0;
		
			}	
		}
	}

	return damage;


}
