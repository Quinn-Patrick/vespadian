function act_gotoBattle(argument0, argument1) {
	eventBattleId = argument0;
	global.postBattleEvent = round(argument1);

	battleDataFile = file_text_open_read("files/eventBattles/eventBattle" + string(eventBattleId) + ".txt");

	next_in = file_text_readln(battleDataFile);
	clearTroupe();
	creatureNum = 0;
	while(ord(next_in) != 33){
		global.troupe[creatureNum,0] = round(next_in);
		global.troupe[creatureNum,1] = round(file_text_readln(battleDataFile));
		hello = global.troupe[0,1];
		global.troupe[creatureNum,2] = round(file_text_readln(battleDataFile));
		hello = global.troupe[0,2];
		next_in = file_text_readln(battleDataFile);
		creatureNum++;
	}
	global.troupe[creatureNum,0] = -1;

	file_text_close(obj_evManager.battleDataFile);
	global.control = true;
	obj_player.visible = true;
	global.event = -1;
	file_text_close(obj_evManager.evFile);


	for(i = 0; i < ds_list_size(actors); i++)
	{
		instance_destroy(actors[| i]);
	}
	ds_list_destroy(actors);
	global.runnable = false;
	gotoBattle();

	return true;


}
