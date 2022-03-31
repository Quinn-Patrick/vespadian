// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadCreatureTypes(){
	creatureTypes = ds_list_create();
	creatureTypeFile = file_text_open_read("files/creatureTypes.txt");
	i = 0;
	while(!file_text_eof(creatureTypeFile)){
		ds_list_add(creatureTypes, cleanString(file_text_readln(creatureTypeFile)));
	}
	return creatureTypes;
}