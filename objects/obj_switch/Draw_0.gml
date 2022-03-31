if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    dialogue("dialogue.txt", 44, 44);
}
if(state == 2){
	if(!global.roomFlags[flagId])global.roomFlags[flagId] = true;
	else global.roomFlags[flagId] = false;
}
if(!global.roomFlags[flagId]) sprite_index = spr_switchOff;
else sprite_index = spr_switchOn;

draw_self();

