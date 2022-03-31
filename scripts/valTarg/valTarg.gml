function valTarg(argument0, argument1, argument2, argument3) {
	ident = argument0;
	userRange = argument1;
	targetId = argument2;
	targType = argument3;



	if(targetId == -1)
	{
		return false;
	}

	if(targetId.conds[33] > 0){
		return false;
	}

	if(targType == 4)
	{
		if(targetId.conds[0] == 1 && targetId.conds[40] == 0)
		{
			return true;
		}
		else return false;
	}

	if(targetId.conds[0] == 1)
	{
		return false;
	}
	else if(targType == 2 && targetId.conds[20] == 0)
	{
		return true;
	}
	else if(targType == 3)
	{
		return true;
	}

	distance = ident.col + ((targetId.col)); 
	if(distance > 0){
		if(global.PorEgrid == 0){
			for(i = targetId.col-1; i > -1; i--)
			{
				if(checkEmptyCol(0, i)){
					distance --;
				}
			}
			for(i = ident.col-1; i > -1; i--)
			{
				if(checkEmptyCol(1, i)){
					distance --;
				}
			}
		}
		else{
			for(i = targetId.col-1; i > -1; i--)
			{
				if(checkEmptyCol(1, i)){
					distance --;
				}
			}
			for(i = ident.col-1; i > -1; i--)
			{
				if(checkEmptyCol(0, i)){
					distance --;
				}
			}
		}
	}


	blocked = false;
	flanked = false;

	if(targetId.col != 0 || ident.col != 0)
	{
		flank(ident);
		for(i = targetId.col-1; i > -1; i--)
		{
			if(global.PorEgrid == 0)
			{
			
				if(global.eGrid[i, targetId.row] != -1 && global.eGrid[i, targetId.row].conds[0] == 0)
				{
					blocked = true;
				}
			
			}
			else if(global.PorEgrid == 1)
			{
			
				if(global.pGrid[i, targetId.row] != -1 && global.pGrid[i, targetId.row].conds[0] == 0)
				{
					blocked = true;
				}
			}
		}
	
		for(j = ident.col-1; j > -1; j--)
		{
			global.testFlag = true;
			if(global.PorEgrid == 1)
			{
			
				if(global.eGrid[j, ident.row] != -1 && global.eGrid[j, ident.row].conds[0] == 0)
				{
					blocked = true;
				}
			
			}
			else if(global.PorEgrid == 0)
			{
			
				if(global.pGrid[j, ident.row] != -1 && global.pGrid[j, ident.row].conds[0] == 0)
				{
					blocked = true;
				}
			}
		}
	}

	if(blocked && targType != 2)
	{
		return false;
	}
	if(targetId.conds[20] == 1)
	{
		return false;
	}
	if(distance == 0)
	{
		return true;
	}
	else if(distance > userRange)
	{
		if(!flanked && !blocked)
		{
			return true;
		}
		else 
		{
			return false;
		}
	}


	else return true;

	return false;




}
