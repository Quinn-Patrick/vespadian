/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
depth = -1001;
state = 0;
frontSprite = spr_rando6Front;
backSprite = spr_rando6Back;
sideSprite = spr_rando6Side;
dir = 3;
gridx = x/32;
gridy = y/32;
worldLayer = 1;
lastx= gridx;
lasty = gridy;
talking = 0;
switcher = 1;
state = 0;
//if(global.events[84]) instance_destroy(self);