function thunderAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_lightning);
	if(global.PorEgrid == 0)
		draw_sprite(spr_lightningCrashAnim, ((sprite_get_number(spr_lightningCrashAnim)-(sprite_get_number(spr_lightningCrashAnim))/(global.animTimeMax))*global.animTime), 128, 290);
	else
		draw_sprite(spr_lightningCrashAnim, ((sprite_get_number(spr_lightningCrashAnim)-(sprite_get_number(spr_lightningCrashAnim))/(global.animTimeMax))*global.animTime), 640, 290);


}
