function cmd_curWind(user, powerLevel, animation) {
	target = -1;
	damage = -1;
	
	if(animation == 0){
		global.anim = 63;
		global.animTimeMax = 120;
		global.animTime = 120;
	}
	else if(animation == 1){
		global.anim = 63;
		global.animTimeMax = 120;
		global.animTime = 120;
	}
	else if(animation == 2){
		global.anim = 65;
		global.animTimeMax = 180;
		global.animTime = 180;
	}

	if(target = -2)
	{
		//global.turnPhase = 0;
		return -2;
	}

	for(s = 0; s < ds_list_size(global.ally); s++)
	{
		if(global.ally[| s].conds[0] == 0)
		{
			
			target = global.ally[| s];
			inspiration(user, target);
			damage = calcHeal(user, target, 6, 0, powerLevel);
			doDamage(target, damage);
		}
	
	}

	return damage;


}
