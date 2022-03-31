function act_gotoRoom(argument0, argument1, argument2, argument3, argument4) {
	roomId = argument0;
	initX = argument1;
	initY = argument2;
	initLayer = argument3;
	global.postBattleEvent = round(argument4);





	global.control = true;
	obj_player.visible = true;
	global.event = -1;
	file_text_close(obj_evManager.evFile);

	for(i = 0; i < ds_list_size(actors); i++)
	{
		instance_destroy(actors[| i]);
	}
	ds_list_destroy(actors);

	global.ovx = initX;
	global.ovy = initY;
	global.noBattleMusic = false;
	global.hasMoved = false;
	global.layerStore = initLayer;
	obj_player.dir = 2;
	for(i = 0; i < 20; i++){
		global.roomFlags[i] = 0;
	}


	room_goto(roomString(roomId));

	return true;


}
