// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadClassNames(){
	classNames = ds_map_create();
	classNameFile = file_text_open_read("files/classes/classNames.txt");
	i = 0;
	while(!file_text_eof(classNameFile)){
		ds_map_add(classNames, i, cleanString(file_text_readln(classNameFile)));
		i++;
	}
	return classNames;
}