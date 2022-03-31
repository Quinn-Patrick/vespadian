// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initializeCharacter(characterCreator){
	class = characterCreator.newCharacterClass;
	genderChar = characterCreator.newCharacterGender;
	gender = 0;
	if(genderChar = "F") gender = 1;
	name = characterCreator.newCharacterName;
	personality = characterCreator.newCharacterPersonality;
	costume = characterCreator.newCharacterColor;
	
	newCharacter = new character();
	
	newCharacter.class = class;
	newCharacter.gender = gender;
	newCharacter.personality = personality;
	newCharacter.costume = costume;
	newCharacter.name = name;
	newCharacter.maxAp = 5;
	newCharacter.curAp = 5;
	
	classFileName = "";
	switch(class){
		case 0 : 
			classFileName = "files/classes/fighter.txt";
			newCharacter.equipment[0,0] = 19;
			newCharacter.equipment[3,0] = 651;
			break;
		case 1 : 
			classFileName = "files/classes/wizard.txt"; 
			newCharacter.equipment[0,0] = 14;
			newCharacter.equipment[3,0] = 663;
			break;
		case 2 : 
			classFileName = "files/classes/thief.txt"; 
			newCharacter.equipment[0,0] = 130;
			newCharacter.equipment[3,0] = 663;
			break;
		case 3 : 
			classFileName = "files/classes/cleric.txt"; 
			newCharacter.equipment[0,0] = 14;
			newCharacter.equipment[3,0] = 663;
			break;
		case 4 : 
			classFileName = "files/classes/ranger.txt"; 
			newCharacter.equipment[0,0] = 130;
			newCharacter.equipment[3,0] = 651;
			break;
		case 5 : 
			classFileName = "files/classes/bard.txt"; 
			newCharacter.equipment[0,0] = 14;
			newCharacter.equipment[3,0] = 663;
			break;
	}
	
	
	
	classFile = file_text_open_read(classFileName);
	file_text_readln(classFile);
	
	newCharacter.str = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	newCharacter.frt = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	newCharacter.dex = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	newCharacter.agi = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	newCharacter.int = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	newCharacter.wis = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	newCharacter.cha = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	newCharacter.spr = file_text_read_real(classFile);
	file_text_readln(classFile);
	file_text_readln(classFile);
	
	while(true){
		newCharacter.equipCodes[file_text_read_real(classFile)] = true;
		next = file_text_readln(classFile);
		if(cleanString(next) = "levels" || file_text_eof(classFile)) break;
	}
	file_text_close(classFile);
	
	
	return newCharacter;
}