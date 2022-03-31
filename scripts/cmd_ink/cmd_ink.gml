function cmd_ink(argument0) {
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
		
		damage = calcDamM(user, target, 5, 0, 6000);
		if(!statContest(user, target, user.wis, target.wis, 10, 0))  applyStatus(target, 21, 1);
		doDamage(target, damage);
	
	}

	return damage;


}
