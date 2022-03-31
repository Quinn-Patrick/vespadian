function cmd_coldMist(argument0) {
	user = argument0;


	target = -1;
	damage = -1;



	global.anim = 27;
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
				doDamage(target, calcDamM(user, target, 2, 0, 900));
		
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
				doDamage(target, calcDamM(user, target, 2, 0, 1000));
		
			}	
		}
	}

	messages[0] = 0;
	messages = loadMisc(2, 3, 5);


	if(global.temp > 0){
		global.temp--;
	}

	return damage;


}
