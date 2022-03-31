/// @description Insert description here
// You can write your code in this editor
if(menuLevel == 0)
{
	displayPartyStats(0,0,true);
	draw_sprite(spr_cursor, 0, 40, 128+(176*cursorScroll));
}
else if(menuLevel == 1)
{
	draw_sprite(spr_cursor, 0, 40, 128+(176*(cursorScroll-menuScroll)));
	
	characterArray = [];
	for(i = 0; i < 4; i++){
		if(menuScroll + i >= ds_list_size(global.characterBench))
		{
			characterArray[i] = undefined;
		}
		else
		{
			characterArray[i] = global.characterBench[| menuScroll + i]
		}
	}
	
	displayFourCharacterStats(characterArray, 0, 0, true);
	for(i = menuScroll; i < menuScroll + 4; i++){
		if(i == ds_list_size(global.characterBench))
		{
			draw_text(192, 64 + (176*(i-menuScroll)), "Hire New Adventurer");
			break;
		}
	}
}