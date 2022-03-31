/// @description Insert description here
// You can write your code in this editor
if(global.ovx == ovx && global.ovy = ovy && global.stopped && global.hasMoved)
{
	sound(snd_door);
	global.hasMoved = false;
	global.ovx = destx;
	global.ovy = desty;
	global.layerStore = destLayer;
	global.noBattleMusic = false;
	global.canTeleport = true;
	obj_player.dir = 2;
	global.threatGrowth = 0.2;
	for(i = 0; i < 20; i++){
		global.roomFlags[i] = 0;
	}
	room_goto(destRoom);
	
}

if(sprite_index == spr_teleporter) visible = true;