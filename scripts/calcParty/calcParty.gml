function calcParty() {
	updateFieldAbilities();
	
	for(k = 0; k < 4; k++){
		hello = global.party[k];
		if(!is_undefined(global.party[k])){
			eqSet(global.party[k]);
		}
	}

	for(l = 0; l < 4; l++){
		if(!is_undefined(global.party[l]))statCalc(global.party[l]);
	}
	
	orderParty();


}
