function lightningAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_shock);
	if(global.PorEgrid == 0)
		draw_sprite(spr_lightningAnim, (((sprite_get_number(spr_lightningAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_lightningAnim, (((sprite_get_number(spr_lightningAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
