function cmd_prayer(argument0) {
	user = argument0;

	outcome = random_range(0,100);
	if(checkAbBatt(user, 101)) outcome += 25;
	if(outcome > 124){
		global.anim = 2;
		global.animTimeMax = 30;
		global.animTime = 30;
		ds_list_add(global.loot, 904);
		return 1;
	}
	else if(outcome > 25 && outcome <= 50){
		messages[0] = 0;
		messages = loadMisc(2, 5, 5);
		msg = messages[0];
		return 0;
	}
	else if(outcome <= 25 && outcome > 15){
		global.anim = 2;
		global.animTimeMax = 30;
		global.animTime = 30;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] == 0)
			{
				target = global.ally[| s];
				doDamage(target, calcDamM(user, target, 5, 0, 100));
			
			}
		}
		return 1;
	}
	else if(outcome <= 15 && outcome > 5){
		global.anim = 2;
		global.animTimeMax = 30;
		global.animTime = 30;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] == 0)
			{
				target = global.ally[| s];
				if(!statContest(user, target, user.mAtkEff, target.aResEff, 0, 0)) applyStatus(target, 21, 1);
			}
		}
		return 1;
	}
	else if(outcome <= 5){
		global.anim = 2;
		global.animTimeMax = 30;
		global.animTime = 30;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] == 0)
			{
				target = global.ally[| s];
				if(!statContest(user, target, user.wis, target.wis, 0, 0)) applyStatus(target, 19, 50);
			}
		}
		return 1;
	}
	else if(outcome <= 60 && outcome > 50){
		global.anim = 2;
		global.animTimeMax = 30;
		global.animTime = 30;
		for(s = 0; s < ds_list_size(global.enemy); s++)
		{
			if(global.enemy[| s].conds[0] == 0)
			{
				target = global.enemy[| s];
				doDamage(target, calcDamM(user, target, 5, 0, 1000));
			}
		}
		return 1;
	}
	else if(outcome <= 70 && outcome > 60){
		global.anim = 2;
		global.animTimeMax = 30;
		global.animTime = 30;
		for(s = 0; s < ds_list_size(global.enemy); s++)
		{
			if(global.enemy[| s].conds[0] == 0)
			{
				target = global.enemy[| s];
				if(!statContest(user, target, user.mAtkEff, target.aResEff, 0, 0)) applyStatus(target, 21, 1);
			}
		}
		return 1;
	}
	else if(outcome <= 80 && outcome > 70){
		global.anim = 2;
		global.animTimeMax = 30;
		global.animTime = 30;
		for(s = 0; s < ds_list_size(global.enemy); s++)
		{
			if(global.enemy[| s].conds[0] == 0)
			{
				target = global.enemy[| s];
				if(!statContest(user, target, user.wis, target.wis, 0, 0)) applyStatus(target, 19, 1);
			}
		}
		return 1;
	}
	else if(outcome <= 90 && outcome > 80){
		global.anim = 12;
		global.animTimeMax = 60;
		global.animTime = 60;
		target = user;
		global.storeTargetX = target.x;
		global.storeTargetY = target.y;
		target.curMp += 50;
		if(target.curMp > target.maxMp)
		{
			target.curMp = target.maxMp;
		}
		return 1;
	}
	else if(outcome <= 100 && outcome > 90){
		global.anim = 11;
		global.animTimeMax = 60;
		global.animTime = 60;
		target = global.ally[| irandom_range(0, ds_list_size(global.ally)-1)];
		global.storeTargetX = target.x;
		global.storeTargetY = target.y;
		if(target.conds[0] == 1){
			target.conds[0] = 0;
			target.curHp = round(target.maxHp/2);
		}
		else doDamage(target, -200);
		return 1;
	}
	else if(outcome <= 110 && outcome > 100){
		global.anim = 2;
		global.animTimeMax = 30;
		global.animTime = 30;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] == 0)
			{
				target = global.ally[| s];
				damage = calcHeal(user, target, 6, 0, 6);
				doDamage(target, damage);
			}
	
		}
		return 1;
	}
	else if(outcome <= 120 && outcome > 110){
		global.anim = 13;
		global.animTimeMax = 30;
		global.animTime = 30;
		target = global.enemy[| irandom_range(0, ds_list_size(global.enemy)-1)];
		global.storeTargetX = target.x;
		global.storeTargetY = target.y;
		if(!checkAbBatt(target, 103))
		{
			target.conds[0] = 1;
		}
		return 1;
	}
	else if(outcome <= 124 && outcome > 120){
		global.anim = 2;
		global.animTimeMax = 30;
		global.animTime = 30;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] == 0)
			{
				target = global.ally[| s];
				target.curHp = target.maxHp;
				target.curMp = target.maxMp;
			}
	
		}
		return 1;
	}



}
