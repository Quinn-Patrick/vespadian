// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function randomName(mOrF){
	nameFile = file_text_open_read("files/randomNames" + mOrF + ".txt");
	nameList = ds_list_create();
	while(!file_text_eof(nameFile)){
		ds_list_add(nameList, file_text_read_string(nameFile));
		file_text_readln(nameFile);
	}
	output = chooseRandomListElement(nameList);
	ds_list_destroy(nameList);
	file_text_close(nameFile);
	return output;
}