function newGame() {
	
	global.money = 3000;
	global.ovx = 25;
	global.ovy = 80;
	if(global.archipelago && global.networkObject == undefined){
		global.networkObject = instance_create_depth(0,0,0,obj_networking);
	}

	room_goto(rm_opening1);
}
