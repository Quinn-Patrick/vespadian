function cmd_batLife(argument0, argument1) {
	hitPointsBack = argument0;
	user = argument1;

	if(checkAbBatt(user,303)) user.conds[23] = 0.1;
	if(checkAbBatt(user, 302)) hitPointsBack += 1;

	round(hitPointsBack);
	if(hitPointsBack == 1) amount = 1;

	target = -1;
	damage = 1;
	target = findTarget(4, user, user.atkRange);

	global.anim = 2;
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
		if(target.conds[40] == 0){
			if(hitPointsBack == 2) amount = target.maxHp*0.1;
			if(hitPointsBack == 3) amount = target.maxHp*0.25;
			if(hitPointsBack == 4) amount = target.maxHp*0.5;
			if(hitPointsBack == 5) amount = target.maxHp*0.75;
			if(hitPointsBack > 5) amount = target.maxHp;
			round(amount);
			target.conds[0]=0;
			damage = amount*-1;
			doDamage(target, damage);
			for(o=0; o<global.turnSize-1; o++)
			{
				if(global.turns[o,0] == target){
					global.turns[o,1] = target.wait;
				}
			}
		}
	}

	return damage*-1;


}
