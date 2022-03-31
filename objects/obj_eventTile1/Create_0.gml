/// @description initialize event
if(global.events[0])
	instance_destroy(self);

state = 0;
//file = "dialogue.txt";
lineIn = 0;
lineLa = 1;
worldLayer = 1;

///initialize variables
gridx = 0;
gridy = 0;
lastx = 0;
lasty = 0;
depth = -10000;
