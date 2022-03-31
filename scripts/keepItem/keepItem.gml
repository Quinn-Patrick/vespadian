function keepItem(argument0) {
	itemNumber = argument0;
	itemT = getItemDat(itemNumber, 0);

	if(itemT != 0 && itemT != 8) return false;


	for(i = 0; i < 4; i++)
	{
		charNum = global.party[i];
		if(charNum != -1)
		{
			for(j = 0; j < global.party[i].invenSize; j++)
			{
				if(global.party[i].inven[j] == -1)
				{
					giveItem(itemNumber, charNum, j);
					return true;
				}
			}
		}
	}
	return false;


}
