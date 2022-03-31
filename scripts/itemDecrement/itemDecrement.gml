function itemDecrement(slotNum, number) {
	//decrement the number of the item in a particular slot (slotNum) by an amount (number)
	//this function uses the slot number instead of the item id because it was originally written
	//for inventory management, where the id of the item is less important than the selected slot
	//To use it for taking away a particular item id, combine this function with findItemIndex
	
	if(slotNum < 0 || slotNum > 2000) return; //deal with invalid inventory slots
	
	global.stock[slotNum, 2] -= number; //decrement the number of items in the given inventory slot

	//make sure it can't go below zero
	if(global.stock[slotNum, 2] <= 0)
	{
		global.stock[slotNum, 0] = -1;
		global.stock[slotNum, 1] = -1;
		global.stock[slotNum, 2] = 0;
		global.stockN[slotNum] = "";
	}

	if(global.stock[slotNum, 2] == 0) collapseStock(); //collapse the empty slot if an empty slot occurs

}
