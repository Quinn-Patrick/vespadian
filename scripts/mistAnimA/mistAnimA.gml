function mistAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_freeze);
	draw_sprite_ext(spr_mistOverlay, 0, 0, 0, 1, 1, 0, c_white, sin(global.animTime/100));
	if(global.animTime % 5 == 0){
		instance_create_depth(irandom_range(0,1024), 0, -1001, obj_iceParticle);
	}


}
