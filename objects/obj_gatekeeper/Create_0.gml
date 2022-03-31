/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
depth = -1001;

state = 0;
frontSprite = spr_rando7Front;
backSprite = spr_rando7Back;
sideSprite = spr_rando7Side;
dir = 3;
gridx = x/32;
gridy = y/32;
worldLayer = 1;
lastx= gridx;
lasty = gridy;
hasItem = getItemCount(1429);
cleared = false;