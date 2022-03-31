/// @description Insert description here
// You can write your code in this editor
gridx = 0;
gridy = 0;

x = gridx*32;
y = gridy*32;

lastx = gridx;
lasty = gridy;

moving = false;
velo = 2;

settled = false;

refreshTime = 0;
refreshLimit = 16;

storeMapData = global.map[gridx, gridy];

initialized = 0;

