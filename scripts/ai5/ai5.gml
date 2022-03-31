function ai5() {

	for(l = 0; l < global.turnSize; l++){
		if(global.turns[l,0].friend && global.turns[l,0].conds[32] == 0){
			return global.top.powers[| 0];
		}
	}

	ds_list_destroy(nonSleepers);

	return 0;


}
