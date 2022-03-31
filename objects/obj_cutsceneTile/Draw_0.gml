if(gridx == global.ovx && gridy == global.ovy && global.event == -1 && global.stopped){
	//global.inDial = true;
	if(singleOccurence)global.events[eventID] = true;
	eventGo(cutsceneNumber);
	instance_destroy(self);
    state = 1;
}

