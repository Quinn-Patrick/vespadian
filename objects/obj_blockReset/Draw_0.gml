if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    prompt("prompts.txt", 4, 4, 2);
}

if(state == 2)
{
	if(global.promptSelection == 0){
		for(i = 0; i < ds_list_size(blocks); i++){
			block = ds_list_find_value(blocks, i);
			global.map[block.gridx, block.gridy] = block.storeMapData;
			block.gridx = block.initx;
			block.gridy = block.inity;
			block.x = block.gridx*32;
			block.y = block.gridy*32;
		}
		
	}
	global.promptSelection = 0
}

draw_self();

