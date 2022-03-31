function checkAbBatt(argument0, argument1) {
	fighterId = argument0;
	abilityId = argument1;
	output = 0;
	for(bf = 0; bf < ds_list_size(fighterId.abis); bf++)
	{
		if(ds_list_find_value(fighterId.abis, bf) == abilityId) output++;
	}
	return output;


}
