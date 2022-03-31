/// @description Insert description here
// You can write your code in this editor
ringRotation += 10;
if(key(5)){
	sound(snd_select);
	global.playerTargetSelect--;
	if(global.playerTargetSelect < 0) global.playerTargetSelect = ds_list_size(global.playerTargets)-1;
}else if(key(7)){
	sound(snd_select);
	global.playerTargetSelect++;
	if(global.playerTargetSelect > ds_list_size(global.playerTargets)-1) global.playerTargetSelect = 0;
}