function cmd_radiantBurst(argument0, argument1) {
	user = argument0;
	powerLevel = argument1;

	target = -1;
	damage = -1;

	switch(powerLevel){
		case 0: attackPwr = 1000;
		global.anim = 28;
		global.animTimeMax = 60;
		global.animTime = 60;
		break;
		case 1: attackPwr = 3500;
		global.anim = 61;
		global.animTimeMax = 120;
		global.animTime = 120;
		break;
		case 2: attackPwr = 8500;
		global.anim = 60;
		global.animTimeMax = 240;
		global.animTime = 240;
		break;
	}

	

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
				doDamage(target, calcDamM(user, target, 5, 0, attackPwr));
				if(!statContest(user, target, user.mAtkEff, target.aResEff, 0, 0)) applyStatus(target, 21, 1);
			}
	
		}
	}else{
		global.PorEgrid = 1;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] == 0)
			{
				target = global.ally[| s];
				doDamage(target, calcDamM(user, target, 5, 0, attackPwr));
				if(!statContest(user, target, user.mAtkEff, target.aResEff, 0, 0)) applyStatus(target, 21, 1);
			}
	
		}
	}

	return damage;


}
