function equipmentAbilities(argument0) {
	memberId = argument0;

	for(i = 0; i < 6; i++){
		if(getItemDat(memberId.eq[i], 24) == 1) ds_list_add(memberId.abis, 406);
		if(getItemDat(memberId.eq[i], 24) == 2) ds_list_add(memberId.abis, 428);
		if(getItemDat(memberId.eq[i], 24) == 3) ds_list_add(memberId.abis, 403);
		if(getItemDat(memberId.eq[i], 24) == 4) ds_list_add(memberId.abis, 430);
		
		if(getItemDat(memberId.eq[i], 24) == 5) ds_list_add(memberId.abis, 208);
		if(getItemDat(memberId.eq[i], 24) == 6) ds_list_add(memberId.abis, 209);
		if(getItemDat(memberId.eq[i], 24) == 7) ds_list_add(memberId.abis, 210);
		
		if(getItemDat(memberId.eq[i], 24) == 12) ds_list_add(memberId.abis, 446);
		if(getItemDat(memberId.eq[i], 24) == 13) ds_list_add(memberId.abis, 447);
		
		if(getItemDat(memberId.eq[i], 24) == 14){
			ds_list_add(memberId.abis, 402);
		}
		if(getItemDat(memberId.eq[i], 24) == 15) ds_list_add(memberId.abis, 405);
		if(getItemDat(memberId.eq[i], 24) == 16) ds_list_add(memberId.abis, 447);
		if(getItemDat(memberId.eq[i], 24) == 17) ds_list_add(memberId.abis, 304);
		if(getItemDat(memberId.eq[i], 24) == 18) ds_list_add(memberId.abis, 453);
		if(getItemDat(memberId.eq[i], 24) == 19) ds_list_add(memberId.abis, 454);
		if(getItemDat(memberId.eq[i], 24) == 20) ds_list_add(memberId.abis, 456);
		if(getItemDat(memberId.eq[i], 24) == 21) ds_list_add(memberId.abis, 457);
		if(getItemDat(memberId.eq[i], 24) == 22) ds_list_add(memberId.abis, 458);
		if(getItemDat(memberId.eq[i], 24) == 23) ds_list_add(memberId.abis, 220);
	}


}
