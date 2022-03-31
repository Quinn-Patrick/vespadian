/// @description Insert description here
// You can write your code in this editor
if(focus && instance_number(obj_textField) == 0){
	timer++;
	if(timer > animThreshold){
		animFrame++;
		timer = 0;
		if(animFrame > 3) animFrame = 0;
	}
	if(key(7)){
		sound(snd_select);
		select++;
		if(select > 4){
			obj_characterCreatorMaster.focus++;
			if(obj_characterCreatorMaster.focus > numberOfCharacters){
				obj_characterCreatorMaster.focus = 0;
			}
			if(obj_characterCreatorMaster.focus < numberOfCharacters)obj_characterCreatorMaster.characterCreators[| obj_characterCreatorMaster.focus].select = 0;
			else obj_characterCreatorMaster.menuSelect = 0;
		}
	}
	if(key(5)){
		sound(snd_select);
		select--;
		if(select < 0){
			obj_characterCreatorMaster.focus--;
			if(obj_characterCreatorMaster.focus < 0){
				obj_characterCreatorMaster.focus = numberOfCharacters;
			}	
			if(obj_characterCreatorMaster.focus < numberOfCharacters)obj_characterCreatorMaster.characterCreators[| obj_characterCreatorMaster.focus].select = numberOfCharacters;
			else obj_characterCreatorMaster.menuSelect = 2;
		}
	}
	if(key(1)){
		sound(snd_select);
		switch(select){
			case 1:
				newCharacterClass++;
				if(newCharacterClass > 5) newCharacterClass = 0;
				break;
			case 2:
				if(newCharacterGender == "M") newCharacterGender = "F"
				else newCharacterGender = "M";
				break;
			case 3:
				newCharacterColor++;
				if(newCharacterColor > 3) newCharacterColor = 0;
				break;
			case 4:
				newCharacterPersonality++;
				if(newCharacterPersonality >= global.numberOfPersonalities) newCharacterPersonality = 0;
				break;
		}
	}
	if(key(3)){
		sound(snd_select);
		switch(select){
			case 1:
				newCharacterClass--;
				if(newCharacterClass < 0) newCharacterClass = 5;
				break;
			case 2:
				if(newCharacterGender == "M") newCharacterGender = "F"
				else newCharacterGender = "M";
				break;
			case 3:
				newCharacterColor--;
				if(newCharacterColor < 0) newCharacterColor = 3; 
				break;
			case 4:
				newCharacterPersonality--;
				if(newCharacterPersonality < 0) newCharacterPersonality = global.numberOfPersonalities-1;
				break;
		}
	}
	if(key(9)){
		sound(snd_select);
		if(select == 0){
			textInput = instance_create_depth(0,0,-10000,obj_textField);
			textInput.target = self;
		}
	}
}else animFrame = 0;

if(instance_exists(textInput)){
	if(self.id == textInput.target.id)newCharacterName = textInput.output;
}