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
    foundItemText("files/misc1.txt", 1, 1, "Archipelago Item");
}

if(!global.chests[chestNum])
{
	draw_sprite(spr_chestClosed, 0, x, y);
}
else
{
	draw_sprite(spr_chestOpened, 0, x, y);
}

