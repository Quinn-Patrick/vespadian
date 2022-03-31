function flee(argument0) {
	runner = argument0;

	if(runner.friend)
	{
		side = 0;
	}
	else side = 1;

	avAgi = 0;
	messages[0] = 0;
	messages = loadMisc(2, 11, 13);
	if(side == 0)
	{
		for(i = 0; i < ds_list_size(global.enemy); i++)
		{
			avAgi += global.enemy[| i].agi;
		}
		avAgi /= ds_list_size(global.enemy);
	}
	else 
	{
		for(i = 0; i < ds_list_size(global.ally); i++)
		{
			avAgi += global.ally[| i].agi;
		}
		avAgi /= ds_list_size(global.ally);
	}
	success = statContest(runner, global.enemy[| 0], runner.agi, avAgi, obj_battleHandler.runVal, 0);

	obj_battleHandler.runVal++;


	if(global.runnable){
		if(!success){
			success = true;
			sendMessage("", messages[0]);
		}
		else{
			success = false; //I have to flip this cause of the way I wrote the statContest() function :/
			sendMessage("", messages[1]);
		}
	}else{
		sendMessage("", messages[2]);
		success = false;
	}

	return success;


}
