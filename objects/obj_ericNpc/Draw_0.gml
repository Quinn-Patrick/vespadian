if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
	if(partyCheck(0))
	{
		dialogue("miscDialogue.txt", 2, 2);
		if(global.line == -2) partyLeave(0);
	}
	else
	{
		dialogue("miscDialogue.txt", 1, 1);
		if(global.line == -2) partyJoin(0);
	}
}

draw_sprite(sprite_index, 0, x+16, y+16);

