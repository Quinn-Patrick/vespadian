function cmd_defMinus(argument0, argument1) {
	user = argument0;
	powerLevel = argument1;

	target = -1;
	damage = -1;
	target = findTarget(2, user, user.atkRange);

	global.anim = 9;
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
		if(target.conds[2] > -10)
			deltaStatus(target, 2, -powerLevel);
	}

	return damage;


}
