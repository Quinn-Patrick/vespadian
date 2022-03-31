global.collisionMap = "";

encFile = "";

encInit(encFile);

global.roomType = 0;
if(!global.events[248])global.mainBgm = mus_nothing;
else global.mainBgm = mus_church;
global.musicCategory = 0;
global.defTile = spr_stalagmites;

global.inGameRoomName = "The Banks of the Other Side";

global.battleBackground = bg_afterworld;

global.teleportRoom = undefined;
global.teleportX = 0;
global.teleportY = 0;