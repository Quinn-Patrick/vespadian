if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
	dialogue("miscDialogue.txt", 9, 9);
}

draw_sprite(sprite_index, 0, x, y);

