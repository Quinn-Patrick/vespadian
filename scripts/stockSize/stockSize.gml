function stockSize() {
	size = 0;

	for(bb = 1999; bb >-1; bb--)
	{
		if(global.stock[bb,0] != -1)
		{
			size = bb;
			return size;
		}
	}
	return 0;


}
