function partyP(char) {
	

	spriteArray = getCharacterSprites(char);
	if(char.conditions[0] == 0)return spriteArray[0];
	else return spriteArray[3];


}
