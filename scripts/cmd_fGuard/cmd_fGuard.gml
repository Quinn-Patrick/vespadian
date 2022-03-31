function cmd_fGuard(argument0) {
	user = argument0;

	target = -1;
	damage = -1;

	global.anim = 2;
	global.animTimeMax = 30;
	global.animTime = 30;

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
			target.conds[2] += 1;
		}
	
	}

	return damage;


}
