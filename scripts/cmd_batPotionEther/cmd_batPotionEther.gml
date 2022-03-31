function cmd_batPotionEther(argument0, argument1, argument2) {
	amount1 = argument0;
	amount2 = argument1;
	user = argument2;

	if(checkAbBatt(user,303)) user.conds[23] = 0.1;
	if(checkAbBatt(user, 302)){
		amount1 *= 1.5;
		amount2 *= 1.5;
	}

	amount1 = round(amount1);
	amount2 = round(amount2);

	target = -1;
	damage = 1;
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

	global.animTime = 60;

	if(target != -1)
	{
		damage = amount1*-1;
		doDamage(target, damage);
		target.curMp += amount2;
		if(target.curMp > target.maxMp)
		{
			target.curMp = target.maxMp;
		}
	}

	return damage*-1;


}
