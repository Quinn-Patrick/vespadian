function cmd_sap0(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = global.targStore;
	global.storeTargetX = target.x;
	global.storeTargetY = target.y;
	
	global.anim = 9;
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
			damage = calcDamM(user, target, 7, 0, 500);
			doDamage(target, damage);
			user.curMp += round(damage*0.1)+1;
			if(user.curMp > user.maxMp)
			{
				user.curMp = user.maxMp;
			}
		}
	}

	return damage;


}
