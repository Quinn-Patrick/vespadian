function charInit(argument0) {
	instId = argument0;


	if(instId.friend)
	{
		ds_list_add(global.ally, instId);
		instId.x = 672+instId.col*64;
		instId.y = 389+instId.row*64;
		instId.basex = instId.x;
	}
	else
	{
		ds_list_add(global.enemy, instId);
		instId.x = 351-instId.col*64;
		instId.y = 384+instId.row*64;
		instId.basex = instId.x
		global.xpTot += instId.xp;
	}


}
