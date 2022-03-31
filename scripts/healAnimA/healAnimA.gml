function healAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_heal);
	if(global.PorEgrid == 0)
		draw_sprite(spr_healAnim, (((sprite_get_number(spr_healAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_healAnim, (((sprite_get_number(spr_healAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
