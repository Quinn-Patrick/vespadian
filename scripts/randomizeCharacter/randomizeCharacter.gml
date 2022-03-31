// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function randomizeCharacter(characterCreator){
	gender = irandom_range(0,1);
	if(gender == 0)characterCreator.newCharacterGender = "M";
	else characterCreator.newCharacterGender = "F";
	
	characterCreator.newCharacterName = randomName(characterCreator.newCharacterGender);
	
	characterCreator.newCharacterColor = irandom_range(0,3);
	
	characterCreator.newCharacterPersonality = irandom_range(0, global.numberOfPersonalities-1);
	characterCreator.newCharacterClass = irandom_range(0, global.numberOfClasses-1);

}