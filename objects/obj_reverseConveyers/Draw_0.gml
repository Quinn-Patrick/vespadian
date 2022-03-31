if(interact(gridx, gridy)&&!global.inDial && worldLayer == obj_player.worldLayer)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    if(!global.events[flagId])dialogue("miscDialogue.txt", 209, 210);
	else dialogue("miscDialogue.txt", 209, 210);
}
if(state == 2){
	sound(snd_storm);
	if(!global.events[flagId])global.events[flagId] = true;
	else global.events[flagId] = false;
}
if(!global.events[flagId]) sprite_index = spr_switchOff;
else sprite_index = spr_switchOn;

draw_self();
