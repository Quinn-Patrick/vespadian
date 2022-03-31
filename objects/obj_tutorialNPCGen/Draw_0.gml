if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    dialogue("miscDialogue.txt", fLine, lLine);
}


draw_sprite(sprite_index, 0, x+16, y+16);
