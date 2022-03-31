function cmd_roots(argument0) {
	user = argument0;


	target = -1;
	damage = -1;



	global.anim = 24;
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
				doDamage(target, calcDamF(user, target, 0, 0));
		
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
				doDamage(target, calcDamF(user, target, 0, 0));
		
			}	
		}
	}

	return damage;


}
