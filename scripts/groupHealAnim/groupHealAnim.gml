function groupHealAnim() {
	if(global.animTime == global.animTimeMax - 1){
		sound(snd_heal);
		sound(snd_bigHeal);
	}
	
	progress = (1-(global.animTime/global.animTimeMax))*256;
	
	if(global.animTime%2 == 0 || global.animTime == global.animTimeMax){
		if(global.PorEgrid == 0){
			for(i = 0; i < 2; i++){
				instance_create_depth(640+(progress+(irandom_range(-64,64))), irandom_range(320,578), 0, obj_lightPillar);
			}
		}
		else{
			for(i = 0; i < 2; i++){
				instance_create_depth(100+(progress+(irandom_range(-64,64))), irandom_range(320,578), 0, obj_lightPillar);
			}
		}
	}


}
