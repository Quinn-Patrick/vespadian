if(!initialized){
	if(global.events[383]){
		switch(dir){
			case 1: dir = 2; break;
			case 2: dir = 1; break;
			case 3: dir = 4; break;
			case 4: dir = 3; break;
		}
	}
	initialized = true;
}

gridx = x/32;
gridy = y/32;
if(global.inDial == 0)
{
    state = 0;
}
lastx = gridx;
lasty = gridy;



