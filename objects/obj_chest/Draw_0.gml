if(interact(gridx, gridy)&&!global.inDial && !global.chests[chestNum] && worldLayer == obj_player.worldLayer)
{
    global.inDial = true;
	sound(snd_open);
    state = 1;
    if(!global.archipelago){
		if(!keepItem(chestCont)){
			stockItem(chestCont, 1);
		}
	}
	else {
		send_check(chestNum + 1000);
	}
	global.chests[chestNum] = true;
}
if(global.inDial == true && state == 1)
{
	delayTimer++;
	if(delayTimer == 25)sound(snd_treasure);
	if(!global.archipelago){
		foundItemText("files/misc1.txt", 1, 1, getItemName(chestCont));
	}else{
		var locationIndex = 1000 + chestNum;
		var scoutedLocation = ds_map_find_value(global.scoutedItems, locationIndex);
		if(scoutedLocation == undefined){
			foundItemText("files/misc1.txt", 1, 1, "Archipelago Item");
		}else{
			var itemIndex = scoutedLocation.item;
			var playerSlot = scoutedLocation.player;
			var itemName = get_ap_item_name(itemIndex, playerSlot);
			var playerName = ds_map_find_value(global.playerNames, playerSlot).name;
			if(itemName == undefined || playerName == undefined){
				foundItemText("files/misc1.txt", 1, 1, "Archipelago Item");
			}
			show_archipelago_item_get(itemName, playerName);
		}
		//
	}
}

if(!global.chests[chestNum])
{
	draw_sprite(spr_chestClosed, 0, x, y);
}
else
{
	draw_sprite(spr_chestOpened, 0, x, y);
}

