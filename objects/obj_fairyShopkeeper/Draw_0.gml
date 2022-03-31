if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial && state == 1)
{
    
	dialogue("dialogue2.txt", 242, 242);
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
	if(!instance_exists(obj_shop)){
		shopInit(shopNum,id);
		depth = -1;
	}
	global.inDial = true;
	/*if(key(10))
	{
		state = 0;
		global.control = true;
        global.line = -2;
        global.inDial = false;
	}*/
}

draw_sprite(sprite_index, frame, x+16, y+16);

