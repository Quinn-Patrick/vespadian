function update_obtains(ap_item, senderName){
	get_name(senderName) //Gets the name of the id specified
	item_name = getItemName(ap_item);
	show_debug_message("You received " + item_name + " from " + global.lastPlayerSent);
	global.lastItemSent = ap_item;
	set_items();
}

function set_items(){ //A special function made to be a nice, clean representation of updating items.
	stockItem(global.lastItemSent, 1);
}
