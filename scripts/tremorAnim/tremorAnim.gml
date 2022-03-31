function tremorAnim() {
	if(global.animTime == global.animTimeMax - 1){
		sound(snd_crit);
		sound(snd_lightRumble);
	}
	draw_sprite_ext( spr_whiteFlash, 0, 0, 0, 1, 1, 0, c_white, (global.animTime)/global.animTimeMax );


}
