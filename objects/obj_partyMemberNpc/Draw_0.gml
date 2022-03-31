/// @description Insert description here
// You can write your code in this editor

if(!is_undefined(correspondingCharacter))
{
	spriteArray = getCharacterSprites(correspondingCharacter);
	frontSprite = spriteArray[0];
	backSprite = spriteArray[1];
	sideSprite = spriteArray[2];
	firstLine = 141;
	lastLine = 142;
	movementType = 1;
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
		if(sideSprite == spr_dogSide && global.leader == 3){
			obj_player.petting = true;
		}
		global.specialString = correspondingCharacter.name;
		dialogue("partyMemberDialogue.txt", correspondingCharacter.personality+1, correspondingCharacter.personality+1);
	}
	if(state == 2) obj_player.petting = false;
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
	draw_sprite_ext(sprite_index, image_index, x+16, y+16, image_xscale, 1, 0, c_white, 1);
}
