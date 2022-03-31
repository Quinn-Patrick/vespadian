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
	case(5): sprite_index = anims[7];
		image_xscale = 1; break;
	case(6): sprite_index = anims[8];
		image_xscale = 1; break;
	case(7): sprite_index = anims[9];
		image_xscale = 1; break;
	case(8): sprite_index = anims[10];
		image_xscale = 1; break;
	default: sprite_index = anims[0];
		image_xscale = 1; break;
}
