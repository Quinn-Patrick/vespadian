// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function serializeCharacter(char, file){
	if(!is_undefined(char)){
		file_text_write_string(file, char.uniqueIdentifier);
		file_text_writeln(file);
		file_text_write_string(file, char.name);
		file_text_writeln(file);
		file_text_write_real(file, char.personality);
		file_text_writeln(file);
		file_text_write_string(file, char.gender);
		file_text_writeln(file);
		file_text_write_string(file, char.costume);
		file_text_writeln(file);
		file_text_write_real(file, char.class);
		file_text_writeln(file);
		file_text_write_real(file, char.formPositionX);
		file_text_writeln(file);
		file_text_write_real(file, char.formPositionY);
		file_text_writeln(file);
		file_text_write_real(file, char.str);
		file_text_writeln(file);
		file_text_write_real(file, char.frt);
		file_text_writeln(file);
		file_text_write_real(file, char.dex);
		file_text_writeln(file);
		file_text_write_real(file, char.agi);
		file_text_writeln(file);
		file_text_write_real(file, char.int);
		file_text_writeln(file);
		file_text_write_real(file, char.wis);
		file_text_writeln(file);
		file_text_write_real(file, char.cha);
		file_text_writeln(file);
		file_text_write_real(file, char.spr);
		file_text_writeln(file);
		file_text_write_real(file, char.curHp);
		file_text_writeln(file);
		file_text_write_real(file, char.curSp);
		file_text_writeln(file);
		file_text_write_real(file, char.maxAp);
		file_text_writeln(file);
		file_text_write_real(file, char.xp);
		file_text_writeln(file);
		file_text_write_real(file, char.invenSize);
		file_text_writeln(file);
		file_text_write_real(file, char.amLevel);
		file_text_writeln(file);
		file_text_write_real(file, char.dmLevel);
		file_text_writeln(file);
		
		file_text_write_string(file, "P");
		file_text_writeln(file);
		for(i = 0; i < ds_list_size(char.powers); i++){
			file_text_write_real(file, char.powers[| i]);
			file_text_writeln(file);
		}
		file_text_write_real(file, -1);
		file_text_writeln(file);
		file_text_write_string(file, "B");
		file_text_writeln(file);
		for(i = 0; i < ds_list_size(char.abilities); i++){
			file_text_write_real(file, char.abilities[| i][0]);
			file_text_writeln(file);
			file_text_write_real(file, char.abilities[| i][1]);
			file_text_writeln(file);
		}
		file_text_write_real(file, -1);
		file_text_writeln(file);
		file_text_write_string(file, "?");
		file_text_writeln(file);
		for(i = 0; i < global.numberOfClasses; i++){
			file_text_write_real(file, char.classLevels[i]);
			file_text_writeln(file);
		}
		file_text_write_real(file, -1);
		file_text_writeln(file);
		file_text_write_string(file, "Q")
		file_text_writeln(file);
		for(i = 0; i < 6; i++){
			file_text_write_real(file, char.equipment[i,0]);
			file_text_writeln(file);
		}
		file_text_write_real(file, -1);
		file_text_writeln(file);
		file_text_write_string(file, "C")
		file_text_writeln(file);
		for(i = 0; i < 128; i++){
			file_text_write_real(file, char.equipCodes[i]);
			file_text_writeln(file);
		}
		file_text_write_real(file, -1);
		file_text_writeln(file);
		file_text_write_string(file, "N")
		file_text_writeln(file);
		for(i = 0; i < 128; i++){
			file_text_write_real(file, char.conditions[i]);
			file_text_writeln(file);
		}
		file_text_write_real(file, -1);
		file_text_writeln(file);
		file_text_write_string(file, "I")
		file_text_writeln(file);
		for(i = 0; i < char.invenSize; i++){
			file_text_write_real(file, char.inven[i]);
			file_text_writeln(file);
		}
		file_text_write_real(file, -1);
		file_text_writeln(file);
		file_text_write_string(saveFile,"R");
		file_text_writeln(saveFile);
	}else{
		file_text_write_real(file, -1);
		file_text_writeln(file);
	}
}