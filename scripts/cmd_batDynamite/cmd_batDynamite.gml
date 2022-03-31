function cmd_batDynamite(argument0) {
	user = argument0;


	target = -1;
	damage = -1;



	global.anim = 42;
	global.animTimeMax = 90;
	global.animTime = 90;

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
				doDamage(target, calcDamMFixedPower(user, target, 1, 0, 8000, 80));
		
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
			if(global.ally[| s].conds[0] == 0)
			{
				target = global.ally[| s];
				doDamage(target, calcDamMFixedPower(user, target, 1, 0, 8000, 80));
		
			}	
		}
		
	}

	return damage;


}
