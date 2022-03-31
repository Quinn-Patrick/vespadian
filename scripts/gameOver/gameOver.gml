function gameOver() {
	battleOn = false;
	if(reportLevel == 0)
	{
		battleMessage("Defeat...");
		if(key(9))
		{
			game_restart();
		}
	}
	/*else if(reportLevel == 1)
	{
		battleMessage("You gain " + string(round(global.xpTot)) + " experience points.");
		if(key(9))
		{
			itemN = "";
			if(ds_list_size(global.loot) > 0 && !is_undefined(global.loot[| 0]))
				itemN = getItemDat(global.loot[| 0], -1);
		
			reportLevel++;
		}
	}
	else if(reportLevel == 2)
	{
		if(reportSublevel == -1)
		{
			for(al = 0; al < ds_list_size(global.ally); al++)
			{
				reportLevelUp[al] = false;
				if(global.ally[| al].conds[0] == 0)
				{
					if(gainXp(global.ally[| al].num, global.xpTot))
						reportLevelUp[al] = true;
				}
			}
			reportSublevel = 0;
		}
	
		if(reportSublevel == 0 && !reportLevelUp[0])
		{
			while(!reportLevelUp[reportSublevel])
			{
				reportSublevel++;
				if(reportSublevel > 15)
				{
					reportLevel++;
					break;
				}
			}
		}
	
		if(reportLevel == 2)
		{
			levelUpName = "";
			//if(global.party[reportSublevel,0] != -1)
			//{
				hello = global.party[reportSublevel,0];
				levelUpName = global.ally[| reportSublevel].name;
				levelUpLevel = string(global.scores[global.ally[| reportSublevel].num,8]);
				battleMessage((levelUpName + " has grown to level " +  levelUpLevel + "!"));
			//}
		}
	
		if(key(9))
		{
			reportSublevel++;
			while(!reportLevelUp[reportSublevel])
			{
				reportSublevel++;
				if(reportSublevel > 15)
				{
					reportLevel++;
					break;
				}
			}
		}
	}
	else if(reportLevel == 3)
	{
		if(ds_list_size(global.loot) == 0)
			reportLevel++
	
	
		battleMessage("Found: " + itemN);
		if(key(9))
		{
			if(reportItem > ds_list_size(global.loot)-2)
			{
				reportLevel++;
			}
			else
			{
				reportItem++;
				itemN = getItemDat(global.loot[| reportItem], -1);
			}
		}
	}

	else if(reportLevel == 4)
	{
		endBattle();
	}*/




}
