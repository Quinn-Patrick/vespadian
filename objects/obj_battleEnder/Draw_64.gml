if(inTransition){
	global.control = false;
	if(transitionTimer > transitionTimerLimit){
		inTransition = false;
		global.control = true;
	}
	transitionTimer++;
	draw_rectangle_color(0,0,1024, (768*(transitionTimer/transitionTimerLimit)), c_black, c_black, c_black, c_black, false);
}else{
	for(v = 0; v < ds_list_size(global.ally); v++)
	{
		pStatUpdate(global.ally[| v].num, global.ally[| v]);
	}
	global.turnPhase = 0;
	global.selLevel = 0;
	global.gridSelect[1] = 0;
	global.gridSelect[0] = 0;
	global.PorEgrid = 0;
	global.temp = 1;
	global.precip = 0;
	global.field = 0;
	global.runnable = true;
	global.anim = 0;
	global.animTimeMax = 0;
	global.animTime = 60;
	global.actSelection = 0;

	ds_list_destroy(global.ally);
	ds_list_destroy(global.enemy);
	ds_list_destroy(global.order);
	ds_list_destroy(global.powers);
	ds_list_destroy(global.powerN);
	ds_list_destroy(global.loot);
	ds_list_destroy(global.damageTokenStorage);
	ds_stack_destroy(global.actionBuffer);
	ds_list_destroy(global.playerTargets);
	
	room_goto(rm_gainXp);
}