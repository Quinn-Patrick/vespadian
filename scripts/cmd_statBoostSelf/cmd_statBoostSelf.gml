function cmd_statBoostSelf(argument0, argument1, argument2) {
	user = argument0;
	stat = argument1;
	powerLevel = argument2;

	target = -1;
	damage = -1;
	target = user

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
		deltaStatus(target, stat, powerLevel);
		damage = 0;
	}

	return damage;


}
