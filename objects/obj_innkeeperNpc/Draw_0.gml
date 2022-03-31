if(interact(gridx, gridy)&&!global.inDial)
{
    if(global.ovx > gridx){
		dir = 2;
	}
	else if(global.ovx < gridx){
		dir = 1;
	}
	else if(global.ovy > gridy){
		dir = 3;
	}
	else if(global.ovy < gridy){
		dir = 0;
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

if(dir == 0){
	sprite_index = backSprite;
	image_xscale = 1;
}
else if(dir == 3){
	sprite_index = frontSprite;
	image_xscale = 1;
}
else if(dir == 1){
	sprite_index = sideSprite;
	image_xscale = 1;
}
else if(dir == 2){
	sprite_index = sideSprite;
	image_xscale = -1;
}
draw_sprite_ext(sprite_index, 0, x+16, y+16, image_xscale, 1, 0, c_white, 1);

