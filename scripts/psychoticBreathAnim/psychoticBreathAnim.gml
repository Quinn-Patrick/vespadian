function psychoticBreathAnim() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_storm);
	if(!global.top.friend){
		newParticle = instance_create_depth(global.top.x, global.top.y, -1, obj_psychoticBreathParticle);
		newParticle.angle = sin((global.animTimeMax/4)-global.animTime)*0.1;
	}
	else{
		newParticle = instance_create_depth(global.top.x, global.top.y, -1, obj_psychoticBreathParticle);
		newParticle.angle = (pi+sin((global.animTimeMax/4)-global.animTime))*0.1;
	}


}
