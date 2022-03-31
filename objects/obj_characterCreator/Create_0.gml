/// @description Insert description here
// You can write your code in this editor
if(instance_number(obj_characterCreatorMaster) > 0){
	ds_list_add(obj_characterCreatorMaster.characterCreators, self.id);
}
focus = false;

select = 0;
newGenderNum = irandom_range(0,1)
if(newGenderNum == 0)newCharacterGender = "M";
else newCharacterGender = "F";

newCharacterName = randomName(newCharacterGender);
newCharacterClass = ds_list_size(obj_characterCreatorMaster.characterCreators)-1;

newCharacterColor = irandom_range(0,3);
newCharacterPersonality = 0;
switch(newCharacterClass){
	case 0: newCharacterPersonality = 0; break;
	case 1: newCharacterPersonality = 2; break;
	case 2: newCharacterPersonality = 4; break;
	case 3: newCharacterPersonality = 3; break;
	default: newCharacterPersonality = 0; break;
}


timer = 0;
animFrame = 0;
animThreshold = 8;

textInput = 0;

numberOfCharacters = 0;
if(room == rm_partyCreator) numberOfCharacters = 4;
else if(room == rm_partyEditor) numberOfCharacters = 1;