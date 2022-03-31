if(gridx == global.ovx && gridy == global.ovy && global.event == -1 && global.stopped && !global.events[eventID]){
	eventGo(6);
	global.events[eventID] = true;
	instance_destroy(self);
}


