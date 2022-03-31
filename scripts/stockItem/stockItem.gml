function stockItem(itemId, quant) {


	if(itemId == 0) return;

	if(quant > 99)
		quant = 99;

	if(itemId <= 127)
	{
		itemfile = file_text_open_read("files/itemData/weapons1.txt");
	}
	else if(itemId > 127 && itemId <= 255)
	{
		itemfile = file_text_open_read("files/itemData/weapons2.txt");
	}
	else if(itemId > 255 && itemId <= 383)
	{
		itemfile = file_text_open_read("files/itemData/weapons3.txt");
	}
	
	else if(itemId > 383 && itemId <= 511)
	{
		itemfile = file_text_open_read("files/itemData/headgear1.txt");
	}
	
	else if(itemId > 511 && itemId <= 639)
	{
		itemfile = file_text_open_read("files/itemData/headgear2.txt");
	}
	
	else if(itemId > 639 && itemId <= 767)
	{
		itemfile = file_text_open_read("files/itemData/bodywear1.txt");
	}
	else if(itemId > 767 && itemId <= 895)
	{
		itemfile = file_text_open_read("files/itemData/bodywear2.txt");
	}
	else if(itemId > 895 && itemId <= 1023)
	{
		itemfile = file_text_open_read("files/itemData/accessories1.txt");
	}
	else if(itemId > 1023 && itemId <= 1151)
	{
		itemfile = file_text_open_read("files/itemData/accessories2.txt");
	}
	
	else if(itemId > 1151 && itemId <= 1279)
	{
		itemfile = file_text_open_read("files/itemData/items1.txt");
	}
	
	else if(itemId > 1279 && itemId <= 1407)
	{
		itemfile = file_text_open_read("files/itemData/items2.txt");
	}
	
	else if(itemId > 1407 && itemId <= 1535)
	{
		itemfile = file_text_open_read("files/itemData/keyItems1.txt");
	}
	
	else if(itemId > 1535 && itemId <= 1663)
	{
		itemfile = file_text_open_read("files/itemData/keyItems2.txt");
	}
	
	fileId = itemId % 128;

	for(m = 0; m < 128; m++)
	{
		if(real(file_text_readln(itemfile)) == fileId)
		{
			break;
		}
		for(j = 28; j >= 0; j--)
		{
			file_text_readln(itemfile);
		}
	}

		for(m = 0; m < 255; m++)
		{
			if(global.stock[m, 0] = itemId)
			{
				global.stock[m,2]+=quant;
		
				if(global.stock[m,2] > 99)
					global.stock[m,2] = 99;
			
				file_text_close(itemfile);
				collapseStock();
				return;
				break;
			}
		}

	for(m = 0; m < 255; m++)
	{
		if(global.stock[m,0] == -1)
		{
			global.stock[m,0] = itemId;
			global.stockN[m] = file_text_readln(itemfile);
			global.stock[m,1] = real(file_text_readln(itemfile));
			global.stock[m,2] = quant;
		
			file_text_close(itemfile);
			collapseStock();
			return;
			break;
		}
	}

	file_text_close(itemfile);
	collapseStock();
	return;



}
