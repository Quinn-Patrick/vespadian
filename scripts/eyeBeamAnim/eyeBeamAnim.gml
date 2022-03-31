function eyeBeamAnim() {
	depth = -1;
	if(global.animTime == global.animTimeMax - 1) sound(snd_mind);

	if(global.PorEgrid == 0)
		draw_sprite(spr_eyeBeam, sprite_get_number(spr_eyeBeam)-(((sprite_get_number(spr_eyeBeam))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_eyeBeam, sprite_get_number(spr_eyeBeam)-(((sprite_get_number(spr_eyeBeam))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
