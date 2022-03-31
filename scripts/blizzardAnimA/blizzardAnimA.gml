function blizzardAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_freeze);
	if(global.animTime > global.animTimeMax/2){
		if(global.PorEgrid == 0)
			draw_sprite_ext(spr_blizzardAnim, (((sprite_get_number(spr_blizzardAnim))/(global.animTimeMax))*global.animTime), 128, 352, 1, 1, 0, c_white, 1-((global.animTime)/(global.animTimeMax)));
		else
			draw_sprite_ext(spr_blizzardAnim, (((sprite_get_number(spr_blizzardAnim))/(global.animTimeMax))*global.animTime), 640, 352, 1, 1, 0, c_white, 1-((global.animTime)/(global.animTimeMax)));
	}
	if(global.animTime == round(global.animTimeMax/2)){
		sound(snd_shatter);
		if(global.PorEgrid == 0){
			for(i = 0; i < 30; i++){
				instance_create_depth(irandom_range(190,320), irandom_range(350,544), 0, obj_iceParticle);
			}
		}
		else{
			for(i = 0; i < 30; i++){
				instance_create_depth(irandom_range(704,832), irandom_range(350,544), 0, obj_iceParticle);
			}
		}
	}

}
