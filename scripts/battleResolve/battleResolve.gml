function battleResolve() {
	//global.xpTot *= 1+((ds_list_size(global.enemy)-1)*0.2);
	global.xpTot *= global.expMultiplier;
	eligibleMembers = totalParty();
	if(eligibleMembers < 1) global.xpTot = 0;
	else global.xpTot /= totalParty();
	global.battleOver = true;
	for(ak = 0; ak < ds_list_size(global.loot); ak++)
	{
		stockItem(global.loot[| ak], 1);
	}


}
