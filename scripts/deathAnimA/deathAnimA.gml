function deathAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_death);
	if(global.PorEgrid == 0)
		draw_sprite(spr_deathAnim, (((sprite_get_number(spr_deathAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_deathAnim, (((sprite_get_number(spr_deathAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
