if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    dialogue("dialogue.txt", 45, 45);
}

open = true;
for(i = 0; i < ds_list_size(switchFlags); i++){
		if(!global.roomFlags[switchFlags[| i]]){
			open = false;
	}
}

if(open){
	ds_list_destroy(switchFlags);
	instance_destroy(self);
}

draw_self();

