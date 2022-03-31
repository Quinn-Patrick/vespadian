function act_setDir(argument0, argument1) {
	actId = argument0;
	dirSet = argument1;

	actors[| actId].dir = dirSet;
	return true;


}
