if(interact(gridx, gridy)&&!global.inDial && worldLayer == obj_player.worldLayer)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    if(getItemCount(1427) <= 0)dialogue("miscDialogue.txt", 238, 239);
	else dialogue("miscDialogue.txt", 238, 240);
}
if(state == 2){
	if(getItemCount(1427) > 0){
		global.events[flagId] = true;
		instance_destroy();
	}
}


draw_self();
