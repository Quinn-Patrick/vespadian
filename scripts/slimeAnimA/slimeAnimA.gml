function slimeAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_debuff);
	if(global.PorEgrid == 0)
		draw_sprite(spr_slimeAttack, (((sprite_get_number(spr_slimeAttack))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_slimeAttack, (((sprite_get_number(spr_slimeAttack))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
