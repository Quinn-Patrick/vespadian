function bulwarkAnim() {
	if(global.animTime == global.animTimeMax - 1){
		sound(snd_defend);
		sound(snd_light);
	}
	draw_sprite_ext( spr_whiteFlash, 0, 0, 0, 1, 1, 0, c_white, (global.animTime)/global.animTimeMax );
	if(global.PorEgrid == 0)
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(768, 480, 100, obj_holyCircle);//draw_sprite(spr_lightningCrashAnim, (((sprite_get_number(spr_lightningCrashAnim))/(global.animTimeMax))*global.animTime), 128, 290);
	else
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(256, 480, 100, obj_holyCircle);//draw_sprite(spr_lightningCrashAnim, (((sprite_get_number(spr_lightningCrashAnim))/(global.animTimeMax))*global.animTime), 640, 290);


}
