/// @description Insert description here
// You can write your code in this editor
if(global.precip == 1){
	if(global.temp > 0){
		for(i = 0; i < 40; i++){
			draw_sprite(spr_rainstreak, 0, irandom_range(-50, 1074), irandom_range(-150, 928));
		}
	}else{
		if(timer % 16 == 0){
			for(i = 0; i < 16; i++){
				instance_create_depth(i*64, -64, -100, obj_snowfall);
			}
		}
	}
}