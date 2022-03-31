function iceAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_ice);
	if(global.PorEgrid == 0)
		draw_sprite(spr_iceAnim, (((sprite_get_number(spr_iceAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_iceAnim, (((sprite_get_number(spr_iceAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
