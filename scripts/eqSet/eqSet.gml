function eqSet(argument0) {
	if(!is_undefined(argument0)){
		identifier = argument0;
		if(is_struct(identifier)){
			rhand = identifier.equipment[0,0];
			lhand = identifier.equipment[1,0];
			head = identifier.equipment[2,0];
			body = identifier.equipment[3,0];
			acc1 = identifier.equipment[4,0];
			acc2 = identifier.equipment[5,0];
		}else{
			rhand = identifier.eq[0];
			lhand = identifier.eq[1];
			head = identifier.eq[2];
			body = identifier.eq[3];
			acc1 = identifier.eq[4];
			acc2 = identifier.eq[5];
		}

		for(h = 0; h <= 5; h++)
		{
			if(h == 0) slot = rhand;
			if(h == 1) slot = lhand;
			if(h == 2) slot = head;
			if(h == 3) slot = body;
			if(h == 4) slot = acc1;
			if(h == 5) slot = acc2;
	
			if(slot <= 127)
			{
				itemfile = file_text_open_read("files/itemData/weapons1.txt");
			}
			else if(slot > 127 && slot <= 255)
			{
				itemfile = file_text_open_read("files/itemData/weapons2.txt");
			}
			else if(slot > 255 && slot <= 383)
			{
				itemfile = file_text_open_read("files/itemData/weapons3.txt");
			}
	
			else if(slot > 383 && slot <= 511)
			{
				itemfile = file_text_open_read("files/itemData/headgear1.txt");
			}
	
			else if(slot > 511 && slot <= 639)
			{
				itemfile = file_text_open_read("files/itemData/headgear2.txt");
			}
	
			else if(slot > 639 && slot <= 767)
			{
				itemfile = file_text_open_read("files/itemData/bodywear1.txt");
			}
			else if(slot > 767 && slot <= 895)
			{
				itemfile = file_text_open_read("files/itemData/bodywear2.txt");
			}
			else if(slot > 895 && slot <= 1023)
			{
				itemfile = file_text_open_read("files/itemData/accessories1.txt");
			}
			else if(slot > 1023 && slot <= 1151)
			{
				itemfile = file_text_open_read("files/itemData/accessories2.txt");
			}
	
			else if(slot > 1151 && slot <= 1279)
			{
				itemfile = file_text_open_read("files/itemData/items1.txt");
			}
	
			else if(slot > 1279 && slot <= 1407)
			{
				itemfile = file_text_open_read("files/itemData/items2.txt");
			}
	
			else if(slot > 1407 && slot <= 1535)
			{
				itemfile = file_text_open_read("files/itemData/keyItems1.txt");
			}
	
			else if(slot > 1535 && slot <= 1663)
			{
				itemfile = file_text_open_read("files/itemData/keyItems2.txt");
			}
	
	
			fileSlot = slot % 128;
	
			for(i = 0; i < 128; i++)
			{
				if(real(file_text_readln(itemfile)) == fileSlot)
				{
					break;
				}
				for(j = 28; j >= 0; j--)
				{
					file_text_readln(itemfile);
				}
			}
	
	
			
			for(i = 27; i >= 0; i--)
			{
				values[i] = 0;
			}
			
			file_text_readln(itemfile);
			for(i = 0; i < 28; i++)
			{
				values[i] = real(file_text_readln(itemfile));
			}
		
			if(is_struct(identifier)){
				for(i = 1; i < 28; i++){
					identifier.equipment[h,i] = values[i];
				}
			}else{
				for(i = 0; i < 28; i++){
					eqStats[h,i] = values[i];
				}
			}
	
			file_text_close(itemfile);
		}
	}


}
