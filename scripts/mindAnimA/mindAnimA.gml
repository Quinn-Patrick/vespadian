function mindAnimA() {
	if(global.animTime == global.animTimeMax - 1)sound(snd_mind);
	if(global.PorEgrid == 0)
		draw_sprite(spr_mindAnim, (((sprite_get_number(spr_mindAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_mindAnim, (((sprite_get_number(spr_mindAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
