/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
depth = -1001;

state = 0;
frontSprite = spr_rando2Front;
backSprite = spr_rando2Back;
sideSprite = spr_rando2Side;
dir = 3;
gridx = x/32;
gridy = y/32;
worldLayer = 1;
lastx= gridx;
lasty = gridy;
hasItem = getItemCount(1424);
cleared = false;