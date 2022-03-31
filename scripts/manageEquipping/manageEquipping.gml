function manageEquipping(argument0, argument1, argument2) {
	ch = argument0;
	eqOld = argument1;
	eqNew = argument2;

	equipScript = getItemDat(eqNew, 21);
	unequipScript = getItemDat(eqOld, 21);

	if(equipScript > 0 && equipScript < 9){
		ch.conditions[equipScript + 23] += 1.5;
	}
	
	if(unequipScript > 0 && unequipScript < 9){
		ch.conditions[equipScript + 23] -= 1.5;
	}
}
