function findItemIndex(argument0) {
	itemId = real(argument0);

	for(bn = 0; bn < 2000; bn++)
	{
		if(global.stock[bn,0] == itemId)
		{
			return bn;
		}
	}
	return -1;


}
