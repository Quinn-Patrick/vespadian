function flameAnimA() {
	depth = -1;
	if(global.animTime == global.animTimeMax - 1) sound(snd_flame);

	if(global.PorEgrid == 0)
		draw_sprite(spr_flameAnim, (((sprite_get_number(spr_flameAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_flameAnim, (((sprite_get_number(spr_flameAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
