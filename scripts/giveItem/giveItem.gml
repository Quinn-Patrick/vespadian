function giveItem(argument0, argument1, argument2) {
	itemNum = argument0;
	member = argument1;
	itemSlot = argument2;

	if(itemNum == -1) return;

	if(itemSlot > member.invenSize)
		return;

	if(itemNum <= 127)
	{
		iFile = file_text_open_read("files/itemData/weapons1.txt");
	}
	else if(itemNum > 127 && itemNum <= 255)
	{
		iFile = file_text_open_read("files/itemData/weapons2.txt");
	}
	else if(itemNum > 255 && itemNum <= 383)
	{
		iFile = file_text_open_read("files/itemData/weapons3.txt");
	}
	
	else if(itemNum > 383 && itemNum <= 511)
	{
		iFile = file_text_open_read("files/itemData/headgear1.txt");
	}
	
	else if(itemNum > 511 && itemNum <= 639)
	{
		iFile = file_text_open_read("files/itemData/headgear2.txt");
	}
	
	else if(itemNum > 639 && itemNum <= 767)
	{
		iFile = file_text_open_read("files/itemData/bodywear1.txt");
	}
	else if(itemNum > 767 && itemNum <= 895)
	{
		iFile = file_text_open_read("files/itemData/bodywear2.txt");
	}
	else if(itemNum > 895 && itemNum <= 1023)
	{
		iFile = file_text_open_read("files/itemData/accessories1.txt");
	}
	else if(itemNum > 1023 && itemNum <= 1151)
	{
		iFile = file_text_open_read("files/itemData/accessories2.txt");
	}
	
	else if(itemNum > 1151 && itemNum <= 1279)
	{
		iFile = file_text_open_read("files/itemData/items1.txt");
	}
	
	else if(itemNum > 1279 && itemNum <= 1407)
	{
		iFile = file_text_open_read("files/itemData/items2.txt");
	}
	
	else if(itemNum > 1407 && itemNum <= 1535)
	{
		iFile = file_text_open_read("files/itemData/keyItems1.txt");
	}
	
	else if(itemNum > 1535 && itemNum <= 1663)
	{
		iFile = file_text_open_read("files/itemData/keyItems2.txt");
	}
	
	fileId = itemNum % 128;

	for(ma = 0; ma < 128; ma++)
	{
		if(real(file_text_readln(iFile)) == fileId)
		{
			break;
		}
		for(ja = 28; ja >= 0; ja--)
		{
			file_text_readln(iFile);
		}
	}

	if(member.inven[itemSlot] != -1)
	{
		stockItem(member.inven[itemSlot], 1);
	}

	member.inven[itemSlot] = itemNum;

	file_text_close(iFile);
	return;



}
