// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getItemName(itemId){
	return getItemDat(itemId, -1);
	
	/*output = ds_map_find_value(global.itemNames, itemId);
	
	
	if(is_undefined(output)){
		ds_map_add(global.itemNames, itemId, getItemDat(itemId, -1));
		output = ds_map_find_value(global.itemNames, itemId);
	}
	return output;*/

}