function getItemType(argument0) {
	itId = argument0;

	if(itId <= 127)
	{
		itemfile = file_text_open_read("files/itemData/weapons1.txt");
	}
	else if(itId > 127 && itId <= 255)
	{
		itemfile = file_text_open_read("files/itemData/weapons2.txt");
	}
	else if(itId > 255 && itId <= 383)
	{
		itemfile = file_text_open_read("files/itemData/weapons3.txt");
	}
	
	else if(itId > 383 && itId <= 511)
	{
		itemfile = file_text_open_read("files/itemData/headgear1.txt");
	}
	
	else if(itId > 511 && itId <= 639)
	{
		itemfile = file_text_open_read("files/itemData/headgear2.txt");
	}
	
	else if(itId > 639 && itId <= 767)
	{
		itemfile = file_text_open_read("files/itemData/bodywear1.txt");
	}
	else if(itId > 767 && itId <= 895)
	{
		itemfile = file_text_open_read("files/itemData/bodywear2.txt");
	}
	else if(itId > 895 && itId <= 1023)
	{
		itemfile = file_text_open_read("files/itemData/accessories1.txt");
	}
	else if(itId > 1023 && itId <= 1151)
	{
		itemfile = file_text_open_read("files/itemData/accessories2.txt");
	}
	
	else if(itId > 1151 && itId <= 1279)
	{
		itemfile = file_text_open_read("files/itemData/items1.txt");
	}
	
	else if(itId > 1279 && itId <= 1407)
	{
		itemfile = file_text_open_read("files/itemData/items2.txt");
	}
	
	else if(itId > 1407 && itId <= 1535)
	{
		itemfile = file_text_open_read("files/itemData/keyItems1.txt");
	}
	
	else if(itId > 1535 && itId <= 1663)
	{
		itemfile = file_text_open_read("files/itemData/keyItems2.txt");
	}

	fileId = itId % 128;

	for(mb = 0; mb < 128; mb++)
	{
		if(real(file_text_readln(itemfile)) == fileId)
		{
			break;
		}
		for(jb = 28; jb >= 0; jb--)
		{
			file_text_readln(itemfile);
		}
	}
	file_text_readln(itemfile);
	out = real(file_text_readln(itemfile));
	file_text_close(itemfile);
	return out;


}
