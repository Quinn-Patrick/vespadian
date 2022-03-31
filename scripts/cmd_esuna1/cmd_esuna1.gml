function cmd_esuna1(user) {




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
		inspiration(user, target);
		damage = 0;
		applyStatus(target, 16, 0);
		applyStatus(target, 21, 0);
		applyStatus(target, 32, 0);
		if(target.conds[22] > 0)applyStatus(target, 22, 0);
	}

	return damage;


}
