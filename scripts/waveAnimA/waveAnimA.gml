function waveAnimA() {
	if(global.animTime == global.animTimeMax - 1) sound(snd_wave);
	draw_sprite(spr_wave, 0, ((1-(global.animTime/global.animTimeMax))*1500) + (200*sin((global.animTime)*3/global.animTimeMax)), 768-350);


}
