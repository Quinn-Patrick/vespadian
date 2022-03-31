function turnRemove(argument0) {
	pos = argument0;

	for(s = 0; s < ds_list_size(global.order); s++)
	{
		if(global.order[| s] == pos)
		{
			ds_list_delete(global.order, s);
			//ds_list_add(global.order, turnSort());
			turnSort();
		}
	}


}
