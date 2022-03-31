function absoluteZeroAnim() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_absoluteZero);
	if(global.animTime%16 == 0 || global.animTime == global.animTimeMax){
		if(global.PorEgrid == 0){
			for(i = 0; i < 30; i++){
				instance_create_depth(irandom_range(100,400), irandom_range(320,578), 0, obj_iceCrystal);
			}
		}
		else{
			for(i = 0; i < 30; i++){
				instance_create_depth(irandom_range(640,832), irandom_range(320,578), 0, obj_iceCrystal);
			}
		}
	}
}
