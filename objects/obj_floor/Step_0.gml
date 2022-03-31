/// @description Insert description here
// You can write your code in this editor
depth = 6;
switch(global.field){
	case 0:
		image_alpha = 0;
		break;
	case 1:
		image_alpha = 1;
		sprite_index = spr_dryFloor;
		break;
	case 2:
		image_speed = 0.125;
		image_alpha = 0.5;
		sprite_index = spr_waterFloor;
		break;
}