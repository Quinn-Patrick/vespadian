function cmd_massStun(argument0) {
	user = argument0;


	target = -1;
	damage = -1;



	global.anim = 26;
	global.animTimeMax = 120;
	global.animTime = 120;

	if(target = -2)
	{
		//global.turnPhase = 0;
		return -2;
	}


	if(user.friend){
		global.PorEgrid = 0;
		for(s = 0; s < ds_list_size(global.enemy); s++)
		{
			target = global.enemy[| s];
			if(!statContest(user, target, user.wis, target.wis, 0, 0)){
				applyStatus(target, 19, 1);
			}	
		}
	}
	else{
		global.PorEgrid = 1;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
		
			target = global.ally[| s];
			if(!statContest(user, target, user.wis, target.wis, 0, 0)){
				applyStatus(target, 19, 1);
			}	
		}
	}

	return damage;


}
