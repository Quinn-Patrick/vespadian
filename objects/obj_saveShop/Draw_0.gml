if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    prompt("prompts.txt", 1, 1, 2);
}

if(state == 2)
{
	if(global.promptSelection == 0){
		global.paused = 1;
		obj_pauseManager.xSpace = 80;
		obj_pauseManager.xStart = 208;
		obj_pauseManager.xO = (global.ovx*32)-512;
		obj_pauseManager.yO = (global.ovy*32)-384;
		obj_pauseManager.menuY = 80;
		obj_pauseManager.menuX = 800
		obj_pauseManager.menuSpace = 32;
		//obj_pauseManager.filePeeker = instance_create_depth(0,0,-1000001,obj_fileShower);
		obj_pauseManager.menuLevel = 13;
	}
	global.promptSelection = 0
}

draw_self();

