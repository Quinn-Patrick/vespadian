/// @description Insert description here
// You can write your code in this editor
if(key(5)){
	sound(snd_select);
	selection--;
	if(selection < 0) selection = ds_list_size(listItems)-1;
}else if(key(7)){
	sound(snd_select);
	selection++;
	if(selection >= ds_list_size(listItems)) selection = 0;
}
if(key(9)){
	done = true;
	output = listItems[| selection];
}else if(key(10)){
	output = 0;
}