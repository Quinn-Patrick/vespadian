function buildMenu(argument0, argument1) {
	chosenItem = argument0;
	menuState = argument1;

	ds_list_clear(miniMenuList);

	itemType = getItemType(chosenItem);

	/*
	0 = use
	1 = give
	2 = trash
	3 = back
	4 = take
	*/

	if(menuState == 0)
	{
		if(itemType = 0)
		{
			ds_list_add(miniMenuList, 0);
			ds_list_add(miniMenuList, 1);
			ds_list_add(miniMenuList, 2);
			ds_list_add(miniMenuList, 5);
			ds_list_add(miniMenuList, 3);
		}
		else if(itemType >= 1 && itemType <= 7)
		{
			ds_list_add(miniMenuList, 1);
			ds_list_add(miniMenuList, 2);
			ds_list_add(miniMenuList, 5);
			ds_list_add(miniMenuList, 3);
		}
		else if(itemType == 8)
		{
			ds_list_add(miniMenuList, 1);
			ds_list_add(miniMenuList, 2);
			ds_list_add(miniMenuList, 5);
			ds_list_add(miniMenuList, 3);
		}
		else if(itemType == 9)
		{
			ds_list_add(miniMenuList, 0);
			ds_list_add(miniMenuList, 2);
			ds_list_add(miniMenuList, 5);
			ds_list_add(miniMenuList, 3);
		}
		else if(itemType == 10)
		{
			ds_list_add(miniMenuList, 1);
			ds_list_add(miniMenuList, 5);
			ds_list_add(miniMenuList, 3);
		}
		
	}
	else
	{
		if(itemType = 0)
		{
			ds_list_add(miniMenuList, 0);
			ds_list_add(miniMenuList, 4);
			ds_list_add(miniMenuList, 2);
			ds_list_add(miniMenuList, 3);
		}
		else if(itemType >= 1 && itemType <= 7)
		{
			ds_list_add(miniMenuList, 4)
			ds_list_add(miniMenuList, 2);
			ds_list_add(miniMenuList, 3);
		}
		else if(itemType == 8)
		{
			ds_list_add(miniMenuList, 4);
			ds_list_add(miniMenuList, 2);
			ds_list_add(miniMenuList, 3);
		}
		else if(itemType == 9)
		{
			ds_list_add(miniMenuList, 4);
			ds_list_add(miniMenuList, 2);
			ds_list_add(miniMenuList, 3);
		}
		else if(itemType == 10)
		{
			ds_list_add(miniMenuList, 4);
			ds_list_add(miniMenuList, 3);
		}
	}


}
