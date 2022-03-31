/// @description Insert description here
// You can write your code in this editor
characters = ds_list_create();
focus = 0;
for(i = 0; i < 2; i++){
	newInterface = instance_create_depth(x + (i*512), 0, 0, obj_characterProgressionInterface);
	newInterface.char = global.party[i];
	ds_list_add(characters, newInterface);
}
for(i = 2; i < 4; i++){
	newInterface = instance_create_depth(x + ((i-2)*512), 384, 0, obj_characterProgressionInterface);
	newInterface.char = global.party[i];
	ds_list_add(characters, newInterface);
}
initialized = 0;