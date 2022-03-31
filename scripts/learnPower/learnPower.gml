function learnPower(argument0, argument1) {
	char = argument0;
	powNum = argument1;


	for(j = 0; j < ds_list_size(char.powers); j++){
		if(ds_list_find_value(char.powers, j)== powNum){
			return false;
		}
	}

	ds_list_add(char.powers, powNum);

	return true;


}
