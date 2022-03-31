if(gridx == global.ovx && gridy == global.ovy && global.event == -1 && global.stopped){
	//global.inDial = true;
	global.control = false;
	inTransition = true;
	
	
}

if(inTransition){
	if(transitionTimer == 1) sound(snd_areaExit);
	transitionTimer++;
	draw_rectangle_color(0,0,1024, 768*(transitionTimer/transitionTimerLimit), c_black, c_black, c_black, c_black, false);
}

if(transitionTimer > transitionTimerLimit){
	global.control = true;
	if(global.exitEvent > -1){
		global.worldx = worldExitX;
		global.worldy = worldExitY;
		room_goto(rm_grassyField);
	}
	else{
		global.canTeleport = false;
		if(is_undefined(targetRoom)) targetRoom = rm_worldMap1;
		toWorldMap(worldExitX,worldExitY,targetRoom);
	}
}

