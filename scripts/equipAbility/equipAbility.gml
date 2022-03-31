function equipAbility(argument0, argument1) {
	partySlot = argument0;
	abilitySlot = argument1;

	if(ds_list_find_value(partySlot.abilities,abilitySlot)[1])
	{
		ds_list_replace(partySlot.abilities, abilitySlot, [partySlot.abilities[| abilitySlot][0], false]);
		partySlot.curAp += getAbilityCost(partySlot.abilities[| abilitySlot][0]);
		calcParty();
		return true;
	}

	if(partySlot.curAp >= getAbilityCost(partySlot.abilities[| abilitySlot][0]))
	{
		ds_list_replace(partySlot.abilities, abilitySlot, [partySlot.abilities[| abilitySlot][0], true]);
		partySlot.curAp -= getAbilityCost(partySlot.abilities[| abilitySlot][0]);
		calcParty();
		return true;
	}

	return false;


}
