if(interact(gridx, gridy)&&!global.inDial)
{
    global.inDial = true;
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
    if(global.money >= cost){
		prompt("prompts.txt", 3, 3, 2);
	}
	else{
		dialogue("dialogue2.txt", 241, 241);
	}
}

if(state == 2)
{
	if(global.promptSelection == 0){
		global.money -= cost;
		instance_create_depth(0,0,-9000,obj_inGameFadeout);
		res(0);
		res(1);
		res(2);
		res(3);
		res(4);
		res(5);
		res(6);
		res(7);
		res(8);
		res(9);
	}
	global.promptSelection = 0
}

draw_sprite(sprite_index, frame, x+16, y+16);

