function saveGame(argument0) {
	fileNum = argument0;

	saveFile = file_text_open_write("file"+string(fileNum)+".txt");

	file_text_write_real(saveFile,1);
	file_text_writeln(saveFile);
	
	file_text_write_string(saveFile,"E");
	file_text_writeln(saveFile);
	
	file_text_write_string(saveFile, global.inGameRoomName);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile, global.money);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.gameTime);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,current_year);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,current_month);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,current_day);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,current_hour);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,current_minute);
	file_text_writeln(saveFile);
	
	
	
	for(i = 0; i < 4; i++){
		if(is_undefined(global.party[i])){
			file_text_write_real(saveFile, -1);
			file_text_writeln(saveFile);
			file_text_write_real(saveFile, -1);
			file_text_writeln(saveFile);
			file_text_write_real(saveFile, -1);
			file_text_writeln(saveFile);
			file_text_write_real(saveFile, -1);
			file_text_writeln(saveFile);
			file_text_write_real(saveFile, -1);
			file_text_writeln(saveFile);
		}else{
			file_text_write_string(saveFile, global.party[i].name);
			file_text_writeln(saveFile);
			file_text_write_real(saveFile, global.party[i].class);
			file_text_writeln(saveFile);
			file_text_write_real(saveFile, global.party[i].gender);
			file_text_writeln(saveFile);
			file_text_write_real(saveFile, global.party[i].costume);
			file_text_writeln(saveFile);
			file_text_write_real(saveFile, global.party[i].level);
			file_text_writeln(saveFile);
		}
	}
	
	file_text_write_string(saveFile,"V");
	file_text_writeln(saveFile);
	for(bm = 0; bm < 4; bm++)
	{
		serializeCharacter(global.party[bm], saveFile);
	}
	file_text_write_string(saveFile,"S");
	file_text_writeln(saveFile);
	for(bm = 0; bm <= 1999; bm++)
	{
		file_text_write_real(saveFile, global.stock[bm,0]);
		file_text_writeln(saveFile);
		file_text_write_real(saveFile, global.stock[bm,1]);
		file_text_writeln(saveFile);
		file_text_write_real(saveFile, global.stock[bm,2]);
		file_text_writeln(saveFile);
		file_text_write_string(saveFile, global.stockN[bm]);
		//file_text_writeln(saveFile);
	}

	file_text_write_string(saveFile,"O");
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.ovx);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.ovy);
	file_text_writeln(saveFile);
	file_text_write_string(saveFile,room_get_name(room));

	file_text_writeln(saveFile);
	file_text_write_string(saveFile,"$");
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.money);
	file_text_writeln(saveFile);

	file_text_write_string(saveFile,"*");
	file_text_writeln(saveFile);
	for(bm = 0; bm <= 3000; bm++)
	{
		file_text_write_real(saveFile, global.chests[bm]);
		file_text_writeln(saveFile);
	}
	file_text_write_string(saveFile,"!");
	file_text_writeln(saveFile);
	for(bm = 0; bm <= 3000; bm++)
	{
		file_text_write_real(saveFile, global.events[bm]);
		file_text_writeln(saveFile);
	}

	file_text_write_string(saveFile,"@");
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.gameTime);
	file_text_writeln(saveFile);
	file_text_write_string(saveFile,"L");
	file_text_writeln(saveFile);
	if(room != rm_worldMap1)file_text_write_real(saveFile,obj_player.worldLayer);
	else file_text_write_real(saveFile, 0);
	file_text_writeln(saveFile);
	file_text_write_string(saveFile,"W");
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.worldx);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.worldy);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.leaderIndex);
	file_text_writeln(saveFile);
	file_text_write_string(saveFile,"X");
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.shipx);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.shipy);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.vehicle);
	file_text_writeln(saveFile);
	file_text_write_string(saveFile,room_get_name(global.shipRoom));
	file_text_writeln(saveFile);
	
	file_text_write_string(saveFile,"Y");
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.airshipx);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.airshipy);
	file_text_writeln(saveFile);
	file_text_write_string(saveFile,room_get_name(global.airshipRoom));
	file_text_writeln(saveFile);
	
	file_text_write_string(saveFile,"Z");
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.teleX);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.teleY);
	file_text_writeln(saveFile);
	file_text_write_real(saveFile,global.canTeleport);
	file_text_writeln(saveFile);
	file_text_write_string(saveFile,room_get_name(global.teleTarget));
	file_text_writeln(saveFile);
	
	for(ca = 0; ca < ds_list_size(global.characterBench); ca++)
	{
		file_text_write_string(saveFile,"[");
		file_text_writeln(saveFile);
		serializeCharacter(global.characterBench[| ca], saveFile);
	}
	
	file_text_close(saveFile);
	sound(snd_newGame);
}
