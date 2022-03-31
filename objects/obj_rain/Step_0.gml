/// @description Insert description here
// You can write your code in this editor
timer++;
if(global.precip == 1 && global.temp > 0)
{
	for(i = 0; i < 10; i++){
		instance_create_depth(irandom_range(0,1024), irandom_range(320,768), 0, obj_rainDrop);
	}
}