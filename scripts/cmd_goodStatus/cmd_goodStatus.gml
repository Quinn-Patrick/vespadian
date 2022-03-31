function cmd_goodStatus(argument0, argument1, argument2) {
	user = argument0;
	stat = argument1;
	powerLevel = argument2;

	target = -1;
	damage = -1;
	
	prelimTarget = checkTargetToken();
	
	if(is_undefined(prelimTarget) || user.player){
		if(global.targStore == -1)target = findTarget(3, user, user.atkRange);
		else target = global.targStore;
	}else{
		target = prelimTarget;
	}

	
	
	if(stat == 36){
		global.anim = 36;
		global.animTimeMax = 60;
		global.animTime = 60;
	}else{
		global.anim = 29;
		global.animTimeMax = 30;
		global.animTime = 30;
	}

	if(target = -2)
	{
		//global.turnPhase = 0;
		global.anim = -1;
		return -2;
	}



	if(target != -1)
	{
		inspiration(user, target);
		applyStatus(target, stat, powerLevel);
		damage = 0;
		if(global.multicast > 0){
			ds_stack_push(global.actionBuffer, global.currentPower);
			global.targStore = target;
			global.multicast--;
			global.freeCast = true;
		}
	}

	return damage;


}
