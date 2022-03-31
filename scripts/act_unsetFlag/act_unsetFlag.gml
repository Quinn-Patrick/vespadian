function act_unsetFlag(argument0) {
	flag = argument0;
	global.events[flag] = false;
	return true;


}
