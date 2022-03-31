function toWorldMap(worldX, worldY, worldRoom) {
	global.noBattleMusic = false;

	global.worldx = worldX;
	global.worldy = worldY;

	room_goto(worldRoom);


}
