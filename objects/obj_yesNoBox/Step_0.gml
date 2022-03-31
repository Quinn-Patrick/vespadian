/// @description Insert description here
// You can write your code in this editor
if(key(5) || key(7)){
	sound(snd_select);
	if(selection == 0) selection = 1;
	else selection = 0;
}
if(key(9)){
	output = selection;
}else if(key(10)){
	output = 0;
}