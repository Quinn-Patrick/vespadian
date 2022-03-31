function cmd_bombardment(argument0) {
	user = argument0;

	target = -1;
	damage = -1;
	target = findTarget(0, user, 7);

	damType = 3;


	global.anim = 8;
	global.animTimeMax = 15;
	global.animTime = 15;



	if(target = -2)
	{
		if(user.player)
		{
			global.turnPhase = 0;
			global.selLevel = 0;
		}
		global.anim = -1;
		return -2;
	}

	multiTargets = ds_list_create();

	if(target != -1)
	{
		for(i = 0; i < 3 + floor(user.agi/20); i++){
			ds_list_add(multiTargets, global.ally[| irandom_range(0, ds_list_size(global.ally)-1)]);
		}
	
		global.targStore = target;
		if(false)
		{
			damage = 0;
			doDamage(target, damage);
		}
		else
		{
			if(getItemDat(user.eq[1], 0) == 2)
			{
				ds_stack_push(global.actionBuffer, 1000);
				global.atkPowMod = -1*getItemDat(user.eq[1], 4)
			}
			damage = calcDamM(user, target, 1, 0, 0);
		
			if(calcCrit(user, target, user.hitEff, target.evaEff)) 
			{
				if(checkAbBatt(user, 430))damage *= 2;
				else damage *= 1.5;
			}
		
			doDamage(target, damage);
		
			
			for(i = 0; i < ds_list_size(multiTargets); i++){
				damage = calcDamM(user, multiTargets[| i], 1, 0, 800);
				damage /= 2;
				damage = round(damage);
				if(calcCrit(user, multiTargets[| i], user.hitEff, target.evaEff)) 
				{
					if(checkAbBatt(user, 430))damage *= 2;
					else damage *= 1.5;
				}
		
				doDamage(multiTargets[| i], damage);
			}
		}
	}
	ds_list_destroy(multiTargets);
	return damage;


}
