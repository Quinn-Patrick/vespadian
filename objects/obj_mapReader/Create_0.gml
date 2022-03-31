for(i = 0; i < room_height/32; i++){
	for(j = 0; j < room_width/32; j++){
		global.map[j,i] = 65536;
		global.solids[j,i] = 65536;
	}
}

he=24;
wi=32;
initialized = false; //due to execution order, we must wait 'til the step event to do some stuff. This insures that we don't do it more than once.





