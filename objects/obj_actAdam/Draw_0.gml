/// @description Insert description here
// You can write your code in this editor
draw_self();
switch(dir){
	case(0): sprite_index = anims[2];
		image_xscale = 1; break;
	case(1): sprite_index = anims[1];
		image_xscale = 1; break;
	case(2): sprite_index = anims[1];
		image_xscale = -1; break;
	case(3): sprite_index = anims[0];
		image_xscale = 1; break;
	case(4): sprite_index = anims[6];
		image_xscale = 1; break;
}