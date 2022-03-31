/// @description initialize variables
//initialize();
//truex = 0; //the actual x coord that the player appears at on the overworld
//truey = 0; //ditto for y coord
depth = -1;
instance_create_depth(x, y, 0, obj_camera);
velo = 32/global.ovSp; //the number of pixels that the player will move per frame
stopped = true; //whether or not the player has arrived at a tile and is awaiting an input
still = true;
stillTimer = 0;
timer = 0;
x=global.worldx*32;
y=global.worldy*32;
worldLayer = global.layerStore;

petting = false;

pettingFrame = 0;
pettingFrameCounter = 0;
pettingSpeed = 6;

teleportOffset = 0;

animCounter = 0;
animFrame = 0;
animRate = 8;
inMotion = false;
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

teleporting = false;
teleportSpeed = 0;

northRoom = undefined;
southRoom = undefined;
eastRoom = undefined;
westRoom = undefined;

if(room == rm_worldMap1){
	northRoom = rm_worldMap5;
	southRoom = rm_worldMap6;
	eastRoom = rm_worldMap4;
	westRoom = rm_worldMap2;
}else if(room == rm_worldMap2){
	northRoom = rm_worldMap5;
	southRoom = rm_worldMap6;
	eastRoom = rm_worldMap1;
	westRoom = rm_worldMap3;
}else if(room == rm_worldMap3){
	northRoom = rm_worldMap5;
	southRoom = rm_worldMap6;
	eastRoom = rm_worldMap2;
	westRoom = rm_worldMap4;
}else if(room == rm_worldMap4){
	northRoom = rm_worldMap5;
	southRoom = rm_worldMap6;
	eastRoom = rm_worldMap3;
	westRoom = rm_worldMap1;
}else if(room == rm_worldMap5){
	northRoom = rm_worldMap3;
	southRoom = rm_worldMap1;
	eastRoom = rm_worldMap4;
	westRoom = rm_worldMap2;
}else if(room == rm_worldMap6){
	northRoom = rm_worldMap1;
	southRoom = rm_worldMap3;
	eastRoom = rm_worldMap4;
	westRoom = rm_worldMap2;
}