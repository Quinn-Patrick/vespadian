// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function chooseRandomListElement(listIn){
	if(ds_list_size(listIn) == 0) return -1;
	
	index = irandom_range(0, ds_list_size(listIn)-1);
	return ds_list_find_value(listIn, index);

}