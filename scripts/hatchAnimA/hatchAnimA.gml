function hatchAnimA() {
	if(global.PorEgrid == 0)
		draw_sprite(spr_hatchetAnim, (((sprite_get_number(spr_hatchetAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_hatchetAnim, (((sprite_get_number(spr_hatchetAnim))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
