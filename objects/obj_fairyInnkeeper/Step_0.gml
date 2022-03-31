gridx = x/32;
gridy = y/32;
if(global.inDial == 0)
{
    state = 0;
}

lastx = gridx;
lasty=gridy;

animationTimer++;
if(animationTimer % 7 == 0){
	if(frame == 0) frame = 1;
	else frame = 0;
}


