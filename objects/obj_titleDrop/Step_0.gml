/// @description Insert description here
// You can write your code in this editor
if(fadeTimer < fadeRate){
	image_alpha += 1/fadeRate;
}
else if(fadeTimer > fadeRate + holdTime){
	image_alpha -= 1/fadeRate;
}

if(fadeTimer > 2*fadeRate + holdTime + extraTime){
	global.ovx = 32;
	global.ovy = 23;
	partyJoin(1);
	partyLeave(4);
	global.layerStore = 1;
	global.leader = 1;
	room_goto(rm_catacombsSave1)
}

fadeTimer += 1;