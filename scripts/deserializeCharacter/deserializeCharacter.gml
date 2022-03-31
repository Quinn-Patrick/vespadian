// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function deserializeCharacter(file){
	next = file_text_read_real(file);
	if(next == -1) return undefined;
	else{
		newCharacter = new character();
		newCharacter.uniqueIdentifier = next;
		file_text_readln(file);
		newCharacter.name = cleanString(file_text_read_string(file));
		file_text_readln(file);
		newCharacter.personality = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.gender = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.costume = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.class = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.formPositionX = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.formPositionY = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.str = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.frt = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.dex = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.agi = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.int = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.wis = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.cha = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.spr = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.curHp = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.curSp = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.maxAp = file_text_read_real(file);
		file_text_readln(file);		
		newCharacter.xp = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.invenSize = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.amLevel = file_text_read_real(file);
		file_text_readln(file);
		newCharacter.dmLevel = file_text_read_real(file);
		file_text_readln(file);
		nextCharDat = file_text_read_string(file);
		while(ord(nextCharDat) != 82){
			if(ord(nextCharDat) == 80){
				file_text_readln(file);
				nextSubDat = file_text_read_real(file);
				while(nextSubDat != -1){
					ds_list_add(newCharacter.powers, nextSubDat);
					file_text_readln(file);
					nextSubDat = file_text_read_real(file);
				}
			}
			else if(ord(nextCharDat) == 66){
				file_text_readln(file);
				nextSubDat = file_text_read_real(file);
				while(nextSubDat != -1){
					ability = nextSubDat;
					file_text_readln(file);
					nextSubDat = file_text_read_real(file);
					ds_list_add(newCharacter.abilities, [ability, nextSubDat]);
					file_text_readln(file);
					nextSubDat = file_text_read_real(file);
				}
			}
			else if(ord(nextCharDat) == 63){
				file_text_readln(file);
				for(n = 0; true; n++){
					nextSubDat = file_text_read_real(file);
					if(nextSubDat == -1) break;
					else{
						newCharacter.classLevels[n] = nextSubDat;
						file_text_readln(file);
					}
				}
			}
			else if(ord(nextCharDat) == 81){
				file_text_readln(file);
				for(i = 0; i < 6; i++){
					newCharacter.equipment[i,0] = real(file_text_readln(file));
				}
				//file_text_readln(file);
			}
			else if(ord(nextCharDat) == 67){
				file_text_readln(file);
				for(i = 0; i < 128; i++){
					newCharacter.equipCodes[i] = real(file_text_readln(file));
				}
				//file_text_readln(file);
			}
			else if(ord(nextCharDat) == 78){
				file_text_readln(file);
				for(i = 0; i < 128; i++){
					newCharacter.conditions[i] = real(file_text_readln(file));
				}
				//file_text_readln(file);
			}
			else if(ord(nextCharDat) == 73){
				file_text_readln(file);
				for(n = 0; n < newCharacter.invenSize; n++){
					newCharacter.inven[n] = real(file_text_readln(file));
				}
				//file_text_readln(file);
			}
			file_text_readln(file);
			nextCharDat = file_text_read_string(file);
			
		}
		return newCharacter;
	}
	return undefined;
}