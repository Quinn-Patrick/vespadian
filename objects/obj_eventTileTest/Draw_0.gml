if(gridx == global.ovx && gridy == global.ovy && global.event == -1 && global.stopped){
	eventGo(0);
	instance_destroy(self);
}

draw_self();
