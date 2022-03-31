function shieldAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_boost);
	if(global.PorEgrid == 0)
		draw_sprite(spr_shieldWhoosh, (((sprite_get_number(spr_shieldWhoosh))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_shieldWhoosh, (((sprite_get_number(spr_shieldWhoosh))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
}
