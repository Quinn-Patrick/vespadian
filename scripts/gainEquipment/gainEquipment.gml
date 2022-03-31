// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gainEquipment(classId, char){
	classFileName = getClassFile(classId);
	
	classFileRead = file_text_open_read(classFileName);
	
	next = file_text_read_string(classFileRead);
	
	while(!file_text_eof(classFileRead) && cleanString(next) != "equip codes"){
		next = file_text_readln(classFileRead);
	}
	while(!file_text_eof(classFileRead) && cleanString(next) != "levels"){
		
		next = cleanString(file_text_readln(classFileRead));
		if(next = "levels") break;
		next = real(next);
		
		char.equipCodes[next] = 1;
	}
	
	file_text_close(classFileRead);
}