if(gridx == global.ovx && gridy == global.ovy && global.event == -1 && global.stopped){
	//global.inDial = true;
	global.events[eventID] = true;
	eventGo(8);
	instance_destroy(self);
    state = 1;
}

