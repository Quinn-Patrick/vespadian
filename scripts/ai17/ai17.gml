function ai17() {
//should return the first power if the user is flanked or covered, and return random when on the front row

	if(global.top.col > 0){
		if(selfFlank(global.top)){
			return global.top.powers[| 0];
		}else if(global.eGrid[global.top.col-1, global.top.row] > 0 
		&& global.eGrid[global.top.col-1, global.top.row].conds[0] == 0){
			return global.top.powers[| 0];
		}
	}
	outcome = irandom_range(0,1);
	if(outcome = 0) return 0;
	else return global.top.powers[| 0];

}
