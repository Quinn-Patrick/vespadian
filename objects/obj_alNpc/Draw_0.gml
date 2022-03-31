if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
	if(partyCheck(2))
	{
		dialogue("miscDialogue.txt", 6, 6);
		if(global.line == -2) partyLeave(2);
	}
	else
	{
		dialogue("miscDialogue.txt", 5, 5);
		if(global.line == -2) partyJoin(2);
	}
}

draw_sprite(sprite_index, 0, x+16, y+16);

