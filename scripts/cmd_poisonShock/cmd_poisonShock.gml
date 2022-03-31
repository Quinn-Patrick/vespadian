function cmd_poisonShock(argument0) {
	user = argument0;


	target = -1;
	damage = -1;



	global.anim = 56;
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
				if(target.conds[16] > 0){
					damage = calcDamM(user, target, 4, 0, 20000);
				}
				else damage = calcDamM(user, target, 4, 0, 800);
				doDamage(target, damage);						
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
				if(target.conds[16] > 0){
					damage = calcDamM(user, target, 4, 0, 20000);
				}
				else damage = calcDamM(user, target, 4, 0, 800);
				doDamage(target, damage);		
			}	
		}
	}

	return damage;


}
