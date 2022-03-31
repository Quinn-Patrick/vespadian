if(interact(gridx, gridy)&&!global.inDial)
{
	hasItem = getItemCount(1413);
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
	if(global.money < 50000 && hasItem == 0)dialogue("miscDialogue.txt", 101, 101);
    else if(hasItem == 0)prompt("prompts.txt", 5, 5, 2);
	else dialogue("miscDialogue.txt", 102, 102);
	
}

if(state == 2)
{
	if(global.promptSelection == 0 && hasItem == 0 && global.money >= 50000){
		stockItem(1413, 1);
		global.money -= 50000;
		//obj_pauseManager.filePeeker = instance_create_depth(0,0,-1000001,obj_fileShower);
	}
	global.promptSelection = 0;
}

draw_self();

