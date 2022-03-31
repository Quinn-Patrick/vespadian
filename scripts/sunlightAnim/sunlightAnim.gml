function sunlightAnim() {
	if(global.animTime == global.animTimeMax - 1){
		sound(snd_crit);
		sound(snd_mind);
		sound(snd_flash);
	}
	if(global.animTime%4 == 0){
		if(global.PorEgrid == 0){
			
				instance_create_depth(irandom_range(100,400), irandom_range(320,600), 0, obj_flash);
		}
		else{
				instance_create_depth(irandom_range(640,832), irandom_range(320,600), 0, obj_flash);
		}
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
