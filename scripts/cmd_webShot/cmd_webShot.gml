function cmd_webShot(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = findTarget(2, user, user.atkRange);

	global.anim = 6;
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
		if(!statContest(user, target, user.dex, target.agi, 5, 0)) applyStatus(target, 22, 0.5);
	}

	return damage;


}
