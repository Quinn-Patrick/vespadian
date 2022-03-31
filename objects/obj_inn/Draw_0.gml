if(interact(gridx, gridy)&&!global.inDial)
{
	if(instance_number(obj_innkeeperNpc) > 0){
		obj_innkeeperNpc.dir = 3;
	}
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
	if(global.money >= cost){
		prompt("prompts.txt", 2, 2, 2);
	}
	else{
		dialogue("dialogue.txt", 119,119)
	}
}

if(state == 2)
{
	if(global.promptSelection == 0){
		if(global.money >= cost){
			global.money -= cost;
			instance_create_depth(0,0,-9000,obj_inGameFadeout);
			for(i = 0; i < 4; i++) res(global.party[i]);
		}
		
	}
	global.promptSelection = 0;
}

