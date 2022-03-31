if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    dialogue("dialogue.txt", 45, 45);
}

if(global.events[flagId])open = true;
else open = false;


if(open){
	instance_destroy(self);
}

draw_self();

