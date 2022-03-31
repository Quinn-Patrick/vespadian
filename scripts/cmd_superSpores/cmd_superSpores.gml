function cmd_superSpores(argument0) {
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
		damage = 0;
		global.PorEgrid = 0;
		for(s = 0; s < ds_list_size(global.enemy); s++)
		{
			target = global.enemy[| s];
			randomCond = irandom_range(0,3);
			if(!statContest(user, target, user.wis, target.wis, 0, 0)) deltaStatus(target, 1, -10);
			if(!statContest(user, target, user.wis, target.wis, 0, 0)) deltaStatus(target, 2, -10);
			if(!statContest(user, target, user.wis, target.wis, 0, 0)) deltaStatus(target, 3, -10);
			if(!statContest(user, target, user.wis, target.wis, 0, 0)) deltaStatus(target, 4, -10);
			if(!statContest(user, target, user.wis, target.wis, 0, 0)) deltaStatus(target, 5, -10);
			if(!statContest(user, target, user.wis, target.wis, 0, 0)) deltaStatus(target, 6, -10);
			if(randomCond == 0){
				if(!statContest(user, target, user.wis, target.wis, 0, 0)) applyStatus(target, 19, 1);
			
			}
			else if(randomCond == 1){
				if(!statContest(user, target, user.wis, target.wis, 5, 0))  applyStatus(target, 32, user.wis);
			}
			else if(randomCond == 2){
				if(!statContest(user, target, user.wis, target.pResEff, 10, 0)) applyStatus(target, 16, 0.05);
			}
		}
	}
	else{
		damage = 0;
		global.PorEgrid = 1;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			target = global.ally[| s];
			randomCond = irandom_range(0,3);
			if(!statContest(user, target, user.wis, target.wis, 0, 0)) deltaStatus(target, 1, -10);
			if(!statContest(user, target, user.wis, target.wis, 0, 0)) deltaStatus(target, 2, -10);
			if(!statContest(user, target, user.wis, target.wis, 0, 0)) deltaStatus(target, 3, -10);
			if(!statContest(user, target, user.wis, target.wis, 0, 0)) deltaStatus(target, 4, -10);
			if(!statContest(user, target, user.wis, target.wis, 0, 0)) deltaStatus(target, 5, -10);
			if(!statContest(user, target, user.wis, target.wis, 0, 0)) deltaStatus(target, 6, -10);
			if(randomCond == 0){
				if(!statContest(user, target, user.wis, target.wis, 0, 0)) applyStatus(target, 19, 1);
			
			}
			else if(randomCond == 1){
				if(!statContest(user, target, user.wis, target.wis, 5, 0))  applyStatus(target, 32, user.wis);
			}
			else if(randomCond == 2){
				if(!statContest(user, target, user.wis, target.pResEff, 10, 0)) applyStatus(target, 16, 0.05);
			}
		
		}
	}

	return damage;


}
