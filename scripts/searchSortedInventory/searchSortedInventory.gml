// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function searchSortedInventory(sortedInvenList, targetItem){
	bottom = 0;
	top = ds_list_size(sortedInvenList)-1;
	
	
	
	if(ds_list_empty(sortedInvenList)) return 0;
	while(true){
		searchIndex=bottom+floor((top-bottom)/2);
		foundItem = sortedInvenList[| searchIndex];
		hello = foundItem[0];
		if(foundItem[0] == targetItem) return foundItem[1];
		else if(bottom == top-1 || bottom == top){
			return 0;
		}
		else{
			if(foundItem[0] > targetItem){
				top = searchIndex;
			}else{
				bottom = searchIndex;
			}
		}
	}
}