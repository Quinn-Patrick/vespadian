if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
	if(instance_number(obj_shopkeeperNpc) > 0){
		obj_shopkeeperNpc.dir = 3;
	}
    
}
if(global.inDial && state == 1)
{
    
	dialogue("dialogue.txt", 118, 118);
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

