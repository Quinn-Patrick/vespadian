function cmd_slow(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	if(global.targStore == -1)target = findTarget(2, user, user.atkRange);
	else target = global.targStore;

	global.anim = 9;
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
	
		damage = 0;
		if(!statContest(user, target, user.mAtkEff, target.wis, 5, 0)) applyStatus(target, 22, 0.5);
		if(global.multicast > 0){
			ds_stack_push(global.actionBuffer, global.currentPower);
			global.targStore = target;
			global.multicast--;
			global.freeCast = true;
		}
	}

	return damage;


}
