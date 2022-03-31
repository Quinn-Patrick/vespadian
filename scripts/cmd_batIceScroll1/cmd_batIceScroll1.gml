function cmd_batIceScroll1(argument0) {
	user = argument0;


	target = -1;
	damage = -1;



	global.anim = 66;
	global.animTimeMax = 90;
	global.animTime = 90;

	if(target = -2)
	{
		//global.turnPhase = 0;
		return -2;
	}


	if(user.friend){
		for(s = 0; s < ds_list_size(global.enemy); s++)
		{
			if(global.enemy[| s].conds[0] == 0)
			{
				target = global.enemy[| s];
				damage = calcDamMFixedPower(user, target, 2, 0, 4500, 50);
				doDamage(target, damage);
				if(damage > 1){
					if(!statContest(user, target, user.mAtkEff, target.wis, 0, 10)){
						deltaStatus(target, 1, -2);
					}
				}
		
			}
	
		}
		
	}
	else{
		global.PorEgrid = 1;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] == 0)
			{
				target = global.ally[| s];
				damage = calcDamMFixedPower(user, target, 2, 0, 4500, 50);
				doDamage(target, damage);
				if(damage > 1){
					if(!statContest(user, target, user.mAtkEff, target.wis, 0, 10)){
						deltaStatus(target, 1, -2);
					}
				}
		
			}	
		}
	}

	return damage;


}
