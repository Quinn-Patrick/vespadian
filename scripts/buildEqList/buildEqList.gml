function buildEqList(argument0, argument1, argument2) {
	list = argument0;
	partyMem = argument1;
	slotNumber = argument2;

	ds_list_clear(list);

	invenSize = stockSize();

	for(ag = 0; ag < invenSize+1; ag++)
	{
		itemIdent = global.stock[ag, 0];
		itemName = global.stockN[ag];
		if(slotNumber == 0)
		{
			if(getItemDat(itemIdent, 0) == 2 || getItemDat(itemIdent, 0) == 4)
			{
				if(partyMem.equipCodes[getItemDat(itemIdent, 20)] == true)
				{
					ds_list_add(list, ag);
				}
			}
		}
		else if(slotNumber == 1)
		{
			if(getItemDat(itemIdent, 0) == 3 || (partyMem.equipCodes[33]==1 && getItemDat(itemIdent, 0) == 2))
			{
				hello = getItemDat(itemIdent, 20);
				if(partyMem.equipCodes[getItemDat(itemIdent, 20)] == true)
				{
					ds_list_add(list, ag);
				}
			}
		}
		else if(slotNumber == 2)
		{
			if(getItemDat(itemIdent, 0) == 5)
			{
				if(partyMem.equipCodes[getItemDat(itemIdent, 20)] == true)
				{
					ds_list_add(list, ag);
				}
			}
		}
		else if(slotNumber == 3)
		{
			if(getItemDat(itemIdent, 0) == 6)
			{
				if(partyMem.equipCodes[getItemDat(itemIdent, 20)] == true)
				{
					ds_list_add(list, ag);
				}
			}
		}
		else if(slotNumber == 4 || slotNumber == 5)
		{
			if(getItemDat(itemIdent, 0) == 7)
			{
				if(partyMem.equipCodes[getItemDat(itemIdent, 20)] == true)
				{
					ds_list_add(list, ag);
				}
			}
		}
	}



	if(ds_list_size(list) > 0)
	{
		return true;
	}
	else return false;


}
