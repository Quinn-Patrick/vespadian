function firestormAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_fireball);
	if(global.PorEgrid == 0)
		draw_sprite(spr_firestormAnim, (((sprite_get_number(spr_firestormAnim))/(global.animTimeMax))*global.animTime), 128, 352);
	else
		draw_sprite(spr_firestormAnim, (((sprite_get_number(spr_firestormAnim))/(global.animTimeMax))*global.animTime), 640, 352);


}
