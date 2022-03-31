function cmd_poison(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	if(global.targStore == -1)target = findTarget(2, user, user.atkRange);
	else target = global.targStore;

	global.anim = 14;
	global.animTimeMax = 30;
	global.animTime = 30;

	if(target = -2)
	{
		//global.turnPhase = 0;
		global.anim = -1;
		return -2;
	}



	if(target != -1)
	{
	
		if(!checkAbBatt(target, 103))
		{
			damage = calcDamM(user, target, 4, 0, 2400);
			doDamage(target, damage);
			if(damage > 2){
				if(!statContest(user, target, user.int, target.pResEff, 10, 0)){
					applyStatus(target, 16, 0.05);
					damage = 0;
				}
			}
			
		
			
		}	
		if(global.multicast > 0){
			ds_stack_push(global.actionBuffer, global.currentPower);
			global.targStore = target;
			global.multicast--;
			global.freeCast = true;
		}
	}

	return damage;


}
