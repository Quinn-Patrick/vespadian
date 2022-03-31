function markForDeathAnim() {
	depth = -1;
	if(global.animTime == global.animTimeMax - 1) sound(snd_markForDeath);

	if(global.PorEgrid == 0)
		draw_sprite(spr_markForDeath, sprite_get_number(spr_markForDeath)-(((sprite_get_number(spr_markForDeath))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(spr_markForDeath, sprite_get_number(spr_markForDeath)-(((sprite_get_number(spr_markForDeath))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
		
	if(global.PorEgrid == 0)
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(global.storeTargetX, global.storeTargetY, 100, obj_teleportationCircleSmall);
	else
		if(global.animTime == global.animTimeMax - 1)instance_create_depth(global.storeTargetX, global.storeTargetY, 100, obj_teleportationCircleSmall);


}
