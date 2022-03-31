function meteorAnimA() {
	if(global.animTime%4 == 0){
		if(global.PorEgrid == 0){
			
				instance_create_depth(irandom_range(0,350), irandom_range(-512,-200), 0, obj_meteor);
		}
		else{
				instance_create_depth(irandom_range(500,800), irandom_range(-512,-200), 0, obj_meteor);
		}
	}
}
