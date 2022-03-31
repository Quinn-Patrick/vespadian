function shadAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_teleport);
	if(global.PorEgrid == 0)
		draw_sprite(spr_shadowAttack, (((sprite_get_number(spr_shadowAttack))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_shadowAttack, (((sprite_get_number(spr_shadowAttack))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
