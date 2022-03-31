function battleInit() {
	global.musicCategory = 1;
	
	//create party
	global.ally = ds_list_create();
	global.enemy = ds_list_create();
	global.order = ds_list_create();
	global.powers = ds_list_create();
	global.powerN = ds_list_create();
	global.loot = ds_list_create();
	
	//global.enterGuard = 2;

	global.turnCount = 0 ;
	global.lootAttempts = 1;
	global.selLevel = 0;
	global.scrollLevel = 0;
	global.maxScroll = 0;
	global.gridSelect[1] = 0;
	global.gridSelect[0] = 0;
	global.PorEgrid = 0;
	global.multicast = 0;

	global.anim = 0;
	global.animTimeMax = 0;
	global.animTime = 0;
	global.freeCast = false;
	
	global.targetToken = undefined;



	for(i = 3; i > -1; i--)
	{
		for(j = 3; j > -1; j--)
		{
			global.pGrid[i,j] = -1;
		}
	}
	for(i = 3; i > -1; i--)
	{
		for(j = 3; j > -1; j--)
		{
			global.eGrid[i,j] = -1;
		}
	}

	total = 0;

	shieldWallOn = false;

	for(m=0; m < 4; m++)
	{
		if(!is_undefined(global.party[m]) >= 0)
		{
			charCreate(global.party[m], global.party[m].formPositionX, global.party[m].formPositionY, true);
			if(getItemDat(global.ally[| total].eq[1], 20) == 32) shieldWallOn = checkAbBatt(global.ally[| total], 7);
			global.turns[total,0] = global.ally[| total];
			global.turns[total,1] = global.ally[| total].init;
			total++;
		}
	}

	if(shieldWallOn){
		for(i = 0; i < ds_list_size(global.ally); i++){
			global.ally[| i].conds[2] += 2;
		}
	}

	shieldWallOn = false;


	//create enemy troupe
	i = 0;
	while(global.troupe[i,0] >= 0)
	{
		charCreate(global.troupe[i,0], global.troupe[i,1], global.troupe[i,2], false);
		global.turns[total,0] = global.enemy[| i];
		hello = global.enemy[| i];
		global.turns[total,1] = global.enemy[| i].init;
		i++;
		total++;
	}

	global.turnSize = total;

	for(i=0; i<global.lookAhead; i++)
	{
		ds_list_add(global.order, turnSort());
	}

	global.top = global.order[| 0];
	global.multicast = checkAbBatt(global.top, 216);
	if(global.top.player)
	{
		ds_list_copy(global.powers, global.top.num.powers);
		
		ds_list_clear(global.powerN);
		for(w = 0; w < ds_list_size(global.powers); w++)
		{
			ds_list_add(global.powerN, powerName(global.powers[| w]));
		}
	}
	else
	{
		ds_list_copy(global.powers, global.top.powers);
		ds_list_clear(global.powerN);
		for(w = 0; w < ds_list_size(global.powers); w++)
		{
			ds_list_add(global.powerN, powerName(global.powers[| w]));
		}
	}
}
