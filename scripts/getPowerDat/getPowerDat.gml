function getPowerDat(argument0) {
	powerNum = argument0;
	datFile = file_text_open_read("files/powerData.txt");

	for(i = 0; i < 1000; i++)
	{
		if(real(file_text_readln(datFile)) == powerNum)
		{
			global.selPowCost = real(file_text_readln(datFile));
			global.selPowDes = file_text_readln(datFile);
			break;
		}
		file_text_readln(datFile);
		file_text_readln(datFile);
	}
	file_text_close(datFile);


}
