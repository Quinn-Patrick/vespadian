if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial && state == 1)
{
    
	dialogue("dialogue.txt", 8, 8);
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
	if(!instance_exists(obj_shop))shopInit(1,id);
	global.inDial = true;
	/*if(key(10))
	{
		state = 0;
		global.control = true;
        global.line = -2;
        global.inDial = false;
	}*/
}

draw_self();
