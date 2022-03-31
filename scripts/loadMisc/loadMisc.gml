function loadMisc(fileNum, firstLine, lastLine) {

	array = [];

	misFile = file_text_open_read("files/misc"+string(fileNum)+".txt");

	fLine = 0;
	arrayInd = 0;

	while(!file_text_eof(misFile))
	{
		if(fLine >= firstLine && fLine <= lastLine) 
		{
			tempString = file_text_readln(misFile);
			array[arrayInd] = cleanString(tempString);
			arrayInd++;
		}
		else file_text_readln(misFile);
		fLine++;
	}

	file_text_close(misFile);

	return array;


}
