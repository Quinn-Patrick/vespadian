if(gridx == global.ovx && gridy == global.ovy && global.event == -1 && global.stopped){
	global.inDial = true;
    state = 1;
}
if(global.inDial && state == 1)
{
    dialogue("dialogue.txt", 36, 36);
}
if(state == 2){
	global.events[0] = true;
	instance_destroy(self);
}

