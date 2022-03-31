function statPreviewSetup(argument0, argument1, argument2) {
	//return here
	characterIndex = argument0;
	equipmentIndex = argument1;
	equipmentSlot = argument2;
	
	if(global.previewCharacter != -1) delete(global.previewCharacter);
	
	global.previewCharacter = new duplicateCharacter(characterIndex);


	global.previewCharacter.equipment[equipmentSlot, 0]= equipmentIndex;

	if(getItemDat(global.previewCharacter.equipment[equipmentSlot, 0], 0) == 4)
	{
		global.previewCharacter.equipment[1, 0] = 0;
	}
	eqSet(global.previewCharacter);
	statCalc(global.previewCharacter);


}