function cmd_batPotion(argument0, argument1) {
	amount = argument0;
	user = argument1;

	if(checkAbBatt(user,303)) user.conds[23] = 0.1;
	if(checkAbBatt(user, 302)) amount *= 1.5;

	round(amount);

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
		damage = amount*-1;
		doDamage(target, damage);
	}

	return damage*-1;


}
