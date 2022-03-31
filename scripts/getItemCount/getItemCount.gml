function getItemCount(itemKey) {

	for(bn = 0; bn < 1999; bn++)
	{
		if(global.stock[bn,0] == itemKey)
		{
			return global.stock[bn,2];
		}
	}
	return 0;


}
