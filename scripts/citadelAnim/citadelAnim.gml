function citadelAnim() {
	if(global.animTime == global.animTimeMax - 1){
		sound(snd_holy);
		sound(snd_light);
	}
	if(global.animTime == floor(global.animTimeMax/2)){
		sound(snd_defend);
		
	}
	
	if(global.PorEgrid == 0){
		for(i = 0; i < 30; i++){
			instance_create_depth(irandom_range(640,832), irandom_range(320,578), 0, obj_spark);
		}
	}
	else{
		for(i = 0; i < 30; i++){
			instance_create_depth(irandom_range(100,400), irandom_range(320,578), 0, obj_spark);
		}
	}
	
	draw_sprite_ext( spr_whiteFlash, 0, 0, 0, 1, 1, 0, c_white, (global.animTime)/global.animTimeMax );
	
	draw_sprite_ext( spr_whiteFlash, 0, 0, 0, 1, 1, 0, c_white, (global.animTime)/global.animTimeMax );
	if(global.PorEgrid == 0)
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(768, 480, 100, obj_holyCircle);
	else
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(256, 480, 100, obj_holyCircle);
		
	if(global.PorEgrid == 0)
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(768, 480, 100, obj_citadel);
	else
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(256, 480, 100, obj_citadel);


}
