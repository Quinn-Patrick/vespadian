function voidAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_void);
	if(global.animTime > global.animTimeMax/2){
		scale = 1-((global.animTime-(global.animTimeMax/2))/(global.animTimeMax-(global.animTimeMax/2)));
		if(global.PorEgrid == 0)
			draw_sprite_ext(spr_voidAnim, 0, 256, 480, scale, scale, global.animTime/(global.animTimeMax/240), c_white, 0.5);
		else
			draw_sprite_ext(spr_voidAnim, 0, 768, 480, scale, scale, global.animTime/(global.animTimeMax/240), c_white, 0.5);
	}
	else{
		scale = global.animTime/(global.animTimeMax/2);
		if(global.PorEgrid == 0){
			draw_sprite_ext(spr_voidAnim, 0, 256, 480, scale, scale, global.animTime/(global.animTimeMax/240), c_white, 0.5);
		}
		else{
			draw_sprite_ext(spr_voidAnim, 0, 768, 480, scale, scale, global.animTime/(global.animTimeMax/240), c_white, 0.5);
		}
	}


}
