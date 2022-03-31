function gravAnimA() {
	if(global.animTime%4 == 0){
		if(global.animTime == global.animTimeMax - 1){
			sound(snd_void);
			sound(snd_plasma);
		}
		if(global.PorEgrid == 0){
			
				instance_create_depth(irandom_range(100,400), irandom_range(320,600), 0, obj_gravity);
		}
		else{
				instance_create_depth(irandom_range(640,832), irandom_range(320,600), 0, obj_gravity);
		}
	}
	if(global.animTime%16 == 0 || global.animTime == global.animTimeMax){
		if(global.PorEgrid == 0){
			for(i = 0; i < 30; i++){
				instance_create_depth(irandom_range(100,464), irandom_range(320,578), 0, obj_earthquakeDot);
			}
		}
		else{
			for(i = 0; i < 30; i++){
				instance_create_depth(irandom_range(640,832), irandom_range(320,578), 0, obj_earthquakeDot);
			}
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
