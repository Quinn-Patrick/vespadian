function eventGo(argument0) {
	evNum = argument0;
	global.event = evNum;
	instance_create_depth(0, 0, -100, obj_evManager);


}
