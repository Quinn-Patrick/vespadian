function cmd_earthTremor(user, upperBound, lowerBound, anim) {
	

	target = -1;
	damage = -1;

	if(anim == 0){
		global.anim = 67;
		global.animTimeMax = 30;
		global.animTime = 30;
	}else if(anim == 1){
		global.anim = 58;
		global.animTimeMax = 90;
		global.animTime = 90;
	}

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
				target.shake = 20;
				if(target.conds[33] > 0) damage *= 2;
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
				target.shake = 20;
				if(target.conds[33] > 0) damage *= 2;
				doDamage(target, irandom_range(lowerBound, upperBound));
			}
	
		}
	}

	return damage;


}
