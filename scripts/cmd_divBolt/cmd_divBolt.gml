function cmd_divBolt(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = findTarget(2, user, user.atkRange);

	global.anim = 15;
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
		if(!calcHit(user, target, user.hitEff, target.evaEff))
		{
			damage = 0;
			doDamage(target, damage);
		}
		else
		{
			if(!statContest(user, target, user.mAtkEff, target.aResEff, 10, 0)) applyStatus(target, 21, 1);
			damage = calcDamM(user, target, 5, 0, 3200);
			doDamage(target, damage);
		}
	}

	return damage;


}
