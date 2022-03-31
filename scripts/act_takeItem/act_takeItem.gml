function act_takeItem(argument0, argument1) {
	itemID = argument0;
	itemCount = argument1;
	itemDecrement(findItemIndex(itemID), itemCount);

	return true;


}
