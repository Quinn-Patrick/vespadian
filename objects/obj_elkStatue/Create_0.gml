/// @description Insert description here
// You can write your code in this editor
xCoord = x/32;
yCoord = y/32;

gridx = xCoord;
gridy = yCoord;
lastx = 0;
lasty = 0;
worldLayer = 1;
image_speed = 0;
depth = -1600;
if(!global.events[54])instance_destroy();