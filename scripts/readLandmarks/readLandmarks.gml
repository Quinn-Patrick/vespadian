function readLandmarks() {
	lmFile = file_text_open_read("files/landmarks.txt");

	outList = ds_list_create();

	lmIndex = 0;

	while(!file_text_eof(lmFile)){
		ds_list_add(outList, ds_list_create());
		for(i = 0; i < 9; i++){
			if(i == 0)ds_list_add(outList[| lmIndex], file_text_readln(lmFile));
			else ds_list_add(outList[| lmIndex], real(file_text_readln(lmFile)));
		}
		lmIndex++;
	}

	file_text_close(lmFile);
	return outList;


}
