function cmd_ice1(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	if(global.targStore == -1)target = findTarget(2, user, user.atkRange);
	else target = global.targStore;

	global.anim = 5;
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
		damage = calcDamM(user, target, 2, 0, 3000);
		doDamage(target, damage);
		if(damage > 1){
			if(!statContest(user, target, user.mAtkEff, target.wis, 0, 10)){
				deltaStatus(target, 1, -2);
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
