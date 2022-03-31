function cmd_hide(argument0) {
	curUser = argument0;
	target = curUser;
	global.storeTargetX = curUser.x;
	global.storeTargetY = curUser.y;
	global.anim = 29;
	global.animTimeMax = 30;
	global.animTime = 30;
	global.PorEgrid = curUser.friend;
	
	if(canHide(curUser))applyStatus(target, 20, 1);
	else sendMessage(curUser.name, "Cannot hide!");


}
