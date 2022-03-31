/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_pauseBoxFull,0,xO+16,yO+16);

draw_text(xO+SCREENW/8, yO+64, "Gold: " + string(global.money));
draw_text(xO+SCREENW/4, yO+64, "Buy");
draw_text(xO+SCREENW*(5/8), yO+64, "Sell");



for(i = 0; i < maxDisp; i++)
{
	if(i+shopScroll[0] <= maxSel[0])
	{
		
		draw_text(xO+SCREENW/4, yO+96+(i*24), buyNames[| i+shopScroll[0]]);
		draw_text(xO+SCREENW/4+256, yO+96+(i*24), buyCosts[| i+shopScroll[0]]);
	}
}
for(i = 0; i < maxDisp; i++)
{
	if(i+shopScroll[1] <= maxSel[1])
	{
		draw_text(xO+SCREENW*(5/8), yO+96+(i*24), global.stockN[i+shopScroll[1]]);
	}
}
if(mode == 0)
{
	if(buyOrSell == 0)
	{
		draw_sprite(spr_cursor, 0, xO+SCREENW/4-24, yO+96+((selection[0]-shopScroll[0])*24));
		draw_text_ext(xO + 64, yO+96+24+(24*maxDisp), buyDesc[| selection[0]], 16, SCREENW-128);
		bc = 0;
		for(bd = 0 ; bd < 4; bd++)
		{
			if(!is_undefined(global.party[bd]) && !is_undefined(buyNums[| selection[0]]))
			{
				equipCode = getItemDat(buyNums[| selection[0]], 20)
				if(equipCode != 0 && global.party[bd].equipCodes[equipCode])
				{
					//if(key(7) || key(5) || ticker == 2){
						statPreviewSetup(global.party[bd], buyNums[| selection[0]], equipmentSlot);
					//}
					
				
					draw_sprite_ext(global.party[bd].portrait, 0, xO+(64 + (224*bc)), yO+96+96+(24*maxDisp), 1, 1, 0, c_white, 1 );
					displayStatPreview(xO+(64 + (224*bc)), yO+96+96+(24*maxDisp)+64, global.party[bd]);
					bc++;
				}
			}
		}
	}
	else if(buyOrSell == 1)
	{
		draw_sprite(spr_cursor, 0, xO+SCREENW*(5/8)-24, yO+96+((selection[1]-shopScroll[1])*24));
		draw_text_ext(xO + 64, yO+96+24+(24*maxDisp), getItemDes(global.stock[selection[1],0]), 16, SCREENW-128);
	}
	
}
else if(mode == 1)
{
	if(buyOrSell == 0)
	{
		draw_text_ext(xO + 64, yO+96+24+(24*maxDisp), "Buy how many?", 16, SCREENW-128);
		draw_text(xO + 64, yO+96+48+(24*maxDisp), "<" + string(count) + ">");
		draw_text(xO + 64, yO+96+64+(24*maxDisp), "You pay: " + string(count*storeCost) +  " gold.");
	}
	else if(buyOrSell == 1)
	{
		draw_text_ext(xO + 64, yO+96+24+(24*maxDisp), "Sell how many?", 16, SCREENW-128);
		draw_text(xO + 64, yO+96+48+(24*maxDisp), "<" + string(count) + ">");
		draw_text(xO + 64, yO+96+64+(24*maxDisp), "You get: " + string(count*(storeCost/2)) +  " gold.");
	}
}
else if(mode == 2)
{
	draw_text_ext(xO + 64, yO+96+24+(24*maxDisp), message, 16, SCREENW-128);
}