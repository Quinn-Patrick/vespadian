function lightAnimA() {
	if(global.animTime == global.animTimeMax - 1){
		sound(snd_shine);
	}
	if(global.PorEgrid == 0)
		draw_sprite(spr_lightAnim, (((sprite_get_number(spr_lightAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_lightAnim, (((sprite_get_number(spr_lightAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
