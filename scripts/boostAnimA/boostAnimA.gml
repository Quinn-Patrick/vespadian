function boostAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_boost);
	if(global.PorEgrid == 0)
		draw_sprite(spr_boostAnim, (((sprite_get_number(spr_boostAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_boostAnim, (((sprite_get_number(spr_boostAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
