function cmd_batCondFix(argument0, argument1) {
	condId = argument0;
	user = argument1;

	target = -1;
	damage = -1;
	target = findTarget(3, user, user.atkRange);

	global.anim = 11;
	global.animTimeMax = 60;
	global.animTime = 60;

	if(target == -2)
	{
		//global.turnPhase = 0;
		global.anim = -1;
		return -2;
	}
	if(target != -1)
	{
		global.animTime = 60;

		target.conds[condId]=0;
		damage = 1;
	}

	return damage;


}
