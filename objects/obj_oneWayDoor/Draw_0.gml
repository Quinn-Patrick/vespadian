/// @description Insert description here
// You can write your code in this editor
if(interact(gridx, gridy)&&!global.inDial)
{
	/*
	Directions:
		1. East to West
		2. West to East
		3. South to North
		4. North to South
	*/
	if(global.ovx > gridx){
		if(dir = 1) global.events[eventID] = true;
	}
	else if(global.ovx < gridx){
		if(dir = 2) global.events[eventID] = true;
	}
	else if(global.ovy > gridy){
		if(dir = 3) global.events[eventID] = true;
	}
	else if(global.ovy < gridy){
		if(dir = 4) global.events[eventID] = true;
	}
    global.inDial = true;
	if(getItemCount(1412) > 0){
		removeItem(1412, 1);
		global.events[eventID] = true;
	}
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
	if(global.events[eventID])
	{
		
		dialogue("miscDialogue.txt", 193, 193);
		
	}
	else
	{
		dialogue("miscDialogue.txt", 192, 192);
	}
}

if(!global.inDial && global.events[eventID]) instance_destroy();

if(dir == 1){
	sprite_index = spr_oneWayDoorWE;
}
else if(dir == 2){
	sprite_index = spr_oneWayDoorEW;
}
else if(dir == 3){
	sprite_index = spr_oneWayDoorSN;
}
else if(dir == 4){
	sprite_index = spr_oneWayDoorNS;
}
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, 1, 0, c_white, 1);