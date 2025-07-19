/// @desc Function Description
/// @param {any*} ap_item Description
/// @param {real} senderName Description
/// @param {real} location Description
function update_obtains(ap_item, senderName, location){
	get_name(senderName) //Gets the name of the id specified
	item_name = getItemName(ap_item);
	global.lastItemSent = ap_item;
	if(global.lastItemSent == 1664){
		goal_complete();
	} 
	set_items(location);
}

function set_items(location){
	if(global.lastItemSent < 0 || global.lastItemSent >= 1664) return;
	stockItem(global.lastItemSent, 1);
}
