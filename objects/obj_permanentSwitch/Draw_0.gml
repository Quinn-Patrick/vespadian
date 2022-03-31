if(interact(gridx, gridy)&&!global.inDial && worldLayer = obj_player.worldLayer)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    if(!global.events[flagId])dialogue("dialogue.txt", 44, 44);
	else dialogue("dialogue.txt", 345, 345);
}
if(state == 2){
	global.events[flagId] = true;
}
if(!global.events[flagId]) sprite_index = spr_switchOff;
else sprite_index = spr_switchOn;

draw_self();

