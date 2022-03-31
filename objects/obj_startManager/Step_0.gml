/// @description Insert description here
// You can write your code in this editor
if(mode == 0)
{
	if(key(5))
	{
		sound(snd_select);
		if(introTime >= 1920){
			select++;
			if(select > maxSelect) select = 0;
		}
	}
	else if(key(7))
	{
		sound(snd_select);
		if(introTime >= 1920){
			select--;
			if(select < 0) select = maxSelect;
		}
	}
	if(key(9))
	{
		sound(snd_select);
		if(introTime >= 1920){
			if(select == 0)
			{
				global.mainBgm = mus_nothing;
				sound(snd_newGame);
				mode = 2;
			}
			else if(select == 1) mode = 1;
		}
	}
}
else if(mode == 1)
{
	if(key(7))
	{
		sound(snd_select);
		if(introTime >= 1920){
			fileSelect++;
			if(fileSelect > fileMax) 
			{
				fileSelect = 0;
				fileScroll = 0;
			}
			if(fileSelect > fileScroll + 15)
			{
				fileScroll++;
			}
		}
	}
	else if(key(5))
	{
		sound(snd_select);
		if(introTime >= 1920){
			fileSelect--;
			if(fileSelect < 0) 
			{
				fileSelect = fileMax;
				fileScroll = fileMax-15;
			}
			if(fileSelect < fileScroll)
			{
				fileScroll--;
			}
		}
	}
	if(key(9))
	{
		sound(snd_select);
		global.saveFileNumber = fileSelect;
		if(introTime >= 1920){
			if(loadGame(fileSelect)) room_goto(asset_get_index(global.roomSave));
		}
	}
	if(key(10))
	{
		sound(snd_select);
		if(introTime >= 1920) mode = 0;
	}
}
else if(mode == 2){
	fadeOutTimer++;
	if(fadeOutTimer >= fadeOutTimeLimit) newGame();
}