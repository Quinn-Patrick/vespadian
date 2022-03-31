function craft(argument0, argument1, argument2) {
	item = argument0;
	materials = argument1;
	multiplier = argument2;

	if(checkCraftable(materials, multiplier)){
		for(i = 0; i < ds_list_size(materials); i++){
			currentMaterial = ds_list_find_value(materials, i);
			itemDecrement(findItemIndex(real(currentMaterial[0])), real(currentMaterial[1])*multiplier);
		}
		stockItem(item, multiplier);
	}


}
