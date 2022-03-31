function defAnimA() {
	sprite = spr_defAnim
	if(global.PorEgrid == 0)
		draw_sprite(sprite, (((sprite_get_number(sprite))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(sprite, (((sprite_get_number(sprite))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
