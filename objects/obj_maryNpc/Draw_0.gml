if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
	if(partyCheck(3))
	{
		dialogue("miscDialogue.txt", 8, 8);
		if(global.line == -2) partyLeave(3);
	}
	else
	{
		dialogue("miscDialogue.txt", 7, 7);
		if(global.line == -2) partyJoin(3);
	}
}

draw_sprite(sprite_index, 0, x+16, y+16);

