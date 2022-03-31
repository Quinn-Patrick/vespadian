function cmd_lif1(argument0, argument1) {
	user = argument0;
	hitPointsBack = argument1;

	amount = 1;

	target = -1;
	damage = -1;
	target = findTarget(4, user, user.atkRange);

	global.anim = 11;
	global.animTimeMax = 60;
	global.animTime = 60;

	if(target = -2)
	{
		//global.turnPhase = 0;
		global.anim = -1;
		return -2;
	}



	if(target != -1)
	{
		inspiration(user, target);
		if(hitPointsBack == 1) amount = 1;
		else if(hitPointsBack == 2) amount = target.maxHp*0.1;
		else if(hitPointsBack == 3) amount = target.maxHp*0.25;
		else if(hitPointsBack == 4) amount = target.maxHp*0.5;
		else if(hitPointsBack == 5) amount = target.maxHp*0.75;
		else if(hitPointsBack > 5) amount = target.maxHp;
		round(amount);
		target.conds[0]=0;
		damage = amount*-1;
		doDamage(target, damage);
		return 1;
	
	}

	return damage;


}
