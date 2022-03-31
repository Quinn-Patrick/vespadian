/// @description Insert description here
// You can write your code in this editor
hasItem = 0;

if(interact(gridx, gridy)&&!global.inDial)
{
	ableToPick = false;
	global.specialNum = lockDifficulty;
	for(i = 0; i < 4; i++){
		if(global.party[i].class == 2){
			if(global.party[i].classLevels[2] >= lockDifficulty){
				ableToPick = true;
				global.specialString = global.party[i].name;
				break;
			}
		}
	}
	
    global.inDial = true;
	if(findItemIndex(keyNumber) != -1){
		global.events[eventID] = true;
		if(consumes) itemDecrement(keyNumber, 1);
		global.specialString = getItemName(keyNumber);
		openedWithKey = true;
		
	}
	if(ableToPick){
		global.events[eventID] = true;
	}
    state = 1;
    
}
if(global.inDial == true && state == 1)
{
	if(global.events[eventID])
	{
		
		if(!openedWithKey)dialogue("miscDialogue.txt", 91, 92);
		else dialogue("miscDialogue.txt", 184, 184);
		
	}
	else
	{
		dialogue("miscDialogue.txt", 90, 90);
	}
}

if(!global.inDial && global.events[eventID]) instance_destroy();

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
	image_xscale = -1;
}
else if(dir == 2){
	sprite_index = sideSprite;
	image_xscale = 1;
}
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, 1, 0, c_white, 1);