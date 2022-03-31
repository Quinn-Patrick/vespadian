/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
depth = -1001;

state = 0;
frontSprite = spr_mariaFront;
backSprite = spr_mariaBack;
sideSprite = spr_mariaSide;
dir = 0;
gridx = x/32;
gridy = y/32;
worldLayer = 1;
lastx= gridx;
lasty = gridy;
hasItem = getItemCount(1409);
cleared = false;