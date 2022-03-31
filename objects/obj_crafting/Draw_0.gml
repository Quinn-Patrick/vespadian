/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_pauseBoxFull,0,xO+16,yO+16);

draw_text(itemNameXPos, yO+64, "Item");
draw_text(craftCostXPos, yO+64, "Materials");

selectedItemCost = craftCosts[selection[0]];

for(i = 0; i < maxDisp; i++)
{
	if(i+shopScroll[0] <= maxSel[0] && infoLoaded)
	{
		draw_text(itemNameXPos, yO+96+(i*24), buyNames[| i+shopScroll[0]]);
		hello = flags[| i+shopScroll[0]];
		if(global.events[flags[| i+shopScroll[0]]])draw_sprite(spr_checkMark, 0, itemNameXPos - 32, yO+96+(i*24))
	}
}
for(i = 0; i < ds_list_size(selectedItemCost); i++)
{
	currentMaterial = ds_list_find_value(selectedItemCost, i);
	draw_text(craftCostXPos, yO+96+(i*24), currentMaterial[2] + " X " + string(currentMaterial[1]));
	countInStock = searchSortedInventory(sortedInventory, currentMaterial[0]);
	if(countInStock >= real(currentMaterial[1])*count)draw_set_color(upColor);
	else draw_set_color(downColor);
	draw_text(craftCostXPos+192, yO+96+(i*24), "(" + string(countInStock) + ")");
	draw_set_color(defaultTextColor);
}
if(mode == 0)
{
	draw_sprite(spr_cursor, 0, itemNameXPos-24, yO+96+((selection[0]-shopScroll[0])*24));
	draw_text_ext(xO + 64, yO+96+24+(24*maxDisp), buyDesc[| selection[0]], 16, SCREENW-128);
	bc = 0;
	/*for(bd = 0 ; bd < 4; bd++)
	{
		if(global.party[bd,0] != -1 && !is_undefined(buyNums[| selection[0]]))
		{
			if(global.equipCodes[global.party[bd,0], getItemDat(buyNums[| selection[0]], 20)])
			{
				//if(key(7) || key(5) || ticker == 2){
					
				//}
				
				//draw_sprite_ext(partyP(global.party[bd,0]), 0, xO+(64 + (224*bc)), yO+96+96+(24*maxDisp), 64/sprite_get_width(partyP(global.party[bd,0])), 64/sprite_get_height(partyP(global.party[bd,0])), 0, c_white, 1 );
				//displayStatPreview(xO+(64 + (224*bc)), yO+96+96+(24*maxDisp)+64, global.party[bd,0]);
				//bc++;
			}
		}
	}*/
}
else if(mode == 1)
{
	draw_text_ext(xO + 64, yO+96+24+(24*maxDisp), "Craft how many?", 16, SCREENW-128);
	draw_text(xO + 64, yO+96+48+(24*maxDisp), "<" + string(count) + ">");
}
else if(mode == 2)
{
	draw_text_ext(xO + 64, yO+96+24+(24*maxDisp), message, 16, SCREENW-128);
}