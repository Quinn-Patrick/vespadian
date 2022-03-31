/// @description Insert description here
// You can write your code in this editor
sound(snd_thoop);
for(i = 0; i < 10; i++){
	shatter = instance_create_depth(x, y, depth-1, obj_hailstoneShatter);
	shatter.image_xscale = image_xscale;
	shatter.image_yscale = image_yscale;
}