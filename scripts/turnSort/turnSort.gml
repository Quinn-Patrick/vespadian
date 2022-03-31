function turnSort() {
	clear = false;

	global.deltaT = global.turns[1,1];
	while(!clear)
	{
		clear = true;
		for(o=0; o<global.turnSize-1; o++)
		{
			if(global.turns[o,0].conds[0] == 1)
			{
				global.turns[o,1] = 99;
			}
			if(global.turns[o,1] > global.turns[o+1,1])
			{
				turnSwap(o);
				clear = false;
			}
			else if(global.turns[o,1] == global.turns[o+1,1])
			{
				if(coinFlip() || global.turns[o,1] == 0)
					global.turns[o,1]++;
				else
					global.turns[o,1]--;
			}
		}
	}

	for(n=global.turnSize-1; n>-1; n--)
	{
		if(n == 0)
		{
			global.turns[0,1] = (global.turns[0,0].wait);
			global.turns[0,0].conds[23] = 0;
		}
		else
		{
			
			global.turns[n,1] -= global.turns[0,1];
		}
		
	}

	


	for(n = 0; n < global.turnSize; n++)
	{
		global.holding = false;
		if(global.turns[n,0].conds[0] == 0){
			global.turns[n,0].hasActed = true;
			return global.turns[n,0];
		}
	}
}
