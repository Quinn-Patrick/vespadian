function getItemDatFromFile(itId) {

	if(itId <= 127)
	{
		itemsFile = file_text_open_read("files/itemData/weapons1.txt");
	}
	else if(itId > 127 && itId <= 255)
	{
		itemsFile = file_text_open_read("files/itemData/weapons2.txt");
	}
	else if(itId > 255 && itId <= 383)
	{
		itemsFile = file_text_open_read("files/itemData/weapons3.txt");
	}
	
	else if(itId > 383 && itId <= 511)
	{
		itemsFile = file_text_open_read("files/itemData/headgear1.txt");
	}
	
	else if(itId > 511 && itId <= 639)
	{
		itemsFile = file_text_open_read("files/itemData/headgear2.txt");
	}
	
	else if(itId > 639 && itId <= 767)
	{
		itemsFile = file_text_open_read("files/itemData/bodywear1.txt");
	}
	else if(itId > 767 && itId <= 895)
	{
		itemsFile = file_text_open_read("files/itemData/bodywear2.txt");
	}
	else if(itId > 895 && itId <= 1023)
	{
		itemsFile = file_text_open_read("files/itemData/accessories1.txt");
	}
	else if(itId > 1023 && itId <= 1151)
	{
		itemsFile = file_text_open_read("files/itemData/accessories2.txt");
	}
	
	else if(itId > 1151 && itId <= 1279)
	{
		itemsFile = file_text_open_read("files/itemData/items1.txt");
	}
	
	else if(itId > 1279 && itId <= 1407)
	{
		itemsFile = file_text_open_read("files/itemData/items2.txt");
	}
	
	else if(itId > 1407 && itId <= 1535)
	{
		itemsFile = file_text_open_read("files/itemData/keyItems1.txt");
	}
	
	else if(itId > 1535 && itId <= 1663)
	{
		itemsFile = file_text_open_read("files/itemData/keyItems2.txt");
	}
	
	out = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,""];

	fileId = itId % 128;

	for(mb = 0; mb < 128; mb++)
	{
		if(real(file_text_readln(itemsFile)) == fileId)
		{
			out[28] =cleanString(file_text_readln(itemsFile));
			break;
		}
		for(ae = 0; ae < 29; ae++)
		{
			file_text_readln(itemsFile);
		}
	}
	
	if(itId == -1) return out;

	for(ae = 0; ae < 28; ae++)
	{
		out[ae]=real(file_text_readln(itemsFile));
	}

	
	file_text_close(itemsFile);
	return out;


}
