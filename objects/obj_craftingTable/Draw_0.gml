if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial && state == 1)
{
    
	dialogue("miscDialogue.txt", 38, 38);
	if(global.dialPos >= string_length(content))
	{
		if(key(9))
		{
			
			state = 2;
		}
	}
}
if(state == 2)
{
	if(!instance_exists(obj_crafting))craftInit(id);
	global.inDial = true;
}

draw_self();

