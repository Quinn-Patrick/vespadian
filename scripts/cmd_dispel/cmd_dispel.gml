function cmd_dispel(argument0) {
	user = argument0;


	target = -1;
	damage = -1;
	target = findTarget(2, user, user.atkRange);
	
	


	global.anim = 41;
	global.animTimeMax = 60;
	global.animTime = 60;

	if(target = -2)
	{
		//global.turnPhase = 0;
		return -2;
	}


	if(target != -1)
	{
		sendMessage(target.name, "Positive status eliminated!");
		for(i = 1; i < 14; i++){
			if(target.conds[i] > 0) target.conds[i] = 0;
		}
		target.conds[20] = 0;
		if(target.conds[22] < 0)target.conds[22] = 0;
		target.conds[36] = 0;
		target.conds[37] = 0;
		target.conds[39] = 0;
		return 0;
		
	}

	return damage;


}
