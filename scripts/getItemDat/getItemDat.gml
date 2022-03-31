function getItemDat(argument0, argument1) {
	itId = argument0;
	datType = argument1;
	
	if(datType == -1) datType = 28;
	
	
	outputArray = ds_map_find_value(global.itemData, itId);
	
	if(is_undefined(outputArray)){
		ds_map_add(global.itemData, itId, getItemDatFromFile(itId))
		outputArray = ds_map_find_value(global.itemData, itId);
	}
	return outputArray[datType];
}
