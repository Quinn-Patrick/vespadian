// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadPreview(prevFileNum){
	prevFile = file_text_open_read("file"+string(prevFileNum)+".txt");
	
	for(i = 0; i < 28; i++){
		global.loadPreview[i] = 0;
	}
	
	if(real(file_text_readln(prevFile)) == 0){
		global.loadPreview[27] = -1;
		file_text_close(prevFile);
		return;
	}
	else global.loadPreview[27] = 0;
	
	if(ord(file_text_readln(prevFile)) == 69){
		for(i = 0; i < 28; i++){
			if(i == 0) global.loadPreview[0] = file_text_read_string(prevFile);
			else if(i == 8 || i == 13 || i == 18 || i == 23) global.loadPreview[i] = file_text_read_string(prevFile);
			else global.loadPreview[i] = file_text_read_real(prevFile);
			file_text_readln(prevFile);
		}
		file_text_close(prevFile);
		return;
	}
	else{
		file_text_close(prevFile);
		return;
	}
	
}