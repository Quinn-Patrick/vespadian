function fightAnimA(argument0) {
	depth = -1;
	sprite = argument0;
	if(global.animTime == global.animTimeMax - 1){
		if(sprite == spr_slashAnim)sound(snd_slash);
		else if(sprite == spr_stabAnim)sound(snd_stab);
		else if(sprite == spr_crushAnim){
			sound(snd_bash);
		}
	}
	if(global.PorEgrid == 0)
		draw_sprite(sprite, ((sprite_get_number(sprite)-(sprite_get_number(sprite))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);
	else
		draw_sprite(sprite, ((sprite_get_number(sprite)-(sprite_get_number(sprite))/(global.animTimeMax))*global.animTime), global.storeTargetX-32, global.storeTargetY-32);


}
