function holyAnim() {
	if(global.animTime == global.animTimeMax - 1){
		sound(snd_crit);
		sound(snd_mind);
		sound(snd_holy);
	}
	if(global.animTime%4 == 0){
		if(global.PorEgrid == 0){
			
				instance_create_depth(irandom_range(100,400), irandom_range(320,600), 0, obj_flash);
		}
		else{
				instance_create_depth(irandom_range(640,832), irandom_range(320,600), 0, obj_flash);
		}
	}
	draw_sprite_ext( spr_whiteFlash, 0, 0, 0, 1, 1, 0, c_white, (global.animTime)/global.animTimeMax );
	if(global.PorEgrid == 0)
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(256, 480, 100, obj_holyCircle);//draw_sprite(spr_lightningCrashAnim, (((sprite_get_number(spr_lightningCrashAnim))/(global.animTimeMax))*global.animTime), 128, 290);
	else
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(768, 480, 100, obj_holyCircle);//draw_sprite(spr_lightningCrashAnim, (((sprite_get_number(spr_lightningCrashAnim))/(global.animTimeMax))*global.animTime), 640, 290);
	
	if(global.PorEgrid == 0){
		for(i = 0; i < 30; i++){
			instance_create_depth(irandom_range(100,400), irandom_range(320,578), 0, obj_spark);
		}
	}
	else{
		for(i = 0; i < 30; i++){
			instance_create_depth(irandom_range(640,832), irandom_range(320,578), 0, obj_spark);
		}
	}


}
