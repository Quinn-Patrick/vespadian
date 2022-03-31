// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadClassDescriptions(){
	outArray[global.numberOfClasses-1] = "";
	for(i = 0; i < global.numberOfClasses; i++){
		descriptionFile = file_text_open_read("files/classes/classDescriptions/description" + string(i) + ".txt");
		outArray[i] = file_text_read_string(descriptionFile);
		file_text_close(descriptionFile);
	}
	return outArray;
}