function gridPlace(argument0, argument1, argument2, argument3) {
	whichGrid = argument0;
	char = argument1;
	gX = argument2;
	gY = argument3;

	if(whichGrid)
	{
		global.pGrid[gX,gY] = char;
	}
	else
	{
		global.eGrid[gX,gY] = char;
	}


}
