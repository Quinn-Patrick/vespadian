if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    dialogue("dialogue.txt", 9, 11);
}

if(state == 2)
{
	global.eventEnc = 0;
	clearTroupe();
	global.troupe[0,0] = 1000;
	global.troupe[0,1] = 0;
	global.troupe[0,2] = 0;
	gotoBattle();
}

draw_self();
