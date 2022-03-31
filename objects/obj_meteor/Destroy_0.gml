/// @description Insert description here
// You can write your code in this editor
sound(snd_explosion);
for(i = 0; i < 10; i++){
	instance_create_depth(x, y, depth-1, obj_impact);
}