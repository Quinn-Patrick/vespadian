function loadGame(argument0) {
	fileNum = argument0;

	loadFile = file_text_open_read("file"+string(fileNum)+".txt");

	if(file_text_eof(loadFile)){
		file_text_close(loadFile);
		return false;
	}

	if(real(file_text_readln(loadFile)) != 1)
	{
		file_text_close(loadFile);
		return false;
	}

	while(!file_text_eof(loadFile))
	{
		next = ord(file_text_readln(loadFile));
		if(next == 69)
		{
			for(l = 0; l < 28; l++){
				file_text_readln(loadFile)
			}
		}
		else if(next == 86)
		{
			for(l = 0; l < 4; l++){
				global.party[l] = deserializeCharacter(loadFile);
			}
		}
		else if(next == 83)
		{
			for(bm = 0; bm <= 1999; bm++)
			{
				global.stock[bm,0] = real(file_text_readln(loadFile));
				next2 = global.stock[bm,0];
				global.stock[bm,1] = real(file_text_readln(loadFile));
				global.stock[bm,2] = real(file_text_readln(loadFile));
				if(next2 != -1)global.stockN[bm] = file_text_readln(loadFile);
			}
		}
		else if(next == 84)
		{
			for(bm = 0; bm <= 399; bm++)
			{
				global.feats[bm]  = real(file_text_readln(loadFile));
				hello = global.feats[bm];
			}
		}
		else if(next == 79)
		{
			global.ovx = real(file_text_readln(loadFile));
			global.ovy = real(file_text_readln(loadFile));
			global.roomSave = cleanString(file_text_readln(loadFile));
		}
		else if(next == 36)
		{
			global.money = real(file_text_readln(loadFile));
		}
		else if(next == 42)
		{
			for(bm = 0; bm <= 3000; bm++)
			{
				global.chests[bm] = real(file_text_readln(loadFile));
			}
		}
		else if(next == 33)
		{
			for(bm = 0; bm <= 3000; bm++)
			{
				global.events[bm] = real(file_text_readln(loadFile));
			}
		}
		else if(next == 64)
		{
			global.gameTime = real(file_text_readln(loadFile));
		}
		else if(next == 76)
		{
			global.layerStore = real(file_text_readln(loadFile));
		}
		else if(next == 87)
		{
			global.worldx = real(file_text_readln(loadFile));
			global.worldy = real(file_text_readln(loadFile));
			if(!file_text_eof(loadFile))global.leaderIndex = real(file_text_readln(loadFile));
		}
		else if(next == 88)
		{
			global.shipx = real(file_text_readln(loadFile));
			global.shipy = real(file_text_readln(loadFile));
			global.vehicle = real(file_text_readln(loadFile));
			global.shipRoom = asset_get_index(cleanString(file_text_readln(loadFile)));
		}
		else if(next == 89)
		{
			global.airshipx = real(file_text_readln(loadFile));
			global.airshipy = real(file_text_readln(loadFile));
			global.airshipRoom = asset_get_index(cleanString(file_text_readln(loadFile)));
		}
		else if(next == 90)
		{
			global.teleX = real(file_text_readln(loadFile));
			global.teleY = real(file_text_readln(loadFile));
			global.canTeleport = real(file_text_readln(loadFile));
			global.teleTarget = asset_get_index(cleanString(file_text_readln(loadFile)));
		}
		else if(next == 91)
		{
			ds_list_add(global.characterBench, deserializeCharacter(loadFile));
		}
		calcBench();
	}
	calcParty();
	file_text_close(loadFile);
	
	return true;


}
