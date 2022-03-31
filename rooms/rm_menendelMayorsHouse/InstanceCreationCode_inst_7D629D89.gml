eventID = 441;

cutsceneNumber = 84;

if(getItemCount(1409) < 1){
	instance_destroy();
}else if(!global.events[441]){
	global.shipx = 56;
	global.shipy = 84;
}
