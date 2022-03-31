if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    dialogue("dialogue.txt", 24, 24);
}

if(state == 2)
{
	res(0);
	res(1);
	res(2);
	res(3);
}

draw_self();

