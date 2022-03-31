gridx = x/32;
gridy = y/32;
if(global.inDial == 0)
{
    state = 0;
}

if(global.events[13]){
	instance_destroy(self);
}

lastx = gridx;
lasty=gridy;

/*if(global.events[0])
{
	instance_destroy();
}*/

