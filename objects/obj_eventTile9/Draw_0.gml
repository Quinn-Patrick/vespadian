if(gridx == global.ovx && gridy == global.ovy && global.event == -1 && global.stopped){
	eventGo(2);
	global.events[eventID] = true;
	instance_destroy(self);
}

