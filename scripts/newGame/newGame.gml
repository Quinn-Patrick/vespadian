function newGame() {
	
	global.money = 3000;
	global.ovx = 25;
	global.ovy = 80;
	if(global.archipelago && global.networkObject == undefined){
		reconnect();
	}

	room_goto(rm_opening1);
}
