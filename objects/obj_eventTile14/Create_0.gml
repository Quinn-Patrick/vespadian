/// @description initialize event
state = 0;
//file = "dialogue.txt";
lineIn = 0;
lineLa = 1;
worldLayer = 1;
eventID = 14;
if(global.events[eventID]){
	instance_destroy(self);
}

///initialize variables
gridx = 0;
gridy = 0;
lastx = 0;
lasty = 0;
depth = -1;

