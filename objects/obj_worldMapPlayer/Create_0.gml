/// @description initialize variables
//initialize();

//truex = 0; //the actual x coord that the player appears at on the overworld
//truey = 0; //ditto for y coord
depth = -1;
//instance_create_depth(x, y, 0, obj_camera);
velo = 32/global.ovSp //the number of pixels that the player will move per frame
stopped = true; //whether or not the player has arrived at a tile and is awaiting an input
still = true;
stillTimer = 0;

animCounter = 0;
animFrame = 0;
animRate = 8;

global.hasMoved = false; //keeps track of whether or not the player has moved since arriving in the current room
global.stopped = true;

dir = global.dirStore;
threat = 0;

while(is_undefined(global.party[global.leaderIndex])){
	global.leaderIndex++;
	if(global.leaderIndex > 3) global.leaderIndex = 0;
}
global.leader = global.party[global.leaderIndex];
sprites = getCharacterSprites(global.leader);
sideSpr = sprites[2];
frontSpr = sprites[0];
backSpr = sprites[1];

layerChanging = 0;

