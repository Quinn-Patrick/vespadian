function checkCraftable(argument0, argument1) {
	materials = argument0;
	multiplier = argument1;



	for(i = 0; i < ds_list_size(materials); i++){
		currentMaterial = ds_list_find_value(materials, i);

		if(getItemCount(real(currentMaterial[0])) < real(currentMaterial[1])*multiplier){
			return false;
		}
	}
	return true;


}
