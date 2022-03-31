function cmd_xfight(user) {
	
	target = -1;
	damage = -1;
	
	global.storeTargetX = user.x;
	global.storeTargetY = user.y;
	global.anim = 29;
	global.animTimeMax = 30;
	global.animTime = 30;

	target = findTarget(0, user, user.atkRange);
	
	if(target == -2){
		global.anim = -1;
		return -2;
	}
	if(target != -1){
		global.targStore = target;
		ds_stack_push(global.actionBuffer, 0);
		ds_stack_push(global.actionBuffer, 0);
		damage = 0;
	}
	return damage;
}
