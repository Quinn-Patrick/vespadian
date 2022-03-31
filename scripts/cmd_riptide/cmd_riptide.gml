function cmd_riptide(argument0, argument1, argument2) {
	user = argument0;
	upperBound = argument1;
	lowerBound = argument2;

	target = -1;
	damage = -1;


	global.anim = 22;
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
				if(defender.conds[33] > 0) damage = 0;
				doDamage(target, irandom_range(lowerBound, upperBound));
			}
	
		}
		if(global.multicast > 0){
			ds_stack_push(global.actionBuffer, global.currentPower);
			global.targStore = target;
			global.multicast--;
			global.freeCast = true;
		}
	}else{
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] == 0)
			{
				target = global.ally[| s];
				if(target.conds[33] > 0) damage = 0;
				doDamage(target, irandom_range(lowerBound, upperBound));
			}
	
		}
	}



	return damage;


}
