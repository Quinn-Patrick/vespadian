function flashAnimB() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_flash);
	if(global.animTime%4 == 0){
		if(global.PorEgrid == 0){
			
				instance_create_depth(irandom_range(100,400), irandom_range(320,600), 0, obj_flash);
		}
		else{
				instance_create_depth(irandom_range(640,832), irandom_range(320,600), 0, obj_flash);
		}
	}
}
