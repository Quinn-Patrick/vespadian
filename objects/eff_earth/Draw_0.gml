/// @description Insert description here
// You can write your code in this editor
if(frame < sprite_get_number(spr_earth)) draw_sprite(spr_earth, frame, x, y);

draw_sprite_ext(spr_blackScreen, 0, 0,0,1,1,0,c_white,1-(preTicker/60));

if(preTicker > 600) draw_sprite_ext(spr_blackScreen, 0, 0,0,1,1,0,c_white, (preTicker-600)/660);

if(preTicker > 1260){
	global.hasMoved = false;
	global.ovx = 71;
	global.ovy = 34;
	global.layerStore = 1;
	global.canTeleport = false;
	global.threatGrowth = 0.2;
	for(i = 0; i < 20; i++){
		global.roomFlags[i] = 0;
	}
	room_goto(rm_endOfTime);
}