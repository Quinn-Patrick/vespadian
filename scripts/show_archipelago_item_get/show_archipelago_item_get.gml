// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_archipelago_item_get(itemName, playerName){
	global.control = false;
	content = "Sent " + itemName + " to " + playerName + "!"
	//file_text_close(words);

	ready = showText(content);

	if(key(9) && ready)
	{
	    global.control = true;
	    global.line = -2;
	    global.inDial = false;
    
	}

}