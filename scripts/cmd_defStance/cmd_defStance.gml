function cmd_defStance(argument0) {
	curUser = argument0;
	target = curUser;
	global.storeTargetX = curUser.x;
	global.storeTargetY = curUser.y;
	global.anim = 29;
	
	global.animTimeMax = 30;
	global.animTime = 30;
	global.PorEgrid = curUser.friend;
	applyStatus(target, 34, 1);


}
