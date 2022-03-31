function cmd_forceArrow(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = findTarget(2, user, user.atkRange);

	global.anim = 35;
	global.animTimeMax = 60;
	global.animTime = 60;

	if(target = -2)
	{
		//global.turnPhase = 0;
		global.anim = -1;
		return -2;
	}

	midpoint = 100-user.mAtkEff;
	
	randRoll = random_range(0.95,1.05);
	spellPow = 2000;

	if(target != -1)
	{
		if(!calcHit(user, target, user.hitEff, target.evaEff))
		{
			damage = 0;
			doDamage(target, damage);
		}
		else
		{
			diff = user.mAtkEff;
			damage = (spellPow/(1+exp(-0.04*(diff-midpoint))))*randRoll;
			doDamage(target, round(damage));
		}
	}

	return damage;


}
