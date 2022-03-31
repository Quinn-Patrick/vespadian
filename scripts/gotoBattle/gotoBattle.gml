function gotoBattle() {
	global.storeRoom = room;
	if(room != rm_worldMap1)global.layerStore = obj_player.worldLayer;
	room_goto(rm_battle);


}
