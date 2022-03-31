function poisonShockAnim() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_storm);
	if(global.animTime%16 == 0 || global.animTime == global.animTimeMax){
		if(global.PorEgrid == 0){
			for(i = 0; i < 30; i++){
				instance_create_depth(irandom_range(100,400), irandom_range(320,514), 0, obj_venomParticle);
			}
		}
		else{
			for(i = 0; i < 30; i++){
				instance_create_depth(irandom_range(640,832), irandom_range(320,514), 0, obj_venomParticle);
			}
		}
	}
}
