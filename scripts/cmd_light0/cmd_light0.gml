function cmd_light0(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = global.targStore;
	global.storeTargetX = target.x;
	global.storeTargetY = target.y;
	
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
			//doDamage(user, round(damage*-1));
		}
		else
		{
			damage = calcDamM(user, target, 5, 0, 1000);
			doDamage(target, damage);
			if(!statContest(user, target, user.mAtkEff, target.aResEff, 0, 0)) applyStatus(target, 21, 1);
		}
	}

	return damage;


}
