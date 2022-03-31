if(interact(gridx, gridy)&&!global.inDial)
{
	if(instance_number(obj_armorerNpc) > 0){
		obj_armorerNpc.dir = 3;
	}
    global.inDial = true;
    state = 1;
    
}
if(global.inDial && state == 1)
{
    
	dialogue("dialogue.txt", 117, 117);
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
	if(!instance_exists(obj_shop))shopInit(shopNum,id);
	global.inDial = true;

}

