function cmd_restore1(argument0, argument1) {
	user = argument0;
	condition = argument1;



	target = -1;
	damage = -1;
	if(user.player) target = findTarget(3, user, user.atkRange);
	else{
		target = user;
		global.storeTargetX = user.x;
		global.storeTargetY = user.y;
	}

	global.anim = 11;
	global.animTimeMax = 60;
	global.animTime = 60;

	if(target = -2)
	{
		//global.turnPhase = 0;
		global.anim = -1;
		return -2;
	}



	if(target != -1)
	{
		damage = 0;
		 applyStatus(target, condition, 0);
	}

	return damage;


}
