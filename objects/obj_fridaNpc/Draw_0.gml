if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
	if(partyCheck(1))
	{
		dialogue("miscDialogue.txt", 4, 4);
		if(global.line == -2) partyLeave(1);
	}
	else
	{
		dialogue("miscDialogue.txt", 3, 3);
		if(global.line == -2) partyJoin(1);
	}
}

draw_sprite(sprite_index, 0, x+16, y+16);

