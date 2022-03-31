function actSelectS() {
	//manages the battle action selection menu on the step function
	hardMax = 4;



	if(global.selLevel == 0)
	{
		minimum = 0;
		maximum = hardMax;
	}

	if(key(7))
	{
		sound(snd_select);
		global.actSelection++;
	}
	else if(key(5))
	{
		sound(snd_select);
		global.actSelection--;
	}



	if(global.actSelection > maximum)
	{
		if(global.selLevel == 0)
		{
			global.actSelection = minimum;
		}
		else
		{
			if(global.scrollLevel == global.maxScroll)
			{
				global.scrollLevel = 0;
				global.actSelection = minimum;
			}
			else
			{
				global.scrollLevel++;
				global.actSelection = maximum;
			}
		}
	}
	else if (global.actSelection < minimum)
	{
		if(global.selLevel == 0)
		{
			global.actSelection = maximum;
		}
		else
		{
			if(global.scrollLevel == 0)
			{
				global.scrollLevel = global.maxScroll;
				global.actSelection = maximum;
			}
			else
			{
				global.scrollLevel--;
				global.actSelection = minimum;
			}
		}
	}

	if(key(10))
	{
		sound(snd_select);
		if(global.selLevel == 1 || global.selLevel == 2)
		{
			global.scrollLevel = 0;
			global.selLevel = 0;
			global.actSelection = minimum;
		}
	}

	if(global.selLevel == 1)
	{
		getPowerDat(global.powers[| global.actSelection+global.scrollLevel]);
	}

	if(global.turnPhase == 0)
	{
		if(key(9))
		{
			sound(snd_select);
		
			if(global.selLevel == 0)
			{
				if(global.actSelection <= 0)
				{
					global.actSelection = minimum;
					return 0;
				}
				else if(global.actSelection == 1)
				{
					if(!ds_list_empty(global.powers))
						{
						if(ds_list_size(global.powers) < 5)
						{
							maximum = ds_list_size(global.powers)-1;
							global.maxScroll = 0;//ds_list_size(global.powers)-1;
						}
						else 
						{
							maximum = hardMax;
							global.maxScroll = ds_list_size(global.powers)-maximum-1;
						}
						global.selLevel = 1;
						global.actSelection = minimum;
					}
					return -1;
				
				}
				else if(global.actSelection == 2)
				{
					global.actSelection = 0;
					if(global.top.num.invenSize < 5)
					{
						maximum = global.top.num.invenSize-1;
						global.maxScroll = 0;//global.stats[global.top.num, 19]-1;
					}
					else 
					{
						maximum = hardMax;
						global.maxScroll = global.top.num.invenSize-maximum-1;
					}
					global.selLevel = 2;
				
					return -1;
				}
				else if (global.actSelection == 3)
				{
				
					return -3;
				}
				else if (global.actSelection == 4) 
				{
				
					return -4;
				}
			}
			else if(global.selLevel == 1)
			{
				if(global.selPowCost <= global.top.curMp)
				{
				
					return(global.powers[| global.actSelection+global.scrollLevel]);
				}
				else return -1;
			}
			else if(global.selLevel == 2)
			{
				if(global.top.num.inven[global.actSelection+global.scrollLevel] != -1)
				{
				
					return(-1*global.top.num.inven[global.actSelection+global.scrollLevel]);
				}
				else return -1;
			}
		}
		else return -1;
	}

	if(global.scrollLevel < 0)
	{
		global.scrollLevel = 0;
	}
	else if(global.scrollLevel > global.maxScroll)
	{
		global.scrollLevel = global.maxScroll;
	}




}
