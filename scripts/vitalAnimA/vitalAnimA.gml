function vitalAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_vital);
	if(global.PorEgrid == 0)
		draw_sprite(spr_vitalAnim, (((sprite_get_number(spr_vitalAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_vitalAnim, (((sprite_get_number(spr_vitalAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
