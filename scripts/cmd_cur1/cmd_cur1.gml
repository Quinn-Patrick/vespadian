function cmd_cur1(argument0, argument1) {
	user = argument0;
	powerLevel = argument1;

	target = -1;
	damage = -1;
	target = findTarget(3, user, user.atkRange);

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
		damage = calcHeal(user, target, 6, 0, powerLevel);
		doDamage(target, damage);
	}

	return damage;


}
