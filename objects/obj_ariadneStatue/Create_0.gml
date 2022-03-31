/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
depth = -1001;
state = 0;
frontSprite = spr_ariadneFront;
backSprite = spr_ariadneBack;
sideSprite = spr_ariadneSide;
dir = 3;
gridx = x/32;
gridy = y/32;
worldLayer = 1;
lastx= gridx;
lasty = gridy;

if(global.events[84]) instance_destroy(self);