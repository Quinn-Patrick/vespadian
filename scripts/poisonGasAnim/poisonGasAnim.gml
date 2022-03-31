function poisonGasAnim() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_storm);
	if(global.PorEgrid == 0)
		draw_sprite(spr_toxicCloud, (((sprite_get_number(spr_toxicCloud))/(global.animTimeMax))*global.animTime), 128, 290);
	else
		draw_sprite(spr_toxicCloud, (((sprite_get_number(spr_toxicCloud))/(global.animTimeMax))*global.animTime), 640, 290);


}
