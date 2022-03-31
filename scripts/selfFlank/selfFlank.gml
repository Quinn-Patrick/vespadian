function selfFlank(ident) {
	flanked = false;
	if(global.PorEgrid == 0)
	{
		if(ident.col != 0)
		{
			if(ident.row == 0)
			{
				if(global.pGrid[ident.col-1, ident.row+1] != -1 )
				{
					if(global.pGrid[ident.col-1, ident.row+1].conds[0] == 0)flanked = true;
				}
			}
			else if(ident.row == 3)
			{
				if(global.pGrid[ident.col-1, ident.row-1] != -1 )
				{
					if(global.pGrid[ident.col-1, ident.row-1].conds[0] == 0)flanked = true;
				}
			}
			else
			{
				if(global.pGrid[ident.col-1, ident.row-1] != -1)
				{
					if(global.pGrid[ident.col-1, ident.row-1].conds[0] == 0) flanked = true;
				}
				if(global.pGrid[ident.col-1, ident.row+1] != -1)
				{
					if(global.pGrid[ident.col-1, ident.row+1].conds[0] == 0) flanked = true;
				}
			}
		}
	}
	

	if(global.PorEgrid == 1)
	{
		if(ident.col != 0)
		{
			if(ident.row == 0)
			{
				if(global.eGrid[ident.col-1, ident.row+1] != -1 )
				{
					if(global.eGrid[ident.col-1, ident.row+1].conds[0] == 0)flanked = true;
				}
			}
			else if(ident.row == 3)
			{
				if(global.eGrid[ident.col-1, ident.row-1] != -1 )
				{
					if(global.eGrid[ident.col-1, ident.row-1].conds[0] == 0)flanked = true;
				}
			}
			else
			{
				if(global.eGrid[ident.col-1, ident.row-1] != -1)
				{
					if(global.eGrid[ident.col-1, ident.row-1].conds[0] == 0) flanked = true;
				}
				if(global.eGrid[ident.col-1, ident.row+1] != -1)
				{
					if(global.eGrid[ident.col-1, ident.row+1].conds[0] == 0) flanked = true;
				}
			}
		}
	}
	
	return flanked;


}
