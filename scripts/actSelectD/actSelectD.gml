function actSelectD() {
	//draws the battle selection menu

	corx = obj_menuBox.x;
	cory = obj_menuBox.y;

	if(!battleMes && battleOn)
	{
		if(global.selLevel == 0)
		{
			
			offy = 4;
			offx = 768;
			draw_text(corx + 600, cory + 8, global.top.name + "'s Turn");
			draw_sprite(spr_cursor, 0, corx + offx - 20, cory + (16*global.actSelection) + offy);
			draw_text(corx + offx, cory + 0 + offy, "Fight");
			draw_text(corx + offx, cory + 16 + offy, "Powers");
			draw_text(corx + offx, cory + 32 + offy, "Items");
			draw_text(corx + offx, cory + 48 + offy, "Defend");
			draw_text(corx + offx, cory + 64 + offy, "Flee");
		}

		if(global.selLevel == 1)
		{
	
			offy = 4;
			offx = 64;
			draw_sprite(spr_cursor, 0, corx + offx - 20, cory + (16*global.actSelection) + offy);
			if(!is_undefined(ds_list_find_value(global.powerN,(global.scrollLevel))))draw_text(corx + offx, cory + 0 + offy, (global.powerN[| global.scrollLevel]));
			if(!is_undefined(ds_list_find_value(global.powerN,(global.scrollLevel+1))))draw_text(corx + offx, cory + 16 + offy, (global.powerN[| global.scrollLevel+1]));
			if(!is_undefined(ds_list_find_value(global.powerN,(global.scrollLevel+2))))draw_text(corx + offx, cory + 32 + offy, (global.powerN[| global.scrollLevel+2]));
			if(!is_undefined(ds_list_find_value(global.powerN,(global.scrollLevel+3))))draw_text(corx + offx, cory + 48 + offy, (global.powerN[| global.scrollLevel+3]));
			if(!is_undefined(ds_list_find_value(global.powerN,(global.scrollLevel+4))))draw_text(corx + offx, cory + 64 + offy, (global.powerN[| global.scrollLevel+4]));
	
			displayCost = round((global.selPowCost/(checkAbBatt(global.top, 215)+1))-(checkAbBatt(global.top, 220)*10));
			if(displayCost < 0) displayCost = 0;
			draw_text(corx + offx + 255, cory+offy, "Cost: " + string(displayCost));
			
			draw_text_ext(corx + offx + 255, cory+offy+16, (global.selPowDes), 16, 320);
	
		}

		if(global.selLevel == 2)
		{
	
			offy = 4;
			offx = 64;
			draw_sprite(spr_cursor, 0, corx + offx - 20, cory + (16*global.actSelection) + offy);
	
			if(global.top.num.invenSize < 5)
			{
				maxLoop = global.top.num.invenSize;
			}
			else
			{
				maxLoop = 5;
			}
	
			for(af = 0; af < maxLoop; af++)
			{
				if(!is_undefined(global.top.num.inven[global.scrollLevel+af]))
				{
					if(global.top.num.inven[global.scrollLevel+af] != -1)
					{
						label = getItemName(global.top.num.inven[global.scrollLevel+af]);
					}
					else
					{
						label = "_";
					}
				}
				else
				{
					label = "";
				}
		
				draw_text(corx + offx, cory + (af*16) + offy, (label));
			}
	
			/*if(!is_undefined(global.partItems[global.top.num, global.scrollLevel+1]))draw_text(corx + offx, cory + 16 + offy, (global.partItemN[global.top.num, global.scrollLevel+1]));
			if(!is_undefined(global.partItems[global.top.num, global.scrollLevel+2]))draw_text(corx + offx, cory + 32 + offy, (global.partItemN[global.top.num, global.scrollLevel+2]));
			if(!is_undefined(global.partItems[global.top.num, global.scrollLevel+3]))draw_text(corx + offx, cory + 48 + offy, (global.partItemN[global.top.num, global.scrollLevel+3]));
			if(!is_undefined(global.partItems[global.top.num, global.scrollLevel+4]))draw_text(corx + offx, cory + 64 + offy, (global.partItemN[global.top.num, global.scrollLevel+4]));*/
	
			//draw_text(corx + offx + 255, cory+offy, "Cost: " + string(global.selPowCost));
			draw_text_ext(corx + offx + 255, cory+offy+16, (getItemDes(global.top.num.inven[global.actSelection+global.scrollLevel])), 16, 320);
	
		}
	}


}
