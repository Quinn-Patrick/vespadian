// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function displayFourCharacterStats(characters, xOrigin, yOrigin, statsOrEquipment){
	xStart = 208;
	xSpace = 80;
	for(i = 0; i < 4; i++)
	{
		if(!is_undefined(characters[i]))
		{
			draw_text(xOrigin + 64, yOrigin + 64 + (176*i), characters[i].name);
			if(statsOrEquipment)
			{
				draw_text(xOrigin + 192, yOrigin + 64 + (176*i), "Level: " + string(characters[i].level));
				draw_text(xOrigin + 288, yOrigin + 64 + (176*i), "HP: " + string(characters[i].curHp) + "/" + string(characters[i].maxHp));
				draw_text(xOrigin + 416, yOrigin + 64 + (176*i), "SP: " + string(characters[i].curSp) + "/" + string(characters[i].maxSp));
				draw_text(xOrigin + (0*xSpace) + xStart, yOrigin + 96 + (176*i), "Str: " + string(characters[i].str));

				draw_text(xOrigin + (1*xSpace) + xStart, yOrigin + 96 + (176*i), "Frt: " + string(characters[i].frt));

				draw_text(xOrigin + (2*xSpace) + xStart, yOrigin + 96 + (176*i), "Dex: " + string(characters[i].dex));

				draw_text(xOrigin + (3*xSpace) + xStart, yOrigin + 96 + (176*i), "Agi: " + string(characters[i].agi));
				draw_text(xOrigin + (0*xSpace) + xStart, yOrigin + 128 + (176*i), "Int: " + string(characters[i].int));

				draw_text(xOrigin + (1*xSpace) + xStart, yOrigin + 128 + (176*i), "Wis: " + string(characters[i].wis));

				draw_text(xOrigin + (2*xSpace) + xStart, yOrigin + 128 + (176*i), "Cha: " + string(characters[i].cha));

				draw_text(xOrigin + (3*xSpace) + xStart, yOrigin + 128 + (176*i), "Spr: " + string(characters[i].spr));
			}
			else
			{
				draw_text(xO + (0*xSpace) + xStart, yO + 80 + (176*i), "Right Hand: " + string(getItemName(characters[i].equipment[0,0])));
				draw_text(xO + (4*xSpace) + xStart, yO + 80 + (176*i), "Left Hand: " + string(getItemName(characters[i].equipment[1,0])));
				draw_text(xO + (0*xSpace) + xStart, yO + 112 + (176*i), "Head: " + string(getItemName(characters[i].equipment[2,0])));
				draw_text(xO + (4*xSpace) + xStart, yO + 112 + (176*i), "Armor: " + string(getItemName(characters[i].equipment[3,0])));
				draw_text(xO + (0*xSpace) + xStart, yO + 144 + (176*i), "Extra: " + string(getItemName(characters[i].equipment[4,0])));
				draw_text(xO + (4*xSpace) + xStart, yO + 144 + (176*i), "Extra: " + string(getItemName(characters[i].equipment[5,0])));
				
				
			}
			draw_sprite_ext(characters[i].portrait, 0, xOrigin+96, yOrigin+128+(176*i), 1, 1, 0, c_white, 1 );
			if(characters[i].conditions[16] > 0)
			{
				draw_sprite(spr_poisonIcon, 0, xOrigin + 64, yOrigin + 192+(176*i)); 
			}
			if(characters[i].conditions[21] > 0)
			{
				draw_sprite(spr_blindIcon, 0, xOrigin + 80, yOrigin + 192+(176*i)); 
			}
			if(characters[i].conditions[38] > 0)
			{
				draw_sprite(spr_cursed, 0, xOrigin + 96, yOrigin + 192+(176*i)); 
			}
			if(characters[i].conditions[41] > 0)
			{
				draw_sprite(spr_heartbreak, 0, xOrigin + 128, yOrigin + 192+(176*i)); 
			}
			if(characters[i].conditions[42] > 0)
			{
				draw_sprite(spr_bleeding, 0, xOrigin + 160, yOrigin + 192+(176*i)); 
			}
		}
	}
}