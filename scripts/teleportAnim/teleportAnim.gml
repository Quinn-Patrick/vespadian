function teleportAnim() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_lightning);
	if(global.PorEgrid == 0)
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(global.storeTargetX, global.storeTargetY, 100, obj_teleportationCircleSmall);
	else
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(global.storeTargetX, global.storeTargetY, 100, obj_teleportationCircleSmall);


}
