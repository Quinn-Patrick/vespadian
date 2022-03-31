/// @description Insert description here
// You can write your code in this editor
if(global.worldx == ovx && global.worldy == ovy && global.stopped && global.hasMoved && global.vehicle != 2)
{
	sound(snd_door);
	global.hasMoved = false;
	global.ovx = destx;
	global.ovy = desty;
	global.layerStore = destLayer;
	obj_player.dir = 2;
	for(i = 0; i < 20; i++){
		global.roomFlags[i] = 0;
	}
	
	global.teleTarget = room;
	global.teleX = global.worldx;
	global.teleY = global.worldy;
	global.canTeleport = true;
	room_goto(destRoom);
	
}