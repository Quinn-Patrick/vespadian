function getPowerDes(argument0) {
	powerNum = argument0;
	datFile = file_text_open_read("files/powerData.txt");

	retVal = 0;
	for(i = 0; i < 1000; i++)
	{
		if(real(file_text_readln(datFile)) == powerNum)
		{
			real(file_text_readln(datFile));
			retVal = file_text_readln(datFile);
			file_text_close(datFile);
			return cleanString(retVal);
		}
	
	
		file_text_readln(datFile);
		file_text_readln(datFile);
	}

	return 0;


}
