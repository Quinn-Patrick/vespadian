function act_worldMap(argument0, argument1, argument2) {
	global.worldx = argument0;
	global.worldy = argument1;
	global.control = true;
	global.event = -1;
	toWorldMap(global.worldx, global.worldy, argument2);


}
