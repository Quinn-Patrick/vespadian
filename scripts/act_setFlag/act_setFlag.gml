function act_setFlag(argument0) {
	flag = argument0;
	global.events[flag] = true;
	return true;
}
