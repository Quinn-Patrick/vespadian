function cmd_sundance(argument0) {
	user = argument0;

	target = -1;
	damage = -1;

	global.anim = 2;
	global.animTimeMax = 30;
	global.animTime = 30;

	messages[0] = 0;
	messages = loadMisc(2, 3, 5);

	msg = messages[global.temp];

	global.precip = 0;


	return 1;


}
