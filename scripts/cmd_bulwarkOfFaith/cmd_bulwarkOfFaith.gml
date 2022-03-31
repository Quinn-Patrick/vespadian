function cmd_bulwarkOfFaith(argument0) {
	user = argument0;

	target = -1;
	damage = -1;

	global.anim = 59;
	global.animTimeMax = 60;
	global.animTime = 60;

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
			target.conds[36] = 5;
		}
	
	}

	return damage;


}
