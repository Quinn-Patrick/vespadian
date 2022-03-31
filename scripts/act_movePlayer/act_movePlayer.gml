function act_movePlayer(argument0, argument1) {
	xCoord = argument0;
	yCoord = argument1;

	global.ovx = xCoord;
	global.ovy = yCoord;

	obj_player.x = global.ovx*32;
	obj_player.y = global.ovy*32;

	return true;


}
