function plasmaAnim() {
	if(global.animTime == global.animTimeMax - 1){
		sound(snd_crit);
		sound(snd_plasma);
	}
	draw_sprite_ext( spr_whiteFlash, 0, 0, 0, 1, 1, 0, c_white, (global.animTime)/(global.animTimeMax) );
	if(global.PorEgrid == 0){
		draw_sprite(spr_plasma, irandom_range(0, 2), 128 + irandom_range(-128, 128), 0 - irandom_range(0, 256));
		draw_sprite(spr_plasma, irandom_range(0, 2), 128 + irandom_range(-128, 128), 0 - irandom_range(0, 256));
		draw_sprite(spr_plasma, irandom_range(0, 2), 128 + irandom_range(-128, 128), 0 - irandom_range(0, 256));
	}
	else{
		draw_sprite(spr_plasma, irandom_range(0, 2), 640 + irandom_range(-128, 128), 0 - irandom_range(0, 256));
		draw_sprite(spr_plasma, irandom_range(0, 2), 640 + irandom_range(-128, 128), 0 - irandom_range(0, 256));
		draw_sprite(spr_plasma, irandom_range(0, 2), 640 + irandom_range(-128, 128), 0 - irandom_range(0, 256));
	}
	if(global.PorEgrid == 0){
		for(i = 0; i < 30; i++){
			instance_create_depth(irandom_range(100,400), irandom_range(320,578), 0, obj_spark);
		}
	}
	else{
		for(i = 0; i < 30; i++){
			instance_create_depth(irandom_range(640,832), irandom_range(320,578), 0, obj_spark);
		}
	}


}
