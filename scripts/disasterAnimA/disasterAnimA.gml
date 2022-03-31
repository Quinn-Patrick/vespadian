function disasterAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_disaster);
	
	draw_sprite(spr_disasterAnim, sprite_get_number(spr_disasterAnim)-(((sprite_get_number(spr_disasterAnim))/(global.animTimeMax))*global.animTime), 0, 0);
	


}
