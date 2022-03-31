function cmd_dig(argument0) {
	curUser = argument0;
	target = findTarget(1, curUser, curUser.atkRange);
	global.anim = 32;
	global.animTimeMax = 60;
	global.animTime = 60;

	applyStatus(target, 33, 2);


}
