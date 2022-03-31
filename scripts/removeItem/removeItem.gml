function removeItem(argument0, argument1) {
	itemID = argument0;
	removeCount = argument1;

	for(slot = 0; slot < 3001; slot++){
		if(global.stock[slot, 0] == itemID){
			itemDecrement(slot, removeCount);
			return true;
		}
	}
	return false;


}
