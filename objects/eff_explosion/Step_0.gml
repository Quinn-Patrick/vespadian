/// @description Insert description here
// You can write your code in this editor
metaTicker++;
if(metaTicker > initTime){
	if(ticker == 0)sound(snd_flame);
	ticker++;
	if(ticker >= rate){
		frame++;
		ticker = 0;
	}

	if(frame >= sprite_get_number(sprite_index)) instance_destroy(self);
}