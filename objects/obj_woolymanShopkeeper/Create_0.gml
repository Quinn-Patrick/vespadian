/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
depth = -1001;
state = 0;
frontSprite = spr_vitruviusFront;
backSprite = spr_vitruviusBack;
sideSprite = spr_vitruviusSide;
dir = 3;
gridx = x/32;
gridy = y/32;
worldLayer = 1;
lastx= gridx;
lasty = gridy;
talking = 0;
switcher = 1;

//if(global.events[84]) instance_destroy(self);