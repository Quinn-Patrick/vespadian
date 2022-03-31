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
for(i = 0; i < array_length(flagArray); i++){
	if(!global.events[flagArray[i]]) open = false;
}




if(open){
	instance_destroy(self);
}

draw_self();

