function cmd_empMight(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = findTarget(3, user, user.atkRange);

	global.anim = 2;
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
		inspiration(user, target);
		deltaStatus(target, 1, 2);
		damage = 0;
	}

	return damage;


}
