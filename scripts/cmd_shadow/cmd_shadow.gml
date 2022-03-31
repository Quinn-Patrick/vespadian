function cmd_shadow(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = findTarget(2, user, user.atkRange);

	global.anim = 7;
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
		if(!calcHit(user, target, user.hitEff, target.evaEff))
		{
			damage = 0;
			doDamage(target, damage);
		}
		else
		{
			damage = calcDamM(user, target, 5, 0, 5);
			if(!statContest(user, target, user.wis, target.wis, 5, 0))  applyStatus(target, 21, 1);
			doDamage(target, damage);
		}
	
	}

	return damage;


}
