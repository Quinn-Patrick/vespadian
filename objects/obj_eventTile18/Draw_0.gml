if(gridx == global.ovx && gridy == global.ovy && global.event == -1 && global.stopped){
	global.inDial = true;
    state = 1;
}
if(global.inDial && state == 1)
{
    dialogue("dialogue.txt", 37, 37);
}
if(state == 2){
	global.events[eventID] = true;
	global.eventEnc = 0;
	clearTroupe();
	global.troupe[0,0] = 11;
	global.troupe[0,1] = 0;
	global.troupe[0,2] = 0;
	
	global.runnable = false;
	gotoBattle();
	instance_destroy(self);
}
draw_self();
