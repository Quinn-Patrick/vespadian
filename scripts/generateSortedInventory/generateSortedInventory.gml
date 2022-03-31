// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateSortedInventory(sortedInvenList){
	ds_list_clear(sortedInvenList);
	for(i = 0; i < 1999; i++){
		if(global.stock[i,0] != -1){
			if(ds_list_empty(sortedInvenList)){
				ds_list_add(sortedInvenList, [global.stock[i,0], global.stock[i,2]]);
			}else{
				for(j = 0; j < ds_list_size(sortedInvenList); j++){
					currentItem = global.stock[i,0];
					compareItem = ds_list_find_value(sortedInvenList, j);
					hello = compareItem[0]
					if(j == 0){
						if(currentItem < compareItem[0]){
							ds_list_insert(sortedInvenList, 0, [global.stock[i,0], global.stock[i,2]]);
							break;
						}
					}
					if(currentItem < compareItem[0] && currentItem > ds_list_find_value(sortedInvenList, j-1)[0]){
						ds_list_insert(sortedInvenList, j, [global.stock[i,0], global.stock[i,2]]);
						break;
					}
					
					/*if(currentItem > compareItem[0]){
						if(j < ds_list_size(sortedInvenList)-1 && currentItem < ds_list_find_value(sortedInvenList, j+1)[0])ds_list_insert(sortedInvenList, j+1, [global.stock[i,0], global.stock[i,2]]);
						break;
					}else if(currentItem > ds_list_find_value(sortedInvenList, j-1)[0])ds_list_insert(sortedInvenList, j, [global.stock[i,0], global.stock[i,2]]);*/
					if(j == ds_list_size(sortedInvenList)-1){
						ds_list_add(sortedInvenList, [global.stock[i,0], global.stock[i,2]]);
						break;
					}
				}
			}
		}
	}
}