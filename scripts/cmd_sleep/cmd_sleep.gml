function cmd_sleep(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	if(user.player){
		if(global.targStore == -1)target = findTarget(2, user, user.atkRange);
		else target = global.targStore;
	}
	else{
		global.PorEgrid = 1;
		nonSleepers = ds_list_create();
		for(l = 0; l < global.turnSize; l++){
			if(global.turns[l,0].friend && global.turns[l,0].conds[32] == 0){
				ds_list_add(nonSleepers, global.turns[l,0]);
			}
		}
	
		if(ds_list_size(nonSleepers) > 0){
			target = nonSleepers[| irandom_range(0,ds_list_size(nonSleepers)-1)];
			global.storeTargetX = target.x;
			global.storeTargetY = target.y
		}
		else target = global.turns[0,0];
	
		for(l = 0; l < 4; l++){
			for(m = 0; m < 4; m++){
				if(global.pGrid[l,m] == target){
					global.gridSelect[0]= l;
					global.gridSelect[1] = m;
				}
			}
		}
	
		ds_list_destroy(nonSleepers);
	}


	global.anim = 25;
	global.animTimeMax = 90;
	global.animTime = 90;

	if(target = -2)
	{
		//global.turnPhase = 0;
		global.anim = -1;
		return -2;
	}



	if(target != -1)
	{
	
		damage = 0;
	
	
		if(!statContest(user, target, user.mAtk, target.wis, 5, 0))  applyStatus(target, 32, user.wis);
		
		if(global.multicast > 0){
			ds_stack_push(global.actionBuffer, global.currentPower);
			global.targStore = target;
			global.multicast--;
			global.freeCast = true;
		}
		
	
	}

	return damage;


}
