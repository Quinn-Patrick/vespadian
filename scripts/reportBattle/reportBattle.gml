function reportBattle() {
	battleOn = false;
	
	if(reportLevel == 0)
	{
		battleMessage("You won!!");
		if(key(9))
		{
			sound(snd_select);
			reportLevel++;
		}
	}
	else if(reportLevel == 1)
	{
		battleMessage("You gain " + string(round(global.xpTot)) + " experience points.");
		if(key(9))
		{
			sound(snd_select);
			
			itemN = "";
			if(ds_list_size(global.loot) > 0 && !is_undefined(global.loot[| 0])){
				sound(snd_treasure);
				itemN = getItemDat(global.loot[| 0], -1);
			}
		
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
			sound(snd_select);
			sound(snd_treasure);
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
	
	
		battleMessage("Found: " + string(itemN));
		if(key(9))
		{
			sound(snd_select);
			
			if(reportItem > ds_list_size(global.loot)-2)
			{
				reportLevel++;
			}
			else
			{
				sound(snd_treasure);
				reportItem++;
				itemN = getItemDat(global.loot[| reportItem], -1);
			}
		}
	}

	else if(reportLevel == 4)
	{
		endBattle();
	}




}
