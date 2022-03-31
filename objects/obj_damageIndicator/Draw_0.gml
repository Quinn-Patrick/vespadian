/// @description Insert description here
// You can write your code in this editor
if(ready)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	
	if(damDisp > 0){
		if(time == 1)sound(snd_hit);
		draw_text_outlined(x,y,c_black, c_white, damDisp);
	}
	else if(damDisp < 0)draw_text_outlined(x, y, c_black, upColor, damDisp*-1);
	else{
		if(time == 1)sound(snd_miss);
		draw_text_outlined(x,y,c_black, c_white, "Miss");
	}
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}