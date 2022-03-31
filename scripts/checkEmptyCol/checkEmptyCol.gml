function checkEmptyCol(argument0, argument1) {
	gridSide = argument0; //0 = player grid, 1 = enemy grid
	column = argument1;

	if(gridSide == 1){
		for(k = 0; k < 4; k++){
			if(global.eGrid[column, k] != -1 && global.eGrid[column, k].conds[0] == 0){
				return false;
			}
		}
	}
	else{
		for(k = 0; k < 4; k++){
			if(global.pGrid[column, k] != -1 && global.pGrid[column, k].conds[0] == 0){
				return false;
			}
		}
	}
	return true;


}
