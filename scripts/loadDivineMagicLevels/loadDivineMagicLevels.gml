// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadDivineMagicLevels(){
	divineMagicLevels = ds_list_create();
	divineMagicLevelFile = file_text_open_read("files/classes/divineMagicLevels.txt");
	while(!file_text_eof(divineMagicLevelFile)){
		ds_list_add(divineMagicLevels, real(file_text_readln(divineMagicLevelFile)));
	}
	return divineMagicLevels
}