function cmd_poison0(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = global.targStore;
	global.storeTargetX = target.x;
	global.storeTargetY = target.y;
	global.anim = 14;
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
			if(!statContest(user, target, user.int, target.pResEff, 10, 0)){
				applyStatus(target, 16, 0.05);
				damage = 0;
			}
			damage = calcDamM(user, target, 2, 0, 800);
			doDamage(target, damage);
		}
	}

	return damage;


}
