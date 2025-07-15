/// @desc Function Description
/// @param {any*} ap_item Description
/// @param {real} senderName Description
/// @param {real} location Description
function update_obtains(ap_item, senderName, location){
	if(location < 2000 && global.chests[location - 1000]){
		return;
	}
	if(location > 1999 && location < 3000 && global.events[location - 2000]){
		return;
	}
	get_name(senderName) //Gets the name of the id specified
	item_name = getItemName(ap_item);
	show_debug_message("You received " + item_name + " from " + global.lastPlayerSent);
	global.lastItemSent = ap_item;
	set_items(location);
}

function set_items(location){
	if(global.lastItemSent < 0) return;
	if(location < 2000){
		global.chests[location - 1000] = true;
	}
	if(location > 1999 && location < 3000){
		global.events[location - 2000] = true;
	}
	stockItem(global.lastItemSent, 1);
}
