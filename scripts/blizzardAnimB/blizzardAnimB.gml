function blizzardAnimB() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_freeze);

	if(global.animTime%5 == 0){
		if(global.PorEgrid == 0){
			
				instance_create_depth(irandom_range(0,350), irandom_range(-512,-200), 0, obj_hailStone);
		}
		else{
				instance_create_depth(irandom_range(500,800), irandom_range(-512,-200), 0, obj_hailStone);
		}
	}

}
