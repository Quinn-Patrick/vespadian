function grandHealAnim() {
	centerX = 0;
	centerY = 0;
	
	if(global.animTime == global.animTimeMax - 1){
		sound(snd_heal);
		sound(snd_bigHeal);
	}
	
	progress = 1-(global.animTime/global.animTimeMax);
	

	if(global.PorEgrid == 0){
		centerX = 768;
		centerY = 448;			
	}
	else{
		centerX = 228;
		centerY = 448;			
	}
	
	angle = progress*12*pi;
	
	radius = 256*progress;
	
	if(global.animTime % 1 == 0){
		instance_create_depth(centerX + radius*cos(angle), centerY - radius*sin(angle), -1, obj_lightPillar);
	}


}
