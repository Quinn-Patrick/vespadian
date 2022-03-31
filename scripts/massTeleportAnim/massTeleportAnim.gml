function massTeleportAnim() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_lightning);
	if(global.PorEgrid == 0)
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(256, 480, 100, obj_teleportationCircleBig);//draw_sprite(spr_lightningCrashAnim, (((sprite_get_number(spr_lightningCrashAnim))/(global.animTimeMax))*global.animTime), 128, 290);
	else
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(768, 480, 100, obj_teleportationCircleBig);//draw_sprite(spr_lightningCrashAnim, (((sprite_get_number(spr_lightningCrashAnim))/(global.animTimeMax))*global.animTime), 640, 290);


}
