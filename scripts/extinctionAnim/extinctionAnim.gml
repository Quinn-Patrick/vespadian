function extinctionAnim() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_freeze);
	
	alphaValue = 0;
	if(global.animTime > global.animTimeMax/3){
		segmentTime = global.animTimeMax*(2/3);
		alphaValue = 1-((global.animTime-segmentTime)/(global.animTimeMax-segmentTime))
	}
	else if(global.animTime <= global.animTimeMax/3 && global.animTime > global.animTimeMax*(2/3)){
		alphaValue = 1;
	}else{
		segmentTime = global.animTimeMax*(2/3);
		alphaValue = ((global.animTime)/(global.animTimeMax-segmentTime))
	}
	
	if(global.PorEgrid == 0)
			draw_sprite_ext(spr_extinction, (((sprite_get_number(spr_extinction))/(global.animTimeMax))*global.animTime), 128, 352, 1, 1, 0, c_white, alphaValue);
		else
			draw_sprite_ext(spr_extinction, (((sprite_get_number(spr_extinction))/(global.animTimeMax))*global.animTime), 640, 352, 1, 1, 0, c_white, alphaValue);
}
