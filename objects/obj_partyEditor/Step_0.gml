/// @description Insert description here
// You can write your code in this editor
if(menuLevel == 0)
{
	if(key(7))
	{
		sound(snd_select);
		cursorScroll++;
		if(cursorScroll > 3) cursorScroll = 0;
	}
	if(key(5))
	{
		sound(snd_select);
		cursorScroll--;
		if(cursorScroll < 0) cursorScroll = 3;
	}
	if(key(9))
	{
		sound(snd_select);
		partySlot = cursorScroll;
		menuLevel = 1;
		cursorScroll = 0;
		menuScroll = 0;
	}
	if(key(10))
	{
		sound(snd_select);
		room_goto(global.storeRoom);		
	}
}
else if(menuLevel == 1)
{
	if(key(7))
	{
		sound(snd_select);
		cursorScroll++;
		if(cursorScroll > menuScroll+3) menuScroll++;
		if(cursorScroll > ds_list_size(global.characterBench))
		{
			cursorScroll = 0;
			menuScroll = 0;
		}
	}
	if(key(5))
	{
		sound(snd_select);
		cursorScroll--;
		if(cursorScroll < menuScroll) menuScroll--;
		if(cursorScroll < 0)
		{
			cursorScroll = ds_list_size(global.characterBench);
			menuScroll = ds_list_size(global.characterBench) - 3;
			if(menuScroll < 0) menuScroll = 0;
		}
	}
	if(key(9))
	{
		sound(snd_select);
		if(cursorScroll < ds_list_size(global.characterBench))
		{
			storeCharacter = global.party[partySlot];
			global.party[partySlot] = global.characterBench[| cursorScroll];
			global.characterBench[| cursorScroll] = storeCharacter;
			global.party[partySlot].formPositionX = storeCharacter.formPositionX;
			global.party[partySlot].formPositionY = storeCharacter.formPositionY;
			menuLevel = 0;
			cursorScroll = 0;
			menuScroll = 0;
		}
		else
		{
			menuLevel = 2;
			instance_create_depth(0,0,depth,obj_characterCreatorMaster);
			instance_create_depth(0,0,depth,obj_characterCreator);
		}
	}
	if(key(10))
	{
		sound(snd_select);
		menuLevel = 0;
		cursorScroll = 0;
		menuScroll = 0;
	}
}