function cmd_absorb0(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = global.targStore;
	global.storeTargetX = target.x;
	global.storeTargetY = target.y;

	global.anim = 10;
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
			damage = calcDamM(user, target, 6, 0, 500);
			doDamage(target, damage);
			doDamage(user, round(damage*-1));
		}
	}

	return damage;


}