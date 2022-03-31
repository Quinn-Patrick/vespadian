/// @description Insert description here
// You can write your code in this editor
if(global.events[108]){
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
	
		if(hasItem == 0 || global.events[246]){
			dialogue("miscDialogue.txt", 86, 89);
			
			if(global.inDial == false)switcher *= -1;
		}
		else {
			prompt("prompts.txt", 6, 6, 2);
		}
	
	}
	if(state == 2 && hasItem && !global.events[246]){
		if(global.promptSelection == 0){
			global.events[246] = true;
			global.eventEnc = 0;
			clearTroupe();
			for(i = 15; i > -1; i--){
				storeTroupe[i,0] = -1;
				storeTroupe[i,1] = -1;
				storeTroupe[i,2] = -1;
			}
			storeTroupe[0,0] = 1010;
			storeTroupe[0,1] = 0;
			storeTroupe[0,2] = 0;
			global.troupe = storeTroupe;
	
			global.runnable = false;
		
			global.battleBgm = mus_bossBattle2;
			gotoBattle();
		}
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
}
