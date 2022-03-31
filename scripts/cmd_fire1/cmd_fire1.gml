function cmd_fire1(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	if(global.targStore == -1)target = findTarget(2, user, user.atkRange);
	else target = global.targStore;

	global.anim = 8;
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
		damage = calcDamM(user, target, 1, 0, 3000);
		doDamage(target, damage);
		if(global.multicast > 0){
			ds_stack_push(global.actionBuffer, global.currentPower);
			global.targStore = target;
			global.multicast--;
			global.freeCast = true;
		}
	}

	return damage;


}
