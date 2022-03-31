/// @description Insert description here
// You can write your code in this editor
if(global.events[441]){
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
	
		
		dialogue("miscDialogue.txt", 246, 246);
	
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
