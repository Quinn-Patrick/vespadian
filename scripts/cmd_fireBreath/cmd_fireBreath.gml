function cmd_fireBreath(argument0) {
	user = argument0;


	target = -1;
	damage = -1;



	global.anim = 51;
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
				damage = calcDamM(user, target, 3, 0, 6100)
				doDamage(target, damage);
				
		
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
				damage = calcDamM(user, target, 3, 0, 6100)
				doDamage(target, damage);
				
		
			}	
		}
	}

	return damage;


}