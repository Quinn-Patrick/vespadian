function checkAbField(argument0, argument1) {
	partyMem = argument0;
	abiId = argument1;
	
	if(is_struct(partyMem)){
		abilityList = partyMem.abilities;
	}else abilityList = partyMem.abis;

	for(bf = 0; bf < ds_list_size(abilityList); bf++)
	{
		if(is_struct(partyMem)){
			if(ds_list_find_value(abilityList, bf)[0] == abiId)
			{
				if(ds_list_find_value(abilityList, bf)[1]) return true;
			}
		}else{
			if(ds_list_find_value(abilityList, bf) == abiId) return true;
		}
	}
	return false;


}
